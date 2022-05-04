Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 648CD51A3B5
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B21B10ECA1;
	Wed,  4 May 2022 15:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F6510ECA1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651677605; x=1683213605;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=xsd3lDKaO0euy8CiPk8iZeZ8Er4XJf8JjYANcaNYTMg=;
 b=bSkr0xV0M9JMkAGaIfS2BXThSkUaGUQbPPmsamd1OTJppJNQjR6xsiM0
 8JpHqa6WG0ww5avIlzC0s7x8/JD4xPfmh7ZM9uFfMSQdGOBz6wnMIh0c2
 wpFCOcs7XJnisYyC0OV+1wGxQ8z4xv8gXBUljZyVAB2DVaCkr0+bCMpDr
 WDBGDC+am9iY1YbF+xV6qsd+rqL0Sd1sR74ElLyqJdDeci6KWBAqZM6ZV
 Vt3NseQppT4/nNE6qU4zsYR60P3RsDl/OynUMtm0hw8AGAPvYcEvWa+Gi
 x1RyHZXNwcTSGUqmpxd4ZYrRfoNNVNqfv60TG4T4VQxUFSi+iLmkaaYHX A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267677460"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="267677460"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:20:04 -0700
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="664511583"
Received: from gidaly-mobl1.ger.corp.intel.com (HELO [10.213.236.183])
 ([10.213.236.183])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:20:02 -0700
Message-ID: <77cd0054-34fa-16d1-537f-42bcd6e24ffe@linux.intel.com>
Date: Wed, 4 May 2022 16:20:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Karol Herbst <kherbst@redhat.com>
References: <20220420095720.3331609-1-kherbst@redhat.com>
 <165167105965.678.17151935070911320466@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <165167105965.678.17151935070911320466@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_race_in_=5F=5Fi915=5Fvma=5Fremove=5Fclosed_=28rev4?=
 =?utf-8?q?=29?=
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


On 04/05/2022 14:30, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Fix race in __i915_vma_remove_closed (rev4)
> *URL:*	https://patchwork.freedesktop.org/series/102845/ 
> <https://patchwork.freedesktop.org/series/102845/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11597_full -> Patchwork_102845v4_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_102845v4_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_102845v4_full, please notify your bug team to 
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
> Patchwork_102845v4_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_ctx_persistence@engines-hostile@vecs0:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl8/igt@gem_ctx_persistence@engines-hostile@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl4/igt@gem_ctx_persistence@engines-hostile@vecs0.html>
>   *
> 
>     {igt@kms_concurrent@pipe-a@hdmi-a-3} (NEW):
> 
>       o {shard-dg1}: NOTRUN -> CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-dg1-18/igt@kms_concurrent@pipe-a@hdmi-a-3.html>

Neither failure is new - will merge.

Regards,

Tvrtko

> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     igt@i915_pm_rpm@cursor-dpms:
> 
>       o {shard-rkl}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html>
>   *
> 
>     igt@i915_pm_rpm@system-suspend-devices:
> 
>       o {shard-dg1}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-dg1-18/igt@i915_pm_rpm@system-suspend-devices.html>
>         +1 similar issue
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o {shard-rkl}: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-5/igt@i915_selftest@live@hangcheck.html>
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11597_full and 
> Patchwork_102845v4_full:
> 
> 
>       New IGT tests (1)
> 
>   * igt@kms_concurrent@pipe-a@hdmi-a-3:
>       o Statuses : 1 crash(s)
>       o Exec time: [0.03] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_102845v4_full that come from 
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
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl6/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl1/igt@gem_eio@unwedge-stress.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-glk3/igt@gem_exec_fair@basic-none@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@bcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_flink_race@flink_close:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb2/igt@gem_flink_race@flink_close.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb5/igt@gem_flink_race@flink_close.html>
>         (i915#5687 <https://gitlab.freedesktop.org/drm/intel/issues/5687>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb2/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@gem_lmem_swapping@heavy-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-glk8/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-glk7/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl4/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-snb6/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>   *
> 
>     igt@i915_suspend@debugfs-reader:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl7/igt@i915_suspend@debugfs-reader.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@i915_suspend@debugfs-reader.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +8
>         similar issues
>   *
> 
>     igt@kms_cdclk@plane-scaling:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl8/igt@kms_cdclk@plane-scaling.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +102
>         similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-after-suspend:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@kms_chamelium@vga-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>         (i915#5713 <https://gitlab.freedesktop.org/drm/intel/issues/5713>)
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +2
>         similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         (i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-glk5/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible@c-hdmi-a1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>         (i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o
> 
>         shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl1/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl6/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb2/igt@perf@polling-parameterized.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb7/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
> 
>   *
> 
>     igt@sysfs_clients@fair-0:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl8/igt@sysfs_clients@fair-0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@read:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@fbdev@read.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@fbdev@read.html>
>         +1 similar issue
>   *
> 
>     igt@gem_blits@basic:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@gem_blits@basic.html>
>         (i915#5855
>         <https://gitlab.freedesktop.org/drm/intel/issues/5855>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-4/igt@gem_blits@basic.html>
>   *
> 
>     igt@gem_ctx_persistence@engines-hostile@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl8/igt@gem_ctx_persistence@engines-hostile@rcs0.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl4/igt@gem_ctx_persistence@engines-hostile@rcs0.html>
>   *
> 
>     igt@gem_ctx_persistence@many-contexts:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html>
>         (i915#2410
>         <https://gitlab.freedesktop.org/drm/intel/issues/2410>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html>
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb5/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb6/igt@gem_eio@kms.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb4/igt@gem_eio@unwedge-stress.html>
>         (i915#3070
>         <https://gitlab.freedesktop.org/drm/intel/issues/3070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb6/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html>
>   *
> 
>     igt@gem_exec_suspend@basic-s3-devices@smem:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@gem_exec_suspend@basic-s3-devices@smem.html>
>         (i915#5115
>         <https://gitlab.freedesktop.org/drm/intel/issues/5115>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-4/igt@gem_exec_suspend@basic-s3-devices@smem.html>
>   *
> 
>     igt@i915_pm_backlight@basic-brightness:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#3012
>         <https://gitlab.freedesktop.org/drm/intel/issues/3012>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@i915_pm_backlight@basic-brightness.html>
>   *
> 
>     igt@i915_pm_rpm@system-suspend-modeset:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@i915_pm_rpm@system-suspend-modeset.html>
>         (fdo#109308
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109308>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html>
>   *
> 
>     igt@i915_pm_rps@waitboost:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-1/igt@i915_pm_rps@waitboost.html>
>         (i915#4016
>         <https://gitlab.freedesktop.org/drm/intel/issues/4016>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-5/igt@i915_pm_rps@waitboost.html>
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o
> 
>         shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         +3 similar issues
> 
>       o
> 
>         {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html>
> 
>   *
> 
>     igt@kms_color@pipe-b-ctm-negative:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-1/igt@kms_color@pipe-b-ctm-negative.html>
>         (i915#1149
>         <https://gitlab.freedesktop.org/drm/intel/issues/1149> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>
>         / i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_color@pipe-b-ctm-negative.html>
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html>
>         (fdo#112022
>         <https://bugs.freedesktop.org/show_bug.cgi?id=112022> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html>
>         +3 similar issues
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-left-edge.html>
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html>
>         (fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic.html>
>         +3 similar issues
>   *
> 
>     igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098> /
>         i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>
>         / i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-gtt-ytiled.html>
>         +3 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767
>         <https://gitlab.freedesktop.org/drm/intel/issues/4767>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>         (i915#4911
>         <https://gitlab.freedesktop.org/drm/intel/issues/4911>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html>
>         +20 similar issues
>   *
> 
>     igt@kms_invalid_mode@clock-too-high:
> 
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-snb2/igt@kms_invalid_mode@clock-too-high.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-snb6/igt@kms_invalid_mode@clock-too-high.html>
>         +2 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>   *
> 
>     igt@kms_plane_cursor@pipe-b-overlay-size-256:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@kms_plane_cursor@pipe-b-overlay-size-256.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_plane_cursor@pipe-b-overlay-size-256.html>
>         +12 similar issues
>   *
> 
>     igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-1/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html>
>         (i915#3558
>         <https://gitlab.freedesktop.org/drm/intel/issues/3558> /
>         i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html>
>   *
> 
>     igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#3558 <https://gitlab.freedesktop.org/drm/intel/issues/3558>
>         / i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html>
>   *
> 
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-edp-1-scaler-with-clipping-clamping:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-edp-1-scaler-with-clipping-clamping.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-edp-1-scaler-with-clipping-clamping.html>
>   *
> 
>     igt@kms_psr@sprite_plane_onoff:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html>
>         +2 similar issues
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5461
>         <https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>   *
> 
>     igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-rkl-5/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html>
>   *
> 
>     igt@perf@polling-small-buf:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl7/igt@perf@polling-small-buf.html>
>         (i915#1722
>         <https://gitlab.freedesktop.org/drm/intel/issues/1722>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl7/igt@perf@polling-small-buf.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_ccs@ctrl-surf-copy:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-skl7/igt@gem_ccs@ctrl-surf-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-skl7/igt@gem_ccs@ctrl-surf-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888 <https://gitlab.freedesktop.org/drm/intel/issues/1888>)
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-tglb3/igt@gem_eio@unwedge-stress.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html>
>         (i915#5614
>         <https://gitlab.freedesktop.org/drm/intel/issues/5614>) +1
>         similar issue
>   *
> 
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>         (i915#5243 <https://gitlab.freedesktop.org/drm/intel/issues/5243>)
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-kbl7/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-kbl7/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>
>         / i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>       o
> 
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11597/shard-apl8/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102845v4/shard-apl8/igt@runner@aborted.html>)
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
>   * Linux: CI_DRM_11597 -> Patchwork_102845v4
> 
> CI-20190529: 20190529
> CI_DRM_11597: 896c2bfb80a2522f6652358c53584741e0bf1e4b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_102845v4: 896c2bfb80a2522f6652358c53584741e0bf1e4b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
