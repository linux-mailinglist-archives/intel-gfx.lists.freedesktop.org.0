Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A79D55F234
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 02:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD32311BB93;
	Wed, 29 Jun 2022 00:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com
 [IPv6:2607:f8b0:4864:20::a2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4437888DFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 00:08:51 +0000 (UTC)
Received: by mail-vk1-xa2e.google.com with SMTP id r1so5634683vke.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 17:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=j2edy8tUY/HwNrEQNUXHKBPaZwKhLbWeyXbqRX2xpkE=;
 b=o1pkAodyq8MXvHmPwvF72ZN3upIAjphe3HZJv+I8FjT1zfPxCvPBefOFVlBB6kdZtM
 OdCxOJUHIAPVDataFE8TS6ZbC58e89xC0UMMFNyttxGSxFePNC5ZsBuvR4vP1yvaaPZg
 Wg8H/RTjas6baiiXBx2sxJpCMnTiVpBVZHRS8ow2BHWvx9ytna1Rk2mlfycpiLAOgJDD
 yphP/gunOOAj2ARkc2ua1ZRRrmHtt1v/950ajq66oU8kwO/Rq1JqBvzAI2mZKg/CtQPS
 4cAfCex0yeBoCG4bKqaB+LN46pE7R9djy3HWMMjjg/IEqn5tY5C1f+amTQn0WmYUYSRg
 JNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j2edy8tUY/HwNrEQNUXHKBPaZwKhLbWeyXbqRX2xpkE=;
 b=a5LPZ+byCEjcT3tulVGerUYJ2esc30WLu5HnlP055U/2SyL1Lcp05XH0Anz2FgNU9B
 EOw6aMCKK/KLo3mK2QHt+o5UdduuYL+p3k9diHPQwO0fLPqaHhco29JxWQXzfCi7pekq
 hGYl0Yl5t12wKzO+KCLDFmg1JYGPVt7Kd4Hat+KCawg7tF6l4JnoaMJLzgDXwUpwQBeo
 4t7WZ70N7K/z3qY6oIto+wAIofsHSmOBZ9PaGUhLrPxx6TQ54K5xvrHZn3kaHp1w4p9g
 IE9IhwOXncZznjlDxtQE+8iVTu039NFX9Ljy0wzJynX67PqaZJDj+Jiv3GDzz+/zx9be
 RE7w==
X-Gm-Message-State: AJIora/vSp2lES+KjSTqRi7chuzmz/H6/WPG52XuFcPBueV950JKPyAk
 a/W4gHbMDfXE2N7rJ3Zh5MFY5npr8qut0sjTdDDnSdn0pXY=
X-Google-Smtp-Source: AGRyM1sv8Gb1tgaASH3oDsZkM3xlqPI5C0asMxW81hBiTyHnPeHrelLEHLwfGFExBwMo0kgadadpUjnfzRgIdap/EIE=
X-Received: by 2002:a05:6122:152b:b0:36c:2e3f:599b with SMTP id
 g11-20020a056122152b00b0036c2e3f599bmr3080776vkq.5.1656461329481; Tue, 28 Jun
 2022 17:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220628191016.3899428-1-lucas.demarchi@intel.com>
 <165645657886.14504.4321527630043454299@emeril.freedesktop.org>
In-Reply-To: <165645657886.14504.4321527630043454299@emeril.freedesktop.org>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Tue, 28 Jun 2022 17:08:37 -0700
Message-ID: <CAKi4VALjh6853fH0z2FfUVNnVon0Bjf0jycWUV=VGcNOaH9rNQ@mail.gmail.com>
To: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="00000000000020c76705e28af590"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
	=?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_iosys-map=3A_Add_per-wo?=
	=?utf-8?q?rd_read?=
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, lakshminarayana.vudum@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--00000000000020c76705e28af590
Content-Type: text/plain; charset="UTF-8"

+Lakshmi

Can't see how these would be related. Searching recent failure I found this
very similar one:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11814/shard-glk7/pstore24-1656384153_Oops_1.txt

Lucas De Marchi

On Tue, Jun 28, 2022 at 3:49 PM Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* series starting with [CI,1/2] iosys-map: Add per-word read
> *URL:* https://patchwork.freedesktop.org/series/105746/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/index.html CI
> Bug Log - changes from CI_DRM_11820 -> Patchwork_105746v1 Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_105746v1 absolutely need to
> be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105746v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> External URL:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/index.html
> Participating hosts (38 -> 37)
>
> Missing (1): bat-adlp-4
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_105746v1:
> IGT changes Possible regressions
>
>    -
>
>    igt@gem_exec_parallel@engines@fds:
>    -
>
>       fi-bsw-kefka: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html>
>       -
>
>       fi-cfl-8109u: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-cfl-8109u/igt@gem_exec_parallel@engines@fds.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-cfl-8109u/igt@gem_exec_parallel@engines@fds.html>
>
> Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>    - igt@i915_selftest@live@gt_heartbeat:
>       - {bat-adln-1}: NOTRUN -> DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-adln-1/igt@i915_selftest@live@gt_heartbeat.html>
>
> Known issues
>
> Here are the changes found in Patchwork_105746v1 that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@i915_selftest@live@hangcheck:
>    - fi-hsw-g3258: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>       (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>    -
>
>    igt@i915_selftest@live@late_gt_pm:
>    - fi-bsw-nick: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html>
>       -> DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html>
>       (i915#3428 <https://gitlab.freedesktop.org/drm/intel/issues/3428>)
>    -
>
>    igt@kms_chamelium@common-hpd-after-suspend:
>    - fi-pnv-d510: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>    -
>
>    igt@runner@aborted:
>    -
>
>       fi-cfl-8109u: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-cfl-8109u/igt@runner@aborted.html>
>       (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>       -
>
>       fi-bsw-nick: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-bsw-nick/igt@runner@aborted.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>       i915#3428 <https://gitlab.freedesktop.org/drm/intel/issues/3428> /
>       i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>       -
>
>       fi-hsw-g3258: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-hsw-g3258/igt@runner@aborted.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>       i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>       i915#6246 <https://gitlab.freedesktop.org/drm/intel/issues/6246>)
>       -
>
>       fi-bsw-kefka: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-bsw-kefka/igt@runner@aborted.html>
>       (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
> Possible fixes
>
>    -
>
>    igt@i915_pm_rps@basic-api:
>    - fi-hsw-4770: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-hsw-4770/igt@i915_pm_rps@basic-api.html>
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-hsw-4770/igt@i915_pm_rps@basic-api.html>
>    -
>
>    igt@i915_selftest@live@gt_lrc:
>    - {bat-adln-1}: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adln-1/igt@i915_selftest@live@gt_lrc.html>
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html>
>    -
>
>    igt@i915_selftest@live@gtt:
>    - fi-bdw-5557u: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-bdw-5557u/igt@i915_selftest@live@gtt.html>
>       (i915#3674 <https://gitlab.freedesktop.org/drm/intel/issues/3674>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-bdw-5557u/igt@i915_selftest@live@gtt.html>
>    -
>
>    igt@i915_selftest@live@hangcheck:
>    - bat-dg1-6: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>       (i915#4494 <https://gitlab.freedesktop.org/drm/intel/issues/4494> /
>       i915#4957 <https://gitlab.freedesktop.org/drm/intel/issues/4957>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>    -
>
>    igt@i915_selftest@live@requests:
>    - fi-pnv-d510: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-pnv-d510/igt@i915_selftest@live@requests.html>
>       (i915#4528 <https://gitlab.freedesktop.org/drm/intel/issues/4528>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-pnv-d510/igt@i915_selftest@live@requests.html>
>    -
>
>    igt@kms_busy@basic@modeset:
>    - {bat-adln-1}: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adln-1/igt@kms_busy@basic@modeset.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-adln-1/igt@kms_busy@basic@modeset.html>
>       +1 similar issue
>    -
>
>    igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>    - {bat-adlp-6}: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>    -
>
>    igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
>    - fi-tgl-u2: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11820/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html>
>       (i915#402 <https://gitlab.freedesktop.org/drm/intel/issues/402>) ->
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html>
>
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Build changes
>
>    - Linux: CI_DRM_11820 -> Patchwork_105746v1
>
> CI-20190529: 20190529
> CI_DRM_11820: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105746v1: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> Linux commits
>
> 8ac6f5c47f20 iosys-map: Add per-word write
> 251c05b23218 iosys-map: Add per-word read
>

--00000000000020c76705e28af590
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>+Lakshmi<br></div><div><br></div><div>Can&#39;t see h=
ow these would be related. Searching recent failure I found this very simil=
ar one:</div><div><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11814/shard-glk7/pstore24-1656384153_Oops_1.txt">https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_11814/shard-glk7/pstore24-1656384153_Oops_1.txt</a>=
<br></div><div><br></div><div>Lucas De Marchi</div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 28, 2022 at 3:49 P=
M Patchwork &lt;<a href=3D"mailto:patchwork@emeril.freedesktop.org">patchwo=
rk@emeril.freedesktop.org</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>series starting with [CI,1/2] iosys-m=
ap: Add per-word read</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105746/" target=3D"_blank">https://patchwork.freedesktop.org/series/10=
5746/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v1/index.html" target=3D"_blank">https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_11820 -&gt; Patchwork_105746v1</h1=
>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105746v1 absolutely need t=
o be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_105746v1, please notify your bug team to allow th=
em<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105746v1/index.html" target=3D"_blank">https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105746v1/index.html</a></p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): bat-adlp-4 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105746v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11820/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v1/fi-bsw-kefka/igt@gem_exec_parallel@engines@fds.html" ta=
rget=3D"_blank">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11820/fi-cfl-8109u/igt@gem_exec_parallel@engines@fds.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v1/fi-cfl-8109u/igt@gem_exec_parallel@engines@fds.html" ta=
rget=3D"_blank">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br>
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>{bat-adln-1}:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v1/bat-adln-1/igt@i915_selftest@live@gt_heart=
beat.html" target=3D"_blank">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105746v1 that come from known is=
sues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" tar=
get=3D"_blank">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4785" target=3D"_blank">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105746v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html" tar=
get=3D"_blank">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3428" target=3D"_blank">i915#3428</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105746v1/fi-pnv-d510/igt@kms_chamelium@common-hpd-a=
fter-suspend.html" target=3D"_blank">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271" target=3D"_blank">fdo#109271</a>)</li=
>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v1/fi-cfl-8109u/igt@runner@aborted.html" targe=
t=3D"_blank">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312" target=3D"_blank">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v1/fi-bsw-nick/igt@runner@aborted.html" target=
=3D"_blank">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271" target=3D"_blank">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3428" target=3D"_blank">i915#3428</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" target=3D"_bl=
ank">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v1/fi-hsw-g3258/igt@runner@aborted.html" targe=
t=3D"_blank">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271" target=3D"_blank">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4312" target=3D"_blank">i915#4312</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6246" target=3D"_b=
lank">i915#6246</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105746v1/fi-bsw-kefka/igt@runner@aborted.html" targe=
t=3D"_blank">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4312" target=3D"_blank">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>fi-hsw-4770:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/fi-hsw-4770/igt@i915_pm_rps@basic-api.html" target=3D"_blank"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105746v1/fi-hsw-4770/igt@i915_pm_rps@basic-api.html" target=3D"_blank">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-adln-1}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/bat-adln-1/igt@i915_selftest@live@gt_lrc.html" target=3D"_bla=
nk">DMESG-FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105746v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html" target=
=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/fi-bdw-5557u/igt@i915_selftest@live@gtt.html" target=3D"_blan=
k">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3674" target=3D"_blank">i915#3674</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-bdw-5557u/igt@i915_selftest@=
live@gtt.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/bat-dg1-6/igt@i915_selftest@live@hangcheck.html" target=3D"_b=
lank">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4494" target=3D"_blank">i915#4494</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4957" target=3D"_blank">i915#4957</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-=
dg1-6/igt@i915_selftest@live@hangcheck.html" target=3D"_blank">PASS</a></li=
>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/fi-pnv-d510/igt@i915_selftest@live@requests.html" target=3D"_=
blank">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4528" target=3D"_blank">i915#4528</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-pnv-d510/igt@i915_selfte=
st@live@requests.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adln-1}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/bat-adln-1/igt@kms_busy@basic@modeset.html" target=3D"_blank"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3576" target=3D"_blank">i915#3576</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-adln-1/igt@kms_busy@basic@mod=
eset.html" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html" ta=
rget=3D"_blank">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3576" target=3D"_blank">i915#3576</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/bat-adlp-6/igt@kms=
_flip@basic-flip-vs-modeset@a-edp1.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11820/fi-tgl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html" t=
arget=3D"_blank">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/402" target=3D"_blank">i915#402</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105746v1/fi-tgl-u2/igt@kms_f=
lip@basic-flip-vs-wf_vblank@a-edp1.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br>
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11820 -&gt; Patchwork_105746v1</li>
</ul>
<p>CI-20190529: 20190529<br>
  CI_DRM_11820: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://<a href=3D=
"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank">anongit.fre=
edesktop.org/gfx-ci/linux</a><br>
  IGT_6549: 9b9371c8da32533022ad700a7c023b4c3a085fbc @ <a href=3D"https://g=
itlab.freedesktop.org/drm/igt-gpu-tools.git" target=3D"_blank">https://gitl=
ab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
  Patchwork_105746v1: 8f4a9176de36698b5b3ba72c4f68f1cf7a15c0c9 @ git://<a h=
ref=3D"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank">anong=
it.freedesktop.org/gfx-ci/linux</a></p>
<h3>Linux commits</h3>
<p>8ac6f5c47f20 iosys-map: Add per-word write<br>
251c05b23218 iosys-map: Add per-word read</p>

</div>

</blockquote></div></div>

--00000000000020c76705e28af590--
