Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2356D3F96
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 10:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBF810E3B9;
	Mon,  3 Apr 2023 08:58:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881AA10E3D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 08:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680512297; x=1712048297;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=M2GWXz1MzSQCbyP7x+nOTSp6M9aXXwmV9T9qYuCOAMg=;
 b=VivLmk0lCgSP9AXN69r7FoQEYMcvcQzfC5oQ0vydxAlz5E9yMGuyXlO6
 Ctdj95PzBIFdTWGY3mQ0cicHKu2PxyImD5PMMUtDUSBS/gpJWrzQM7ucC
 cPIO8XOx57m6S1jRmeAPDrReiSuQP4mT95gzqVFNHFR1qj9qOtWyucxiJ
 gws/3gRP6GcIE3Pbkbg7Zcejsslf0zQh3V6GBDD6iTrgMRLo+N3/BFYJU
 1+WQdF8MjGjGRbhFiHdJRDzEdQ/y7rFQNimu8IT0otcUjiEmRsbLXDnx2
 TjkyM3S/JBgKpJLxKu+mImWnlCZhvgCafaMjQPV5kcaInvvEJml58plWp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="344398224"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; 
 d="scan'208,217";a="344398224"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 01:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="755155392"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; 
 d="scan'208,217";a="755155392"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.167])
 ([10.213.28.167])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 01:58:15 -0700
Content-Type: multipart/alternative;
 boundary="------------zVxwY0aPRl7YR2mSH8QTZ4ya"
Message-ID: <efdd1c4c-8545-76c9-e0b4-05af2b0b4f5e@intel.com>
Date: Mon, 3 Apr 2023 10:58:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230330-hold_wakeref_for_active_vm-v2-1-724d201499c2@intel.com>
 <168037214477.8633.716359384690927545@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <168037214477.8633.716359384690927545@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Hold_a_wakeref_for_the_active_VM_=28rev2=29?=
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
--------------zVxwY0aPRl7YR2mSH8QTZ4ya
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 01.04.2023 20:02, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/gt: Hold a wakeref for the active VM (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/115873/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12951_full -> Patchwork_115873v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_115873v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_115873v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (7 -> 7)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_115873v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_fence@syncobj-repeat:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk5/igt@gem_exec_fence@syncobj-repeat.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt@gem_exec_fence@syncobj-repeat.html>
>         +2 similar issues
>

The actual test did not even start, because of failure on previous tests.
All tests since igt@perf@enable-disable@0-rcs0 timeouts on this machine[1].
Since igt@perf@enable-disable is untrusted/suppressed I guess it is not 
related.
Moreover v1(which differs only by comment) passed.
Summarizing apparently known bug in igt@perf@subtests [2].

[1]: 
http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt_runner13.txt
[2]: https://gitlab.freedesktop.org/drm/intel/-/issues/5213

Regards
Andrzej

>  *
>
>
>         Warnings
>
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
>
>       o shard-glk: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html>
>         +2 similar issues
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * {igt@perf@enable-disable@0-rcs0}:
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk5/igt@perf@enable-disable@0-rcs0.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt@perf@enable-disable@0-rcs0.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_115873v2_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk9/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk8/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl7/igt@gen9_exec_parse@allowed-single.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl3/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-snb5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html>
>         (i915#2521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html>
>  *
>
>     igt@gem_eio@in-flight-contexts-1us:
>
>       o {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-tglu-7/igt@gem_eio@in-flight-contexts-1us.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-tglu-3/igt@gem_eio@in-flight-contexts-1us.html>
>  *
>
>     igt@gem_eio@reset-stress:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-dg1-14/igt@gem_eio@reset-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-dg1-15/igt@gem_eio@reset-stress.html>
>  *
>
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>         (i915#72 <https://gitlab.freedesktop.org/drm/intel/issues/72>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
>      o
>
>         shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>
>      o
>
>         shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12951 -> Patchwork_115873v2
>
> CI-20190529: 20190529
> CI_DRM_12951: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7230: f0485204004305dd3ee8f8bbbb9c552e53a4e050 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_115873v2: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------zVxwY0aPRl7YR2mSH8QTZ4ya
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 01.04.2023 20:02, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:168037214477.8633.716359384690927545@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/gt: Hold a wakeref for the active VM (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/115873/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/115873/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12951_full -&gt;
        Patchwork_115873v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_115873v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_115873v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (7 -&gt; 7)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_115873v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_fence@syncobj-repeat:
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk5/igt@gem_exec_fence@syncobj-repeat.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt@gem_exec_fence@syncobj-repeat.html"
                moz-do-not-send="true">TIMEOUT</a> +2 similar issues</li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    The actual test did not even start, because of failure on previous
    tests.<br>
    All tests since igt@perf@enable-disable@0-rcs0 timeouts on this
    machine[1].<br>
    Since igt@perf@enable-disable is untrusted/suppressed I guess it is
    not related.<br>
    Moreover v1(which differs only by comment) passed.<br>
    Summarizing apparently known bug in igt@perf@subtests [2].<br>
    <br>
    [1]:
<a class="moz-txt-link-freetext" href="http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt_runner13.txt">http://gfx-ci.igk.intel.com/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt_runner13.txt</a><br>
    [2]: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/5213">https://gitlab.freedesktop.org/drm/intel/-/issues/5213</a><br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
      cite="mid:168037214477.8633.716359384690927545@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html"
                moz-do-not-send="true">TIMEOUT</a> +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>{igt@perf@enable-disable@0-rcs0}:
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk5/igt@perf@enable-disable@0-rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk9/igt@perf@enable-disable@0-rcs0.html"
                moz-do-not-send="true">TIMEOUT</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_115873v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk9/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk8/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2846"
                moz-do-not-send="true">i915#2846</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl7/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl3/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5334"
                moz-do-not-send="true">i915#5334</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-snb5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-vga-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2521"
                moz-do-not-send="true">i915#2521</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@b-dp1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6268"
                moz-do-not-send="true">i915#6268</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-contexts-1us:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-tglu-7/igt@gem_eio@in-flight-contexts-1us.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                moz-do-not-send="true">i915#3063</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-tglu-3/igt@gem_eio@in-flight-contexts-1us.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@reset-stress:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-dg1-14/igt@gem_eio@reset-stress.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5784"
                moz-do-not-send="true">i915#5784</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-dg1-15/igt@gem_eio@reset-stress.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/72"
                moz-do-not-send="true">i915#72</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
          <ul>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                  moz-do-not-send="true">i915#2346</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12951/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                  moz-do-not-send="true">i915#2346</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115873v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12951 -&gt; Patchwork_115873v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12951: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7230: f0485204004305dd3ee8f8bbbb9c552e53a4e050 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_115873v2: f128906b94b25a0f0c12dc8c647b8adc8d934d8c @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
    <br>
  </body>
</html>

--------------zVxwY0aPRl7YR2mSH8QTZ4ya--
