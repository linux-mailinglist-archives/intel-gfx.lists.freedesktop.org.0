Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C9F7E7AE9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 10:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1791C10E959;
	Fri, 10 Nov 2023 09:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A19D210E959
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 09:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699608764; x=1731144764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7clegivgptHRFBKvzey9A+4Gej6PBwt3NdeZQT8hAkA=;
 b=EI7vlve0RuUbdYgPsG8vvOBP9Z9PlFOfQfyoGVxooGN5Uw2nYB283pmO
 LL8oV2Q75x29td3w2UNTGY78uI0gDLY37fPKakdYopcOOIrxvWAL5c2gP
 tBs9iLE+DPbvmbELANFd4nvRfGuJIRn0NufoNI6XlZMk7NA75/CJXeMla
 0a0b/wwxPNWFW9W+d1tKBDhAtItFxCb0CY+UsFsL4M+vXfoVWwax6jvrA
 op+60Zwwg4d9O3MyBuDUk1oChYHARJXvqNQI5VmSzEyYMWDbMecEIeGIN
 X2vkqTvwSRd5WCyAYH4DIVmsEQ9uy2iiQSsjEXOKlY07TafHBbpc7IK2M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="476387268"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="476387268"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 01:32:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="937128992"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="937128992"
Received: from slysokob-mobl1.ccr.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.38.186])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 01:32:42 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Nov 2023 11:32:25 +0200
Message-Id: <20231110093225.39573-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231110093225.39573-1-vinod.govindapillai@intel.com>
References: <20231110093225.39573-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: remove the FBC
 restriction if PSR2 is enabled
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In earlier versions, FBC was restricted if PSR2 is enabled. From
xe2lpd onwards no such restrictions are needed anymore.

HSD: 14014305387
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bde12fe62275..f3d572d54e82 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1201,7 +1201,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_psr2) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.34.1

