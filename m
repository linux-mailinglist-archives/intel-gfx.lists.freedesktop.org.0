Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA7B89D797
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 13:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 977A0112CC0;
	Tue,  9 Apr 2024 11:06:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="26CWW2Xj";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="IUjq7hGi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21B1112CBA;
 Tue,  9 Apr 2024 11:06:05 +0000 (UTC)
Date: Tue, 9 Apr 2024 13:06:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1712660763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4KGrV5m8ELghkm1H9vTDT623Ek6sT30L9KVtthMHEDE=;
 b=26CWW2XjxtfmwN8kIyYypqxoutQhvUwglNh3mmxJJgo2InFOaZemTsLrvwwvf2QX/nP+VK
 5G18aYiqZ9DsnIWWTUJ7hq5LmWiylH1yz4ZgkkL8E1hwVcagODYMWjoXF9BSFZlzwpTwBV
 fsxdK4D4tdtjYgIKigjgG4IY3WVwO6qdR9mo2BlRuesW9UsXtX8cruK46zN6HgCqVrmTUG
 20Rb9BJZk341DekENMKCGggCxXhqXJNEFYo5v2ZS1sdK/G1eGFoT4+85xMvSV2n35yovqM
 ihWNgbSmHiOEtzv4G8PH0M9rFhpbnJUx+kbn9ozjdBKvt7zeMboaAakOeh3mDQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1712660763;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4KGrV5m8ELghkm1H9vTDT623Ek6sT30L9KVtthMHEDE=;
 b=IUjq7hGiI++j16YLHhSGnej2O5d4Cm7KiXxgYT76xmg/rwIElnVOuxEjmnKmv9RQ1LvbT0
 064P3jrwcmlEI2Cw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH 05/10] drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with
 NOTRACE
Message-ID: <20240409110601.FWFqmGjM@linutronix.de>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240405142737.920626-6-bigeasy@linutronix.de>
 <20240408130650.6f9c1e1c@rorschach.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240408130650.6f9c1e1c@rorschach.local.home>
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

On 2024-04-08 13:06:50 [-0400], Steven Rostedt wrote:
> On Fri,  5 Apr 2024 16:18:23 +0200
> Sebastian Andrzej Siewior <bigeasy@linutronix.de> wrote:
> 
> > The order of the header files is important. If this header file is
> > included after tracepoint.h was included then the NOTRACE here becomes a
> > nop. Currently this happens for two .c files which use the tracepoitns
> > behind DRM_I915_LOW_LEVEL_TRACEPOINTS.
> 
> The NOTRACE should not be included in the individual trace files.
> 
> Can you show where this is an issue. I think this is fixing the symptom
> and not the bug itself.

The previous patch in the series disables trace points. I just checked
the difference with and without this one and there is none. I still have
| # ls -1 /sys/kernel/debug/tracing/events/i915/
|  enable
|  filter
|  g4x_wm
|  intel_cpu_fifo_underrun
|  intel_crtc_vblank_work_end
|  intel_crtc_vblank_work_start
|  intel_fbc_activate
|  intel_fbc_deactivate
|  intel_fbc_nuke
|  intel_frontbuffer_flush
|  intel_frontbuffer_invalidate
|  intel_memory_cxsr
|  intel_pch_fifo_underrun
|  intel_pipe_crc
|  intel_pipe_disable
|  intel_pipe_enable
|  intel_pipe_update_end
|  intel_pipe_update_start
|  intel_pipe_update_vblank_evaded
|  intel_plane_disable_arm
|  intel_plane_update_arm
|  intel_plane_update_noarm
|  vlv_fifo_size
|  vlv_wm

and I *think* there were none. This then leads to
| BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
| in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 794, name: Xorg
| preempt_count: 2, expected: 0
| RCU nest depth: 0, expected: 0
| 3 locks held by Xorg/794:
|  #0: ffffa49201d73c50 (crtc_ww_class_acquire){+.+.}-{0:0}, at: drm_mode_cursor_common+0xdf/0x250 [drm]
|  #1: ffff89ef11c46080 (crtc_ww_class_mutex){+.+.}-{3:3}, at: modeset_lock+0x68/0x1d0 [drm]
|  #2: ffff89ef2224ac70 (&uncore->lock){+.+.}-{2:2}, at: fwtable_read32+0x4d/0x280 [i915]
| Preemption disabled at:
| [<0000000000000000>] 0x0
| CPU: 3 PID: 794 Comm: Xorg Tainted: G        W          6.9.0-rc3-rt1+ #15
| Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68 Pro3-M, BIOS P2.10 04/24/2012
| Call Trace:
|  <TASK>
|  dump_stack_lvl+0x8d/0xb0
|  __might_resched+0x1a3/0x260
|  rt_spin_lock+0x48/0x100
|  fwtable_read32+0x4d/0x280 [i915]
|  trace_event_raw_event_intel_pipe_update_start+0xeb/0x1d0 [i915]
   ^^
|  intel_pipe_update_start+0x182/0x2f0 [i915]
|  intel_update_crtc+0x3f/0x400 [i915]
|  intel_commit_modeset_enables+0xab/0xd0 [i915]
|  intel_atomic_commit_tail+0x764/0x10b0 [i915]
|  intel_atomic_commit+0x318/0x360 [i915]
|  drm_atomic_commit+0x9e/0xd0 [drm]
|  drm_atomic_helper_disable_plane+0x87/0xe0 [drm_kms_helper]
|  drm_mode_cursor_universal+0x114/0x270 [drm]
|  drm_mode_cursor_common+0x11d/0x250 [drm]
|  drm_mode_cursor_ioctl+0x4b/0x70 [drm]
|  drm_ioctl_kernel+0xb4/0x110 [drm]
|  drm_ioctl+0x27b/0x4d0 [drm]

among a few other things I was not aware of.
So yes, this patch is not needed since it makes no difference but I still
have trace points I would rather not have.
If you a clue how to deal with this properly, I am all yours.

> -- Steve

Sebastian
