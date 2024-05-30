Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F5A8D459B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 08:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE3D10E0E2;
	Thu, 30 May 2024 06:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1440710E0E2;
 Thu, 30 May 2024 06:49:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Implement_CMRR_Suppo?=
 =?utf-8?q?rt_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 30 May 2024 06:49:01 -0000
Message-ID: <171705174108.2237379.14507838740804861592@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240530060408.67027-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240530060408.67027-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Implement CMRR Support (rev10)
URL   : https://patchwork.freedesktop.org/series/126443/
State : warning

== Summary ==

Error: dim checkpatch failed
8941224bb0a7 drm/i915: Separate VRR related register definitions
-:24: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#24: 
new file mode 100644

-:42: ERROR:CODE_INDENT: code indent should use tabs where possible
#42: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:14:
+                                                _TRANS_VRR_VSYNC_A)$

-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:14:
+                                                _TRANS_VRR_VSYNC_A)$

-:129: ERROR:CODE_INDENT: code indent should use tabs where possible
#129: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:101:
+                                                _TRANS_VRR_VTOTAL_PREV_A)$

-:129: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#129: FILE: drivers/gpu/drm/i915/display/intel_vrr_regs.h:101:
+                                                _TRANS_VRR_VTOTAL_PREV_A)$

total: 2 errors, 3 warnings, 0 checks, 230 lines checked
096a2a62a58c drm/i915: Define and compute Transcoder CMRR registers
-:52: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#52: FILE: drivers/gpu/drm/i915/display/intel_display.c:5044:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:52: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#52: FILE: drivers/gpu/drm/i915/display/intel_display.c:5044:
+#define PIPE_CONF_CHECK_LLI(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
+				     "(expected %lli, found %lli)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 2 checks, 118 lines checked
4203af585c18 drm/i915: Update trans_vrr_ctl flag when cmrr is computed
3dede228e5e5 drm/i915: Compute CMRR and calculate vtotal
59040f50b24f drm/dp: Add refresh rate divider to struct representing AS SDP
2fbe9ec90ddd drm/i915/display: Add support for pack and unpack
c8b5e6951a06 drm/i915/display: Compute Adaptive sync SDP params
-:43: ERROR:SPACING: space required before the open brace '{'
#43: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2648:
+	} else{

total: 1 errors, 0 warnings, 0 checks, 31 lines checked
11e05c6ee4bd drm/i915/display: Compute vrr vsync params


