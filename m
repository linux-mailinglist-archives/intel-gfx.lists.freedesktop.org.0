Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ECC81B473
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Dec 2023 11:54:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10C210E67B;
	Thu, 21 Dec 2023 10:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972F310E666
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Dec 2023 10:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703156060; x=1734692060;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lUxFlU7L8Ggi7jw2YiUkQgq/tAddi5ztYYeuaEnlyC8=;
 b=RXYidCC04ZWfSZtNfG2t2V5h9a0aPyfzxQw6spfHlJFTqaKnlTPF0M4n
 2Ilyg1QI7S42ExyoX94YLmOvjS9RtaYwQF+vBn0KfbCPeq9jmsgbijN3U
 wz7C2sezEclCXPwCkhSlXkiId1JLtQT1rDCdrqh1QihOOtVZRathGgUiv
 2QeWiSu6BJuAH8dIY0kmvzzH3bBBfgNog8MTD+AUFXdnM+3klWG2jFv/V
 W8h0KIvHczS8VKrnqZLuk55UBk8jFFpf42wRXGXsw3OEuRTVJBSi1yieY
 05ZJSyvJxrMkdwvHoRrrVgxrRCLfR53hGJBf9ckCAT/sJc7rASQLlvNwv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="462399767"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="462399767"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:54:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="895060514"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="895060514"
Received: from sshurhav-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.227])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:54:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/bios: remove some unused leftover declarations
Date: Thu, 21 Dec 2023 12:54:14 +0200
Message-Id: <20231221105414.1518267-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove some unused declarations probably left behind after some
refactoring.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 49e24b7cf675..96673dc707e7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -246,13 +246,10 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
 bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
 bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
-bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc);
-bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
-bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
 
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port);
-- 
2.39.2

