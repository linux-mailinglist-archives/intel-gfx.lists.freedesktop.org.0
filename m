Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4oQpFSBeMGqXSAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEFB689B8F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=hWsvC5kb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC5B10E631;
	Mon, 15 Jun 2026 20:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F2C10E616;
 Mon, 15 Jun 2026 20:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554712;
 bh=rh8Y6NZwjk2eDjLaUkNU/wh6pQZuOlddjoCGCnpAwuk=;
 h=From:To:Cc:Subject:Date:From;
 b=hWsvC5kboTePxSBDiZ4hdkWrP83g483s7YI/hoUnbO1sQ/9N0YNODbFDio8VdvGJd
 WfOK/9KR+oy/sE/++L/semGagRW+1cw9YtfC85HiUiylbuzu8A/ouMi9Pj7LtpFnQm
 s1/ZSgTQG+uu3M30d4BEHmnzGzqZQUlU9MDN7dA/pzrA3oXXufQhO9F2bQRn9UUJyj
 ZnaKAhvWbyMfwL242SmlGCMTiAJUzZ+B1eIseTqWZWFLoXDsIzAvWRyKwZ2l+zyStz
 0Kvg+n0s21FnkmSdeNzbVjM/qI1ZNxPnDRa5K/BqVTObefYptdZ/KE9fBJ4BmWweoM
 PVczk/A2vrycg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v8 00/27] drm/i915/display: All patches to make PREEMPT_RT
 work on i915 + xe.
Date: Mon, 15 Jun 2026 22:18:18 +0200
Message-ID: <20260615201846.307297-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:dkim,lankhorst.se:mid,lankhorst.se:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EEEFB689B8F

New version, rebased with updates to pipeconf patch, and dropping upstreamed patch.

Still waiting for feedback on the vblank approach, and check to see if there are some
bugs left.

Hoping this passes BAT on i915, and still mostly the full run on xe.

For Xe, we also prohibit the use of DSM when CONFIG_PREEMPT_RT is enabled,
and avoid the use of DSM if we cannot take over the framebuffer from the
firmware.

Ideally we copy the framebuffer after intel_fbdev_init_bios(),
when we decide to preserve the framebuffer and the hardware is
completely initialized.

At that point we can use the migration engine to copy the contents over,
this can potentially be used for preserving the initial framebuffer
in the other cases where we cannot not use the initial FB too.

Maarten Lankhorst (21):
  drm/vblank_work: Add methods to schedule vblank_work in 2 stages
  drm/vblank: Add a 2-stage version of drm_crtc_arm_vblank_event
  drm/intel/display: Make intel_crtc_arm_vblank_event static
  drm/intel/display: Convert vblank event handling to 2-stage arming
  drm/i915/display: Move vblank put until after critical section
  drm/i915/display: Remove locking from intel_vblank_evade critical
    section
  drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range
    too
  drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
  drm/i915/display: Do not take uncore lock in i915_get_vblank_counter
  drm/i915/display: Make icl_dsi_frame_update use _fw too
  drm/i915/display: Use intel_de_read/write_fw in colorops
  drm/i915/display: Use intel_de_write_fw in intel_pipe_fastset
  drm/i915/display: Make set_pipeconf use the fw variants
  drm/i915/gt: Fix selftests on PREEMPT_RT
  drm/i915/gt: Set stop_timeout() correctly on PREEMPT-RT
  drm/i915/display: Remove uncore lock from vlv_atomic_update_fifo
  drm/i915: Use sleeping selftests for igt_atomic on PREEMPT_RT
  PREEMPT_RT injection
  FOR-CI: bump MAX_STACK_TRACE_ENTRIES
  drm/xe/display: Always use system memory on PREEMPT_RT for DPT.
  drm/xe/display: Prefer not to allocate a framebuffers in stolen memory

Mike Galbraith (1):
  drm/i915: Use preempt_disable/enable_rt() where recommended

Sebastian Andrzej Siewior (5):
  drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
    spin_lock()
  drm/i915: Drop the irqs_disabled() check
  drm/i915/guc: Consider also RCU depth in busy loop.
  Revert "drm/i915: Depend on !PREEMPT_RT."
  drm/i915/gt: Add a spinlock to prevent starvation of irq_work.

 drivers/gpu/drm/drm_vblank.c                  |  61 +++++++++-
 drivers/gpu/drm/drm_vblank_work.c             | 106 ++++++++++++----
 drivers/gpu/drm/i915/Kconfig                  |   1 -
 drivers/gpu/drm/i915/Kconfig.debug            |  15 ---
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   4 -
 drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  86 ++++++-------
 drivers/gpu/drm/i915/display/intel_crtc.h     |   1 -
 drivers/gpu/drm/i915/display/intel_cursor.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_de.h       |   8 ++
 drivers/gpu/drm/i915/display/intel_display.c  |  52 ++++----
 drivers/gpu/drm/i915/display/intel_vblank.c   | 115 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  18 +--
 drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |   8 +-
 .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 .../drm/i915/gt/intel_execlists_submission.c  |  17 +--
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   8 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +-
 drivers/gpu/drm/i915/i915_request.c           |   2 -
 drivers/gpu/drm/i915/intel_uncore.h           |  26 ++--
 drivers/gpu/drm/i915/selftests/igt_atomic.c   |   7 ++
 drivers/gpu/drm/xe/Kconfig.debug              |   5 +
 .../drm/xe/compat-i915-headers/intel_uncore.h |   7 ++
 drivers/gpu/drm/xe/display/xe_display_bo.c    |  35 ++----
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |   8 --
 include/drm/drm_vblank.h                      |  14 ++-
 include/drm/drm_vblank_work.h                 |  12 ++
 kernel/Kconfig.preempt                        |   4 +-
 lib/Kconfig.debug                             |   5 +-
 32 files changed, 400 insertions(+), 249 deletions(-)

-- 
2.53.0

