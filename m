Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8XNvB2oPPWoIwggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 13:22:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8CF6C5114
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 13:22:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=DTzFY2HQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F3810E1FF;
	Thu, 25 Jun 2026 11:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A207010E1E9;
 Thu, 25 Jun 2026 11:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782386530;
 bh=4/Dt0W/KnSvGYW9NJhemgRVNXT0Cb4ZvkjqCQL04TU8=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=DTzFY2HQ2/aX/q96YMljbI2YH7s03m//BB0jTbArBlx0vZSHx+uPvqJYOy4s2j9Ag
 fit86NQwXDum13VLOKngAhYfvWMByiZfI+r7PCJZBEN3XPqItkvbANXzMpa75faFwW
 LyQZyFgMvWAfU8eOsL0l/hj2IGAXYGcQFbSLUQpMbrwM31B9ajwmZ5vRrSV05RdhkM
 n5pXmSxFbI8gCdd+xyp83fnK35pZgCjMZFvgAu0DOPY1WZ2iaojj84mhuzn/qo2Vai
 POVjLM0U9RPXnYwZ2C8sfzCFbz7MQCE09PdgIYL3ijaCnsuSsd1j/KSkkMNvBdNDLl
 aGLlvu3Iz1+ag==
Message-ID: <7e7b2ab7-4e43-42cd-aaa0-ab83d9ede493@lankhorst.se>
Date: Thu, 25 Jun 2026 13:22:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 00/30] drm/i915/display: All patches to make
 PREEMPT_RT work on i915 + xe.
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
References: <20260624180459.1024068-1-dev@lankhorst.se>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260624180459.1024068-1-dev@lankhorst.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:dkim,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C8CF6C5114

No CI run yet, might be 'from' is broken due to a bug in patchwork, will requeue if replying to 00/30 fixes it.

On 6/24/26 20:04, Maarten Lankhorst wrote:
> Still waiting for feedback on the vblank approach, and check to see if there are some
> bugs left.
> 
> Changes since previous version:
> - Hopefully finally fix all i915 pmu bugs.
> 
> For Xe, we also prohibit the use of DSM when CONFIG_PREEMPT_RT is enabled,
> and avoid the use of DSM if we cannot take over the framebuffer from the
> firmware.
> 
> Ideally we copy the framebuffer after intel_fbdev_init_bios(),
> when we decide to preserve the framebuffer and the hardware is
> completely initialized.
> 
> At that point we can use the migration engine to copy the contents over,
> this can potentially be used for preserving the initial framebuffer
> in the other cases where we cannot not use the initial FB too.
> 
> Maarten Lankhorst (24):
>   drm/vblank_work: Add methods to schedule vblank_work in 2 stages
>   drm/vblank: Add a 2-stage version of drm_crtc_arm_vblank_event
>   drm/intel/display: Make intel_crtc_arm_vblank_event static
>   drm/intel/display: Convert vblank event handling to 2-stage arming
>   drm/i915/display: Move vblank put until after critical section
>   drm/i915/display: Remove locking from intel_vblank_evade critical
>     section
>   drm/i915/display: Handle vlv dsi workaround in scanline_in_safe_range
>     too
>   drm/i915/display: Make get_vblank_counter use intel_de_read_fw()
>   drm/i915/display: Do not take uncore lock in i915_get_vblank_counter
>   drm/i915/display: Make icl_dsi_frame_update use _fw too
>   drm/i915/display: Use intel_de_read/write_fw in colorops
>   drm/i915/display: Use intel_de_write_fw in intel_pipe_fastset
>   drm/i915/display: Make set_pipeconf use the fw variants
>   drm/i915/gt: Fix selftests on PREEMPT_RT
>   drm/i915/gt: Set stop_timeout() correctly on PREEMPT-RT
>   drm/i915/display: Remove uncore lock from vlv_atomic_update_fifo
>   drm/i915: Use sleeping selftests for igt_atomic on PREEMPT_RT
>   PREEMPT_RT injection
>   FOR-CI: bump MAX_STACK_TRACE_ENTRIES
>   drm/xe: Avoid using stolen memory for DPT.
>   drm/xe/display: Avoid using stolen memory for framebuffer when media
>     gt exists.
>   drm/xe/display: Do not allocate into stolen for new framebuffers.
>   drm/i915/pmu: Convert to raw spinlock
>   drm/i915: Disable "busy" pmu event on CONFIG_PREEMPT_RT
> 
> Mike Galbraith (1):
>   drm/i915: Use preempt_disable/enable_rt() where recommended
> 
> Sebastian Andrzej Siewior (5):
>   drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
>     spin_lock()
>   drm/i915: Drop the irqs_disabled() check
>   drm/i915/guc: Consider also RCU depth in busy loop.
>   Revert "drm/i915: Depend on !PREEMPT_RT."
>   drm/i915/gt: Add a spinlock to prevent starvation of irq_work.
> 
>  drivers/gpu/drm/drm_vblank.c                  |  64 +++++++++-
>  drivers/gpu/drm/drm_vblank_work.c             | 110 +++++++++++++----
>  drivers/gpu/drm/i915/Kconfig                  |   1 -
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   4 -
>  drivers/gpu/drm/i915/display/icl_dsi.c        |   4 +-
>  drivers/gpu/drm/i915/display/intel_cmtg.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_color.c    |   6 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  86 ++++++-------
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   1 -
>  drivers/gpu/drm/i915/display/intel_cursor.c   |   8 +-
>  drivers/gpu/drm/i915/display/intel_de.h       |   8 ++
>  drivers/gpu/drm/i915/display/intel_display.c  |  52 ++++----
>  drivers/gpu/drm/i915/display/intel_vblank.c   | 115 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_vblank.h   |   1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      |  18 +--
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c   |   8 +-
>  .../gpu/drm/i915/gt/intel_breadcrumbs_types.h |   1 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
>  .../drm/i915/gt/intel_execlists_submission.c  |  17 +--
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   8 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +-
>  drivers/gpu/drm/i915/i915_pmu.c               |  26 ++--
>  drivers/gpu/drm/i915/i915_pmu.h               |   2 +-
>  drivers/gpu/drm/i915/i915_request.c           |   2 -
>  drivers/gpu/drm/i915/intel_uncore.h           |  26 ++--
>  drivers/gpu/drm/i915/selftests/igt_atomic.c   |   7 ++
>  .../drm/xe/compat-i915-headers/intel_uncore.h |   7 ++
>  drivers/gpu/drm/xe/display/xe_display_bo.c    |  40 ++----
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  33 ++---
>  include/drm/drm_vblank.h                      |  14 ++-
>  include/drm/drm_vblank_work.h                 |  12 ++
>  kernel/Kconfig.preempt                        |   4 +-
>  lib/Kconfig.debug                             |   5 +-
>  33 files changed, 435 insertions(+), 265 deletions(-)
> 

