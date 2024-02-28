Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B74186BAD6
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 23:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A00C10E0ED;
	Wed, 28 Feb 2024 22:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C854710E0ED;
 Wed, 28 Feb 2024 22:43:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Enable_Adaptive_Sync?=
 =?utf-8?q?_SDP_Support_for_DP_=28rev12=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Feb 2024 22:43:32 -0000
Message-ID: <170916021282.375736.14742918988709395904@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240228143823.2762595-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240228143823.2762595-1-mitulkumar.ajitkumar.golani@intel.com>
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

Series: Enable Adaptive Sync SDP Support for DP (rev12)
URL   : https://patchwork.freedesktop.org/series/126829/
State : warning

== Summary ==

Error: dim checkpatch failed
561b1cb88781 drm/dp: Add support to indicate if sink supports AS SDP
64f52ebe7a6b drm: Add Adaptive Sync SDP logging
ba7055588f77 drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
-:128: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#128: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4404:
+intel_read_dp_infoframe_as_sdp(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state,

-:156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#156: FILE: drivers/gpu/drm/i915/display/intel_dp.c:4531:
+		intel_read_dp_infoframe_as_sdp(encoder, crtc_state,
+							&crtc_state->infoframes.as_sdp);

total: 0 errors, 0 warnings, 2 checks, 217 lines checked
bcceda33facc drm/i915/display/dp: Add wrapper function to check AS SDP
cce980ce9638 drm/i915/display: Compute AS SDP parameters.
ea38644f512a drm/i915/display: Add state checker for Adaptive Sync SDP
-:68: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#68: FILE: drivers/gpu/drm/i915/display/intel_display.c:5137:
+#define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
+	if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_as_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 78 lines checked
efc7f0b56591 drm/i915/display: Compute vrr_vsync params
dcf81870bbe0 drm/i915/display: Read/Write AS sdp only when sink/source has enabled


