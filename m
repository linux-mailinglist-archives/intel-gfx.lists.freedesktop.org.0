Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAECB2F623
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 13:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6F210E931;
	Thu, 21 Aug 2025 11:13:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="H5RNzBuO";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="KdG4ac7e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F3010E931;
 Thu, 21 Aug 2025 11:13:54 +0000 (UTC)
Date: Thu, 21 Aug 2025 13:13:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1755774830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3NIB8lAfgc0GDd/cft5feaNuL0ZoNrlmDUJGIwNrlSE=;
 b=H5RNzBuOoWhvydkXXWHN9AmgNsyjpR9TbCJrQz4xPjPdOIu1/j6YzrpmQG+e6IHMgklo0/
 aM4kQScUN/RwFM27aO1/ap8YiztzYNXt8ABkfb5tcCdAhOFDUv/tbmXiDdyisGxhDHB+qz
 +s8waefcDeQio3A2MWgJS2TdyH8/Mh3eLX8PU3WUXIGHq4iFjqvxdJHfMAeLa2MuYbpU/R
 Pu58+Km+Op1VTdK7ywxv/7FU9veWoG7UTJmpzjD3xKX0url8xaoyBsSmIuYKuG8U+9xQz+
 dZU5Qt1ZRc0/PTm+GxN+QxehAeDFttiDfnRrJVgFrRksJdJkgDWVabIpxWJdbw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1755774830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3NIB8lAfgc0GDd/cft5feaNuL0ZoNrlmDUJGIwNrlSE=;
 b=KdG4ac7eJj8uLKzJpe5E1mJdhl/7Z/bLkSiW7UfVodXzS5wfjoXBD8ERqH32Nbw7oXqN+P
 1IFF2Av3ntuoIVAg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Romain Guyard <kernel@romainguyard.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>
Subject: Re: [PATCH v4 0/9] drm/i915: PREEMPT_RT related fixups.
Message-ID: <20250821111348.6iskn4K9@linutronix.de>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
 <f6b3ed54-dc0e-45a0-8f8d-0826d0133705@romainguyard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f6b3ed54-dc0e-45a0-8f8d-0826d0133705@romainguyard.com>
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

On 2025-07-21 14:06:48 [+0900], Romain Guyard wrote:
> Hello,
Hi,

> [ 2349.629427] Hardware name: ADLINK TECHNOLOGY Inc. -612X/-612X, BIOS
> [ 2349.629454]=C2=A0 </TASK>
> [ 2412.634282] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
> [ 2412.634284] rcu:=C2=A0=C2=A0=C2=A0=C2=A0 Tasks blocked on level-0 rcu_=
node (CPUs 0-15): P12083/1:b..l P12724/1:b..l P12725/1:b..l P4057/3:b..l
> [ 2412.634289] rcu:=C2=A0=C2=A0=C2=A0=C2=A0 (detected by 14, t=3D147008 j=
iffies, g=3D355917, q=3D9582 ncpus=3D16)
> [ 2412.634290] task:Xorg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 state:D stack:0=C2=A0=C2=A0=C2=A0=C2=A0 pid:4057 tgid:40=
57=C2=A0ppid:4055=C2=A0=C2=A0 task_flags:0x400100 flags:0x00004000
> [ 2412.634292] Call Trace:
> [ 2412.634293]=C2=A0 <TASK>
> [ 2412.634295]=C2=A0 __schedule+0x44c/0xad0
> [ 2412.634302]=C2=A0 schedule_rtlock+0x25/0x40
> [ 2412.634303]=C2=A0 rtlock_slowlock_locked+0x20d/0xe00
> [ 2412.634307]=C2=A0 rt_spin_lock+0x7a/0xd0
> [ 2412.634309]=C2=A0 execlists_submission_tasklet+0x143/0x14d0
> [ 2412.634354]=C2=A0 tasklet_action_common+0xc1/0x230
> [ 2412.634356]=C2=A0 handle_softirqs.constprop.0+0xce/0x280
> [ 2412.634358]=C2=A0 __local_bh_enable_ip+0xa0/0xd0
> [ 2412.634359]=C2=A0 i915_gem_do_execbuffer+0x1a73/0x2920

This blocks on a lock and waits to make progress. I did not find out who
is holding that one but.

=E2=80=A6

> [ 2412.634511]=C2=A0 </TASK>
> [ 2412.634511] task:kworker/14:1=C2=A0=C2=A0=C2=A0 state:R=C2=A0 running =
task stack:0=C2=A0=C2=A0=C2=A0=C2=A0pid:12083 tgid:12083 ppid:2=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 task_flags:0x4208060 flags:0x00004000
> [ 2412.634513] Workqueue: i915-unordered engine_retire
> [ 2412.634515] Call Trace:
> [ 2412.634516]=C2=A0 <TASK>
> [ 2412.634516]=C2=A0 __schedule+0x44c/0xad0
> [ 2412.634520]=C2=A0 preempt_schedule_common+0x31/0x80
> [ 2412.634521]=C2=A0 preempt_schedule_thunk+0x16/0x30
> [ 2412.634523]=C2=A0 migrate_enable+0xe6/0x100
> [ 2412.634525]=C2=A0 rt_spin_unlock+0x12/0x40
> [ 2412.634526]=C2=A0 remove_from_engine+0x76/0xc0
> [ 2412.634528]=C2=A0 i915_request_retire.part.0+0x7c/0x220
> [ 2412.634530]=C2=A0 engine_retire+0xc3/0x100
> [ 2412.634531]=C2=A0 process_one_work+0x166/0x390
> [ 2412.634533]=C2=A0 worker_thread+0x29d/0x3c0

this might be the one. The task is running state so I don't understand
what is holding the scheduler back to put it back on the CPU.
There is at least one CPU idle available but this workqueue is called
i915-unordered but must complete on the same CPU (it can't migrate). So
what is CPU14 doing? It should schedule something and not be idle.

> Looks like there are some i915 locking stuff in those BTs.
>=20
> I am not very knowledgeable about i915 and RT, so my help is quite limite=
d,
> but since this is easily reproduced (always crash or hangs after <1H), I =
can
> try things.

I don't know what you can retrieve from the kdump but CPU14 should be
spinning on something I guess. RCU complains about not making progress.
If RCU-boost is enabled then the kworker should have one more reason to
be on the CPU.
Could you try v6.17-rc? I didn't add anything i915 related.
Could lease please enable CONFIG_PROVE_LOCKING,
CONFIG_DEBUG_ATOMIC_SLEEP and check if the kernel complains? Maybe there
is something new I haven't noticed.=20

> Thank you!
>=20
> Romain Guyard

Sebastian
