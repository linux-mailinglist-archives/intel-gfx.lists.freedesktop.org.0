Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68F4197C5D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C516E2A9;
	Mon, 30 Mar 2020 13:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7702B6E2A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:00:47 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id 111so17856787oth.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 06:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=fla8h5dw+7kESbxPfIOGPXN0TH0KgZ2TkZfruGM5x9o=;
 b=lg9bvgvrsr0fQ+6RWmswj1Ye2O+9fMYB4JLMCTLhaiT6/OxszDwqgfMiMC1jVWxEkO
 tTp6yhmw2iUfjKosQmnJ44qYjHc0TVJz/31+6/HqOYVe+0C/CADWA2Wm1RxFciJo48Zy
 HDmHRIgT1OdpEs7r+pHoyENZjFcg3mQ+9PJig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=fla8h5dw+7kESbxPfIOGPXN0TH0KgZ2TkZfruGM5x9o=;
 b=CgIMfuT/K+NUHQHG0cwtm54sIiUhEds1ue6MLraMJNu8ApPl2FhazoBQLNII4mpT7/
 5cgEPZQFjOgMjeMS7yi4bIZV/kfwPjMkW+Y2RLZ7Wbmh3OjniHIP3VRH5Hgl3/6ZpwrL
 h0aFYJoRCcOx/r5lyba3Lwvp/xT8srAfWdK73IBybsG8PX5KAfL/ENjnB1IeiDySRtHL
 Xhakv8z7xQGw3zAPrdN+e/Fmjmt3EtdNpBqsg6ag9IVeSUXcrK4FzAE++/3tszIlIWw9
 ffYHpOc+IylJ+Ezfv8/YeLDw2NhKFwD9J9lBSWwdxh13r+qH11zLhW170jIDsHG/RB8p
 38SQ==
X-Gm-Message-State: ANhLgQ1j6Gxg90smDF2e3JE1ikgF+VM2exz+85tpnqdZZEZnSZRvbWjx
 zxx+LMbWcK7NLW3ZXkOTX+ENNZKdvPNFUUjl/v+0/g==
X-Google-Smtp-Source: ADFU+vt5DBwGAI9mfWkYTIU+buXY6ODllVl/y1pNfdCTo2/8qAS1bHnAc8vYv+NAxTpPE7GJFTMrj4Eq0QnR0Jyv8os=
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr4716842otr.188.1585573246524; 
 Mon, 30 Mar 2020 06:00:46 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 30 Mar 2020 15:00:35 +0200
Message-ID: <CAKMK7uGQ49JGetk3-VmHxXR0HVEoQgVxSZvX9Z0b5so8y+13cA@mail.gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>,
 Josh Triplett <josh@joshtriplett.org>, 
 Steven Rostedt <rostedt@goodmis.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Lai Jiangshan <jiangshanlai@gmail.com>, Joel Fernandes <joel@joelfernandes.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
 Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, 
 Namhyung Kim <namhyung@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
 Thomas Gleixner <tglx@linutronix.de>
Subject: [Intel-gfx] rcu_barrier() no longer allowed within mmap_sem?
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
Cc: rcu@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all, for all = rcu, cpuhotplug and perf maintainers

We've hit an interesting new lockdep splat in our drm/i915 CI:

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17096/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html#dmesg-warnings861

Summarizing away the driver parts we have

< gpu locks which are held within mm->mmap_sem in various gpu fault handlers >

-> #4 (&mm->mmap_sem#2){++++}:
<4> [604.892615] __might_fault+0x63/0x90
<4> [604.892617] _copy_to_user+0x1e/0x80
<4> [604.892619] perf_read+0x200/0x2b0
<4> [604.892621] vfs_read+0x96/0x160
<4> [604.892622] ksys_read+0x9f/0xe0
<4> [604.892623] do_syscall_64+0x4f/0x220
<4> [604.892624] entry_SYSCALL_64_after_hwframe+0x49/0xbe
<4> [604.892625]
-> #3 (&cpuctx_mutex){+.+.}:
<4> [604.892626] __mutex_lock+0x9a/0x9c0
<4> [604.892627] perf_event_init_cpu+0xa4/0x140
<4> [604.892629] perf_event_init+0x19d/0x1cd
<4> [604.892630] start_kernel+0x362/0x4e4
<4> [604.892631] secondary_startup_64+0xa4/0xb0
<4> [604.892631]
-> #2 (pmus_lock){+.+.}:
<4> [604.892633] __mutex_lock+0x9a/0x9c0
<4> [604.892633] perf_event_init_cpu+0x6b/0x140
<4> [604.892635] cpuhp_invoke_callback+0x9b/0x9d0
<4> [604.892636] _cpu_up+0xa2/0x140
<4> [604.892637] do_cpu_up+0x61/0xa0
<4> [604.892639] smp_init+0x57/0x96
<4> [604.892639] kernel_init_freeable+0x87/0x1dc
<4> [604.892640] kernel_init+0x5/0x100
<4> [604.892642] ret_from_fork+0x24/0x50
<4> [604.892642]
-> #1 (cpu_hotplug_lock.rw_sem){++++}:
<4> [604.892643] cpus_read_lock+0x34/0xd0
<4> [604.892644] rcu_barrier+0xaa/0x190
<4> [604.892645] kernel_init+0x21/0x100
<4> [604.892647] ret_from_fork+0x24/0x50
<4> [604.892647]
-> #0 (rcu_state.barrier_mutex){+.+.}:
<4> [604.892649] __lock_acquire+0x1328/0x15d0
<4> [604.892650] lock_acquire+0xa7/0x1c0
<4> [604.892651] __mutex_lock+0x9a/0x9c0
<4> [604.892652] rcu_barrier+0x23/0x190
<4> [604.892680] i915_gem_object_unbind+0x29d/0x3f0 [i915]
<4> [604.892707] i915_gem_object_pin_to_display_plane+0x141/0x270 [i915]
<4> [604.892737] intel_pin_and_fence_fb_obj+0xec/0x1f0 [i915]
<4> [604.892767] intel_plane_pin_fb+0x3f/0xd0 [i915]
<4> [604.892797] intel_prepare_plane_fb+0x13b/0x5c0 [i915]
<4> [604.892798] drm_atomic_helper_prepare_planes+0x85/0x110
<4> [604.892827] intel_atomic_commit+0xda/0x390 [i915]
<4> [604.892828] drm_atomic_helper_set_config+0x57/0xa0
<4> [604.892830] drm_mode_setcrtc+0x1c4/0x720
<4> [604.892830] drm_ioctl_kernel+0xb0/0xf0
<4> [604.892831] drm_ioctl+0x2e1/0x390
<4> [604.892833] ksys_ioctl+0x7b/0x90
<4> [604.892835] __x64_sys_ioctl+0x11/0x20
<4> [604.892835] do_syscall_64+0x4f/0x220
<4> [604.892836] entry_SYSCALL_64_after_hwframe+0x49/0xbe

The last backtrace boils down to i915 driver code which holds the same
locks we are holding within mm->mmap_sem, and then ends up calling
rcu_barrier(). From what I can see i915 is just the messenger here,
any driver with this pattern of a lock held within mmap_sem which also
has a path of calling rcu_barrier while holding that lock should be
hitting this splat.

Two questions:
- This suggests that calling rcu_barrier() isn't ok anymore while
holding mmap_sem, or anything that has a dependency upon mmap_sem. I
guess that's not the idea, please confirm.
- Assuming this depedency is indeed not intended, where should the
loop be broken? It goes through perf, cpuhotplug and rcu subsystems,
and I don't have a clue about any of those.

Thanks a lot.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
