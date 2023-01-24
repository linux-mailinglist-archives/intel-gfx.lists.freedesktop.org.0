Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C3967A580
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 23:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D48C110E08B;
	Tue, 24 Jan 2023 22:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B452010E081;
 Tue, 24 Jan 2023 22:16:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE35EAADDA;
 Tue, 24 Jan 2023 22:16:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 24 Jan 2023 22:16:29 -0000
Message-ID: <167459858971.17484.6412487927868874475@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ELD_precompute_and_readout_=28rev5=29?=
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

Series: drm/i915: ELD precompute and readout (rev5)
URL   : https://patchwork.freedesktop.org/series/109592/
State : warning

== Summary ==

Error: dim checkpatch failed
bc3385967006 drm/i915/audio: Don't program the hardware ELD buffer on ilk+
ab58d7f7fa3e drm/i915/audio: Don't program the hardware ELD buffer on hsw+
-:32: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#32: 
References: https://lore.kernel.org/intel-gfx/20221012104936.30911-1-ville.syrjala@linux.intel.com/

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
cc209a70b63a drm/i915/audio: Introduce a struct for the acomp audio state
-:248: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio_state->connector"
#248: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1186:
+	*enabled = audio_state->connector != NULL;

total: 0 errors, 0 warnings, 1 checks, 253 lines checked
26f84c414890 drm/i915/audio: Precompute the ELD
-:133: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "audio_state->encoder"
#133: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1198:
+	*enabled = audio_state->encoder != NULL;

total: 0 errors, 0 warnings, 1 checks, 164 lines checked
b6e9f629c60b drm/i915/audio: Don't enable audio with bogus ELD
c2154b33eaa5 drm/i915/audio: Hardware ELD readout
eb74ccac850e drm/i915/sdvo: Precompute the ELD
8a0a3eab5cfe drm/i915/sdvo: Only use "presence detect" for has_audio readout
e6047e9e26cf drm/i915/sdvo: Do ELD hardware readout
09af9253b65f drm/i915/audio: Hook up ELD into the state checker
-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5664:
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
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5664:
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
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5664:
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
5e4848c549ef drm/i915/audio: Include ELD in the state dump
b49ee42a7215 drm/i915/audio: s/ilk/ibx/
f24400316658 drm/i915/audio: Clean up the PCH type checks


