Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1FF68669
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jul 2019 11:35:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356A6898C0;
	Mon, 15 Jul 2019 09:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A4A7898C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jul 2019 09:35:24 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jul 2019 02:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,493,1557212400"; 
 d="asc'?scan'208";a="190507309"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2019 02:35:23 -0700
Date: Mon, 15 Jul 2019 17:32:19 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190715093219.GJ16681@zhen-hp.sh.intel.com>
References: <20190709091233.8573-1-chris@chris-wilson.co.uk>
 <20190709205346.4422.18148@emeril.freedesktop.org>
MIME-Version: 1.0
In-Reply-To: <20190709205346.4422.18148@emeril.freedesktop.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Disable_preemption_under_GVT_=28rev6=29?=
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Content-Type: multipart/mixed; boundary="===============1390071246=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1390071246==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XRI2XbIfl/05pQwm"
Content-Disposition: inline


--XRI2XbIfl/05pQwm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


Chris, would you pick up this one? I think we need this first to make more =
GVT tests rolling.

On 2019.07.09 20:53:46 -0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915/execlists: Disable preemption under GVT (rev6)
> URL   : https://patchwork.freedesktop.org/series/62533/
> State : success
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_6438_full -> Patchwork_13578_full
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>=20
> Summary
> -------
>=20
>   **SUCCESS**
>=20
>   No regressions found.
>=20
>  =20
>=20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_13578_full that come from known=
 issues:
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@gem_ctx_isolation@bcs0-s3:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([fdo#104108]) +1 =
similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl2/i=
gt@gem_ctx_isolation@bcs0-s3.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-sk=
l8/igt@gem_ctx_isolation@bcs0-s3.html
>=20
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          [PASS][3] -> [FAIL][4] ([fdo#109661])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-snb5/i=
gt@gem_eio@unwedge-stress.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-sn=
b7/igt@gem_eio@unwedge-stress.html
>=20
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([fdo#108686])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-kbl4/i=
gt@gem_tiled_swapping@non-threaded.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-kb=
l3/igt@gem_tiled_swapping@non-threaded.html
>=20
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([fdo#108566]) +5 =
similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-apl4/i=
gt@i915_suspend@sysfs-reader.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-ap=
l7/igt@i915_suspend@sysfs-reader.html
>=20
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([fdo#108566])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-kbl3/i=
gt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-k=
bl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>=20
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
>     - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#103184] / [fdo#1=
03232])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl9/=
igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-s=
kl1/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
>=20
>   * igt@kms_flip_tiling@flip-changes-tiling-yf:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108228] / [fdo#1=
08303])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl9/=
igt@kms_flip_tiling@flip-changes-tiling-yf.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-s=
kl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html
>=20
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
>     - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#106978] / =
[fdo#107713])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-iclb6=
/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-i=
clb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
>=20
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack:
>     - shard-iclb:         [PASS][17] -> [FAIL][18] ([fdo#103167]) +2 simi=
lar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-iclb7=
/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-i=
clb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack.html
>=20
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 simi=
lar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-iclb2=
/igt@kms_psr@psr2_primary_page_flip.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-i=
clb1/igt@kms_psr@psr2_primary_page_flip.html
>=20
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][21] -> [FAIL][22] ([fdo#99912])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-apl5/=
igt@kms_setmode@basic.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-a=
pl2/igt@kms_setmode@basic.html
>=20
>   * igt@kms_vblank@pipe-b-query-forked-busy-hang:
>     - shard-hsw:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103540])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-hsw2/=
igt@kms_vblank@pipe-b-query-forked-busy-hang.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-h=
sw7/igt@kms_vblank@pipe-b-query-forked-busy-hang.html
>=20
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#110728])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl1/=
igt@perf@blocking.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-s=
kl6/igt@perf@blocking.html
>=20
>  =20
> #### Possible fixes ####
>=20
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [SKIP][27] ([fdo#110854]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-iclb6=
/igt@gem_exec_balancer@smoke.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-i=
clb4/igt@gem_exec_balancer@smoke.html
>=20
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][29] ([fdo#108566]) -> [PASS][30] +=
1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-apl6/=
igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-a=
pl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>=20
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>     - shard-skl:          [FAIL][31] ([fdo#100368]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl9/=
igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-s=
kl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>=20
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-iclb:         [FAIL][33] ([fdo#103167]) -> [PASS][34] +4 simi=
lar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-iclb4=
/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-i=
clb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>=20
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-skl:          [INCOMPLETE][35] ([fdo#104108] / [fdo#106978]) =
-> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl3/=
igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-s=
kl8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>=20
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][37] ([fdo#108145] / [fdo#110403]) -> [PA=
SS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-skl9/=
igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-s=
kl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>=20
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6438/shard-iclb3=
/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13578/shard-i=
clb2/igt@kms_psr@psr2_primary_mmap_gtt.html
>=20
>  =20
>   [fdo#100368]: https://bugs.freedesktop.org/show_bug.cgi?id=3D100368
>   [fdo#103167]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103167
>   [fdo#103184]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103184
>   [fdo#103232]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103232
>   [fdo#103540]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103540
>   [fdo#104108]: https://bugs.freedesktop.org/show_bug.cgi?id=3D104108
>   [fdo#106978]: https://bugs.freedesktop.org/show_bug.cgi?id=3D106978
>   [fdo#107713]: https://bugs.freedesktop.org/show_bug.cgi?id=3D107713
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108145
>   [fdo#108228]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108228
>   [fdo#108303]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108303
>   [fdo#108566]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108566
>   [fdo#108686]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108686
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109441
>   [fdo#109661]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109661
>   [fdo#110403]: https://bugs.freedesktop.org/show_bug.cgi?id=3D110403
>   [fdo#110728]: https://bugs.freedesktop.org/show_bug.cgi?id=3D110728
>   [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=3D110854
>   [fdo#99912]: https://bugs.freedesktop.org/show_bug.cgi?id=3D99912
>=20
>=20
> Participating hosts (10 -> 9)
> ------------------------------
>=20
>   Missing    (1): pig-hsw-4770r=20
>=20
>=20
> Build changes
> -------------
>=20
>   * Linux: CI_DRM_6438 -> Patchwork_13578
>=20
>   CI_DRM_6438: 95f55d284c41cf499bbfad4ea0c9f0199d47e27e @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>   IGT_5092: 2a66ae6626d5583240509f84117d1345a799b75a @ git://anongit.free=
desktop.org/xorg/app/intel-gpu-tools
>   Patchwork_13578: a251da6a918cdf3118804390ee3d2cef83e11bb5 @ git://anong=
it.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.f=
reedesktop.org/piglit
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
13578/
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--XRI2XbIfl/05pQwm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXSxIIwAKCRCxBBozTXgY
JyIAAJ9uPAgC9vbHcZ8kH0no9gQcnB3kaACfZest8AL87n5X/y06dZTQl/g4ozE=
=soaZ
-----END PGP SIGNATURE-----

--XRI2XbIfl/05pQwm--

--===============1390071246==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1390071246==--
