Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 671597A64CE
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 15:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1636E10E0CC;
	Tue, 19 Sep 2023 13:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 17806 seconds by postgrey-1.36 at gabe;
 Tue, 19 Sep 2023 13:23:46 UTC
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AAB410E0CC;
 Tue, 19 Sep 2023 13:23:46 +0000 (UTC)
Received: from spock.localnet (unknown [94.142.239.106])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 7E91D1505BC0;
 Tue, 19 Sep 2023 15:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1695129822;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Tq3JgcNh99UaG2q9/1V/2rlmDp+hgSkFOwAuTwify40=;
 b=EFQn3dLIjGw2NfMY0Mw+zSYng4/2xEivklVs1aPyZtufAL0Lq4Nqiyi6HpVhdS7itx/CEb
 yGDsRTNNyQYfqfPlXZMoj8OyQJa/NAyjd66+SF4pLuPq6x1A6I4tBCO2EoTGAuKCesF2dv
 O+DFMhteDnsG9m5MrIY6EwOyoYqC7nA=
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org
Date: Tue, 19 Sep 2023 15:23:28 +0200
Message-ID: <2612319.ElGaqSPkdT@natalenko.name>
In-Reply-To: <6287208.lOV4Wx5bFT@natalenko.name>
References: <4857570.31r3eYUQgx@natalenko.name>
 <6287208.lOV4Wx5bFT@natalenko.name>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5147933.GXAFRqVoOG";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
Subject: Re: [Intel-gfx] [REGRESSION] [BISECTED] Panic in
 gen8_ggtt_insert_entries() with v6.5
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 Bagas Sanjaya <bagasdotme@gmail.com>, David Airlie <airlied@gmail.com>,
 Linux Regressions <regressions@lists.linux.dev>,
 Matthew Wilcox <willy@infradead.org>, Matthew Auld <matthew.auld@intel.com>,
 Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Nathan Chancellor <nathan@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Andrew Morton <akpm@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--nextPart5147933.GXAFRqVoOG
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"; protected-headers="v1"
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-kernel@vger.kernel.org
Date: Tue, 19 Sep 2023 15:23:28 +0200
Message-ID: <2612319.ElGaqSPkdT@natalenko.name>
In-Reply-To: <6287208.lOV4Wx5bFT@natalenko.name>
MIME-Version: 1.0

/cc Bagas as well (see below).

On =C3=BAter=C3=BD 19. z=C3=A1=C5=99=C3=AD 2023 10:26:42 CEST Oleksandr Nat=
alenko wrote:
> /cc Matthew Wilcox and Andrew Morton because of folios (please see below).
>=20
> On sobota 2. z=C3=A1=C5=99=C3=AD 2023 18:14:12 CEST Oleksandr Natalenko w=
rote:
> > Hello.
> >=20
> > Since v6.5 kernel the following HW:
> >=20
> > * Lenovo T460s laptop with Skylake GT2 [HD Graphics 520] (rev 07)
> > * Lenovo T490s laptop with WhiskeyLake-U GT2 [UHD Graphics 620] (rev 02)
> >=20
> > is affected by the following crash once KDE on either X11 or Wayland is=
 started:
> >=20
> > i915 0000:00:02.0: enabling device (0006 -> 0007)
> > i915 0000:00:02.0: vgaarb: deactivate vga console
> > i915 0000:00:02.0: vgaarb: changed VGA decodes: olddecodes=3Dio+mem,dec=
odes=3Dio+mem:owns=3Dmem
> > i915 0000:00:02.0: [drm] Finished loading DMC firmware i915/skl_dmc_ver=
1_27.bin (v1.27)
> > [drm] Initialized i915 1.6.0 20201103 for 0000:00:02.0 on minor 1
> > fbcon: i915drmfb (fb0) is primary device
> > i915 0000:00:02.0: [drm] fb0: i915drmfb frame buffer device
> > =E2=80=A6
> > memfd_create() without MFD_EXEC nor MFD_NOEXEC_SEAL, pid=3D674 'kwin_wa=
yland'
> > BUG: unable to handle page fault for address: ffffb422c2800000
> > #PF: supervisor write access in kernel mode
> > #PF: error_code(0x0002) - not-present page
> > PGD 100000067 P4D 100000067 PUD 1001df067 PMD 10d1cf067 PTE 0
> > Oops: 0002 [#1] PREEMPT SMP PTI
> > CPU: 1 PID: 674 Comm: kwin_wayland Not tainted 6.5.0-pf1 #1 a6c58ff41a7=
b8bb16a19f5af9e0e9bce20f9f38d
> > Hardware name: LENOVO 20FAS2BM0F/20FAS2BM0F, BIOS N1CET90W (1.58 ) 11/1=
5/2022
> > RIP: 0010:gen8_ggtt_insert_entries+0xc2/0x140 [i915]
> > =E2=80=A6
> > Call Trace:
> >  <TASK>
> >  intel_ggtt_bind_vma+0x3e/0x60 [i915 a83fdc6539431252dba13053979a8b680a=
f86836]
> >  i915_vma_bind+0x216/0x4b0 [i915 a83fdc6539431252dba13053979a8b680af868=
36]
> >  i915_vma_pin_ww+0x405/0xa80 [i915 a83fdc6539431252dba13053979a8b680af8=
6836]
> >  __i915_ggtt_pin+0x5a/0x130 [i915 a83fdc6539431252dba13053979a8b680af86=
836]
> >  i915_ggtt_pin+0x78/0x1f0 [i915 a83fdc6539431252dba13053979a8b680af8683=
6]
> >  __intel_context_do_pin_ww+0x312/0x700 [i915 a83fdc6539431252dba1305397=
9a8b680af86836]
> >  i915_gem_do_execbuffer+0xfc6/0x2720 [i915 a83fdc6539431252dba13053979a=
8b680af86836]
> >  i915_gem_execbuffer2_ioctl+0x111/0x260 [i915 a83fdc6539431252dba130539=
79a8b680af86836]
> >  drm_ioctl_kernel+0xca/0x170
> >  drm_ioctl+0x30f/0x580
> >  __x64_sys_ioctl+0x94/0xd0
> >  do_syscall_64+0x5d/0x90
> >  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
> > =E2=80=A6
> > note: kwin_wayland[674] exited with irqs disabled
> >=20
> > RIP seems to translate into this:
> >=20
> > $ scripts/faddr2line drivers/gpu/drm/i915/gt/intel_ggtt.o gen8_ggtt_ins=
ert_entries+0xc2
> > gen8_ggtt_insert_entries+0xc2/0x150:
> > writeq at /home/pf/work/devel/own/pf-kernel/linux/./arch/x86/include/as=
m/io.h:99
> > (inlined by) gen8_set_pte at /home/pf/work/devel/own/pf-kernel/linux/dr=
ivers/gpu/drm/i915/gt/intel_ggtt.c:257
> > (inlined by) gen8_ggtt_insert_entries at /home/pf/work/devel/own/pf-ker=
nel/linux/drivers/gpu/drm/i915/gt/intel_ggtt.c:300
> >=20
> > Probably, recent PTE-related changes are relevant:
> >=20
> > $ git log --oneline --no-merges v6.4..v6.5 -- drivers/gpu/drm/i915/gt/i=
ntel_ggtt.c
> > 3532e75dfadcf drm/i915/uc: perma-pin firmwares
> > 4722e2ebe6f21 drm/i915/gt: Fix second parameter type of pre-gen8 pte_en=
code callbacks
> > 9275277d53248 drm/i915: use pat_index instead of cache_level
> > 5e352e32aec23 drm/i915: preparation for using PAT index
> > 341ad0e8e2542 drm/i915/mtl: Add PTE encode function
> >=20
> > Also note Lenovo T14s laptop with TigerLake-LP GT2 [Iris Xe Graphics] (=
rev 01) is not affected by this issue.
> >=20
> > Full dmesg with DRM debug enabled is available in the bugreport I've re=
ported earlier [1]. I'm sending this email to make the issue more visible.
> >=20
> > Please help.
> >=20
> > Thanks.
> >=20
> > [1] https://gitlab.freedesktop.org/drm/intel/-/issues/9256
>=20
> Matthew,
>=20
> Andrzej asked me to try to revert commits 0b62af28f249, e0b72c14d8dc and =
1e0877d58b1e, and reverting those fixed the i915 crash for me. The e0b72c14=
d8dc and 1e0877d58b1e commits look like just prerequisites, so I assume 0b6=
2af28f249 ("i915: convert shmem_sg_free_table() to use a folio_batch") is t=
he culprit here.
>=20
> Could you please check this?
>=20
> Our conversation with Andrzej is available at drm-intel GitLab [1].
>=20
> Thanks.
>=20
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/9256

Bagas,

would you mind adding this to the regression tracker please?

Thanks.

=2D-=20
Oleksandr Natalenko (post-factum)
--nextPart5147933.GXAFRqVoOG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEZUOOw5ESFLHZZtOKil/iNcg8M0sFAmUJoNAACgkQil/iNcg8
M0vh4xAAt1VYPW8Fr0UHrGvXeZmvGqtxzOHB2BsshvL666iQn9vyVPPz0DyOPLa+
MlrXGBuvObmjsTyYF/bPlfFACWcP0Sx3AVFD8BSJ9spDNL7DdUPEpYLcY2Q0UZTr
JFJ/BcASjOr7LIUIG5hsOJY7cWIj1l796QtsSjRXr5QqEOzoqm0c24B4VTPbNyDI
TEsqg3sy52OvDqvcn6EcSwltn3hrxxIUCF6bxgxselWwwmUs6NosvoC4g+rQRCaX
wGB5d8DTDTt8TBK3Ye/p4l1WgnCjoWexETPOF9j46ZdsxVDYZHP7ZzFlMuZ4SeEu
M3mew5MFlvCxJkVCeIzn7M35PiAr2fkHCpHpEdH0xdhNSufGk01NtCBBBeNlqYi4
xBM9cYtNGT1lUw+74XAYnkiHwlYQVYVgAV9uW2Op80zX2NYmEpt9afQfL3nmqxk/
1S/1+x7eszn7PDW8jxzSsvZSCVYEglUHbfOT5/fp81VKh0Q9eLWrU6wOM8CHcDSe
ff3hXUH8MsTHTIgYX7nzhmsiVLu5K4j3S/xIJMFWyg2G8Gs8irdfkEPQw2P0f8+5
1zAG7WMsb3CDhTOAdfmWQ5GtmxKjExbt850Ujoei5mXtG55kxLztzHEylsw5UH5p
rBmQK2ApIWTLUZF7yV2Md0pT7iKZ9Y2dBseeuW0EH19nkcmEy3E=
=GhwR
-----END PGP SIGNATURE-----

--nextPart5147933.GXAFRqVoOG--



