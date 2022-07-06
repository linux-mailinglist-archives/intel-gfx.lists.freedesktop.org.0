Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E01DD5686CC
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 13:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12477112B10;
	Wed,  6 Jul 2022 11:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE2310FF8A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 11:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657107646; x=1688643646;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=85D3VYLJ1aU9hQ28HzhFIasKfpymZ+JnIFmZKOkadao=;
 b=gp0ncB1S/eUBZjN3Rzkv9WBQD6xiKeB4QixRAnDbp6b7rrVnq3zkGcgO
 lg/wWt+PscaIIMWDSwFtnNcRtS4yLnSC5Bc5xpjoSmDr9Ha/WQQGbK6mc
 BB5MUXQDf73tkRj4HVDnJofQvQnr4a0Tgi10OfOXFz15RlqUg2po0UH+/
 AabThfurFLEE1etyQJO47/t00+EHzlv4RRmjUQQwqUgtovcudb7uUQEmg
 zCb5jpFYLp/crcWPYgYDjyB0NAHqUDpCC3k+PoYmjsp/HFhSUknoKs4J9
 VKNi5nzgnaMFj3Zu6usmiQVA3RSngBq8AWWv+cMxwnASZzCfU6mmY/m8W g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="281273582"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="281273582"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:40:46 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="920133459"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.5.198])
 ([10.213.5.198])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:40:44 -0700
Message-ID: <924903ea-04f5-fca5-c178-8a8e62247d02@intel.com>
Date: Wed, 6 Jul 2022 13:40:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20220630140308.3485100-1-andrzej.hajda@intel.com>
 <165666548165.30281.942333094219019561@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165666548165.30281.942333094219019561@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_stop_HPD_workers_before_display_driver_unregis?=
 =?utf-8?q?ter_=28rev2=29?=
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

On 01.07.2022 10:51, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/display: stop HPD workers before display driver 
> unregister (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/105557/ 
> <https://patchwork.freedesktop.org/series/105557/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11834_full -> Patchwork_105557v2_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_105557v2_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105557v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (13 -> 12)
> 
> Missing (1): pig-glk-j5005
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_105557v2_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html>
>   *
> 
>     igt@perf@non-zero-reason:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl7/igt@perf@non-zero-reason.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl6/igt@perf@non-zero-reason.html>
> 

Again not related.

Regards
Andrzej


> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html>
> 
> 
>       Piglit changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     spec@arb_texture_multisample@texelfetch@16-vs-isampler2dmsarray:
> 
>       o pig-kbl-iris: NOTRUN -> CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/pig-kbl-iris/spec@arb_texture_multisample@texelfetch@16-vs-isampler2dmsarray.html>
>   *
> 
>     spec@glsl-1.30@execution@texelfetch@fs-texelfetch-sampler2darray-swizzle:
> 
>       o pig-skl-6260u: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/pig-skl-6260u/spec@glsl-1.30@execution@texelfetch@fs-texelfetch-sampler2darray-swizzle.html>
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11834_full and 
> Patchwork_105557v2_full:
> 
> 
>       New IGT tests (13)
> 
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [2.28] s
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [2.18] s
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [2.17] s
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-d-hdmi-a-3:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [2.20] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.21] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.21] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.19] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.19] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.20] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.21] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.21] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.19] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.20] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_105557v2_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>   *
> 
>     igt@gem_ctx_persistence@smoketest:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl10/igt@gem_ctx_persistence@smoketest.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl7/igt@gem_ctx_persistence@smoketest.html>
>         (i915#6310
>         <https://gitlab.freedesktop.org/drm/intel/issues/6310>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-in-fence:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_schedule@pi-shared-iova@vecs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk1/igt@gem_exec_schedule@pi-shared-iova@vecs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk1/igt@gem_exec_schedule@pi-shared-iova@vecs0.html>
>         (i915#6310
>         <https://gitlab.freedesktop.org/drm/intel/issues/6310>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_schedule@reorder-wide@rcs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl4/igt@gem_exec_schedule@reorder-wide@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl9/igt@gem_exec_schedule@reorder-wide@rcs0.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#6310 <https://gitlab.freedesktop.org/drm/intel/issues/6310>)
>   *
> 
>     igt@gem_exec_whisper@basic-fds-forked-all:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         (i915#6310 <https://gitlab.freedesktop.org/drm/intel/issues/6310>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl4/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
> 
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@gem_lmem_swapping@parallel-random-verify.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>   *
> 
>     igt@gem_pxp@create-protected-buffer:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@gem_pxp@create-protected-buffer.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +1
>         similar issue
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl4/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +111
>         similar issues
>   *
> 
>     igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html>
>         (i915#768 <https://gitlab.freedesktop.org/drm/intel/issues/768>)
>   *
> 
>     igt@gem_spin_batch@spin-each:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl7/igt@gem_spin_batch@spin-each.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl3/igt@gem_spin_batch@spin-each.html>
>         (i915#2898 <https://gitlab.freedesktop.org/drm/intel/issues/2898>)
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@gem_userptr_blits@dmabuf-sync.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3323 <https://gitlab.freedesktop.org/drm/intel/issues/3323>)
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@gen9_exec_parse@allowed-all.html>
>         (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o
> 
>         shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk7/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk9/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@i915_pm_rpm@dpms-lpsp.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +166
>         similar issues
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (fdo#110892 <https://bugs.freedesktop.org/show_bug.cgi?id=110892>)
>   *
> 
>     igt@i915_suspend@basic-s3-without-i915:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#5903 <https://gitlab.freedesktop.org/drm/intel/issues/5903>)
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl9/igt@i915_suspend@fence-restore-untiled.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl6/igt@i915_suspend@fence-restore-untiled.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/intel/issues/4817> /
>         i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>   *
> 
>     igt@kms_big_fb@4-tiled-64bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-270.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>   *
> 
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk9/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html>
>         (i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb3/igt@kms_ccs@pipe-b-missing-ccs-buffer-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +4
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +8
>         similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>   *
> 
>     igt@kms_chamelium@dp-hpd-with-enabled-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_chamelium@dp-hpd-with-enabled-mode.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-crc-multiple:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl4/igt@kms_chamelium@hdmi-crc-multiple.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-green-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_color@pipe-d-ctm-green-to-red.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#1149 <https://gitlab.freedesktop.org/drm/intel/issues/1149>)
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-negative:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk1/igt@kms_color_chamelium@pipe-a-ctm-negative.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +10
>         similar issues
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-dp-1-32x10:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-dp-1-32x10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +27
>         similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#6328 <https://gitlab.freedesktop.org/drm/intel/issues/6328>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@toggle:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +2
>         similar issues
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-modeset-vs-hang:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html>
>         (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +2 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend@c-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +3 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate@a-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +1
>         similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         (i915#4911 <https://gitlab.freedesktop.org/drm/intel/issues/4911>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +11
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +33
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +33
>         similar issues
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +2
>         similar issues
>   *
> 
>     igt@kms_plane_cursor@pipe-b-overlay-size-256:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl7/igt@kms_plane_cursor@pipe-b-overlay-size-256.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl4/igt@kms_plane_cursor@pipe-b-overlay-size-256.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) +1
>         similar issue
>   *
> 
>     igt@kms_plane_lowres@tiling-yf:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb3/igt@kms_plane_lowres@tiling-yf.html>
>         (fdo#112054 <https://bugs.freedesktop.org/show_bug.cgi?id=112054>)
>   *
> 
>     igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb6/igt@kms_plane_lowres@tiling-yf@pipe-a-edp-1.html>
>         (i915#3536
>         <https://gitlab.freedesktop.org/drm/intel/issues/3536>) +2
>         similar issues
>   *
> 
>     igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#5776
>         <https://gitlab.freedesktop.org/drm/intel/issues/5776>) +2
>         similar issues
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068>
>         / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_vblank@pipe-d-wait-idle:
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk6/igt@kms_vblank@pipe-d-wait-idle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@kms_vblank@pipe-d-wait-idle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl4/igt@kms_vblank@pipe-d-wait-idle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533
>         <https://gitlab.freedesktop.org/drm/intel/issues/533>)
> 
>   *
> 
>     igt@kms_writeback@writeback-invalid-parameters:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@kms_writeback@writeback-invalid-parameters.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@short-reads:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl3/igt@perf@short-reads.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl7/igt@perf@short-reads.html>
>         (i915#51 <https://gitlab.freedesktop.org/drm/intel/issues/51>)
>   *
> 
>     igt@sw_sync@sync_multi_timeline_wait:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@sw_sync@sync_multi_timeline_wait.html>
>         (i915#6140 <https://gitlab.freedesktop.org/drm/intel/issues/6140>)
>   *
> 
>     igt@sysfs_clients@recycle-many:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@sysfs_clients@recycle-many.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +2
>         similar issues
>   *
> 
>     igt@sysfs_clients@split-25:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb7/igt@sysfs_clients@split-25.html>
>         (i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl4/igt@sysfs_clients@split-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@nullptr:
> 
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-dg1-17/igt@fbdev@nullptr.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-dg1-18/igt@fbdev@nullptr.html>
>   *
> 
>     igt@fbdev@read:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@fbdev@read.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@fbdev@read.html>
>   *
> 
>     igt@gem_bad_reloc@negative-reloc-lut:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html>
>         +12 similar issues
>   *
> 
>     igt@gem_ctx_bad_destroy@invalid-pad:
> 
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-dg1-17/igt@gem_ctx_bad_destroy@invalid-pad.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-dg1-18/igt@gem_ctx_bad_destroy@invalid-pad.html>
>         +15 similar issues
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         +9 similar issues
>   *
> 
>     igt@gem_ctx_persistence@engines-hostile@bcs0:
> 
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-dg1-13/igt@gem_ctx_persistence@engines-hostile@bcs0.html>
>         (i915#4883
>         <https://gitlab.freedesktop.org/drm/intel/issues/4883>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-dg1-16/igt@gem_ctx_persistence@engines-hostile@bcs0.html>
>         +2 similar issues
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-hang@blt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         (i915#6252
>         <https://gitlab.freedesktop.org/drm/intel/issues/6252>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-tglu-2/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglu-6/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl1/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html>
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>   *
> 
>     igt@gem_readwrite@read-write:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-6/igt@gem_readwrite@read-write.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@gem_readwrite@read-write.html>
>         +2 similar issues
>   *
> 
>     igt@gen9_exec_parse@bb-large:
> 
>       o shard-apl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl8/igt@gen9_exec_parse@bb-large.html>
>         (i915#4639
>         <https://gitlab.freedesktop.org/drm/intel/issues/4639>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl7/igt@gen9_exec_parse@bb-large.html>
>   *
> 
>     igt@gen9_exec_parse@bb-start-param:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html>
>         +4 similar issues
>   *
> 
>     igt@i915_hangman@engine-engine-error@vcs0:
> 
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk3/igt@i915_hangman@engine-engine-error@vcs0.html>
>         (i915#6310
>         <https://gitlab.freedesktop.org/drm/intel/issues/6310>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk1/igt@i915_hangman@engine-engine-error@vcs0.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-snb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#6201
>         <https://gitlab.freedesktop.org/drm/intel/issues/6201>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html>
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-dg1-15/igt@i915_pm_rpm@dpms-lpsp.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-a-ctm-blue-to-red:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@kms_color@pipe-a-ctm-blue-to-red.html>
>         (i915#1149
>         <https://gitlab.freedesktop.org/drm/intel/issues/1149> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-b-degamma:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@kms_color@pipe-b-degamma.html>
>         (i915#1149
>         <https://gitlab.freedesktop.org/drm/intel/issues/1149> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>
>         / i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_color@pipe-b-degamma.html>
>   *
> 
>     igt@kms_color@pipe-c-invalid-gamma-lut-sizes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@kms_color@pipe-c-invalid-gamma-lut-sizes.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>
>         / i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html>
>         +3 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend@c-edp1:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/intel/issues/4839>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@kms_flip@flip-vs-suspend@c-edp1.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         (i915#3701
>         <https://gitlab.freedesktop.org/drm/intel/issues/3701>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html>
>         (i915#3701
>         <https://gitlab.freedesktop.org/drm/intel/issues/3701>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         +16 similar issues
>   *
> 
>     igt@kms_invalid_mode@int-max-clock:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@kms_invalid_mode@int-max-clock.html>
>         (i915#4278
>         <https://gitlab.freedesktop.org/drm/intel/issues/4278>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html>
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         (i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html>
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068>
>         / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>   *
> 
>     igt@kms_psr@primary_page_flip:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@kms_psr@primary_page_flip.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_psr@primary_page_flip.html>
>   *
> 
>     igt@kms_psr@psr2_primary_page_flip:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html>
>         +1 similar issue
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-90:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-glk7/igt@kms_rotation_crc@primary-rotation-90.html>
>         (i915#6310
>         <https://gitlab.freedesktop.org/drm/intel/issues/6310>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-glk6/igt@kms_rotation_crc@primary-rotation-90.html>
>   *
> 
>     igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html>
>   *
> 
>     igt@kms_vblank@pipe-b-query-idle:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-5/igt@kms_vblank@pipe-b-query-idle.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html>
>         +20 similar issues
>   *
> 
>     igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
>         (i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl10/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
>   *
> 
>     igt@perf@invalid-create-userspace-config:
> 
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-dg1-17/igt@perf@invalid-create-userspace-config.html>
>         (i915#5608
>         <https://gitlab.freedesktop.org/drm/intel/issues/5608>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-dg1-18/igt@perf@invalid-create-userspace-config.html>
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-6/igt@prime_vgem@basic-write.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@prime_vgem@basic-write.html>
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-rkl-6/igt@prime_vgem@coherency-gtt.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117 <https://gitlab.freedesktop.org/drm/intel/issues/6117>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2876
>         <https://gitlab.freedesktop.org/drm/intel/issues/2876>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588 <https://gitlab.freedesktop.org/drm/intel/issues/588>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl6/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>
>         / i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl6/igt@kms_chamelium@dp-crc-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@kms_psr2_su@page_flip-nv12:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-iclb5/igt@kms_psr2_su@page_flip-nv12.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068>
>         / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html>
>         (i915#5939 <https://gitlab.freedesktop.org/drm/intel/issues/5939>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-skl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-skl6/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl9/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-skl9/igt@runner@aborted.html>)
>         (i915#2029
>         <https://gitlab.freedesktop.org/drm/intel/issues/2029> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-apl8/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-apl4/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11834/shard-kbl4/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> / i915#92
>         <https://gitlab.freedesktop.org/drm/intel/issues/92>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v2/shard-kbl4/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> / i915#92
>         <https://gitlab.freedesktop.org/drm/intel/issues/92>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11834 -> Patchwork_105557v2
> 
> CI-20190529: 20190529
> CI_DRM_11834: 521bf6e9c3ca9405ea53baa3ba0feb597fd24219 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6553: 3cf110f8dcd1f4f02cf84339664b413abdaebf7d @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105557v2: 521bf6e9c3ca9405ea53baa3ba0feb597fd24219 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

