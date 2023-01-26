Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEB967CF53
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 16:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEEC310E092;
	Thu, 26 Jan 2023 15:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3804C10E092
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 15:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674745773; x=1706281773;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to;
 bh=lNtfxUKq2g6Il5EZ9+voorH0ndokXp+73DLgGG3eppw=;
 b=OZlB0gw+gNaqPAziWXI7bS0BWh1TdicqCFQE1Tdrd0T/+f24gOanie0j
 3iTgNyb6xhI4hkRw9W58cYWkHi0hmIUixqGwQ2rwis9QoN5N496R5xArN
 wYvxwTUGDqRjsKflVdjhdaW4W4xGWf2LklWzFsoDUhWMneyz6dJzC3Z2H
 RmsE7s3wc1U7FfcazqpNDClC+LWQTU9/h4pmX0BSvsvodgiLl2wXWd4ti
 /nZ6XFF/FmxiEQpShUDPz6igfRE5RWih9DUT1EXXmR/7qoLX/WvyKutHv
 GfuIKSUCLuwuhwfqN8OrG9mntufotG0xjoS0fQt5OaVgNggjCH9azAU3B A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328099404"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; 
 d="scan'208,217";a="328099404"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 06:59:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="771163884"
X-IronPort-AV: E=Sophos;i="5.97,248,1669104000"; 
 d="scan'208,217";a="771163884"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.95])
 ([10.213.31.95])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 06:59:53 -0800
Content-Type: multipart/alternative;
 boundary="------------TK6JiZlTDcS8nhmLcJkJuM00"
Message-ID: <6ad222e5-d523-774c-36de-4c4a1c94b1d5@intel.com>
Date: Thu, 26 Jan 2023 15:59:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230125221517.1880083-1-andrzej.hajda@intel.com>
 <167470458127.539.15617244468778851465@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167470458127.539.15617244468778851465@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_selftests_for_TLB_invalidation_=28rev3=29?=
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------TK6JiZlTDcS8nhmLcJkJuM00
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 26.01.2023 04:43, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gt: Add selftests for TLB invalidation (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/112894/
> *State:* 	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12640 -> Patchwork_112894v3
>
>
>     Summary
>
> *SUCCESS*
>
> No regressions found.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/index.html
>
>
>     Participating hosts (37 -> 38)
>
> Additional (2): fi-kbl-soraka fi-bsw-kefka
> Missing (1): fi-pnv-d510
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_112894v3:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     {igt@i915_selftest@live@gt_tlb} (NEW):
>
>      o
>
>         {bat-dg2-11}: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-11/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         fi-bsw-nick: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-nick/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         fi-bsw-kefka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-kefka/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         {bat-atsm-1}: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-atsm-1/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         {bat-dg2-9}: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-9/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         {bat-dg2-8}: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-8/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         fi-bsw-n3050: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-n3050/igt@i915_selftest@live@gt_tlb.html>
>
>      o
>
>         fi-bdw-gvtdvm: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bdw-gvtdvm/igt@i915_selftest@live@gt_tlb.html>
>

We have:
1. 4 tests ended with -EINVAL, this is due to attempt of pinning pages 
with too small alignment, skipping testing alignment lower than 
i915_vm_obj_min_alignment(va->vm, va->obj) solves it.
2. 2 tests provoking OOM killer, dropping lookup for phys addresses 
different at upper32 bits should solve it.
3. 2 tests on bsw machines fails due to "Spinner ended unexpectedly" at 
sampling vcs0 and with non-contiguous pages, no idea atm how to solve it 
(silently drop in case page is non-contig?), any ideas.

Regards
Andrzej

>  *
>      o
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1:
>       o {bat-adlp-6}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1.html>
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_12640 and 
> Patchwork_112894v3:
>
>
>       New IGT tests (1)
>
>   * igt@i915_selftest@live@gt_tlb:
>       o Statuses : 6 dmesg-fail(s) 2 incomplete(s) 30 pass(s)
>       o Exec time: [0.0] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_112894v3 that come from known 
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@i915_module_load@reload:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@i915_module_load@reload.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@i915_selftest@live@execlists:
>
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@i915_selftest@live@execlists.html>
>         (i915#7156 <https://gitlab.freedesktop.org/drm/intel/issues/7156>)
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>  *
>
>     igt@kms_chamelium_frames@hdmi-crc-fast:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +15
>         similar issues
>  *
>
>     igt@kms_chamelium_hpd@common-hpd-after-suspend:
>
>       o fi-rkl-11600: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-rkl-11600/igt@kms_chamelium_hpd@common-hpd-after-suspend.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o fi-bsw-kefka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +26
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_suspend@basic-s0@smem:
>
>       o {bat-adlp-9}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html>
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o fi-rkl-11600: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#7793
>         <https://gitlab.freedesktop.org/drm/intel/issues/7793>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html>
>  *
>
>     igt@i915_selftest@live@migrate:
>
>       o {bat-dg2-11}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html>
>         (i915#7699
>         <https://gitlab.freedesktop.org/drm/intel/issues/7699>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-11/igt@i915_selftest@live@migrate.html>
>  *
>
>     igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
>
>       o fi-bsw-n3050: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12640 -> Patchwork_112894v3
>
> CI-20190529: 20190529
> CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_112894v3: cc7783f223ac644092bb8788f0750fc5c68aa00e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 40c7d71e7421 drm/i915/gt: Add selftests for TLB invalidation
>

--------------TK6JiZlTDcS8nhmLcJkJuM00
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 26.01.2023 04:43, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:167470458127.539.15617244468778851465@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gt: Add selftests for TLB invalidation (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/112894/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/112894/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>success</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12640 -&gt;
        Patchwork_112894v3</h1>
      <h2>Summary</h2>
      <p><strong>SUCCESS</strong></p>
      <p>No regressions found.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/index.html</a></p>
      <h2>Participating hosts (37 -&gt; 38)</h2>
      <p>Additional (2): fi-kbl-soraka fi-bsw-kefka <br>
        Missing (1): fi-pnv-d510 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_112894v3:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>{igt@i915_selftest@live@gt_tlb} (NEW):</p>
          <ul>
            <li>
              <p>{bat-dg2-11}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-11/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">DMESG-FAIL</a></p>
            </li>
            <li>
              <p>fi-bsw-nick: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-nick/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">INCOMPLETE</a></p>
            </li>
            <li>
              <p>fi-bsw-kefka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-kefka/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">DMESG-FAIL</a></p>
            </li>
            <li>
              <p>{bat-atsm-1}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-atsm-1/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">DMESG-FAIL</a></p>
            </li>
            <li>
              <p>{bat-dg2-9}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-9/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">DMESG-FAIL</a></p>
            </li>
            <li>
              <p>{bat-dg2-8}: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-8/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">DMESG-FAIL</a></p>
            </li>
            <li>
              <p>fi-bsw-n3050: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-n3050/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">DMESG-FAIL</a></p>
            </li>
            <li>
              <p>fi-bdw-gvtdvm: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bdw-gvtdvm/igt@i915_selftest@live@gt_tlb.html"
                  moz-do-not-send="true">INCOMPLETE</a></p>
            </li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    We have:<br>
    1. 4 tests ended with -EINVAL, this is due to attempt of pinning
    pages with too small alignment, skipping testing alignment lower
    than i915_vm_obj_min_alignment(va-&gt;vm, va-&gt;obj) solves it.<br>
    2. 2 tests provoking OOM killer, dropping lookup for phys addresses
    different at upper32 bits should solve it.<br>
    3. 2 tests on bsw machines fails due to "Spinner ended unexpectedly"
    at sampling vcs0 and with non-contiguous pages, no idea atm how to
    solve it (silently drop in case page is non-contig?), any ideas.<br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
      cite="mid:167470458127.539.15617244468778851465@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
            <li>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1:
          <ul>
            <li>{bat-adlp-6}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-adlp-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-edp-1.html"
                moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_12640 and
        Patchwork_112894v3:</p>
      <h3>New IGT tests (1)</h3>
      <ul>
        <li>igt@i915_selftest@live@gt_tlb:
          <ul>
            <li>Statuses : 6 dmesg-fail(s) 2 incomplete(s) 30 pass(s)</li>
            <li>Exec time: [0.0] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_112894v3 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
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
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@i915_module_load@reload.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@execlists:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@i915_selftest@live@execlists.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7156"
                moz-do-not-send="true">i915#7156</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-apl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5334"
                moz-do-not-send="true">i915#5334</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1886"
                moz-do-not-send="true">i915#1886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +15 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
          <ul>
            <li>fi-rkl-11600: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-rkl-11600/igt@kms_chamelium_hpd@common-hpd-after-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7828"
                moz-do-not-send="true">i915#7828</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>fi-bsw-kefka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +26 similar
              issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s0@smem:</p>
          <ul>
            <li>{bat-adlp-9}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html"
                moz-do-not-send="true">DMESG-WARN</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-adlp-9/igt@gem_exec_suspend@basic-s0@smem.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>fi-rkl-11600: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7793"
                moz-do-not-send="true">i915#7793</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@migrate:</p>
          <ul>
            <li>{bat-dg2-11}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/bat-dg2-11/igt@i915_selftest@live@migrate.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7699"
                moz-do-not-send="true">i915#7699</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/bat-dg2-11/igt@i915_selftest@live@migrate.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:</p>
          <ul>
            <li>fi-bsw-n3050: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12640/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v3/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12640 -&gt; Patchwork_112894v3</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12640: cc7783f223ac644092bb8788f0750fc5c68aa00e @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_112894v3: cc7783f223ac644092bb8788f0750fc5c68aa00e @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>40c7d71e7421 drm/i915/gt: Add selftests for TLB invalidation</p>
    </blockquote>
    <br>
  </body>
</html>

--------------TK6JiZlTDcS8nhmLcJkJuM00--
