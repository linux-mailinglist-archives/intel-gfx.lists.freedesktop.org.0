Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5A187FCCC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 12:28:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BED10F9EB;
	Tue, 19 Mar 2024 11:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CC710F9EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 11:28:44 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1rmXe5-00000002Tt2-2r3k; Tue, 19 Mar 2024 13:28:43 +0200
Message-ID: <5141458d5bcacc67614b19d45aa652b0af59d540.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: i915-ci-infra@lists.freedesktop.org, tejasreex.illipilli@intel.com
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Date: Tue, 19 Mar 2024 13:28:30 +0200
In-Reply-To: <171079894050.900325.1976381251352582103@8e613ede5ea5>
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
 <171079894050.900325.1976381251352582103@8e613ede5ea5>
Content-Type: multipart/alternative; boundary="=-oABdwXr8Vs4u2KcUKsdF"
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=4.0.0
Subject: Re: =?UTF-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/i915/display:
 DMC wakelock implementation (rev2)
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

--=-oABdwXr8Vs4u2KcUKsdF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

This bug I'm hitting is unrelated to my patch and after a bit of
investigation with JaniS, we noticed that this is happening in order
machines from time to time.

So this possible regression:

> Possible regressions * igt@i915_selftest@live@hangcheck:bat-adln-1:=C2=A0=
PASS=C2=A0->=C2=A0ABORT

..is the same problem that is happening from time to time in adlp-6:

> Possible fixes * igt@i915_selftest@live@hangcheck:bat-adlp-6:=C2=A0ABORT=
=C2=A0(i915#10021) -
>    >=C2=A0PASS


It is the same failure as this one:

http://gfx-ci.igk.intel.com/cibuglog-ng/issue/10977?query_key=3D6ae0d29cf19=
7dafc63e8bf36c8e1c04fe395749f

Can you please add ADL_N machines to the filter as well?

Thanks!

--
Cheers,
Luca.


On Mon, 2024-03-18 at 21:55 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915/display: DMC wakelock implementation (rev2)
> URL:https://patchwork.freedesktop.org/series/131124/
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html
> CI Bug Log - changes from CI_DRM_14443 -> Patchwork_131124v2SummaryFAILUR=
E
> Serious unknown changes coming with Patchwork_131124v2 absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_131124v2, please notify your bug team (I915-
> ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> External URL: https://intel-gfx-ci.01.org/tree/drm-
> tip/Patchwork_131124v2/index.html
> Participating hosts (35 -> 35)Additional (2): bat-arls-4 bat-jsl-1=20
> Missing (2): bat-dg2-11 fi-snb-2520m=20
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_131124v2:
> IGT changesPossible regressions * igt@i915_selftest@live@hangcheck:bat-ad=
ln-1: PASS -> ABORT
> Known issuesHere are the changes found in Patchwork_131124v2 that come fr=
om known
> issues:
> CI changesIssues hit * boot:bat-arls-3: PASS -> FAIL (i915#10234)bat-jsl-=
1: NOTRUN -> FAIL
>    (i915#8293)fi-apl-guc: PASS -> FAIL (i915#8293)
> Possible fixes * boot:fi-cfl-8109u: FAIL (i915#8293) -> PASS
> IGT changesIssues hit * igt@dmabuf@all-tests@dma_fence_chain:fi-kbl-8809g=
: PASS ->
>    INCOMPLETE (i915#10454)
>  * igt@gem_huc_copy@huc-copy:fi-cfl-8109u: NOTRUN -> SKIP (i915#2190)
>  * igt@gem_lmem_swapping@verify-random:fi-cfl-8109u: NOTRUN -> SKIP
>    (i915#4613) +3 other tests skip
>  * igt@i915_selftest@live@gem:bat-dg2-8: PASS -> ABORT (i915#10366)
>  * igt@kms_pm_backlight@basic-brightness:fi-cfl-8109u: NOTRUN -> SKIP
>    +11 other tests skip
> Possible fixes * igt@i915_selftest@live@hangcheck:bat-adlp-6: ABORT (i915=
#10021) ->
>    PASS
> {name}: This element is suppressed. This means it is ignored when
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Build changes * Linux: CI_DRM_14443 -> Patchwork_131124v2
> CI-20190529: 20190529
> CI_DRM_14443: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7769: 7769
> Patchwork_131124v2: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @
> git://anongit.freedesktop.org/gfx-ci/linux
> Linux commits2ef377f406a9 drm/i915/display: tie DMC wakelock to DC5/6 sta=
te
> transitions
> 65265f211717 drm/i915/display: add module parameter to enable DMC
> wakelock
> b6649b71e886 drm/i915/display: don't allow DMC wakelock on older
> hardware
> 42bb743a04e4 drm/i915/display: add support for DMC wakelocks


--=-oABdwXr8Vs4u2KcUKsdF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>Hi,</div><div><br></div><div>This bug I'm hitting is unrelated t=
o my patch and after a bit of investigation with JaniS, we noticed that thi=
s is happening in order machines from time to time.</div><div><br></div><di=
v>So this possible regression:</div><div><br></div><blockquote type=3D"cite=
" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1e=
x"><h4>Possible regressions</h4><ul><li><a href=3D"mailto:igt@i915">igt@i91=
5</a><a href=3D"mailto:_selftest@live">_selftest@live</a>@hangcheck:<ul><li=
>bat-adln-1:<span class=3D"Apple-converted-space">&nbsp;</span><a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adln-1/igt@i915_se=
lftest@live@hangcheck.html" style=3D"color: rgb(46, 52, 54);">PASS</a><span=
 class=3D"Apple-converted-space">&nbsp;</span>-&gt;<span class=3D"Apple-con=
verted-space">&nbsp;</span><a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_131124v2/bat-adln-1/igt@i915_selftest@live@hangcheck.html" st=
yle=3D"color: rgb(46, 52, 54);">ABORT</a></li></ul></li></ul></blockquote><=
br class=3D"Apple-interchange-newline"><div>..is the same problem that is h=
appening from time to time in adlp-6:</div><div><br></div><blockquote type=
=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding=
-left:1ex"><h4>Possible fixes</h4><ul><li><a href=3D"mailto:igt@i915">igt@i=
915</a><a href=3D"mailto:_selftest@live">_selftest@live</a>@hangcheck:<ul><=
li>bat-adlp-6:<span class=3D"Apple-converted-space">&nbsp;</span><a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adlp-6/igt@i915_=
selftest@live@hangcheck.html" style=3D"color: rgb(46, 52, 54);">ABORT</a><s=
pan class=3D"Apple-converted-space">&nbsp;</span>(<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/10021" style=3D"color: rgb(46, 52, 54);">=
i915#10021</a>) -&gt;<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-adl=
p-6/igt@i915_selftest@live@hangcheck.html" style=3D"color: rgb(46, 52, 54);=
">PASS</a></li></ul></li></ul></blockquote><div><br></div><div><br></div><d=
iv>It is the same failure as this one:</div><div><br></div><div><a href=3D"=
http://gfx-ci.igk.intel.com/cibuglog-ng/issue/10977?query_key=3D6ae0d29cf19=
7dafc63e8bf36c8e1c04fe395749f">http://gfx-ci.igk.intel.com/cibuglog-ng/issu=
e/10977?query_key=3D6ae0d29cf197dafc63e8bf36c8e1c04fe395749f</a></div><div>=
<br></div><div>Can you please add ADL_N machines to the filter as well?</di=
v><div><br></div><div>Thanks!</div><div><br></div><div>--</div><div>Cheers,=
</div><div>Luca.</div><div><br></div><div><br></div><div>On Mon, 2024-03-18=
 at 21:55 +0000, Patchwork wrote:</div><blockquote type=3D"cite" style=3D"m=
argin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div><b>P=
atch Details</b></div><div><table><tbody><tr><td><b>Series:</b></td><td>drm=
/i915/display: DMC wakelock implementation (rev2)</td></tr><tr><td><b>URL:<=
/b></td><td><a href=3D"https://patchwork.freedesktop.org/series/131124/">ht=
tps://patchwork.freedesktop.org/series/131124/</a></td></tr><tr><td><b>Stat=
e:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td><td><a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html">ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html</a></t=
d></tr></tbody></table> </div><h1>CI Bug Log - changes from CI_DRM_14443 -&=
gt; Patchwork_131124v2</h1><h2>Summary</h2><p><strong>FAILURE</strong></p><=
p>Serious unknown changes coming with Patchwork_131124v2 absolutely need to=
 be<br> verified manually.</p><p>If you think the reported changes have not=
hing to do with the changes<br> introduced in Patchwork_131124v2, please no=
tify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br> =
to document this new failure mode, which will reduce false positives in CI.=
</p><p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131=
124v2/index.html</p><h2>Participating hosts (35 -&gt; 35)</h2><p>Additional=
 (2): bat-arls-4 bat-jsl-1 <br> Missing (2): bat-dg2-11 fi-snb-2520m </p><h=
2>Possible new issues</h2><p>Here are the unknown changes that may have bee=
n introduced in Patchwork_131124v2:</p><h3>IGT changes</h3><h4>Possible reg=
ressions</h4><ul><li>igt@i915_selftest@live@hangcheck:<ul><li>bat-adln-1: <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adln-1/=
igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-adln-1/igt@i915_selft=
est@live@hangcheck.html">ABORT</a></li></ul></li></ul><h2>Known issues</h2>=
<p>Here are the changes found in Patchwork_131124v2 that come from known is=
sues:</p><h3>CI changes</h3><h4>Issues hit</h4><ul><li>boot:<ul><li>bat-arl=
s-3: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-a=
rls-3/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_131124v2/bat-arls-3/boot.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li><li>=
bat-jsl-1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_131124v2/bat-jsl-1/boot.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li><li>fi-apl-guc:=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-apl-gu=
c/boot.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131124v2/fi-apl-guc/boot.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li></ul></li>=
</ul><h4>Possible fixes</h4><ul><li>boot:<ul><li>fi-cfl-8109u: <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-cfl-8109u/boot.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131124v2/fi-cfl-8109u/boot.html">PASS</a></li></ul></li></ul><h3>=
IGT changes</h3><h4>Issues hit</h4><ul><li><p>igt@dmabuf@all-tests@dma_fenc=
e_chain:</p><ul><li>fi-kbl-8809g: <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_14443/fi-kbl-8809g/igt@dmabuf@all-tests@dma_fence_chain.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_131124v2/fi-kbl-8809g/igt@dmabuf@all-tests@dma_fence_chain.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/104=
54">i915#10454</a>)</li></ul></li><li><p>igt@gem_huc_copy@huc-copy:</p><ul>=
<li>fi-cfl-8109u: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i91=
5#2190</a>)</li></ul></li><li><p>igt@gem_lmem_swapping@verify-random:</p><u=
l><li>fi-cfl-8109u: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-rand=
om.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4613">i915#4613</a>) +3 other tests skip</li></ul></li><li><p>igt@i915_s=
elftest@live@gem:</p><ul><li>bat-dg2-8: <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_14443/bat-dg2-8/igt@i915_selftest@live@gem.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131124v2/bat-dg2-8/igt@i915_selftest@live@gem.html">ABORT</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li><=
/ul></li><li><p>igt@kms_pm_backlight@basic-brightness:</p><ul><li>fi-cfl-81=
09u: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131124v2/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP=
</a> +11 other tests skip</li></ul></li></ul><h4>Possible fixes</h4><ul><li=
>igt@i915_selftest@live@hangcheck:<ul><li>bat-adlp-6: <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adlp-6/igt@i915_selftest@li=
ve@hangcheck.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/10021">i915#10021</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_131124v2/bat-adlp-6/igt@i915_selftest@live@ha=
ngcheck.html">PASS</a></li></ul></li></ul><p>{name}: This element is suppre=
ssed. This means it is ignored when computing<br> the status of the differe=
nce (SUCCESS, WARNING, or FAILURE).</p><h2>Build changes</h2><ul><li>Linux:=
 CI_DRM_14443 -&gt; Patchwork_131124v2</li></ul><p>CI-20190529: 20190529<br=
> CI_DRM_14443: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br> IGT_7769: 7769<br> Patchwork_131124v2: ce8cc=
731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/=
linux</p><h3>Linux commits</h3><p>2ef377f406a9 drm/i915/display: tie DMC wa=
kelock to DC5/6 state transitions<br>65265f211717 drm/i915/display: add mod=
ule parameter to enable DMC wakelock<br>b6649b71e886 drm/i915/display: don'=
t allow DMC wakelock on older hardware<br>42bb743a04e4 drm/i915/display: ad=
d support for DMC wakelocks</p></blockquote><div><br></div><div><span></spa=
n></div></body></html>

--=-oABdwXr8Vs4u2KcUKsdF--
