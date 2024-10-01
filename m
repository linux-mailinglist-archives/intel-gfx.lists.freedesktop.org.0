Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74CC98B267
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 04:46:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0E110E16F;
	Tue,  1 Oct 2024 02:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C2B10E16F;
 Tue,  1 Oct 2024 02:46:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/irq=3A_clea?=
 =?utf-8?q?n_up_irq_reset/init_macro_hacks_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 02:46:29 -0000
Message-ID: <172775078968.1140073.9028289901566462035@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1727369787.git.jani.nikula@intel.com>
In-Reply-To: <cover.1727369787.git.jani.nikula@intel.com>
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

Series: drm/i915/irq: clean up irq reset/init macro hacks (rev2)
URL   : https://patchwork.freedesktop.org/series/139168/
State : warning

== Summary ==

Error: dim checkpatch failed
c73477ce6156 drm/i915/irq: add struct i915_irq_regs triplet
ff400a9db6ab drm/i915/irq: remove GEN3_IRQ_RESET() and GEN3_IRQ_INIT() macros
4106ffbf84fa drm/i915/irq: remove GEN8_IRQ_RESET_NDX() and GEN8_IRQ_INIT_NDX() macros
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


