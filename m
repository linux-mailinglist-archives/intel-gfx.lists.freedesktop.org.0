Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C356343A57
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 08:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E4B89C93;
	Mon, 22 Mar 2021 07:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DD2089C63;
 Mon, 22 Mar 2021 07:12:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC17FA8831;
 Mon, 22 Mar 2021 07:12:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Mon, 22 Mar 2021 07:12:36 -0000
Message-ID: <161639715693.19227.17972082058231216136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_state_checker_for_CSC_coeff_values?=
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

Series: drm/i915: Add state checker for CSC coeff values
URL   : https://patchwork.freedesktop.org/series/88242/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6b4acba31287 drm/i915/display: Introduce vfunc read_csc() to create hw ctm
36688ee5a039 drm/i915/display: Add func to compare hw/sw CSC matrix
-:100: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#100: FILE: drivers/gpu/drm/i915/display/intel_color.h:25:
+bool intel_csc_equal(const struct intel_crtc_state *crtc_state,
+			   struct drm_property_blob *blob1,

total: 0 errors, 0 warnings, 1 checks, 80 lines checked
9330fece07c8 drm/i915/display: Add macro to compare hw/sw CSC matrix
-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name1' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display.c:8928:
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:23: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name1' may be better as '(name1)' to avoid precedence issues
#23: FILE: drivers/gpu/drm/i915/display/intel_display.c:8928:
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name2' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display.c:8928:
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:23: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name2' may be better as '(name2)' to avoid precedence issues
#23: FILE: drivers/gpu/drm/i915/display/intel_display.c:8928:
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:23: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name3' - possible side-effects?
#23: FILE: drivers/gpu/drm/i915/display/intel_display.c:8928:
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:23: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name3' may be better as '(name3)' to avoid precedence issues
#23: FILE: drivers/gpu/drm/i915/display/intel_display.c:8928:
+#define PIPE_CONF_CHECK_CSC(name1, name2, name3) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %s, found %s, won't compare csc coeffs)", \
+				yesno(current_config->name1), \
+				yesno(pipe_config->name1)); \
+		ret = false;\
+	} else if (current_config->name2 != pipe_config->name2) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+				"(expected %i, found %i, won't compare csc coeffs)", \
+				current_config->name2, \
+				pipe_config->name2); \
+		ret = false;\
+	} else { \
+		if (!intel_csc_equal(current_config, current_config->name3, \
+				pipe_config->name3)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name3), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 6 checks, 49 lines checked
9aaab4f5f76f drm/i915/display: Extract chv_read_csc()
44ae7fddb56d drm/i915/display: Extract ilk_read_csc()
260c2b3ee5a6 drm/i915/display: Extract icl_read_csc()
a629803a4aa1 FOR_TESTING_ONLY: Print coeffs of hw and sw CTM
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:26: WARNING:LONG_LINE: line length of 116 exceeds 100 columns
#26: FILE: drivers/gpu/drm/i915/display/intel_color.c:1929:
+		DRM_DEBUG_KMS("Bhanu debug--> sw_ctm[%d]=0x%x hw_ctm[%d]=0x%llx", i, coeffs[i], i, ctm2->matrix[i]);

total: 0 errors, 2 warnings, 0 checks, 17 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
