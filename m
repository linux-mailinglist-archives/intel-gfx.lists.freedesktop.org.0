Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D99B04538
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 18:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED26610E4EB;
	Mon, 14 Jul 2025 16:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=gmx.de header.i=efault@gmx.de header.b="Z/mPEtC3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 3464 seconds by postgrey-1.36 at gabe;
 Fri, 11 Jul 2025 03:34:01 UTC
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA09910E252
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 03:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
 s=s31663417; t=1752204837; x=1752809637; i=efault@gmx.de;
 bh=uYz0ToQdRavj8q8+BWJnyGC86bIT2G9hbDaQQmSjPS0=;
 h=X-UI-Sender-Class:Message-ID:Subject:From:To:Cc:Date:In-Reply-To:
 References:Content-Type:Content-Transfer-Encoding:MIME-Version:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=Z/mPEtC3EPD8U3MVok6d8j0nj9FDwHhXgDow7iX/+YskaT1M9Mxly7jphro+jICG
 RPqowpWw/ysc2jGzNA3jLe2PO1Wa8pXCxK4XlKZxxv7reWnmC/5ZZcvqaz5Kaf8in
 LhAqbP8bXaF2V9itP/TrAAzTAF9LRPANveOQ9Jx4UWCGPiYxwBPFL7Yzq6TyfG/u9
 mm1STJpP6Rgsv8N/xgR72uy6ckFeILa/HP7TxQG8GymByErUxbIhN1ZQnfbFjvqNo
 oUD1VqfH6LAbD+EfBcaP+mgo+breeX4NSESeFQXAncbHuaMAm0NJSpKL32MEAv+eb
 Ozg+hNj3Rm3KN9l6Dw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from homer.fritz.box ([185.146.50.87]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MStCe-1uDd2w34EI-00RWG2; Fri, 11
 Jul 2025 05:33:56 +0200
Message-ID: <cb6f0eb4abcbae7b0d447b679823b5d537b25b70.camel@gmx.de>
Subject: Re: PREEMPT_RT vs i915
From: Mike Galbraith <efault@gmx.de>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Ben Hutchings
 <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, Debian kernel maintainers
 <debian-kernel@lists.debian.org>
Date: Fri, 11 Jul 2025 05:33:55 +0200
In-Reply-To: <641d3228244517fd1cfb4a103339e86a222cae2b.camel@gmx.de>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com> <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <da51a963b04f0a1b628e80a2c5df72a1609960d1.camel@gmx.de>
 <aG_hNb-c_m0yfVE4@intel.com>
 <641d3228244517fd1cfb4a103339e86a222cae2b.camel@gmx.de>
Autocrypt: addr=efault@gmx.de;
 keydata=mQGiBE/h0fkRBACJWa+2g5r12ej5DQZEpm0cgmzjpwc9mo6Jz7PFSkDQGeNG8wGwFzFPKQrLk1JRdqNSq37FgtFDDYlYOzVyO/6rKp0Iar2Oel4tbzlUewaYWUWTTAtJoTC0vf4p9Aybyo9wjor+XNvPehtdiPvCWdONKZuGJHKFpemjXXj7lb9ifwCg7PLKdz/VMBFlvbIEDsweR0olMykD/0uSutpvD3tcTItitX230Z849Wue3cA1wsOFD3N6uTg3GmDZDz7IZF+jJ0kKt9xL8AedZGMHPmYNWD3Hwh2gxLjendZlcakFfCizgjLZF3O7k/xIj7Hr7YqBSUj5Whkbrn06CqXSRE0oCsA/rBitUHGAPguJfgETbtDNqx8RYJA2A/9PnmyAoqH33hMYO+k8pafEgXUXwxWbhx2hlWEgwFovcBPLtukH6mMVKXS4iik9obfPEKLwW1mmz0eoHzbNE3tS1AaagHDhOqnSMGDOjogsUACZjCJEe1ET4JHZWFM7iszyolEhuHbnz2ajwLL9Ge8uJrLATreszJd57u+NhAyEW7QeTWlrZSBHYWxicmFpdGggPGVmYXVsdEBnbXguZGU+iGIEExECACIFAk/h0fkCGyMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEMYmACnGfbb41A4AnjscsLm5ep+DSi7Bv8BmmoBGTCRnAJ9oXX0KtnBDttPkgUbaiDX56Z1+crkBDQRP4dH5EAQAtYCgoXJvq8VqoleWvqcNScHLrN4LkFxfGkDdqTyQe/79rDWr8su+8TH1ATZ/k+lC6W+vg7ygrdyOK7egA5u+T/GBA1VN+KqcqGqAEZqCLvjorKVQ6mgb5FfXouSGvtsblbRMireEEhJqIQPndq3DvZbKXHVkKrUBcco4MMGDVucABAsEAKXKCwGVEVuYcM/KdT2htDpziRH4JfUn3Ts2EC6F7rXIQ4NaIA6gAvL6HdD3q
 y6yrWaxyqUg8CnZF/J5HR+IvRK+vu85xxwSLQsrVONH0Ita1jg2nhUW7yLZer8xrhxIuYCqrMgreo5BAA3+irHy37rmqiAFZcnDnCNDtJ4sz48tiEkEGBECAAkFAk/h0fkCGwwACgkQxiYAKcZ9tvgIMQCeIcgjSxwbGiGn2q/cv8IvHf1r/DIAnivw+bGITqTU7rhgfwe07dhBoIdz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3 
MIME-Version: 1.0
X-Provags-ID: V03:K1:w5QFhmfDTG7PbYA6FyWZKwMs3HsyUQGIXz3EuUcI5i0t1v+R+nb
 OSUXnf1FAfFL68aUE9oY+Ft+GfBthmzQ/aZq7J4SFFnvLU+Ux4lKD1Yn+ly4RHBABuofG75
 EVaPmlUEmZlOOl26qTDr6/XuqL50Xra9EQ57SeviB2TSqlf3RpP1/2osUpd1su02/OaXCLZ
 J/G1qGv09aHRZIxkDYZ9A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Y3n5QCRpi/U=;iK8N2AZzMbBSZMAaw4uGMjTtDSN
 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
X-Mailman-Approved-At: Mon, 14 Jul 2025 16:16:06 +0000
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

On Fri, 2025-07-11 at 04:36 +0200, Mike Galbraith wrote:
> ..forwarding any performance goop emitted, but lockdep runs out of lock
> counting fingers and turns itself off in short order with RT builds.

Hohum, seems block-land called dibs on lockdep anyway.

[    6.761473] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
[    6.761474] WARNING: possible circular locking dependency detected
[    6.761475] 6.16.0.bc9ff192a-master-rt #46 Tainted: G          I       =
=20
[    6.761476] ------------------------------------------------------
[    6.761476] kworker/u16:0/12 is trying to acquire lock:
[    6.761478] ffffffff825aabd8 (pcpu_alloc_mutex){+.+.}-{4:4}, at: pcpu_al=
loc_noprof+0x508/0x790
[    6.761486]=20
               but task is already holding lock:
[    6.761486] ffff8881238f05c0 (&q->elevator_lock){+.+.}-{4:4}, at: elevat=
or_change+0x5f/0x140
[    6.761491]=20
               which lock already depends on the new lock.

[    6.761492]=20
               the existing dependency chain (in reverse order) is:
[    6.761492]=20
               -> #3 (&q->elevator_lock){+.+.}-{4:4}:
[    6.761494]        __lock_acquire+0x540/0xbb0
[    6.761496]        lock_acquire.part.0+0x94/0x1e0
[    6.761497]        mutex_lock_nested+0x4c/0xa0
[    6.761500]        elevator_change+0x5f/0x140
[    6.761502]        elv_iosched_store+0xe6/0x110
[    6.761505]        kernfs_fop_write_iter+0x14d/0x220
[    6.761508]        vfs_write+0x223/0x580
[    6.761510]        ksys_write+0x5f/0xe0
[    6.761512]        do_syscall_64+0x76/0x3d0
[    6.761514]        entry_SYSCALL_64_after_hwframe+0x4b/0x53
[    6.761516]=20
               -> #2 (&q->q_usage_counter(io)){++++}-{0:0}:
[    6.761517]        __lock_acquire+0x540/0xbb0
[    6.761518]        lock_acquire.part.0+0x94/0x1e0
[    6.761519]        blk_alloc_queue+0x34c/0x390
[    6.761521]        blk_mq_alloc_queue+0x52/0xb0
[    6.761524]        __blk_mq_alloc_disk+0x18/0x60
[    6.761526]        loop_add+0x1d5/0x3d0 [loop]
[    6.761530]        stop_this_handle+0xc3/0x140 [jbd2]
[    6.761539]        do_one_initcall+0x4a/0x270
[    6.761542]        do_init_module+0x60/0x220
[    6.761544]        init_module_from_file+0x75/0xa0
[    6.761546]        idempotent_init_module+0xf3/0x2d0
[    6.761547]        __x64_sys_finit_module+0x6d/0xd0
[    6.761549]        do_syscall_64+0x76/0x3d0
[    6.761550]        entry_SYSCALL_64_after_hwframe+0x4b/0x53
[    6.761551]=20
               -> #1 (fs_reclaim){+.+.}-{0:0}:
[    6.761553]        __lock_acquire+0x540/0xbb0
[    6.761554]        lock_acquire.part.0+0x94/0x1e0
[    6.761555]        fs_reclaim_acquire+0x95/0xd0
[    6.761558]        __kmalloc_noprof+0x87/0x300
[    6.761561]        pcpu_create_chunk+0x1a/0x1b0
[    6.761563]        pcpu_alloc_noprof+0x742/0x790
[    6.761564]        bts_init+0x61/0x100
[    6.761566]        do_one_initcall+0x4a/0x270
[    6.761568]        kernel_init_freeable+0x235/0x280
[    6.761571]        kernel_init+0x1a/0x120
[    6.761572]        ret_from_fork+0x213/0x270
[    6.761574]        ret_from_fork_asm+0x11/0x20
[    6.761576]=20
               -> #0 (pcpu_alloc_mutex){+.+.}-{4:4}:
[    6.761578]        check_prev_add+0xe8/0xca0
[    6.761581]        validate_chain+0x468/0x500
[    6.761582]        __lock_acquire+0x540/0xbb0
[    6.761583]        lock_acquire.part.0+0x94/0x1e0
[    6.761584]        _mutex_lock_killable+0x55/0xc0
[    6.761586]        pcpu_alloc_noprof+0x508/0x790
[    6.761587]        sbitmap_init_node+0xee/0x200
[    6.761590]        sbitmap_queue_init_node+0x28/0x140
[    6.761592]        blk_mq_init_tags+0xa6/0x120
[    6.761594]        blk_mq_alloc_map_and_rqs+0x40/0x110
[    6.761596]        blk_mq_init_sched+0xea/0x1d0
[    6.761599]        elevator_switch+0xb5/0x300
[    6.761601]        elevator_change+0xe2/0x140
[    6.761603]        elevator_set_default+0xb0/0xd0
[    6.761606]        blk_register_queue+0xda/0x1c0
[    6.761608]        __add_disk+0x222/0x380
[    6.761609]        add_disk_fwnode+0x79/0x160
[    6.761610]        sd_probe+0x2f8/0x490 [sd_mod]
[    6.761613]        really_probe+0xd5/0x330
[    6.761615]        __driver_probe_device+0x78/0x110
[    6.761616]        driver_probe_device+0x1f/0xa0
[    6.761618]        __device_attach_driver+0x7a/0x100
[    6.761619]        bus_for_each_drv+0x75/0xb0
[    6.761622]        __device_attach_async_helper+0x83/0xc0
[    6.761624]        async_run_entry_fn+0x2c/0x110
[    6.761626]        process_one_work+0x1e6/0x550
[    6.761629]        worker_thread+0x1ce/0x3c0
[    6.761632]        kthread+0x10c/0x200
[    6.761634]        ret_from_fork+0x213/0x270
[    6.761636]        ret_from_fork_asm+0x11/0x20
[    6.761638]=20
               other info that might help us debug this:

[    6.761638] Chain exists of:
                 pcpu_alloc_mutex --> &q->q_usage_counter(io) --> &q->eleva=
tor_lock

[    6.761640]  Possible unsafe locking scenario:

[    6.761641]        CPU0                    CPU1
[    6.761641]        ----                    ----
[    6.761641]   lock(&q->elevator_lock);
[    6.761642]                                lock(&q->q_usage_counter(io))=
;
[    6.761643]                                lock(&q->elevator_lock);
[    6.761644]   lock(pcpu_alloc_mutex);
[    6.761645]=20
                *** DEADLOCK ***

[    6.761645] 7 locks held by kworker/u16:0/12:
[    6.761646]  #0: ffff888100c64938 ((wq_completion)async){+.+.}-{0:0}, at=
: process_one_work+0x41a/0x550
[    6.761651]  #1: ffff888100afbe48 ((work_completion)(&entry->work)){+.+.=
}-{0:0}, at: process_one_work+0x1aa/0x550
[    6.761655]  #2: ffff8881019e53a0 (&dev->mutex){....}-{4:4}, at: __devic=
e_attach_async_helper+0x30/0xc0
[    6.761658]  #3: ffff888122acd3d0 (&set->update_nr_hwq_lock){.+.+}-{4:4}=
, at: add_disk_fwnode+0x68/0x160
[    6.761661]  #4: ffff8881238f0640 (&q->sysfs_lock){+.+.}-{4:4}, at: blk_=
register_queue+0x92/0x1c0
[    6.761665]  #5: ffff8881238f0120 (&q->q_usage_counter(queue)#65){++++}-=
{0:0}, at: blk_mq_freeze_queue_nomemsave+0x12/0x20
[    6.761669]  #6: ffff8881238f05c0 (&q->elevator_lock){+.+.}-{4:4}, at: e=
levator_change+0x5f/0x140
[    6.761673]=20
               stack backtrace:
[    6.761675] CPU: 1 UID: 0 PID: 12 Comm: kworker/u16:0 Tainted: G        =
  I         6.16.0.bc9ff192a-master-rt #46 PREEMPT_{RT,(lazy)}=20
[    6.761678] Tainted: [I]=3DFIRMWARE_WORKAROUND
[    6.761678] Hardware name: HP HP Spectre x360 Convertible/804F, BIOS F.4=
7 11/22/2017
[    6.761680] Workqueue: async async_run_entry_fn
[    6.761683] Call Trace:
[    6.761684]  <TASK>
[    6.761686]  dump_stack_lvl+0x5b/0x80
[    6.761690]  print_circular_bug.cold+0x38/0x45
[    6.761694]  check_noncircular+0x109/0x120
[    6.761699]  check_prev_add+0xe8/0xca0
[    6.761703]  validate_chain+0x468/0x500
[    6.761706]  __lock_acquire+0x540/0xbb0
[    6.761707]  ? find_held_lock+0x2b/0x80
[    6.761711]  lock_acquire.part.0+0x94/0x1e0
[    6.761712]  ? pcpu_alloc_noprof+0x508/0x790
[    6.761715]  ? rcu_is_watching+0x11/0x40
[    6.761717]  ? lock_acquire+0xee/0x130
[    6.761718]  ? pcpu_alloc_noprof+0x508/0x790
[    6.761720]  ? pcpu_alloc_noprof+0x508/0x790
[    6.761721]  _mutex_lock_killable+0x55/0xc0
[    6.761724]  ? pcpu_alloc_noprof+0x508/0x790
[    6.761726]  pcpu_alloc_noprof+0x508/0x790
[    6.761728]  ? lock_is_held_type+0xca/0x120
[    6.761732]  sbitmap_init_node+0xee/0x200
[    6.761736]  sbitmap_queue_init_node+0x28/0x140
[    6.761739]  blk_mq_init_tags+0xa6/0x120
[    6.761743]  blk_mq_alloc_map_and_rqs+0x40/0x110
[    6.761746]  blk_mq_init_sched+0xea/0x1d0
[    6.761749]  elevator_switch+0xb5/0x300
[    6.761753]  elevator_change+0xe2/0x140
[    6.761756]  elevator_set_default+0xb0/0xd0
[    6.761759]  blk_register_queue+0xda/0x1c0
[    6.761763]  __add_disk+0x222/0x380
[    6.761765]  add_disk_fwnode+0x79/0x160
[    6.761768]  sd_probe+0x2f8/0x490 [sd_mod]
[    6.761771]  ? driver_probe_device+0xa0/0xa0
[    6.761773]  really_probe+0xd5/0x330
[    6.761774]  ? pm_runtime_barrier+0x54/0x90
[    6.761777]  __driver_probe_device+0x78/0x110
[    6.761779]  driver_probe_device+0x1f/0xa0
[    6.761781]  __device_attach_driver+0x7a/0x100
[    6.761783]  bus_for_each_drv+0x75/0xb0
[    6.761787]  __device_attach_async_helper+0x83/0xc0
[    6.761789]  async_run_entry_fn+0x2c/0x110
[    6.761792]  process_one_work+0x1e6/0x550
[    6.761797]  worker_thread+0x1ce/0x3c0
[    6.761800]  ? bh_worker+0x250/0x250
[    6.761803]  kthread+0x10c/0x200
[    6.761811]  ? kthreads_online_cpu+0xe0/0xe0
[    6.761814]  ret_from_fork+0x213/0x270
[    6.761817]  ? kthreads_online_cpu+0xe0/0xe0
[    6.761819]  ret_from_fork_asm+0x11/0x20
[    6.761825]  </TASK>
[    6.799951]  sda: sda1 sda2 sda3 sda4 sda5 sda6
[    6.801399] sd 1:0:0:0: [sda] Attached SCSI disk

