Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09ECCC1BDF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 10:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53EB510E891;
	Tue, 16 Dec 2025 09:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="hvy/bctt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A3D10E7D0;
 Tue, 16 Dec 2025 09:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765876950;
 bh=BJtYb8vaErh4ZMf7jscC4/vRamGQtP+y+sujsMJxcuo=;
 h=From:To:Cc:Subject:Date:From;
 b=hvy/bcttnroHx/USyHl1gh+82Ujj1Q+on6uWxVVwmD0zl+oTIpN4uj1TfIZKUyVjk
 xa3YSf/WS6Wcd2noQmhUN7+tSDCnPt7PsErqKRTtEKVRlVPXM8f77XkNosdSMRaWHP
 S2r2cLCbnNM00VXeP54hGFS0yHuahlypgu8Q/wBe7BlIY5SV44/N8mIHxDOWbTDqBE
 2pj22qK5KbNZeFyh7NSqyN5S/in+/frH5PllgZJ5F+S6E9O6hGI+q+aPoQaoJ6qrKb
 BCqra9S6iE04LFwgkIc66OYTvMhFT0pdFIfFwZGeoWKvR5OIu51vgdq6gTsgO8EgrG
 pQV76IrP/be9A==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [i915-rt v2 00/16] drm/i915/display: All patches to make PREEMPT_RT
 work on i915 + xe.
Date: Tue, 16 Dec 2025 10:22:27 +0100
Message-ID: <20251216092226.1777909-18-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Grab all i915 required patches from the PREEMPT-RT series too.
Try 2, with vblank evasion hopefully fixed.

Maarten Lankhorst (11):
  drm/i915/display: Fix intel_lpe_audio_irq_handler for PREEMPT-RT
  drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
  drm/i915/display: Use intel_de_write_fw in intel_pipe_fastset
  drm/i915/display: Make set_pipeconf use the fw variants
  drm/i915/display: Move vblank put until after critical section
  drm/i915/display: Remove locking from intel_vblank_evade critical
    section
  drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range
    too
  drm/i915/display: Make icl_dsi_frame_update use _fw too
  drm/i915/display: Enable interrupts earlier on PREEMPT_RT
  PREEMPT_RT injection
  drm/i915/display: Use intel_de_read_fw in colorops

Mike Galbraith (1):
  drm/i915: Use preempt_disable/enable_rt() where recommended

Sebastian Andrzej Siewior (4):
  drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
    spin_lock()
  drm/i915: Drop the irqs_disabled() check
  drm/i915/guc: Consider also RCU depth in busy loop.
  Revert "drm/i915: Depend on !PREEMPT_RT."

 drivers/gpu/drm/i915/Kconfig                  |   1 -
 drivers/gpu/drm/i915/Kconfig.debug            |  15 ---
 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  46 +++----
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 114 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  16 +--
 .../drm/i915/gt/intel_execlists_submission.c  |  17 +--
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +-
 drivers/gpu/drm/i915/i915_request.c           |   2 -
 drivers/gpu/drm/xe/Kconfig.debug              |   5 +
 kernel/Kconfig.preempt                        |   4 +-
 16 files changed, 137 insertions(+), 116 deletions(-)

-- 
2.51.0

