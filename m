Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0F662841D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4151310E2EB;
	Mon, 14 Nov 2022 15:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB5D10E2DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440273; x=1699976273;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LPfeD6CMbiQSGts/grswEn6eIGwOcbBGfB2f+//QqzU=;
 b=O8NtyTgGg9xTtKZO8wLDNu/sLg8RqNN/f4YxYqghsRALyoz+QX+HIEWn
 1arN7FPGDBQEvBg4hzuWtUbSURwxV9VdFHXvvNpmiFrL8fdoUI9s65t9h
 z9h5LAOsc/eZy9XcGDtxV1BmJznv+iAxdlT7keGTAzEvPz6xt7AAdcWIz
 hcIV4Gx8uYvIMAcIYA75NejxGyzfHVM6vIKKLJu1+wb1d0658uQcFqDnC
 qO7iu6f+rMmFbJZvDFPBuENUkgMF8y9lD577GiahzJJJVRZ/jVlbuUFwm
 WzG+T4gmPrEGwjEDCQC+Horpa3HMbapkFYIgUOWALCHV9VPdpFzhMLJZP g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="374128720"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="374128720"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:37:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="780968384"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="780968384"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 14 Nov 2022 07:37:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Nov 2022 17:37:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 17:37:18 +0200
Message-Id: <20221114153732.11773-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/20] drm/i915: Fix adl+ degamma LUT size
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

The degamma LUT is interpolated so we need the 128th (==1.0)
entry to represent the full < 1.0 input range. Only the 129th
and 130th entries are strictly for the >=1.0 extended range
inputs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 211913be40ce..c50841e36c61 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -948,7 +948,7 @@ static const struct intel_device_info adl_s_info = {
 #define XE_LPD_FEATURES \
 	.display.abox_mask = GENMASK(1, 0),					\
 	.display.color = {							\
-		.degamma_lut_size = 128, .gamma_lut_size = 1024,		\
+		.degamma_lut_size = 129, .gamma_lut_size = 1024,		\
 		.degamma_lut_tests = DRM_COLOR_LUT_NON_DECREASING |		\
 				     DRM_COLOR_LUT_EQUAL_CHANNELS,		\
 	},									\
-- 
2.37.4

