Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E14E911D3AA
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 18:20:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3363A6E0E9;
	Thu, 12 Dec 2019 17:20:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B7156E0F1;
 Thu, 12 Dec 2019 17:20:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04415A47DF;
 Thu, 12 Dec 2019 17:20:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Thu, 12 Dec 2019 17:20:51 -0000
Message-ID: <157617125199.32007.5542057623493706787@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212124015.24077-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20191212124015.24077-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Refactor_Gen11+_SAGV_support_=28rev13=29?=
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

Series: Refactor Gen11+ SAGV support (rev13)
URL   : https://patchwork.freedesktop.org/series/68028/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
38b8ca097735 drm/i915: Refactor intel_can_enable_sagv
-:208: WARNING:BRACES: braces {} are not necessary for single statement blocks
#208: FILE: drivers/gpu/drm/i915/intel_pm.c:3818:
+		if (latency < dev_priv->sagv_block_time_us) {
+			return;
+		}

-:229: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#229: FILE: drivers/gpu/drm/i915/intel_pm.c:3839:
+	for_each_new_intel_crtc_in_state(state, crtc,
+					     new_crtc_state, i) {

-:431: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#431: FILE: drivers/gpu/drm/i915/intel_pm.c:4430:
+skl_plane_wm_level(struct intel_plane *plane,
+		const struct intel_crtc_state *crtc_state,

-:554: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#554: FILE: drivers/gpu/drm/i915/intel_pm.c:4647:
+			wm_uv_level = skl_plane_wm_level(plane, crtc_state,
+						      level, true);

-:645: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#645: FILE: drivers/gpu/drm/i915/intel_pm.c:5068:
+		skl_compute_plane_wm(crtc_state, 0, latency,
+		     wm_params, &levels[0],

-:647: CHECK:BRACES: Unbalanced braces around else statement
#647: FILE: drivers/gpu/drm/i915/intel_pm.c:5070:
+	} else

-:649: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#649: FILE: drivers/gpu/drm/i915/intel_pm.c:5072:
+		memcpy(&plane_wm->sagv_wm0, &levels[0],
+			sizeof(struct skl_wm_level));

-:729: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#729: FILE: drivers/gpu/drm/i915/intel_pm.c:5765:
+			if (!skl_plane_wm_equals(dev_priv,
+				&old_crtc_state->wm.skl.optimal.planes[plane_id],

-:777: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#777: FILE: drivers/gpu/drm/i915/intel_pm.c:5984:
+				memcpy(&wm->sagv_wm0, &wm->wm[level],
+					sizeof(struct skl_wm_level));

total: 0 errors, 1 warnings, 8 checks, 676 lines checked
e9f893ee788f drm/i915: Restrict qgv points which don't have enough bandwidth.
-:401: CHECK:BRACES: braces {} should be used on all arms of this statement
#401: FILE: drivers/gpu/drm/i915/display/intel_display.c:14914:
+	if (INTEL_GEN(dev_priv) < 11) {
[...]
+	} else
[...]

-:404: CHECK:BRACES: Unbalanced braces around else statement
#404: FILE: drivers/gpu/drm/i915/display/intel_display.c:14917:
+	} else

total: 0 errors, 0 warnings, 2 checks, 396 lines checked
7171528b4b10 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
