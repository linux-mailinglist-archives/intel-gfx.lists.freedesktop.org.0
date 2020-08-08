Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7752423F936
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Aug 2020 23:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C354F6E26C;
	Sat,  8 Aug 2020 21:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz [46.255.230.98])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17EA6E26C
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Aug 2020 21:47:38 +0000 (UTC)
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 2D2E81C0BD9; Sat,  8 Aug 2020 23:47:34 +0200 (CEST)
Date: Sat, 8 Aug 2020 23:47:33 +0200
From: Pavel Machek <pavel@ucw.cz>
To: kernel list <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 intel-gfx@lists.freedesktop.org
Message-ID: <20200808214733.GA25436@duo.ucw.cz>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-gfx] -next on 32-bit thinkpad x60: blinking screen,
 intel DRM responsible?
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
Content-Type: multipart/mixed; boundary="===============0052120151=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0052120151==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Next has been unusable for a while, but today I got dmesg.

Screen is blinking, machine is very unhappy, and ssh is slow/hangs,
but I got this:

This is recurring patern, usually machine dies like this within 30
minutes of boot.


[  455.019838] perf: interrupt took too long (2509 > 2500), lowering kernel=
=2Eperf_event_max_sample_rate to 79500
[  752.720607] perf: interrupt took too long (3153 > 3136), lowering kernel=
=2Eperf_event_max_sample_rate to 63250
[ 1235.055394] BUG: unable to handle page fault for address: f8801000
[ 1235.055408] #PF: supervisor write access in kernel mode
[ 1235.055414] #PF: error_code(0x0002) - not-present page
[ 1235.055420] *pdpt =3D 0000000031ff2001 *pde =3D 0000000000000000=20
[ 1235.055436] Oops: 0002 [#1] PREEMPT SMP PTI
[ 1235.055446] CPU: 1 PID: 3013 Comm: Xorg Not tainted 5.8.0-next-20200807+=
 #132
[ 1235.055453] Hardware name: LENOVO 17097HU/17097HU, BIOS 7BETD8WW (2.19 )=
 03/31/2011
[ 1235.055466] EIP: eb_relocate_vma+0xdee/0xf50
[ 1235.055475] Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4 fd ff ff ff ff ff =
ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00 00 8b 85 d0 fd ff ff <c7=
> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89 43 08 e9 2c f6 ff
[ 1235.055483] EAX: 009a706c EBX: f8801000 ECX: 0034e000 EDX: 00000000
[ 1235.055490] ESI: f1fd5cd4 EDI: f1fd5a5c EBP: f1fd5c6c ESP: f1fd5a04
[ 1235.055498] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00210246
[ 1235.055505] CR0: 80050033 CR2: f8801000 CR3: 31856000 CR4: 000006b0
[ 1235.055511] Call Trace:
[ 1235.055529]  ? i915_vma_pin+0x2f4/0x850
[ 1235.055540]  ? __mutex_unlock_slowpath+0x2b/0x2c0
[ 1235.055549]  ? __active_retire+0x7e/0xd0
[ 1235.055557]  ? mutex_unlock+0xb/0x10
[ 1235.055564]  ? i915_vma_pin+0x2f4/0x850
[ 1235.055573]  ? eb_lookup_vmas+0x272/0x9f0
[ 1235.055581]  i915_gem_do_execbuffer+0xa7b/0x2730
[ 1235.055595]  ? intel_runtime_pm_put_unchecked+0xd/0x10
[ 1235.055602]  ? i915_gem_gtt_pwrite_fast+0xf6/0x520
[ 1235.055613]  ? __lock_acquire.isra.0+0x223/0x500
[ 1235.055624]  ? cache_alloc_debugcheck_after+0x151/0x180
[ 1235.055632]  ? kvmalloc_node+0x69/0x80
[ 1235.055639]  ? __kmalloc+0x92/0x120
[ 1235.055646]  ? kvmalloc_node+0x69/0x80
[ 1235.055654]  i915_gem_execbuffer2_ioctl+0xdd/0x350
[ 1235.055662]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[ 1235.055671]  drm_ioctl_kernel+0x91/0xe0
[ 1235.055679]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[ 1235.055686]  drm_ioctl+0x1fd/0x371
[ 1235.055694]  ? i915_gem_execbuffer_ioctl+0x2a0/0x2a0
[ 1235.055706]  ? posix_get_monotonic_timespec+0x1d/0x80
[ 1235.055714]  ? drm_ioctl_kernel+0xe0/0xe0
[ 1235.055723]  __ia32_sys_ioctl+0x14b/0x7c6
[ 1235.055732]  ? _copy_to_user+0x21/0x30
[ 1235.055742]  ? exit_to_user_mode_prepare+0x53/0x100
[ 1235.055752]  do_int80_syscall_32+0x2c/0x40
[ 1235.055761]  entry_INT80_32+0x116/0x116
[ 1235.055768] EIP: 0xb7f08092
[ 1235.055776] Code: 00 00 00 e9 90 ff ff ff ff a3 24 00 00 00 68 30 00 00 =
00 e9 80 ff ff ff ff a3 e8 ff ff ff 66 90 00 00 00 00 00 00 00 00 cd 80 <c3=
> 8d b4 26 00 00 00 00 8d b6 00 00 00 00 8b 1c 24 c3 8d b4 26 00
[ 1235.055784] EAX: ffffffda EBX: 0000000a ECX: c0406469 EDX: bfe9cd4c
[ 1235.055791] ESI: b72f6000 EDI: c0406469 EBP: 0000000a ESP: bfe9ccc4
[ 1235.055798] DS: 007b ES: 007b FS: 0000 GS: 0033 SS: 007b EFLAGS: 00200292
[ 1235.055808]  ? asm_exc_nmi+0xcc/0x2bc
[ 1235.055813] Modules linked in:
[ 1235.055823] CR2: 00000000f8801000
[ 1235.055833] ---[ end trace f487886b697d29e8 ]---
[ 1235.055840] EIP: eb_relocate_vma+0xdee/0xf50
[ 1235.055848] Code: 85 c0 fd ff ff ed ff ff ff c7 85 c4 fd ff ff ff ff ff =
ff 8b 85 c0 fd ff ff e9 33 f7 ff ff 8d b6 00 00 00 00 8b 85 d0 fd ff ff <c7=
> 03 01 00 40 10 89 43 04 8b 85 dc fd ff ff 89 43 08 e9 2c f6 ff
[ 1235.055855] EAX: 009a706c EBX: f8801000 ECX: 0034e000 EDX: 00000000
[ 1235.055862] ESI: f1fd5cd4 EDI: f1fd5a5c EBP: f1fd5c6c ESP: f1fd5a04
[ 1235.055870] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS: 00210246
[ 1235.055877] CR0: 80050033 CR2: f8801000 CR3: 31856000 CR4: 000006b0
[ 1235.062533] BUG: unable to handle page fault for address: f8803038


--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXy8ddQAKCRAw5/Bqldv6
8teVAJ4gtPJwn/k0a6WPRONPwwEifAJZqgCffRvyBv+ciHbaaFjYXOw/fM26ECo=
=oyKA
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--

--===============0052120151==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0052120151==--
