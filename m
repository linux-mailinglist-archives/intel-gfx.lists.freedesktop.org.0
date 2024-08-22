Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B8D95BC89
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4672010E0C4;
	Thu, 22 Aug 2024 16:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B414E10E0C4;
 Thu, 22 Aug 2024 16:57:27 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?conversion_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2024 16:57:27 -0000
Message-ID: <172434584773.726611.12156229377188885493@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1724342644.git.jani.nikula@intel.com>
In-Reply-To: <cover.1724342644.git.jani.nikula@intel.com>
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

Series: drm/i915/display: conversion to struct intel_display
URL   : https://patchwork.freedesktop.org/series/137654/
State : warning

== Summary ==

Error: dim checkpatch failed
5c377f41e3c5 drm/i915/vblank: use drm_crtc_vblank_crtc() instead of open-coding
551a14b57e74 drm/i915/vblank: fix context imbalance warnings
68e26512b854 drm/i915/vblank: convert to struct intel_display
-:204: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#204: FILE: drivers/gpu/drm/i915/display/intel_vblank.c:398:
+		position = (intel_de_read_fw(display, PIPEFRAMEPIXEL(display, pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;

total: 0 errors, 1 warnings, 0 checks, 291 lines checked
0e8ad0b68116 drm/i915/vrr: convert to struct intel_display
-:296: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#296: FILE: drivers/gpu/drm/i915/display/intel_vrr.c:413:
+							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;

total: 0 errors, 1 warnings, 0 checks, 289 lines checked
c12e472714ef drm/i915/tv: convert to struct intel_display
-:349: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#349: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1606:
+	save_tv_dac = tv_dac = intel_de_read(display, TV_DAC);

-:350: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#350: FILE: drivers/gpu/drm/i915/display/intel_tv.c:1607:
+	save_tv_ctl = tv_ctl = intel_de_read(display, TV_CTL);

total: 0 errors, 0 warnings, 2 checks, 514 lines checked
e3c3b270b9d7 drm/i915/sprite: convert to struct intel_display
e5bcbe1e7d62 drm/i915/display: convert params to struct intel_display
-:91: WARNING:MACRO_ARG_UNUSED: Argument 'T' is not used in function-like macro
#91: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:183:
+#define PRINT(T, x, ...) _param_print(p, display->drm->driver->name, #x, display->params.x);

-:91: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#91: FILE: drivers/gpu/drm/i915/display/intel_display_params.c:183:
+#define PRINT(T, x, ...) _param_print(p, display->drm->driver->name, #x, display->params.x);

total: 0 errors, 2 warnings, 0 checks, 101 lines checked


