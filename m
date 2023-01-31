Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEB5682B94
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 12:35:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04AD10E31A;
	Tue, 31 Jan 2023 11:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20A610E31A
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675164922; x=1706700922;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=lcbx7n16XN3FFUf8DW/cKk7okkxjWEIMEZlVAn3GCOo=;
 b=YMACSqjZcCh9mUWAZTvsyMa0cAu/bcqCIUeTEG3nFES3p/sADSxFxE/D
 S/JwZfq9CPnbVP8VPm+x6GvOkEsBRW2Z0nwYNPMLGGeE0DLteTsWcQ4eI
 Jktp3V4YFJsrB6ZKzmfQt89O2iDeQ4sKcU9eua2M4hPoHG2Jd30hhpFpf
 PFgmUPqZSnV0/TVONIXpyB9uNi7dlmYXFObBb7qTyfJ4bJ3JNavmI4V4/
 XHOnVGv5ffESp+AajOH36YeCsdk33pLdnlQacV0RKvF6IbKVGkcJ6sxsh
 WYsnWCmOh5nTdgTXdR8vuX6BUzWc8AnIAjrz1fjzas1s41r6JMfUfBm9H w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326478388"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; 
 d="scan'208,217";a="326478388"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:35:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="838368209"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; 
 d="scan'208,217";a="838368209"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.210.203])
 ([10.251.210.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 03:35:20 -0800
Content-Type: multipart/alternative;
 boundary="------------Ls9Cld6un7qbzTjMDH8LyyVl"
Message-ID: <eecc9e09-d612-e899-5c7e-dd8b54441d6f@linux.intel.com>
Date: Tue, 31 Jan 2023 12:35:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20230130131358.16800-1-nirmoy.das@intel.com>
 <167510099057.3667.7514996465125701502@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <167510099057.3667.7514996465125701502@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Use_sysfs=5Femit=28=29_and_sysfs=5Femit=5Fat=28=29?=
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

This is a multi-part message in MIME format.
--------------Ls9Cld6un7qbzTjMDH8LyyVl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Rerun passed well https://patchwork.freedesktop.org/series/113490/

On 1/30/2023 6:49 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gt: Use sysfs_emit() and sysfs_emit_at()
> *URL:* 	https://patchwork.freedesktop.org/series/113490/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12666 -> Patchwork_113490v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_113490v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_113490v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/index.html
>
>
>     Participating hosts (25 -> 25)
>
> Additional (1): fi-kbl-soraka
> Missing (1): fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_113490v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live@execlists:
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_113490v1 that come from known 
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
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>  *
>
>     igt@kms_chamelium_frames@hdmi-crc-fast:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +15
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-apl-guc: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334
>         <https://gitlab.freedesktop.org/drm/intel/issues/5334>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>  *
>
>     igt@i915_selftest@live@reset:
>
>       o {bat-rpls-1}: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/bat-rpls-1/igt@i915_selftest@live@reset.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983> /
>         i915#7981
>         <https://gitlab.freedesktop.org/drm/intel/issues/7981>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/bat-rpls-1/igt@i915_selftest@live@reset.html>
>  *
>
>     igt@i915_selftest@live@slpc:
>
>       o {bat-adlp-6}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/bat-adlp-6/igt@i915_selftest@live@slpc.html>
>         (i915#6367
>         <https://gitlab.freedesktop.org/drm/intel/issues/6367> /
>         i915#7913
>         <https://gitlab.freedesktop.org/drm/intel/issues/7913>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/bat-adlp-6/igt@i915_selftest@live@slpc.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12666 -> Patchwork_113490v1
>
> CI-20190529: 20190529
> CI_DRM_12666: 908c84b836ee39b5565561a0b352c2dc18378215 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7142: adeeb8527422eeee155ff4039aed34a922da4a7d @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_113490v1: 908c84b836ee39b5565561a0b352c2dc18378215 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 093d7c03c708 drm/i915/gt: Use sysfs_emit() and sysfs_emit_at()
>
--------------Ls9Cld6un7qbzTjMDH8LyyVl
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Rerun passed well
      <a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/series/113490/">https://patchwork.freedesktop.org/series/113490/</a><br>
    </p>
    <div class="moz-cite-prefix">On 1/30/2023 6:49 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:167510099057.3667.7514996465125701502@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gt: Use sysfs_emit() and sysfs_emit_at()</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/113490/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/113490/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12666 -&gt;
        Patchwork_113490v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_113490v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_113490v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/index.html</a></p>
      <h2>Participating hosts (25 -&gt; 25)</h2>
      <p>Additional (1): fi-kbl-soraka <br>
        Missing (1): fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_113490v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live@execlists:
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_113490v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1886"
                moz-do-not-send="true">i915#1886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +15 similar
              issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-apl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5334"
                moz-do-not-send="true">i915#5334</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@reset:</p>
          <ul>
            <li>{bat-rpls-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/bat-rpls-1/igt@i915_selftest@live@reset.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4983"
                moz-do-not-send="true">i915#4983</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7981"
                moz-do-not-send="true">i915#7981</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/bat-rpls-1/igt@i915_selftest@live@reset.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@slpc:</p>
          <ul>
            <li>{bat-adlp-6}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12666/bat-adlp-6/igt@i915_selftest@live@slpc.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6367"
                moz-do-not-send="true">i915#6367</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7913"
                moz-do-not-send="true">i915#7913</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113490v1/bat-adlp-6/igt@i915_selftest@live@slpc.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12666 -&gt; Patchwork_113490v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12666: 908c84b836ee39b5565561a0b352c2dc18378215 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7142: adeeb8527422eeee155ff4039aed34a922da4a7d @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_113490v1: 908c84b836ee39b5565561a0b352c2dc18378215 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>093d7c03c708 drm/i915/gt: Use sysfs_emit() and sysfs_emit_at()</p>
    </blockquote>
  </body>
</html>

--------------Ls9Cld6un7qbzTjMDH8LyyVl--
