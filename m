Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EE94C6F0F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 15:13:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3823A10E826;
	Mon, 28 Feb 2022 14:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3196510E825
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Feb 2022 14:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646057593; x=1677593593;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version; bh=F0xw5WjldnW+/tK6lQNn09S3acCNSa4KeaMrZWcAWYA=;
 b=I/GQm2dHzygD7j6HbikiteAjp7DK2dKi78TX5N7j22VwFpDjqmHMCeQa
 gCrGNfGVD+JegVD25Dv7bATR6jBRtbxu5R0Hjq3agWpY9zcfwF9MkaWvr
 kJiZRVy11kZNBtyFIFr8cVJ0ZuEntZLapN2e7KEgcDm1D1kx8s/XKIkCV
 +VXAPQOWv6kLCjZuSFBiB4jCx5CkiEvYhh97UTuQ71rDUHeH+g6stTeEZ
 nZ+jtPMJ4HB3Gih7kX1/VzOpErp14lABFIruQ+DxHjXrxGqZUjzuwgrnY
 b1HGvfl0TNv94PTm0F4qyOUnV8mKDg+S4sdqiXz9mnmV8tCnBHQmXsduj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="240297803"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; 
 d="scan'208,217";a="240297803"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:07:33 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; 
 d="scan'208,217";a="708651587"
Received: from mmlejnek-mobl2.ger.corp.intel.com (HELO [10.249.254.89])
 ([10.249.254.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 06:07:32 -0800
Message-ID: <162807ee1b383ff33b885a207a7e9d76d1df627e.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Feb 2022 15:07:29 +0100
In-Reply-To: <164555005428.23042.14893972229845281173@emeril.freedesktop.org>
References: <20220222133209.587978-1-thomas.hellstrom@linux.intel.com>
 <164555005428.23042.14893972229845281173@emeril.freedesktop.org>
Content-Type: multipart/alternative; boundary="=-Cuh0t0Lj2RF9O7xqc5/1"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clarify_vma_lifetime_=28rev2=29?=
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


--=-Cuh0t0Lj2RF9O7xqc5/1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2022-02-22 at 17:14 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: Clarify vma lifetime
> (rev2)URL:https://patchwork.freedesktop.org/series/99948/State:failur
> e
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/index.html
> CI Bug Log - changes from CI_DRM_11265_full -> Patchwork_22350_fullSummaryFAILURE
> Serious unknown changes coming with Patchwork_22350_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22350_full, please notify your bug team to
> allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (13 -> 13)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_22350_full:
> IGT changesPossible regressions * igt@i915_pm_dc@dc5-dpms:shard-tglb: PASS -> FAIL
>  * igt@kms_rotation_crc@primary-rotation-180:
>     - shard-tglb: PASS -> INCOMPLETE

Errors are unrelated.

/Thomas



> Known issuesHere are the changes found in Patchwork_22350_full that come from
> known issues:
> IGT changesIssues hit * igt@gem_ctx_isolation@preservation-s3@rcs0:shard-skl: PASS ->
>    INCOMPLETE ([i915#4793])
>  * igt@gem_exec_capture@pi@rcs0:shard-iclb: PASS -> INCOMPLETE
>    ([i915#3371])
>  * igt@gem_exec_capture@pi@vecs0:shard-skl: NOTRUN -> INCOMPLETE
>    ([i915#4547])
>  * igt@gem_exec_fair@basic-pace-share@rcs0:shard-iclb: PASS -> FAIL
>    ([i915#2842])
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-kbl: PASS -> FAIL
>    ([i915#2842])shard-tglb: PASS -> FAIL ([i915#2851])
>  * igt@gem_exec_fair@basic-throttle@rcs0:shard-iclb: PASS -> FAIL
>    ([i915#2849])
>  * igt@gem_huc_copy@huc-copy:shard-tglb: PASS -> SKIP ([i915#2190])
>  * igt@gem_lmem_swapping@basic:shard-kbl: NOTRUN -> SKIP ([fdo#109271]
>    / [i915#4613])
>  * igt@gem_lmem_swapping@random:shard-iclb: NOTRUN -> SKIP
>    ([i915#4613])
>  * igt@gem_pxp@reject-modify-context-protection-off-1:shard-iclb:
>    NOTRUN -> SKIP ([i915#4270]) +1 similar issue
>  * igt@gem_userptr_blits@coherency-unsync:shard-iclb: NOTRUN -> SKIP
>    ([i915#3297])
>  * igt@gem_userptr_blits@dmabuf-sync:shard-skl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#3323])
>  * igt@gen7_exec_parse@chained-batch:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109289]) +1 similar issue
>  * igt@gen9_exec_parse@allowed-all:shard-glk: PASS -> DMESG-WARN
>    ([i915#1436] / [i915#716])
>  * igt@i915_pm_dc@dc6-psr:shard-iclb: NOTRUN -> FAIL ([i915#454])
>  * igt@i915_selftest@mock@hugepages:shard-skl: NOTRUN -> INCOMPLETE
>    ([i915#5123])shard-kbl: NOTRUN -> INCOMPLETE ([i915#5123])
>  * igt@i915_suspend@debugfs-reader:shard-apl: PASS -> DMESG-WARN
>    ([i915#180]) +1 similar issue
>  * igt@kms_atomic_transition@plane-all-modeset-transition:shard-iclb:
>    NOTRUN -> SKIP ([i915#1769])
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-
>    flip:shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777])
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-
>    flip:shard-iclb: NOTRUN -> SKIP ([fdo#110723])
>  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:shard-kbl:
>    NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +2 similar issues
>  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:shard-
>    iclb: NOTRUN -> SKIP ([fdo#109278] / [i915#3886]) +2 similar issues
>  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-
>    y_tiled_gen12_rc_ccs_cc:shard-skl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#3886]) +3 similar issues
>  * igt@kms_chamelium@hdmi-hpd-storm-disable:shard-skl: NOTRUN -> SKIP
>    ([fdo#109271] / [fdo#111827]) +7 similar issues
>  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:shard-kbl: NOTRUN ->
>    SKIP ([fdo#109271] / [fdo#111827]) +4 similar issues
>  * igt@kms_chamelium@vga-hpd-enable-disable-mode:shard-tglb: NOTRUN ->
>    SKIP ([fdo#109284] / [fdo#111827])
>  * igt@kms_color@pipe-d-ctm-max:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109278] / [i915#1149])
>  * igt@kms_color_chamelium@pipe-a-ctm-negative:shard-snb: NOTRUN ->
>    SKIP ([fdo#109271] / [fdo#111827]) +4 similar issues
>  * igt@kms_color_chamelium@pipe-b-gamma:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109284] / [fdo#111827]) +3 similar issues
>  * igt@kms_content_protection@dp-mst-type-0:shard-iclb: NOTRUN -> SKIP
>    ([i915#3116])
>  * igt@kms_content_protection@type1:shard-tglb: NOTRUN -> SKIP
>    ([i915#1063])
>  * igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:shard-tglb: NOTRUN
>    -> SKIP ([i915#3319])
>  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:shard-iclb:
>    NOTRUN -> SKIP ([fdo#109274] / [fdo#109278])
>  * igt@kms_cursor_legacy@pipe-d-torture-move:shard-skl: NOTRUN -> SKIP
>    ([fdo#109271]) +94 similar issues
>  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:shard-skl:
>    PASS -> DMESG-WARN ([i915#1982]) +1 similar issue
>  * igt@kms_fbcon_fbt@fbc-suspend:shard-kbl: PASS -> INCOMPLETE
>    ([i915#180] / [i915#636])
>  * igt@kms_flip@2x-flip-vs-panning:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109274]) +1 similar issue
>  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:shard-skl: PASS -> FAIL
>    ([i915#79])
>  * igt@kms_flip@plain-flip-ts-check@c-edp1:shard-skl: PASS -> FAIL
>    ([i915#2122]) +1 similar issue
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>    downscaling:shard-iclb: NOTRUN -> SKIP ([i915#2587])
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-
>    blt:shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +55 similar issues
>  * igt@kms_frontbuffer_tracking@fbc-suspend:shard-kbl: PASS -> DMESG-
>    WARN ([i915#180]) +4 similar issues
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-
>    blt:shard-tglb: NOTRUN -> SKIP ([fdo#109280] / [fdo#111825]) +2
>    similar issues
>  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:shard-snb:
>    NOTRUN -> SKIP ([fdo#109271]) +89 similar issues
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:shard-
>    iclb: NOTRUN -> SKIP ([fdo#109280]) +14 similar issues
>  * igt@kms_frontbuffer_tracking@psr-suspend:shard-iclb: PASS -> FAIL
>    ([i915#1888] / [i915#2546])
>  * igt@kms_hdr@bpc-switch:shard-skl: PASS -> FAIL ([i915#1188])
>  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:shard-
>    kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:shard-skl: NOTRUN ->
>    SKIP ([fdo#109271] / [i915#533])
>  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:shard-skl:
>    NOTRUN -> FAIL ([i915#265])
>  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:shard-skl: PASS ->
>    FAIL ([fdo#108145] / [i915#265])
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:shard-skl: NOTRUN -
>    > FAIL ([fdo#108145] / [i915#265]) +1 similar issue
>  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:shard-kbl: NOTRUN ->
>    FAIL ([fdo#108145] / [i915#265])
>  * igt@kms_psr2_su@frontbuffer-xrgb8888:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109642] / [fdo#111068] / [i915#658])
>  * igt@kms_psr2_su@page_flip-xrgb8888:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#658])
>  * igt@kms_psr@psr2_cursor_mmap_gtt:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109441])
>  * igt@kms_psr@psr2_sprite_plane_move:shard-iclb: PASS -> SKIP
>    ([fdo#109441]) +1 similar issue
>  * igt@kms_vblank@pipe-a-ts-continuation-suspend:shard-kbl: PASS ->
>    DMESG-WARN ([i915#180] / [i915#295])
>  * igt@kms_vblank@pipe-d-ts-continuation-idle-hang:shard-iclb: NOTRUN -
>    > SKIP ([fdo#109278]) +20 similar issues
>  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:shard-iclb:
>    NOTRUN -> SKIP ([i915#2530])
>  * igt@nouveau_crc@pipe-d-ctx-flip-detection:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109278] / [i915#2530])
>  * igt@nouveau_crc@pipe-d-source-outp-inactive:shard-tglb: NOTRUN ->
>    SKIP ([i915#2530])
>  * igt@perf@short-reads:shard-skl: PASS -> FAIL ([i915#51])
>  * igt@prime_nv_pcopy@test1_macro:shard-tglb: NOTRUN -> SKIP
>    ([fdo#109291])
>  * igt@prime_nv_pcopy@test3_5:shard-iclb: NOTRUN -> SKIP ([fdo#109291])
>    +1 similar issue
>  * igt@syncobj_timeline@invalid-transfer-non-existent-point:shard-kbl:
>    NOTRUN -> DMESG-WARN ([i915#5098])
>  * igt@sysfs_clients@fair-7:shard-iclb: NOTRUN -> SKIP ([i915#2994])
> Possible fixes * igt@fbdev@unaligned-write:{shard-rkl}: SKIP ([i915#2582]) -> PASS
>  * igt@gem_ctx_isolation@preservation-s3@vcs0:shard-kbl: DMESG-WARN
>    ([i915#180]) -> PASS +6 similar issues
>  * igt@gem_eio@suspend:{shard-rkl}: (PASS, FAIL) ([i915#5115]) -> PASS
>  * igt@gem_exec_big@single:shard-tglb: TIMEOUT ([i915#2647]) -> PASS
>  * igt@gem_exec_capture@pi@bcs0:shard-skl: INCOMPLETE ([i915#4547]) ->
>    PASS
>  * igt@gem_exec_fair@basic-flow@rcs0:shard-tglb: FAIL ([i915#2842]) ->
>    PASS
>  * igt@gem_exec_fair@basic-none@vecs0:shard-apl: FAIL ([i915#2842]) ->
>    PASS
>  * igt@gem_exec_fair@basic-pace@rcs0:shard-iclb: FAIL ([i915#2842]) ->
>    PASS
>  * igt@gem_exec_whisper@basic-forked:shard-glk: DMESG-WARN ([i915#118])
>    -> PASS
>  * igt@gem_mmap_wc@set-cache-level:{shard-rkl}: SKIP ([i915#1850]) ->
>    PASS
>  * igt@i915_pm_dc@dc9-dpms:shard-iclb: SKIP ([i915#4281]) -> PASS
>  * igt@i915_pm_rpm@modeset-lpsp:{shard-rkl}: (PASS, SKIP) ([i915#1397])
>    -> PASS
>  * igt@i915_pm_rpm@modeset-lpsp-stress:{shard-rkl}: SKIP ([i915#1397])
>    -> PASS
>  * igt@i915_selftest@live@hangcheck:shard-snb: INCOMPLETE ([i915#3921])
>    -> PASS
>  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:{shard-rkl}:
>    (SKIP, SKIP) ([i915#1845]) -> PASS +3 similar issues
>  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:{shard-
>    rkl}: (SKIP, SKIP) ([i915#1845] / [i915#4098]) -> PASS
>  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-
>    y_tiled_gen12_rc_ccs_cc:{shard-rkl}: SKIP ([i915#1845] /
>    [i915#4098]) -> PASS +2 similar issues
>  * igt@kms_color@pipe-b-ctm-0-25:{shard-rkl}: (SKIP, PASS) ([i915#1149]
>    / [i915#4098]) -> PASS
>  * igt@kms_concurrent@pipe-b:{shard-rkl}: SKIP ([i915#1845] /
>    [i915#4070]) -> PASS
>  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:{shard-rkl}: SKIP
>    ([fdo#112022] / [i915#4070]) -> PASS +6 similar issues
>  * igt@kms_cursor_crc@pipe-b-cursor-alpha-transparent:{shard-rkl}:
>    (SKIP, SKIP) ([fdo#112022] / [i915#4070]) -> PASS +2 similar issues
>  * igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:{shard-rkl}: SKIP
>    ([i915#1849] / [i915#4070]) -> PASS +3 similar issues
>  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:{shard-rkl}:
>    (SKIP, [SKIP][145]) ([i915#1849] / [i915#4070] / [i915#4098]) ->
>    [PASS][146]


--=-Cuh0t0Lj2RF9O7xqc5/1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>On Tue, 2022-02-22 at 17:14 +0000, Patchwork wrote:</div><blockq=
uote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf soli=
d;padding-left:1ex"><div><b>Patch Details</b></div><div><table><tbody><tr><=
td><b>Series:</b></td><td>drm/i915: Clarify vma lifetime (rev2)</td></tr><t=
r><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/seri=
es/99948/">https://patchwork.freedesktop.org/series/99948/</a></td></tr><tr=
><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td><t=
d><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/index=
.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/index.html<=
/a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from CI_DRM_11=
265_full -&gt; Patchwork_22350_full</h1><h2>Summary</h2><p><strong>FAILURE<=
/strong></p><p>Serious unknown changes coming with Patchwork_22350_full abs=
olutely need to be<br> verified manually.</p><p>If you think the reported c=
hanges have nothing to do with the changes<br> introduced in Patchwork_2235=
0_full, please notify your bug team to allow them<br> to document this new =
failure mode, which will reduce false positives in CI.</p><h2>Participating=
 hosts (13 -&gt; 13)</h2><p>No changes in participating hosts</p><h2>Possib=
le new issues</h2><p>Here are the unknown changes that may have been introd=
uced in Patchwork_22350_full:</p><h3>IGT changes</h3><h4>Possible regressio=
ns</h4><ul><li><p>igt@i915_pm_dc@dc5-dpms:</p><ul><li>shard-tglb: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-tglb3/igt@i=
915_pm_dc@dc5-dpms.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22350/shard-tglb3/igt@i915_pm_dc@dc5-dpms.html">=
FAIL</a></li></ul></li><li><p>igt@kms_rotation_crc@primary-rotation-180:</p=
></li><ul><li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_11265/shard-tglb6/igt@kms_rotation_crc@primary-rotation-180.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22350/shard-tglb6/igt@kms_rotation_crc@primary-rotation-180.html">INCOMP=
LETE</a></li></ul></ul></blockquote><div><br></div><div>Errors are unrelate=
d.</div><div><br></div><div>/Thomas</div><div><br></div><div><br></div><div=
><br></div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-lef=
t:2px #729fcf solid;padding-left:1ex"><h2>Known issues</h2><p>Here are the =
changes found in Patchwork_22350_full that come from known issues:</p><h3>I=
GT changes</h3><h4>Issues hit</h4><ul><li><p>igt@gem_ctx_isolation@preserva=
tion-s3@rcs0:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11265/shard-skl1/igt@gem_ctx_isolation@preservation-s3@=
rcs0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22350/shard-skl9/igt@gem_ctx_isolation@preservation-s3@rcs0.ht=
ml">INCOMPLETE</a> ([i915#4793])</li></ul></li><li><p>igt@gem_exec_capture@=
pi@rcs0:</p><ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11265/shard-iclb1/igt@gem_exec_capture@pi@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2235=
0/shard-iclb3/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#3371=
])</li></ul></li><li><p>igt@gem_exec_capture@pi@vecs0:</p><ul><li>shard-skl=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22350/shard-skl9/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i91=
5#4547])</li></ul></li><li><p>igt@gem_exec_fair@basic-pace-share@rcs0:</p><=
ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11265/shard-iclb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/=
shard-iclb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2=
842])</li></ul></li><li><p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul><=
li><p>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11265/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shar=
d-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842])<=
/p></li><li><p>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_11265/shard-tglb5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22350/shard-tglb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([=
i915#2851])</p></li></ul></li><li><p>igt@gem_exec_fair@basic-throttle@rcs0:=
</p><ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11265/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
50/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li></ul></li><li><p>igt@gem_huc_copy@huc-copy:</p><ul><li>shard-tgl=
b: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-t=
glb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-tglb6/igt@gem_huc_copy@h=
uc-copy.html">SKIP</a> ([i915#2190])</li></ul></li><li><p>igt@gem_lmem_swap=
ping@basic:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl4/igt@gem_lmem_swapping@ba=
sic.html">SKIP</a> ([fdo#109271] / [i915#4613])</li></ul></li><li><p>igt@ge=
m_lmem_swapping@random:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb6/igt@gem_lm=
em_swapping@random.html">SKIP</a> ([i915#4613])</li></ul></li><li><p>igt@ge=
m_pxp@reject-modify-context-protection-off-1:</p><ul><li>shard-iclb: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/=
shard-iclb3/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</=
a> ([i915#4270]) +1 similar issue</li></ul></li><li><p>igt@gem_userptr_blit=
s@coherency-unsync:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb6/igt@gem_userpt=
r_blits@coherency-unsync.html">SKIP</a> ([i915#3297])</li></ul></li><li><p>=
igt@gem_userptr_blits@dmabuf-sync:</p><ul><li>shard-skl: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-skl7/i=
gt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323]=
)</li></ul></li><li><p>igt@gen7_exec_parse@chained-batch:</p><ul><li>shard-=
iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22350/shard-iclb6/igt@gen7_exec_parse@chained-batch.html">SKIP</a> ([=
fdo#109289]) +1 similar issue</li></ul></li><li><p>igt@gen9_exec_parse@allo=
wed-all:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_11265/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
50/shard-glk2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1=
436] / [i915#716])</li></ul></li><li><p>igt@i915_pm_dc@dc6-psr:</p><ul><li>=
shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22350/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#=
454])</li></ul></li><li><p>igt@i915_selftest@mock@hugepages:</p><ul><li><p>=
shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22350/shard-skl1/igt@i915_selftest@mock@hugepages.html">INCOMPLE=
TE</a> ([i915#5123])</p></li><li><p>shard-kbl: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl1/igt@i915_se=
lftest@mock@hugepages.html">INCOMPLETE</a> ([i915#5123])</p></li></ul></li>=
<li><p>igt@i915_suspend@debugfs-reader:</p><ul><li>shard-apl: <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-apl3/igt@i915_sus=
pend@debugfs-reader.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22350/shard-apl2/igt@i915_suspend@debugfs-reade=
r.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li></ul></li><li><p>i=
gt@kms_atomic_transition@plane-all-modeset-transition:</p><ul><li>shard-icl=
b: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22350/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition=
.html">SKIP</a> ([i915#1769])</li></ul></li><li><p>igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-180-hflip-async-flip:</p><ul><li>shard-skl: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350=
/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-asy=
nc-flip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li></ul></li><li><p>ig=
t@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p><ul><li=
>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22350/shard-iclb6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-=
rotate-180-async-flip.html">SKIP</a> ([fdo#110723])</li></ul></li><li><p>ig=
t@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p><ul><li>shard-k=
bl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22350/shard-kbl3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_=
ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li></ul>=
</li><li><p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</=
p><ul><li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22350/shard-iclb6/igt@kms_ccs@pipe-c-ccs-on-another-b=
o-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 si=
milar issues</li></ul></li><li><p>igt@kms_ccs@pipe-c-crc-primary-rotation-1=
80-y_tiled_gen12_rc_ccs_cc:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-skl7/igt@kms_=
ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> =
([fdo#109271] / [i915#3886]) +3 similar issues</li></ul></li><li><p>igt@kms=
_chamelium@hdmi-hpd-storm-disable:</p><ul><li>shard-skl: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-skl1/i=
gt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo=
#111827]) +7 similar issues</li></ul></li><li><p>igt@kms_chamelium@hdmi-hpd=
-with-enabled-mode:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl3/igt@kms_chameliu=
m@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +=
4 similar issues</li></ul></li><li><p>igt@kms_chamelium@vga-hpd-enable-disa=
ble-mode:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22350/shard-tglb2/igt@kms_chamelium@vga-hp=
d-enable-disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li></ul=
></li><li><p>igt@kms_color@pipe-d-ctm-max:</p><ul><li>shard-iclb: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/sha=
rd-iclb6/igt@kms_color@pipe-d-ctm-max.html">SKIP</a> ([fdo#109278] / [i915#=
1149])</li></ul></li><li><p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p=
><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22350/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-neg=
ative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li></=
ul></li><li><p>igt@kms_color_chamelium@pipe-b-gamma:</p><ul><li>shard-iclb:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22350/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html">SKIP</a> ([fd=
o#109284] / [fdo#111827]) +3 similar issues</li></ul></li><li><p>igt@kms_co=
ntent_protection@dp-mst-type-0:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb6/ig=
t@kms_content_protection@dp-mst-type-0.html">SKIP</a> ([i915#3116])</li></u=
l></li><li><p>igt@kms_content_protection@type1:</p><ul><li>shard-tglb: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2235=
0/shard-tglb2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#1063])=
</li></ul></li><li><p>igt@kms_cursor_crc@pipe-b-cursor-32x32-offscreen:</p>=
<ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22350/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x3=
2-offscreen.html">SKIP</a> ([i915#3319])</li></ul></li><li><p>igt@kms_curso=
r_legacy@cursorb-vs-flipa-varying-size:</p><ul><li>shard-iclb: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-=
iclb6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> ([=
fdo#109274] / [fdo#109278])</li></ul></li><li><p>igt@kms_cursor_legacy@pipe=
-d-torture-move:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-skl7/igt@kms_cursor_lega=
cy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +94 similar issues</li=
></ul></li><li><p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled=
:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11265/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-=
untiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22350/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-m=
map-cpu-untiled.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li></u=
l></li><li><p>igt@kms_fbcon_fbt@fbc-suspend:</p><ul><li>shard-kbl: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-kbl3/igt@km=
s_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22350/shard-kbl7/igt@kms_fbcon_fbt@fbc-susp=
end.html">INCOMPLETE</a> ([i915#180] / [i915#636])</li></ul></li><li><p>igt=
@kms_flip@2x-flip-vs-panning:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb6/ig=
t@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([fdo#109274]) +1 similar issu=
e</li></ul></li><li><p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p><ul><=
li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
265/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/sha=
rd-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> ([i915#79=
])</li></ul></li><li><p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p><ul><li=
>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1126=
5/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-s=
kl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i915#2122]) +1=
 similar issue</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-32bpp-ytilegen12rcccs-downscaling:</p><ul><li>shard-iclb: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-=
iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-dow=
nscaling.html">SKIP</a> ([i915#2587])</li></ul></li><li><p>igt@kms_frontbuf=
fer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p><ul><li>shard-kbl: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2235=
0/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-bl=
t.html">SKIP</a> ([fdo#109271]) +55 similar issues</li></ul></li><li><p>igt=
@kms_frontbuffer_tracking@fbc-suspend:</p><ul><li>shard-kbl: <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-kbl4/igt@kms_front=
buffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl1/igt@kms_frontbuffer_tr=
acking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>=
</ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plfl=
ip-blt:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22350/shard-tglb2/igt@kms_frontbuffer_tracki=
ng@fbcpsr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109280] / [fdo#=
111825]) +2 similar issues</li></ul></li><li><p>igt@kms_frontbuffer_trackin=
g@fbcpsr-rgb101010-draw-blt:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-snb7/igt@kms=
_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([fdo#109271=
]) +89 similar issues</li></ul></li><li><p>igt@kms_frontbuffer_tracking@psr=
-2p-primscrn-shrfb-plflip-blt:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb6/ig=
t@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> =
([fdo#109280]) +14 similar issues</li></ul></li><li><p>igt@kms_frontbuffer_=
tracking@psr-suspend:</p><ul><li>shard-iclb: <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11265/shard-iclb6/igt@kms_frontbuffer_tracking=
@psr-suspend.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22350/shard-iclb5/igt@kms_frontbuffer_tracking@psr-sus=
pend.html">FAIL</a> ([i915#1888] / [i915#2546])</li></ul></li><li><p>igt@km=
s_hdr@bpc-switch:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11265/shard-skl9/igt@kms_hdr@bpc-switch.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
50/shard-skl8/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li></ul>=
</li><li><p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</=
p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22350/shard-kbl4/igt@kms_pipe_crc_basic@nonblocking-cr=
c-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li></ul=
></li><li><p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p><ul><li>sha=
rd-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22350/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.htm=
l">SKIP</a> ([fdo#109271] / [i915#533])</li></ul></li><li><p>igt@kms_plane_=
alpha_blend@pipe-a-alpha-transparent-fb:</p><ul><li>shard-skl: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-=
skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> =
([i915#265])</li></ul></li><li><p>igt@kms_plane_alpha_blend@pipe-a-coverage=
-7efc:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11265/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7ef=
c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22350/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.=
html">FAIL</a> ([fdo#108145] / [i915#265])</li></ul></li><li><p>igt@kms_pla=
ne_alpha_blend@pipe-b-alpha-opaque-fb:</p><ul><li>shard-skl: NOTRUN -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-sk=
l7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html">FAIL</a> ([fdo#10=
8145] / [i915#265]) +1 similar issue</li></ul></li><li><p>igt@kms_plane_alp=
ha_blend@pipe-c-alpha-7efc:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl4/igt@kms_=
plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#26=
5])</li></ul></li><li><p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p><ul><li>s=
hard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22350/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKI=
P</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li></ul></li><li><p>igt@k=
ms_psr2_su@page_flip-xrgb8888:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl4/igt=
@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658])<=
/li></ul></li><li><p>igt@kms_psr@psr2_cursor_mmap_gtt:</p><ul><li>shard-icl=
b: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22350/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#=
109441])</li></ul></li><li><p>igt@kms_psr@psr2_sprite_plane_move:</p><ul><l=
i>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
265/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb=
4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]) +1 simil=
ar issue</li></ul></li><li><p>igt@kms_vblank@pipe-a-ts-continuation-suspend=
:</p><ul><li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11265/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22350/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li></ul></li><li><p>igt@kms_vblank@=
pipe-d-ts-continuation-idle-hang:</p><ul><li>shard-iclb: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb6/=
igt@kms_vblank@pipe-d-ts-continuation-idle-hang.html">SKIP</a> ([fdo#109278=
]) +20 similar issues</li></ul></li><li><p>igt@nouveau_crc@pipe-c-ctx-flip-=
skip-current-frame:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-iclb3/igt@nouveau_cr=
c@pipe-c-ctx-flip-skip-current-frame.html">SKIP</a> ([i915#2530])</li></ul>=
</li><li><p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p><ul><li>shard-icl=
b: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22350/shard-iclb6/igt@nouveau_crc@pipe-d-ctx-flip-detection.html">SKIP</=
a> ([fdo#109278] / [i915#2530])</li></ul></li><li><p>igt@nouveau_crc@pipe-d=
-source-outp-inactive:</p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-tglb2/igt@nouveau=
_crc@pipe-d-source-outp-inactive.html">SKIP</a> ([i915#2530])</li></ul></li=
><li><p>igt@perf@short-reads:</p><ul><li>shard-skl: <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-skl7/igt@perf@short-reads.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22350/shard-skl10/igt@perf@short-reads.html">FAIL</a> ([i915#51])</l=
i></ul></li><li><p>igt@prime_nv_pcopy@test1_macro:</p><ul><li>shard-tglb: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2350/shard-tglb5/igt@prime_nv_pcopy@test1_macro.html">SKIP</a> ([fdo#109291=
])</li></ul></li><li><p>igt@prime_nv_pcopy@test3_5:</p><ul><li>shard-iclb: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
22350/shard-iclb6/igt@prime_nv_pcopy@test3_5.html">SKIP</a> ([fdo#109291]) =
+1 similar issue</li></ul></li><li><p>igt@syncobj_timeline@invalid-transfer=
-non-existent-point:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-kbl3/igt@syncobj_tim=
eline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098]=
)</li></ul></li><li><p>igt@sysfs_clients@fair-7:</p><ul><li>shard-iclb: NOT=
RUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_223=
50/shard-iclb6/igt@sysfs_clients@fair-7.html">SKIP</a> ([i915#2994])</li></=
ul></li></ul><h4>Possible fixes</h4><ul><li><p>igt@fbdev@unaligned-write:</=
p><ul><li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11265/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#25=
82]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
350/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li></ul></li><li>=
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p><ul><li>shard-kbl: <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-kbl1/igt@g=
em_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shar=
d-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +6 similar=
 issues</li></ul></li><li><p>igt@gem_eio@suspend:</p><ul><li>{shard-rkl}: (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-=
2/igt@gem_eio@suspend.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11265/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a>)=
 ([i915#5115]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22350/shard-rkl-6/igt@gem_eio@suspend.html">PASS</a></li></ul></li>=
<li><p>igt@gem_exec_big@single:</p><ul><li>shard-tglb: <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-tglb6/igt@gem_exec_big@s=
ingle.html">TIMEOUT</a> ([i915#2647]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22350/shard-tglb6/igt@gem_exec_big@single.ht=
ml">PASS</a></li></ul></li><li><p>igt@gem_exec_capture@pi@bcs0:</p><ul><li>=
shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265=
/shard-skl10/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350=
/shard-skl9/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li></ul></li><li><=
p>igt@gem_exec_fair@basic-flow@rcs0:</p><ul><li>shard-tglb: <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-tglb2/igt@gem_exec_=
fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-tglb2/igt@gem_exec_f=
air@basic-flow@rcs0.html">PASS</a></li></ul></li><li><p>igt@gem_exec_fair@b=
asic-none@vecs0:</p><ul><li>shard-apl: <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_11265/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.=
html">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_22350/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.h=
tml">PASS</a></li></ul></li><li><p>igt@gem_exec_fair@basic-pace@rcs0:</p><u=
l><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11265/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915=
#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22350/shard-iclb5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li></u=
l></li><li><p>igt@gem_exec_whisper@basic-forked:</p><ul><li>shard-glk: <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-glk7/igt=
@gem_exec_whisper@basic-forked.html">DMESG-WARN</a> ([i915#118]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-glk6/=
igt@gem_exec_whisper@basic-forked.html">PASS</a></li></ul></li><li><p>igt@g=
em_mmap_wc@set-cache-level:</p><ul><li>{shard-rkl}: <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-1/igt@gem_mmap_wc@set-c=
ache-level.html">SKIP</a> ([i915#1850]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6/igt@gem_mmap_wc@set-cach=
e-level.html">PASS</a></li></ul></li><li><p>igt@i915_pm_dc@dc9-dpms:</p><ul=
><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11265/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shar=
d-iclb4/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li></ul></li><li><p>igt@i91=
5_pm_rpm@modeset-lpsp:</p><ul><li>{shard-rkl}: (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-6/igt@i915_pm_rpm@modeset-l=
psp.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11265/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a>) ([i915#1=
397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2350/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li></ul></li>=
<li><p>igt@i915_pm_rpm@modeset-lpsp-stress:</p><ul><li>{shard-rkl}: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-1/igt@i=
915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#1397]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6/ig=
t@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li></ul></li><li><p>igt@i=
915_selftest@live@hangcheck:</p><ul><li>shard-snb: <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-snb7/igt@i915_selftest@live@=
hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-snb7/igt@i915_selftest@li=
ve@hangcheck.html">PASS</a></li></ul></li><li><p>igt@kms_big_fb@y-tiled-max=
-hw-stride-32bpp-rotate-0:</p><ul><li>{shard-rkl}: (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-4/igt@kms_big_fb@y-tile=
d-max-hw-stride-32bpp-rotate-0.html">SKIP</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-1/igt@kms_big_fb@y-tiled-max=
-hw-stride-32bpp-rotate-0.html">SKIP</a>) ([i915#1845]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6/igt@kms_=
big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html">PASS</a> +3 similar issue=
s</li></ul></li><li><p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_=
ccs_cc:</p><ul><li>{shard-rkl}: (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11265/shard-rkl-1/igt@kms_ccs@pipe-a-bad-rotation-90-y_til=
ed_gen12_rc_ccs_cc.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11265/shard-rkl-4/igt@kms_ccs@pipe-a-bad-rotation-90-y_t=
iled_gen12_rc_ccs_cc.html">SKIP</a>) ([i915#1845] / [i915#4098]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6=
/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">PASS</a><=
/li></ul></li><li><p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_ge=
n12_rc_ccs_cc:</p><ul><li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_11265/shard-rkl-2/igt@kms_ccs@pipe-b-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350=
/shard-rkl-6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_c=
cs_cc.html">PASS</a> +2 similar issues</li></ul></li><li><p>igt@kms_color@p=
ipe-b-ctm-0-25:</p><ul><li>{shard-rkl}: (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11265/shard-rkl-4/igt@kms_color@pipe-b-ctm-0-25.ht=
ml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11=
265/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a>) ([i915#1149] =
/ [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22350/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-25.html">PASS</a></li>=
</ul></li><li><p>igt@kms_concurrent@pipe-b:</p><ul><li>{shard-rkl}: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-2/igt@k=
ms_concurrent@pipe-b.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6/=
igt@kms_concurrent@pipe-b.html">PASS</a></li></ul></li><li><p>igt@kms_curso=
r_crc@pipe-b-cursor-256x85-random:</p><ul><li>{shard-rkl}: <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265/shard-rkl-2/igt@kms_cursor=
_crc@pipe-b-cursor-256x85-random.html">SKIP</a> ([fdo#112022] / [i915#4070]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350=
/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">PASS</a> =
+6 similar issues</li></ul></li><li><p>igt@kms_cursor_crc@pipe-b-cursor-alp=
ha-transparent:</p><ul><li>{shard-rkl}: (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11265/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor=
-alpha-transparent.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_11265/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-alpha=
-transparent.html">SKIP</a>) ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6/igt@km=
s_cursor_crc@pipe-b-cursor-alpha-transparent.html">PASS</a> +2 similar issu=
es</li></ul></li><li><p>igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge:<=
/p><ul><li>{shard-rkl}: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11265/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-128x128-left-edge=
.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_22350/shard-rkl-6/igt@kms_cursor_edge_=
walk@pipe-a-128x128-left-edge.html">PASS</a> +3 similar issues</li></ul></l=
i><li><p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p><ul><li>{sh=
ard-rkl}: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11265=
/shard-rkl-4/igt@kms_cursor_edge">SKIP</a>, [SKIP][145]) ([i915#1849] / [i9=
15#4070] / [i915#4098]) -&gt; [PASS][146]</li></ul></li></ul></blockquote><=
div><br></div><div><span></span></div></body></html>

--=-Cuh0t0Lj2RF9O7xqc5/1--

