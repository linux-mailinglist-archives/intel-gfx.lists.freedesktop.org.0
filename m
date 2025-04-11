Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C88A8572B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445CA10E9E9;
	Fri, 11 Apr 2025 09:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 32c37dd7f93d (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1332010EB4D;
 Fri, 11 Apr 2025 09:00:23 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_don=27t_?=
 =?utf-8?q?capture_DERRMR_for_VLV/CHV_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Apr 2025 09:00:23 -0000
Message-ID: <174436202302.3469.9249468231985646519@32c37dd7f93d>
X-Patchwork-Hint: ignore
References: <cover.1744208554.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744208554.git.jani.nikula@intel.com>
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

Series: drm/i915: don't capture DERRMR for VLV/CHV (rev2)
URL   : https://patchwork.freedesktop.org/series/147473/
State : warning

== Summary ==

Error: dim checkpatch failed
881032181543 drm/i915: use 32-bit access for gen2 irq registers
1b7bcfa89e38 drm/i915: record GEN2_IER in gtier[0] for pre-ilk error capture
b919bc5bad49 drm/i915: stop recording IER in error capture
c673c7146033 drm/i915: use display snapshot mechanism for display irq regs
-:76: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:87:
+struct intel_display_irq_snapshot *intel_display_irq_snapshot_capture(struct intel_display *display);

-:77: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#77: FILE: drivers/gpu/drm/i915/display/intel_display_irq.h:88:
+void intel_display_irq_snapshot_print(const struct intel_display_irq_snapshot *snapshot, struct drm_printer *p);

total: 0 errors, 2 warnings, 0 checks, 132 lines checked
829c6ff3ad49 drm/i915: use graphics version instead of PCH split in error capture


