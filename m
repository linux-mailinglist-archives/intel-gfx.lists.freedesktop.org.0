Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7605224229B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 00:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16CA16E85B;
	Tue, 11 Aug 2020 22:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8E96E85B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 22:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597185850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=J0yKFLe2AmovkmSYyYzojsqKR+LZvwqY7CgbIndqj/4=;
 b=BM0lw6OtY0BAqBlulM39Y5p/bP+UB5eIUmDdL38sQw/LumPc6L9x6+kQh/NRqXWP/kl4VE
 4kAzX64kajgxXyF8eUSopf5n+yrdtxu5WG4TeFFhzZ+nWf/Mn5GCnUCZZHSVlyIDr3Urr8
 igVdDY1FskF/3x7ZOjf233pnr4AEI7c=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-201-pe_tiM69N9W4kPILArG4XQ-1; Tue, 11 Aug 2020 18:44:08 -0400
X-MC-Unique: pe_tiM69N9W4kPILArG4XQ-1
Received: by mail-qt1-f198.google.com with SMTP id d2so246661qtn.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 15:44:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=aXTxN5bQ9zK99uvfS3pURLY+ETX+hBc2hT7ZGBd3hgY=;
 b=ks+d+B7HVbL/CSbirecHpKH9goDGQLIzwRZOjeOp2FYUAUVMCt70CBf1bcUnlWI4tr
 hqikMk17Ik2AYvsDFgkz6SzvwfvOLOi/eq3aZK7AtuBz2hXp40wSJu5NrarZCTfO24Xb
 0+F2oJomcvaq55gpljY/b8REzymYCBExQ6BQfnW4SI/6h+ZAvKQGnwOS0qyhcvXl9c+l
 gIpAuQqWpmmFpSN3CVme5FEF6GYj/oBBqkjLmBMVsDO10A6Bm9hW8J5wCVnkCLSWPVFb
 6iMzzZ0cUShQ7ayczoMrqWn4fsiDd/x2Lw6Lv8sbTJ44ChJ3E/qhpFyy5B/PT90jyY1T
 fLDQ==
X-Gm-Message-State: AOAM532CQowaYFQ5Ut8vTK3l61KH0fEnYPN/7CsGoO5ianbSSoTlhA7K
 D9a+Zwa76OR7lqGUjwzloOVaf5K2zqt7MMXKWZkhp73TSzQgftvyzqMLg1ASTykRqGou8si73fI
 CtIHQbb7nLhfIvCYOdJj/ejf2lFTf
X-Received: by 2002:ac8:4451:: with SMTP id m17mr3597023qtn.299.1597185847365; 
 Tue, 11 Aug 2020 15:44:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEJdQVBemU3hl2wKGI1uyvq62zJa+9zNP22G4fwnzLgKlSR8yZUnB13xkZnnDD6tlkZbsLsA==
X-Received: by 2002:ac8:4451:: with SMTP id m17mr3597012qtn.299.1597185847039; 
 Tue, 11 Aug 2020 15:44:07 -0700 (PDT)
Received: from Ruby.lyude.net (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id i14sm257232qtq.33.2020.08.11.15.44.05
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Aug 2020 15:44:06 -0700 (PDT)
Message-ID: <acee67ff5375ae9ba1ea3bf49c80dad0a1d996b1.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Aug 2020 18:44:04 -0400
In-Reply-To: <0ddf368caaba148772fd44b26de88b078a0af301.camel@redhat.com>
References: <20200811200457.134743-1-lyude@redhat.com>
 <159718399901.3769.11820354083655957365@emeril.freedesktop.org>
 <0ddf368caaba148772fd44b26de88b078a0af301.camel@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.36.4 (3.36.4-1.fc32)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=2C_nouveau=3A_Cleanup_nouveau_HPD_and_add_DP_featur?=
 =?utf-8?q?es_from_i915_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1809330547=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1809330547==
Content-Type: multipart/alternative; boundary="=-68aCC9Uwt8XMVIUZRh2R"

--=-68aCC9Uwt8XMVIUZRh2R
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Ah-nevermind, Ickle pointed out to me that it just takes a little bit for the
results to migrate over to AWS, things seem to be viewable now.
On Tue, 2020-08-11 at 18:17 -0400, Lyude Paul wrote:
> Can someone take a look at this? All of the CI related links here just give
> a permission denied when you try to view them, and I'm positive this test
> failure has nothing to do with this series
> On Tue, 2020-08-11 at 22:13 +0000, Patchwork wrote:
> > 
> > Patch Details
> > 
> > Series:drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from
> > i915 (rev2)
> > URL:https://patchwork.freedesktop.org/series/80542/
> > State:failure
> > 
> >     Details:
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/index.html
> > 
> > 
> > 
> > 
> >     CI Bug Log - changes from CI_DRM_8872 -> Patchwork_18347
> > Summary
> > FAILURE
> > Serious unknown changes coming with Patchwork_18347 absolutely need to be
> > 
> >   verified manually.
> > If you think the reported changes have nothing to do with the changes
> > 
> >   introduced in Patchwork_18347, please notify your bug team to allow them
> > 
> >   to document this new failure mode, which will reduce false positives in
> > CI.
> > External URL: 
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/index.html
> > Possible new issues
> > Here are the unknown changes that may have been introduced in
> > Patchwork_18347:
> > IGT changes
> > Possible regressions
> > 
> > igt@runner@aborted:
> > fi-skl-6700k2:      NOTRUN -> FAIL
> > 
> > 
> > 
> > Known issues
> > Here are the changes found in Patchwork_18347 that come from known issues:
> > IGT changes
> > Issues hit
> > 
> > 
> > igt@i915_module_load@reload:
> > 
> > fi-byt-j1900:       PASS -> DMESG-WARN (i915#1982)
> > 
> > 
> > 
> > igt@i915_selftest@live@execlists:
> > 
> > fi-icl-y:           PASS -> INCOMPLETE (i915#2276)
> > 
> > 
> > 
> > igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
> > 
> > fi-icl-u2:          PASS -> DMESG-WARN (i915#1982) +1 similar issue
> > 
> > 
> > 
> > Possible fixes
> > 
> > 
> > igt@i915_module_load@reload:
> > 
> > 
> > fi-apl-guc:         DMESG-WARN (i915#1635 / i915#1982) -> PASS
> > 
> > 
> > fi-cml-s:           DMESG-WARN (i915#1982) -> PASS
> > 
> > 
> > fi-kbl-x1275:       DMESG-WARN (i915#62 / i915#92) -> PASS
> > 
> > 
> > 
> > 
> > igt@kms_busy@basic@flip:
> > 
> > 
> > {fi-tgl-dsi}:       DMESG-WARN (i915#1982) -> PASS
> > 
> > 
> > fi-kbl-x1275:       DMESG-WARN (i915#62 / i915#92 / i915#95) -> PASS
> > 
> > 
> > 
> > 
> > Warnings
> > 
> > 
> > igt@i915_pm_rpm@module-reload:
> > 
> > fi-kbl-x1275:       SKIP (fdo#109271) -> DMESG-FAIL (i915#62)
> > 
> > 
> > 
> > igt@kms_force_connector_basic@force-edid:
> > 
> > fi-kbl-x1275:       DMESG-WARN (i915#62 / i915#92) -> DMESG-WARN (i915#62
> > / i915#92 / i915#95) +1 similar issue
> > 
> > 
> > 
> > {name}: This element is suppressed. This means it is ignored when
> > computing
> > 
> >           the status of the difference (SUCCESS, WARNING, or FAILURE).
> > Participating hosts (42 -> 37)
> > Additional (1): fi-kbl-soraka 
> > 
> >   Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-
> > byt-clapper fi-bdw-samus 
> > Build changes
> > 
> > Linux: CI_DRM_8872 -> Patchwork_18347
> > 
> > CI-20190529: 20190529
> > 
> >   CI_DRM_8872: 494f4611d8ee77b49fec39886b8b97c14f291f18 @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > 
> >   IGT_5767: 39e9aa1032a4e60f776f34b3ccf4fb728abbfe5c @
> > git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> > 
> >   Patchwork_18347: ed9c2cbd0615944411c1dcfa8383a8174b1f215f @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > == Linux commits ==
> > ed9c2cbd0615 drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()
> > 
> > dbc6ce6444f9 drm/i915/dp: Extract drm_dp_read_dpcd_caps()
> > 
> > b2b88eaa8158 drm/nouveau/kms: Don't change EDID when it hasn't actually
> > changed
> > 
> > c726b1b06424 drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT
> > 
> > dd59fa4b47de drm/i915/dp: Extract drm_dp_get_sink_count()
> > 
> > e308120f0a75 drm/i915/dp: Extract drm_dp_has_sink_count()
> > 
> > 7ebbddd8fe5f drm/nouveau/kms/nv50-: Use downstream DP clock limits for
> > mode validation
> > 
> > 43964c882505 drm/i915/dp: Extract drm_dp_downstream_read_info()
> > 
> > 00e33908c535 drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths
> > 
> > 67b2ac39f22b drm/nouveau/kms: Move drm_dp_cec_unset_edid() into
> > nouveau_connector_detect()
> > 
> > 1616b919e4b2 drm/nouveau/kms: Use new drm_dp_has_mst() helper for checking
> > MST caps
> > 
> > 8b6671700abf drm/i915/dp: Extract drm_dp_has_mst()
> > 
> > 2aa54c3a5de3 drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling
> > 
> > b197d002e32f drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in
> > nv50_sor_disable()
> > 
> > 7cb0374b4558 drm/nouveau/kms: Search for encoders' connectors properly
> > 
> > eb430d7e3dc4 drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in
> > nv50_mstm_new()
> > 
> > bd4724757ea9 drm/nouveau/kms/nv50-: Use macros for DP registers in
> > nouveau_dp.c
> > 
> > 478aa516d10c drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in
> > nouveau_dp.c
> > 
> > d6d94517b732 drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()
> > 
> > 7429fbed7536 drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()
> > 
> > 
> > 
> -- 
> Cheers,
> 	Lyude Paul (she/her)
> 	Software Engineer at Red Hat
-- 
Cheers,
	Lyude Paul (she/her)
	Software Engineer at Red Hat

--=-68aCC9Uwt8XMVIUZRh2R
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" dir=3D"ltr"><head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8">
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body style=3D"text-align:left; direction:ltr;"><div>Ah-nevermind, Ickle po=
inted out to me that it just takes a little bit for the results to migrate =
over to AWS, things seem to be viewable now.</div><div><br></div><div>On Tu=
e, 2020-08-11 at 18:17 -0400, Lyude Paul wrote:</div><blockquote type=3D"ci=
te" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:=
1ex"><div>Can someone take a look at this? All of the CI related links here=
 just give a permission denied when you try to view them, and I'm positive =
this test failure has nothing to do with this series</div><div><br></div><d=
iv>On Tue, 2020-08-11 at 22:13 +0000, Patchwork wrote:</div><blockquote typ=
e=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;paddin=
g-left:1ex">


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/dp, i915, nouveau: Cleanup nouvea=
u HPD and add DP features from i915 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/80542/">https://patchwork.freedesktop.org/series/80542/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18347/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18347/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_8872 -&gt; Patchwork_18347</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18347 absolutely need to b=
e<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_18347, please notify your bug team to allow them<=
br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/i=
ndex.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18347:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_18347/fi-skl-6700k2/igt@runner@aborted.html">FAIL</=
a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18347 that come from known issue=
s:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8872/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/fi-byt-=
j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8872/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/fi-icl=
-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8872/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18347/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i91=
5#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8872/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1=
982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18347/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-cml-s:           <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8872/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/=
fi-cml-s/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8872/fi-kbl-x1275/igt@i915_module_load@reload.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1834=
7/fi-kbl-x1275/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8872/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/fi=
-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8872/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18347/=
fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8872/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_183=
47/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-x1275:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8872/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/62=
">i915#62</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
92">i915#92</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18347/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/62">i915#62</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/92">i915#92</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br>
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br>
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-by=
t-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8872 -&gt; Patchwork_18347</li>
</ul>
<p>CI-20190529: 20190529<br>
  CI_DRM_8872: 494f4611d8ee77b49fec39886b8b97c14f291f18 @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br>
  IGT_5767: 39e9aa1032a4e60f776f34b3ccf4fb728abbfe5c @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br>
  Patchwork_18347: ed9c2cbd0615944411c1dcfa8383a8174b1f215f @ git://anongit=
.freedesktop.org/gfx-ci/linux</p>
<p>=3D=3D Linux commits =3D=3D</p>
<p>ed9c2cbd0615 drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()<br>
dbc6ce6444f9 drm/i915/dp: Extract drm_dp_read_dpcd_caps()<br>
b2b88eaa8158 drm/nouveau/kms: Don't change EDID when it hasn't actually cha=
nged<br>
c726b1b06424 drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT<br>
dd59fa4b47de drm/i915/dp: Extract drm_dp_get_sink_count()<br>
e308120f0a75 drm/i915/dp: Extract drm_dp_has_sink_count()<br>
7ebbddd8fe5f drm/nouveau/kms/nv50-: Use downstream DP clock limits for mode=
 validation<br>
43964c882505 drm/i915/dp: Extract drm_dp_downstream_read_info()<br>
00e33908c535 drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths<=
br>
67b2ac39f22b drm/nouveau/kms: Move drm_dp_cec_unset_edid() into nouveau_con=
nector_detect()<br>
1616b919e4b2 drm/nouveau/kms: Use new drm_dp_has_mst() helper for checking =
MST caps<br>
8b6671700abf drm/i915/dp: Extract drm_dp_has_mst()<br>
2aa54c3a5de3 drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling<br=
>
b197d002e32f drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in nv5=
0_sor_disable()<br>
7cb0374b4558 drm/nouveau/kms: Search for encoders' connectors properly<br>
eb430d7e3dc4 drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in nv50_mstm_new=
()<br>
bd4724757ea9 drm/nouveau/kms/nv50-: Use macros for DP registers in nouveau_=
dp.c<br>
478aa516d10c drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in nouveau_=
dp.c<br>
d6d94517b732 drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()<br=
>
7429fbed7536 drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()</p>



</blockquote><div><span><pre>-- </pre><br><div style=3D"width: 78ch;">Cheer=
s,</div><div style=3D"width: 78ch;">=09Lyude Paul (she/her)</div><div style=
=3D"width: 78ch;">=09Software Engineer at Red Hat</div></span></div>
</blockquote><div><span><pre>-- <br></pre><div style=3D"width: 78ch;">Cheer=
s,</div><div style=3D"width: 78ch;">=09Lyude Paul (she/her)</div><div style=
=3D"width: 78ch;">=09Software Engineer at Red Hat</div></span></div></body>=
</html>

--=-68aCC9Uwt8XMVIUZRh2R--


--===============1809330547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1809330547==--

