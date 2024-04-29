Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA668B5CDC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 17:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9E13112D0E;
	Mon, 29 Apr 2024 15:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED8E112D0E;
 Mon, 29 Apr 2024 15:11:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/color=3A_fi?=
 =?utf-8?q?rst_batch_of_implicit_dev=5Fpriv_removals?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Apr 2024 15:11:53 -0000
Message-ID: <171440351371.1756580.12829543069336610901@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1714399071.git.jani.nikula@intel.com>
In-Reply-To: <cover.1714399071.git.jani.nikula@intel.com>
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

Series: drm/i915/color: first batch of implicit dev_priv removals
URL   : https://patchwork.freedesktop.org/series/133024/
State : warning

== Summary ==

Error: dim checkpatch failed
7712a3285dd7 drm/i915: pass dev_priv explicitly to PALETTE
-:98: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#98: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:33:
+#define PALETTE(dev_priv, pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
 			       _PICK_EVEN_2RANGES(pipe, 2,			\
 						  _PALETTE_A, _PALETTE_B,	\
 						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \

total: 1 errors, 0 warnings, 0 checks, 75 lines checked
8acf5c50fb14 drm/i915: pass dev_priv explicitly to PIPE_WGC_C01_C00
-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:259:
+#define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
311434476c08 drm/i915: pass dev_priv explicitly to PIPE_WGC_C02
80a45f180599 drm/i915: pass dev_priv explicitly to PIPE_WGC_C11_C10
-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:261:
+#define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
0ce7cd6fe93f drm/i915: pass dev_priv explicitly to PIPE_WGC_C12
fd2d5fbcf7c4 drm/i915: pass dev_priv explicitly to PIPE_WGC_C21_C20
-:43: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#43: FILE: drivers/gpu/drm/i915/display/intel_color_regs.h:263:
+#define PIPE_WGC_C21_C20(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)

total: 0 errors, 1 warnings, 0 checks, 24 lines checked
11310613228d drm/i915: pass dev_priv explicitly to PIPE_WGC_C22


