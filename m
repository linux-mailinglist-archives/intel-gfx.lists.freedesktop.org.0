Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9089473A5C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 02:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DA410E876;
	Tue, 14 Dec 2021 01:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE76D10E876
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 01:41:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 29A36B81221
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 01:41:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4152DC34600
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 01:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639446077;
 bh=sIlqNUIFvyHVft6GE4PbHaFa0tVqGv1fuUPEThNUqgk=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=Br686mWCUGtqky3btQS3A9FvC35wCjdwX4xuDpF8RFAT3LO7pMQoNY1NJghOCKFUJ
 GV9L7QUqa/6Lq61lJJ7aH11yEEyrTuKdHZpCv2y2xcGLHcY4uNjxPC/jLUFWkX0cwv
 tyO23jtOIGtdm8jZwKoaPUoHXRaR8PXMhk5aqrxqVUlLVL6DbcmNW4xWoUJYgbKkha
 5cT9+KJrnu6bSe9ZjKyIC0WsZaPsZgVK0HcGmkx2ZGGORMC1fCEEBy9QZgqfN6qXiP
 n0C+QJ5g2gQTQARkcCLRo9ZJsfbn5TzfdPb4X5lLLFLlkYbj1sX9+HmNSag9ez7AgW
 heC3leUI1hU+Q==
Date: Tue, 14 Dec 2021 01:41:13 +0000
From: Mark Brown <broonie@kernel.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ybf2OaeMtARJndDg@sirena.org.uk>
References: <20211213170753.3680209-1-broonie@kernel.org>
 <163944579366.24609.8486942156265418559@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="8D0ckzzKa8cRA2Y6"
Content-Disposition: inline
In-Reply-To: <163944579366.24609.8486942156265418559@emeril.freedesktop.org>
X-Cookie: No solicitors.
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_implicit_use_of_struct_pci=5Fdev?=
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


--8D0ckzzKa8cRA2Y6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 14, 2021 at 01:36:33AM -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Fix implicit use of struct pci_dev
> URL   : https://patchwork.freedesktop.org/series/97975/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_10995_full -> Patchwork_21841_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **FAILURE**
>=20
>   Serious unknown changes coming with Patchwork_21841_full absolutely nee=
d to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21841_full, please notify your bug team to allo=
w them
>   to document this new failure mode, which will reduce false positives in=
 CI.

This report appears to be a false positive - it is difficult to see how
the change could have triggered anything in the tests and the reported
change looks like an administrative change with the infra.

>=20
>  =20
>=20
> Participating hosts (10 -> 10)
> ------------------------------
>=20
>   No changes in participating hosts
>=20
> Possible new issues
> -------------------
>=20
>   Here are the unknown changes that may have been introduced in Patchwork=
_21841_full:
>=20
> ### IGT changes ###
>=20
> #### Possible regressions ####
>=20
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-tglb:         NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-tg=
lb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>=20
>  =20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_21841_full that come from known=
 issues:
>=20
> ### CI changes ###
>=20
> #### Possible fixes ####
>=20
>   * boot:
>     - shard-apl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [P=
ASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12=
], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], =
[PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PA=
SS][25], [PASS][26]) ([i915#4386]) -> ([PASS][27], [PASS][28], [PASS][29], =
[PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PA=
SS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS]=
[42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48=
], [PASS][49], [PASS][50], [PASS][51])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/=
boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/=
boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/=
boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/=
boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/=
boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/=
boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/=
boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/=
boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6=
/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6=
/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6=
/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4=
/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4=
/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4=
/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3=
/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3=
/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3=
/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3=
/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2=
/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2=
/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2=
/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1=
/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1=
/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1=
/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1=
/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl3/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl6/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl7/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl7/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl7/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl8/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl8/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl8/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl8/boot.html
>=20
>  =20
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@gem_ctx_isolation@preservation-s3@vecs0:
>     - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#180]) +5 =
similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl7=
/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl6/igt@gem_ctx_isolation@preservation-s3@vecs0.html
>=20
>   * igt@gem_exec_create@forked@smem:
>     - shard-glk:          [PASS][54] -> [DMESG-WARN][55] ([i915#118]) +1 =
similar issue
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk1=
/igt@gem_exec_create@forked@smem.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-g=
lk8/igt@gem_exec_create@forked@smem.html
>=20
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][56] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl6=
/igt@gem_exec_fair@basic-none@vcs1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl4/igt@gem_exec_fair@basic-none@vcs1.html
>=20
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb=
1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-i=
clb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-glk:          NOTRUN -> [FAIL][61] ([i915#2842])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-g=
lk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-apl:          [PASS][62] -> [FAIL][63] ([i915#2842])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1=
/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#2842])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk7=
/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-g=
lk6/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-iclb:         [PASS][66] -> [FAIL][67] ([i915#2849])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb=
5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-i=
clb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>=20
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2190=
])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl6/igt@gem_huc_copy@huc-copy.html
>=20
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613=
])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-s=
kl10/igt@gem_lmem_swapping@parallel-multi.html
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#4613]) +1 similar i=
ssue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb6/igt@gem_lmem_swapping@parallel-multi.html
>=20
>   * igt@gem_lmem_swapping@random:
>     - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#4613=
])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@gem_lmem_swapping@random.html
>=20
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#4613=
]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/igt@gem_lmem_swapping@smem-oom.html
>=20
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][73] ([i915#2658])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@gem_pwrite@basic-exhaustion.html
>=20
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#4270])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-i=
clb3/igt@gem_pxp@fail-invalid-protected-context.html
>=20
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#2856])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@gen9_exec_parse@batch-without-end.html
>=20
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][76] -> [FAIL][77] ([i915#454])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb=
8/igt@i915_pm_dc@dc6-psr.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-i=
clb3/igt@i915_pm_dc@dc6-psr.html
>=20
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#4281])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@i915_pm_dc@dc9-dpms.html
>     - shard-iclb:         [PASS][79] -> [SKIP][80] ([i915#4281])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb=
8/igt@i915_pm_dc@dc9-dpms.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-i=
clb3/igt@i915_pm_dc@dc9-dpms.html
>=20
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777=
])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>=20
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][82] ([i915#3743])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-s=
kl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>=20
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][83] ([fdo#111614]) +1 similar =
issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>=20
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#111615])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
>=20
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777=
]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>=20
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886=
]) +3 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
>=20
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886=
]) +7 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>=20
>   * igt@kms_ccs@pipe-b-bad-pixel-format-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111615] / [i915#3689=
]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb6/igt@kms_ccs@pipe-b-bad-pixel-format-yf_tiled_ccs.html
>=20
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#3689])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html
>=20
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689] / [i915#3886])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>=20
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886=
])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-s=
kl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
>=20
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +82 similar=
 issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html
>=20
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [fdo#11182=
7]) +5 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-k=
bl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
>=20
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109284] / [fdo#11182=
7]) +3 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
>=20
>   * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
>     - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#11182=
7]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-s=
kl9/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html
>=20
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-glk:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#11182=
7]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-g=
lk1/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
>=20
>   * igt@kms_color_chamelium@pipe-c-ctm-max:
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#11182=
7]) +12 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-a=
pl2/igt@kms_color_chamelium@pipe-c-ctm-max.html
>=20
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#3319])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-t=
glb1/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
>=20
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
>     - shard-glk:          NOTRUN -> [SKIP][99] ([fdo#109271]) +12 similar=
 issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-g=
lk2/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html
>=20
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-skl:          [PASS][100] -> [INCOMPLETE][101] ([i915#300])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl=
4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>=20
>   * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][102] ([i915#3359])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html
>=20
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109279] / [i915#335=
9])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html
>=20
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([fdo#111825]) +11 simila=
r issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>=20
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [PASS][105] -> [INCOMPLETE][106] ([i915#180] / =
[i915#636])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl=
2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
>=20
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][107] -> [DMESG-WARN][108] ([i915#180])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl=
8/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
>=20
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1:
>     - shard-kbl:          [PASS][109] -> [FAIL][110] ([i915#2122])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl=
6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
kbl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-dp1.html
>=20
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [PASS][111] -> [FAIL][112] ([i915#2122])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl=
6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>=20
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-iclb:         [PASS][113] -> [SKIP][114] ([i915#3701])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-icl=
b5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>=20
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#267=
2])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
>=20
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +41 simila=
r issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl9/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
>=20
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271]) +144 simil=
ar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
apl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
>=20
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][118] ([fdo#109280]) +1 similar=
 issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
iclb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.=
html
>=20
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][119] -> [FAIL][120] ([i915#1188])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl=
10/igt@kms_hdr@bpc-switch-dpms.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl1/igt@kms_hdr@bpc-switch-dpms.html
>=20
>   * igt@kms_hdr@static-swap:
>     - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#1187])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@kms_hdr@static-swap.html
>=20
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#533=
]) +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
apl2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
>=20
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109278]) +1 similar=
 issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
iclb3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
>     - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#533=
])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl6/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][125] ([fdo#108145] / [i915#265=
])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
glk1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][126] ([fdo#108145] / [i915#265=
])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][127] ([i915#265])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][128] ([fdo#108145] / [i915#265=
]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][129] -> [FAIL][130] ([fdo#108145] / [i91=
5#265])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl=
1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>=20
>   * igt@kms_plane_lowres@pipe-c-tiling-y:
>     - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#3536])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@kms_plane_lowres@pipe-c-tiling-y.html
>=20
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#658=
])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
kbl2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>=20
>   * igt@kms_psr@psr2_basic:
>     - shard-tglb:         NOTRUN -> [FAIL][133] ([i915#132] / [i915#3467])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@kms_psr@psr2_basic.html
>=20
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][134] -> [SKIP][135] ([fdo#109441]) +2 si=
milar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-icl=
b2/igt@kms_psr@psr2_cursor_render.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
iclb3/igt@kms_psr@psr2_cursor_render.html
>=20
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][136] -> [FAIL][137] ([i915#31])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk=
7/igt@kms_setmode@basic.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
glk9/igt@kms_setmode@basic.html
>=20
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#109309])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@kms_tv_load_detect@load-detect.html
>=20
>   * igt@nouveau_crc@pipe-b-ctx-flip-detection:
>     - shard-tglb:         NOTRUN -> [SKIP][139] ([i915#2530]) +1 similar =
issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb1/igt@nouveau_crc@pipe-b-ctx-flip-detection.html
>=20
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#299=
4]) +2 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl10/igt@sysfs_clients@fair-0.html
>     - shard-tglb:         NOTRUN -> [SKIP][141] ([i915#2994]) +1 similar =
issue
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb6/igt@sysfs_clients@fair-0.html
>=20
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#299=
4]) +2 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
apl3/igt@sysfs_clients@fair-7.html
>=20
>   * igt@sysfs_clients@recycle:
>     - shard-kbl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#299=
4])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
kbl2/igt@sysfs_clients@recycle.html
>=20
>  =20
> #### Possible fixes ####
>=20
>   * igt@drm_read@fault-buffer:
>     - {shard-rkl}:        ([SKIP][144], [SKIP][145]) ([i915#1845]) -> [PA=
SS][146]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-1/igt@drm_read@fault-buffer.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-4/igt@drm_read@fault-buffer.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
rkl-6/igt@drm_read@fault-buffer.html
>=20
>   * igt@drm_read@short-buffer-wakeup:
>     - {shard-rkl}:        [SKIP][147] ([i915#1845] / [i915#4098]) -> [PAS=
S][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-1/igt@drm_read@short-buffer-wakeup.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
rkl-6/igt@drm_read@short-buffer-wakeup.html
>=20
>   * igt@fbdev@pan:
>     - {shard-rkl}:        [SKIP][149] ([i915#2582]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-1/igt@fbdev@pan.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
rkl-6/igt@fbdev@pan.html
>=20
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][151] ([i915#2481] / [i915#3070]) -> [=
PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-icl=
b5/igt@gem_eio@unwedge-stress.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
iclb6/igt@gem_eio@unwedge-stress.html
>=20
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - {shard-rkl}:        ([PASS][153], [FAIL][154]) ([i915#2842]) -> [PA=
SS][155]
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-tglb:         [FAIL][156] ([i915#2842]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-tgl=
b7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
tglb7/igt@gem_exec_fair@basic-pace@vcs0.html
>=20
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][158] ([i915#2842]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl=
7/igt@gem_exec_fair@basic-pace@vcs1.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>=20
>   * igt@gem_sync@basic-all:
>     - shard-glk:          [DMESG-WARN][160] ([i915#118]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk=
5/igt@gem_sync@basic-all.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
glk5/igt@gem_sync@basic-all.html
>=20
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][162] ([i915#1436] / [i915#716]) ->=
 [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl=
10/igt@gen9_exec_parse@allowed-single.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
skl1/igt@gen9_exec_parse@allowed-single.html
>=20
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - {shard-rkl}:        [SKIP][164] ([i915#3012]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl=
-1/igt@i915_pm_backlight@fade_with_suspend.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21841/shard-=
rkl-6/igt@i915_pm_backlight@fade_with_suspend.html
>=20
>   * igt@i915_
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21841/index.html

--8D0ckzzKa8cRA2Y6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmG39jgACgkQJNaLcl1U
h9CUOgf+ORm52yDssLOWLLyo1e0Ar3A/yJftkElpObKGRoMMw4V7WnEwAlVzUVh4
Je44pIb2H4ixizQ0R1u/Ugtt9UzN142iuH0sFeWf9btZon4wodSHwZOmP1PFn4xS
+4DG1gqzPunGPgu1lYdbkb73fEgH5AZ7oYKxNiOKvWWWhwh3HNRaxJmQlskd4AB2
VWsojk8KrB0VBt4FmUBWPV+5GQdbNLoOR4wQWA0d+aJBI4jguW+GXw50a7t68ETm
YONo9j0Cx553F2OaBalgXKLwJpVTxiZutuaXiXekcbI8CBW6/rpTq7y/V7VfFyF0
LaazNHs00zSaMtXKSGs8bzv2CCQaKg==
=9HaD
-----END PGP SIGNATURE-----

--8D0ckzzKa8cRA2Y6--
