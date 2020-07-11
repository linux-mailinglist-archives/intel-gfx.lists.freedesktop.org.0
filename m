Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A58BD21C63A
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 22:46:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15BA06E101;
	Sat, 11 Jul 2020 20:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05196E101
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 20:46:42 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id F04491C0BD2; Sat, 11 Jul 2020 22:46:38 +0200 (CEST)
Date: Sat, 11 Jul 2020 22:46:38 +0200
From: Pavel Machek <pavel@ucw.cz>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, intel-gfx@lists.freedesktop.org,
 kernel list <linux-kernel@vger.kernel.org>
Message-ID: <20200711204638.GA20728@duo.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] thinkpad x60: oops in eb_relocate_dma in next-20200710
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
Content-Type: multipart/mixed; boundary="===============0845693258=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0845693258==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

I attempted to suspend x60, but it did not work well... Machine is too
messed up to pull more debug info from it :-(.

Best regards,
								Pavel

[11645.369495] wlan0: RX AssocResp from 5c:f4:ab:10:d2:bb (capab=3D0x411 st=
atus=3D0 aid=3D2)
[11645.373180] wlan0: associated
[12366.990398] BUG: unable to handle page fault for address: f8e01000
[12366.990406] #PF: supervisor write access in kernel mode
[12366.990409] #PF: error_code(0x0002) - not-present page
[12366.990412] *pdpt =3D 000000002a497001 *pde =3D 0000000000000000=20
[12366.990418] Oops: 0002 [#1] PREEMPT SMP PTI
[12366.990424] CPU: 0 PID: 3016 Comm: Xorg Not tainted 5.8.0-rc4-next-20200=
710+ #129
[12366.990427] Hardware name: LENOVO 17097HU/17097HU, BIOS 7BETD8WW (2.19 )=
 03/31/2011
[12366.990436] EIP: eb_relocate_vma+0xdee/0xf50
[12366.990441] Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4 fd ff ff ff ff ff =
ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00 00 8b 85 d0 fd ff ff <c7=
> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89 43 08 e9 2c f6 ff
[12366.990445] EAX: 01246134 EBX: f8e01000 ECX: 013b9000 EDX: 00000000
[12366.990448] ESI: eee57cbc EDI: eee57aa4 EBP: eee57c54 ESP: eee579ec
[12366.990452] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00210246
[12366.990456] CR0: 80050033 CR2: f8e01000 CR3: 30230000 CR4: 000006b0
[12366.990459] Call Trace:
[12366.990469]  ? shmem_getpage_gfp.isra.0+0x3ba/0x820
[12366.990477]  i915_gem_do_execbuffer+0xa7b/0x2730
[12366.990479]  ? intel_runtime_pm_put_unchecked+0xd/0x10
[12366.990479]  ? i915_gem_gtt_pwrite_fast+0xf6/0x520
[12366.990479]  ? __lock_acquire.isra.0+0x223/0x500
[12366.990479]  ? cache_alloc_debugcheck_after+0x151/0x180
[12366.990479]  ? kvmalloc_node+0x69/0x80
[12366.990479]  ? __kmalloc+0x92/0x120
[12366.990479]  ? kvmalloc_node+0x69/0x80
[12366.990479]  i915_gem_execbuffer2_ioctl+0x1b9/0x3a0
[12366.990479]  ? drm_dev_exit+0xb/0x40
[12366.990479]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[12366.990479]  drm_ioctl_kernel+0x91/0xe0
[12366.990479]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[12366.990479]  drm_ioctl+0x1fd/0x371
[12366.990479]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[12366.990479]  ? posix_get_monotonic_timespec+0x1d/0x80
[12366.990479]  ? drm_ioctl_kernel+0xe0/0xe0
[12366.990479]  ksys_ioctl+0x143/0x7d0
[12366.990479]  ? ktime_get_ts64+0x77/0x1d0
[12366.990479]  ? _copy_to_user+0x21/0x30
[12366.990479]  ? __prepare_exit_to_usermode+0xe5/0x110
[12366.990479]  __ia32_sys_ioctl+0x10/0x12
[12366.990479]  do_syscall_32_irqs_on+0x3a/0xf0
[12366.990479]  do_int80_syscall_32+0x9/0x20
[12366.990479]  entry_INT80_32+0x116/0x116
[12366.990479] EIP: 0xb7f94092
[12366.990479] Code: Bad RIP value.
[12366.990479] EAX: ffffffda EBX: 0000000a ECX: c0406469 EDX: bf82313c
[12366.990479] ESI: b7382000 EDI: c0406469 EBP: 0000000a ESP: bf8230b4
[12366.990479] DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007b EFLAGS: 00200296
[12366.990479]  ? dev_proc_net_exit+0x10/0x40
[12366.990479]  ? asm_exc_nmi+0xcc/0x2bc
[12366.990479] Modules linked in:
[12366.990479] CR2: 00000000f8e01000
[12366.990479] ---[ end trace d1eedfdf3b328098 ]---
[12366.990479] EIP: eb_relocate_vma+0xdee/0xf50
[12366.990479] Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4 fd ff ff ff ff ff =
ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00 00 8b 85 d0 fd ff ff <c7=
> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89 43 08 e9 2c f6 ff
[12366.990479] EAX: 01246134 EBX: f8e01000 ECX: 013b9000 EDX: 00000000
[12366.990479] ESI: eee57cbc EDI: eee57aa4 EBP: eee57c54 ESP: eee579ec
[12366.990479] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00210246
[12366.990479] CR0: 80050033 CR2: f8e01000 CR3: 30230000 CR4: 000006b0
[12366.996393] BUG: unable to handle page fault for address: f8e03038
[12366.996399] #PF: supervisor write access in kernel mode
[12366.996402] #PF: error_code(0x0002) - not-present page
[12366.996405] *pdpt =3D 00000000339a4001 *pde =3D 0000000000000000=20
[12366.996411] Oops: 0002 [#2] PREEMPT SMP PTI
[12366.996417] CPU: 0 PID: 3016 Comm: Xorg Tainted: G      D           5.8.=
0-rc4-next-20200710+ #129
[12366.996420] Hardware name: LENOVO 17097HU/17097HU, BIOS 7BETD8WW (2.19 )=
 03/31/2011
[12366.996429] EIP: n_tty_open+0x26/0x80
[12366.996434] Code: 00 00 00 90 55 89 e5 56 53 89 c3 b8 f0 22 00 00 e8 ef =
68 cb ff 85 c0 74 62 89 c6 a1 00 2d 26 c5 b9 88 e7 6b c5 ba bd 9c 11 c5 <89=
> 46 38 8d 86 58 22 00 00 e8 9c 5e c0 ff 8d 86 a4 22 00 00 b9 80
[12366.996438] EAX: 002e07b0 EBX: f4a4bc00 ECX: c56be788 EDX: c5119cbd
[12366.996441] ESI: f8e03000 EDI: 00000000 EBP: eee57ee4 ESP: eee57edc
[12366.996444] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00210286
[12366.996448] CR0: 80050033 CR2: f8e03038 CR3: 33b98000 CR4: 000006b0
[12366.996451] Call Trace:
[12366.996457]  tty_ldisc_open.isra.0+0x23/0x40
[12366.996461]  tty_ldisc_reinit+0x99/0xe0
[12366.996465]  tty_ldisc_hangup+0xc4/0x1e0
[12366.996470]  __tty_hangup.part.0+0x13f/0x250
[12366.996476]  tty_vhangup_session+0x11/0x20
[12366.996481]  disassociate_ctty.part.0+0x34/0x230
[12366.996484]  disassociate_ctty+0x28/0x30
[12366.996490]  do_exit+0x456/0x960
[12366.996496]  ? __ia32_sys_ioctl+0x10/0x12
[12366.996500]  ? do_syscall_32_irqs_on+0x3a/0xf0
[12366.996504]  rewind_stack_do_exit+0x11/0x13
[12366.996507] EIP: 0xb7f94092
[12366.996510] Code: Bad RIP value.
[12366.996513] EAX: ffffffda EBX: 0000000a ECX: c0406469 EDX: bf82313c
[12366.996516] ESI: b7382000 EDI: c0406469 EBP: 0000000a ESP: bf8230b4
[12366.996520] DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007b EFLAGS: 00200296
[12366.996526]  ? dev_proc_net_exit+0x10/0x40
[12366.996530]  ? asm_exc_nmi+0xcc/0x2bc
[12366.996533] Modules linked in:
[12366.996537] CR2: 00000000f8e03038
[12366.996542] ---[ end trace d1eedfdf3b328099 ]---
[12366.996549] EIP: eb_relocate_vma+0xdee/0xf50
[12366.996553] Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4 fd ff ff ff ff ff =
ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00 00 8b 85 d0 fd ff ff <c7=
> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89 43 08 e9 2c f6 ff
[12366.996557] EAX: 01246134 EBX: f8e01000 ECX: 013b9000 EDX: 00000000
[12366.996560] ESI: eee57cbc EDI: eee57aa4 EBP: eee57c54 ESP: eee579ec
[12366.996565] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00210246
[12366.996569] CR0: 80050033 CR2: f8e03038 CR3: 33b98000 CR4: 000006b0
[12366.996572] Fixing recursive fault but reboot is needed!
[12371.669356] i915 0000:00:02.0: [drm] GPU HANG: ecode 3:0:00000000
[12371.669364] GPU hangs can indicate a bug anywhere in the entire gfx stac=
k, including userspace.

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--7AUc2qLy4jB3hD7Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXwolLgAKCRAw5/Bqldv6
8tXKAKCl3OtCQCMgr0dLeWWtdqLpfNQ+EQCghXPj18YsJ7OvyF02mzjT1i6gf3Y=
=SLbN
-----END PGP SIGNATURE-----

--7AUc2qLy4jB3hD7Z--

--===============0845693258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0845693258==--
