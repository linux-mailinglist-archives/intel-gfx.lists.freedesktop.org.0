Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D57DC3B904E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 12:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 969EF6EAAF;
	Thu,  1 Jul 2021 10:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709376EAD5
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 10:03:01 +0000 (UTC)
Received: from imap.suse.de (imap-alt.suse-dmz.suse.de [192.168.254.47])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 1C3481FF9A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 10:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625133780; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I1pM7Nl6u/n4dbDzcZf9/5lCa/uB+Lg753iNdjpDrds=;
 b=qcxpFEk3BtjyQ/8qdo/i2KMvxG5L/aVJgxzylNr4GXUMoOzvX7VrDGOMTFOBRqSlAlkjxy
 JvZuwSSFi0XJ/p1FsAwAWbbIbubqyFegrooYY1BEMnpfuoQVbX3yMdEZCmkGHLp9KJUgmc
 tGGp9yMa05cAJQsieOH4bMP06gYcOdw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625133780;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I1pM7Nl6u/n4dbDzcZf9/5lCa/uB+Lg753iNdjpDrds=;
 b=O+NzUTtZbFB8G5qbEpZqrBld2jiFzI7Y71Kt/wzdMYkqtcDUZIU6JXD2HGHlnp6SF7nwYX
 Hi5YkCIRFinye8DQ==
Received: from imap3-int (imap-alt.suse-dmz.suse.de [192.168.254.47])
 by imap.suse.de (Postfix) with ESMTP id F3AA411CC0
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1625133780; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I1pM7Nl6u/n4dbDzcZf9/5lCa/uB+Lg753iNdjpDrds=;
 b=qcxpFEk3BtjyQ/8qdo/i2KMvxG5L/aVJgxzylNr4GXUMoOzvX7VrDGOMTFOBRqSlAlkjxy
 JvZuwSSFi0XJ/p1FsAwAWbbIbubqyFegrooYY1BEMnpfuoQVbX3yMdEZCmkGHLp9KJUgmc
 tGGp9yMa05cAJQsieOH4bMP06gYcOdw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1625133780;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I1pM7Nl6u/n4dbDzcZf9/5lCa/uB+Lg753iNdjpDrds=;
 b=O+NzUTtZbFB8G5qbEpZqrBld2jiFzI7Y71Kt/wzdMYkqtcDUZIU6JXD2HGHlnp6SF7nwYX
 Hi5YkCIRFinye8DQ==
Received: from director2.suse.de ([192.168.254.72]) by imap3-int with ESMTPSA
 id ao8qOtOS3WBkSQAALh3uQQ (envelope-from <tzimmermann@suse.de>)
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Jul 2021 10:02:59 +0000
To: intel-gfx@lists.freedesktop.org
References: <20210701085833.26566-1-tzimmermann@suse.de>
 <162513261001.15055.8980583489371133638@emeril.freedesktop.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <1f3c0068-a4be-4787-c2b2-27c3c3bdd37f@suse.de>
Date: Thu, 1 Jul 2021 12:02:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <162513261001.15055.8980583489371133638@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_IRQ_fixes_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1649664986=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1649664986==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="pb268V0DFuXOwdipwYVCJXtRhla3Nlbq4"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--pb268V0DFuXOwdipwYVCJXtRhla3Nlbq4
Content-Type: multipart/mixed; boundary="F7nD7EUkJqSAA4CeclU0STajgROSJQlkN";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <1f3c0068-a4be-4787-c2b2-27c3c3bdd37f@suse.de>
Subject: =?UTF-8?B?UmU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBJ?=
 =?UTF-8?Q?RQ_fixes_=28rev3=29?=
References: <20210701085833.26566-1-tzimmermann@suse.de>
 <162513261001.15055.8980583489371133638@emeril.freedesktop.org>
In-Reply-To: <162513261001.15055.8980583489371133638@emeril.freedesktop.org>

--F7nD7EUkJqSAA4CeclU0STajgROSJQlkN
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



Am 01.07.21 um 11:43 schrieb Patchwork:
> *Patch Details*
> *Series:*	drm/i915: IRQ fixes (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/92053/=20
> <https://patchwork.freedesktop.org/series/92053/>
> *State:*	failure
> *Details:*=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/index.html=20
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/index.html>
>=20
>=20
>   CI Bug Log - changes from CI_DRM_10296 -> Patchwork_20502
>=20
>=20
>     Summary
>=20
> *FAILURE*
>=20
> Serious unknown changes coming with Patchwork_20502 absolutely need to =
be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20502, please notify your bug team to allow the=
m
> to document this new failure mode, which will reduce false positives in=
 CI.
>=20
> External URL:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/index.html
>=20
>=20
>     Possible new issues
>=20
> Here are the unknown changes that may have been introduced in=20
> Patchwork_20502:
>=20
>=20
>       IGT changes
>=20
>=20
>         Possible regressions
>=20
>   * igt@i915_selftest@live@workarounds:
>       o fi-ivb-3770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-ivb-3=
770/igt@i915_selftest@live@workarounds.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-iv=
b-3770/igt@i915_selftest@live@workarounds.html>

This looks like it was introduced by v4. v3 didn't have this problem

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-ivb-3770/igt@=
i915_selftest@live@workarounds.html#dmesg-warnings249

>=20
>=20
>     Known issues
>=20
> Here are the changes found in Patchwork_20502 that come from known issu=
es:
>=20
>=20
>       IGT changes
>=20
>=20
>         Issues hit
>=20
>   *
>=20
>     igt@amdgpu/amd_cs_nop@sync-fork-compute0:
>=20
>       o fi-snb-2600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-sn=
b-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>) +17
>         similar issues
>   *
>=20
>     igt@i915_selftest@live@workarounds:
>=20
>       o fi-hsw-4770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-hsw-4=
770/igt@i915_selftest@live@workarounds.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-hs=
w-4770/igt@i915_selftest@live@workarounds.html>
>         (i915#2927 <https://gitlab.freedesktop.org/drm/intel/issues/292=
7>)
>   *
>=20
>     igt@runner@aborted:
>=20
>       o
>=20
>         fi-hsw-4770: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-hs=
w-4770/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> /
>         i915#1436 <https://gitlab.freedesktop.org/drm/intel/issues/1436=
>
>         / i915#2505 <https://gitlab.freedesktop.org/drm/intel/issues/25=
05>)
>=20
>       o
>=20
>         fi-ivb-3770: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-iv=
b-3770/igt@runner@aborted.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271>)
>=20
>=20
>         Possible fixes
>=20
>   *
>=20
>     igt@i915_module_load@reload:
>=20
>       o fi-kbl-soraka: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-kbl-s=
oraka/igt@i915_module_load@reload.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS=

>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-kb=
l-soraka/igt@i915_module_load@reload.html>
>   *
>=20
>     igt@i915_selftest@live@hangcheck:
>=20
>       o fi-snb-2600: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-snb-2=
600/igt@i915_selftest@live@hangcheck.html>
>         (i915#2782
>         <https://gitlab.freedesktop.org/drm/intel/issues/2782>) -> PASS=

>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-sn=
b-2600/igt@i915_selftest@live@hangcheck.html>
>   *
>=20
>     igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1:
>=20
>       o {fi-tgl-dsi}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10296/fi-tgl-d=
si/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS=

>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20502/fi-tg=
l-dsi/igt@kms_flip@basic-flip-vs-wf_vblank@a-dsi1.html>
>=20
> {name}: This element is suppressed. This means it is ignored when compu=
ting
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>=20
>=20
>     Participating hosts (37 -> 35)
>=20
> Missing (2): fi-bsw-cyan fi-bdw-samus
>=20
>=20
>     Build changes
>=20
>   * Linux: CI_DRM_10296 -> Patchwork_20502
>=20
> CI-20190529: 20190529
> CI_DRM_10296: 1ad092a7879a55938159b58a5b662370cab95ec8 @=20
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6125: 5bb62cb290fa32777934de4b39e107ccd282f7e8 @=20
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_20502: 21c6e6f45c89cd7f4f38e9a6ef4992b6a5204031 @=20
> git://anongit.freedesktop.org/gfx-ci/linux
>=20
> =3D=3D Linux commits =3D=3D
>=20
> 21c6e6f45c89 drm/i915: Drop all references to DRM IRQ midlayer
> 1b2c2d630094 drm/i915: Use the correct IRQ during resume
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--F7nD7EUkJqSAA4CeclU0STajgROSJQlkN--

--pb268V0DFuXOwdipwYVCJXtRhla3Nlbq4
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEExndm/fpuMUdwYFFolh/E3EQov+AFAmDdktMFAwAAAAAACgkQlh/E3EQov+BO
xRAAvn6ttz3QG/LWwQzRzOg1JmkOyZhLmqJZEHvvmMYdnQkgMNP19qxZo0CjE8seKTSlApqMi0v6
m+yuBdyNfopY6xh3GnkXvd7+p6IdO9KLn+UTygZQBHaE9GmI6fIrg4DMorMybwWrgEq/mOO4koKL
CnYzpQEdmAK4oiCdw+yihgL6VA3IquV3+ntzlynwFbu3dIiuGiXlVDUvhBsnuAgZZRu7e9wVmpCj
J7hY9Ml5lrFYudaO2VlaCkyKHaZ85c0SkUx4vE6akWlwZ/PtDuyxfX+5zTJn2ai/lew5VL1c2aOP
2Gfeq2Co8fPTCnCD0XVdG1knxhUiDpOLpdKugMONUV0p2TtxNLOXm0wgvwoMPTFYJBJgBS4MG6Y5
HQjYcjQB2HqZQzENfD29FUEC2SK9JiykZQ4OkGQcHEHh+ooyuoU7VkSP64VGOR2pk50Kh4OYAw5h
Hhx5+J2w9O+JEVxs+d1QXWHlZPpaCDElANwGi4rRg28Iqi/G4vkwD1xZXt6aexsfXLO0TIzJoT8K
KCQ1OxlneDEdwjIFSYRN/OPEFjgoclk7gnrHprKe1Ro6n3eApVWSlmLX8PmDddbujqJ1rcxnvu3g
vV6qDWZcsr/CIdqrG9uP2is4sJvjFrT4S1SEEpsbUMOBojrK6qSg6iztWORhEkBiqpsByTE7WnNj
j90=
=i/wC
-----END PGP SIGNATURE-----

--pb268V0DFuXOwdipwYVCJXtRhla3Nlbq4--

--===============1649664986==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1649664986==--
