Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0AA900251
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 13:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F54210E03C;
	Fri,  7 Jun 2024 11:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EB4D10E00C;
 Fri,  7 Jun 2024 11:38:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_CMRR_Suppo?=
 =?utf-8?q?rt_=28rev15=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Jun 2024 11:38:09 -0000
Message-ID: <171776028931.26249.14923218414118534058@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240605170111.494784-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240605170111.494784-1-mitulkumar.ajitkumar.golani@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Implement CMRR Support (rev15)
URL   : https://patchwork.freedesktop.org/series/126443/
State : warning

== Summary ==

Error: dim checkpatch failed
a94b95950af9 gpu/drm/i915: Update indentation for VRR registers and bits
-:57: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/i915_reg.h:1164:
+#define	 XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

total: 0 errors, 1 warnings, 0 checks, 197 lines checked
dc77f36f8936 drm/i915: Separate VRR related register definitions
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:53: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:25:
+#define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

total: 0 errors, 2 warnings, 0 checks, 230 lines checked
5b266ed2d6a6 drm/i915: Define and compute Transcoder CMRR registers
-:58: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#58: FILE: drivers/gpu/drm/i915/display/intel_display.c:5088:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:58: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#58: FILE: drivers/gpu/drm/i915/display/intel_display.c:5088:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 2 checks, 113 lines checked
229bc1240452 drm/i915: Update trans_vrr_ctl flag when cmrr is computed
0c8c4a0a0273 drm/dp: Add refresh rate divider to struct representing AS SDP
decd179d0ab4 drm/i915/display: Add support for pack and unpack
d1b357f0c27a drm/i915/display: Compute Adaptive sync SDP params
864c98591ae3 drm/i915/display: Compute vrr vsync params
d1040a5c026e drm/i915: Compute CMRR and calculate vtotal


