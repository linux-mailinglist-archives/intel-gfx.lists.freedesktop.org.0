Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A914016C7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 09:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED9089834;
	Mon,  6 Sep 2021 07:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B02989831
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 07:11:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="283614945"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="283614945"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 00:11:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="536550008"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.8.17])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 00:11:54 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Date: Mon, 06 Sep 2021 09:11:51 +0200
Message-ID: <15836561.hlxOUv9cDv@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <163069602087.21415.8284587142205686328@emeril.freedesktop.org>
References: <20210903142837.216978-1-janusz.krzysztofik@linux.intel.com>
 <163069602087.21415.8284587142205686328@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Mark_GPU_wedging_on_driver_unregister_unrecoverable_?=
 =?utf-8?b?KHJldjIp?=
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

On pi=C4=85tek, 3 wrze=C5=9Bnia 2021 21:07:00 CEST Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Mark GPU wedging on driver unregister unrecoverable (re=
v2)
> URL   : https://patchwork.freedesktop.org/series/94247/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_10550_full -> Patchwork_20953_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **FAILURE**
>=20
>   Serious unknown changes coming with Patchwork_20953_full absolutely nee=
d to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20953_full, please notify your bug team to allo=
w them
>   to document this new failure mode, which will reduce false positives in=
 CI.
>=20
>  =20
>=20
> Possible new issues
> -------------------
>=20
>   Here are the unknown changes that may have been introduced in Patchwork=
_20953_full:
>=20
> ### IGT changes ###
>=20
> #### Possible regressions ####
>=20
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-iclb:         [PASS][1] -> [SKIP][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-iclb4=
/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-ic=
lb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

stdout: No valid pipe/connector/format/mod combination found

That doesn't sound like a driver unregister related issue to me.

Thanks,
Janusz

>=20
>  =20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_20953_full that come from known=
 issues:
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@feature_discovery@display-2x:
>     - shard-iclb:         NOTRUN -> [SKIP][3] ([i915#1839])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-ic=
lb8/igt@feature_discovery@display-2x.html
>=20
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-sn=
b6/igt@gem_create@create-massive.html
>=20
>   * igt@gem_ctx_persistence@legacy-engines-hostile:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]=
) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-sn=
b6/igt@gem_ctx_persistence@legacy-engines-hostile.html
>=20
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#3063])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-tglb3=
/igt@gem_eio@in-flight-contexts-10ms.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-tg=
lb6/igt@gem_eio@in-flight-contexts-10ms.html
>=20
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#2369] / [i915#=
3063] / [i915#3648])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-tglb8=
/igt@gem_eio@unwedge-stress.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-tg=
lb7/igt@gem_eio@unwedge-stress.html
>=20
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-tglb=
1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-t=
glb1/igt@gem_exec_fair@basic-flow@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2849])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-iclb=
8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb2/igt@gem_exec_fair@basic-throttle@rcs0.html
>=20
>   * igt@gem_exec_params@secure-non-master:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([fdo#112283])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@gem_exec_params@secure-non-master.html
>=20
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl6/igt@gem_pread@exhaustion.html
>     - shard-skl:          NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@gem_pread@exhaustion.html
>=20
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][17] ([i915#2658]) +1 similar i=
ssue
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl3/igt@gem_pwrite@basic-exhaustion.html
>=20
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#768])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
>=20
>   * igt@gem_softpin@evict-snoop:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109312])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@gem_softpin@evict-snoop.html
>=20
>   * igt@gem_workarounds@suspend-resume:
>     - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#198])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl7=
/igt@gem_workarounds@suspend-resume.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl6/igt@gem_workarounds@suspend-resume.html
>     - shard-apl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +1 =
similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-apl6=
/igt@gem_workarounds@suspend-resume.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl2/igt@gem_workarounds@suspend-resume.html
>=20
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109289])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@gen7_exec_parse@basic-allowed.html
>=20
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][25] -> [DMESG-WARN][26] ([i915#1436] / [=
i915#716])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-glk7=
/igt@gen9_exec_parse@allowed-all.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-g=
lk4/igt@gen9_exec_parse@allowed-all.html
>=20
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-snb:          NOTRUN -> [SKIP][27] ([fdo#109271]) +391 simila=
r issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
nb5/igt@gen9_exec_parse@batch-invalid-length.html
>=20
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         NOTRUN -> [WARN][28] ([i915#2684])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@i915_pm_rc6_residency@rc6-fence.html
>=20
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110725] / [fdo#11161=
4])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>=20
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][30] ([i915#3722])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>=20
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777=
])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3777=
]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>=20
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777=
]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>=20
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#110723])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>=20
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278] / [i915#3886=
]) +5 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>=20
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886=
]) +7 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>=20
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886=
])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
>=20
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886=
]) +7 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>=20
>   * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>     - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#11182=
7]) +10 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl3/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
>=20
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#11182=
7]) +21 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
nb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
>=20
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#11182=
7]) +17 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
>=20
>   * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#11182=
7]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html
>=20
>   * igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#11182=
7]) +3 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_color_chamelium@pipe-invalid-gamma-lut-sizes.html
>=20
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#3116])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_content_protection@dp-mst-type-0.html
>=20
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][45] ([i915#1319]) +1 simila=
r issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl3/igt@kms_content_protection@lic.html
>=20
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [fdo#10927=
9])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-offscreen.html
>=20
>   * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
>     - shard-apl:          NOTRUN -> [FAIL][47] ([i915#3444])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
>=20
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-siz=
e:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274] / [fdo#10927=
8])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size=
=2Ehtml
>=20
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl3/igt@kms_cursor_legacy@pipe-d-single-bo.html
>=20
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_flip@2x-flip-vs-fences.html
>=20
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#79])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl9=
/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>=20
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][53] -> [DMESG-WARN][54] ([i915#180] / [i=
915#1982])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-apl3=
/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>=20
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][55] -> [INCOMPLETE][56] ([i915#636])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-kbl7=
/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>=20
>   * igt@kms_flip@nonexisting-fb@a-edp1:
>     - shard-skl:          [PASS][57] -> [DMESG-WARN][58] ([i915#1982])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl1=
/igt@kms_flip@nonexisting-fb@a-edp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl9/igt@kms_flip@nonexisting-fb@a-edp1.html
>=20
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#2122]) +1 simil=
ar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl6=
/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>=20
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672=
])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
>=20
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +29 similar=
 issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
>=20
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +7 similar =
issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.ht=
ml
>=20
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271]) +114 simila=
r issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
>=20
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          NOTRUN -> [FAIL][65] ([i915#1188])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_hdr@bpc-switch-suspend.html
>=20
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
>=20
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109278]) +8 similar =
issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
>=20
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +2 =
similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-kbl7=
/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][70] -> [FAIL][71] ([fdo#108145] / [i915#=
265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl1=
0/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265]=
) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][74] ([i915#265])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][75] ([fdo#108145] / [i915#265])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>=20
>   * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-wit=
h-clipping-clamping:
>     - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2733=
])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-=
clipping-clamping.html
>=20
>   * igt@kms_prime@basic-crc@first-to-second:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#1836])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_prime@basic-crc@first-to-second.html
>=20
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]=
) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html
>=20
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#658])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
>=20
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109441])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
>=20
>   * igt@kms_vrr@flip-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109502])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@kms_vrr@flip-dpms.html
>=20
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2437=
])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl7/igt@kms_writeback@writeback-invalid-parameters.html
>=20
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +171 simila=
r issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
>=20
>   * igt@nouveau_crc@pipe-c-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2530])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@nouveau_crc@pipe-c-source-rg.html
>=20
>   * igt@prime_udl:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109291])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@prime_udl.html
>=20
>   * igt@sysfs_clients@fair-7:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994=
]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-a=
pl6/igt@sysfs_clients@fair-7.html
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994=
]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl3/igt@sysfs_clients@fair-7.html
>=20
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994=
]) +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-k=
bl7/igt@sysfs_clients@sema-25.html
>=20
>   * igt@sysfs_clients@split-10:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2994])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb8/igt@sysfs_clients@split-10.html
>=20
>  =20
> #### Possible fixes ####
>=20
>   * igt@fbdev@unaligned-write:
>     - {shard-rkl}:        [SKIP][90] ([i915#2582]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl-=
2/igt@fbdev@unaligned-write.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-r=
kl-6/igt@fbdev@unaligned-write.html
>=20
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][92] ([i915#658]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-iclb=
4/igt@feature_discovery@psr2.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-i=
clb2/igt@feature_discovery@psr2.html
>     - {shard-rkl}:        [SKIP][94] ([i915#658]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl-=
2/igt@feature_discovery@psr2.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-r=
kl-6/igt@feature_discovery@psr2.html
>=20
>   * igt@gem_ctx_persistence@idempotent:
>     - shard-skl:          [DMESG-WARN][96] ([i915#1982]) -> [PASS][97] +1=
 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl7=
/igt@gem_ctx_persistence@idempotent.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-s=
kl2/igt@gem_ctx_persistence@idempotent.html
>=20
>   * igt@gem_ctx_persistence@legacy-engines-hang@bsd:
>     - {shard-rkl}:        [FAIL][98] ([i915#2410]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl-=
5/igt@gem_ctx_persistence@legacy-engines-hang@bsd.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-r=
kl-1/igt@gem_ctx_persistence@legacy-engines-hang@bsd.html
>=20
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - {shard-rkl}:        [TIMEOUT][100] ([i915#3063]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@gem_eio@in-flight-contexts-10ms.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-1/igt@gem_eio@in-flight-contexts-10ms.html
>=20
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][102] ([i915#2846]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@gem_exec_fair@basic-deadline.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@gem_exec_fair@basic-deadline.html
>=20
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-rkl}:        [FAIL][104] ([i915#2842]) -> [PASS][105] +1 sim=
ilar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-2/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-apl:          [SKIP][106] ([fdo#109271]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-apl=
6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
apl8/igt@gem_exec_fair@basic-none-share@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-iclb:         [FAIL][108] ([i915#2842]) -> [PASS][109] +1 sim=
ilar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-icl=
b3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
iclb6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][110] ([i915#2842]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-kbl=
2/igt@gem_exec_fair@basic-pace@rcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
kbl6/igt@gem_exec_fair@basic-pace@rcs0.html
>=20
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][112] ([i915#2842]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-glk=
9/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>=20
>   * igt@gem_exec_whisper@basic-fds-priority:
>     - shard-glk:          [DMESG-WARN][114] ([i915#118] / [i915#95]) -> [=
PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-glk=
6/igt@gem_exec_whisper@basic-fds-priority.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
glk8/igt@gem_exec_whisper@basic-fds-priority.html
>=20
>   * igt@i915_pm_backlight@basic-brightness:
>     - {shard-rkl}:        [SKIP][116] ([i915#3012]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@i915_pm_backlight@basic-brightness.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@i915_pm_backlight@basic-brightness.html
>=20
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - {shard-rkl}:        [SKIP][118] ([i915#1397]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>=20
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - {shard-rkl}:        [SKIP][120] ([i915#3638]) -> [PASS][121] +4 sim=
ilar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@kms_big_fb@linear-16bpp-rotate-180.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@kms_big_fb@linear-16bpp-rotate-180.html
>=20
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - {shard-rkl}:        [SKIP][122] ([i915#3721]) -> [PASS][123] +1 sim=
ilar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>=20
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-iclb:         [DMESG-WARN][124] ([i915#3621]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-icl=
b1/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
iclb8/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
>=20
>   * igt@kms_color@pipe-a-legacy-gamma-reset:
>     - {shard-rkl}:        [SKIP][126] ([i915#1849] / [i915#4070]) -> [PAS=
S][127] +5 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@kms_color@pipe-a-legacy-gamma-reset.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@kms_color@pipe-a-legacy-gamma-reset.html
>=20
>   * igt@kms_color@pipe-b-ctm-0-5:
>     - {shard-rkl}:        [SKIP][128] ([i915#1149] / [i915#1849] / [i915#=
4070]) -> [PASS][129] +3 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@kms_color@pipe-b-ctm-0-5.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@kms_color@pipe-b-ctm-0-5.html
>=20
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
>     - {shard-rkl}:        [SKIP][130] ([fdo#112022] / [i915#4070]) -> [PA=
SS][131] +10 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
>=20
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][132] ([i915#300]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-skl=
3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>     - shard-kbl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +=
5 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-kbl=
4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>=20
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - {shard-rkl}:        [SKIP][136] ([fdo#111825] / [i915#4070]) -> [PA=
SS][137] +3 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10550/shard-rkl=
=2D2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20953/shard-=
rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
>=20
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-sk
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20953/index.html
>=20




