Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B256CF27B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 20:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0016110EBA8;
	Wed, 29 Mar 2023 18:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A0E9A10E182;
 Wed, 29 Mar 2023 18:50:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99253AA0ED;
 Wed, 29 Mar 2023 18:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 29 Mar 2023 18:50:12 -0000
Message-ID: <168011581259.23903.2347680843727714662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_CSC_state_readout/check?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Add CSC state readout/check
URL   : https://patchwork.freedesktop.org/series/115794/
State : warning

== Summary ==

Error: dim checkpatch failed
01fd9db0cec9 drm/i915: Fix limited range csc matrix
e8f2d513ac2d drm/i915: Introduce intel_csc_matrix struct
40e623a7d092 drm/i915: Split chv_load_cgm_csc() into pieces
9fa8701c694e drm/i915: Start using struct intel_csc_matrix for chv cgm csc
3beb6ee5ef65 drm/i915: Store ilk+ csc matrices in the crtc state
-:124: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#124: FILE: drivers/gpu/drm/i915/display/intel_color.c:408:
+	if (crtc_state->hw.ctm) {
[...]
+	} else {
[...]

total: 0 errors, 1 warnings, 0 checks, 168 lines checked
e9a4acb23fe0 drm/i915: Utilize crtc_state->csc on chv
-:65: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#65: FILE: drivers/gpu/drm/i915/display/intel_color.c:479:
+	if (crtc_state->hw.ctm) {
[...]
+	} else {
[...]

total: 0 errors, 1 warnings, 0 checks, 71 lines checked
2d2e4f955511 drm/i915: Sprinke a few sanity check WARNS during csc assignment
6628bd2a5ab0 drm/i915: Add hardware csc readout for ilk+
249694979e1c drm/i915: Implement chv cgm csc readout
eed40cdf82d8 drm/i915: Include the csc matrices in the crtc state dump
-:37: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:174:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                ^

-:37: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:174:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                  ^

-:37: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:174:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                   ^

-:37: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:174:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                     ^

-:37: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:174:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                                      ^

-:37: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#37: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:174:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                                        ^

-:56: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:193:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                ^

-:56: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:193:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                  ^

-:56: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:193:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                   ^

-:56: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:193:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                     ^

-:56: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:193:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                                      ^

-:56: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:193:
+			    csc->coeff[3*i+0], csc->coeff[3*i+1], csc->coeff[3*i+2]);
 			                                                        ^

total: 0 errors, 0 warnings, 12 checks, 55 lines checked
5c95dfdce9d4 drm/i915: Hook up csc into state checker
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/display/intel_display.c:5646:
+#define PIPE_CONF_CHECK_CSC(name) do { \
+	PIPE_CONF_CHECK_X(name.preoff[0]); \
+	PIPE_CONF_CHECK_X(name.preoff[1]); \
+	PIPE_CONF_CHECK_X(name.preoff[2]); \
+	PIPE_CONF_CHECK_X(name.coeff[0]); \
+	PIPE_CONF_CHECK_X(name.coeff[1]); \
+	PIPE_CONF_CHECK_X(name.coeff[2]); \
+	PIPE_CONF_CHECK_X(name.coeff[3]); \
+	PIPE_CONF_CHECK_X(name.coeff[4]); \
+	PIPE_CONF_CHECK_X(name.coeff[5]); \
+	PIPE_CONF_CHECK_X(name.coeff[6]); \
+	PIPE_CONF_CHECK_X(name.coeff[7]); \
+	PIPE_CONF_CHECK_X(name.coeff[8]); \
+	PIPE_CONF_CHECK_X(name.postoff[0]); \
+	PIPE_CONF_CHECK_X(name.postoff[1]); \
+	PIPE_CONF_CHECK_X(name.postoff[2]); \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 33 lines checked
7ae44cfcf962 drm/i915: Do state check for color management changes


