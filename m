Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 136C564DA26
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 12:18:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A8B10E533;
	Thu, 15 Dec 2022 11:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B68410E530
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 11:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671103076; x=1702639076;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to;
 bh=kPgr6oLKQ/ph2jTC9Dk8gc0GLW3hGi5rD/ytgVnnWoU=;
 b=ADhyQUVr/ZCVMmsbHaHOQGKjMLaj+rTV72rV/y8RyFbM+woZyTuZBFn8
 C6jLiDzqd16tECtFHXerePxb8XgQMr+ooSizvfxiyp2P+n19TUFHuLFFU
 3ZvHZ4U6pqQB9NdG4GdGo1NP5LnUA1DRTdQJwaNJhMoFhfCgPKIGUAg+q
 zbgr6pq2j2R6d4zHmrNmCr454YHj3i3Up1AblNOPkBapk8SxbFshI/myq
 Or47TkgrTal1AymabzQM6QTeJ5oWfKK0hAcmFstAxqY5svjTmc3DLFKde
 T+7lJVxaF++voMfw6s36aF0jiNC/nIvF2l+Xwd5GUXe0+CGkEh7/hTpsY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="302059153"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; 
 d="scan'208,217";a="302059153"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 03:17:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="738063085"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; 
 d="scan'208,217";a="738063085"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.43.80])
 ([10.252.43.80])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 03:17:47 -0800
Content-Type: multipart/alternative;
 boundary="------------6KmJUazraXVQKfh4Mu7KmnOz"
Message-ID: <50f36f38-3ea5-ed0a-3a2f-28cffe607e8b@linux.intel.com>
Date: Thu, 15 Dec 2022 12:17:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20221213120010.5857-1-nirmoy.das@intel.com>
 <167093509258.25536.10145346417484136453@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <167093509258.25536.10145346417484136453@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Remove_hardcoded_value_with_a_macro?=
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------6KmJUazraXVQKfh4Mu7KmnOz
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 12/13/2022 1:38 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/selftests: Remove hardcoded value with a macro
> *URL:* 	https://patchwork.freedesktop.org/series/111891/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12501 -> Patchwork_111891v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_111891v1 absolutely need 
> to be
> verified manually.
>

This is a bit stretch,  the patch didn't change any thing functional. We 
can ignore the failure.


Nirmoy


> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111891v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html
>
>
>     Participating hosts (38 -> 19)
>
> ERROR: It appears as if the changes made in Patchwork_111891v1 
> prevented too many machines from booting.
>
> Additional (1): fi-skl-guc
> Missing (20): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-adlp-6 
> fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bwr-2160 
> bat-adln-1 bat-atsm-1 bat-jsl-3 bat-rplp-1 bat-dg2-11 fi-bsw-nick 
> bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-adlp-4
>
>
>     Known issues
>
> Here are the changes found in Patchwork_111891v1 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-skl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o fi-rkl-11600: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#4817 <https://gitlab.freedesktop.org/drm/intel/issues/4817>)
>  *
>
>     igt@kms_chamelium@hdmi-crc-fast:
>
>       o fi-skl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>       o fi-skl-guc: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9
>         similar issues
>
>
>         Possible fixes
>
>   * igt@gem_exec_gttfill@basic:
>       o fi-pnv-d510: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-pnv-d510/igt@gem_exec_gttfill@basic.html>
>         (i915#7229
>         <https://gitlab.freedesktop.org/drm/intel/issues/7229>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html>
>
>
>     Build changes
>
>   * Linux: CI_DRM_12501 -> Patchwork_111891v1
>
> CI-20190529: 20190529
> CI_DRM_12501: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111891v1: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> eaf43d121582 drm/i915/selftests: Remove hardcoded value with a macro
>
--------------6KmJUazraXVQKfh4Mu7KmnOz
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 12/13/2022 1:38 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:167093509258.25536.10145346417484136453@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/selftests: Remove hardcoded value with a macro</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/111891/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/111891/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12501 -&gt;
        Patchwork_111891v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_111891v1
        absolutely need to be<br>
        verified manually.</p>
    </blockquote>
    <p><br>
    </p>
    <p>This is a bit stretch,  the patch didn't change any thing
      functional. We can ignore the failure.</p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:167093509258.25536.10145346417484136453@emeril.freedesktop.org">
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_111891v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html</a></p>
      <h2>Participating hosts (38 -&gt; 19)</h2>
      <p>ERROR: It appears as if the changes made in Patchwork_111891v1
        prevented too many machines from booting.</p>
      <p>Additional (1): fi-skl-guc <br>
        Missing (20): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-adlp-6
        fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9
        fi-bwr-2160 bat-adln-1 bat-atsm-1 bat-jsl-3 bat-rplp-1
        bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-adlp-4
      </p>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_111891v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>fi-skl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>fi-rkl-11600: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4817"
                moz-do-not-send="true">i915#4817</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-crc-fast:</p>
          <ul>
            <li>fi-skl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>fi-skl-guc: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +9 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@gem_exec_gttfill@basic:
          <ul>
            <li>fi-pnv-d510: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-pnv-d510/igt@gem_exec_gttfill@basic.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7229"
                moz-do-not-send="true">i915#7229</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12501 -&gt; Patchwork_111891v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12501: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_111891v1: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>eaf43d121582 drm/i915/selftests: Remove hardcoded value with a
        macro</p>
    </blockquote>
  </body>
</html>

--------------6KmJUazraXVQKfh4Mu7KmnOz--
