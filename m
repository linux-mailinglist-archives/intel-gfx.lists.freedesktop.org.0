Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38987B0BDAD
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 09:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB6D10E140;
	Mon, 21 Jul 2025 07:32:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=romainguyard.com header.i=@romainguyard.com header.b="A26R+VjE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4201 seconds by postgrey-1.36 at gabe;
 Mon, 21 Jul 2025 07:32:55 UTC
Received: from 12.mo584.mail-out.ovh.net (12.mo584.mail-out.ovh.net
 [178.33.104.253])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E3210E140
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jul 2025 07:32:55 +0000 (UTC)
Received: from director3.ghost.mail-out.ovh.net (unknown [10.110.58.72])
 by mo584.mail-out.ovh.net (Postfix) with ESMTP id 4blpKW0mmGz88Xd
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jul 2025 05:06:55 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-dqwg4 (unknown [10.110.118.207])
 by director3.ghost.mail-out.ovh.net (Postfix) with ESMTPS id EEEF1C04F2;
 Mon, 21 Jul 2025 05:06:50 +0000 (UTC)
Received: from romainguyard.com ([37.59.142.100])
 by ghost-submission-5b5ff79f4f-dqwg4 with ESMTPSA
 id h1lQD+rKfWhQlQAAWvI9CA
 (envelope-from <kernel@romainguyard.com>); Mon, 21 Jul 2025 05:06:50 +0000
Authentication-Results: garm.ovh; auth=pass
 (GARM-100R0034b84ee3f-c5f5-4341-b882-c0159f939930,
 B2BD194A01B203CD258A26CC551141F810F74FE4) smtp.auth=kernel@romainguyard.com
X-OVh-ClientIp: 39.110.214.243
Message-ID: <f6b3ed54-dc0e-45a0-8f8d-0826d0133705@romainguyard.com>
Date: Mon, 21 Jul 2025 14:06:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/9] drm/i915: PREEMPT_RT related fixups.
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Scott Oehrlein <scott.oehrlein@intel.com>,
 Ben Hutchings <ben@decadent.org.uk>
References: <20250714153954.629393-1-bigeasy@linutronix.de>
Content-Language: en-US
From: Romain Guyard <kernel@romainguyard.com>
In-Reply-To: <20250714153954.629393-1-bigeasy@linutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 14622625040586957165
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdejuddulecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomheptfhomhgrihhnucfiuhihrghrugcuoehkvghrnhgvlhesrhhomhgrihhnghhuhigrrhgurdgtohhmqeenucggtffrrghtthgvrhhnpeetheekheeigfdvtedugfduvdduveekfeffvdffvdeftdejieefteelleekueelteenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppeduvdejrddtrddtrddupdefledruddutddrvddugedrvdegfedpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepkhgvrhhnvghlsehrohhmrghinhhguhihrghrugdrtghomhdpnhgspghrtghpthhtohepuddprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhgpdfovfetjfhoshhtpehmohehkeegmgdpmhhouggvpehsmhhtphhouhht
DKIM-Signature: a=rsa-sha256; bh=ZrEVMOqso4pZ2yLruuXfWNWPyVmSGIEs39RSn6JbkCw=; 
 c=relaxed/relaxed; d=romainguyard.com; h=From;
 s=ovhmo5102742-selector1; t=1753074415; v=1;
 b=A26R+VjEy/9F/U7bPZKEkkzSfSO6+3cddFXf6HKLMv3dTYDUgoFwdi7FS6NPcn8Vzw3LiFal
 Hw97T2JvEcASJqEmTTwBfV6rlP0v5oY5PF6hTNLaaRr6XU/ICB8k+8lo3ul+HiQRyHrAGlNeM9z
 rpksNIZSF3Yt2E1eHDeTCIFrBTll82tlynKTgEkHGDuzXm5LXQ3M5VyJesqBMRs1KXDEkdFmbC6
 WTJELIq2oKjHqijElP8GzD7jxPkkDKEUcIUDhvdzb+CudyrjEXC5oBIZDykQKyRsp7Cuz1da+uz
 THoXyScermiQTxhpAc+dmtSLokBKD3kC9vy9o7ctkv1nA==
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

Hello,

I use i915 on a RT machine (Intel(R) Xeon(R) E-2278GE CPU), so I am 
interested in this patch set.
I have applied it to the 6.16-rc6 kernel but few minutes after boot, my 
kernel doesn't look very happy.

The system was mostly idle, maybe doing some light DB work.

 From the kdump I retrieved the following logs:


```
[ 2286.626358] rcu: INFO: rcu_preempt self-detected stall on CPU
[ 2286.626361] rcu:     0-...!: (21000 ticks this GP) 
idle=1cfc/1/0x4000000000000002 softirq=0/0 fqs=0
[ 2286.626363] rcu:     (t=21000 jiffies g=355917 q=1637 ncpus=16)
[ 2286.626364] rcu: rcu_preempt kthread timer wakeup didn't happen for 
20997 jiffies! g355917 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
[ 2286.626366] rcu:     Possible timer handling issue on cpu=0 
timer-softirq=95269
[ 2286.626366] rcu: rcu_preempt kthread starved for 21000 jiffies! 
g355917 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=0
[ 2286.626367] rcu:     Unless rcu_preempt kthread gets sufficient CPU 
time, OOM is now expected behavior.
[ 2286.626368] rcu: RCU grace-period kthread stack dump:
[ 2286.626368] task:rcu_preempt     state:I stack:0     pid:17 
tgid:17    ppid:2      task_flags:0x208040 flags:0x00004000
[ 2286.626371] Call Trace:
[ 2286.626372]  <TASK>
[ 2286.626373]  __schedule+0x44c/0xad0
[ 2286.626393]  ? __pfx_rcu_gp_kthread+0x10/0x10
[ 2286.626396]  schedule+0x31/0x100
[ 2286.626398]  schedule_timeout+0x76/0x100
[ 2286.626400]  ? __pfx_process_timeout+0x10/0x10
[ 2286.626402]  rcu_gp_fqs_loop+0x10a/0x4b0
[ 2286.626404]  rcu_gp_kthread+0xd3/0x160
[ 2286.626406]  kthread+0x10b/0x220
[ 2286.626408]  ? __pfx_kthread+0x10/0x10
[ 2286.626409]  ? migrate_enable+0xd6/0x100
[ 2286.626411]  ? __pfx_kthread+0x10/0x10
[ 2286.626413]  ret_from_fork+0x7f/0xe0
[ 2286.626415]  ? __pfx_kthread+0x10/0x10
[ 2286.626416]  ret_from_fork_asm+0x1a/0x30
[ 2286.626418]  </TASK>
[ 2286.626422] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Kdump: loaded 
Tainted: G S                  6.16.0-rc6 #1 PREEMPT_{RT,(lazy)}
[ 2286.626424] Tainted: [S]=CPU_OUT_OF_SPEC
[ 2286.626424] Hardware name: ADLINK TECHNOLOGY Inc. -612X/-612X, BIOS 
1.06.10 07/20/2021
[ 2286.626425] RIP: 0010:cpuidle_enter_state+0xc0/0x410
[ 2286.626426] Code: 61 02 00 00 e8 21 22 04 ff e8 2c f6 ff ff 49 89 c5 
0f 1f 44 00 00 31 ff e8 9d 40 03 ff 45 84 ff 0f 85 33 02 00 00 fb 45 85 
f6 <0f> 88 75 01 00 00 49 63 c6 4c 2b 2c 24 48 8d 14 40 48 8d 0c 90 4
8
[ 2286.626428] RSP: 0018:ffffffff8bc03e38 EFLAGS: 00000206
[ 2286.626429] RAX: ffff951b3db04000 RBX: ffff951acba35000 RCX: 
000000000000001f
[ 2286.626430] RDX: 0000000000000000 RSI: ffffffff8b99e3f0 RDI: 
ffffffff8b9a2813
[ 2286.626430] RBP: 0000000000000003 R08: 00000214658d3fd1 R09: 
0000000000000006
[ 2286.626431] R10: ffffffffffffffff R11: 00000000000002f4 R12: 
ffffffff8bdd2f20
[ 2286.626432] R13: 00000214658d3fd1 R14: 0000000000000003 R15: 
0000000000000000
[ 2286.626432] FS:  0000000000000000(0000) GS:ffff951b3db04000(0000) 
knlGS:0000000000000000
[ 2286.626433] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 2286.626434] CR2: 00007fb0fe4996f8 CR3: 000000065dc4e003 CR4: 
00000000003726f0
[ 2286.626435] Call Trace:
[ 2286.626435]  <TASK>
[ 2286.626436]  cpuidle_enter+0x2d/0x40
[ 2286.626439]  do_idle+0x1a3/0x200
[ 2286.626441]  cpu_startup_entry+0x29/0x30
[ 2286.626442]  rest_init+0xcd/0xd0
[ 2286.626443]  start_kernel+0x506/0x7c0
[ 2286.626446]  x86_64_start_reservations+0x18/0x30
[ 2286.626448]  x86_64_start_kernel+0x104/0x120
[ 2286.626449]  common_startup_64+0x12c/0x138
[ 2286.626452]  </TASK>
[ 2349.629361] rcu: INFO: rcu_preempt self-detected stall on CPU
[ 2349.629364] rcu:     0-...!: (84003 ticks this GP) 
idle=a904/1/0x4000000000000002 softirq=0/0 fqs=1
[ 2349.629367] rcu:     (t=84003 jiffies g=355917 q=7445 ncpus=16)
[ 2349.629368] rcu: rcu_preempt kthread timer wakeup didn't happen for 
63000 jiffies! g355917 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
[ 2349.629369] rcu:     Possible timer handling issue on cpu=0 
timer-softirq=95269
[ 2349.629370] rcu: rcu_preempt kthread starved for 63003 jiffies! 
g355917 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=0
[ 2349.629371] rcu:     Unless rcu_preempt kthread gets sufficient CPU 
time, OOM is now expected behavior.
[ 2349.629371] rcu: RCU grace-period kthread stack dump:
[ 2349.629372] task:rcu_preempt     state:I stack:0     pid:17 
tgid:17    ppid:2      task_flags:0x208040 flags:0x00004000
[ 2349.629374] Call Trace:
[ 2349.629375]  <TASK>
[ 2349.629376]  __schedule+0x44c/0xad0
[ 2349.629397]  ? __pfx_rcu_gp_kthread+0x10/0x10
[ 2349.629400]  schedule+0x31/0x100
[ 2349.629401]  schedule_timeout+0x76/0x100
[ 2349.629403]  ? __pfx_process_timeout+0x10/0x10
[ 2349.629405]  rcu_gp_fqs_loop+0x10a/0x4b0
[ 2349.629407]  rcu_gp_kthread+0xd3/0x160
[ 2349.629409]  kthread+0x10b/0x220
[ 2349.629411]  ? __pfx_kthread+0x10/0x10
[ 2349.629412]  ? migrate_enable+0xd6/0x100
[ 2349.629414]  ? __pfx_kthread+0x10/0x10
[ 2349.629416]  ret_from_fork+0x7f/0xe0
[ 2349.629418]  ? __pfx_kthread+0x10/0x10
[ 2349.629419]  ret_from_fork_asm+0x1a/0x30
[ 2349.629422]  </TASK>
[ 2349.629425] CPU: 0 UID: 0 PID: 0 Comm: swapper/0 Kdump: loaded 
Tainted: G S                  6.16.0-rc6 #1 PREEMPT_{RT,(lazy)}
[ 2349.629427] Tainted: [S]=CPU_OUT_OF_SPEC
[ 2349.629427] Hardware name: ADLINK TECHNOLOGY Inc. -612X/-612X, BIOS 
1.06.10 07/20/2021
[ 2349.629428] RIP: 0010:cpuidle_enter_state+0xc0/0x410
[ 2349.629430] Code: 61 02 00 00 e8 21 22 04 ff e8 2c f6 ff ff 49 89 c5 
0f 1f 44 00 00 31 ff e8 9d 40 03 ff 45 84 ff 0f 85 33 02 00 00 fb 45 85 
f6 <0f> 88 75 01 00 00 49 63 c6 4c 2b 2c 24 48 8d 14 40 48 8d 0c 90 4
8
[ 2349.629431] RSP: 0018:ffffffff8bc03e38 EFLAGS: 00000202
[ 2349.629432] RAX: ffff951b3db04000 RBX: ffff951acba35000 RCX: 
000000000000001f
[ 2349.629433] RDX: 0000000000000000 RSI: ffffffff8b99e3f0 RDI: 
ffffffff8b9a2813
[ 2349.629433] RBP: 0000000000000004 R08: 0000022310d2c70f R09: 
0000000000000008
[ 2349.629434] R10: ffffffffffffffff R11: 00000000ffffffff R12: 
ffffffff8bdd2f20
[ 2349.629434] R13: 0000022310d2c70f R14: 0000000000000004 R15: 
0000000000000000
[ 2349.629435] FS:  0000000000000000(0000) GS:ffff951b3db04000(0000) 
knlGS:0000000000000000
[ 2349.629436] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 2349.629436] CR2: 00007f7ac1609030 CR3: 000000065dc4e006 CR4: 
00000000003726f0
[ 2349.629437] Call Trace:
[ 2349.629438]  <TASK>
[ 2349.629438]  cpuidle_enter+0x2d/0x40
[ 2349.629441]  do_idle+0x1a3/0x200
[ 2349.629443]  cpu_startup_entry+0x29/0x30
[ 2349.629444]  rest_init+0xcd/0xd0
[ 2349.629446]  start_kernel+0x506/0x7c0
[ 2349.629448]  x86_64_start_reservations+0x18/0x30
[ 2349.629450]  x86_64_start_kernel+0x104/0x120
[ 2349.629451]  common_startup_64+0x12c/0x138
[ 2349.629454]  </TASK>
[ 2412.634282] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
[ 2412.634284] rcu:     Tasks blocked on level-0 rcu_node (CPUs 0-15): 
P12083/1:b..l P12724/1:b..l P12725/1:b..l P4057/3:b..l
[ 2412.634289] rcu:     (detected by 14, t=147008 jiffies, g=355917, 
q=9582 ncpus=16)
[ 2412.634290] task:Xorg            state:D stack:0     pid:4057 
tgid:4057  ppid:4055   task_flags:0x400100 flags:0x00004000
[ 2412.634292] Call Trace:
[ 2412.634293]  <TASK>
[ 2412.634295]  __schedule+0x44c/0xad0
[ 2412.634299]  ? rt_mutex_setprio+0x1c6/0x510
[ 2412.634302]  schedule_rtlock+0x25/0x40
[ 2412.634303]  rtlock_slowlock_locked+0x20d/0xe00
[ 2412.634305]  ? __schedule+0x454/0xad0
[ 2412.634307]  rt_spin_lock+0x7a/0xd0
[ 2412.634309]  execlists_submission_tasklet+0x143/0x14d0
[ 2412.634352]  ? timerqueue_add+0x6a/0xc0
[ 2412.634354]  tasklet_action_common+0xc1/0x230
[ 2412.634356]  handle_softirqs.constprop.0+0xce/0x280
[ 2412.634358]  __local_bh_enable_ip+0xa0/0xd0
[ 2412.634359]  i915_gem_do_execbuffer+0x1a73/0x2920
[ 2412.634363]  ? start_dl_timer+0xa5/0x100
[ 2412.634364]  ? migrate_enable+0xd6/0x100
[ 2412.634367]  ? scm_recv_unix+0x4b/0x120
[ 2412.634386]  ? ___slab_alloc.constprop.0+0x271/0xb30
[ 2412.634388]  ? timerqueue_add+0x6a/0xc0
[ 2412.634389]  ? timerqueue_del+0x2e/0x50
[ 2412.634390]  ? __remove_hrtimer+0x39/0x90
[ 2412.634393]  i915_gem_execbuffer2_ioctl+0x10f/0x280
[ 2412.634394]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10
[ 2412.634395]  drm_ioctl_kernel+0xa5/0x100
[ 2412.634398]  drm_ioctl+0x224/0x440
[ 2412.634399]  ? __pfx_i915_gem_execbuffer2_ioctl+0x10/0x10
[ 2412.634401]  ? vfs_read+0x157/0x350
[ 2412.634403]  __x64_sys_ioctl+0x49e/0xac0
[ 2412.634405]  ? preempt_count_add+0x52/0xb0
[ 2412.634407]  ? fput+0x43/0x80
[ 2412.634409]  do_syscall_64+0x4e/0x1d0
[ 2412.634410]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 2412.634412] RIP: 0033:0x7fe09fa6dcc7
[ 2412.634414] RSP: 002b:00007ffca8ce5c38 EFLAGS: 00000246 ORIG_RAX: 
0000000000000010
[ 2412.634415] RAX: ffffffffffffffda RBX: 000055d5dd77e7e0 RCX: 
00007fe09fa6dcc7
[ 2412.634416] RDX: 00007ffca8ce5c40 RSI: 0000000040406469 RDI: 
0000000000000013
[ 2412.634417] RBP: 00007fe09ee069c0 R08: 0000000000000007 R09: 
0000000000001021
[ 2412.634418] R10: 0000000000001021 R11: 0000000000000246 R12: 
00007ffca8ce5c40
[ 2412.634418] R13: 0000000000000000 R14: 0000000000000013 R15: 
000055d5dd8da6a8
[ 2412.634420]  </TASK>
[ 2412.634420] task:postgres        state:D stack:0     pid:12725 
tgid:12725 ppid:3323   task_flags:0x400040 flags:0x00004000
[ 2412.634422] Call Trace:
[ 2412.634422]  <TASK>
[ 2412.634423]  __schedule+0x44c/0xad0
[ 2412.634425]  schedule_rtlock+0x25/0x40
[ 2412.634426]  rtlock_slowlock_locked+0x20d/0xe00
[ 2412.634428]  ? __alloc_skb+0xdb/0x1a0
[ 2412.634430]  rt_spin_lock+0x7a/0xd0
[ 2412.634431]  __local_bh_disable_ip+0xa0/0xe0
[ 2412.634432]  ipt_do_table+0xb6/0x490
[ 2412.634434]  ? nf_conntrack_udp_packet+0x176/0x1d0
[ 2412.634437]  iptable_mangle_hook+0x4d/0xc0
[ 2412.634439]  nf_hook_slow+0x40/0xf0
[ 2412.634441]  __ip_local_out+0xdf/0x120
[ 2412.634443]  ? __pfx_dst_output+0x10/0x10
[ 2412.634445]  ip_send_skb+0x22/0x90
[ 2412.634447]  udp_send_skb+0x18e/0x370
[ 2412.634449]  udp_sendmsg+0x94e/0xb40
[ 2412.634450]  ? __pfx_ip_generic_getfrag+0x10/0x10
[ 2412.634453]  ? complete_signal+0x129/0x380
[ 2412.634455]  __sys_sendto+0x163/0x1e0
[ 2412.634457]  ? migrate_enable+0xd6/0x100
[ 2412.634459]  ? kill_pid_info_type+0xa6/0xc0
[ 2412.634460]  ? __x64_sys_kill+0x1d2/0x210
[ 2412.634461]  __x64_sys_sendto+0x29/0x30
[ 2412.634463]  do_syscall_64+0x4e/0x1d0
[ 2412.634464]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 2412.634464] RIP: 0033:0x7f7ac505b44c
[ 2412.634465] RSP: 002b:00007fffd08ae3d8 EFLAGS: 00000246 ORIG_RAX: 
000000000000002c
[ 2412.634466] RAX: ffffffffffffffda RBX: 0000000000000018 RCX: 
00007f7ac505b44c
[ 2412.634467] RDX: 0000000000000018 RSI: 00007fffd08ae400 RDI: 
0000000000000007
[ 2412.634467] RBP: 00007fffd08ae3f0 R08: 0000000000000000 R09: 
0000000000000000
[ 2412.634468] R10: 0000000000000000 R11: 0000000000000246 R12: 
00007fffd08ae400
[ 2412.634468] R13: 00000000000035c3 R14: 0000000000000006 R15: 
0000560e2e271a80
[ 2412.634469]  </TASK>
[ 2412.634470] task:postgres        state:D stack:0     pid:12724 
tgid:12724 ppid:3323   task_flags:0x400040 flags:0x00004000
[ 2412.634471] Call Trace:
[ 2412.634472]  <TASK>
[ 2412.634472]  __schedule+0x44c/0xad0
[ 2412.634474]  schedule_rtlock+0x25/0x40
[ 2412.634475]  rtlock_slowlock_locked+0x20d/0xe00
[ 2412.634477]  ? __alloc_skb+0xdb/0x1a0
[ 2412.634478]  rt_spin_lock+0x7a/0xd0
[ 2412.634479]  __local_bh_disable_ip+0xa0/0xe0
[ 2412.634480]  ipt_do_table+0xb6/0x490
[ 2412.634482]  ? nf_conntrack_udp_packet+0x176/0x1d0
[ 2412.634483]  iptable_mangle_hook+0x4d/0xc0
[ 2412.634485]  nf_hook_slow+0x40/0xf0
[ 2412.634486]  __ip_local_out+0xdf/0x120
[ 2412.634488]  ? __pfx_dst_output+0x10/0x10
[ 2412.634490]  ip_send_skb+0x22/0x90
[ 2412.634491]  udp_send_skb+0x18e/0x370
[ 2412.634493]  udp_sendmsg+0x94e/0xb40
[ 2412.634494]  ? __pfx_ip_generic_getfrag+0x10/0x10
[ 2412.634497]  ? complete_signal+0x129/0x380
[ 2412.634498]  __sys_sendto+0x163/0x1e0
[ 2412.634499]  ? migrate_enable+0xd6/0x100
[ 2412.634501]  ? kill_pid_info_type+0xa6/0xc0
[ 2412.634502]  ? __x64_sys_kill+0x1d2/0x210
[ 2412.634504]  __x64_sys_sendto+0x29/0x30
[ 2412.634505]  do_syscall_64+0x4e/0x1d0
[ 2412.634506]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 2412.634507] RIP: 0033:0x7f7ac505b44c
[ 2412.634507] RSP: 002b:00007fffd08ae3d8 EFLAGS: 00000246 ORIG_RAX: 
000000000000002c
[ 2412.634508] RAX: ffffffffffffffda RBX: 0000000000000018 RCX: 
00007f7ac505b44c
[ 2412.634508] RDX: 0000000000000018 RSI: 00007fffd08ae400 RDI: 
0000000000000007
[ 2412.634509] RBP: 00007fffd08ae3f0 R08: 0000000000000000 R09: 
0000000000000000
[ 2412.634509] R10: 0000000000000000 R11: 0000000000000246 R12: 
00007fffd08ae400
[ 2412.634510] R13: 0000000000004001 R14: 0000000000000006 R15: 
0000560e2e271a80
[ 2412.634511]  </TASK>
[ 2412.634511] task:kworker/14:1    state:R  running task stack:0     
pid:12083 tgid:12083 ppid:2      task_flags:0x4208060 flags:0x00004000
[ 2412.634513] Workqueue: i915-unordered engine_retire
[ 2412.634515] Call Trace:
[ 2412.634516]  <TASK>
[ 2412.634516]  __schedule+0x44c/0xad0
[ 2412.634518]  ? preempt_schedule_thunk+0x16/0x30
[ 2412.634520]  preempt_schedule_common+0x31/0x80
[ 2412.634521]  preempt_schedule_thunk+0x16/0x30
[ 2412.634523]  migrate_enable+0xe6/0x100
[ 2412.634525]  rt_spin_unlock+0x12/0x40
[ 2412.634526]  remove_from_engine+0x76/0xc0
[ 2412.634528]  i915_request_retire.part.0+0x7c/0x220
[ 2412.634530]  engine_retire+0xc3/0x100
[ 2412.634531]  process_one_work+0x166/0x390
[ 2412.634533]  worker_thread+0x29d/0x3c0
[ 2412.634535]  ? __pfx_worker_thread+0x10/0x10
[ 2412.634536]  kthread+0x10b/0x220
[ 2412.634538]  ? __pfx_kthread+0x10/0x10
[ 2412.634540]  ? migrate_enable+0xd6/0x100
[ 2412.634541]  ? __pfx_kthread+0x10/0x10
[ 2412.634542]  ret_from_fork+0x7f/0xe0
[ 2412.634545]  ? __pfx_kthread+0x10/0x10
[ 2412.634546]  ret_from_fork_asm+0x1a/0x30
[ 2412.634548]  </TASK>
[ 2412.634548] rcu: rcu_preempt kthread timer wakeup didn't happen for 
63002 jiffies! g355917 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402
[ 2412.634550] rcu:     Possible timer handling issue on cpu=0 
timer-softirq=95269
[ 2412.634550] rcu: rcu_preempt kthread starved for 63005 jiffies! 
g355917 f0x0 RCU_GP_WAIT_FQS(5) ->state=0x402 ->cpu=0
[ 2412.634551] rcu:     Unless rcu_preempt kthread gets sufficient CPU 
time, OOM is now expected behavior.
[ 2412.634552] rcu: RCU grace-period kthread stack dump:
[ 2412.634552] task:rcu_preempt     state:I stack:0     pid:17 
tgid:17    ppid:2      task_flags:0x208040 flags:0x00004000
[ 2412.634553] Call Trace:
[ 2412.634554]  <TASK>
[ 2412.634554]  __schedule+0x44c/0xad0
[ 2412.634556]  ? __pfx_rcu_gp_kthread+0x10/0x10
[ 2412.634558]  schedule+0x31/0x100
[ 2412.634560]  schedule_timeout+0x76/0x100
[ 2412.634561]  ? __pfx_process_timeout+0x10/0x10
[ 2412.634563]  rcu_gp_fqs_loop+0x10a/0x4b0
[ 2412.634565]  rcu_gp_kthread+0xd3/0x160
[ 2412.634566]  kthread+0x10b/0x220
[ 2412.634568]  ? __pfx_kthread+0x10/0x10
[ 2412.634569]  ? migrate_enable+0xd6/0x100
[ 2412.634570]  ? __pfx_kthread+0x10/0x10
[ 2412.634572]  ret_from_fork+0x7f/0xe0
[ 2412.634573]  ? __pfx_kthread+0x10/0x10
[ 2412.634574]  ret_from_fork_asm+0x1a/0x30
[ 2412.634576]  </TASK>
[ 2412.634576] rcu: Stack dump where RCU GP kthread last ran:
[ 2412.634577] Sending NMI from CPU 14 to CPUs 0:
[ 2412.634607] NMI backtrace for cpu 0 skipped: idling at 
intel_idle+0x52/0x80
[ 2458.717424] INFO: task _plannings:5849 blocked for more than 122 seconds.
[ 2458.717427]       Tainted: G S                  6.16.0-rc6 #1
[ 2458.717427] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" 
disables this message.
[ 2458.717428] task:_plannings state:D stack:0     pid:5849 tgid:5849  
ppid:5369   task_flags:0x400700 flags:0x00004002
[ 2458.717430] Call Trace:
[ 2458.717431]  <TASK>
[ 2458.717432]  __schedule+0x44c/0xad0
[ 2458.717437]  ? __blk_flush_plug+0xd7/0x130
[ 2458.717439]  schedule+0x31/0x100
[ 2458.717441]  io_schedule+0x50/0x80
[ 2458.717442]  folio_wait_bit_common+0x119/0x2f0
[ 2458.717445]  ? __pfx_wake_page_function+0x10/0x10
[ 2458.717447]  filemap_fault+0x88a/0xfb0
[ 2458.717450]  __do_fault+0x31/0x180
[ 2458.717452]  __handle_mm_fault+0x5bf/0xe90
[ 2458.717454]  handle_mm_fault+0xcf/0x290
[ 2458.717455]  __get_user_pages+0x251/0x1010
[ 2458.717457]  ? up_write+0x2e/0x60
[ 2458.717459]  get_dump_page+0xe2/0x150
[ 2458.717460]  dump_user_range+0x20a/0x3f0
[ 2458.717463]  elf_core_dump+0xca1/0xfd0
[ 2458.717465]  ? 0xffffffffff600000
[ 2458.717468]  do_coredump+0x15d4/0x1c20
[ 2458.717471]  ? preempt_count_add+0x52/0xb0
[ 2458.717474]  ? kmem_cache_free.part.0+0x23c/0x2a0
[ 2458.717475]  ? migrate_enable+0xd6/0x100
[ 2458.717477]  ? get_signal+0x837/0x9a0
[ 2458.717479]  get_signal+0x837/0x9a0
[ 2458.717480]  arch_do_signal_or_restart+0x2d/0x1f0
[ 2458.717483]  exit_to_user_mode_loop+0x7c/0xd0
[ 2458.717486]  do_syscall_64+0x1b0/0x1d0
[ 2458.717488]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
[ 2458.717489] RIP: 0033:0x7f9811ca23ff
[ 2458.717490] RSP: 002b:00007ffc93f6f2a0 EFLAGS: 00000293 ORIG_RAX: 
0000000000000007
[ 2458.717491] RAX: fffffffffffffdfc RBX: 000000000022ce97 RCX: 
00007f9811ca23ff
[ 2458.717492] RDX: 0000000000000064 RSI: 0000000000000001 RDI: 
00007ffc93f6f340
[ 2458.717493] RBP: 0000000000000001 R08: 0000000000000000 R09: 
0000000000000000
[ 2458.717493] R10: 7fffffffffffffff R11: 0000000000000293 R12: 
0000000000000000
[ 2458.717494] R13: 0000000000000000 R14: 0000000029142aa0 R15: 
0000000000000000
[ 2458.717496]  </TASK>
[ 2458.717499] Kernel panic - not syncing: hung_task: blocked tasks
[ 2458.717500] CPU: 11 UID: 0 PID: 150 Comm: khungtaskd Kdump: loaded 
Tainted: G S                  6.16.0-rc6 #1 PREEMPT_{RT,(lazy)}
[ 2458.717502] Tainted: [S]=CPU_OUT_OF_SPEC
[ 2458.717502] Hardware name: ADLINK TECHNOLOGY Inc. -612X/-612X, BIOS 
1.06.10 07/20/2021
[ 2458.717503] Call Trace:
[ 2458.717504]  <TASK>
[ 2458.717504]  panic+0x34d/0x380
[ 2458.717507]  watchdog+0x5a2/0x5b0
[ 2458.717509]  ? __pfx_watchdog+0x10/0x10
[ 2458.717510]  kthread+0x10b/0x220
[ 2458.717512]  ? __pfx_kthread+0x10/0x10
[ 2458.717513]  ? migrate_enable+0xd6/0x100
[ 2458.717515]  ? __pfx_kthread+0x10/0x10
[ 2458.717516]  ret_from_fork+0x7f/0xe0
[ 2458.717519]  ? __pfx_kthread+0x10/0x10
[ 2458.717520]  ret_from_fork_asm+0x1a/0x30
[ 2458.717522]  </TASK>
```

Looks like there are some i915 locking stuff in those BTs.

I am not very knowledgeable about i915 and RT, so my help is quite 
limited, but since this is easily reproduced (always crash or hangs 
after <1H), I can try things.

Thank you!

Romain Guyard

On 7/15/25 00:39, Sebastian Andrzej Siewior wrote:
> The following patches are from the PREEMPT_RT queue. They are used by
> people using the real-time preemption model and a i915 compatible GPU
> card.
> Patches 1+2 keep preemption and interrupts enabled within vblank
> handling. I don't see another way of handling it given the constrains.
> Patch #4 disables i915's tracepoints because they acquire sleeping locks
> within the assign callback with is invoked with disabled preemption.
>
> The remaining patches mostly deal with the API & syntax such as not
> test for disabled interrupts but rather use lockdep (#6) or how to
> identify atomic context which also causes no errors on PREEMPT_RT (#3,
> #6, #7). Patch #5 uses proper spinlock API to disable interrupt instead
> of using local_irq_disable() for it.
>
> Some of the patches already received already Acked-by/ Reviewed-by.
> Could we please apply some of the series and then discuss the
> controversial ones which are not doable?
>
> History:
> v3…v4 https://lore.kernel.org/all/20240628130601.1772849-1-bigeasy@linutronix.de/
>    - Added patch 8.
>
> v2…v3 https://lore.kernel.org/all/20240613102818.4056866-1-bigeasy@linutronix.de/
>    - Collected tags.
>    - Added comment to 3/8 explaining why RT is excluded from the test.
>    
> v1…v2:
>    - The tracing disable bits (4/8) have been reworked after Steven pointed out
>      that something isn't right.
>    - The irq_work() bits have been dropped because they are no longer
>      needed.
>
>
> Mike Galbraith (2):
>    drm/i915: Use preempt_disable/enable_rt() where recommended
>    drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
>
> Sebastian Andrzej Siewior (7):
>    drm/i915: Don't check for atomic context on PREEMPT_RT
>    drm/i915: Disable tracing points on PREEMPT_RT
>    drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() +
>      spin_lock()
>    drm/i915: Drop the irqs_disabled() check
>    drm/i915/guc: Consider also RCU depth in busy loop.
>    drm/i915: Consider RCU read section as atomic.
>    Revert "drm/i915: Depend on !PREEMPT_RT."
>
>   drivers/gpu/drm/i915/Kconfig                  |  1 -
>   drivers/gpu/drm/i915/display/intel_crtc.c     |  9 ++--
>   drivers/gpu/drm/i915/display/intel_cursor.c   |  9 ++--
>   .../drm/i915/display/intel_display_trace.h    |  4 ++
>   drivers/gpu/drm/i915/display/intel_vblank.c   | 49 ++++++++++++++-----
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>   .../drm/i915/gt/intel_execlists_submission.c  | 17 ++-----
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  2 +-
>   drivers/gpu/drm/i915/i915_request.c           |  2 -
>   drivers/gpu/drm/i915/i915_trace.h             |  4 ++
>   drivers/gpu/drm/i915/i915_utils.h             |  9 +++-
>   drivers/gpu/drm/i915/intel_uncore_trace.h     |  4 ++
>   12 files changed, 75 insertions(+), 37 deletions(-)
>
> Sebastian
>
>
