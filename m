Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F33B6DA9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 22:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB3E72B5C;
	Wed, 18 Sep 2019 20:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B1272B62
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 20:28:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 13:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; 
 d="p7s'?scan'208";a="181241611"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 18 Sep 2019 13:28:36 -0700
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 13:28:35 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.215]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.40]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 13:28:35 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Peres, Martin" <martin.peres@intel.com>
Thread-Topic: =?utf-8?B?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJtL2k5MTU6IEFsbG93IHNl?=
 =?utf-8?Q?t_context_SSEU_on_platforms_after_gen_11?=
Thread-Index: AQHVblem7A/kvOJojEGtmhqyZ/iAYqcyV++A
Date: Wed, 18 Sep 2019 20:28:34 +0000
Message-ID: <cc47519a241b5eb4fe3d6afa6b790d0c5854e322.camel@intel.com>
References: <20190918173121.183132-1-stuart.summers@intel.com>
 <20190918193108.21838.76037@emeril.freedesktop.org>
In-Reply-To: <20190918193108.21838.76037@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Allow_set_context_SSEU_on_platforms_after_gen_11?=
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
Content-Type: multipart/mixed; boundary="===============1513681498=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1513681498==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-3yh1R6ZAcd6dDxVcTdZH"

--=-3yh1R6ZAcd6dDxVcTdZH
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-09-18 at 19:31 +0000, Patchwork wrote:
> =3D=3D Series Details =3D=3D
>=20
> Series: drm/i915: Allow set context SSEU on platforms after gen 11
> URL   : https://patchwork.freedesktop.org/series/66870/
> State : success
>=20
> =3D=3D Summary =3D=3D
>=20
> CI Bug Log - changes from CI_DRM_6917 -> Patchwork_14447
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
>   External URL:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/
>=20
> Known issues
> ------------
>=20
>   Here are the changes found in Patchwork_14447 that come from known
> issues:
>=20
> ### IGT changes ###
>=20
> #### Issues hit ####
>=20
>   * igt@debugfs_test@read_all_entries:
>     - fi-icl-u3:          [PASS][1] -> [DMESG-WARN][2] ([fdo#107724])
> +1 similar issue
>    [1]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-icl-u3/igt@debugf=
s_test@read_all_entries.html
>    [2]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-icl-u3/igt@de=
bugfs_test@read_all_entries.html
>=20
>   * igt@i915_module_load@reload:
>     - fi-icl-u3:          [PASS][3] -> [DMESG-WARN][4] ([fdo#107724]
> / [fdo#111214])
>    [3]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-icl-u3/igt@i915_m=
odule_load@reload.html
>    [4]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-icl-u3/igt@i9=
15_module_load@reload.html
>=20
>   * igt@i915_selftest@live_hangcheck:
>     - fi-icl-u3:          [PASS][5] -> [INCOMPLETE][6] ([fdo#107713]
> / [fdo#108569])
>    [5]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-icl-u3/igt@i915_s=
elftest@live_hangcheck.html
>    [6]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-icl-u3/igt@i9=
15_selftest@live_hangcheck.html
>=20
>   * igt@kms_chamelium@dp-edid-read:
>     - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([fdo#109483] /
> [fdo#109635 ])
>    [7]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-icl-u2/igt@kms_ch=
amelium@dp-edid-read.html
>    [8]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-icl-u2/igt@km=
s_chamelium@dp-edid-read.html
>=20
>   * igt@kms_frontbuffer_tracking@basic:
>     - fi-icl-u2:          [PASS][9] -> [FAIL][10] ([fdo#103167])
>    [9]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-icl-u2/igt@kms_fr=
ontbuffer_tracking@basic.html
>    [10]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-icl-u2/igt@km=
s_frontbuffer_tracking@basic.html
>=20
>  =20
> #### Possible fixes ####
>=20
>   * igt@gem_ctx_create@basic-files:
>     - {fi-tgl-u}:         [INCOMPLETE][11] ([fdo#111735]) ->
> [PASS][12]
>    [11]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-tgl-u/igt@gem_ctx=
_create@basic-files.html
>    [12]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-tgl-u/igt@gem=
_ctx_create@basic-files.html
>=20
>   * igt@gem_exec_suspend@basic-s3:
>     - fi-blb-e6850:       [INCOMPLETE][13] ([fdo#107718]) ->
> [PASS][14]
>    [13]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-blb-e6850/igt@gem=
_exec_suspend@basic-s3.html
>    [14]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-blb-e6850/igt=
@gem_exec_suspend@basic-s3.html
>=20
>   * igt@gem_mmap_gtt@basic-write-no-prefault:
>     - fi-icl-u3:          [DMESG-WARN][15] ([fdo#107724]) ->
> [PASS][16] +1 similar issue
>    [15]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_6917/fi-icl-u3/igt@gem_mm=
ap_gtt@basic-write-no-prefault.html
>    [16]:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/fi-icl-u3/igt@ge=
m_mmap_gtt@basic-write-no-prefault.html
>=20
>  =20
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or
> FAILURE).
>=20
>   [fdo#103167]: https://bugs.freedesktop.org/show_bug.cgi?id=3D103167
>   [fdo#107713]: https://bugs.freedesktop.org/show_bug.cgi?id=3D107713
>   [fdo#107718]: https://bugs.freedesktop.org/show_bug.cgi?id=3D107718
>   [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=3D107724
>   [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=3D108569
>   [fdo#109483]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109483
>   [fdo#109635 ]: https://bugs.freedesktop.org/show_bug.cgi?id=3D109635=
=20
>   [fdo#111214]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111214
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=3D111735
>=20
>=20
> Participating hosts (53 -> 47)
> ------------------------------
>=20
>   Additional (1): fi-bxt-dsi=20
>   Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan=20
> fi-icl-y fi-byt-clapper fi-bdw-samus=20

Hi Martin,

Is there an easy way to tell if these missing machines are a result of
changes made to the patches here vs something else in the test
infrastructure?

Thanks,
Stuart

>=20
>=20
> Build changes
> -------------
>=20
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_6917 -> Patchwork_14447
>=20
>   CI-20190529: 20190529
>   CI_DRM_6917: 7ca2b123ae999133223b882e3190955897df8b03 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5191: 63e30122cadaf2798ae2bd44a56cee81a27fbc40 @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_14447: 807439de93492cd02c3b104effc28780aea605b8 @
> git://anongit.freedesktop.org/gfx-ci/linux
>=20
>=20
> =3D=3D Linux commits =3D=3D
>=20
> 807439de9349 drm/i915: Allow set context SSEU on platforms after gen
> 11
>=20
> =3D=3D Logs =3D=3D
>=20
> For more details see:=20
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14447/index.html

--=-3yh1R6ZAcd6dDxVcTdZH
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA5MTgyMDI4MzFaMCMGCSqGSIb3DQEJ
BDEWBBRm3aUCP2SxXF6ppVr0HyNJV/ucXzANBgkqhkiG9w0BAQEFAASCAQAWcW3M0Eq29FIXVT13
v1CRDd9DbB9HHMXb1V1LXIuPv8X6wXZ5Zu0gZvr40q38ux26OqNPHc3QlG4EddYBPZtZY+wNLIUT
0mFvXwLRfO2gnyH4f6YzM4I8LNaT2H/+tV7O7HHqPX3Mps3elBg2Vxtx6pUyMdQ0J8WrKOZNfoaK
ypOWTkcQYhYYM2RmgLOmuyLEcZrQk4QWUY1Nddjny+N3w72glZbRs+z12792uEyVv7TJvioxa4MR
lbrfCopMqpPWPRsPVFyBSzGSEoHkHVaTdEbwwOntJ7AF3SdhchNxNZDkNH336M4VBhgjYZTN4rVX
airrsPqgb4HfF2f1wen/AAAAAAAA


--=-3yh1R6ZAcd6dDxVcTdZH--

--===============1513681498==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1513681498==--
