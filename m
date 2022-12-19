Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF2A650EB4
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 16:35:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5354810E035;
	Mon, 19 Dec 2022 15:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198C210E002
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 15:35:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671464111; x=1703000111;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to;
 bh=iRUmg591G1iANaJfC69w9erRXb/dP2JW9TLvmVveerU=;
 b=hxAa0ZN9oCG7l8NY+tjsK8mUebbUUuEYnXElVthYWBUehkK72WK6j7RK
 3IHDbaKEKt0GygrPEHgKGwq0xQWmMYeIf/R6kB10ITYyzBwxM1Oexa59c
 2WLpGZpet7yMiQwL03IUw47Zj4xdfB1zLKonPScARpjKfA7aLH5FIjY1A
 Qn3/KrrgZwzXEAT5FcvWaB5rdTVs6L2zVgTs4P5tX1i2OdM60Bt4mFeYu
 zk+yR9dmwMp810QY4L+rY6xdDhLwni69h3aGdamIcIaNAQHegWRGXt9E/
 wV6p04XEhonYHd1MNiQEXP3JX6vLOd0T/xloYycWwwlcrCtYT2iFnYKsb Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="299054685"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; 
 d="scan'208,217";a="299054685"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 07:35:09 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="683045203"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; 
 d="scan'208,217";a="683045203"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.42])
 ([10.213.16.42])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 07:35:08 -0800
Content-Type: multipart/alternative;
 boundary="------------65PnSNIMqCfUKDV0Hf0Kw3iN"
Message-ID: <79ba3bd4-8848-d9b0-8296-cf0293781fbd@intel.com>
Date: Mon, 19 Dec 2022 16:35:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20221219092428.2515430-1-andrzej.hajda@intel.com>
 <167146087831.5874.3807494779636948779@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167146087831.5874.3807494779636948779@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/display/vlv=3A_fix_pixel_o?=
 =?utf-8?q?verlap_register_update?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------65PnSNIMqCfUKDV0Hf0Kw3iN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 19.12.2022 15:41, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	series starting with [1/2] drm/i915/display/vlv: fix pixel 
> overlap register update
> *URL:* 	https://patchwork.freedesktop.org/series/112045/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12515 -> Patchwork_112045v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_112045v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_112045v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/index.html
>
>
>     Participating hosts (40 -> 41)
>
> Additional (2): fi-snb-2520m bat-adlp-4
> Missing (1): fi-icl-u2
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_112045v1:
>
>
>       CI changes
>
>
>         Possible regressions
>
>   * boot:
>       o fi-ivb-3770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-ivb-3770/boot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-ivb-3770/boot.html>
>

Apparently some CI failure, boot log looks OK, in run0.txt I've spotted line
     Build step 'Execute shell' marked build as failure
Probably some CI issue, queued re-test to be sure.

[1]: 
http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_112045v1/fi-ivb-3770/run0.txt

Regards
Andrzej

>  *
>
>
>       IGT changes
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@i915_selftest@live@workarounds:
>       o {bat-rplp-1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-rplp-1/igt@i915_selftest@live@workarounds.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-rplp-1/igt@i915_selftest@live@workarounds.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_112045v1 that come from known 
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
>     igt@debugfs_test@basic-hwmon:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@debugfs_test@basic-hwmon.html>
>         (i915#7456 <https://gitlab.freedesktop.org/drm/intel/issues/7456>)
>  *
>
>     igt@gem_exec_gttfill@basic:
>
>       o fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-pnv-d510/igt@gem_exec_gttfill@basic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html>
>         (i915#7229 <https://gitlab.freedesktop.org/drm/intel/issues/7229>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@gem_tiled_pread_basic.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>  *
>
>     igt@i915_selftest@live@late_gt_pm:
>
>       o fi-kbl-soraka: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html>
>         (i915#7640 <https://gitlab.freedesktop.org/drm/intel/issues/7640>)
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium@dp-crc-fast:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-crc-fast:
>
>       o fi-snb-2520m: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html>
>         (i915#4093
>         <https://gitlab.freedesktop.org/drm/intel/issues/4093>) +3
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4579 <https://gitlab.freedesktop.org/drm/intel/issues/4579>)
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o fi-snb-2520m: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-snb-2520m/igt@prime_vgem@basic-fence-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +23
>         similar issues
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301
>         <https://gitlab.freedesktop.org/drm/intel/issues/3301> /
>         i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@prime_vgem@basic-write.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>      o
>
>         fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#4785
>         <https://gitlab.freedesktop.org/drm/intel/issues/4785>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>
>      o
>
>         {bat-adlm-1}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-adlm-1/igt@i915_selftest@live@hangcheck.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html>
>
>  *
>
>     igt@i915_selftest@live@workarounds:
>
>       o {bat-dg1-7}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-dg1-7/igt@i915_selftest@live@workarounds.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-dg1-7/igt@i915_selftest@live@workarounds.html>
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o {bat-adln-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html>
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:
>
>       o {bat-adlp-6}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html>
>         (i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12515 -> Patchwork_112045v1
>
> CI-20190529: 20190529
> CI_DRM_12515: 25905f33e9cb1630d94ce04688d5a6c756f96e9d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7098: d24d605d1b94d404e5ccea13eed607b81e233696 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_112045v1: 25905f33e9cb1630d94ce04688d5a6c756f96e9d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> e58edd2d7d00 drm/i915/display/vlv: use intel_de_rmw if possible
> 3f77a83c4a5c drm/i915/display/vlv: fix pixel overlap register update
>

--------------65PnSNIMqCfUKDV0Hf0Kw3iN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 19.12.2022 15:41, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:167146087831.5874.3807494779636948779@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>series starting with [1/2] drm/i915/display/vlv: fix
              pixel overlap register update</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/112045/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/112045/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12515 -&gt;
        Patchwork_112045v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_112045v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_112045v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/index.html</a></p>
      <h2>Participating hosts (40 -&gt; 41)</h2>
      <p>Additional (2): fi-snb-2520m bat-adlp-4 <br>
        Missing (1): fi-icl-u2 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_112045v1:</p>
      <h3>CI changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>boot:
          <ul>
            <li>fi-ivb-3770: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-ivb-3770/boot.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-ivb-3770/boot.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Apparently some CI failure, boot log looks OK, in run0.txt I've
    spotted line<br>
        Build step 'Execute shell' marked build as failure<br>
    Probably some CI issue, queued re-test to be sure.<br>
    <br>
    [1]:
<a class="moz-txt-link-freetext" href="http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_112045v1/fi-ivb-3770/run0.txt">http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_112045v1/fi-ivb-3770/run0.txt</a><br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
      cite="mid:167146087831.5874.3807494779636948779@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@i915_selftest@live@workarounds:
          <ul>
            <li>{bat-rplp-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-rplp-1/igt@i915_selftest@live@workarounds.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-rplp-1/igt@i915_selftest@live@workarounds.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_112045v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@debugfs_test@basic-hwmon.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7456"
                moz-do-not-send="true">i915#7456</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_gttfill@basic:</p>
          <ul>
            <li>fi-pnv-d510: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-pnv-d510/igt@gem_exec_gttfill@basic.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7229"
                moz-do-not-send="true">i915#7229</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3282"
                moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                moz-do-not-send="true">i915#6621</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@late_gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-kbl-soraka/igt@i915_selftest@live@late_gt_pm.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7640"
                moz-do-not-send="true">i915#7640</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-crc-fast:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-crc-fast:</p>
          <ul>
            <li>fi-snb-2520m: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-snb-2520m/igt@kms_chamelium@hdmi-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                moz-do-not-send="true">i915#4103</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4093"
                moz-do-not-send="true">i915#4093</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4579"
                moz-do-not-send="true">i915#4579</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>fi-snb-2520m: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-snb-2520m/igt@prime_vgem@basic-fence-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +23 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3301"
                moz-do-not-send="true">i915#3301</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>bat-adlp-4: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-4/igt@prime_vgem@basic-write.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                moz-do-not-send="true">i915#3291</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>) +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>
              <p>fi-hsw-4770: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4785"
                  moz-do-not-send="true">i915#4785</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>{bat-adlm-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-adlm-1/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4983"
                  moz-do-not-send="true">i915#4983</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlm-1/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@workarounds:</p>
          <ul>
            <li>{bat-dg1-7}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-dg1-7/igt@i915_selftest@live@workarounds.html"
                moz-do-not-send="true">DMESG-FAIL</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-dg1-7/igt@i915_selftest@live@workarounds.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>{bat-adln-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2867"
                moz-do-not-send="true">i915#2867</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1:</p>
          <ul>
            <li>{bat-adlp-6}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12515/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2867"
                moz-do-not-send="true">i915#2867</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112045v1/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-edp-1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12515 -&gt; Patchwork_112045v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12515: 25905f33e9cb1630d94ce04688d5a6c756f96e9d @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7098: d24d605d1b94d404e5ccea13eed607b81e233696 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_112045v1: 25905f33e9cb1630d94ce04688d5a6c756f96e9d @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>e58edd2d7d00 drm/i915/display/vlv: use intel_de_rmw if possible<br>
        3f77a83c4a5c drm/i915/display/vlv: fix pixel overlap register
        update</p>
    </blockquote>
    <br>
  </body>
</html>

--------------65PnSNIMqCfUKDV0Hf0Kw3iN--
