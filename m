Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42229986149
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE2D10E100;
	Wed, 25 Sep 2024 14:45:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1GOw5Ge";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A991D10E100
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727275534; x=1758811534;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mTq3SIoJsTDjQhuscju6DwMyUWtDPD3Kmo2BFtmIFiA=;
 b=S1GOw5Gecni+jWUWjOJ8nKb3A2osgJw2/S5tTWln8lLOBOYlJHQoD+Ug
 Fb9iX4Cb/CuMdIC5Khf0j9thMXCCeHwTCmbx/923TZf5g4M3v1zqAMZMU
 7DwJ/jPgJMz4TngfzUZpEXYqVHK7wYFpgmjPy9CSCB9JGul6YwNYqNLEs
 KuVZqfriryN3pbf0t9/+PYMcaEVOKC4q6Qzc3qGa7jVudsX/a12eALUKh
 si/vnuIYmV7QDBs2W12H00WC3hYr2zDdDZW42zfbLV2vBsab006jIH1RC
 sY+aZnOHQNPZPn+lmipTWTGqg8dwWpxBbfd5mI/1df54rl8bX0REXoFEL A==;
X-CSE-ConnectionGUID: P4oRrp0FTIiQvxqoTDoRgA==
X-CSE-MsgGUID: 877BQDQiS9mjsmbVVkbgEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26470586"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26470586"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:45:34 -0700
X-CSE-ConnectionGUID: VunbD8KQQLyMSh+164KdvQ==
X-CSE-MsgGUID: ceKjx4iLR5OHweqH3UJVmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71941503"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:45:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:45:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: [PATCH 1/6] PCI/PM: Respect pci_dev->skip_bus_pm in the .poweroff()
 path
Date: Wed, 25 Sep 2024 17:45:21 +0300
Message-ID: <20240925144526.2482-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On some older laptops i915 needs to leave the GPU in
D0 when hibernating the system, or else the BIOS
hangs somewhere. Currently that is achieved by calling
pci_save_state() ahead of time, which then skips the
whole pci_prepare_to_sleep() stuff.

It feels to me that this approach could lead to unintended
side effects as it causes the pci code to deviate from the
standard path in various ways. In order to keep i915
behaviour more standard it seems preferrable to use
pci_dev->skip_bus_pm here. Duplicate the relevant logic
from pci_pm_suspend_noirq() in pci_pm_poweroff_noirq().

It also looks like the current code is may put the parent
bridge into D3 despite leaving the device in D0. Though
perhaps the host bridge (which is where the integrated
GPU lives) always has subordinates, which would make
this a non-issue for i915. But maybe this could be a
problem for other devices. Utilizing skip_bus_pm will
make the behaviour of leaving the bridge in D0 a bit
more explicit if nothing else.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-pci@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/pci/pci-driver.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index f412ef73a6e4..ef436895939c 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -1142,6 +1142,8 @@ static int pci_pm_poweroff(struct device *dev)
 	struct pci_dev *pci_dev = to_pci_dev(dev);
 	const struct dev_pm_ops *pm = dev->driver ? dev->driver->pm : NULL;
 
+	pci_dev->skip_bus_pm = false;
+
 	if (pci_has_legacy_pm_support(pci_dev))
 		return pci_legacy_suspend(dev, PMSG_HIBERNATE);
 
@@ -1206,9 +1208,21 @@ static int pci_pm_poweroff_noirq(struct device *dev)
 			return error;
 	}
 
-	if (!pci_dev->state_saved && !pci_has_subordinate(pci_dev))
+	if (!pci_dev->state_saved && !pci_dev->skip_bus_pm &&
+	    !pci_has_subordinate(pci_dev))
 		pci_prepare_to_sleep(pci_dev);
 
+	if (pci_dev->current_state == PCI_D0) {
+		pci_dev->skip_bus_pm = true;
+		/*
+		 * Per PCI PM r1.2, table 6-1, a bridge must be in D0 if any
+		 * downstream device is in D0, so avoid changing the power state
+		 * of the parent bridge by setting the skip_bus_pm flag for it.
+		 */
+		if (pci_dev->bus->self)
+			pci_dev->bus->self->skip_bus_pm = true;
+	}
+
 	/*
 	 * The reason for doing this here is the same as for the analogous code
 	 * in pci_pm_suspend_noirq().
-- 
2.44.2

