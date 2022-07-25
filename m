Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFA457FB2F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 10:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D2378AADA;
	Mon, 25 Jul 2022 08:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897C38AADA
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 08:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658737385; x=1690273385;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=mSAUHPy974ikq1RRrUvHK+/0jimBFeeibqfifiC66/w=;
 b=QMetROcFae6Ety5Uh8C7mnrRCXjQKbOEUx9KX5HShYQE3YUoQWF5x3/K
 EBgVNw1uRuqS9s08mxRH6zOQ9AXQPM/mEfEaVi8ZgrVXHI/pi9fWbTOhG
 I9f4RbMfDa5oS46OzgX9lrawADHN5MhEUX5saFSEmFWonLLXskLrhomyv
 +9A8ejGLss1uXEYeRX2VP65XgbwXrWufGoYg8j5PjST68PH9lF5wDBZb1
 jgYMPM+gASsfsVw5vuYJm3Sqy8xsxCOhQzAgvhudqBcZEeuJf3bYN6jmX
 XYERUiGb6bxWMFDSZRURN73Oq+NLhvuSIqrFg+MaYov/RO2FbhyRo1l9S g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10418"; a="286402807"
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="286402807"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 01:23:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,192,1654585200"; d="scan'208";a="574959433"
Received: from ngobrien-mobl1.ger.corp.intel.com (HELO [10.213.204.5])
 ([10.213.204.5])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 01:23:03 -0700
Message-ID: <c4b687c6-f79d-3ac9-a2ec-b56f7906397a@linux.intel.com>
Date: Mon, 25 Jul 2022 09:23:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>, intel-gfx@lists.freedesktop.org
References: <20220722151204.1534489-1-bob.beckett@collabora.com>
 <165851311691.29544.3346145116925911564@emeril.freedesktop.org>
 <5af44373-e090-e75f-abf2-52934c29fd54@collabora.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <5af44373-e090-e75f-abf2-52934c29fd54@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_stop_using_swiotlb_=28rev3=29?=
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


On 22/07/2022 20:21, Robert Beckett wrote:
> On 22/07/2022 19:05, Patchwork wrote:
>> *Patch Details*
>> *Series:*    drm/i915: stop using swiotlb (rev3)
>> *URL:*    https://patchwork.freedesktop.org/series/106589/ 
>> <https://patchwork.freedesktop.org/series/106589/>
>> *State:*    failure
>> *Details:* 
>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/index.html 
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/index.html>
>>
>>
>>   CI Bug Log - changes from CI_DRM_11935_full -> Patchwork_106589v3_full
>>
>>
>>     Summary
>>
>> *FAILURE*
>>
>> Serious unknown changes coming with Patchwork_106589v3_full absolutely 
>> need to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_106589v3_full, please notify your bug team to 
>> allow them
>> to document this new failure mode, which will reduce false positives 
>> in CI.
>>
>>
>>     Participating hosts (10 -> 12)
>>
>> Additional (2): shard-rkl shard-tglu
>>
>>
>>     Possible new issues
>>
>> Here are the unknown changes that may have been introduced in 
>> Patchwork_106589v3_full:
>>
>>
>>       IGT changes
>>
>>
>>         Possible regressions
>>
>>   *
>>
>>     igt@gem_mmap_offset@clear:
>>
>>       o
>>
>>         shard-tglb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb7/igt@gem_mmap_offset@clear.html> 
>>
>>         -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb1/igt@gem_mmap_offset@clear.html> 
>>
>>
> 
> I've no idea why CI is seeing a NULL deref here.
> Testing locally on my TGL board, it passes fine.
> I think I would need some help testing this on other systems to track 
> this down.

Is it possible that dma_direct_max_mapping_size can return a whole range 
of "unexpected" values akin to swiotlb_max_segment? Anything below 
PAGE_SIZE, including zero, would confuse the driver.

Oh..

   return min_t(size_t, UINT_MAX, dma_max_mapping_size(dev));

Wrap the min_t value in rounddown(..., PAGE_SIZE).

Regards,

Tvrtko

> 
>>       o
>>
>>         shard-iclb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@gem_mmap_offset@clear.html> 
>>
>>         -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb3/igt@gem_mmap_offset@clear.html> 
>>
>>
>>
>>         Suppressed
>>
>> The following results come from untrusted machines, tests, or statuses.
>> They do not affect the overall result.
>>
>>   *
>>
>>     igt@gem_mmap_offset@clear:
>>
>>       o
>>
>>         {shard-rkl}: NOTRUN -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-rkl-6/igt@gem_mmap_offset@clear.html> 
>>
>>
>>       o
>>
>>         {shard-tglu}: NOTRUN -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglu-1/igt@gem_mmap_offset@clear.html> 
>>
>>         +1 similar issue
>>
>>
>>     New tests
>>
>> New tests have been introduced between CI_DRM_11935_full and 
>> Patchwork_106589v3_full:
>>
>>
>>       New IGT tests (27)
>>
>>   *
>>
>>     igt@kms_flip@basic-flip-vs-dpms@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.66] s
>>   *
>>
>>     igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.62] s
>>   *
>>
>>     igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.59] s
>>   *
>>
>>     igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.62] s
>>   *
>>
>>     igt@kms_flip@bo-too-big-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.39] s
>>   *
>>
>>     igt@kms_flip@bo-too-big@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.41] s
>>   *
>>
>>     igt@kms_flip@busy-flip@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.62] s
>>   *
>>
>>     igt@kms_flip@dpms-off-confusion-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.60] s
>>   *
>>
>>     igt@kms_flip@dpms-vs-vblank-race-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [2.72] s
>>   *
>>
>>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [8.03] s
>>   *
>>
>>     igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.60] s
>>   *
>>
>>     igt@kms_flip@flip-vs-dpms-off-vs-modeset@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.57] s
>>   *
>>
>>     igt@kms_flip@flip-vs-fences-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.62] s
>>   *
>>
>>     igt@kms_flip@flip-vs-fences@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.66] s
>>   *
>>
>>     igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [30.02] s
>>   *
>>
>>     igt@kms_flip@flip-vs-panning-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.60] s
>>   *
>>
>>     igt@kms_flip@flip-vs-panning@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.62] s
>>   *
>>
>>     igt@kms_flip@flip-vs-rmfb-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.59] s
>>   *
>>
>>     igt@kms_flip@flip-vs-rmfb@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.60] s
>>   *
>>
>>     igt@kms_flip@modeset-vs-vblank-race@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [2.81] s
>>   *
>>
>>     igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.72] s
>>   *
>>
>>     igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.76] s
>>   *
>>
>>     igt@kms_flip@plain-flip-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.60] s
>>   *
>>
>>     igt@kms_flip@plain-flip-ts-check-interruptible@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.74] s
>>   *
>>
>>     
>> igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@d-hdmi-a1: 
>>
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.61] s
>>   *
>>
>>     igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [0.59] s
>>   *
>>
>>     igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
>>
>>       o Statuses : 1 pass(s)
>>       o Exec time: [7.76] s
>>
>>
>>     Known issues
>>
>> Here are the changes found in Patchwork_106589v3_full that come from 
>> known issues:
>>
>>
>>       IGT changes
>>
>>
>>         Issues hit
>>
>>   *
>>
>>     igt@feature_discovery@display-4x:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@feature_discovery@display-4x.html> 
>>
>>         (i915#1839 
>> <https://gitlab.freedesktop.org/drm/intel/issues/1839>)
>>   *
>>
>>     igt@gem_eio@unwedge-stress:
>>
>>       o shard-iclb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@gem_eio@unwedge-stress.html> 
>>
>>         -> TIMEOUT
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb1/igt@gem_eio@unwedge-stress.html> 
>>
>>         (i915#3070 
>> <https://gitlab.freedesktop.org/drm/intel/issues/3070>)
>>   *
>>
>>     igt@gem_exec_fair@basic-deadline:
>>
>>       o shard-glk: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@gem_exec_fair@basic-deadline.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-glk8/igt@gem_exec_fair@basic-deadline.html> 
>>
>>         (i915#2846 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>>   *
>>
>>     igt@gem_exec_fair@basic-none@vcs1:
>>
>>       o shard-iclb: NOTRUN -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html> 
>>
>>         (i915#2842 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>>   *
>>
>>     igt@gem_exec_fair@basic-pace@vecs0:
>>
>>       o shard-kbl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html> 
>>
>>         (i915#2842
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>>         similar issue
>>   *
>>
>>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html> 
>>
>>         (fdo#109313 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109313>)
>>   *
>>
>>     igt@gem_huc_copy@huc-copy:
>>
>>       o shard-tglb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb5/igt@gem_huc_copy@huc-copy.html> 
>>
>>         -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb7/igt@gem_huc_copy@huc-copy.html> 
>>
>>         (i915#2190 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>>   *
>>
>>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>>   *
>>
>>     igt@gem_lmem_swapping@verify-random:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@gem_lmem_swapping@verify-random.html> 
>>
>>         (i915#4613 
>> <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>>   *
>>
>>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html> 
>>
>>         (i915#4270 
>> <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>>   *
>>
>>     igt@gem_userptr_blits@coherency-unsync:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@gem_userptr_blits@coherency-unsync.html> 
>>
>>         (i915#3297 
>> <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>>   *
>>
>>     igt@gen7_exec_parse@basic-allocation:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@gen7_exec_parse@basic-allocation.html> 
>>
>>         (fdo#109289 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>>   *
>>
>>     igt@i915_pm_backlight@fade_with_suspend:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html> 
>>
>>         -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html> 
>>
>>         (i915#4939 
>> <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>>   *
>>
>>     igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html> 
>>
>>         (fdo#111644
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>
>>         / i915#2411 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>>   *
>>
>>     igt@i915_selftest@live@hangcheck:
>>
>>       o shard-iclb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb5/igt@i915_selftest@live@hangcheck.html> 
>>
>>         -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb4/igt@i915_selftest@live@hangcheck.html> 
>>
>>         (i915#6106 
>> <https://gitlab.freedesktop.org/drm/intel/issues/6106>)
>>   *
>>
>>     igt@i915_suspend@fence-restore-tiled2untiled:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@i915_suspend@fence-restore-tiled2untiled.html> 
>>
>>         -> INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html> 
>>
>>         (i915#4817
>>         <https://gitlab.freedesktop.org/drm/intel/issues/4817> /
>>         i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>>   *
>>
>>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html> 
>>
>>         (i915#2521 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>>   *
>>
>>     igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>>
>>       o shard-kbl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +22
>>         similar issues
>>   *
>>
>>     igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html> 
>>
>>         (i915#5286
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +81
>>         similar issues
>>   *
>>
>>     igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>>
>>       o
>>
>>         shard-iclb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html> 
>>
>>         (i915#5138 
>> <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>>
>>       o
>>
>>         shard-glk: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html> 
>>
>>         (i915#1888
>>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>>         i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>>
>>   *
>>
>>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>>
>>       o shard-skl: NOTRUN -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> 
>>
>>         (i915#3743 
>> <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>>   *
>>
>>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html> 
>>
>>         (fdo#111615
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#3886
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>>         similar issues
>>   *
>>
>>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html> 
>>
>>         (i915#3689
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>>         i915#3886
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html> 
>>
>>         (i915#3689
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>>   *
>>
>>     igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>>
>>       o shard-kbl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>>   *
>>
>>     igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html> 
>>
>>         (i915#3689
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html> 
>>
>>         (fdo#111615
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>>         i915#3689
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_chamelium@dp-hpd-after-suspend:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_chamelium@dp-hpd-after-suspend.html> 
>>
>>         (fdo#109284
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>>         fdo#111827
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>>         similar issues
>>   *
>>
>>     igt@kms_color_chamelium@pipe-a-ctm-negative:
>>
>>       o shard-snb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-negative.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         fdo#111827
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +4
>>         similar issues
>>   *
>>
>>     igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
>>
>>       o shard-kbl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>>   *
>>
>>     igt@kms_color_chamelium@pipe-d-ctm-negative:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-negative.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         fdo#111827
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +4
>>         similar issues
>>   *
>>
>>     igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170.html> 
>>
>>         (i915#3359
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +7
>>         similar issues
>>   *
>>
>>     igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10.html> 
>>
>>         (i915#4462
>>         <https://gitlab.freedesktop.org/drm/intel/issues/4462>) +7
>>         similar issues
>>   *
>>
>>     igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1:
>>
>>       o shard-apl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html> 
>>
>>         -> DMESG-WARN
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-c-dp-1.html> 
>>
>>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>>         +1 similar issue
>>   *
>>
>>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>>
>>       o shard-glk: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html> 
>>
>>         (i915#2346 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>>   *
>>
>>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html> 
>>
>>         (i915#5287 
>> <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>>   *
>>
>>     igt@kms_dsc@basic-dsc:
>>
>>       o shard-snb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-snb4/igt@kms_dsc@basic-dsc.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +68
>>         similar issues
>>   *
>>
>>     igt@kms_fbcon_fbt@psr-suspend:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html> 
>>
>>         (i915#4767 
>> <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>>   *
>>
>>     igt@kms_flip@2x-plain-flip:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_flip@2x-plain-flip.html> 
>>
>>         (fdo#109274
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>
>>         / i915#3637
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_flip@flip-vs-suspend@a-dp1:
>>
>>       o shard-kbl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html> 
>>
>>         -> DMESG-WARN
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html> 
>>
>>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>>         +8 similar issues
>>   *
>>
>>     igt@kms_flip@wf_vblank-ts-check@a-edp1:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@kms_flip@wf_vblank-ts-check@a-edp1.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_flip@wf_vblank-ts-check@a-edp1.html> 
>>
>>         (i915#2122
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +2
>>         similar issues
>>   *
>>
>>     
>> igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode: 
>>
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html> 
>>
>>         (i915#2672 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>>   *
>>
>>     
>> igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode: 
>>
>>
>>       o shard-iclb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html> 
>>
>>         (i915#2672
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +7
>>         similar issues
>>   *
>>
>>     
>> igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode: 
>>
>>
>>       o shard-iclb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html> 
>>
>>         (i915#2672
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>>         i915#3555
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html> 
>>
>>         (fdo#109280
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>>         fdo#111825
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +5
>>         similar issues
>>   *
>>
>>     
>> igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>>
>>       o shard-tglb: NOTRUN -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html> 
>>
>>         (i915#160 <https://gitlab.freedesktop.org/drm/intel/issues/160>)
>>         +1 similar issue
>>   *
>>
>>     igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>>
>>       o shard-kbl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html> 
>>
>>         (i915#1188 
>> <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>>   *
>>
>>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html> 
>>
>>         -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html> 
>>
>>         (fdo#108145
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>>   *
>>
>>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>>
>>       o shard-skl: NOTRUN -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html> 
>>
>>         (fdo#108145
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>>   *
>>
>>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>>
>>       o shard-kbl: NOTRUN -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html> 
>>
>>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>>   *
>>
>>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html> 
>>
>>         (i915#2920 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>>   *
>>
>>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_psr@psr2_primary_page_flip:
>>
>>       o shard-tglb: NOTRUN -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_psr@psr2_primary_page_flip.html> 
>>
>>         (i915#132 <https://gitlab.freedesktop.org/drm/intel/issues/132>
>>         / i915#3467 
>> <https://gitlab.freedesktop.org/drm/intel/issues/3467>)
>>   *
>>
>>     igt@kms_psr@psr2_sprite_blt:
>>
>>       o shard-iclb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html> 
>>
>>         -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html> 
>>
>>         (fdo#109441 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>>   *
>>
>>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>>
>>       o shard-iclb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> 
>>
>>         -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> 
>>
>>         (i915#5519 
>> <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>>   *
>>
>>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> 
>>
>>         (fdo#111615
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>>         i915#5289 <https://gitlab.freedesktop.org/drm/intel/issues/5289>)
>>   *
>>
>>     igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>>
>>       o shard-skl: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl10/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html> 
>>
>>         -> DMESG-WARN
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl7/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html> 
>>
>>         (i915#1982 
>> <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>>   *
>>
>>     igt@kms_vblank@crtc-id:
>>
>>       o shard-snb: PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb2/igt@kms_vblank@crtc-id.html> 
>>
>>         -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-snb4/igt@kms_vblank@crtc-id.html> 
>>
>>         (fdo#109271 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>>   *
>>
>>     igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html> 
>>
>>         (i915#2530 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2530>)
>>   *
>>
>>     igt@prime_nv_pcopy@test3_1:
>>
>>       o shard-tglb: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb5/igt@prime_nv_pcopy@test3_1.html> 
>>
>>         (fdo#109291 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>>   *
>>
>>     igt@sysfs_clients@recycle:
>>
>>       o shard-skl: NOTRUN -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@sysfs_clients@recycle.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>>
>>
>>         Possible fixes
>>
>>   *
>>
>>     igt@gem_busy@close-race:
>>
>>       o shard-snb: TIMEOUT
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb4/igt@gem_busy@close-race.html> 
>>
>>         (i915#5748
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5748>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-snb4/igt@gem_busy@close-race.html> 
>>
>>   *
>>
>>     igt@gem_eio@in-flight-contexts-immediate:
>>
>>       o shard-iclb: TIMEOUT
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html> 
>>
>>         (i915#3070
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3070>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb1/igt@gem_eio@in-flight-contexts-immediate.html> 
>>
>>   *
>>
>>     igt@gem_eio@kms:
>>
>>       o shard-tglb: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb8/igt@gem_eio@kms.html> 
>>
>>         (i915#5784
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb7/igt@gem_eio@kms.html> 
>>
>>         +1 similar issue
>>   *
>>
>>     igt@gem_exec_balancer@parallel-keep-in-fence:
>>
>>       o shard-iclb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html> 
>>
>>         (i915#4525
>>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html> 
>>
>>   *
>>
>>     igt@gem_exec_fair@basic-none-share@rcs0:
>>
>>       o shard-kbl: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html> 
>>
>>   *
>>
>>     igt@gem_exec_fair@basic-none@vcs0:
>>
>>       o shard-kbl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html> 
>>
>>         (i915#2842
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html> 
>>
>>   *
>>
>>     igt@gem_exec_fair@basic-throttle@rcs0:
>>
>>       o shard-glk: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html> 
>>
>>         (i915#2842
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html> 
>>
>>   *
>>
>>     igt@gem_workarounds@suspend-resume-fd:
>>
>>       o shard-skl: INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html> 
>>
>>         (i915#5129
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5129>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@gem_workarounds@suspend-resume-fd.html> 
>>
>>   *
>>
>>     igt@i915_selftest@perf@engine_cs:
>>
>>       o shard-snb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb2/igt@i915_selftest@perf@engine_cs.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-snb2/igt@i915_selftest@perf@engine_cs.html> 
>>
>>   *
>>
>>     igt@i915_suspend@forcewake:
>>
>>       o shard-kbl: INCOMPLETE
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@i915_suspend@forcewake.html> 
>>
>>         (i915#3614
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3614> /
>>         i915#4817
>>         <https://gitlab.freedesktop.org/drm/intel/issues/4817>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@i915_suspend@forcewake.html> 
>>
>>   *
>>
>>     igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html> 
>>
>>         (i915#2521
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html> 
>>
>>   *
>>
>>     igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>>
>>       o shard-glk: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html> 
>>
>>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>>         -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html> 
>>
>>   *
>>
>>     igt@kms_flip@busy-flip@c-edp1:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html> 
>>
>>         (i915#5726
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5726>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl6/igt@kms_flip@busy-flip@c-edp1.html> 
>>
>>   *
>>
>>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html> 
>>
>>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>>         -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html> 
>>
>>   *
>>
>>     igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
>>
>>       o shard-tglb: DMESG-WARN
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html> 
>>
>>         (i915#2411
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2411> /
>>         i915#2867
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb3/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html> 
>>
>>   *
>>
>>     igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html> 
>>
>>         (i915#2122
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html> 
>>
>>   *
>>
>>     igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html> 
>>
>>         (fdo#108145
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html> 
>>
>>   *
>>
>>     
>> igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1: 
>>
>>
>>       o shard-iclb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html> 
>>
>>         (i915#5176
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html> 
>>
>>         +1 similar issue
>>   *
>>
>>     igt@kms_psr@psr2_sprite_mmap_cpu:
>>
>>       o shard-iclb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html> 
>>
>>         (fdo#109441
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html> 
>>
>>   *
>>
>>     igt@perf@polling:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@perf@polling.html> 
>>
>>         (i915#1542
>>         <https://gitlab.freedesktop.org/drm/intel/issues/1542>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl1/igt@perf@polling.html> 
>>
>>   *
>>
>>     igt@perf@polling-parameterized:
>>
>>       o shard-skl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@perf@polling-parameterized.html> 
>>
>>         (i915#5639
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5639>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl10/igt@perf@polling-parameterized.html> 
>>
>>   *
>>
>>     igt@prime_self_import@export-vs-gem_close-race:
>>
>>       o shard-tglb: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.html> 
>>
>>         (i915#6481
>>         <https://gitlab.freedesktop.org/drm/intel/issues/6481>) -> PASS
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-tglb8/igt@prime_self_import@export-vs-gem_close-race.html> 
>>
>>
>>
>>         Warnings
>>
>>   *
>>
>>     igt@gem_exec_balancer@parallel-ordering:
>>
>>       o shard-iclb: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html> 
>>
>>         (i915#6117
>>         <https://gitlab.freedesktop.org/drm/intel/issues/6117>) -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html> 
>>
>>         (i915#4525 
>> <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>>   *
>>
>>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>>
>>       o shard-iclb: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html> 
>>
>>         (i915#2852
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2852>) -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb5/igt@gem_exec_fair@basic-none-rrul@rcs0.html> 
>>
>>         (i915#2842 
>> <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>>   *
>>
>>     igt@gem_exec_fair@basic-pace@vcs0:
>>
>>       o shard-kbl: FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html> 
>>
>>         (i915#2842
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html> 
>>
>>         (fdo#109271 
>> <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>>   *
>>
>>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>>
>>       o shard-skl: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>>         i915#1888
>>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html> 
>>
>>         (fdo#109271
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>>
>>       o shard-iclb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> 
>>
>>         (fdo#111068
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> 
>>
>>         (i915#2920
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1
>>         similar issue
>>   *
>>
>>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>>
>>       o shard-iclb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> 
>>
>>         (i915#2920
>>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> 
>>
>>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>>         +1 similar issue
>>   *
>>
>>     igt@kms_psr2_su@page_flip-nv12:
>>
>>       o shard-iclb: SKIP
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html> 
>>
>>         (fdo#109642
>>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>>         fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068>
>>         / i915#658
>>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html> 
>>
>>         (i915#5939 
>> <https://gitlab.freedesktop.org/drm/intel/issues/5939>)
>>   *
>>
>>     igt@runner@aborted:
>>
>>       o shard-kbl: (FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@runner@aborted.html>, 
>>
>>         FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@runner@aborted.html>) 
>>
>>         (i915#3002
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>>         / i915#5257
>>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl4/igt@runner@aborted.html>, 
>>
>>         FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl7/igt@runner@aborted.html>, 
>>
>>         FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl7/igt@runner@aborted.html>, 
>>
>>         FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl7/igt@runner@aborted.html>, 
>>
>>         FAIL
>>         
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106589v3/shard-kbl7/igt@runner@aborted.html>) 
>>
>>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>>         / i915#3002
>>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>>         / i915#5257 
>> <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
>>
>> {name}: This element is suppressed. This means it is ignored when 
>> computing
>> the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>>
>>     Build changes
>>
>>   * Linux: CI_DRM_11935 -> Patchwork_106589v3
>>
>> CI-20190529: 20190529
>> CI_DRM_11935: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ 
>> git://anongit.freedesktop.org/gfx-ci/linux
>> IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ 
>> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>> Patchwork_106589v3: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ 
>> git://anongit.freedesktop.org/gfx-ci/linux
>> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
>> git://anongit.freedesktop.org/piglit
>>
