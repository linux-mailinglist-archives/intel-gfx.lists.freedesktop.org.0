Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3F6AB7483
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 20:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4900F10E297;
	Wed, 14 May 2025 18:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5522910E297;
 Wed, 14 May 2025 18:41:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dmc=3A_PIPE?=
 =?utf-8?q?DMC_stuff_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 14 May 2025 18:41:45 -0000
Message-ID: <174724810534.80831.15997664813901786140@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915/dmc: PIPEDMC stuff (rev3)
URL   : https://patchwork.freedesktop.org/series/148874/
State : warning

== Summary ==

Error: dim checkpatch failed
5cf61165a47a drm/i915: Drop PIPEDMC faults from the fault mask on LNL+
04a8ecebb9ed drm/i915: Hook up PIPEDMC interrupts
-:131: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#131: FILE: drivers/gpu/drm/i915/display/intel_dmc.c:515:
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));

-:206: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#206: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:38:
+#define   PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE		REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0xff) /* Wa_16018781658:lnl[a0] */

-:211: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#211: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:43:
+#define PIPEDMC_INTERRUPT(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_INTERRUPT_A, _PIPEDMC_INTERRUPT_B)

-:214: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#214: FILE: drivers/gpu/drm/i915/display/intel_dmc_regs.h:46:
+#define PIPEDMC_INTERRUPT_MASK(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_INTERRUPT_MASK_A, _PIPEDMC_INTERRUPT_MASK_B)

total: 0 errors, 4 warnings, 0 checks, 160 lines checked
6e0c0ae8766e drm/i915/dmc: Define all DMC event IDs
249009308ac4 drm/i915/dmc: Extract dmc_evt_ctl_disable()
cffcc855393c drm/o915/dmc: Relocate is_dmc_evt_{ctl,htp}_reg()
3d4db5456e31 drm/i915/dmc: Extract is_event_handler()
82eaa7c56c58 drm/i915/dmc: Introduce dmc_configure_event()


