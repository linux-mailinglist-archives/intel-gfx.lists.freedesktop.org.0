Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1041740A6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 23:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EC26E658;
	Wed, 24 Jul 2019 21:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 805146E658
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 21:08:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 14:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; 
 d="p7s'?scan'208";a="171613743"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jul 2019 14:08:27 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jul 2019 14:08:26 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.66]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.134]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 14:08:26 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVmYWN0b3IgdG8gZXhwYW5k?=
 =?utf-8?Q?_subslice_mask_(rev_2)?=
Thread-Index: AQHVQmL6XWQ1U2ppE0O9AdPcsuIuUqbauGUA
Date: Wed, 24 Jul 2019 21:08:25 +0000
Message-ID: <e4a14d944f6aff4fbb12ef524acde1d242aea52d.camel@intel.com>
References: <20190724171220.22986-1-stuart.summers@intel.com>
 <20190724210133.10330.79686@emeril.freedesktop.org>
In-Reply-To: <20190724210133.10330.79686@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVm?=
 =?utf-8?q?actor_to_expand_subslice_mask_=28rev_2=29?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============0664090447=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0664090447==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-ZpQDZM2EkaIUfJ/vdJ9O"

--=-ZpQDZM2EkaIUfJ/vdJ9O
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-07-24 at 21:01 +0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: Refactor to expand subslice mask (rev 2)
> URL   : https://patchwork.freedesktop.org/series/64188/
> State : failure
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_6545_full -> Patchwork_13739_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **FAILURE**
>=20
>   Serious unknown changes coming with Patchwork_13739_full absolutely
> need to be
>   verified manually.
>  =20
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_13739_full, please notify your bug team to
> allow them
>   to document this new failure mode, which will reduce false
> positives in CI.
>=20
>  =20
>=20
> Possible new issues
> -------------------
>=20
>   Here are the unknown changes that may have been introduced in
> Patchwork_13739_full:
>=20
> ### IGT changes ###
>=20
> #### Possible regressions ####
>=20
>   * igt@i915_query@query-topology-matches-eu-total:
>     - shard-hsw:          [PASS][1] -> [FAIL][2] +3 similar issues
>    [1]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-hsw7/igt@i915_=
query@query-topology-matches-eu-total.html
>    [2]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-hsw1/igt@i=
915_query@query-topology-matches-eu-total.html

Looks like this series is causing a regression on HSW. I'll fix this
issue before posting the next revision. For now, please hold off on
review.

Thanks,
Stuart

>=20
>  =20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_13739_full that come from
> known issues:
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([fdo#108566])
>    [3]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-apl8/igt@gem_c=
tx_isolation@rcs0-s3.html
>    [4]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-apl3/igt@g=
em_ctx_isolation@rcs0-s3.html
>=20
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([fdo#108686])
>    [5]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-apl5/igt@gem_t=
iled_swapping@non-threaded.html
>    [6]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-apl7/igt@g=
em_tiled_swapping@non-threaded.html
>=20
>   * igt@i915_pm_rc6_residency@rc6-accuracy:
>     - shard-kbl:          [PASS][7] -> [SKIP][8] ([fdo#109271])
>    [7]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-kbl1/igt@i915_=
pm_rc6_residency@rc6-accuracy.html
>    [8]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-kbl1/igt@i=
915_pm_rc6_residency@rc6-accuracy.html
>=20
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-hsw:          [PASS][9] -> [SKIP][10] ([fdo#109271])
>    [9]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-hsw4/igt@i915_=
query@query-topology-coherent-slice-mask.html
>    [10]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-hsw5/igt@i=
915_query@query-topology-coherent-slice-mask.html
>=20
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-hsw:          [PASS][11] -> [FAIL][12] ([fdo#103355])
>    [11]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-hsw1/igt@kms_c=
ursor_legacy@cursor-vs-flip-toggle.html
>    [12]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-hsw6/igt@k=
ms_cursor_legacy@cursor-vs-flip-toggle.html
>=20
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#105363])
>    [13]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-skl10/igt@kms_=
flip@flip-vs-expired-vblank-interruptible.html
>    [14]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-skl8/igt@k=
ms_flip@flip-vs-expired-vblank-interruptible.html
>=20
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-kbl:          [PASS][15] -> [DMESG-WARN][16]
> ([fdo#108566]) +2 similar issues
>    [15]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-kbl3/igt@kms_f=
lip@flip-vs-suspend-interruptible.html
>    [16]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-kbl3/igt@k=
ms_flip@flip-vs-suspend-interruptible.html
>=20
>   * igt@kms_flip_tiling@flip-to-x-tiled:
>     - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108134])
>    [17]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-skl10/igt@kms_=
flip_tiling@flip-to-x-tiled.html
>    [18]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-skl3/igt@k=
ms_flip_tiling@flip-to-x-tiled.html
>=20
>   * igt@kms
> _frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([fdo#103167]) +7
> similar issues
>    [19]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb8/igt@kms_=
frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
>    [20]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb7/igt@=
kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
>=20
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-skl:          [PASS][21] -> [INCOMPLETE][22]
> ([fdo#104108])
>    [21]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-skl6/igt@kms_f=
rontbuffer_tracking@fbc-suspend.html
>    [22]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-skl3/igt@k=
ms_frontbuffer_tracking@fbc-suspend.html
>=20
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-kbl:          [PASS][23] -> [INCOMPLETE][24]
> ([fdo#103665])
>    [23]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-kbl3/igt@kms_p=
lane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [24]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-kbl3/igt@k=
ms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>=20
>   * igt@kms_psr2_su@page_flip:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109642] /
> [fdo#111068])
>    [25]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb2/igt@kms_=
psr2_su@page_flip.html
>    [26]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb4/igt@=
kms_psr2_su@page_flip.html
>=20
>   * igt@perf_pmu@init-busy-vcs2:
>     - shard-iclb:         [PASS][27] -> [INCOMPLETE][28]
> ([fdo#107713])
>    [27]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb2/igt@perf=
_pmu@init-busy-vcs2.html
>    [28]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb4/igt@=
perf_pmu@init-busy-vcs2.html
>=20
>  =20
> #### Possible fixes ####
>=20
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [SKIP][29] ([fdo#110854]) -> [PASS][30]
>    [29]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb6/igt@gem_=
exec_balancer@smoke.html
>    [30]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb4/igt@=
gem_exec_balancer@smoke.html
>=20
>   * igt@i915_selftest@live_hangcheck:
>     - shard-iclb:         [INCOMPLETE][31] ([fdo#107713] /
> [fdo#108569]) -> [PASS][32]
>    [31]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb6/igt@i915=
_selftest@live_hangcheck.html
>    [32]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb6/igt@=
i915_selftest@live_hangcheck.html
>=20
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [FAIL][33] ([fdo#105363]) -> [PASS][34]
>    [33]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-skl9/igt@kms_f=
lip@flip-vs-expired-vblank.html
>    [34]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-skl4/igt@k=
ms_flip@flip-vs-expired-vblank.html
>=20
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-apl:          [DMESG-WARN][35] ([fdo#108566]) ->
> [PASS][36] +4 similar issues
>    [35]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-apl4/igt@kms_f=
lip@flip-vs-suspend-interruptible.html
>    [36]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-apl2/igt@k=
ms_flip@flip-vs-suspend-interruptible.html
>=20
>   * igt@kms
> _frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-iclb:         [FAIL][37] ([fdo#103167]) -> [PASS][38] +3
> similar issues
>    [37]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb4/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>    [38]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb8/igt@=
kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][39] ([fdo#108145]) -> [PASS][40] +1
> similar issue
>    [39]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-skl10/igt@kms_=
plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [40]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-skl8/igt@k=
ms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>=20
>   * igt@kms_psr@cursor_plane_onoff:
>     - shard-iclb:         [INCOMPLETE][41] ([fdo#107713]) ->
> [PASS][42]
>    [41]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb1/igt@kms_=
psr@cursor_plane_onoff.html
>    [42]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb1/igt@=
kms_psr@cursor_plane_onoff.html
>=20
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +2
> similar issues
>    [43]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-iclb4/igt@kms_=
psr@psr2_primary_mmap_gtt.html
>    [44]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-iclb2/igt@=
kms_psr@psr2_primary_mmap_gtt.html
>=20
>  =20
> #### Warnings ####
>=20
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-skl:          [FAIL][45] ([fdo#108686]) -> [SKIP][46]
> ([fdo#109271])
>    [45]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6545/shard-skl8/igt@gem_t=
iled_swapping@non-threaded.html
>    [46]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/shard-skl5/igt@g=
em_tiled_swapping@non-threaded.html
>=20
>  =20
>   [fdo#103167]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103167
>   [fdo#103355]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103355
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103665
>   [fdo#104108]: https://bugs.freedesktop.org/show_bug.cgi?id=3D104108
>   [fdo#105363]: https://bugs.freedesktop.org/show_bug.cgi?id=3D105363
>   [fdo#107713]: https://bugs.freedesktop.org/show_bug.cgi?id=3D107713
>   [fdo#108134]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108134
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108145
>   [fdo#108566]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108566
>   [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108569
>   [fdo#108686]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108686
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109642
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=3D110854
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111068
>=20
>=20
> Participating hosts (9 -> 9)
> ------------------------------
>=20
>   No changes in participating hosts
>=20
>=20
> Build changes
> -------------
>=20
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_6545 -> Patchwork_13739
>=20
>   CI-20190529: 20190529
>   CI_DRM_6545: a6efe73f1e086c7935d56b08342f9e1c5565fcf3 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5109: e5fd509e16ec649436be31f38eaa5b85cb7f72f1 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_13739: 6c805dfa2b2aa200593b17947e683a2781992c7a @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13739/

--=-ZpQDZM2EkaIUfJ/vdJ9O
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MjQyMTA4MTZaMCMGCSqGSIb3DQEJ
BDEWBBT8ZsEJ8ya19W1oHiNrKuVgjbk0iTANBgkqhkiG9w0BAQEFAASCAQAk+X1K/n7JSWHjsezh
Iy0tfAI5PBlZdSgBDgpeFxj/0h0evpRheJe8D8NnSB+Zrr61ukBp4KlVYnVg8Y7olLO3KGp34g5u
Gi+IIj8qHAEo93dhOfYyaSDsB/OBcrJz3Bwf9c6cVRTQsoQgqZyQFstDWJx1O7pOKnBaeAtt1+H0
WLYgmJGQzn5rfNnBSpc2LtnJZi4oqCNuPTMiFA61VCkwWM66LF//xwNlpf8NxDiKjpf4UJqDdcQo
8yzGYLORxxmk2yRLgQIvdmvJLwBI3VmUo8d/LThpyt99o7u2RfedCVYq7jbIjmVfzEwMpHYa/348
mg/WSvlxLm5weG03p0psAAAAAAAA


--=-ZpQDZM2EkaIUfJ/vdJ9O--

--===============0664090447==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0664090447==--
