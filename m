Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62301AB9BCC
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 14:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8B010EA97;
	Fri, 16 May 2025 12:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTA25Z2K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA57610EA97;
 Fri, 16 May 2025 12:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747397852; x=1778933852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mT3QCZZgCfdRq6Rmf4GY53F9kk7sXOc2bjZ0e6cgxEo=;
 b=eTA25Z2Kn3WhLKtxaDkA8smL2DaqPOf3ZRLtqp9P8qujTQVph2MAs6Pl
 TET2xXPu6ku4CXKrB3Xs6qrn9S8qkjnPABXed3DRV+I6n0tlzTKvvuERv
 7Hz4YzNLhEG6NzjaZYkAae/vsHBgmX+MoBpvFsM+CtZnhradefiGQFwRU
 K6ppbW71c+lIOy096ZnNlDNDcgjxcDmpjtmblDkpiUXi27jo8EzRlv+2M
 ISjoEvlxbefOlx+0IGO6mqUMc5SsspCG6f4T6jzcomdz2X24wLU7Gzyp4
 FMn6/yipAAb6Xz8xGf+plx258dAzRnT5xs57oIeMZz5k0gIfdz0l3/qmU A==;
X-CSE-ConnectionGUID: k9NNC7zYTSWLpXX33Jx3Nw==
X-CSE-MsgGUID: 2/U4boecR1Ci9GwCmRCYig==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="74766566"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="74766566"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:31 -0700
X-CSE-ConnectionGUID: gzSiX9nFTCm+Bkm7aRrhLw==
X-CSE-MsgGUID: apjqxOUbRzeHz8kTm53P3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143568585"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.133])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 05:17:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/7] drm/xe/display: add notes about how early a few functions
 can be called
Date: Fri, 16 May 2025 15:16:59 +0300
Message-Id: <937ea1e16e970a6f6944b94c6a9c216d36e728d1.1747397638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747397638.git.jani.nikula@intel.com>
References: <cover.1747397638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

xe_display_driver_probe_defer() and xe_display_driver_set_hooks() get
called before either struct xe_device or struct intel_display
exist. Make a note of that.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c35444637620..8b2aa7dc6e07 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -48,6 +48,8 @@ static bool has_display(struct xe_device *xe)
  *				   early on
  * @pdev: PCI device
  *
+ * Note: This is called before xe or display device creation.
+ *
  * Returns: true if probe needs to be deferred, false otherwise
  */
 bool xe_display_driver_probe_defer(struct pci_dev *pdev)
@@ -65,6 +67,8 @@ bool xe_display_driver_probe_defer(struct pci_dev *pdev)
  * Set features and function hooks in @driver that are needed for driving the
  * display IP. This sets the driver's capability of driving display, regardless
  * if the device has it enabled
+ *
+ * Note: This is called before xe or display device creation.
  */
 void xe_display_driver_set_hooks(struct drm_driver *driver)
 {
-- 
2.39.5

