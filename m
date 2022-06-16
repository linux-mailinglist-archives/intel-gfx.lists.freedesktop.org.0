Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBA654E8B8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 19:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F6E10E798;
	Thu, 16 Jun 2022 17:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F13610E798
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 17:40:33 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id w16so2690474oie.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=GccJV6jYqWNtxeYthp23VUqUxeaOtQ6R7/o76hd6hAs=;
 b=npL71aIwb+U/EMTMZzjOXh640xk4DUfIQijZGcad/KUxIx1sGqnmnr3BEeV1Tttnfn
 DOMIHuCvp6L4MgWkUXlgGZ6YZWi2HHUl+RZNaQJhJwAnX0z5HfcYGlIHA4nIJ5Spqox0
 3dtUTyPvxb0fzS586sBxS72izTMYUI7DcKOuLtrRhux05YlN1fNpq3lR9TzQVH+75s8q
 CB2EHJYkCsuzIVHrCAd2S3/+JggHuIn64G95SGBkuhU/ZUi8IzflkNvU40jgWo5mIOR5
 Sf8cM1j0cMcjtJA4l/dJNjS/DzDyDPr5xZ6r1NpkqvB9Sx0OnT8rBcE0WRcQoXsR7+6I
 wR/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=GccJV6jYqWNtxeYthp23VUqUxeaOtQ6R7/o76hd6hAs=;
 b=EIKQARlN9dJQhpP0XQjRa4e8PBqj2T2+AphcGwGTUgvVKztx5NlaZaMdPYNQV+BvOT
 9supQQ5tfimGKU28G7QNovXMpZt45fRrxN7ZPEl0Qzh3/qdFXt+9n07OFeTwO9MVrOZW
 VrIEgD/aYbMjljP+1rt9MrKVyGnPjCJzYq7hUs6sAbd805kx0Bo1uH/aNqDOdrPSTQnZ
 3Vd4wR+4FUfomfCCq7HE7vheBwkC1aHcdPI63ZjrKDlQdqBBgOjvF2PdLUOcWqhrwuhn
 M9iB6ZgpkD4QeZG9IIxnkDy8LH9BL8vJ/mjLViI7nWzUZtWtDfFMe2riACI5/jMvzeng
 dNng==
X-Gm-Message-State: AOAM532GkXRAw/GI46T4a92XpIstb/89u+OIW0XJkvEjOQjdy1i/Rjcp
 EU5PpLDya+PyxnuUQXTQN5Q4wZjKfkvzTyJs/Bxv4VspTlrpJw==
X-Google-Smtp-Source: ABdhPJyG47+OlUV2vEyciDjoHJioRsrCHX9Bg49eV52VTem4+hpoSSD8LnURw7NMCZMaf7isNC3a30MSVmHzOYn7H8A=
X-Received: by 2002:aca:5d88:0:b0:32e:e7b0:e57a with SMTP id
 r130-20020aca5d88000000b0032ee7b0e57amr8121245oib.157.1655401232113; Thu, 16
 Jun 2022 10:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <165539708653.17458.1448559207615857044@emeril.freedesktop.org>
In-Reply-To: <165539708653.17458.1448559207615857044@emeril.freedesktop.org>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Thu, 16 Jun 2022 20:40:20 +0300
Message-ID: <CAJ=qYWQ2gKyp73J7oh-iJw5esJFWOLT_RYN9R5gE3R2ZHmrggA@mail.gmail.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: multipart/alternative; boundary="00000000000066a3d005e1942295"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
	=?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/display=3A_Add_smem?=
	=?utf-8?q?_fallback_allocation_for_dpt_=28rev4=29?=
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

--00000000000066a3d005e1942295
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lakshmi,

Here would be another false positive, I don't see how my changes would
affect debugfs_test@read_all_entries test on kbl.

/Juha-Pekka

to 16. kes=C3=A4k. 2022 klo 19.31 Patchwork <patchwork@emeril.freedesktop.o=
rg>
kirjoitti:

> *Patch Details*
> *Series:* series starting with [1/3] drm/i915/display: Add smem fallback
> allocation for dpt (rev4)
> *URL:* https://patchwork.freedesktop.org/series/104983/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/index.html CI
> Bug Log - changes from CI_DRM_11768 -> Patchwork_104983v4 Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_104983v4 absolutely need to
> be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_104983v4, please notify your bug team to allow th=
em
> to document this new failure mode, which will reduce false positives in C=
I.
>
> External URL:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/index.html
> Participating hosts (43 -> 41)
>
> Additional (2): bat-adlm-1 bat-atsm-1
> Missing (4): bat-dg2-8 bat-jsl-2 bat-dg2-9 fi-bdw-samus
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_104983v4:
> IGT changes Possible regressions
>
>    - igt@debugfs_test@read_all_entries:
>       - fi-kbl-guc: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/fi-kbl-guc/i=
gt@debugfs_test@read_all_entries.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-kbl=
-guc/igt@debugfs_test@read_all_entries.html>
>
> Known issues
>
> Here are the changes found in Patchwork_104983v4 that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@i915_selftest@live@requests:
>    - fi-blb-e6850: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/fi-blb-e6850=
/igt@i915_selftest@live@requests.html>
>       -> DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-blb=
-e6850/igt@i915_selftest@live@requests.html>
>       (i915#4528 <https://gitlab.freedesktop.org/drm/intel/issues/4528>)
>    -
>
>    igt@kms_busy@basic@flip:
>    - fi-tgl-u2: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/fi-tgl-u2/ig=
t@kms_busy@basic@flip.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-tgl=
-u2/igt@kms_busy@basic@flip.html>
>       (i915#402 <https://gitlab.freedesktop.org/drm/intel/issues/402>) +1
>       similar issue
>    -
>
>    igt@kms_chamelium@common-hpd-after-suspend:
>    -
>
>       fi-hsw-g3258: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-hsw=
-g3258/igt@kms_chamelium@common-hpd-after-suspend.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>=
 /
>       fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111827>)
>       -
>
>       fi-hsw-4770: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-hsw=
-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>       (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>=
 /
>       fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=3D111827>)
>       -
>
>    igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>    - bat-adlp-4: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/bat-adlp-4/i=
gt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/bat-ad=
lp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>
> Possible fixes
>
>    -
>
>    igt@i915_pm_rpm@module-reload:
>    - bat-adlp-4: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/bat-adlp-4/i=
gt@i915_pm_rpm@module-reload.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/bat-ad=
lp-4/igt@i915_pm_rpm@module-reload.html>
>       +3 similar issues
>    -
>
>    igt@i915_selftest@live@hangcheck:
>    -
>
>       fi-hsw-4770: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/fi-hsw-4770/=
igt@i915_selftest@live@hangcheck.html>
>       (i915#3303 <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>       i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-hsw=
-4770/igt@i915_selftest@live@hangcheck.html>
>       -
>
>       fi-hsw-g3258: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/fi-hsw-g3258=
/igt@i915_selftest@live@hangcheck.html>
>       (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-hsw=
-g3258/igt@i915_selftest@live@hangcheck.html>
>       -
>
>    igt@kms_busy@basic@modeset:
>    - {bat-adlp-6}: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/bat-adlp-6/i=
gt@kms_busy@basic@modeset.html>
>       (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/bat-ad=
lp-6/igt@kms_busy@basic@modeset.html>
>
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Build changes
>
>    - Linux: CI_DRM_11768 -> Patchwork_104983v4
>
> CI-20190529: 20190529
> CI_DRM_11768: 6da0a0872a9b44e2be9645c1d7045fe88e035c25 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_104983v4: 6da0a0872a9b44e2be9645c1d7045fe88e035c25 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> Linux commits
>
> 0bf3629e2a13 drm/i915: don't leak lmem mapping in vma_evict
> d67858b0914c drm/i915: Fix i915_vma_pin_iomap()
> 4325c448d4d5 drm/i915/display: Add smem fallback allocation for dpt
>

--00000000000066a3d005e1942295
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Lakshmi,=C2=A0</div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Here would be another false positive, I don&#39;t see how =
my changes would affect debugfs_test@read_all_entries test on kbl.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">/Juha-Pekka</div><div dir=3D"aut=
o"><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gm=
ail_attr">to 16. kes=C3=A4k. 2022 klo 19.31 Patchwork &lt;<a href=3D"mailto=
:patchwork@emeril.freedesktop.org">patchwork@emeril.freedesktop.org</a>&gt;=
 kirjoitti:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/d=
isplay: Add smem fallback allocation for dpt (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104983/" target=3D"_blank" rel=3D"noreferrer">https://patchwork.freede=
sktop.org/series/104983/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104983v4/index.html" target=3D"_blank" rel=3D"norefe=
rrer">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/index.htm=
l</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_11768 -&gt; Patchwork_104983v4</h1=
>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104983v4 absolutely need t=
o be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_104983v4, please notify your bug team to allow th=
em<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104983v4/index.html" target=3D"_blank" rel=3D"noreferrer">https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/index.html</a></p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Additional (2): bat-adlm-1 bat-atsm-1 <br>
  Missing    (4): bat-dg2-8 bat-jsl-2 bat-dg2-9 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104983v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11768/fi-kbl-guc/igt@debugfs_test@read_all_entries.html" target=3D"=
_blank" rel=3D"noreferrer">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_104983v4/fi-kbl-guc/igt@debugfs_test@read_all_=
entries.html" target=3D"_blank" rel=3D"noreferrer">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104983v4 that come from known is=
sues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11768/fi-blb-e6850/igt@i915_selftest@live@requests.html" target=3D"=
_blank" rel=3D"noreferrer">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_104983v4/fi-blb-e6850/igt@i915_selftest@live@r=
equests.html" target=3D"_blank" rel=3D"noreferrer">DMESG-FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4528" target=3D"_blank"=
 rel=3D"noreferrer">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11768/fi-tgl-u2/igt@kms_busy@basic@flip.html" target=3D"_blank" rel=
=3D"noreferrer">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_104983v4/fi-tgl-u2/igt@kms_busy@basic@flip.html" target=
=3D"_blank" rel=3D"noreferrer">DMESG-WARN</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/402" target=3D"_blank" rel=3D"noreferrer">i9=
15#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104983v4/fi-hsw-g3258/igt@kms_chamelium@common-hpd-a=
fter-suspend.html" target=3D"_blank" rel=3D"noreferrer">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" target=3D"_blank=
" rel=3D"noreferrer">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827" target=3D"_blank" rel=3D"noreferrer">fdo#11182=
7</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104983v4/fi-hsw-4770/igt@kms_chamelium@common-hpd-af=
ter-suspend.html" target=3D"_blank" rel=3D"noreferrer">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" target=3D"_blank" r=
el=3D"noreferrer">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111827" target=3D"_blank" rel=3D"noreferrer">fdo#111827</=
a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>bat-adlp-4:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11768/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pip=
e-c.html" target=3D"_blank" rel=3D"noreferrer">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/bat-adlp-4/igt@km=
s_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html" target=3D"_blank" rel=
=3D"noreferrer">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3576" target=3D"_blank" rel=3D"noreferrer">i915#3576</a>)</=
li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11768/bat-adlp-4/igt@i915_pm_rpm@module-reload.html" target=3D"_bla=
nk" rel=3D"noreferrer">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3576" target=3D"_blank" rel=3D"noreferrer">i915#3576=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04983v4/bat-adlp-4/igt@i915_pm_rpm@module-reload.html" target=3D"_blank" re=
l=3D"noreferrer">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11768/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html" target=3D"_=
blank" rel=3D"noreferrer">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3303" target=3D"_blank" rel=3D"noreferrer">i915#3=
303</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4785" =
target=3D"_blank" rel=3D"noreferrer">i915#4785</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104983v4/fi-hsw-4770/igt@i915_=
selftest@live@hangcheck.html" target=3D"_blank" rel=3D"noreferrer">PASS</a>=
</p>
</li>
<li>
<p>fi-hsw-g3258:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11768/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" target=3D"=
_blank" rel=3D"noreferrer">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4785" target=3D"_blank" rel=3D"noreferrer">i915#=
4785</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104983v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" target=3D"_=
blank" rel=3D"noreferrer">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11768/bat-adlp-6/igt@kms_busy@basic@modeset.html" target=3D"_blank"=
 rel=3D"noreferrer">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3576" target=3D"_blank" rel=3D"noreferrer">i915#3576</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1049=
83v4/bat-adlp-6/igt@kms_busy@basic@modeset.html" target=3D"_blank" rel=3D"n=
oreferrer">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br>
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11768 -&gt; Patchwork_104983v4</li>
</ul>
<p>CI-20190529: 20190529<br>
  CI_DRM_11768: 6da0a0872a9b44e2be9645c1d7045fe88e035c25 @ git://<a href=3D=
"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank" rel=3D"nore=
ferrer">anongit.freedesktop.org/gfx-ci/linux</a><br>
  IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @ <a href=3D"https://g=
itlab.freedesktop.org/drm/igt-gpu-tools.git" target=3D"_blank" rel=3D"noref=
errer">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
  Patchwork_104983v4: 6da0a0872a9b44e2be9645c1d7045fe88e035c25 @ git://<a h=
ref=3D"http://anongit.freedesktop.org/gfx-ci/linux" target=3D"_blank" rel=
=3D"noreferrer">anongit.freedesktop.org/gfx-ci/linux</a></p>
<h3>Linux commits</h3>
<p>0bf3629e2a13 drm/i915: don&#39;t leak lmem mapping in vma_evict<br>
d67858b0914c drm/i915: Fix i915_vma_pin_iomap()<br>
4325c448d4d5 drm/i915/display: Add smem fallback allocation for dpt</p>

</div>

</blockquote></div></div></div>

--00000000000066a3d005e1942295--
