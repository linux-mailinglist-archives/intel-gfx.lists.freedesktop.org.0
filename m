Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4DB98614C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:45:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAF4B10EA2B;
	Wed, 25 Sep 2024 14:45:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eHBfZpop";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B0C10EA26
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727275541; x=1758811541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e5g2fnzWsdbQ4Znq2+0nMCPlwsOCrNHuDaldxM9Sekk=;
 b=eHBfZpop0kzWscOPUh8xdX4dE7DUt6A39ijzp09h85NoiZKaG0hcB5KH
 wWps3Ujxg6DwR53MfqIRC16RIOuq6EoxhLshDDkIB+h/V+c61lYgcgbzp
 BLTOltsiIbDN1GzSV9SOy16jZZBYo02XPtKHgp39TBx0Ru+FY3tWUKdSW
 hgSEo+i2oVnYZBtOaLrDZl541ozroItVMJW7RL3FIVSroqtQCucr1SQq0
 z4up+TBtxZfScXeaaDo10PJoImljtOq4qFRzQs8KksfGcJYvbKe1w8ktS
 tr49Pq1SgfBAiGGrFUC5m5sAa1c2RexoMsQXlh0r1xiAvivuQNYQdnD4o w==;
X-CSE-ConnectionGUID: qCnpXLKRQ76Zs6TEwmwIwg==
X-CSE-MsgGUID: qeFOuJOhQqKC/kADnZflVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26470613"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26470613"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:45:41 -0700
X-CSE-ConnectionGUID: 0Reib3ztTeGILgK0oLTj7A==
X-CSE-MsgGUID: DwgRaTpNRFCAUyRZUhE12g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71941560"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:45:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:45:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: [PATCH 3/6] drm/i915/pm: Simplify pm hook documentation
Date: Wed, 25 Sep 2024 17:45:23 +0300
Message-ID: <20240925144526.2482-4-ville.syrjala@linux.intel.com>
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

Stop spelling out each variant of the hook ("" vs. "_late" vs.
"_early") and just say eg. "@thaw*" to indicate all of them.
Avoids having to update the docs whenever we start/stop using
one of the variants.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-pci@vger.kernel.org
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9d557ff8adf5..1e5abf72dfc4 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1644,18 +1644,18 @@ const struct dev_pm_ops i915_pm_ops = {
 
 	/*
 	 * S4 event handlers
-	 * @freeze, @freeze_late    : called (1) before creating the
-	 *                            hibernation image [PMSG_FREEZE] and
-	 *                            (2) after rebooting, before restoring
-	 *                            the image [PMSG_QUIESCE]
-	 * @thaw, @thaw_early       : called (1) after creating the hibernation
-	 *                            image, before writing it [PMSG_THAW]
-	 *                            and (2) after failing to create or
-	 *                            restore the image [PMSG_RECOVER]
-	 * @poweroff, @poweroff_late: called after writing the hibernation
-	 *                            image, before rebooting [PMSG_HIBERNATE]
-	 * @restore, @restore_early : called after rebooting and restoring the
-	 *                            hibernation image [PMSG_RESTORE]
+	 * @freeze*   : called (1) before creating the
+	 *              hibernation image [PMSG_FREEZE] and
+	 *              (2) after rebooting, before restoring
+	 *              the image [PMSG_QUIESCE]
+	 * @thaw*     : called (1) after creating the hibernation
+	 *              image, before writing it [PMSG_THAW]
+	 *              and (2) after failing to create or
+	 *              restore the image [PMSG_RECOVER]
+	 * @poweroff* : called after writing the hibernation
+	 *              image, before rebooting [PMSG_HIBERNATE]
+	 * @restore*  : called after rebooting and restoring the
+	 *              hibernation image [PMSG_RESTORE]
 	 */
 	.freeze = i915_pm_freeze,
 	.freeze_late = i915_pm_freeze_late,
-- 
2.44.2

