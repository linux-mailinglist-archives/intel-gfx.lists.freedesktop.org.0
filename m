Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83034561DFC
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 16:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B83DE11B8CB;
	Thu, 30 Jun 2022 14:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18AE811B8C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 14:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656599626; x=1688135626;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=vJMTdqJ/y2WFcFG4DToD8ueaevsXD7uq3gy+K+KaMl8=;
 b=fDr1i7WUAAvuSPja4pSL27Q6hEtz8qJ3nTGXPQkJzuFgRAxIGFZFw2V2
 Yn+T1/5qU+uYMgtDWISojO0sIVf3Iae9DgsVE71L94aR2W0czNPv4r/V4
 FKPA0OeuRpI9rHU7wwkCULBOQn00rkX7X691V/NDfSou1f5W7o3SaGvlu
 jPzhHP8enQS38haE65H9Yvp/VbtkA2NnHf5kVkK6RFpvJal+wjs+WekGS
 nyyCRhikOsvhMDak8NaBIxanZOHhl0yHTwe8ml8qERfplH8wGhFWrA6Jp
 ZH9QD89LZ0cK74q+tPgADXhV9LpXm1VyCs5kAkOoObq668gL1282xJuqI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="283098491"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="283098491"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 07:33:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="647914361"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.25.211])
 ([10.213.25.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 07:33:41 -0700
Message-ID: <5f9e6c1a-ec38-51db-dea6-5081a10c712b@intel.com>
Date: Thu, 30 Jun 2022 16:33:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20220624113528.2159210-1-andrzej.hajda@intel.com>
 <165635997339.11793.14191996949173794585@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165635997339.11793.14191996949173794585@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_fix_subtraction_overflow_bug?=
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

On 27.06.2022 21:59, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/selftests: fix subtraction overflow bug
> *URL:*	https://patchwork.freedesktop.org/series/105597/ 
> <https://patchwork.freedesktop.org/series/105597/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11803_full -> Patchwork_105597v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_105597v1_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105597v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (13 -> 13)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_105597v1_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     {igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-32x10} (NEW):
> 
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-32x10.html>
>         +15 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html>


Nothing related.

Regards
Andrzej

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_cursor_crc@cursor-offscreen@pipe-c-hdmi-a-1-512x170:
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen@pipe-c-hdmi-a-1-512x170.html>
>         +7 similar issues
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11803_full and 
> Patchwork_105597v1_full:
> 
> 
>       New IGT tests (40)
> 
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-128x42:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.26] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-256x85:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-32x10:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-32x32:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-512x170:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-512x512:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-64x21:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.26] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.29] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-128x42:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.23] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-256x85:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.23] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-32x10:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-32x32:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-512x170:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-512x512:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-64x21:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.23] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-128x42:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-256x85:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-32x10:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-32x32:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-512x170:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-512x512:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-64x21:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-c-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-128x42:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-256x85:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-32x10:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-32x32:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.01] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-512x170:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-512x512:
> 
>       o Statuses : 1 skip(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-64x21:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_105597v1_full that come from 
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
>     igt@gem_ccs@block-copy-inplace:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@gem_ccs@block-copy-inplace.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#5325 <https://gitlab.freedesktop.org/drm/intel/issues/5325>)
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb4/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_params@no-bsd:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@gem_exec_params@no-bsd.html>
>         (fdo#109283
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109283>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_whisper@basic-queues-priority-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-glk7/igt@gem_exec_whisper@basic-queues-priority-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb2/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi-ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@gem_lmem_swapping@random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@gem_lmem_swapping@verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-tglb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pxp@protected-raw-src-copy-not-readible:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl4/igt@gem_pxp@protected-raw-src-copy-not-readible.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +32
>         similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@gem_pxp@protected-raw-src-copy-not-readible.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
> 
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl3/igt@gem_softpin@noreloc-s3.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl6/igt@gem_softpin@noreloc-s3.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +1 similar issue
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-tglb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-after-close:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@gem_userptr_blits@unsync-unmap-after-close.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>   *
> 
>     igt@gem_workarounds@suspend-resume-context:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl7/igt@gem_workarounds@suspend-resume-context.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl4/igt@gem_workarounds@suspend-resume-context.html>
>         (i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939> /
>         i915#5129 <https://gitlab.freedesktop.org/drm/intel/issues/5129>)
>   *
> 
>     igt@gen7_exec_parse@oacontrol-tracking:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@gen7_exec_parse@oacontrol-tracking.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>   *
> 
>     igt@gen9_exec_parse@bb-chained:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@gen9_exec_parse@bb-chained.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1
>         similar issue
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#1904 <https://gitlab.freedesktop.org/drm/intel/issues/1904>)
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_pm_rpm@dpms-non-lpsp:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>
>         / i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o shard-skl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1
>         similar issue
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-270:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1
>         similar issue
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +4
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39
>         similar issues
>   *
> 
>     igt@kms_cdclk@mode-transition:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@kms_cdclk@mode-transition.html>
>         (i915#3742 <https://gitlab.freedesktop.org/drm/intel/issues/3742>)
>   *
> 
>     igt@kms_chamelium@vga-hpd-with-enabled-mode:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl4/igt@kms_chamelium@vga-hpd-with-enabled-mode.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_color_chamelium@pipe-a-gamma:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl4/igt@kms_color_chamelium@pipe-a-gamma.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-max:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@kms_color_chamelium@pipe-b-ctm-max.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-0-25:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-0-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-0-5:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-0-5.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +5
>         similar issues
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_content_protection@atomic-dpms.html>
>         (i915#1063
>         <https://gitlab.freedesktop.org/drm/intel/issues/1063>) +1
>         similar issue
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x512:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_cursor_crc@cursor-offscreen@pipe-c-edp-1-512x512.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +7
>         similar issues
>   *
> 
>     igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>         (i915#3528 <https://gitlab.freedesktop.org/drm/intel/issues/3528>)
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb8888-render-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +4
>         similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html>
>         (i915#5090 <https://gitlab.freedesktop.org/drm/intel/issues/5090>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-glk5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         (i915#4911 <https://gitlab.freedesktop.org/drm/intel/issues/4911>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html>
>         (i915#3701 <https://gitlab.freedesktop.org/drm/intel/issues/3701>)
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl4/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +19
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +35
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +10
>         similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_multiple@atomic-pipe-a-tiling-4:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-a-tiling-4.html>
>         (i915#5288 <https://gitlab.freedesktop.org/drm/intel/issues/5288>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-edp-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3
>         similar issues
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         similar issues
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl1/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr@psr2_cursor_mmap_cpu:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>         (i915#132 <https://gitlab.freedesktop.org/drm/intel/issues/132>
>         / i915#3467
>         <https://gitlab.freedesktop.org/drm/intel/issues/3467>) +2
>         similar issues
>   *
> 
>     igt@kms_psr@psr2_primary_render:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb2/igt@kms_psr@psr2_primary_render.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb7/igt@kms_psr@psr2_primary_render.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>   *
> 
>     igt@kms_setmode@invalid-clone-exclusive-crtc:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@kms_setmode@invalid-clone-exclusive-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +4
>         similar issues
>   *
> 
>     igt@nouveau_crc@pipe-b-source-outp-inactive:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@nouveau_crc@pipe-b-source-outp-inactive.html>
>         (i915#2530
>         <https://gitlab.freedesktop.org/drm/intel/issues/2530>) +1
>         similar issue
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl4/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl1/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
>   *
> 
>     igt@prime_nv_pcopy@test3_5:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb6/igt@prime_nv_pcopy@test3_5.html>
>         (fdo#109291
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109291>) +1
>         similar issue
>   *
> 
>     igt@sysfs_clients@fair-0:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb1/igt@sysfs_clients@fair-0.html>
>         (i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +1
>         similar issue
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl4/igt@sysfs_clients@fair-0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
>   *
> 
>     igt@sysfs_clients@split-25:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk2/igt@sysfs_clients@split-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@tools_test@sysfs_l3_parity:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@tools_test@sysfs_l3_parity.html>
>         (fdo#109307 <https://bugs.freedesktop.org/show_bug.cgi?id=109307>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html>
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>   *
> 
>     igt@gem_ctx_persistence@engines-hang@bcs0:
> 
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-dg1-13/igt@gem_ctx_persistence@engines-hang@bcs0.html>
>         (i915#4883
>         <https://gitlab.freedesktop.org/drm/intel/issues/4883>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-dg1-19/igt@gem_ctx_persistence@engines-hang@bcs0.html>
>   *
> 
>     igt@gem_ctx_persistence@hostile:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@gem_ctx_persistence@hostile.html>
>         (i915#2410
>         <https://gitlab.freedesktop.org/drm/intel/issues/2410>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@gem_ctx_persistence@hostile.html>
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-hang@blt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         (i915#6252
>         <https://gitlab.freedesktop.org/drm/intel/issues/6252>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         +1 similar issue
>   *
> 
>     igt@gem_eio@in-flight-contexts-10ms:
> 
>       o {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglu-6/igt@gem_eio@in-flight-contexts-10ms.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglu-1/igt@gem_eio@in-flight-contexts-10ms.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-contexts:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl9/igt@gem_exec_capture@pi@rcs0.html>
>         (i915#3371
>         <https://gitlab.freedesktop.org/drm/intel/issues/3371>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl7/igt@gem_exec_capture@pi@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-glk1/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2849
>         <https://gitlab.freedesktop.org/drm/intel/issues/2849>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_exec_fence@basic-busy@bcs0:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-5/igt@gem_exec_fence@basic-busy@bcs0.html>
>         (i915#6251
>         <https://gitlab.freedesktop.org/drm/intel/issues/6251>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-2/igt@gem_exec_fence@basic-busy@bcs0.html>
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>         (fdo#109313
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109313>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html>
>         +9 similar issues
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#4936
>         <https://gitlab.freedesktop.org/drm/intel/issues/4936>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>   *
> 
>     igt@gem_pwrite@basic-random:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@gem_pwrite@basic-random.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@gem_pwrite@basic-random.html>
>         +5 similar issues
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html>
>         +5 similar issues
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@i915_pm_backlight@fade_with_dpms.html>
>         (i915#3012
>         <https://gitlab.freedesktop.org/drm/intel/issues/3012>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html>
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#3361
>         <https://gitlab.freedesktop.org/drm/intel/issues/3361>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-1/igt@i915_pm_dc@dc6-dpms.html>
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o {shard-rkl}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-6/igt@i915_selftest@live@gt_pm.html>
>         (i915#4258
>         <https://gitlab.freedesktop.org/drm/intel/issues/4258>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-2/igt@i915_selftest@live@gt_pm.html>
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>   *
> 
>     igt@kms_color@pipe-c-invalid-ctm-matrix-sizes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-ctm-matrix-sizes.html>
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen@pipe-a-edp-1-64x21:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb3/igt@kms_cursor_crc@cursor-offscreen@pipe-a-edp-1-64x21.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb3/igt@kms_cursor_crc@cursor-offscreen@pipe-a-edp-1-64x21.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:
> 
>       o shard-glk: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-glk3/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>
>         / i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html>
>         +3 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@a-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>   *
> 
>     igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1:
> 
>       o {shard-dg1}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-dg1-19/igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-dg1-15/igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1.html>
>   *
> 
>     igt@kms_flip@plain-flip-ts-check@b-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html>
>         +14 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
> 
>       o shard-kbl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>   *
> 
>     igt@kms_hdr@bpc-switch@pipe-a-dp-1:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>   *
> 
>     igt@kms_invalid_mode@bad-hsync-start:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@kms_invalid_mode@bad-hsync-start.html>
>         (i915#4278
>         <https://gitlab.freedesktop.org/drm/intel/issues/4278>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html>
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         (i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html>
>   *
> 
>     igt@kms_psr@primary_mmap_gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@kms_psr@primary_mmap_gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_psr@primary_mmap_gtt.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_move:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html>
>         +3 similar issues
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-90:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-90.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html>
>         +18 similar issues
>   *
> 
>     igt@kms_universal_plane@universal-plane-pipe-b-functional:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@kms_universal_plane@universal-plane-pipe-b-functional.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-b-functional.html>
>   *
> 
>     igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>         (i915#2436
>         <https://gitlab.freedesktop.org/drm/intel/issues/2436>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>   *
> 
>     igt@prime_vgem@basic-read:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-rkl-2/igt@prime_vgem@basic-read.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-rkl-5/igt@prime_vgem@basic-read.html>
>   *
> 
>     igt@syncobj_timeline@device-signal-unordered:
> 
>       o {shard-dg1}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-dg1-19/igt@syncobj_timeline@device-signal-unordered.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-dg1-15/igt@syncobj_timeline@device-signal-unordered.html>
>         +2 similar issues
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb3/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb5/igt@gem_eio@kms.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl9/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>
>         / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-storm-disable:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-skl3/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>
>         / i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>         +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-apl1/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-apl1/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11803/shard-kbl6/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> / i915#92
>         <https://gitlab.freedesktop.org/drm/intel/issues/92>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105597v1/shard-kbl6/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11803 -> Patchwork_105597v1
> 
> CI-20190529: 20190529
> CI_DRM_11803: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105597v1: 23f2707225ca8a6c43526d1d7c46a7dd1a5f02cf @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

