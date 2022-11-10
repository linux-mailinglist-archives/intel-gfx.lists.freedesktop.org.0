Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA48C623D5E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 09:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F38EA10E67F;
	Thu, 10 Nov 2022 08:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F2B10E67D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668068525; x=1699604525;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LPfeD6CMbiQSGts/grswEn6eIGwOcbBGfB2f+//QqzU=;
 b=BYo2X4+cPLohnpJedQDVmezdCROuYMn3+NiatWkUz1szReOSe3wWbWxQ
 jIARzUx6oaPcEzrARmhVmnh0DgMguMHkbiLHBLa1P3KDaEiRq7eOsohfH
 bs1fzFR26RJA2myEx3RLL+LmbkHExy8fH5NhaNpKn7q1YZrb2ebKhbyTl
 xL3V5zUFByLXNYdZhyet5dXR9oM4WkFDsJ7RjWTGI6orBK3TnIw09HUJJ
 wOhNIO6u222NL0zuANyC+2yabLRZnsaIOramaoems0+I5R3FhJAQJbkrY
 mWgtYvLJ+Okqj1YslkOPF6gCdXhupN1x2d3QOUeniaXKyghpuC/MRhzhJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291647267"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="291647267"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 00:22:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="637085743"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="637085743"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 00:22:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 10:22:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Nov 2022 10:21:32 +0200
Message-Id: <20221110082144.19666-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
References: <20221110082144.19666-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/18] drm/i915: Fix adl+ degamma LUT size
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

