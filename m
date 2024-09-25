Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5238E986147
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B642B10E2E9;
	Wed, 25 Sep 2024 14:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="noDiH0BD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A38A10E100
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727275531; x=1758811531;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aSKOXtfRb6IIHrPBBBqYmZWBMi7dadENEpMMg1PlviA=;
 b=noDiH0BDhq4Yye2+QdypZY3AT17lqufHEYiKKti/yi1WWaTRM4R0nJgl
 aeGPDQnYIwx7oFNCqs7t97VvHISa0mxjp2QOTLSJkjgvEdpGcVcrktetv
 MmaEd6prSH7ARHb/io9gTnlXJx55FWOn9HKmtTqYVfmBckkiIf0+XQw/P
 urhuIncWddbn1fAwG+FxGhplckCyeFugEewWYv/vggDf/13ElveDKvVEV
 tcdzmSmF/xu4BsUnLAfvZllu61PfCpo277Xf8njUttogS6UzaKJC5aoux
 2GiyGRR6+y4ul796YEwPiDsHxhaMBCSiUf3j6xJn/oB24Qx1LaKQ+Qds6 Q==;
X-CSE-ConnectionGUID: gYdDzr1QS/qE82DY4N3KTA==
X-CSE-MsgGUID: TOoS16FOS6uDFv0SfCdY+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26470582"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="26470582"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:45:30 -0700
X-CSE-ConnectionGUID: X1m7tzVoQG6B9HK19KNjxw==
X-CSE-MsgGUID: g1BOZW9wQny1LLgOMBBmuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71941473"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:45:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:45:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: [PATCH 0/6] drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk
Date: Wed, 25 Sep 2024 17:45:20 +0300
Message-ID: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

Attempt to make i915 rely more on the standard pci pm
code instead of hand rolling a bunch of
pci_save_state()+pci_set_power_state() stuff in the
driver.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: linux-pci@vger.kernel.org

Ville Syrjälä (6):
  PCI/PM: Respect pci_dev->skip_bus_pm in the .poweroff() path
  drm/i915/pm: Hoist pci_save_state()+pci_set_power_state() to the end
    of pm _late() hook
  drm/i915/pm: Simplify pm hook documentation
  drm/i915/pm: Move the hibernate+D3 quirk stuff into noirq() pm hooks
  drm/i915/pm: Do pci_restore_state() in switcheroo resume hook
  drm/i915/pm: Use pci_dev->skip_bus_pm for hibernate vs. D3 workaround

 drivers/gpu/drm/i915/i915_driver.c | 121 +++++++++++++++++++----------
 drivers/pci/pci-driver.c           |  16 +++-
 2 files changed, 94 insertions(+), 43 deletions(-)

-- 
2.44.2

