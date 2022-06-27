Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD5B55BC54
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 00:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 762FF10E161;
	Mon, 27 Jun 2022 22:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 793EF10E161
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 22:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656369392; x=1687905392;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Eb6TvURPbO8VW2yeS/xpJSK9yQvvGxdhWpWGRvXQYok=;
 b=SFXxA+4cn7sY9jMPIf+Fq1HiykIf9c/5P+BRgSaXBmcYtM0sy/L8+YGz
 YWx3ZHk1SaUJm9SLDq8y9rWje4LtHiwf+h5fQC+DPQ/p4T5x4HajYxosz
 R/2Pp2MNNkZSfG9i9IRNb4w6v8tnSXrhQQWqoiSgObnJwPaIHZeznhh1z
 3pX6mesvV+DfrSCdCkfAO2h8/ZSkVnxQu2t30Cm0VQhpWaPyEpw+df+qf
 hRJN02aNmhV9lvzeoMJn8pP36L5UFv0W0hibXnyi44cBvW0QO8OMHJUyM
 Oky3wgfjgki8b6ct9jfotH8KVi8eaLaz55/ZHhgGXFhH7ct0r8dc6kCze w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261989354"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261989354"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 15:36:31 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="836398175"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.24.14])
 ([10.213.24.14])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 15:36:29 -0700
Message-ID: <e796367c-0d1b-2152-dcdb-9378a5f26c0a@intel.com>
Date: Tue, 28 Jun 2022 00:36:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20220623163813.1990801-1-andrzej.hajda@intel.com>
 <165634564399.11791.12918379635071941508@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165634564399.11791.12918379635071941508@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_stop_HPD_workers_before_display_driver_unregis?=
 =?utf-8?q?ter?=
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

On 27.06.2022 18:00, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/display: stop HPD workers before display driver 
> unregister
> *URL:*	https://patchwork.freedesktop.org/series/105557/ 
> <https://patchwork.freedesktop.org/series/105557/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11799_full -> Patchwork_105557v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_105557v1_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105557v1_full, please notify your bug team to 
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
> Patchwork_105557v1_full:
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement@pipe-a-hdmi-a-3-32x10.html>
>         +15 similar issues
>   *
> 
>     igt@kms_cursor_legacy@torture-move@all-pipes:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk7/igt@kms_cursor_legacy@torture-move@all-pipes.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk5/igt@kms_cursor_legacy@torture-move@all-pipes.html>


These does not seem to be related, they do not touch driver remove path.

Regards
Andrzej


> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     {igt@kms_cursor_crc@cursor-offscreen@pipe-d-hdmi-a-1-32x10}:
> 
>       o {shard-dg1}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-dg1-19/igt@kms_cursor_crc@cursor-offscreen@pipe-d-hdmi-a-1-32x10.html>
>         +15 similar issues
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-edp-1-32x32:
> 
>       o {shard-rkl}: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-edp-1-32x32.html>
>         +3 similar issues
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11799_full and 
> Patchwork_105557v1_full:
> 
> 
>       New IGT tests (43)
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
>       o Exec time: [0.25] s
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
>       o Exec time: [0.23] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-128x42:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.23] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.24] s
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
>       o Exec time: [0.24] s
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
>       o Exec time: [0.24] s
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
>       o Exec time: [0.24] s
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
>       o Exec time: [0.24] s
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
>       o Exec time: [0.24] s
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
>       o Exec time: [0.24] s
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement@pipe-d-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.25] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-a-hdmi-a-3-128x128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.22] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-a-hdmi-a-3-256x256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.23] s
>   *
> 
>     igt@kms_cursor_edge_walk@top-bottom@pipe-a-hdmi-a-3-64x64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [3.30] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_105557v1_full that come from 
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>   *
> 
>     igt@gem_eio@in-flight-contexts-10ms:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk7/igt@gem_eio@in-flight-contexts-10ms.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk5/igt@gem_eio@in-flight-contexts-10ms.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
>   *
> 
>     igt@gem_exec_fair@basic-pace@bcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_whisper@basic-fds-forked-all:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl7/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl9/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         (i915#5843 <https://gitlab.freedesktop.org/drm/intel/issues/5843>)
>   *
> 
>     igt@gem_exec_whisper@basic-queues-priority-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk2/igt@gem_exec_whisper@basic-queues-priority-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk2/igt@gem_exec_whisper@basic-queues-priority-all.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi-ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl10/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-multi:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@gem_lmem_swapping@parallel-multi.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@verify-ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl1/igt@gem_lmem_swapping@verify-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl3/igt@gem_pread@exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pxp@create-regular-context-2:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@gem_pxp@create-regular-context-2.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3323 <https://gitlab.freedesktop.org/drm/intel/issues/3323>)
>   *
> 
>     igt@gem_userptr_blits@huge-split:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl9/igt@gem_userptr_blits@huge-split.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl7/igt@gem_userptr_blits@huge-split.html>
>         (i915#3376 <https://gitlab.freedesktop.org/drm/intel/issues/3376>)
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@gem_userptr_blits@vma-merge.html>
>         (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk9/igt@gen9_exec_parse@allowed-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl4/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>   *
> 
>     igt@gen9_exec_parse@bb-start-out:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@gen9_exec_parse@bb-start-out.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@i915_pm_rpm@pc8-residency:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@i915_pm_rpm@pc8-residency.html>
>         (fdo#109506
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109506> /
>         i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb6/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb1/igt@i915_selftest@live@hangcheck.html>
>         (i915#5591 <https://gitlab.freedesktop.org/drm/intel/issues/5591>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +25
>         similar issues
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_ccs@pipe-b-ccs-on-another-bo-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>   *
> 
>     igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl4/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +4
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-crc-multiple:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl8/igt@kms_chamelium@hdmi-crc-multiple.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>   *
> 
>     igt@kms_color@pipe-b-deep-color:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@kms_color@pipe-b-deep-color.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +88
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-a-gamma:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@kms_color_chamelium@pipe-a-gamma.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +4
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-0-25:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +4
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-max:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-max.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random@pipe-c-edp-1-512x170:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_cursor_crc@cursor-random@pipe-c-edp-1-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +7
>         similar issues
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +3
>         similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +4 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         (i915#4911 <https://gitlab.freedesktop.org/drm/intel/issues/4911>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3701 <https://gitlab.freedesktop.org/drm/intel/issues/3701>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +92
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +3
>         similar issues
>   *
> 
>     igt@kms_plane@pixel-format@pipe-b-planes:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk6/igt@kms_plane@pixel-format@pipe-b-planes.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk9/igt@kms_plane@pixel-format@pipe-b-planes.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3
>         similar issues
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_su@page_flip-nv12:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl8/igt@kms_psr2_su@page_flip-nv12.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl3/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk7/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk5/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
>   *
> 
>     igt@prime_nv_pcopy@test3_2:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@prime_nv_pcopy@test3_2.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>   *
> 
>     igt@sysfs_clients@fair-0:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@sysfs_clients@fair-0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +1
>         similar issue
>   *
> 
>     igt@sysfs_clients@fair-7:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl3/igt@sysfs_clients@fair-7.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@unaligned-read:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-1/igt@fbdev@unaligned-read.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@fbdev@unaligned-read.html>
>         +1 similar issue
>   *
> 
>     igt@gem_ctx_persistence@engines-hostile@bcs0:
> 
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-dg1-17/igt@gem_ctx_persistence@engines-hostile@bcs0.html>
>         (i915#4883
>         <https://gitlab.freedesktop.org/drm/intel/issues/4883>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-dg1-18/igt@gem_ctx_persistence@engines-hostile@bcs0.html>
>   *
> 
>     igt@gem_exec_balancer@fairslice:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-5/igt@gem_exec_balancer@fairslice.html>
>         (i915#6259
>         <https://gitlab.freedesktop.org/drm/intel/issues/6259>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-flow@rcs0:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglu-1/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglu-6/igt@gem_exec_fair@basic-flow@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fence@basic-wait@bcs0:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-5/igt@gem_exec_fence@basic-wait@bcs0.html>
>         (i915#6251
>         <https://gitlab.freedesktop.org/drm/intel/issues/6251>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-2/igt@gem_exec_fence@basic-wait@bcs0.html>
>   *
> 
>     igt@gem_exec_reloc@basic-write-read-active:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html>
>         +4 similar issues
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#4936
>         <https://gitlab.freedesktop.org/drm/intel/issues/4936>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>   *
> 
>     igt@gem_partial_pwrite_pread@write-display:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@gem_partial_pwrite_pread@write-display.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-5/igt@gem_partial_pwrite_pread@write-display.html>
>         +2 similar issues
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html>
>         +4 similar issues
>   *
> 
>     igt@i915_hangman@gt-engine-error@bcs0:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html>
>         (i915#6258
>         <https://gitlab.freedesktop.org/drm/intel/issues/6258>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html>
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o
> 
>         shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-iclb8/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-iclb5/igt@i915_pm_dc@dc6-psr.html>
> 
>       o
> 
>         shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl1/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl3/igt@i915_pm_dc@dc6-psr.html>
> 
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html>
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp:
> 
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-dg1-18/igt@i915_pm_rpm@modeset-non-lpsp.html>
>   *
> 
>     igt@i915_suspend@debugfs-reader:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl8/igt@i915_suspend@debugfs-reader.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl8/igt@i915_suspend@debugfs-reader.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-75:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-75.html>
>         (i915#1149
>         <https://gitlab.freedesktop.org/drm/intel/issues/1149> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-75.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-a-degamma:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@kms_color@pipe-a-degamma.html>
>         (i915#1149
>         <https://gitlab.freedesktop.org/drm/intel/issues/1149> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>
>         / i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_color@pipe-a-degamma.html>
>   *
> 
>     igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-6/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html>
>   *
> 
>     igt@kms_cursor_crc@cursor-random@pipe-a-edp-1-64x21:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb6/igt@kms_cursor_crc@cursor-random@pipe-a-edp-1-64x21.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb6/igt@kms_cursor_crc@cursor-random@pipe-a-edp-1-64x21.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1:
> 
>       o shard-glk: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-glk8/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-glk9/igt@kms_dither@fb-8bpc-vs-panel-8bpc@pipe-a-hdmi-a-1.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>
>         / i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html>
>         +3 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#4767
>         <https://gitlab.freedesktop.org/drm/intel/issues/4767>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html>
>         (i915#3701
>         <https://gitlab.freedesktop.org/drm/intel/issues/3701>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html>
>         +26 similar issues
>   *
> 
>     igt@kms_invalid_mode@bad-vsync-end:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-end.html>
>         (i915#4278
>         <https://gitlab.freedesktop.org/drm/intel/issues/4278>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-end.html>
>   *
> 
>     igt@kms_pipe_crc_basic@bad-source:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@kms_pipe_crc_basic@bad-source.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html>
>         +30 similar issues
>   *
> 
>     igt@kms_plane@plane-position-hole@pipe-b-planes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-1/igt@kms_plane@plane-position-hole@pipe-b-planes.html>
>         (i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         +1 similar issue
>   *
> 
>     igt@kms_prime@basic-crc@second-to-first:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl7/igt@kms_prime@basic-crc@second-to-first.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl3/igt@kms_prime@basic-crc@second-to-first.html>
>   *
> 
>     igt@kms_psr@cursor_render:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-5/igt@kms_psr@cursor_render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_psr@cursor_render.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5461
>         <https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>   *
> 
>     igt@perf@gen12-mi-rpc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-5/igt@perf@gen12-mi-rpc.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@perf@gen12-mi-rpc.html>
>         +1 similar issue
>   *
> 
>     igt@prime_vgem@basic-fence-flip:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-rkl-1/igt@prime_vgem@basic-fence-flip.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html>
>   *
> 
>     igt@testdisplay:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglu-6/igt@testdisplay.html>
>         (i915#4941
>         <https://gitlab.freedesktop.org/drm/intel/issues/4941>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglu-1/igt@testdisplay.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb1/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb1/igt@gem_eio@kms.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) +1
>         similar issue
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-fence:
> 
>       o shard-tglb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb6/igt@i915_pm_rc6_residency@rc6-fence.html>
>         (i915#2681
>         <https://gitlab.freedesktop.org/drm/intel/issues/2681>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb1/igt@i915_pm_rc6_residency@rc6-fence.html>
>         (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>)
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl9/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>
>         / i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl7/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-storm-disable:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl9/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>
>         / i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl7/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-skl3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) +1
>         similar issue
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-apl1/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-apl8/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-tglb: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-tglb3/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-tglb5/igt@runner@aborted.html>)
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>
>         / i915#5945 <https://gitlab.freedesktop.org/drm/intel/issues/5945>)
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11799/shard-kbl6/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105557v1/shard-kbl4/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>
>         / i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11799 -> Patchwork_105557v1
> 
> CI-20190529: 20190529
> CI_DRM_11799: dd1a1c29c88e16b8bf3610c58577e0c9fca314b2 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105557v1: dd1a1c29c88e16b8bf3610c58577e0c9fca314b2 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

