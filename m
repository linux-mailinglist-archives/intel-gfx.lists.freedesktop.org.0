Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C535AA459A1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 10:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4993E10E885;
	Wed, 26 Feb 2025 09:12:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EF2F10E885;
 Wed, 26 Feb 2025 09:12:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_struct_i?=
 =?utf-8?q?ntel=5Fdisplay_conversions=2C_part_2434235?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2025 09:12:02 -0000
Message-ID: <174056112251.2278205.5505801002136266701@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1740502116.git.jani.nikula@intel.com>
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
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

Series: drm/i915: struct intel_display conversions, part 2434235
URL   : https://patchwork.freedesktop.org/series/145419/
State : warning

== Summary ==

Error: dim checkpatch failed
9c3726bbd358 drm/i915/display: remove leftover struct drm_i915_private forward declarations
7563265e6803 drm/i915/debugfs: continue display debugfs struct intel_display conversion
a4835bcbc92a drm/i915/tdf: convert intel_tdf.[ch] to struct intel_display
b76a69d5456b drm/i915/snps: convert intel_snps_phy.[ch] to struct intel_display
5cf2845a9c8d drm/i915/dkl: convert intel_dkl_phy.[ch] to struct intel_display
23bebafb690f drm/i915/drrs: convert intel_drrs.[ch] to struct intel_display
53d49919182d drm/i915/display: convert the M/N functions to struct intel_display
63ce1c40d577 drm/i915/dpt: convert intel_dpt.[ch] interfaces to struct intel_display
014704462019 drm/i915/fbc: convert intel_fbc.[ch] to struct intel_display
814ff6a2e5a7 drm/i915/rps: convert intel_display_rps.[ch] to struct intel_display
5f3acce5fb81 drm/i915/ddi: convert intel_wait_ddi_buf_idle() to struct intel_display
e0d5378d7385 drm/i915/fdi: convert intel_fdi.[ch] to struct intel_display
-:1230: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#1230: FILE: drivers/gpu/drm/i915/display/intel_modeset_verify.c:97:
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(display, crtc_state),

-:1298: CHECK:SPACING: No space is necessary after a cast
#1298: FILE: drivers/gpu/drm/i915/display/intel_pch_display.c:559:
+	assert_fdi_tx_enabled(display, (enum pipe) cpu_transcoder);

total: 0 errors, 1 warnings, 1 checks, 1218 lines checked


