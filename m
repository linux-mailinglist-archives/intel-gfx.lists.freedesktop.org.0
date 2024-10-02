Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865B498D243
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 13:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B96F10E6F8;
	Wed,  2 Oct 2024 11:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF0010E6F8;
 Wed,  2 Oct 2024 11:37:49 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5BCI=2C1/3=5D_drm/i915/irq=3A_add_struct_i915=5Firq=5Fregs_trip?=
 =?utf-8?q?let?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Oct 2024 11:37:49 -0000
Message-ID: <172786906982.1162544.10661105520103908647@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241002102645.136155-1-jani.nikula@intel.com>
In-Reply-To: <20241002102645.136155-1-jani.nikula@intel.com>
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

Series: series starting with [CI,1/3] drm/i915/irq: add struct i915_irq_regs triplet
URL   : https://patchwork.freedesktop.org/series/139412/
State : warning

== Summary ==

Error: dim checkpatch failed
e2969aacaf90 drm/i915/irq: add struct i915_irq_regs triplet
fd3cfa650faf drm/i915/irq: remove GEN3_IRQ_RESET() and GEN3_IRQ_INIT() macros
b1baa9f62ba5 drm/i915/irq: remove GEN8_IRQ_RESET_NDX() and GEN8_IRQ_INIT_NDX() macros
-:145: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'which' - possible side-effects?
#145: FILE: drivers/gpu/drm/i915/i915_reg.h:2494:
+#define GEN8_GT_IRQ_REGS(which)		I915_IRQ_REGS(GEN8_GT_IMR(which), \
+						      GEN8_GT_IER(which), \
+						      GEN8_GT_IIR(which))

-:156: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'pipe' - possible side-effects?
#156: FILE: drivers/gpu/drm/i915/i915_reg.h:2549:
+#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
+						      GEN8_DE_PIPE_IER(pipe), \
+						      GEN8_DE_PIPE_IIR(pipe))

total: 0 errors, 0 warnings, 2 checks, 121 lines checked


