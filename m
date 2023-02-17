Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DF169A335
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884AD10E1AA;
	Fri, 17 Feb 2023 00:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E16610E138
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595535; x=1708131535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=StQ0O80B+1jcck+WzVG/j96wxez2gsy5oF1lakYeS+k=;
 b=LPsU+QhB3ejJwaiM5zL3SVTsItejQWIj9IvuZOCG1l749P83Ai/6QNjA
 MN1yJ1GPdYK/hHQYUF8JfWqBKl/V0JGwx4la8LyTs2OhybDjJ04Ow/tIs
 wWOUE+TlXrwd0OSFrXaKLrYzRjRFn2xHK/mIWdmAn8HLtMw+1Q06f0XeI
 L8jUOPa6aY0FWsjg6uBGNvkXB4hRsAmuMhra4DluSnetp0HYwBRnFTOK+
 spFcRGM0Ao/+/tpUMREApWfigthiXRQAyhHq/nCf3quVJoScyncoQ9W3W
 opmW4Bx97s3PNWSbKdKD23CKoK8N9qfM4xsJK4mnAiRxhx35pOympBbPN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512377"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512377"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390206"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390206"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:44 -0800
Message-Id: <20230217005850.2511422-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/perf: Validate OA sseu config
 outside switch
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

Once OA supports media engine class:instance, the engine can only be
validated outside the switch since class and instance parameters are
separate entities. Since OA sseu config depends on engine
class:instance, validate OA sseu config outside the switch.

v2: (Ashutosh)
- Clarify commit message
- Use drm_dbg instead of DRM_DEBUG
- Reorder stack variables

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index b0e1acbe90fc..1229f65534e2 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3950,7 +3950,9 @@ static int read_properties_unlocked(struct i915_perf *perf,
 				    u32 n_props,
 				    struct perf_open_properties *props)
 {
+	struct drm_i915_gem_context_param_sseu user_sseu;
 	u64 __user *uprop = uprops;
+	bool config_sseu = false;
 	u32 i;
 	int ret;
 
@@ -4079,8 +4081,6 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			props->hold_preemption = !!value;
 			break;
 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
-			struct drm_i915_gem_context_param_sseu user_sseu;
-
 			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
 				drm_dbg(&perf->i915->drm,
 					"SSEU config not supported on gfx %x\n",
@@ -4095,14 +4095,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 					"Unable to copy global sseu parameter\n");
 				return -EFAULT;
 			}
-
-			ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
-			if (ret) {
-				drm_dbg(&perf->i915->drm,
-					"Invalid SSEU configuration\n");
-				return ret;
-			}
-			props->has_sseu = true;
+			config_sseu = true;
 			break;
 		}
 		case DRM_I915_PERF_PROP_POLL_OA_PERIOD:
@@ -4122,6 +4115,16 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		uprop += 2;
 	}
 
+	if (config_sseu) {
+		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
+		if (ret) {
+			drm_dbg(&perf->i915->drm,
+				"Invalid SSEU configuration\n");
+			return ret;
+		}
+		props->has_sseu = true;
+	}
+
 	return 0;
 }
 
-- 
2.36.1

