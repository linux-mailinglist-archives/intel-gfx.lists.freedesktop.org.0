Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3820619CC76
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 23:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0BCB6E16D;
	Thu,  2 Apr 2020 21:39:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 375 seconds by postgrey-1.36 at gabe;
 Thu, 02 Apr 2020 21:39:12 UTC
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55A536E16D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 21:39:12 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 654231C317F; Thu,  2 Apr 2020 23:32:54 +0200 (CEST)
Date: Thu, 2 Apr 2020 23:32:53 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200402213253.GA2691@duo.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] 5.6-rc6: Xorg hangs
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
Content-Type: multipart/mixed; boundary="===============1064831906=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1064831906==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Hardware is thinkpad x220. I had this crash few days ago. And today I
have similar-looking one, with slightly newer kernel. (Will post as a follo=
w-up).

Any idea what can be wrong?

								Pavel
							=09
[171953.828956] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[171953.965936] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[172269.832635] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[172269.964645] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[172585.837116] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[172585.973091] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[172901.836180] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[172901.909705] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[173216.838138] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[173216.998141] iwlwifi 0000:03:00.0: Radio type=3D0x0-0x0-0x3
[173394.002295] INFO: task Xorg:3074 blocked for more than 120 seconds.
[173394.002326]       Not tainted 5.6.0-rc6+ #83
[173394.002348] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[173394.002370] Xorg            D    0  3074   3067 0x00404000
[173394.002397] Call Trace:
[173394.002430]  __schedule+0x350/0x6b0
[173394.002445]  schedule+0x3b/0xf0
[173394.002457]  schedule_preempt_disabled+0x13/0x20
[173394.002468]  __mutex_lock+0x3e0/0x8a0
[173394.002480]  ? i915_vma_pin+0xb4/0x750
[173394.002492]  mutex_lock_nested+0x16/0x20
[173394.002503]  ? mutex_lock_nested+0x16/0x20
[173394.002511]  i915_vma_pin+0xb4/0x750
[173394.002526]  eb_lookup_vmas+0x1c2/0xd10
[173394.002539]  i915_gem_do_execbuffer+0x6a7/0x1ef0
[173394.002556]  ? __lock_acquire.isra.33+0x297/0x550
[173394.002566]  ? find_held_lock+0x35/0xa0
[173394.002579]  ? kvmalloc_node+0x67/0x70
[173394.002593]  ? i915_gem_execbuffer_ioctl+0x270/0x270
[173394.002604]  i915_gem_execbuffer2_ioctl+0x1bc/0x390
[173394.002616]  ? i915_gem_execbuffer_ioctl+0x270/0x270
[173394.002628]  drm_ioctl_kernel+0xab/0xf0
[173394.002639]  drm_ioctl+0x205/0x3e0
[173394.002650]  ? i915_gem_execbuffer_ioctl+0x270/0x270
[173394.002665]  ? __fget_files+0x9d/0xd0
[173394.002677]  ksys_ioctl+0x73/0xb0
[173394.002688]  __x64_sys_ioctl+0x15/0x20
[173394.002698]  do_syscall_64+0x48/0x110
[173394.002709]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[173394.002720] RIP: 0033:0x7f207a42b427
[173394.002737] Code: Bad RIP value.
[173394.002749] RSP: 002b:00007ffc7ed2af88 EFLAGS: 00000246 ORIG_RAX: 00000=
00000000010
[173394.002764] RAX: ffffffffffffffda RBX: 000056121c1436d0 RCX: 00007f207a=
42b427
[173394.002776] RDX: 00007ffc7ed2afd0 RSI: 0000000040406469 RDI: 0000000000=
00000e
[173394.002788] RBP: 00007ffc7ed2afd0 R08: 000056121c1810a0 R09: 00007ffc7e=
dd1090
[173394.002801] R10: 00007ffc7ed2b070 R11: 0000000000000246 R12: 0000000040=
406469
[173394.002813] R13: 000000000000000e R14: ffffffffffffffff R15: 0000000000=
000000
[173394.002833] INFO: task InputThread:3377 blocked for more than 120 secon=
ds.
[173394.002845]       Not tainted 5.6.0-rc6+ #83
[173394.002857] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[173394.002869] InputThread     D    0  3377   3067 0x00400000
[173394.002886] Call Trace:
[173394.002903]  __schedule+0x350/0x6b0
[173394.002920]  schedule+0x3b/0xf0
[173394.002935]  schedule_preempt_disabled+0x13/0x20
[173394.002951]  __mutex_lock+0x3e0/0x8a0
[173394.002971]  ? i915_gem_object_bump_inactive_ggtt+0x3f/0x210
[173394.002984]  mutex_lock_nested+0x16/0x20
[173394.002995]  ? mutex_lock_nested+0x16/0x20
[173394.003006]  i915_gem_object_bump_inactive_ggtt+0x3f/0x210
[173394.003018]  i915_gem_object_unpin_from_display_plane+0x23/0x60
[173394.003033]  intel_unpin_fb_vma+0x40/0xb0
[173394.003045]  intel_legacy_cursor_update+0x2ae/0x320
[173394.003058]  __setplane_atomic+0xce/0x110
[173394.003069]  drm_mode_cursor_universal+0x13d/0x260
[173394.003082]  drm_mode_cursor_common+0xd5/0x240
[173394.003093]  ? drm_mode_setplane+0x1b0/0x1b0
[173394.003103]  drm_mode_cursor_ioctl+0x45/0x60
[173394.003113]  drm_ioctl_kernel+0xab/0xf0
[173394.003124]  drm_ioctl+0x205/0x3e0
[173394.003133]  ? drm_mode_setplane+0x1b0/0x1b0
[173394.003146]  ? __fget_files+0x9d/0xd0
[173394.003158]  ksys_ioctl+0x73/0xb0
[173394.003169]  __x64_sys_ioctl+0x15/0x20
[173394.003178]  do_syscall_64+0x48/0x110
[173394.003187]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[173394.003196] RIP: 0033:0x7f207a42b427
[173394.003208] Code: Bad RIP value.
[173394.003216] RSP: 002b:00007f2076b142d8 EFLAGS: 00000246 ORIG_RAX: 00000=
00000000010
[173394.003225] RAX: ffffffffffffffda RBX: 000056121c190180 RCX: 00007f207a=
42b427
[173394.003233] RDX: 00007f2076b14310 RSI: 00000000c01c64a3 RDI: 0000000000=
00000e
[173394.003241] RBP: 00007f2076b14310 R08: 0000000000000001 R09: 0000000000=
000001
[173394.003249] R10: 0000000000000780 R11: 0000000000000246 R12: 00000000c0=
1c64a3
[173394.003256] R13: 000000000000000e R14: 000000000000043b R15: 0000000000=
0001e7
[173394.003309] INFO: task GpuWatchdog:4368 blocked for more than 120 secon=
ds.
[173394.003317]       Not tainted 5.6.0-rc6+ #83
[173394.003324] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[173394.003332] GpuWatchdog     D    0  4368   4341 0x80004002
[173394.003342] Call Trace:
[173394.003353]  __schedule+0x350/0x6b0
[173394.003366]  schedule+0x3b/0xf0
[173394.003381]  schedule_preempt_disabled+0x13/0x20
[173394.003396]  __mutex_lock+0x3e0/0x8a0
[173394.003414]  ? i915_gem_object_release_mmap+0x30/0x70
[173394.003433]  mutex_lock_nested+0x16/0x20
[173394.003445]  ? mutex_lock_nested+0x16/0x20
[173394.003457]  i915_gem_object_release_mmap+0x30/0x70
[173394.003469]  __i915_gem_free_objects+0x68/0x1f0
[173394.003480]  i915_gem_flush_free_objects+0x19/0x20
[173394.003493]  i915_driver_postclose+0x45/0x50
[173394.003503]  drm_file_free.part.12+0x1da/0x280
[173394.003513]  drm_release+0xaa/0xe0
[173394.003524]  __fput+0xb0/0x240
[173394.003534]  ____fput+0x9/0x10
[173394.003545]  task_work_run+0x8f/0xb0
[173394.003559]  do_exit+0x372/0xa80
[173394.003572]  ? ___preempt_schedule+0x16/0x18
[173394.003584]  do_group_exit+0x4b/0xc0
[173394.003595]  __x64_sys_exit_group+0x13/0x20
[173394.003604]  do_syscall_64+0x48/0x110
[173394.003613]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[173394.003621] RIP: 0033:0x7fb4fa7009d6
[173394.003632] Code: Bad RIP value.
[173394.003640] RSP: 002b:00007fb4f4e80ec8 EFLAGS: 00000206 ORIG_RAX: 00000=
000000000e7
[173394.003649] RAX: ffffffffffffffda RBX: 00007fb4f4e81040 RCX: 00007fb4fa=
7009d6
[173394.003657] RDX: 0000000000000001 RSI: 000000000000003c RDI: 0000000000=
000001
[173394.003665] RBP: 00007fb4f4e81ae0 R08: 00000000000000e7 R09: ffffffffff=
fffee0
[173394.003673] R10: 00007fb4f4e816c0 R11: 0000000000000206 R12: 0000000000=
000017
[173394.003680] R13: 00007fb4f4e816b0 R14: 00005580b056266d R15: 00007fb4f4=
e82200
[173394.003821] INFO: task kworker/u16:3:3798 blocked for more than 120 sec=
onds.
[173394.003829]       Not tainted 5.6.0-rc6+ #83
[173394.003835] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables=
 this message.
[173394.003843] kworker/u16:3   D    0  3798      2 0x80004000
[173394.003859] Workqueue: i915 __i915_gem_free_work
[173394.003868] Call Trace:
[173394.003879]  __schedule+0x350/0x6b0
[173394.003890]  schedule+0x3b/0xf0
[173394.003900]  schedule_preempt_disabled+0x13/0x20
[173394.003911]  __mutex_lock+0x3e0/0x8a0
[173394.003923]  ? i915_gem_object_release_mmap+0x30/0x70
[173394.003934]  mutex_lock_nested+0x16/0x20
[173394.003945]  ? mutex_lock_nested+0x16/0x20
[173394.003956]  i915_gem_object_release_mmap+0x30/0x70
[173394.003967]  __i915_gem_free_objects+0x68/0x1f0
[173394.003979]  __i915_gem_free_work+0x1d/0x20
[173394.003992]  process_one_work+0x21d/0x3e0
[173394.004003]  ? process_one_work+0x1b3/0x3e0
[173394.004016]  worker_thread+0x32/0x3a0
[173394.004028]  kthread+0x116/0x130
[173394.004039]  ? process_one_work+0x3e0/0x3e0
[173394.004049]  ? kthread_create_worker_on_cpu+0x60/0x60
[173394.004059]  ret_from_fork+0x35/0x40
[173394.004071]=20
                Showing all locks held in the system:
[173394.004083] 1 lock held by khungtaskd/632:
[173394.004091]  #0: ffffffff858498e0 (rcu_read_lock){....}, at: debug_show=
_all_locks+0x23/0x108
[173394.004114] 3 locks held by kswapd0/1033:
[173394.004121]  #0: ffffffff85851c80 (fs_reclaim){....}, at: __fs_reclaim_=
acquire+0x0/0x30
[173394.004139]  #1: ffffffff85850b40 (shrinker_rwsem){....}, at: shrink_sl=
ab.constprop.79+0x38/0x270
[173394.004154]  #2: ffff8881973d8b90 (&vm->mutex){....}, at: i915_vma_unbi=
nd+0x90/0xe0
[173394.004179] 1 lock held by in:imklog/2952:
[173394.004186]  #0: ffff88818f9d7620 (&f->f_pos_lock){....}, at: __fdget_p=
os+0x40/0x50
[173394.004208] 3 locks held by Xorg/3074:
[173394.004215]  #0: ffff8881973d00c8 (&dev->struct_mutex){....}, at: i915_=
gem_do_execbuffer+0x690/0x1ef0
[173394.004232]  #1: ffff888192203150 (&ctx->mutex){....}, at: eb_lookup_vm=
as+0x7d/0xd10
[173394.004247]  #2: ffff8881973d8b90 (&vm->mutex){....}, at: i915_vma_pin+=
0xb4/0x750
[173394.004262] 4 locks held by InputThread/3377:
[173394.004269]  #0: ffffc900007d3cd8 (crtc_ww_class_acquire){....}, at: dr=
m_mode_cursor_common+0x8b/0x240
[173394.004284]  #1: ffff8881971d7088 (crtc_ww_class_mutex){....}, at: drm_=
modeset_lock+0x10b/0x130
[173394.004301]  #2: ffff888187a60688 (reservation_ww_class_mutex){....}, a=
t: intel_unpin_fb_vma+0x22/0xb0
[173394.004318]  #3: ffff8881973d8b90 (&vm->mutex){....}, at: i915_gem_obje=
ct_bump_inactive_ggtt+0x3f/0x210
[173394.004349] 2 locks held by GpuWatchdog/4368:
[173394.004355]  #0: ffffffff85879d60 (drm_global_mutex){....}, at: drm_rel=
ease+0x2b/0xe0
[173394.004370]  #1: ffff8881973d8b90 (&vm->mutex){....}, at: i915_gem_obje=
ct_release_mmap+0x30/0x70
[173394.004434] 3 locks held by kworker/u16:3/3798:
[173394.004441]  #0: ffff888197f22528 ((wq_completion)i915){....}, at: proc=
ess_one_work+0x1b3/0x3e0
[173394.004457]  #1: ffffc9000116be70 ((work_completion)(&i915->mm.free_wor=
k)){....}, at: process_one_work+0x1b3/0x3e0
[173394.004474]  #2: ffff8881973d8b90 (&vm->mutex){....}, at: i915_gem_obje=
ct_release_mmap+0x30/0x70

[173394.004498] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXoZaBQAKCRAw5/Bqldv6
8s6/AJ47WQ3tb5cdjBr83r+vTCxtSV9xhwCgqmLZ0uoOgFfEzIS6DW4tXuiUFYg=
=0EtM
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--

--===============1064831906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1064831906==--
