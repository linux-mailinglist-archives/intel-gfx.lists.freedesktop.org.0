Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C91AC672E5A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 02:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CE710E886;
	Thu, 19 Jan 2023 01:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0225110E886;
 Thu, 19 Jan 2023 01:39:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F4096A47DF;
 Thu, 19 Jan 2023 01:39:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 19 Jan 2023 01:39:53 -0000
Message-ID: <167409239399.24699.9723480872691738124@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230118131538.3558599-1-jani.nikula@intel.com>
In-Reply-To: <20230118131538.3558599-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/7=5D_drm/i915=3A_add_i915=5Fconfi?=
 =?utf-8?q?g=2Eh_and_move_relevant_declarations_there_=28rev2=29?=
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

Series: series starting with [1/7] drm/i915: add i915_config.h and move relevant declarations there (rev2)
URL   : https://patchwork.freedesktop.org/series/113025/
State : warning

== Summary ==

Error: dim checkpatch failed
c1c34828b1db drm/i915: add i915_config.h and move relevant declarations there
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:54: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#54: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 70 lines checked
de2ea5327803 drm/i915: move I915_IDLE_ENGINES_TIMEOUT next to its only user
27b0514e9629 drm/i915: drop a number of unnecessary forward declarations
cd6fd88889c8 drm/i915: move a few HAS_ macros closer to their place
-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/i915_drv.h:858:
+#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))

total: 0 errors, 0 warnings, 1 checks, 26 lines checked
6fe8a8d5b049 drm/i915: move I915_GEM_GPU_DOMAINS to i915_gem.h
dec07302761a drm/i915: move I915_COLOR_UNEVICTABLE to i915_gem_gtt.h
26a5c2b7cee3 drm/i915: move GT_FREQUENCY_MULTIPLIER and GEN9_FREQ_SCALER to intel_rps.h


