Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D22462C50
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 06:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A023A6E0AF;
	Tue, 30 Nov 2021 05:45:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249CA6E11C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 05:45:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="223375574"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; 
 d="scan'208,217";a="223375574"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 21:45:53 -0800
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; 
 d="scan'208,217";a="512028474"
Received: from hekner-mobl5.ger.corp.intel.com (HELO [10.249.254.206])
 ([10.249.254.206])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2021 21:45:50 -0800
Message-ID: <3ca63ad3bff7b87a0b9567b2f4352d61bf34d5d1.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org, Lakshminarayana Vudum
 <lakshminarayana.vudum@intel.com>
Date: Tue, 30 Nov 2021 06:45:48 +0100
In-Reply-To: <163823705121.20412.6774892521844489834@emeril.freedesktop.org>
References: <20211129202245.472043-1-thomas.hellstrom@linux.intel.com>
 <163823705121.20412.6774892521844489834@emeril.freedesktop.org>
Content-Type: multipart/alternative; boundary="=-TbvjkXGpf07bxx57iCg5"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Update_error_capture_code_to_avoid_using_the_current_v?=
 =?utf-8?q?ma_state?=
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


--=-TbvjkXGpf07bxx57iCg5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2021-11-30 at 01:50 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: Update error capture code to avoid using the current
> vma
> stateURL:https://patchwork.freedesktop.org/series/97385/State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/index.html
> CI Bug Log - changes from CI_DRM_10939_full -> Patchwork_21696_fullSummaryFAILURE
> Serious unknown changes coming with Patchwork_21696_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21696_full, please notify your bug team to
> allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (11 -> 10)Missing (1): pig-kbl-iris 
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_21696_full:
> IGT changesPossible regressions * igt@kms_flip@busy-flip@b-edp1:
>     - shard-tglb: PASS -> INCOMPLETE


Lakshmi,

This failure is unrelated.

Thanks,
Thomas




> Known issuesHere are the changes found in Patchwork_21696_full that come from
> known issues:
> CI changesPossible fixes * boot:shard-skl: (PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS,
>    PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, FAIL, PASS,
>    PASS, PASS, PASS, PASS, PASS) ([i915#4337]) -> (PASS, PASS, PASS,
>    PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS,
>    PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS)shard-apl:
>    (PASS, PASS, PASS, PASS, PASS, FAIL, PASS, PASS, PASS, PASS, PASS,
>    PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS,
>    PASS, PASS, PASS) ([i915#4386]) -> (PASS, PASS, PASS, PASS, PASS,
>    PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS,
>    PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS)
> IGT changesIssues hit * igt@feature_discovery@display-4x:shard-apl: NOTRUN -> SKIP
>    ([fdo#109271]) +63 similar issues
>  * igt@gem_exec_capture@pi@rcs0:shard-skl: PASS -> INCOMPLETE
>    ([i915#4547])
>  * igt@gem_exec_fair@basic-deadline:shard-skl: NOTRUN -> FAIL
>    ([i915#2846])
>  * igt@gem_exec_fair@basic-none-solo@rcs0:shard-kbl: PASS -> FAIL
>    ([i915#2842]) +2 similar issues
>  * igt@gem_exec_fair@basic-none@vecs0:shard-apl: PASS -> FAIL
>    ([i915#2842])
>  * igt@gem_exec_fair@basic-pace@bcs0:shard-tglb: NOTRUN -> FAIL
>    ([i915#2842]) +4 similar issues
>  * igt@gem_exec_fair@basic-throttle@rcs0:shard-glk: PASS -> FAIL
>    ([i915#2842])
>  * igt@gem_lmem_swapping@heavy-verify-multi:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#4613]) +2 similar issues
>  * igt@gem_lmem_swapping@random:shard-apl: NOTRUN -> SKIP ([fdo#109271]
>    / [i915#4613])
>  * igt@gem_lmem_swapping@smem-oom:shard-skl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#4613])
>  * igt@gem_pread@exhaustion:shard-apl: NOTRUN -> WARN ([i915#2658])
>  * igt@gem_pwrite@basic-exhaustion:shard-kbl: NOTRUN -> WARN
>    ([i915#2658])
>  * igt@gem_pxp@fail-invalid-protected-context:shard-tglb: NOTRUN ->
>    SKIP ([i915#4270])
>  * igt@gem_softpin@evict-snoop-interruptible:shard-tglb: NOTRUN -> SKIP
>    ([fdo#109312])
>  * igt@gem_userptr_blits@dmabuf-sync:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#3323])
>  * igt@gem_userptr_blits@input-checking:shard-skl: NOTRUN -> DMESG-WARN
>    ([i915#3002])
>  * igt@gem_workarounds@suspend-resume-fd:shard-kbl: PASS -> DMESG-WARN
>    ([i915#180]) +2 similar issues
>  * igt@gen9_exec_parse@basic-rejected:shard-tglb: NOTRUN -> SKIP
>    ([i915#2856])
>  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:shard-tglb: NOTRUN -> SKIP
>    ([fdo#111615]) +1 similar issue
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:shard-
>    kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777]) +1 similar issue
>  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-
>    y_tiled_gen12_rc_ccs_cc:shard-kbl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#3886]) +9 similar issues
>  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:shard-
>    tglb: NOTRUN -> SKIP ([i915#3689] / [i915#3886])
>  * igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:shard-tglb: NOTRUN ->
>    SKIP ([fdo#111615] / [i915#3689])
>  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:shard-
>    skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +1 similar issue
>  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:shard-apl:
>    NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +2 similar issues
>  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_ccs:shard-tglb:
>    NOTRUN -> SKIP ([i915#3689]) +1 similar issue
>  * igt@kms_chamelium@vga-frame-dump:shard-tglb: NOTRUN -> SKIP
>    ([fdo#109284] / [fdo#111827]) +4 similar issues
>  * igt@kms_color_chamelium@pipe-a-ctm-0-5:shard-apl: NOTRUN -> SKIP
>    ([fdo#109271] / [fdo#111827]) +4 similar issues
>  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:shard-kbl: NOTRUN ->
>    SKIP ([fdo#109271] / [fdo#111827]) +8 similar issues
>  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:shard-skl: NOTRUN -
>    > SKIP ([fdo#109271] / [fdo#111827])
>  * igt@kms_content_protection@legacy:shard-kbl: NOTRUN -> TIMEOUT
>    ([i915#1319])shard-apl: NOTRUN -> TIMEOUT ([i915#1319])
>  * igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:shard-tglb:
>    NOTRUN -> SKIP ([i915#3359]) +2 similar issues
>  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:shard-tglb: NOTRUN -
>    > SKIP ([fdo#109279] / [i915#3359])
>  * igt@kms_cursor_crc@pipe-d-cursor-suspend:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271]) +166 similar issues
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:shard-skl: PASS -> FAIL
>    ([i915#2346]) +1 similar issue
>  * igt@kms_cursor_legacy@pipe-d-single-bo:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#533]) +1 similar issue
>  * igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:shard-skl: PASS ->
>    FAIL ([i915#2122])
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:shard-
>    glk: PASS -> FAIL ([i915#79])
>  * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1:shard-skl: PASS
>    -> DMESG-WARN ([i915#1982])
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:shard-iclb:
>    PASS -> SKIP ([i915#3701])
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-
>    cpu:shard-tglb: NOTRUN -> SKIP ([fdo#111825]) +13 similar issues
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:shard-apl: NOTRUN ->
>    FAIL ([fdo#108145] / [i915#265])shard-kbl: NOTRUN -> FAIL
>    ([fdo#108145] / [i915#265])
>  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:shard-skl: PASS ->
>    FAIL ([fdo#108145] / [i915#265]) +2 similar issues
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:shard-apl: NOTRUN
>    -> SKIP ([fdo#109271] / [i915#658]) +2 similar issuesshard-kbl:
>    NOTRUN -> SKIP ([fdo#109271] / [i915#658]) +3 similar issues
>  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:shard-tglb:
>    NOTRUN -> SKIP ([i915#2920])
>  * igt@kms_psr@psr2_cursor_blt:shard-iclb: PASS -> SKIP ([fdo#109441])
>    +1 similar issue
>  * igt@kms_psr@psr2_sprite_plane_move:shard-tglb: NOTRUN -> FAIL
>    ([i915#132] / [i915#3467])
>  * igt@kms_vblank@pipe-b-ts-continuation-suspend:shard-apl: PASS ->
>    DMESG-WARN ([i915#180]) +4 similar issues
>  * igt@kms_writeback@writeback-check-output:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#2437])
>  * igt@nouveau_crc@pipe-a-source-outp-complete:shard-tglb: NOTRUN ->
>    SKIP ([i915#2530])
>  * igt@nouveau_crc@pipe-a-source-outp-inactive:shard-skl: NOTRUN ->
>    SKIP ([fdo#109271]) +19 similar issues
>  * igt@perf@polling-parameterized:shard-skl: PASS -> FAIL ([i915#1542])
>  * igt@perf_pmu@event-wait@rcs0:shard-tglb: NOTRUN -> SKIP
>    ([fdo#112283])
>  * igt@prime_nv_pcopy@test2:shard-tglb: NOTRUN -> SKIP ([fdo#109291])
>  * igt@prime_nv_test@i915_nv_sharing:shard-snb: NOTRUN -> SKIP
>    ([fdo#109271]) +24 similar issues
>  * igt@prime_vgem@fence-read-hang:shard-tglb: NOTRUN -> SKIP
>    ([fdo#109295])
>  * igt@sysfs_clients@sema-10:shard-kbl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#2994])shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#2994])
> Possible fixes * igt@fbdev@unaligned-read:{shard-rkl}: (SKIP, SKIP) ([i915#2582]) ->
>    PASS
>  * igt@gem_ctx_persistence@many-contexts:{shard-rkl}: (PASS, FAIL)
>    ([i915#2410]) -> PASS
>  * igt@gem_eio@unwedge-stress:shard-skl: TIMEOUT ([i915#3063]) -> PASS
>  * igt@gem_exec_fair@basic-none-solo@rcs0:{shard-rkl}: FAIL
>    ([i915#2842]) -> PASS
>  * igt@gem_exec_fair@basic-none@rcs0:shard-glk: FAIL ([i915#2842]) ->
>    PASS +1 similar issue
>  * igt@gem_exec_fair@basic-none@vcs0:shard-kbl: FAIL ([i915#2842]) ->
>    PASS +1 similar issue
>  * igt@gem_ex


--=-TbvjkXGpf07bxx57iCg5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;"><div>On Tue, 2021-11-30 at 01:50 +0000, Patchwork wrot=
e:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2=
px #729fcf solid;padding-left:1ex"><div><b>Patch Details</b></div><div><tab=
le><tbody><tr><td><b>Series:</b></td><td>drm/i915: Update error capture cod=
e to avoid using the current vma state</td></tr><tr><td><b>URL:</b></td><td=
><a href=3D"https://patchwork.freedesktop.org/series/97385/">https://patchw=
ork.freedesktop.org/series/97385/</a></td></tr><tr><td><b>State:</b></td><t=
d>failure</td></tr> <tr><td><b>Details:</b></td><td><a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/index.html">https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21696/index.html</a></td></tr></tbody></ta=
ble> </div><h1>CI Bug Log - changes from CI_DRM_10939_full -&gt; Patchwork_=
21696_full</h1><h2>Summary</h2><p><strong>FAILURE</strong></p><p>Serious un=
known changes coming with Patchwork_21696_full absolutely need to be<br> ve=
rified manually.</p><p>If you think the reported changes have nothing to do=
 with the changes<br> introduced in Patchwork_21696_full, please notify you=
r bug team to allow them<br> to document this new failure mode, which will =
reduce false positives in CI.</p><h2>Participating hosts (11 -&gt; 10)</h2>=
<p>Missing (1): pig-kbl-iris </p><h2>Possible new issues</h2><p>Here are th=
e unknown changes that may have been introduced in Patchwork_21696_full:</p=
><h3>IGT changes</h3><h4>Possible regressions</h4><ul><li>igt@kms_flip@busy=
-flip@b-edp1:</li><ul><li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10939/shard-tglb8/igt@kms_flip@busy-flip@b-edp1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21696/shard-tglb8/igt@kms_flip@busy-flip@b-edp1.html">INCOMPLETE</a></li=
></ul></ul></blockquote><div><br></div><div><br></div><div>Lakshmi,</div><d=
iv><br></div><div>This failure is unrelated.</div><div><br></div><div>Thank=
s,</div><div>Thomas</div><div><br></div><div><br></div><div><br></div><div>=
<br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left=
:2px #729fcf solid;padding-left:1ex"><h2>Known issues</h2><p>Here are the c=
hanges found in Patchwork_21696_full that come from known issues:</p><h3>CI=
 changes</h3><h4>Possible fixes</h4><ul><li><p>boot:</p><ul><li><p>shard-sk=
l: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-=
skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_10939/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl8/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl8/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_10939/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10939/shard-skl7/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl7/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/sh=
ard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_10939/shard-skl6/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl6/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10939/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_10939/shard-skl5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl4/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1093=
9/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_10939/shard-skl4/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl3/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-s=
kl3/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10939/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10939/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10939/shard-skl10/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl10/boot.html">=
PASS</a>) ([i915#4337]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl9/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl8/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl7/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl6/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl6/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl4/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl3/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-skl1/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/s=
hard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21696/shard-skl10/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl10/boot.html">P=
ASS</a>)</p></li><li><p>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_10939/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl1/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard=
-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_10939/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl2/boo=
t.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10939/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_10939/shard-apl2/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl3/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/s=
hard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_10939/shard-apl3/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl3/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl4=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10939/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_10939/shard-apl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0939/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10939/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shar=
d-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10939/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-apl8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10939/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_10939/shard-apl8/boot.html">PASS</a>) ([i915#4386]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl8/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl1/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl2/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl3/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl4/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl6/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl6/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl6/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-apl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl7/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2169=
6/shard-apl8/boot.html">PASS</a>)</p></li></ul></li></ul><h3>IGT changes</h=
3><h4>Issues hit</h4><ul><li><p>igt@feature_discovery@display-4x:</p><ul><l=
i>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21696/shard-apl6/igt@feature_discovery@display-4x.html">SKIP</=
a> ([fdo#109271]) +63 similar issues</li></ul></li><li><p>igt@gem_exec_capt=
ure@pi@rcs0:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_10939/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
696/shard-skl4/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#454=
7])</li></ul></li><li><p>igt@gem_exec_fair@basic-deadline:</p><ul><li>shard=
-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21696/shard-skl9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i9=
15#2846])</li></ul></li><li><p>igt@gem_exec_fair@basic-none-solo@rcs0:</p><=
ul><li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10939/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/sha=
rd-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])=
 +2 similar issues</li></ul></li><li><p>igt@gem_exec_fair@basic-none@vecs0:=
</p><ul><li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10939/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/sh=
ard-apl1/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</l=
i></ul></li><li><p>igt@gem_exec_fair@basic-pace@bcs0:</p><ul><li>shard-tglb=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21696/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915=
#2842]) +4 similar issues</li></ul></li><li><p>igt@gem_exec_fair@basic-thro=
ttle@rcs0:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10939/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21696/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> =
([i915#2842])</li></ul></li><li><p>igt@gem_lmem_swapping@heavy-verify-multi=
:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21696/shard-kbl2/igt@gem_lmem_swapping@heavy-verify=
-multi.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li></=
ul></li><li><p>igt@gem_lmem_swapping@random:</p><ul><li>shard-apl: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/sh=
ard-apl6/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#=
4613])</li></ul></li><li><p>igt@gem_lmem_swapping@smem-oom:</p><ul><li>shar=
d-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21696/shard-skl9/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([fdo=
#109271] / [i915#4613])</li></ul></li><li><p>igt@gem_pread@exhaustion:</p><=
ul><li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-apl1/igt@gem_pread@exhaustion.html">WARN</a> =
([i915#2658])</li></ul></li><li><p>igt@gem_pwrite@basic-exhaustion:</p><ul>=
<li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21696/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html">WARN<=
/a> ([i915#2658])</li></ul></li><li><p>igt@gem_pxp@fail-invalid-protected-c=
ontext:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/igt@gem_pxp@fail-invalid-p=
rotected-context.html">SKIP</a> ([i915#4270])</li></ul></li><li><p>igt@gem_=
softpin@evict-snoop-interruptible:</p><ul><li>shard-tglb: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6=
/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> ([fdo#109312])</l=
i></ul></li><li><p>igt@gem_userptr_blits@dmabuf-sync:</p><ul><li>shard-kbl:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21696/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#10=
9271] / [i915#3323])</li></ul></li><li><p>igt@gem_userptr_blits@input-check=
ing:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21696/shard-skl9/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> ([i915#3002])</li></ul></li><li><p>igt@gem_worka=
rounds@suspend-resume-fd:</p><ul><li>shard-kbl: <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-kbl3/igt@gem_workarounds@suspen=
d-resume-fd.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21696/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.=
html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li></ul></li><li><p>ig=
t@gen9_exec_parse@basic-rejected:</p><ul><li>shard-tglb: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/=
igt@gen9_exec_parse@basic-rejected.html">SKIP</a> ([i915#2856])</li></ul></=
li><li><p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p><ul><li>shard-tglb: NO=
TRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
696/shard-tglb6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">SKIP</a> ([fdo=
#111615]) +1 similar issue</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-max=
-hw-stride-32bpp-rotate-180-hflip:</p><ul><li>shard-kbl: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-kbl7/i=
gt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> =
([fdo#109271] / [i915#3777]) +1 similar issue</li></ul></li><li><p>igt@kms_=
ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p><ul><li>sha=
rd-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21696/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tile=
d_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +9 similar is=
sues</li></ul></li><li><p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen=
12_mc_ccs:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/igt@kms_ccs@pipe-a-miss=
ing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#388=
6])</li></ul></li><li><p>igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:</p=
><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-tglb6/igt@kms_ccs@pipe-b-bad-aux-stride-yf=
_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li></ul></li><li><p=
>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p><ul><li>sh=
ard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21696/shard-skl9/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12=
_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li=
></ul></li><li><p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:<=
/p><ul><li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21696/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y=
_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar =
issues</li></ul></li><li><p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_t=
iled_ccs:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/igt@kms_ccs@pipe-c-crc-p=
rimary-rotation-180-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar iss=
ue</li></ul></li><li><p>igt@kms_chamelium@vga-frame-dump:</p><ul><li>shard-=
tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21696/shard-tglb6/igt@kms_chamelium@vga-frame-dump.html">SKIP</a> ([f=
do#109284] / [fdo#111827]) +4 similar issues</li></ul></li><li><p>igt@kms_c=
olor_chamelium@pipe-a-ctm-0-5:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl6/igt=
@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111=
827]) +4 similar issues</li></ul></li><li><p>igt@kms_color_chamelium@pipe-a=
-ctm-blue-to-red:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-kbl2/igt@kms_color_cham=
elium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +=
8 similar issues</li></ul></li><li><p>igt@kms_color_chamelium@pipe-d-ctm-li=
mited-range:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl9/igt@kms_color_chamelium=
@pipe-d-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>=
</ul></li><li><p>igt@kms_content_protection@legacy:</p><ul><li><p>shard-kbl=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21696/shard-kbl4/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i9=
15#1319])</p></li><li><p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl6/igt@kms_content_protec=
tion@legacy.html">TIMEOUT</a> ([i915#1319])</p></li></ul></li><li><p>igt@km=
s_cursor_crc@pipe-b-cursor-max-size-onscreen:</p><ul><li>shard-tglb: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/=
shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html">SKIP</=
a> ([i915#3359]) +2 similar issues</li></ul></li><li><p>igt@kms_cursor_crc@=
pipe-d-cursor-512x512-random:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/ig=
t@kms_cursor_crc@pipe-d-cursor-512x512-random.html">SKIP</a> ([fdo#109279] =
/ [i915#3359])</li></ul></li><li><p>igt@kms_cursor_crc@pipe-d-cursor-suspen=
d:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21696/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-=
suspend.html">SKIP</a> ([fdo#109271]) +166 similar issues</li></ul></li><li=
><p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p><ul><li>shard-skl: <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl7/igt=
@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl5/igt@kms_c=
ursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> ([i915#2346]) +1 similar =
issue</li></ul></li><li><p>igt@kms_cursor_legacy@pipe-d-single-bo:</p><ul><=
li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21696/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html"=
>SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li></ul></li><li><p=
>igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:</p><ul><li>shard-skl: <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl7/igt=
@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl6/igt@km=
s_flip@flip-vs-blocking-wf-vblank@b-edp1.html">FAIL</a> ([i915#2122])</li><=
/ul></li><li><p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1=
:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10939/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@c-hdmi-a1.html">FAIL</a> ([i915#79])</li></ul></li><li><p>igt@kms=
_flip@flip-vs-wf_vblank-interruptible@a-edp1:</p><ul><li>shard-skl: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl7/igt@km=
s_flip@flip-vs-wf_vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl5/igt=
@kms_flip@flip-vs-wf_vblank-interruptible@a-edp1.html">DMESG-WARN</a> ([i91=
5#1982])</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-1=
6bpp-ytile:</p><ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_10939/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-yti=
le-to-16bpp-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21696/shard-iclb2/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-16bpp-ytile.html">SKIP</a> ([i915#3701])</li></ul></li><li><p>=
igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p=
><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21696/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-=
2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +13 simil=
ar issues</li></ul></li><li><p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic=
:</p><ul><li><p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21696/shard-apl1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</p></li><li><p>sha=
rd-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21696/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html"=
>FAIL</a> ([fdo#108145] / [i915#265])</p></li></ul></li><li><p>igt@kms_plan=
e_alpha_blend@pipe-c-coverage-7efc:</p><ul><li>shard-skl: <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl9/igt@kms_plane_al=
pha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl6/igt@kms_plane_alpha=
_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 s=
imilar issues</li></ul></li><li><p>igt@kms_psr2_sf@overlay-plane-update-sf-=
dmg-area-5:</p><ul><li><p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-apl6/igt@kms_psr2_sf@overl=
ay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2=
 similar issues</p></li><li><p>shard-kbl: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-kbl4/igt@kms_psr2_sf@=
overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658=
]) +3 similar issues</p></li></ul></li><li><p>igt@kms_psr2_sf@primary-plane=
-update-sf-dmg-area-2:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/igt@kms_psr=
2_sf@primary-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li></=
ul></li><li><p>igt@kms_psr@psr2_cursor_blt:</p><ul><li>shard-iclb: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-iclb2/igt@k=
ms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21696/shard-iclb4/igt@kms_psr@psr2_cursor_bl=
t.html">SKIP</a> ([fdo#109441]) +1 similar issue</li></ul></li><li><p>igt@k=
ms_psr@psr2_sprite_plane_move:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/ig=
t@kms_psr@psr2_sprite_plane_move.html">FAIL</a> ([i915#132] / [i915#3467])<=
/li></ul></li><li><p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p><ul>=
<li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0939/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696=
/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DMESG-WARN<=
/a> ([i915#180]) +4 similar issues</li></ul></li><li><p>igt@kms_writeback@w=
riteback-check-output:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-kbl2/igt@kms_write=
back@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li=
></ul></li><li><p>igt@nouveau_crc@pipe-a-source-outp-complete:</p><ul><li>s=
hard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21696/shard-tglb6/igt@nouveau_crc@pipe-a-source-outp-complete.ht=
ml">SKIP</a> ([i915#2530])</li></ul></li><li><p>igt@nouveau_crc@pipe-a-sour=
ce-outp-inactive:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl9/igt@nouveau_crc@pi=
pe-a-source-outp-inactive.html">SKIP</a> ([fdo#109271]) +19 similar issues<=
/li></ul></li><li><p>igt@perf@polling-parameterized:</p><ul><li>shard-skl: =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl1=
/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-skl8/igt@perf@polling-p=
arameterized.html">FAIL</a> ([i915#1542])</li></ul></li><li><p>igt@perf_pmu=
@event-wait@rcs0:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/igt@perf_pmu@eve=
nt-wait@rcs0.html">SKIP</a> ([fdo#112283])</li></ul></li><li><p>igt@prime_n=
v_pcopy@test2:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-tglb6/igt@prime_nv_pcopy@=
test2.html">SKIP</a> ([fdo#109291])</li></ul></li><li><p>igt@prime_nv_test@=
i915_nv_sharing:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-snb7/igt@prime_nv_test@i=
915_nv_sharing.html">SKIP</a> ([fdo#109271]) +24 similar issues</li></ul></=
li><li><p>igt@prime_vgem@fence-read-hang:</p><ul><li>shard-tglb: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shar=
d-tglb6/igt@prime_vgem@fence-read-hang.html">SKIP</a> ([fdo#109295])</li></=
ul></li><li><p>igt@sysfs_clients@sema-10:</p><ul><li><p>shard-kbl: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/sh=
ard-kbl3/igt@sysfs_clients@sema-10.html">SKIP</a> ([fdo#109271] / [i915#299=
4])</p></li><li><p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21696/shard-apl1/igt@sysfs_clients@sema-10.ht=
ml">SKIP</a> ([fdo#109271] / [i915#2994])</p></li></ul></li></ul><h4>Possib=
le fixes</h4><ul><li><p>igt@fbdev@unaligned-read:</p><ul><li>{shard-rkl}: (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-rkl-=
4/igt@fbdev@unaligned-read.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_10939/shard-rkl-2/igt@fbdev@unaligned-read.html"=
>SKIP</a>) ([i915#2582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21696/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a>=
</li></ul></li><li><p>igt@gem_ctx_persistence@many-contexts:</p><ul><li>{sh=
ard-rkl}: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939=
/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-rkl-4/igt@g=
em_ctx_persistence@many-contexts.html">FAIL</a>) ([i915#2410]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-rkl-1/i=
gt@gem_ctx_persistence@many-contexts.html">PASS</a></li></ul></li><li><p>ig=
t@gem_eio@unwedge-stress:</p><ul><li>shard-skl: <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-skl4/igt@gem_eio@unwedge-stress=
.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21696/shard-skl10/igt@gem_eio@unwedge-stress.html=
">PASS</a></li></ul></li><li><p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>=
<ul><li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10939/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a=
> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21696/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PAS=
S</a></li></ul></li><li><p>igt@gem_exec_fair@basic-none@rcs0:</p><ul><li>sh=
ard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/s=
hard-glk9/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/sha=
rd-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +1 similar issue</=
li></ul></li><li><p>igt@gem_exec_fair@basic-none@vcs0:</p><ul><li>shard-kbl=
: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10939/shard-kb=
l7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21696/shard-kbl3=
/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 similar issue</li></ul=
></li><li><p>igt@gem_ex</p></li></ul></blockquote><div><br></div><div><span=
></span></div></body></html>

--=-TbvjkXGpf07bxx57iCg5--

