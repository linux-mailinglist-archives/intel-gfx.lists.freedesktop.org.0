Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78331621AD7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 18:37:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44FA910E4D3;
	Tue,  8 Nov 2022 17:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7023310E4D3;
 Tue,  8 Nov 2022 17:37:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67129AADE4;
 Tue,  8 Nov 2022 17:37:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 17:37:25 -0000
Message-ID: <166792904539.2237.4026051821176231236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ELD_precompute_and_readout_=28rev3=29?=
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

Series: drm/i915: ELD precompute and readout (rev3)
URL   : https://patchwork.freedesktop.org/series/109592/
State : warning

== Summary ==

Error: dim checkpatch failed
c4aa4dddc007 drm/i915/audio: Don't program the hardware ELD buffer on ilk+
c76e56062fbb drm/i915/audio: Don't program the hardware ELD buffer on hsw+
-:33: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#33: 
References: https://lore.kernel.org/intel-gfx/20221012104936.30911-1-ville.syrjala@linux.intel.com/

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
8f2e43fd7ce9 drm/i915/audio: Unify get_saved_enc()
bb1c3179fbb5 drm/i915/audio: Realign some function arguments
443c4ced0b86 drm/i915/audio: Introduce a struct for the acomp audio state
-:248: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio_state->connector"
#248: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1175:
+	*enabled = audio_state->connector != NULL;

total: 0 errors, 0 warnings, 1 checks, 253 lines checked
1a67a5edff2d drm/i915/audio: Precompute the ELD
-:133: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio_state->encoder"
#133: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1187:
+	*enabled = audio_state->encoder != NULL;

total: 0 errors, 0 warnings, 1 checks, 164 lines checked
7c9d5d385179 drm/i915/audio: Don't enable audio with bogus ELD
0a0921ed2c75 drm/i915/audio: Hardware ELD readout
f1217d882f77 drm/i915/sdvo: Precompute the ELD
f5f865143008 drm/i915/sdvo: Only use "presence detect" for has_audio readout
36be705edf36 drm/i915/sdvo: Do ELD hardware readout
b9731e6e19f4 drm/i915/audio: Hook up ELD into the state checker
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5710:
+#define PIPE_CONF_CHECK_BUFFER(name, len) do { \
+	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
+	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
+	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
+		pipe_config_buffer_mismatch(dev_priv, fastset, __stringify(name), \
+					    current_config->name, \
+					    pipe_config->name, \
+					    (len)); \
+		ret = false; \
+	} \
+} while (0)

-:72: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5710:
+#define PIPE_CONF_CHECK_BUFFER(name, len) do { \
+	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
+	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
+	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
+		pipe_config_buffer_mismatch(dev_priv, fastset, __stringify(name), \
+					    current_config->name, \
+					    pipe_config->name, \
+					    (len)); \
+		ret = false; \
+	} \
+} while (0)

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'len' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5710:
+#define PIPE_CONF_CHECK_BUFFER(name, len) do { \
+	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
+	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
+	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len))) { \
+		pipe_config_buffer_mismatch(dev_priv, fastset, __stringify(name), \
+					    current_config->name, \
+					    pipe_config->name, \
+					    (len)); \
+		ret = false; \
+	} \
+} while (0)

total: 0 errors, 0 warnings, 3 checks, 67 lines checked
dede93fe868f drm/i915/audio: Include ELD in the state dump
b3b99c69a060 drm/i915/audio: s/ilk/ibx/
387c2eaf84e7 drm/i915/audio: Clean up the PCH type checks


