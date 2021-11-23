Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E70459F72
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 10:45:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB766E528;
	Tue, 23 Nov 2021 09:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96EFB6E558
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 09:45:23 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id i13so14537906qvm.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 01:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gjAeDV4wQnUVbp8ZBRPFCC1X8HJ2+Ku3mN9IdmgP8Fg=;
 b=EdC8IKYlyCBTbYzhY6MaLygY0LVA1zWLubAUOVb9oMtQvUqnsy/kwanEfinLJKCJyI
 kttLUMikCLyhLNkKkTfIv/S/nEdWCJjV+Enm3ghGN31Y7pScxuSERaiiDix119045rzn
 c3sth02d2saMXW+bb0gPxE4XK1NGTzoLgs7MnvllLtzN3bizsMUADogTopUx57kQZNti
 QzoaDEBSax6MZFF5QhEZvpHMHsstX8QjtD+1ic95nbMTanPfZNhqg79bwcnO2bkhyTIg
 fHPxBYHllvi8Nhxttq2dOD0K5DvfK00ZHnNlzDTF2SXPd7AEbV0aVf9HE43MhsYiWeNC
 Y2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gjAeDV4wQnUVbp8ZBRPFCC1X8HJ2+Ku3mN9IdmgP8Fg=;
 b=EyAGFQJElnjx8fftX1Rm0Lr7P19ANnA139a1DY57im3o1m5zpr8xQBKZeFmpDBTV5c
 7n3RB3/cANrRtm8XMPbtGvi57aMii2JHV6+8OsYfTRmeFqNvabc6UCBD/z62xxi0JaPQ
 bT9E484U9Z4tYAXePv3EujL8JbVm/jl7sLukGY5aQczUavxx/MFc77XsfNyXgR85Vyfn
 evtGhYt7GnDeruKyvZLzsPWzr48FIFg+CGe9oe9B2g/CznlbJe2hHnysdqx7ph+1LJEK
 Svo9bjMvENR3/+RmWEQS5qIR1yqOHgMIdneBTYNPo8+osP68FEryQRPA21vclU6v6gzS
 y3AQ==
X-Gm-Message-State: AOAM531WnikJmh6BpZsL16jX7anuUcKdLDlQWl+3vU4nWsH1LsvUTlRl
 D27n1QBonca79x7i7SudXQbQ8M++1LtqDk3IJaHQbPzyg0U=
X-Google-Smtp-Source: ABdhPJxx+0PiPFc9zC4XZeCJVmWjrFN1IXhlPYnmqeJlfs9ZqH5HVyrimLl7q64pLjkNr3hz5NXUD6Tjx6OLgq9V2UI=
X-Received: by 2002:a05:6214:4012:: with SMTP id
 kd18mr4680185qvb.1.1637660722426; 
 Tue, 23 Nov 2021 01:45:22 -0800 (PST)
MIME-Version: 1.0
References: <20211123050928.20434-1-rdunlap@infradead.org>
 <163764698295.2116.7786772823121181213@emeril.freedesktop.org>
In-Reply-To: <163764698295.2116.7786772823121181213@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 23 Nov 2021 09:44:56 +0000
Message-ID: <CAM0jSHOcGhcEHJgbX4_K7udV6EnSGqq2V+ros3NqWS6jRL4iSQ@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Content-Type: multipart/alternative; boundary="0000000000009f75a505d171997b"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915/gem=3A_placate_scripts/kernel-doc?=
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
Cc: Randy Dunlap <rdunlap@infradead.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--0000000000009f75a505d171997b
Content-Type: text/plain; charset="UTF-8"

On Tue, 23 Nov 2021 at 05:56, Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* drm/i915/gem: placate scripts/kernel-doc
> *URL:* https://patchwork.freedesktop.org/series/97190/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/index.html CI
> Bug Log - changes from CI_DRM_10917 -> Patchwork_21664 Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21664 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21664, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> External URL:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/index.html
> Participating hosts (40 -> 34)
>
> Additional (1): fi-kbl-soraka
> Missing (7): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4
> bat-jsl-2 bat-jsl-1
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_21664:
> IGT changes Possible regressions
>
>    - igt@gem_exec_suspend@basic-s3:
>       - fi-skl-6600u: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html>
>
>
Lakshmi, another false positive it seems. The patch in question is only
fixing kernel-doc. Pushed to drm-intel-gt-next. Thanks.


>    -
>
> Known issues
>
> Here are the changes found in Patchwork_21664 that come from known issues:
> IGT changes Issues hit
>
>    -
>
>    igt@amdgpu/amd_basic@semaphore:
>    - fi-bdw-5557u: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>       +31 similar issues
>    -
>
>    igt@gem_exec_fence@basic-busy@bcs0:
>    - fi-kbl-soraka: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>       +2 similar issues
>    -
>
>    igt@gem_exec_suspend@basic-s0:
>    - fi-kbl-soraka: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html>
>       (i915#4221 <https://gitlab.freedesktop.org/drm/intel/issues/4221>)
>    -
>
>    igt@gem_huc_copy@huc-copy:
>    - fi-kbl-8809g: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>       i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>    -
>
>    igt@i915_selftest@live@hangcheck:
>    - fi-snb-2600: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-snb-2600/igt@i915_selftest@live@hangcheck.html>
>       (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>    -
>
>    igt@kms_chamelium@dp-crc-fast:
>    - fi-bdw-5557u: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>       fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>       +8 similar issues
>    -
>
>    igt@kms_chamelium@hdmi-edid-read:
>    - fi-kbl-8809g: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>       fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>       +8 similar issues
>    -
>
>    igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>    - fi-kbl-8809g: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>       i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>    -
>
>    igt@kms_psr@cursor_plane_move:
>    - fi-kbl-8809g: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>       +41 similar issues
>
> Possible fixes
>
>    - igt@core_auth@basic-auth:
>       - fi-kbl-8809g: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-kbl-8809g/igt@core_auth@basic-auth.html>
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@core_auth@basic-auth.html>
>
> Warnings
>
>    - igt@runner@aborted:
>       - fi-skl-6600u: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10917/fi-skl-6600u/igt@runner@aborted.html>
>       (i915#2722 <https://gitlab.freedesktop.org/drm/intel/issues/2722> /
>       i915#3363 <https://gitlab.freedesktop.org/drm/intel/issues/3363> /
>       i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/fi-skl-6600u/igt@runner@aborted.html>
>       (i915#3363 <https://gitlab.freedesktop.org/drm/intel/issues/3363> /
>       i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> Build changes
>
>    - Linux: CI_DRM_10917 -> Patchwork_21664
>
> CI-20190529: 20190529
> CI_DRM_10917: de9a03c2007f3c69c5fa86ef007841a4a9194aac @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6286: cdcbf81f734fdb1d102e84490e49e9fec23760cd @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_21664: 960cb066fb2369728d369f58fd4601e250486664 @ git://
> anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> 960cb066fb23 drm/i915/gem: placate scripts/kernel-doc
>

--0000000000009f75a505d171997b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">On Tue, 23 Nov 2021 at 05:56, Patchwork &lt;<=
a href=3D"mailto:patchwork@emeril.freedesktop.org" target=3D"_blank">patchw=
ork@emeril.freedesktop.org</a>&gt; wrote:<br></div></div><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915/gem: placate scripts/kernel-=
doc</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97190/" target=3D"_blank">https://patchwork.freedesktop.org/series/971=
90/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21664/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21664/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10917 -&gt; Patchwork_21664</h1>
<h2>Summary</h2>
<p><b>FAILURE</b></p>
<p>Serious unknown changes coming with Patchwork_21664 absolutely need to b=
e<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_21664, please notify your bug team to allow them<=
br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21664/index.html" target=3D"_blank">https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21664/index.html</a></p>
<h2>Participating hosts (40 -&gt; 34)</h2>
<p>Additional (1): fi-kbl-soraka <br>
  Missing    (7): bat-dg1-6 fi-tgl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat=
-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21664:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-skl-6600u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10917/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html" target=3D"_b=
lank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21664/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html" target=3D"_b=
lank">FAIL</a></li></ul></li></ul></div></blockquote><div><br></div><div><d=
iv style=3D"font-family:monospace,monospace" class=3D"gmail_default">Lakshm=
i, another false positive it seems. The patch in question is only fixing ke=
rnel-doc. Pushed to drm-intel-gt-next. Thanks.</div><div style=3D"font-fami=
ly:monospace,monospace" class=3D"gmail_default"><br></div></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div><ul><li><ul>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21664 that come from known issue=
s:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.h=
tml" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271</a>) +31 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@b=
cs0.html" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.h=
tml" target=3D"_blank">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4221" target=3D"_blank">i915#4221</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html" =
target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271" target=3D"_blank">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2190" target=3D"_blank">i915#2190</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10917/fi-snb-2600/igt@i915_selftest@live@hangcheck.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21664/fi-snb-2600/igt@i915_selftest@live@hangcheck.html" target=
=3D"_blank">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3921" target=3D"_blank">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.ht=
ml" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271</a> / <a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111827" target=3D"_blank">fdo#1118=
27</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read=
.html" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111827" target=3D"_blank">fdo#1=
11827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-c=
rc-sanitycheck-pipe-d.html" target=3D"_blank">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/533" targ=
et=3D"_blank">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21664/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.ht=
ml" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271</a>) +41 similar issues=
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>fi-kbl-8809g:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10917/fi-kbl-8809g/igt@core_auth@basic-auth.html" target=3D"_blank"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21664/fi-kbl-8809g/igt@core_auth@basic-auth.html" target=3D"_blank">PASS=
</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-6600u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10917/fi-skl-6600u/igt@runner@aborted.html" target=3D"_blank">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2722" targe=
t=3D"_blank">i915#2722</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3363" target=3D"_blank">i915#3363</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4312" target=3D"_blank">i915#4312</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21664/=
fi-skl-6600u/igt@runner@aborted.html" target=3D"_blank">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3363" target=3D"_blank"=
>i915#3363</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312" target=3D"_blank">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10917 -&gt; Patchwork_21664</li>
</ul>
<p>CI-20190529: 20190529<br>
  CI_DRM_10917: de9a03c2007f3c69c5fa86ef007841a4a9194aac @ git://<a href=3D=
"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank">anongit.fre=
edesktop.org/gfx-ci/linux</a><br>
  IGT_6286: cdcbf81f734fdb1d102e84490e49e9fec23760cd @ <a href=3D"https://g=
itlab.freedesktop.org/drm/igt-gpu-tools.git" target=3D"_blank">https://gitl=
ab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
  Patchwork_21664: 960cb066fb2369728d369f58fd4601e250486664 @ git://<a href=
=3D"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank">anongit.=
freedesktop.org/gfx-ci/linux</a></p>
<p>=3D=3D Linux commits =3D=3D</p>
<p>960cb066fb23 drm/i915/gem: placate scripts/kernel-doc</p>

</div>

</blockquote></div></div>

--0000000000009f75a505d171997b--
