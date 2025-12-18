Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3ECCCCC94
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 17:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A74110E968;
	Thu, 18 Dec 2025 16:33:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="Pt4dkfXw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4812610E718;
 Thu, 18 Dec 2025 16:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1766075612;
 bh=REorg8QrUoMmAtH1OTwMg2ReWqTFtk4sMIjmUiBNIYE=;
 h=From:To:Subject:Date:From;
 b=Pt4dkfXw1fDbOnSMfxGe1FJYoDKhlbQnaGwN3/YnUu6kkOaJ1xNXIbVJL0RZBYwca
 nfuBJJ7PGfpdMYZa8bS6cQ9pI21P07jf04WhPokuxf7Oi60IqQdOzQ5GxvCJI0rwXw
 uS9hJJk/HtcE8BMAvtQ5kistRIwzjgA0DZcDtjcifdBS8V0dA0dILoschb+zYoj6Be
 gxguzQ4c/Ss0+rbfsnnCyKTKBw61uiR9Dk6/Ow3mWsz0ChuFLyz+p3uJnCiJpxTK0t
 puttQsxdHnLy88vo4HwyizLw8SZZ6eYRWmPi8SgyUADkIopXX78fO7WsJ/23HGeL9N
 hBXkQ3Cz1l8Eg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [i915-rt v4 00/20] drm/i915/display: All patches to make PREEMPT_RT
 work on i915 + xe.
Date: Thu, 18 Dec 2025 17:33:48 +0100
Message-ID: <20251218163408.97508-1-dev@lankhorst.se>
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

We should probably take the uncore lock only once, and hold it during
entire evasion. For now just remove the code using it to see if CI
passes.

Another test run with i915 as well, and some bugs in selftests fixed.

Maarten Lankhorst (15):
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
  drm/i915/gt: Fix selftests on PREEMPT_RT
  drm/i915/gt: Set stop_timeout() correctly on PREEMPT-RT
  drm/i915/display: Do not take uncore lock in i915_get_vblank_counter
  drm/i915/display: Remove uncore lock from vlv_atomic_update_fifo

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
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   3 -
 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  12 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_de.h       |   8 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  46 +++----
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 115 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  16 +--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  17 +--
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +-
 drivers/gpu/drm/i915/i915_request.c           |   2 -
 drivers/gpu/drm/i915/intel_uncore.h           |  25 ++--
 drivers/gpu/drm/xe/Kconfig.debug              |   5 +
 .../drm/xe/compat-i915-headers/intel_uncore.h |   7 ++
 kernel/Kconfig.preempt                        |   4 +-
 22 files changed, 172 insertions(+), 135 deletions(-)

-- 
2.51.0

