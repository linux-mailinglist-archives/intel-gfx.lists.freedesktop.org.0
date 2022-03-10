Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F04BF4D435B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D02B10FD0D;
	Thu, 10 Mar 2022 09:21:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9EE10FD0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:21:25 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id hu12so4054022qvb.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 01:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OkcO4DJjzrVTA9T054ET2tmkqPn07K4RbbXWHN6o+TQ=;
 b=cVS95VgIxnv8wWjPlPoy51KFIduKlftcTCscCU2BwvSD5uMXYhBqHfhiNieXtBnobw
 mL9SdBqW2r/mDe/DTCvV8ZXorbdmRMhOR6YC01bRtHWDuArQ/oVktks76XFR9SRJnbbb
 S1ogYdEWYb28WKOOem9tHbHEbXAxFPcsqXo4weGHbpqkGRrWjcFbpcX1vihcvdfX30+Y
 WinLD+AjCturhtNvJXAyjNumwyKzfTkoezWKvLQ/4nPnQ1TGFnMYwU6vvqb4UWxyrKBn
 2CWHMWNaO7B295mXe8p0vxoA1Pb1fBmDgvOpJRXpSjLlYeVmw1laeLd0sZgQlkmMytyf
 gqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OkcO4DJjzrVTA9T054ET2tmkqPn07K4RbbXWHN6o+TQ=;
 b=jRcQYe9kRaJgwHfUnwfe/GfhwxNN5ya9YRC8Yq1M/v7KZG9Tv/c992iIbRkzotajbv
 AJ8Dj1ZGk0nVzl3j9s33q6mnzZeiyXtiHsrnq5knbsK+rLK3zBKem0t1omYDrAywyKzH
 0LSRizINUg+kB1yFL75nqQkIpROMhxW+TBUTRT45z5A0amGyVXvsFBNy8D8nET7uWSCo
 AoG/jB39JBtGQKApNjk+ICbP7XG3n6eeT2dTVISloNGAWUwXOFtPTDKg9tsBWYG9BHC5
 w+kpbXZl6o3MzkaQKwHgf3e6UJ/0ZlyOGB8zWvV1ZGhAbNCcJl/52TdCVeeTEMCIMmrO
 gG/A==
X-Gm-Message-State: AOAM531y+/cBRtBAfzWUcoKqvKNY08iEXtn89hR//0YWBdfEDDRtckcZ
 ibKsP5R0Ob0hHObKx8SeSkddifEBNuL7DSeHAFBO8IEO3Ojp7w==
X-Google-Smtp-Source: ABdhPJxEerBl8WUz3twxBeuRbD4YoOgLVc6DyENPWvfpXisvfWkeI0kTpnRQEqjU1G5XcRZmqtGtZL5L6B2tTFUX+44=
X-Received: by 2002:a05:6214:2486:b0:435:31ba:7b3c with SMTP id
 gi6-20020a056214248600b0043531ba7b3cmr2918412qvb.54.1646904084607; Thu, 10
 Mar 2022 01:21:24 -0800 (PST)
MIME-Version: 1.0
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
 <164629009895.19838.6055320582412006809@emeril.freedesktop.org>
In-Reply-To: <164629009895.19838.6055320582412006809@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 10 Mar 2022 09:20:58 +0000
Message-ID: <CAM0jSHOyD9J3T7vY7sP4Xbo3eTPkHhPhpRj9AmbH1ULrkRCeKw@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Content-Type: multipart/alternative; boundary="000000000000f1376505d9d9bc56"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915/gem=3A_missing_boundary_check_in_vm=5Faccess_leads?=
	=?utf-8?q?_to_OOB_read/write_=28rev2=29?=
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
Cc: Mastan Katragadda <mastanx.katragadda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000f1376505d9d9bc56
Content-Type: text/plain; charset="UTF-8"

On Thu, 3 Mar 2022 at 06:48, Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* drm/i915/gem: missing boundary check in vm_access leads to OOB
> read/write (rev2)
> *URL:* https://patchwork.freedesktop.org/series/100932/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html CI
> Bug Log - changes from CI_DRM_11316 -> Patchwork_22468 Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_22468 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22468, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> External URL:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/index.html
> Participating hosts (50 -> 41)
>
> Additional (1): bat-adlp-4
> Missing (10): fi-kbl-soraka shard-tglu bat-dg1-5 fi-hsw-4200u fi-bsw-cyan
> fi-ctg-p8600 shard-rkl shard-dg1 bat-jsl-2 fi-bdw-samus
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_22468:
> IGT changes Possible regressions
>
>    -
>
>    igt@gem_exec_suspend@basic-s0@smem:
>    - fi-kbl-7567u: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html>
>    -
>
>    igt@i915_pm_rpm@basic-pci-d3-state:
>    - fi-skl-6600u: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html>
>
>
These failures are not related.


>
>    -
>
> Known issues
>
> Here are the changes found in Patchwork_22468 that come from known issues:
> IGT changes Issues hit
>
>    -
>
>    igt@gem_lmem_swapping@basic:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_lmem_swapping@basic.html>
>       (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>       +3 similar issues
>    -
>
>    igt@gem_tiled_pread_basic:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_tiled_pread_basic.html>
>       (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>    -
>
>    igt@kms_busy@basic@modeset:
>    - bat-adlp-4: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_busy@basic@modeset.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>    -
>
>    igt@kms_chamelium@vga-hpd-fast:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_chamelium@vga-hpd-fast.html>
>       (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>       +8 similar issues
>    -
>
>    igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>       (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>       +1 similar issue
>    -
>
>    igt@kms_force_connector_basic@force-load-detect:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html>
>       (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>    -
>
>    igt@prime_vgem@basic-fence-read:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-fence-read.html>
>       (i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>       i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>       +2 similar issues
>    -
>
>    igt@prime_vgem@basic-userptr:
>    - bat-adlp-4: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-userptr.html>
>       (i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301> /
>       i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>    -
>
>    igt@runner@aborted:
>    -
>
>       fi-kbl-7567u: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@runner@aborted.html>
>       (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>       -
>
>       fi-bdw-5557u: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@runner@aborted.html>
>       (i915#2426 <https://gitlab.freedesktop.org/drm/intel/issues/2426> /
>       i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> Possible fixes
>
>    -
>
>    igt@gem_exec_suspend@basic-s3@smem:
>    - fi-bdw-5557u: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html>
>       (i915#146 <https://gitlab.freedesktop.org/drm/intel/issues/146>) ->
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html>
>    -
>
>    igt@i915_pm_rpm@module-reload:
>    - fi-icl-u2: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-icl-u2/igt@i915_pm_rpm@module-reload.html>
>       (i915#3049 <https://gitlab.freedesktop.org/drm/intel/issues/3049>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_pm_rpm@module-reload.html>
>    -
>
>    igt@i915_selftest@live@evict:
>    - {bat-rpls-2}: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-rpls-2/igt@i915_selftest@live@evict.html>
>       (i915#4391 <https://gitlab.freedesktop.org/drm/intel/issues/4391>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-rpls-2/igt@i915_selftest@live@evict.html>
>       +1 similar issue
>    -
>
>    igt@i915_selftest@live@hangcheck:
>    -
>
>       fi-icl-u2: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/fi-icl-u2/igt@i915_selftest@live@hangcheck.html>
>       (i915#2867 <https://gitlab.freedesktop.org/drm/intel/issues/2867>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_selftest@live@hangcheck.html>
>       +7 similar issues
>       -
>
>       bat-dg1-6: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>       (i915#4494 <https://gitlab.freedesktop.org/drm/intel/issues/4494> /
>       i915#4957 <https://gitlab.freedesktop.org/drm/intel/issues/4957>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>       -
>
>    igt@i915_selftest@live@workarounds:
>    - {bat-adlp-6}: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-adlp-6/igt@i915_selftest@live@workarounds.html>
>       (i915#5068 <https://gitlab.freedesktop.org/drm/intel/issues/5068>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@i915_selftest@live@workarounds.html>
>    -
>
>    igt@kms_busy@basic@flip:
>    - {bat-adlp-6}: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11316/bat-adlp-6/igt@kms_busy@basic@flip.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@kms_busy@basic@flip.html>
>       +1 similar issue
>
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Build changes
>
>    - Linux: CI_DRM_11316 -> Patchwork_22468
>
> CI-20190529: 20190529
> CI_DRM_11316: 41f05cc5d1eed1879e572ef203ef2dbe9a75aff8 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_22468: 49f7781dc74065aad8b8517b6a9e2d963890da62 @ git://
> anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> 49f7781dc740 drm/i915/gem: missing boundary check in vm_access leads to
> OOB read/write
>

--000000000000f1376505d9d9bc56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">On Thu, 3 Mar 2022 at 06:48, Patchwork &lt;<a=
 href=3D"mailto:patchwork@emeril.freedesktop.org">patchwork@emeril.freedesk=
top.org</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915/gem: missing boundary check =
in vm_access leads to OOB read/write (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100932/" target=3D"_blank">https://patchwork.freedesktop.org/series/10=
0932/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22468/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22468/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_11316 -&gt; Patchwork_22468</h1>
<h2>Summary</h2>
<p><b>FAILURE</b></p>
<p>Serious unknown changes coming with Patchwork_22468 absolutely need to b=
e<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_22468, please notify your bug team to allow them<=
br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22468/index.html" target=3D"_blank">https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22468/index.html</a></p>
<h2>Participating hosts (50 -&gt; 41)</h2>
<p>Additional (1): bat-adlp-4 <br>
  Missing    (10): fi-kbl-soraka shard-tglu bat-dg1-5 fi-hsw-4200u fi-bsw-c=
yan fi-ctg-p8600 shard-rkl shard-dg1 bat-jsl-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22468:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-kbl-7567u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22468/fi-kbl-7567u/igt@gem_exec_suspend@basic-s0@smem.html" t=
arget=3D"_blank">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22468/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html" t=
arget=3D"_blank">FAIL</a></li></ul></li></ul></div></blockquote><div><br></=
div><div><div style=3D"font-family:monospace,monospace" class=3D"gmail_defa=
ult">These failures are not related.</div></div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div><ul><li><ul>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22468 that come from known issue=
s:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_lmem_swapping@basic.html" =
target=3D"_blank">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613" target=3D"_blank">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@gem_tiled_pread_basic.html" ta=
rget=3D"_blank">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3282" target=3D"_blank">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_busy@basic@modeset.html" t=
arget=3D"_blank">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3576" target=3D"_blank">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_chamelium@vga-hpd-fast.htm=
l" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D111827" target=3D"_blank">fdo#111827</a>) +8 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-f=
lip-before-cursor-legacy.html" target=3D"_blank">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4103" target=3D"_blank">i915#410=
3</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@kms_force_connector_basic@forc=
e-load-detect.html" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109285" target=3D"_blank">fdo#109285</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-fence-read.ht=
ml" target=3D"_blank">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3291" target=3D"_blank">i915#3291</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3708" target=3D"_blank">i915#3708</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22468/bat-adlp-4/igt@prime_vgem@basic-userptr.html"=
 target=3D"_blank">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3301" target=3D"_blank">i915#3301</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3708" target=3D"_blank">i915#3708</a>)=
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22468/fi-kbl-7567u/igt@runner@aborted.html" target=
=3D"_blank">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4312" target=3D"_blank">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@runner@aborted.html" target=
=3D"_blank">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2426" target=3D"_blank">i915#2426</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4312" target=3D"_blank">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html" target=
=3D"_blank">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/146" target=3D"_blank">i915#146</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-bdw-5557u/igt@gem_exec_s=
uspend@basic-s3@smem.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-icl-u2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/fi-icl-u2/igt@i915_pm_rpm@module-reload.html" target=3D"_blan=
k">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/304=
9" target=3D"_blank">i915#3049</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_pm_rpm@module-reload.=
html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>{bat-rpls-2}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/bat-rpls-2/igt@i915_selftest@live@evict.html" target=3D"_blan=
k">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4391" target=3D"_blank">i915#4391</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_22468/bat-rpls-2/igt@i915_selftest@live@=
evict.html" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11316/fi-icl-u2/igt@i915_selftest@live@hangcheck.html" target=3D"_bl=
ank">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2867" target=3D"_blank">i915#2867</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_22468/fi-icl-u2/igt@i915_selftest@live=
@hangcheck.html" target=3D"_blank">PASS</a> +7 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11316/bat-dg1-6/igt@i915_selftest@live@hangcheck.html" target=3D"_bl=
ank">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4494" target=3D"_blank">i915#4494</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4957" target=3D"_blank">i915#4957</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-dg1-=
6/igt@i915_selftest@live@hangcheck.html" target=3D"_blank">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-adlp-6}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/bat-adlp-6/igt@i915_selftest@live@workarounds.html" target=3D=
"_blank">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5068" target=3D"_blank">i915#5068</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@i915_selftest=
@live@workarounds.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11316/bat-adlp-6/igt@kms_busy@basic@flip.html" target=3D"_blank">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
76" target=3D"_blank">i915#3576</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22468/bat-adlp-6/igt@kms_busy@basic@flip.html=
" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br>
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11316 -&gt; Patchwork_22468</li>
</ul>
<p>CI-20190529: 20190529<br>
  CI_DRM_11316: 41f05cc5d1eed1879e572ef203ef2dbe9a75aff8 @ git://<a href=3D=
"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank">anongit.fre=
edesktop.org/gfx-ci/linux</a><br>
  IGT_6361: 2372a4beb6a33c5f0799a4a8ccbb93794f52dbca @ <a href=3D"https://g=
itlab.freedesktop.org/drm/igt-gpu-tools.git" target=3D"_blank">https://gitl=
ab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
  Patchwork_22468: 49f7781dc74065aad8b8517b6a9e2d963890da62 @ git://<a href=
=3D"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank">anongit.=
freedesktop.org/gfx-ci/linux</a></p>
<p>=3D=3D Linux commits =3D=3D</p>
<p>49f7781dc740 drm/i915/gem: missing boundary check in vm_access leads to =
OOB read/write</p>

</div>

</blockquote></div></div>

--000000000000f1376505d9d9bc56--
