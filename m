Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533B989CE69
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 00:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6B4C10F50B;
	Mon,  8 Apr 2024 22:31:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B374310F50B;
 Mon,  8 Apr 2024 22:31:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_drm=5Fi9?=
 =?utf-8?q?15=5Fprivate_and_xe=5Fdevice_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 22:31:02 -0000
Message-ID: <171261546273.1287304.2788709427400354981@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1712599670.git.jani.nikula@intel.com>
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
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

Series: drm/i915: drm_i915_private and xe_device cleanups
URL   : https://patchwork.freedesktop.org/series/132173/
State : warning

== Summary ==

Error: dim checkpatch failed
05cfe53e63a7 drm/i915/gt: drop display clock info from gt debugfs
5d7d095a9116 drm/i915: move skl_preferred_vco_freq to display substruct
4d511c9004ea drm/i915: move max_dotclk_freq to display substruct
132429301270 drm/i915: move vblank_enabled to display substruct
-:47: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1215:
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_ENABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

-:63: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_display_irq.c:1323:
+		intel_uncore_write(&i915->uncore, SCPD0, _MASKED_BIT_DISABLE(CSTATE_RENDER_CLOCK_GATE_DISABLE));

total: 0 errors, 2 warnings, 0 checks, 60 lines checked
7ec85b339bac drm/i915: move display_irqs_enabled to display substruct
9d3982f78beb drm/i915: move de_irq_mask to display substruct
f93ae50c2d5d drm/i915: move pipestat_irq_mask to display substruct
dfafacc34ffe drm/xe/display: remove unused xe->enabled_irq_mask


