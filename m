Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B7660ED35
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 02:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4DA10E604;
	Thu, 27 Oct 2022 00:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1309710E604;
 Thu, 27 Oct 2022 00:55:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A218AA917;
 Thu, 27 Oct 2022 00:55:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 00:55:49 -0000
Message-ID: <166683214900.4251.15253365327076980569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221026170150.2654-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Audio_stuff_=28rev2=29?=
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

Series: drm/i915: Audio stuff (rev2)
URL   : https://patchwork.freedesktop.org/series/110188/
State : warning

== Summary ==

Error: dim checkpatch failed
d5e981d3cb31 drm/i915/audio: s/dev_priv/i915/
-:1033: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "i915->display.audio.lpe.platdev"
#1033: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1405:
+	if (i915->display.audio.lpe.platdev != NULL)

total: 0 errors, 0 warnings, 1 checks, 980 lines checked
c41db3f96f70 drm/i915/audio: Nuke leftover ROUNDING_FACTOR
93827d906e6a drm/i915/audio: Remove CL/BLC audio stuff
aaa8398a5432 drm/i915/audio: Extract struct ilk_audio_regs
d31d04e641ca drm/i915/audio: Use REG_BIT() & co.
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
4b5a7ea8120e drm/i915/audio: Unify register bit naming
cb9af05dabb5 drm/i915/audio: Protect singleton register with a lock
3baeed6a6bf0 drm/i915/audio: Nuke intel_eld_uptodate()
dee866fe1f99 drm/i915/audio: Read ELD buffer size from hardware
b8dc3881149e drm/i915/audio: Make sure we write the whole ELD buffer
957ecb1cee1f drm/i915/audio: Use u32* for ELD
e5c74315831c drm/i915/audio: Use intel_de_rmw() for most audio registers
672dae67c4e6 drm/i915/audio: Split "ELD valid" vs. audio PD on hsw+
62ae6a195cbd drm/i915/audio: Do the vblank waits
23299d1dbf96 drm/i915/sdvo: Extract intel_sdvo_has_audio()


