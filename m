Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 949BB5FC55D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 14:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23C8C10E492;
	Wed, 12 Oct 2022 12:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73E5210E471;
 Wed, 12 Oct 2022 12:33:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BB25AA3D8;
 Wed, 12 Oct 2022 12:33:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 12:33:43 -0000
Message-ID: <166557802343.12986.2696989068969982799@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_ELD_precompute_and_readout_=28rev2=29?=
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

Series: drm/i915: ELD precompute and readout (rev2)
URL   : https://patchwork.freedesktop.org/series/109592/
State : warning

== Summary ==

Error: dim checkpatch failed
b5bbc0b163a5 drm/i915/audio: s/dev_priv/i915/
-:592: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#592: FILE: drivers/gpu/drm/i915/display/intel_audio.c:937:
+	if (IS_G4X(i915)) {
[...]
+	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
[...]
+	} else if (IS_HASWELL(i915) || DISPLAY_VER(i915) >= 8) {
[...]
+	} else if (HAS_PCH_SPLIT(i915)) {
[...]

-:1028: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "i915->display.audio.lpe.platdev"
#1028: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1406:
+	if (i915->display.audio.lpe.platdev != NULL)

total: 0 errors, 1 warnings, 1 checks, 979 lines checked
59fc07ce4bf5 drm/i915/audio: Nuke leftover ROUNDING_FACTOR
782e7cb0245e drm/i915/audio: Remove CL/BLC audio stuff
3f47594917d9 drm/i915/audio: Exract struct ilk_audio_regs
b319d74e5744 drm/i915/audio: Use REG_BIT() & co.
-:159: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#159: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:64:
+#define   AUD_CONFIG_N(n)			(REG_FIELD_PREP(AUD_CONFIG_UPPER_N_MASK, (n) >> 12) | \

-:159: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'n' - possible side-effects?
#159: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:64:
+#define   AUD_CONFIG_N(n)			(REG_FIELD_PREP(AUD_CONFIG_UPPER_N_MASK, (n) >> 12) | \
+						 REG_FIELD_PREP(AUD_CONFIG_LOWER_N_MASK, (n) & 0xfff))

-:160: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#160: FILE: drivers/gpu/drm/i915/display/intel_audio_regs.h:65:
+						 REG_FIELD_PREP(AUD_CONFIG_LOWER_N_MASK, (n) & 0xfff))

total: 0 errors, 2 warnings, 1 checks, 171 lines checked
ec1a64adfb7d drm/i915/audio: Unify register bit naming
54878f321f7e drm/i915/audio: Protect singleton register with a lock
9c1fa971dda9 drm/i915/audio: Nuke intel_eld_uptodate()
c6138d3b4d49 drm/i915/audio: Read ELD buffer size from hardware
bea574fb8bd5 drm/i915/audio: Make sure we write the whole ELD buffer
262277104535 drm/i915/audio: Use u32* for ELD
5d3c996aeb34 drm/i915/audio: Use intel_de_rmw() for most audio registers
91b28ec77d88 drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
69736b0a91a0 drm/i915/audio: Do the vblank waits
af4f501770b5 drm/i915/audio: Precompute the ELD
ce88e546a5af drm/i915/audio: Hardware ELD readout
305ebe2dc124 drm/i915/sdvo: Extract intel_sdvo_has_audio()
6b0956708dfd drm/i915/sdvo: Precompute the ELD
334a47e7a002 drm/i915/sdvo: Do ELD hardware readout
2b155428ac08 drm/i915/audio: Hook up ELD into the state checker
-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:5734:
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

-:71: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:5734:
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

-:71: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'len' - possible side-effects?
#71: FILE: drivers/gpu/drm/i915/display/intel_display.c:5734:
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
a88beec7072b drm/i915/audio: Include ELD in the state dump
91e73880bc39 drm/i915/audio: Resume HSW/BDW HDA controller around ELD access


