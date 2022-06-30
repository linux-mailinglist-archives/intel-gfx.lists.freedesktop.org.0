Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013C65612C8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 08:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EAA10E981;
	Thu, 30 Jun 2022 06:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB8A10E64F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 06:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656572102; x=1688108102;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mKjWV5GwbJGZShAvCvTDHzYvY06/BxWFwujRlg1XuEQ=;
 b=M/ukOlTyaGyFYVd3C/n9niz9Xp0h+dPiBQ709GwQGv4GgmZ19J9qS1xY
 hZ01RPzf0OPD+35njbMHD0a5YhV8Ho74K8FzhFGiQgQmIj6vTV7xY7azi
 5OWBRVkk+5TDnNKNeXIcb4ZhGe+dYW/QjuL58mUO5iwTzWImZdEQHMghF
 M/L+/6et+xKt0fQwCmnAELnB1lVnVzCFBHRVloC6AxZvAkhCKjjlkUlyg
 c7P8SA6mZhhZozE7z+HTDok+IJqam15KoUrd8NvTY/b5O4KONrU64/EmQ
 tPu22wPe9XiBpC5ErQxfSpzlaJm3YgHJoQx5S0SruQJBIpkfwEacQo68c w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279808928"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="279808928"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 23:55:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="680853246"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jun 2022 23:55:00 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 12:24:42 +0530
Message-Id: <20220630065442.830061-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: free crtc on driver remove
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_crtc is being allocated as part of intel_modeset_init_nogem
and not freed as part of driver remove. This will lead to memory
leak. Hence free up the allocated crtc on driver remove as part of
intel_modeset_driver_remove_nogem.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0f84cbe974f..33e29455fe56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9046,6 +9046,8 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 /* part #3: call after gem init */
 void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
 {
+	struct intel_crtc *crtc;
+
 	intel_dmc_ucode_fini(i915);
 
 	intel_power_domains_driver_remove(i915);
@@ -9053,6 +9055,10 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
 	intel_vga_unregister(i915);
 
 	intel_bios_driver_remove(i915);
+
+	/* Free the allocated crtc */
+	for_each_intel_crtc(&i915->drm, crtc)
+		intel_crtc_free(crtc);
 }
 
 bool intel_modeset_probe_defer(struct pci_dev *pdev)
-- 
2.25.1

