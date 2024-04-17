Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CC78A7CF2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 09:19:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E90113238;
	Wed, 17 Apr 2024 07:19:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C9711322E;
 Wed, 17 Apr 2024 07:19:19 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1rwzZa-00000000L1c-3lxS; Wed, 17 Apr 2024 10:19:16 +0300
Message-ID: <dc37e898a2f047f9860b10b7ad5a2d6517ee48ae.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: I915-ci-infra@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 17 Apr 2024 10:19:14 +0300
In-Reply-To: <171326126112.1443400.13238982967661040459@8e613ede5ea5>
References: <20240404091646.165309-1-luciano.coelho@intel.com>
 <171326126112.1443400.13238982967661040459@8e613ede5ea5>
Content-Type: multipart/alternative; boundary="=-FbKHfKvBogSGBh7SXN+N"
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=4.0.1-pre1
Subject: Re: =?UTF-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/i915: limit
 eDP MSO pipe only for display version 20 and below (rev4)
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

--=-FbKHfKvBogSGBh7SXN+N
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

The skip in igt@kms_cursor_legacy@basic-flip-before-cursor-atomic on
fi-rkl-11600 is not related to my patch. =C2=A0There doesn't seem to be any
displays connected to that machine at the moment and all runs are
failing, for example the latest run with CI_DRM_14591.

Same thing with the other "new" skips.

Can you please mark my run as not really failing?

--
Cheers,
Luca.


On Tue, 2024-04-16 at 09:54 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: limit eDP MSO pipe only for display version 20 and
> below (rev4)
> URL:https://patchwork.freedesktop.org/series/129123/
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/index.html
> CI Bug Log - changes from CI_DRM_14583 -> Patchwork_129123v4SummaryFAILUR=
E
> Serious unknown changes coming with Patchwork_129123v4 absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_129123v4, please notify your bug team (I915-
> ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> External URL: https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_129123v4/index.html
> Participating hosts (37 -> 33)Additional (4): bat-dg1-7 bat-kbl-2 fi-cfl-=
8109u bat-arls-2=20
> Missing (8): fi-kbl-7567u fi-apl-guc fi-snb-2520m fi-glk-j4005 bat-
> atsm-1 fi-elk-e7500 bat-dg2-11 bat-mtlp-6=20
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_129123v4:
> IGT changesPossible regressions * igt@kms_cursor_legacy@basic-flip-before=
-cursor-atomic:fi-rkl-11600:
>    PASS -> SKIP +5 other tests skip
>  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:fi-rkl-11600:
>    NOTRUN -> SKIP +11 other tests skip
> Warnings * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:fi-=
rkl-
>    11600: SKIP (i915#4103) -> SKIP +1 other test skip
>  * igt@kms_dsc@dsc-basic:fi-rkl-11600: SKIP (i915#3555 / i915#3840) ->
>    SKIP
> Known issuesHere are the changes found in Patchwork_129123v4 that come fr=
om known
> issues:
> IGT changesIssues hit * igt@debugfs_test@basic-hwmon:bat-arls-2: NOTRUN -=
> SKIP (i915#9318)
>  * igt@fbdev@eof:fi-rkl-11600: PASS -> SKIP (i915#2582) +3 other tests
>    skip
>  * igt@fbdev@info:fi-rkl-11600: PASS -> SKIP (i915#1849 /
>    i915#2582)bat-kbl-2: NOTRUN -> SKIP (i915#1849)
>  * igt@gem_huc_copy@huc-copy:fi-cfl-8109u: NOTRUN -> SKIP (i915#2190)
>  * igt@gem_lmem_swapping@parallel-random-engines:bat-kbl-2: NOTRUN ->
>    SKIP +39 other tests skip
>  * igt@gem_lmem_swapping@verify-random:fi-cfl-8109u: NOTRUN -> SKIP
>    (i915#4613) +3 other tests skipbat-arls-2: NOTRUN -> SKIP
>    (i915#10213) +3 other tests skip
>  * igt@gem_mmap@basic:bat-dg1-7: NOTRUN -> SKIP (i915#4083)bat-arls-2:
>    NOTRUN -> SKIP (i915#4083)
>  * igt@gem_mmap_gtt@basic:bat-arls-2: NOTRUN -> SKIP (i915#10196 /
>    i915#4077) +2 other tests skip
>  * igt@gem_render_tiled_blits@basic:bat-arls-2: NOTRUN -> SKIP
>    (i915#10197 / i915#10211 / i915#4079)
>  * igt@gem_tiled_fence_blits@basic:bat-dg1-7: NOTRUN -> SKIP
>    (i915#4077) +2 other tests skip
>  * igt@gem_tiled_pread_basic:bat-dg1-7: NOTRUN -> SKIP (i915#4079) +1
>    other test skipbat-arls-2: NOTRUN -> SKIP (i915#10206 / i915#4079)
>  * igt@i915_pm_rps@basic-api:bat-dg1-7: NOTRUN -> SKIP (i915#6621)bat-
>    arls-2: NOTRUN -> SKIP (i915#10209)
>  * igt@i915_selftest@live@hangcheck:bat-adls-6: NOTRUN -> DMESG-WARN
>    (i915#5591)
>  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:bat-dg1-7:
>    NOTRUN -> SKIP (i915#4212) +7 other tests skip
>  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:bat-arls-2: NOTRUN
>    -> SKIP (i915#10200) +9 other tests skip
>  * igt@kms_addfb_basic@basic-y-tiled-legacy:bat-dg1-7: NOTRUN -> SKIP
>    (i915#4215)
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:bat-arls-
>    2: NOTRUN -> SKIP (i915#10202) +1 other test skipbat-dg1-7: NOTRUN -
>    > SKIP (i915#4103 / i915#4213) +1 other test skip
>  * igt@kms_dsc@dsc-basic:bat-arls-2: NOTRUN -> SKIP (i915#9886)bat-dg1-
>    7: NOTRUN -> SKIP (i915#3555 / i915#3840)
>  * igt@kms_force_connector_basic@force-load-detect:bat-arls-2: NOTRUN -
>    > SKIP (i915#10207)bat-dg1-7: NOTRUN -> SKIP
>  * igt@kms_frontbuffer_tracking@basic:fi-rkl-11600: PASS -> SKIP
>    (i915#1849 / i915#5354)
>  * igt@kms_hdmi_inject@inject-audio:bat-dg1-7: NOTRUN -> SKIP
>    (i915#433)
>  * igt@kms_pm_backlight@basic-brightness:bat-dg1-7: NOTRUN -> SKIP
>    (i915#5354)fi-cfl-8109u: NOTRUN -> SKIP +11 other tests skip
>  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:bat-arls-2: NOTRUN -> SKIP
>    (i915#10196 / i915#4077 / i915#9688)
>  * igt@kms_psr@psr-primary-page-flip:bat-dg1-7: NOTRUN -> SKIP
>    (i915#1072 / i915#9732) +3 other tests skip
>  * igt@kms_setmode@basic-clone-single-crtc:bat-arls-2: NOTRUN -> SKIP
>    (i915#10208 / i915#8809)bat-dg1-7: NOTRUN -> SKIP (i915#3555)
>  * igt@prime_vgem@basic-fence-flip:bat-dg1-7: NOTRUN -> SKIP
>    (i915#3708) +3 other tests skipfi-rkl-11600: PASS -> SKIP
>    (i915#3708)
>  * igt@prime_vgem@basic-fence-mmap:bat-dg1-7: NOTRUN -> SKIP (i915#3708
>    / i915#4077) +1 other test skipbat-arls-2: NOTRUN -> SKIP
>    (i915#10196 / i915#3708 / i915#4077) +1 other test skip
>  * igt@prime_vgem@basic-fence-read:bat-arls-2: NOTRUN -> SKIP
>    (i915#10212 / i915#3708)
>  * igt@prime_vgem@basic-read:bat-arls-2: NOTRUN -> SKIP (i915#10214 /
>    i915#3708)
>  * igt@prime_vgem@basic-write:bat-arls-2: NOTRUN -> SKIP (i915#10216 /
>    i915#3708)
> Possible fixes * igt@i915_selftest@live@active:bat-jsl-1: DMESG-FAIL (i91=
5#10606) ->
>    PASS
>  * igt@i915_selftest@live@gt_engines:bat-adls-6: TIMEOUT (i915#10026) -
>    > PASS
> Build changes * Linux: CI_DRM_14583 -> Patchwork_129123v4
> CI-20190529: 20190529
> CI_DRM_14583: 5f7597e990bea547bd1261170497e7476fb781bb @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_129123v4: 5f7597e990bea547bd1261170497e7476fb781bb @
> git://anongit.freedesktop.org/gfx-ci/linux
> Linux commitse67fc4d1ee3a drm/i915: limit eDP MSO pipe only for display v=
ersion 20
> and below


--=-FbKHfKvBogSGBh7SXN+N
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>Hi,</div><div><br></div><div>The skip in igt@kms_cursor_legacy@b=
asic-flip-before-cursor-atomic on fi-rkl-11600 is not related to my patch. =
&nbsp;There doesn't seem to be any displays connected to that machine at th=
e moment and all runs are failing, for example the latest run with CI_DRM_1=
4591.</div><div><br></div><div>Same thing with the other "new" skips.</div>=
<div><br></div><div>Can you please mark my run as not really failing?</div>=
<div><br></div><div>--</div><div>Cheers,</div><div>Luca.</div><div><br></di=
v><div><br></div><div>On Tue, 2024-04-16 at 09:54 +0000, Patchwork wrote:</=
div><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #=
729fcf solid;padding-left:1ex"><div><b>Patch Details</b></div><div><table><=
tbody><tr><td><b>Series:</b></td><td>drm/i915: limit eDP MSO pipe only for =
display version 20 and below (rev4)</td></tr><tr><td><b>URL:</b></td><td><a=
 href=3D"https://patchwork.freedesktop.org/series/129123/">https://patchwor=
k.freedesktop.org/series/129123/</a></td></tr><tr><td><b>State:</b></td><td=
>failure</td></tr> <tr><td><b>Details:</b></td><td><a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/index.html">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_129123v4/index.html</a></td></tr></tbody=
></table> </div><h1>CI Bug Log - changes from CI_DRM_14583 -&gt; Patchwork_=
129123v4</h1><h2>Summary</h2><p><strong>FAILURE</strong></p><p>Serious unkn=
own changes coming with Patchwork_129123v4 absolutely need to be<br> verifi=
ed manually.</p><p>If you think the reported changes have nothing to do wit=
h the changes<br> introduced in Patchwork_129123v4, please notify your bug =
team (I915-ci-infra@lists.freedesktop.org) to allow them<br> to document th=
is new failure mode, which will reduce false positives in CI.</p><p>Externa=
l URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/index.ht=
ml</p><h2>Participating hosts (37 -&gt; 33)</h2><p>Additional (4): bat-dg1-=
7 bat-kbl-2 fi-cfl-8109u bat-arls-2 <br> Missing (8): fi-kbl-7567u fi-apl-g=
uc fi-snb-2520m fi-glk-j4005 bat-atsm-1 fi-elk-e7500 bat-dg2-11 bat-mtlp-6 =
</p><h2>Possible new issues</h2><p>Here are the unknown changes that may ha=
ve been introduced in Patchwork_129123v4:</p><h3>IGT changes</h3><h4>Possib=
le regressions</h4><ul><li><p>igt@kms_cursor_legacy@basic-flip-before-curso=
r-atomic:</p><ul><li>fi-rkl-11600: <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14583/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-befo=
re-cursor-atomic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129123v4/fi-rkl-11600/igt@kms_cursor_legacy@basic-=
flip-before-cursor-atomic.html">SKIP</a> +5 other tests skip</li></ul></li>=
<li><p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:</p><ul><li>fi-r=
kl-11600: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_129123v4/fi-rkl-11600/igt@kms_pipe_crc_basic@compare-crc-sanitych=
eck-xr24.html">SKIP</a> +11 other tests skip</li></ul></li></ul><h4>Warning=
s</h4><ul><li><p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy=
:</p><ul><li>fi-rkl-11600: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_14583/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-=
cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_129123v4/fi-rkl-11600/igt@kms_cursor_legacy@bas=
ic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li></u=
l></li><li><p>igt@kms_dsc@dsc-basic:</p><ul><li>fi-rkl-11600: <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14583/fi-rkl-11600/igt@kms_ds=
c@dsc-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_129123v4/fi-rkl-11600/igt@kms_dsc@dsc-basic=
.html">SKIP</a></li></ul></li></ul><h2>Known issues</h2><p>Here are the cha=
nges found in Patchwork_129123v4 that come from known issues:</p><h3>IGT ch=
anges</h3><h4>Issues hit</h4><ul><li><p>igt@debugfs_test@basic-hwmon:</p><u=
l><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129123v4/bat-arls-2/igt@debugfs_test@basic-hwmon.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9318">i9=
15#9318</a>)</li></ul></li><li><p>igt@fbdev@eof:</p><ul><li>fi-rkl-11600: <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14583/fi-rkl-1160=
0/igt@fbdev@eof.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_129123v4/fi-rkl-11600/igt@fbdev@eof.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582=
</a>) +3 other tests skip</li></ul></li><li><p>igt@fbdev@info:</p><ul><li>f=
i-rkl-11600: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_145=
83/fi-rkl-11600/igt@fbdev@info.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/fi-rkl-11600/igt@fbdev@info=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2582">i915#2582</a>)</li><li>bat-kbl-2: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-kbl-2/igt@fbdev=
@info.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1849">i915#1849</a>)</li></ul></li><li><p>igt@gem_huc_copy@huc-copy:<=
/p><ul><li>fi-cfl-8109u: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129123v4/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/21=
90">i915#2190</a>)</li></ul></li><li><p>igt@gem_lmem_swapping@parallel-rand=
om-engines:</p><ul><li>bat-kbl-2: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-kbl-2/igt@gem_lmem_swapping@=
parallel-random-engines.html">SKIP</a> +39 other tests skip</li></ul></li><=
li><p>igt@gem_lmem_swapping@verify-random:</p><ul><li>fi-cfl-8109u: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v=
4/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3=
 other tests skip</li><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@gem_lmem_swap=
ping@verify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/10213">i915#10213</a>) +3 other tests skip</li></ul></li=
><li><p>igt@gem_mmap@basic:</p><ul><li>bat-dg1-7: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-dg1-7/igt@ge=
m_mmap@basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4083">i915#4083</a>)</li><li>bat-arls-2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/=
igt@gem_mmap@basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4083">i915#4083</a>)</li></ul></li><li><p>igt@gem_mmap_g=
tt@basic:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@gem_mmap_gtt@basic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/10196">i915#10196</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>) +2 other tests skip</li></ul></li><li><p>igt@=
gem_render_tiled_blits@basic:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/=
igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/10197">i915#10197</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/10211">i915#10211</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>)</li><=
/ul></li><li><p>igt@gem_tiled_fence_blits@basic:</p><ul><li>bat-dg1-7: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1291=
23v4/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 othe=
r tests skip</li></ul></li><li><p>igt@gem_tiled_pread_basic:</p><ul><li>bat=
-dg1-7: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_129123v4/bat-dg1-7/igt@gem_tiled_pread_basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +=
1 other test skip</li><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@gem_tiled_pre=
ad_basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/10206">i915#10206</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4079">i915#4079</a>)</li></ul></li><li><p>igt@i915_pm_rps@=
basic-api:</p><ul><li>bat-dg1-7: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-dg1-7/igt@i915_pm_rps@basic-a=
pi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6621">i915#6621</a>)</li><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@i915_pm=
_rps@basic-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/10209">i915#10209</a>)</li></ul></li><li><p>igt@i915_selftes=
t@live@hangcheck:</p><ul><li>bat-adls-6: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-adls-6/igt@i915_selft=
est@live@hangcheck.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5591">i915#5591</a>)</li></ul></li><li><p>igt@kms_=
addfb_basic@addfb25-x-tiled-mismatch-legacy:</p><ul><li>bat-dg1-7: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4=
/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4=
212</a>) +7 other tests skip</li></ul></li><li><p>igt@kms_addfb_basic@addfb=
25-y-tiled-small-legacy:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@kms=
_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/10200">i915#10200</a>) +9 other t=
ests skip</li></ul></li><li><p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p=
><ul><li>bat-dg1-7: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_129123v4/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4215">i915#4215</a>)</li></ul></li><li><p>igt@kms_cursor_legacy@basic-=
busy-flip-before-cursor-legacy:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/=
igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10202">i915#1020=
2</a>) +1 other test skip</li><li>bat-dg1-7: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-dg1-7/igt@kms_cur=
sor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) =
+1 other test skip</li></ul></li><li><p>igt@kms_dsc@dsc-basic:</p><ul><li>b=
at-arls-2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_129123v4/bat-arls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9886">i915#9886</a>)</=
li><li>bat-dg1-7: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_129123v4/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840">i915=
#3840</a>)</li></ul></li><li><p>igt@kms_force_connector_basic@force-load-de=
tect:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@kms_force_connector_ba=
sic@force-load-detect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/10207">i915#10207</a>)</li><li>bat-dg1-7: NOTRUN -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/ba=
t-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>=
</ul></li><li><p>igt@kms_frontbuffer_tracking@basic:</p><ul><li>fi-rkl-1160=
0: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14583/fi-rkl-=
11600/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/fi-rkl-11600/igt@=
kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li></ul></li><li=
><p>igt@kms_hdmi_inject@inject-audio:</p><ul><li>bat-dg1-7: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-dg=
1-7/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/433">i915#433</a>)</li></ul></li><li><=
p>igt@kms_pm_backlight@basic-brightness:</p><ul><li>bat-dg1-7: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat=
-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li><li>f=
i-cfl-8109u: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_129123v4/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.ht=
ml">SKIP</a> +11 other tests skip</li></ul></li><li><p>igt@kms_psr@psr-prim=
ary-mmap-gtt@edp-1:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@kms_psr@=
psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/10196">i915#10196</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</li></ul></li=
><li><p>igt@kms_psr@psr-primary-page-flip:</p><ul><li>bat-dg1-7: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/b=
at-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +3 ot=
her tests skip</li></ul></li><li><p>igt@kms_setmode@basic-clone-single-crtc=
:</p><ul><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/10208">i915#10208</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8809">i915#8809</a>)</li><li>bat-dg1-7: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-dg1-=
7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li></ul></l=
i><li><p>igt@prime_vgem@basic-fence-flip:</p><ul><li>bat-dg1-7: NOTRUN -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/ba=
t-dg1-7/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 other tests=
 skip</li><li>fi-rkl-11600: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14583/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1291=
23v4/fi-rkl-11600/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</l=
i></ul></li><li><p>igt@prime_vgem@basic-fence-mmap:</p><ul><li>bat-dg1-7: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
29123v4/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</=
a>) +1 other test skip</li><li>bat-arls-2: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-arls-2/igt@prime_vg=
em@basic-fence-mmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/10196">i915#10196</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3708">i915#3708</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 other test skip</=
li></ul></li><li><p>igt@prime_vgem@basic-fence-read:</p><ul><li>bat-arls-2:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_129123v4/bat-arls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/10212">i915#10212</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#370=
8</a>)</li></ul></li><li><p>igt@prime_vgem@basic-read:</p><ul><li>bat-arls-=
2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_129123v4/bat-arls-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/10214">i915#10214</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a=
>)</li></ul></li><li><p>igt@prime_vgem@basic-write:</p><ul><li>bat-arls-2: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
129123v4/bat-arls-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/10216">i915#10216</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)=
</li></ul></li></ul><h4>Possible fixes</h4><ul><li><p>igt@i915_selftest@liv=
e@active:</p><ul><li>bat-jsl-1: <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_14583/bat-jsl-1/igt@i915_selftest@live@active.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10606">=
i915#10606</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_129123v4/bat-jsl-1/igt@i915_selftest@live@active.html">PASS</a></l=
i></ul></li><li><p>igt@i915_selftest@live@gt_engines:</p><ul><li>bat-adls-6=
: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14583/bat-adls=
-6/igt@i915_selftest@live@gt_engines.html">TIMEOUT</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/10026">i915#10026</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129123v4/bat-adls-6=
/igt@i915_selftest@live@gt_engines.html">PASS</a></li></ul></li></ul><h2>Bu=
ild changes</h2><ul><li>Linux: CI_DRM_14583 -&gt; Patchwork_129123v4</li></=
ul><p>CI-20190529: 20190529<br> CI_DRM_14583: 5f7597e990bea547bd1261170497e=
7476fb781bb @ git://anongit.freedesktop.org/gfx-ci/linux<br> IGT_7806: 849c=
d963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/i=
gt-gpu-tools.git<br> Patchwork_129123v4: 5f7597e990bea547bd1261170497e7476f=
b781bb @ git://anongit.freedesktop.org/gfx-ci/linux</p><h3>Linux commits</h=
3><p>e67fc4d1ee3a drm/i915: limit eDP MSO pipe only for display version 20 =
and below</p></blockquote><div><br></div><div><span></span></div></body></h=
tml>

--=-FbKHfKvBogSGBh7SXN+N--
