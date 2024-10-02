Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED6E98CB0E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 04:08:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BCA310E1CB;
	Wed,  2 Oct 2024 02:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0053110E1CB;
 Wed,  2 Oct 2024 02:08:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Vblank/C?=
 =?utf-8?q?RC_irq_stuf?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Oct 2024 02:08:07 -0000
Message-ID: <172783488797.1144238.13587000275781635490@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241001195803.3371-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Vblank/CRC irq stuf
URL   : https://patchwork.freedesktop.org/series/139392/
State : warning

== Summary ==

Error: dim checkpatch failed
43f4e9055434 drm/i915/irq: Nuke stale comments
e6d63f13a972 drm/i915/irq: Pair up the vblank enable/disable functions
-:52: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1309:
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

total: 0 errors, 1 warnings, 0 checks, 122 lines checked
5fa14dc29907 drm/i915: Extract i915gm_irq_cstate_wa_{disable, enable}()
-:38: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1273:
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:46: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1281:
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

total: 0 errors, 2 warnings, 0 checks, 52 lines checked
9aa38f003ef8 drm/i915: Apply the i915gm/i945gm irq C-state w/a to CRC interrupts


