Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5473B2F5D21
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 10:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C0596E0DD;
	Thu, 14 Jan 2021 09:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DDE96E0DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 09:18:02 +0000 (UTC)
IronPort-SDR: Gt9SJGwTRuRIm78eeiRd/XKJ9x/SCuGgThr1iyt8s7NToEisoov+t+VPCoA+22IpP8Q3JYSOVT
 T4IuYEJxdixg==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="177556202"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="177556202"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 01:18:02 -0800
IronPort-SDR: ZSG6ekQ+wZJ+0tjzOCd6Rh+XUeO604MTOqg8cJAsp2jjkFDF6PK3xXOLyarkVCvNHHLKrMVVxB
 mCZ1AbVGbVbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="568120721"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.22])
 by orsmga005.jf.intel.com with ESMTP; 14 Jan 2021 01:18:00 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 17:22:36 +0800
Message-Id: <20210114092236.20477-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: support two CSC module on gen11 and
 later
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There are two CSC on pipeline on gen11 and later platform.
User space application is allowed to enable CTM and RGB
to YCbCr coversion at the same time now.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: Shankar Uma <uma.shankar@intel.com>

Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1a0f00f37ca9..721d5ce1ed2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8303,7 +8303,8 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		return -EINVAL;
 	}
 
-	if ((pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
+	if ((INTEL_GEN(dev_priv) < 11) &&
+	    (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
 	     pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) &&
 	     pipe_config->hw.ctm) {
 		/*
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
