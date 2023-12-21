Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70281EEC2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Dec 2023 13:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF3A10E03B;
	Wed, 27 Dec 2023 12:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3B810E03B
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Dec 2023 12:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703679115; x=1735215115;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=lUxFlU7L8Ggi7jw2YiUkQgq/tAddi5ztYYeuaEnlyC8=;
 b=ZhKOwMuPEsG8qcYD6taokBDQSrds+fYNo+bcw1i1HqZ5lg2n2Zl5MqKy
 ePCDv18/0mC1v37p29y9VAdvShfUDZv+d7FyGMu69OB5ycTJZ5R14BSXd
 /Q5UyT1fdgzu+bckydFKbhouoUnEoQwbgUHJIZ3UeqUs2VXKWObZX/qM8
 vyp6nRQGqfKudVp6eOOXub/H5QFn0BePP3c4rwz62EOp8JplPirp34geI
 5MFgB8SXZWSdR5RP/A3FZGKl3vzjNa4FiGfZ+5OfQKo0q6PeiZgYaHYFH
 dTai27KRxRSUyXbcvzVQrfjN4LIekdMv9adfnkddGNCRQdoF1BWvhhY9C w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="376586518"
X-IronPort-AV: E=Sophos;i="6.04,309,1695711600"; d="scan'208";a="376586518"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 04:11:55 -0800
X-ExtLoopCount2: 2 from 10.252.35.36
X-IronPort-AV: E=Sophos;i="6.04,309,1695711600"; d="scan'208";a="12693715"
Received: from imsoderb-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.36])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2023 04:11:54 -0800
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Wed, 27 Dec 2023 14:11:40 +0200
Resent-Message-ID: <874jg3sv43.fsf@intel.com>
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Mailbox Transport; Thu, 21 Dec 2023 02:54:20 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 02:54:19 -0800
Received: from fmsmga002.fm.intel.com (10.253.24.26) by
 fmsmsx603.amr.corp.intel.com (10.18.84.213) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 02:54:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="895060513"
X-IronPort-AV: E=Sophos;i="6.04,293,1695711600"; d="scan'208";a="895060513"
Received: from sshurhav-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.227])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 02:54:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: [PATCH] drm/i915/bios: remove some unused leftover declarations
Date: Thu, 21 Dec 2023 12:54:14 +0200
Message-ID: <20231221105414.1518267-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: b920beb4-a911-47e5-d00b-08dc02132f3a
X-MS-Exchange-Organization-AuthSource: fmsmsx603.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
Content-Type: text/plain
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-SCL: -1
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.5103360
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2507.035
MIME-Version: 1.0
X-TUID: UuVVdnVe1VmN
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

