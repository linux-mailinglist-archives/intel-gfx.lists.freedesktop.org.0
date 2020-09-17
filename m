Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953A026E318
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 20:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B1676E084;
	Thu, 17 Sep 2020 18:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E69646E084;
 Thu, 17 Sep 2020 18:01:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE080A66C9;
 Thu, 17 Sep 2020 18:01:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kevin Chowski" <chowski@chromium.org>
Date: Thu, 17 Sep 2020 18:01:08 -0000
Message-ID: <160036566887.14568.13069509486672920064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200917110838.1.I63d52f5b96d7e81e1e2dc2a72c4bf5fd84d3d3d0@changeid>
In-Reply-To: <20200917110838.1.I63d52f5b96d7e81e1e2dc2a72c4bf5fd84d3d3d0@changeid>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_i915=3A_Introduce_quirk_for_shifting_eDP_brightness=2E?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: i915: Introduce quirk for shifting eDP brightness.
URL   : https://patchwork.freedesktop.org/series/81809/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8c6e983afa60 i915: Introduce quirk for shifting eDP brightness.
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:96:
+		if (!drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT,
+						&read_val[0])) {

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:98:
+			DRM_DEBUG_KMS("Failed to read DPCD register 0x%x\n",
+					DP_EDP_PWMGEN_BIT_COUNT);

-:43: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#43: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:105:
+			DRM_DEBUG_KMS("Invalid DP_EDP_PWNGEN_BIT_COUNT 0x%X, expected at most 16\n",
+						read_val[0]);

-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:128:
+		if (!drm_dp_dpcd_readb(&intel_dp->aux, DP_EDP_PWMGEN_BIT_COUNT,
+						&vals[0])) {

-:60: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#60: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:130:
+			DRM_DEBUG_KMS("Failed to write aux backlight level: Failed to read DPCD register 0x%x\n",
+					  DP_EDP_PWMGEN_BIT_COUNT);

-:67: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#67: FILE: drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c:137:
+			DRM_DEBUG_KMS("Failed to write aux backlight level: Invalid DP_EDP_PWNGEN_BIT_COUNT 0x%X, expected at most 16\n",
+						vals[0]);

-:115: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#115: FILE: drivers/gpu/drm/i915/i915_drv.h:519:
+#define QUIRK_SHIFT_EDP_BACKLIGHT_BRIGHTNESS (1<<8)
                                                ^

total: 0 errors, 0 warnings, 7 checks, 78 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
