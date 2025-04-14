Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C11AA88588
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 16:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC66010E179;
	Mon, 14 Apr 2025 14:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7EC710E179;
 Mon, 14 Apr 2025 14:46:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_error_ca?=
 =?utf-8?q?pture_cleanups_and_refactor?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Apr 2025 14:46:02 -0000
Message-ID: <174464196268.2324.18364571507695648570@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <cover.1744630147.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744630147.git.jani.nikula@intel.com>
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

Series: drm/i915: error capture cleanups and refactor
URL   : https://patchwork.freedesktop.org/series/147674/
State : warning

== Summary ==

Error: dim checkpatch failed
e5fba2ae6112 drm/i915: use 32-bit access for gen2 irq registers
a66df928e7b7 drm/i915: record GEN2_IER in gtier[0] for pre-ilk error capture
77eff24813c2 drm/i915: stop recording IER in error capture
2678dafbaad7 drm/i915: use display snapshot mechanism for display irq regs
-:76: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:87:
+struct intel_display_irq_snapshot *intel_display_irq_snapshot_capture(struct intel_display *display);

-:77: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:88:
+void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot, struct drm_printer *p);

total: 0 errors, 2 warnings, 0 checks, 132 lines checked
2138d78cd7c3 drm/i915: don't capture DERRMR for VLV/CHV
75ed50492ebf drm/i915: use graphics version instead of PCH split in error capture


