Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A46FB246C27
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 18:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64A689F31;
	Mon, 17 Aug 2020 16:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283DB89F31
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 16:11:37 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 5AC9A1C0BB6; Mon, 17 Aug 2020 18:11:33 +0200 (CEST)
Date: Mon, 17 Aug 2020 18:11:32 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org, torvalds@linux-foundation.org
Message-ID: <20200817161132.GA4711@amd>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Content-Type: multipart/mixed; boundary="===============2106665417=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2106665417==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

After about half an hour of uptime, screen starts blinking on thinkpad
x60 and machine becomes unusable.

I already reported this in -next, and now it is in mainline. It is
32-bit x86 system.


								Pavel


Aug 17 17:36:04 amd ovpn-castor[2828]: UDPv4 link local (bound):
[undef]
Aug 17 17:36:04 amd ovpn-castor[2828]: UDPv4 link remote:
[AF_INET]87.138.219.28:1194
Aug 17 17:36:23 amd kernel: BUG: unable to handle page fault for
address: f8601000
Aug 17 17:36:23 amd kernel: #PF: supervisor write access in kernel
mode
Aug 17 17:36:23 amd kernel: #PF: error_code(0x0002) - not-present page
Aug 17 17:36:23 amd kernel: *pdpt =3D 00000000318f2001 *pde =3D
0000000000000000
Aug 17 17:36:23 amd kernel: Oops: 0002 [#1] PREEMPT SMP PTI
Aug 17 17:36:23 amd kernel: CPU: 1 PID: 3004 Comm: Xorg Not tainted
5.9.0-rc1+ #86
Aug 17 17:36:23 amd kernel: Hardware name: LENOVO 17097HU/17097HU,
BIOS 7BETD8WW (2.19 ) 03/31
/2011
Aug 17 17:36:23 amd kernel: EIP: eb_relocate_vma+0xcf6/0xf20
Aug 17 17:36:23 amd kernel: Code: e9 ff f7 ff ff c7 85 c0 fd ff ff ed
ff ff ff c7 85 c4 fd ff
ff ff ff ff ff 8b 85 c0 fd ff ff e9 a5 f8 ff ff 8b 85 d0 fd ff ff <c7>
03 01 00 40 10 89 43 04
 8b 85 b4 fd ff ff 89 43 08 e9 9f f7 ff
 Aug 17 17:36:23 amd kernel: EAX: 003c306c EBX: f8601000 ECX: 00847000
 EDX: 00000000
 Aug 17 17:36:23 amd kernel: ESI: 00847000 EDI: 00000000 EBP: f1947c68
 ESP: f19479fc
 Aug 17 17:36:23 amd kernel: DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS:
 0068 EFLAGS: 00210246
 Aug 17 17:36:23 amd kernel: CR0: 80050033 CR2: f8601000 CR3: 31a1e000
 CR4: 000006b0
 Aug 17 17:36:23 amd kernel: Call Trace:
 Aug 17 17:36:23 amd kernel: ? i915_vma_pin+0xc5/0x8c0
 Aug 17 17:36:23 amd kernel: ? __mutex_unlock_slowpath+0x2b/0x280
 Aug 17 17:36:23 amd kernel: ? __active_retire+0x7e/0xd0
 Aug 17 17:36:23 amd kernel: ? mutex_unlock+0xb/0x10
 Aug 17 17:36:23 amd kernel: ? i915_vma_pin+0xc5/0x8c0
 Aug 17 17:36:23 amd kernel: ? __lock_acquire.isra.31+0x261/0x530
 Aug 17 17:36:23 amd kernel: ? eb_lookup_vmas+0x1f5/0x9e0
 Aug 17 17:36:23 amd kernel: i915_gem_do_execbuffer+0xaab/0x2780
 Aug 17 17:36:23 amd kernel: ? _raw_spin_unlock_irqrestore+0x27/0x40
 Aug 17 17:36:23 amd kernel: ? __lock_acquire.isra.31+0x261/0x530
 Aug 17 17:36:23 amd kernel: ? __lock_acquire.isra.31+0x261/0x530
 Aug 17 17:36:23 amd kernel: ? kvmalloc_node+0x69/0x70
 Aug 17 17:36:23 amd kernel: i915_gem_execbuffer2_ioctl+0xdd/0x360
 Aug 17 17:36:23 amd kernel: ? i915_gem_execbuffer_ioctl+0x2b0/0x2b0
 Aug 17 17:36:23 amd kernel: drm_ioctl_kernel+0x87/0xd0
 Aug 17 17:36:23 amd kernel: drm_ioctl+0x1f4/0x38b
 Aug 17 17:36:23 amd kernel: ? i915_gem_execbuffer_ioctl+0x2b0/0x2b0
 Aug 17 17:36:23 amd kernel: ? posix_get_monotonic_timespec+0x1c/0x90
 Aug 17 17:36:23 amd kernel: ? ktime_get_ts64+0x7a/0x1e0
 Aug 17 17:36:23 amd kernel: ? drm_ioctl_kernel+0xd0/0xd0
 Aug 17 17:36:23 amd kernel: __ia32_sys_ioctl+0x1ad/0x799
 Aug 17 17:36:23 amd kernel: ? debug_smp_processor_id+0x12/0x20
 Aug 17 17:36:23 amd kernel: ? exit_to_user_mode_prepare+0x4f/0x100
 Aug 17 17:36:23 amd kernel: do_int80_syscall_32+0x2c/0x40
 Aug 17 17:36:23 amd kernel: entry_INT80_32+0x111/0x111
 Aug 17 17:36:23 amd kernel: EIP: 0xb7fbc092
 Aug 17 17:36:23 amd kernel: Code: 00 00 00 e9 90 ff ff ff ff a3 24 00
 00 00 68 30 00 00 00 e9 80 ff ff ff ff a3 e8 ff ff ff 66 90 00 00 00
 00 00 00 00 00 cd 80 <c3> 8d b4 26 00 00 00 00 8d b6 00 00 00 00 8b
 1c 24 c3 8d b4 26 00
 Aug 17 17:36:23 amd kernel: EAX: ffffffda EBX: 0000000a ECX: c0406469
 EDX: bff0ae3c
 Aug 17 17:36:23 amd kernel: ESI: b73aa000 EDI: c0406469 EBP: 0000000a
 ESP: bff0adb4
 Aug 17 17:36:23 amd kernel: DS: 007b ES: 007b FS: 0000 GS: 0033 SS:
 007b EFLAGS: 00200296
 Aug 17 17:36:23 amd kernel: ? asm_exc_nmi+0xcc/0x2bc
 Aug 17 17:36:23 amd kernel: Modules linked in:
 Aug 17 17:36:23 amd kernel: CR2: 00000000f8601000
 Aug 17 17:36:23 amd kernel: ---[ end trace 2ca9775068bbac06 ]---
=20
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--SUOF0GtieIMvvwua
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl86rDQACgkQMOfwapXb+vK26gCgk1vGvPiX4oaOabpqNWKNdxhE
ipgAn1rhEu+JZ64Qn+ophD0RZA+rFzwX
=8BiJ
-----END PGP SIGNATURE-----

--SUOF0GtieIMvvwua--

--===============2106665417==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2106665417==--
