Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B40DFCB673E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 17:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D03A10E834;
	Thu, 11 Dec 2025 16:28:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="LYeUhjvv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B1810E834;
 Thu, 11 Dec 2025 16:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765470522;
 bh=UxJaBhAGDmBBMJMexKicUT6L56bLBPUSvYkGsfeI4yY=;
 h=From:To:Cc:Subject:Date:From;
 b=LYeUhjvvCzhwge+R5F9G6jYVxNGIIKqQ/3oMY3fvWIyZTdUw32ZbTTPeSrA3o2eRF
 cNZGEGC3KkHih13oPuTJ78c44z2t2/Rl2rM2XY//bvN1GPI4I0dDHttGws8XnAY25+
 xhuQrIFROGq1+7+el3ftSmq6tyvvlROx2QMFwrRH6k4YVXQS1bRN6rT6/G/2sx0OyF
 tNKEjCyaEE0vWbWoNERDZ935f+5rvXkGCplIOoQ9fHUkByV9iAlV1zHBKBUDlXrTwj
 MpTK5dpD/wTCbtlgDOSqVrF606uUweqFx+R3EaxEkkAVcKIvYXZh5LSXVM1cKYEvpJ
 NaX0dtvpFQOlw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/9] drm/i915/display: All fixes for PREEMPT-RT that I have
 collected so far.
Date: Thu, 11 Dec 2025 17:19:23 +0100
Message-ID: <20251211161923.843758-11-dev@lankhorst.se>
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

I believe those patches, together with commit 3efadf028783 ("drm/me/gsc:
mei interrupt top half should be in irq disabled context") that is in
drm-xe-next, are enough for making PREEMPT_RT basic functionality work
on xe without problems.

There are still some issues specific to PREEMPT-RT, like on how to handle
vblank interrupt, but I do not believe it should be a blocker for merging the
series.

Maarten Lankhorst (9):
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

 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     | 10 +++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  8 ++-
 drivers/gpu/drm/i915/display/intel_display.c  | 46 +++++++-------
 .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 63 +++++++++----------
 drivers/gpu/drm/i915/display/intel_vrr.c      | 16 ++---
 7 files changed, 79 insertions(+), 70 deletions(-)

-- 
2.51.0

