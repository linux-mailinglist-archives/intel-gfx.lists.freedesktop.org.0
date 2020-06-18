Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C86C1FFD78
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 23:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5954F6E479;
	Thu, 18 Jun 2020 21:37:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 441 seconds by postgrey-1.36 at gabe;
 Thu, 18 Jun 2020 21:37:07 UTC
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC46D6E479
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 21:37:07 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 318191C0C0D; Thu, 18 Jun 2020 23:29:43 +0200 (CEST)
Date: Thu, 18 Jun 2020 23:29:42 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200618212942.GA3831@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Intel-gfx] next-20200618: oops in eb_relocate_vma in Xorg process,
 making machine unusable
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
Content-Type: multipart/mixed; boundary="===============0985870401=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0985870401==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On thinkpad X60 (x86-32): I got this: Had to reboot....

Best regards,
							Pavel

Jun 18 23:16:28 amd kernel: BUG: unable to handle page fault for
address: f8600000
Jun 18 23:16:28 amd kernel: #PF: supervisor write access in kernel
mode
Jun 18 23:16:28 amd kernel: #PF: error_code(0x0002) - not-present page
Jun 18 23:16:28 amd kernel: *pdpt =3D 00000000319d7001 *pde =3D
0000000000000000
Jun 18 23:16:28 amd kernel: Oops: 0002 [#1] PREEMPT SMP PTI
Jun 18 23:16:28 amd kernel: CPU: 0 PID: 2951 Comm: Xorg Not tainted
5.8.0-rc1-next-20200618+ #125
Jun 18 23:16:28 amd kernel: Hardware name: LENOVO 17097HU/17097HU,
BIOS 7BETD8WW (2.19 ) 03/31/2011
Jun 18 23:16:28 amd kernel: EIP: eb_relocate_vma+0xdee/0xf50
Jun 18 23:16:28 amd kernel: Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4
fd ff ff ff ff ff ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00
00 8b 85 d0 fd ff ff <c7> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89
43 08 e9 2c f6 ff
Jun 18 23:16:28 amd kernel: EAX: 003095c8 EBX: f8600000 ECX: 012c8000
EDX: 00000000
Jun 18 23:16:28 amd kernel: ESI: f1ad7cbc EDI: f1ad7b04 EBP: f1ad7c54
ESP: f1ad79ec
Jun 18 23:16:28 amd kernel: DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS:
0068 EFLAGS: 00210246
Jun 18 23:16:28 amd kernel: CR0: 80050033 CR2: f8600000 CR3: 31ada000
CR4: 000006b0
Jun 18 23:16:28 amd kernel: Call Trace:
Jun 18 23:16:28 amd kernel: ? __lock_acquire.isra.0+0x223/0x500
Jun 18 23:16:28 amd kernel: i915_gem_do_execbuffer+0x9a1/0x2a70
Jun 18 23:16:28 amd kernel: ? intel_runtime_pm_put_unchecked+0xd/0x10
Jun 18 23:16:28 amd kernel: ? i915_gem_gtt_pwrite_fast+0xf6/0x520
Jun 18 23:16:28 amd kernel: ? __lock_acquire.isra.0+0x223/0x500
Jun 18 23:16:28 amd kernel: ? cache_alloc_debugcheck_after+0x151/0x180
Jun 18 23:16:28 amd kernel: ? kvmalloc_node+0x69/0x80
Jun 18 23:16:28 amd kernel: ? __kmalloc+0x92/0x120
Jun 18 23:16:28 amd kernel: ? kvmalloc_node+0x69/0x80
Jun 18 23:16:28 amd kernel: i915_gem_execbuffer2_ioctl+0x1b9/0x3a0
Jun 18 23:16:28 amd kernel: ? drm_dev_exit+0xb/0x40
Jun 18 23:16:28 amd kernel: ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
Jun 18 23:16:28 amd kernel: drm_ioctl_kernel+0x91/0xe0
Jun 18 23:16:28 amd kernel: ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
Jun 18 23:16:28 amd kernel: drm_ioctl+0x1fd/0x371
Jun 18 23:16:28 amd kernel: ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
Jun 18 23:16:28 amd kernel: ? posix_get_monotonic_timespec+0x1d/0x80
Jun 18 23:16:28 amd kernel: ? drm_ioctl_kernel+0xe0/0xe0
Jun 18 23:16:28 amd kernel: ksys_ioctl+0x143/0x7d0
Jun 18 23:16:28 amd kernel: ? ktime_get_ts64+0x77/0x1d0
Jun 18 23:16:28 amd kernel: ? _copy_to_user+0x21/0x30
Jun 18 23:16:28 amd kernel: ? __prepare_exit_to_usermode+0xe5/0x110
Jun 18 23:16:28 amd kernel: __ia32_sys_ioctl+0x10/0x12
Jun 18 23:16:28 amd kernel: do_syscall_32_irqs_on+0x3a/0xf0
Jun 18 23:16:28 amd kernel: do_int80_syscall_32+0x9/0x20
Jun 18 23:16:28 amd kernel: entry_INT80_32+0x116/0x116
Jun 18 23:16:28 amd kernel: EIP: 0xb7f1c092
Jun 18 23:16:28 amd kernel: Code: Bad RIP value.
Jun 18 23:16:28 amd kernel: EAX: ffffffda EBX: 0000000a ECX: c0406469
EDX: bf97792c
Jun 18 23:16:28 amd kernel: ESI: b730a000 EDI: c0406469 EBP: 0000000a
ESP: bf9778a4
Jun 18 23:16:28 amd kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS:
007b EFLAGS: 00200292
Jun 18 23:16:28 amd kernel: ? asm_exc_nmi+0xcc/0x2bc
Jun 18 23:16:28 amd kernel: Modules linked in:
Jun 18 23:16:28 amd kernel: CR2: 00000000f8600000
Jun 18 23:16:28 amd kernel: ---[ end trace 216ff69b99738a0d ]---
Jun 18 23:16:28 amd kernel: EIP: eb_relocate_vma+0xdee/0xf50
Jun 18 23:16:28 amd kernel: Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4
fd ff ff ff ff ff ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00
00 8b 85 d0 fd ff ff <c7> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89
43 08 e9 2c f6 ff
Jun 18 23:16:28 amd kernel: EAX: 003095c8 EBX: f8600000 ECX: 012c8000
EDX: 00000000
Jun 18 23:16:28 amd kernel: ESI: f1ad7cbc EDI: f1ad7b04 EBP: f1ad7c54
ESP: f1ad79ec
Jun 18 23:16:28 amd kernel: DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS:
0068 EFLAGS: 00210246
Jun 18 23:16:28 amd kernel: CR0: 80050033 CR2: f8600000 CR3: 31ada000
CR4: 000006b0
Jun 18 23:16:28 amd kernel: BUG: unable to handle page fault for
address: f8602038
Jun 18 23:16:28 amd kernel: #PF: supervisor write access in kernel
mode
Jun 18 23:16:28 amd kernel: #PF: error_code(0x0002) - not-present page
Jun 18 23:16:28 amd kernel: *pdpt =3D 000000002e39f001 *pde =3D
0000000000000000
Jun 18 23:16:28 amd kernel: Oops: 0002 [#2] PREEMPT SMP PTI
Jun 18 23:16:28 amd kernel: CPU: 0 PID: 2951 Comm: Xorg Tainted: G
D           5.8.0-rc1-next-20200618+ #125
Jun 18 23:16:28 amd kernel: Hardware name: LENOVO 17097HU/17097HU,
BIOS 7BETD8WW (2.19 ) 03/31/2011
Jun 18 23:16:28 amd kernel: EIP: n_tty_open+0x26/0x80
Jun 18 23:16:28 amd kernel: Code: 00 00 00 90 55 89 e5 56 53 89 c3 b8
f0 22 00 00 e8 0f 6a cb ff 85 c0 74 62 89 c6 a1 00 cd 25 c5 b9 c8 66
6b c5 ba a9 3b 11 c5 <89> 46 38 8d 86 58 22 00 00 e8 9c 66 c0 ff 8d 86
a4 22 00 00 b9 c0
Jun 18 23:16:28 amd kernel: EAX: 00024042 EBX: f3e8dc00 ECX: c56b66c8
EDX: c5113ba9
Jun 18 23:16:28 amd kernel: ESI: f8602000 EDI: 00000000 EBP: f1ad7ee4
ESP: f1ad7edc
Jun 18 23:16:28 amd kernel: DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS:
0068 EFLAGS: 00210286
Jun 18 23:16:28 amd kernel: CR0: 80050033 CR2: f8602038 CR3: 2dd5c000
CR4: 000006b0
Jun 18 23:16:28 amd kernel: Call Trace:
Jun 18 23:16:28 amd kernel: tty_ldisc_open.isra.0+0x23/0x40
Jun 18 23:16:28 amd kernel: tty_ldisc_reinit+0x99/0xe0
Jun 18 23:16:28 amd kernel: tty_ldisc_hangup+0xc4/0x1e0
Jun 18 23:16:28 amd kernel: __tty_hangup.part.0+0x13f/0x250
Jun 18 23:16:28 amd kernel: tty_vhangup_session+0x11/0x20
Jun 18 23:16:28 amd kernel: disassociate_ctty.part.0+0x34/0x230
Jun 18 23:16:28 amd kernel: disassociate_ctty+0x28/0x30
Jun 18 23:16:28 amd kernel: do_exit+0x466/0x980
Jun 18 23:16:28 amd kernel: ? __ia32_sys_ioctl+0x10/0x12
Jun 18 23:16:28 amd kernel: ? do_syscall_32_irqs_on+0x3a/0xf0
Jun 18 23:16:28 amd kernel: rewind_stack_do_exit+0x11/0x13
Jun 18 23:16:28 amd kernel: EIP: 0xb7f1c092
Jun 18 23:16:28 amd kernel: Code: Bad RIP value.
Jun 18 23:16:28 amd kernel: EAX: ffffffda EBX: 0000000a ECX: c0406469
EDX: bf97792c
Jun 18 23:16:28 amd kernel: ESI: b730a000 EDI: c0406469 EBP: 0000000a
ESP: bf9778a4
Jun 18 23:16:28 amd kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS:
007b EFLAGS: 00200292
Jun 18 23:16:28 amd kernel: ? asm_exc_nmi+0xcc/0x2bc
Jun 18 23:16:28 amd kernel: Modules linked in:
Jun 18 23:16:28 amd kernel: CR2: 00000000f8602038
Jun 18 23:16:28 amd kernel: ---[ end trace 216ff69b99738a0e ]---
Jun 18 23:16:28 amd kernel: EIP: eb_relocate_vma+0xdee/0xf50
Jun 18 23:16:28 amd kernel: Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4
fd ff ff ff ff ff ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00
00 8b 85 d0 fd ff ff <c7> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89
43 08 e9 2c f6 ff
Jun 18 23:16:28 amd kernel: EAX: 003095c8 EBX: f8600000 ECX: 012c8000
EDX: 00000000
Jun 18 23:16:28 amd kernel: ESI: f1ad7cbc EDI: f1ad7b04 EBP: f1ad7c54
ESP: f1ad79ec
Jun 18 23:16:28 amd kernel: DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS:
0068 EFLAGS: 00210246
Jun 18 23:16:28 amd kernel: CR0: 80050033 CR2: f8602038 CR3: 2dd5c000
CR4: 000006b0
Jun 18 23:16:28 amd kernel: Fixing recursive fault but reboot is
needed!
Jun 18 23:16:38 amd systemd[1]: Starting Cleanup of Temporary
Directories...
Jun 18 23:16:39 amd systemd[1]: Started Cleanup of Temporary
Directories.
=20
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl7r3MYACgkQMOfwapXb+vLVvACcCoiAKosiTOchKhhrgSGwP3wG
5McAoJiG4iQp4+urMT9+dOVrdfxCl3Xi
=fJ9e
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--

--===============0985870401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0985870401==--
