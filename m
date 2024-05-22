Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D37E8CC305
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 16:18:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E3410E307;
	Wed, 22 May 2024 14:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="czJd+6Nc";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="xeFO/W2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D850510E307;
 Wed, 22 May 2024 14:18:26 +0000 (UTC)
Date: Wed, 22 May 2024 16:18:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1716387503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=vDFS3jcMTPdbeJFkSqus8x2Lz7xoUHwAbOpmJJ8tKvQ=;
 b=czJd+6NcoM9e+cAI2EfbAaNkxaqeMvr8Kr3vligjJYcllimoZNDMYs1LiyF/vDQvUyHfQQ
 2KiH17JZnkCSrgXEWf5hrYoatLy7+7I5d3aMD85ejfoba4DzhQHHdfEihB97TN4bCBVU2r
 5vd8zDJq03xFCx2LYYD3geNLwcgNmkob2kzPvORB+po0fbjhzk5t63xjvBy+kRqABsGbkM
 P3fknbYxQzRInveQy4a9KDm32nY+O7opqrpSC0FMOMZk9Ou1PQX/IUbakacbIGcBlGtcI2
 +CaPU6q2jOFfGlZwIpGIYLPQEsYtI0ahNYN2RU0mDxhJzkYFm3Yz2luAQLEvOA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1716387503;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=vDFS3jcMTPdbeJFkSqus8x2Lz7xoUHwAbOpmJJ8tKvQ=;
 b=xeFO/W2WKYQk1ytxrTO2d9GuIsTOuf+Xf9LbS+YpJVHSMFOlZu0JNO4Vq2Zj6mqIndCbEV
 Zwn7xdvZQNqHdSCA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Subject: XE tests on Tiger Lake
Message-ID: <20240522141822.bJcQDijH@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
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

Hi,

I've been testing v6.9 with the XE driver on a
|  00:02.0 VGA compatible controller: Intel Corporation TigerLake-LP GT2 [Iris Xe Graphics] (rev 01)
(8086:9a49) 11th Gen Intel(R) Core(TM) i7-1165G7 platform.

During boot up a few timeouts and errors showed up:

| xe 0000:00:02.0: enabling device (0006 -> 0007)
| xe 0000:00:02.0: vgaarb: deactivate vga console
| xe 0000:00:02.0: [drm] Using GuC firmware from i915/tgl_guc_70.bin version 70.5.1
| xe 0000:00:02.0: [drm] GuC firmware (70.19.2) is recommended, but only (70.5.1) was found in i915/tgl_guc_70.bin
| xe 0000:00:02.0: [drm] Consider updating your linux-firmware pkg or downloading from https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
| xe 0000:00:02.0: [drm] Using HuC firmware from i915/tgl_huc.bin version 7.9.3
| xe 0000:00:02.0: vgaarb: VGA decodes changed: olddecodes=io+mem,decodes=none:owns=mem
| xe 0000:00:02.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
| xe 0000:00:02.0: [drm] HDCP support not yet implemented
| xe 0000:00:02.0: [drm] fb0: xedrmfb frame buffer device
| xe 0000:00:02.0: [drm] Timedout job: seqno=4294967169, guc_id=2, flags=0x0
| xe 0000:00:02.0: [drm] *ERROR* H2G CTB (all sizes in DW):
| xe 0000:00:02.0: [drm] *ERROR* 	size: 1024
| xe 0000:00:02.0: [drm] *ERROR* 	resv_space: 0
| xe 0000:00:02.0: [drm] *ERROR* 	head: 0
| xe 0000:00:02.0: [drm] *ERROR* 	tail: 469
| xe 0000:00:02.0: [drm] *ERROR* 	space: 554
| xe 0000:00:02.0: [drm] *ERROR* 	broken: 0
| xe 0000:00:02.0: [drm] *ERROR* 	head (memory): 465
| xe 0000:00:02.0: [drm] *ERROR* 	tail (memory): 469
| xe 0000:00:02.0: [drm] *ERROR* 	status (memory): 0x0
| xe 0000:00:02.0: [drm] *ERROR* 	cmd[465]: 0x80520003
| xe 0000:00:02.0: [drm] *ERROR* 	cmd[466]: 0x20001001
| xe 0000:00:02.0: [drm] *ERROR* 	cmd[467]: 0x00000003
| xe 0000:00:02.0: [drm] *ERROR* 	cmd[468]: 0x00000001
| xe 0000:00:02.0: [drm] *ERROR* 
| G2H CTB (all sizes in DW):
| xe 0000:00:02.0: [drm] *ERROR* 	size: 4096
| xe 0000:00:02.0: [drm] *ERROR* 	resv_space: 1024
| xe 0000:00:02.0: [drm] *ERROR* 	head: 156
| xe 0000:00:02.0: [drm] *ERROR* 	tail: 0
| xe 0000:00:02.0: [drm] *ERROR* 	space: 3067
| xe 0000:00:02.0: [drm] *ERROR* 	broken: 0
| xe 0000:00:02.0: [drm] *ERROR* 	head (memory): 156
| xe 0000:00:02.0: [drm] *ERROR* 	tail (memory): 156
| xe 0000:00:02.0: [drm] *ERROR* 	status (memory): 0x0
| xe 0000:00:02.0: [drm] *ERROR* 	g2h outstanding: 1
| xe 0000:00:02.0: [drm] *ERROR* rcs0 (physical), logical instance=0
| xe 0000:00:02.0: [drm] *ERROR* 	Forcewake: domain 0x2, ref 1
| xe 0000:00:02.0: [drm] *ERROR* 	HWSTAM: 0xffffffff
| xe 0000:00:02.0: [drm] *ERROR* 	RING_HWS_PGA: 0x01f10000
| xe 0000:00:02.0: [drm] *ERROR* 	RING_EXECLIST_STATUS: 0x0000004000018001
| xe 0000:00:02.0: [drm] *ERROR* 	RING_EXECLIST_SQ_CONTENTS: 0x0000004001f51119
| xe 0000:00:02.0: [drm] *ERROR* 	RING_START: 0x01f4d000
| xe 0000:00:02.0: [drm] *ERROR* 	RING_HEAD: 0x00000090
| xe 0000:00:02.0: [drm] *ERROR* 	RING_TAIL: 0x00000090
| xe 0000:00:02.0: [drm] *ERROR* 	RING_CTL: 0x00003000
| xe 0000:00:02.0: [drm] *ERROR* 	RING_MI_MODE: 0x00000200
| xe 0000:00:02.0: [drm] *ERROR* 	RING_MODE: 0x00000008
| xe 0000:00:02.0: [drm] *ERROR* 	RING_IMR: 0x00000000
| xe 0000:00:02.0: [drm] *ERROR* 	RING_ESR: 0x00000000
| xe 0000:00:02.0: [drm] *ERROR* 	RING_EMR: 0xffffffff
| xe 0000:00:02.0: [drm] *ERROR* 	RING_EIR: 0x00000000
| xe 0000:00:02.0: [drm] *ERROR* 	ACTHD: 0x0000000000000000
| xe 0000:00:02.0: [drm] *ERROR* 	BBADDR: 0x0000fffeffdee1c0
| xe 0000:00:02.0: [drm] *ERROR* 	DMA_FADDR: 0x0000000001f4d090
| xe 0000:00:02.0: [drm] *ERROR* 	IPEHR: 0x02800000
| xe 0000:00:02.0: [drm] *ERROR*  VM root: A:0x1083f7000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [000000013f780000-000000013f7fffff] S:0x0000000000080000 A:0000000137c80000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [00000001ff7ef000-00000001ff7fefff] S:0x0000000000010000 A:0000000137c40000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000000200000000-000000020003ffff] S:0x0000000000040000 A:0000000142fc0000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffa00000-0000fffeffbfffff] S:0x0000000000200000 A:000000013a200000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffdac000-0000fffeffdbbfff] S:0x0000000000010000 A:0000000137d30000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffdbc000-0000fffeffdcbfff] S:0x0000000000010000 A:0000000137d20000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffdcc000-0000fffeffddbfff] S:0x0000000000010000 A:0000000137d10000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffddc000-0000fffeffddcfff] S:0x0000000000001000 A:000000013d021000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffddd000-0000fffeffdecfff] S:0x0000000000010000 A:0000000137d00000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffded000-0000fffeffdedfff] S:0x0000000000001000 A:000000013d020000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffdee000-0000fffeffdfdfff] S:0x0000000000010000 A:0000000137c70000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffdfe000-0000fffeffdfefff] S:0x0000000000001000 A:000000013d01f000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffdff000-0000fffeffdfffff] S:0x0000000000001000 A:000000013d000000 SYS
| xe 0000:00:02.0: [drm] *ERROR*  [0000fffeffe00000-0000fffeffffffff] S:0x0000000000200000 A:000000013a000000 SYS
| xe 0000:00:02.0: [drm] Xe device coredump has been created
| xe 0000:00:02.0: [drm] Check your /sys/class/drm/card0/device/devcoredump/data
| xe 0000:00:02.0: [drm] Timedout job: seqno=4294967169, guc_id=5, flags=0x0
| xe 0000:00:02.0: [drm] Timedout job: seqno=4294967169, guc_id=6, flags=0x0

Despite several "Timedout" and "ERROR" messages in the kernel log the
usage seems smooth without any (obvious) errors. Is this to be expected?

Running PREEMPT_RT requires at least "drm/i915: Don't disable interrupts
on PREEMPT_RT during atomic updates" from the PREEMPT_RT-queue otherwise
the following splats are seen:
| BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
| in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 277, name: (udev-worker)
| preempt_count: 0, expected: 0
| RCU nest depth: 0, expected: 0
| CPU: 0 PID: 277 Comm: (udev-worker) Tainted: G     U             6.9.0-rt5+ #14
| Hardware name: LENOVO 20TD00GLGE/20TD00GLGE, BIOS R1EET60W(1.60 ) 04/15/2024
| Call Trace:
|  <TASK>
|  dump_stack_lvl+0x64/0x80
|  __might_resched+0x179/0x1d0
|  rt_spin_lock+0x2b/0x70
|  prepare_to_wait+0x22/0xd0
|  intel_vblank_evade+0xb6/0x150 [xe]
|  intel_pipe_update_start+0xcb/0x260 [xe]
|  intel_update_crtc+0x3a/0x470 [xe]
|  skl_commit_modeset_enables+0x1a4/0x520 [xe]
|  intel_atomic_commit_tail+0x7b7/0x10f0 [xe]
|  intel_atomic_commit+0x2f5/0x340 [xe]
|  drm_atomic_commit+0x9a/0xd0

I didn't observe other warnings even with tracing enabled (unlike on the
i915).

That one i915 patch seems to be enough on this platform with my testing
for PREEMPT_RT.

Sebastian
