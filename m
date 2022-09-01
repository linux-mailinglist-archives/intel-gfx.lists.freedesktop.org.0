Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF205A9A85
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 16:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF5D10E445;
	Thu,  1 Sep 2022 14:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C48510E445
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 14:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662043101; x=1693579101;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=hsfxUmngFPZCCBvBDlLYyzOX5bRxS2+8TMVymOBaNIY=;
 b=bTG53g5fQnJ7N4xPDtaiiLZTrbExKj1zGZQLBxKSj1MiuQtbbfxiWA+s
 /9JqBSVingqsN9S6d5GSI5vEBMh1coW6yKqxk9lzypx1EpDh22lLaC4bw
 npvQnV3SAu05MKpYyi9FcSor58WIAePheU0zy7EKwZs1xEB2N2hgQJNhV
 BKag/EsUgZ8LKOjhIThya2OO014eRFRSrbbHiNqpYjv4UyBe3V/3WQc7L
 6w36VxUdTCHdQ2er+kVLgIjju0Cf6jrUZjhBfMG4lpfK73xHNFqmxPZoc
 Cfd64NYfnTppJfzEkEapYZQRFnGqWyp0NorbtqgqflNCSfZZSYa8UPgem Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="296514435"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; 
 d="scan'208,217";a="296514435"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 07:38:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; 
 d="scan'208,217";a="642356265"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.45.222])
 ([10.249.45.222])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 07:38:10 -0700
Content-Type: multipart/alternative;
 boundary="------------XrsqkPsOeA8QOR5csEP7rqi9"
Message-ID: <6a76a296-7de9-5c1d-10d3-435521661883@linux.intel.com>
Date: Thu, 1 Sep 2022 16:38:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20220831161841.20033-1-nirmoy.das@intel.com>
 <166203535991.11919.716514572350579237@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <166203535991.11919.716514572350579237@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Abort_suspend_on_i915=5Fttm=5Fbackup_failure_=28re?=
 =?utf-8?b?djIp?=
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
--------------XrsqkPsOeA8QOR5csEP7rqi9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 9/1/2022 2:29 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/ttm: Abort suspend on i915_ttm_backup failure (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/107877/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12057_full -> Patchwork_107877v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_107877v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_107877v2_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (13 -> 12)
>
> Missing (1): shard-rkl
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_107877v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_busy@close-race:
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-snb6/igt@gem_busy@close-race.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb6/igt@gem_busy@close-race.html>
>

This exsting reoccurring issue 
https://intel-gfx-ci.01.org/tree/drm-tip/shard-snb.html, not related to 
this patch.


Nirmoy


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_107877v2_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html>)
>         -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html>)
>         (i915#4392 <https://gitlab.freedesktop.org/drm/intel/issues/4392>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb6/igt@gem_eio@kms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb5/igt@gem_eio@kms.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>  *
>
>     igt@gem_exec_balancer@parallel-bb-first:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-none@vcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_lmem_swapping@heavy-multi:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@gem_lmem_swapping@heavy-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-random:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@gem_lmem_swapping@heavy-verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>      o
>
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb6/igt@i915_selftest@live@hangcheck.html>
>         (i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) +6
>         similar issues
>
>      o
>
>         shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-snb4/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb4/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921 <https://gitlab.freedesktop.org/drm/intel/issues/3921>)
>
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +35
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>  *
>
>     igt@kms_chamelium@hdmi-edid-change-during-suspend:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium@hdmi-frame-dump:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_chamelium@hdmi-frame-dump.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_content_protection@atomic:
>
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_content_protection@atomic.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@toggle:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html>
>         (i915#5072
>         <https://gitlab.freedesktop.org/drm/intel/issues/5072>) +1
>         similar issue
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1
>         similar issue
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +6
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +8
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +37
>         similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         (i915#1188 <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_cursor_blt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html>
>         (fdo#109278 <https://bugs.freedesktop.org/show_bug.cgi?id=109278>)
>  *
>
>     igt@kms_vblank@pipe-d-wait-idle:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>  *
>
>     igt@sysfs_clients@recycle-many:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@sysfs_clients@recycle-many.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>  *
>
>     igt@sysfs_clients@sema-10:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@sysfs_clients@sema-10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-hang@blt:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         (i915#4883
>         <https://gitlab.freedesktop.org/drm/intel/issues/4883>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-13/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         +1 similar issue
>  *
>
>     igt@gem_eio@in-flight-contexts-10ms:
>
>       o shard-apl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@gem_eio@in-flight-contexts-10ms.html>
>  *
>
>     igt@gem_exec_balancer@parallel-keep-in-fence:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_endless@dispatch@vcs1:
>
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb1/igt@gem_exec_endless@dispatch@vcs1.html>
>         (i915#3778
>         <https://gitlab.freedesktop.org/drm/intel/issues/3778>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb2/igt@gem_exec_endless@dispatch@vcs1.html>
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>  *
>
>     igt@gem_exec_reloc@basic-wc-gtt-active:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@gem_exec_reloc@basic-wc-gtt-active.html>
>         (i915#5904
>         <https://gitlab.freedesktop.org/drm/intel/issues/5904> /
>         i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@gem_exec_reloc@basic-wc-gtt-active.html>
>         +31 similar issues
>  *
>
>     igt@gem_lmem_swapping@smem-oom@lmem0:
>
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#4936
>         <https://gitlab.freedesktop.org/drm/intel/issues/4936>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454
>         <https://gitlab.freedesktop.org/drm/intel/issues/454>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@i915_pm_dc@dc6-psr.html>
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp-stress:
>
>       o {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>  *
>
>     igt@i915_pm_rps@engine-order:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl1/igt@i915_pm_rps@engine-order.html>
>         (i915#6537
>         <https://gitlab.freedesktop.org/drm/intel/issues/6537>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@i915_pm_rps@engine-order.html>
>  *
>
>     igt@kms_cursor_legacy@cursor-vs-flip@varying-size:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html>
>         (i915#5072
>         <https://gitlab.freedesktop.org/drm/intel/issues/5072>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html>
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767
>         <https://gitlab.freedesktop.org/drm/intel/issues/4767>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>  *
>
>     igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>  *
>
>     igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>
>      o
>
>         shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>
>      o
>
>         shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>
>  *
>
>     igt@kms_plane_lowres@tiling-x@pipe-a-dp-1:
>
>       o shard-apl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html>
>         +3 similar issues
>  *
>
>     igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>         (i915#165
>         <https://gitlab.freedesktop.org/drm/intel/issues/165> /
>         i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>         +1 similar issue
>  *
>
>     igt@kms_prime@basic-crc-vgem@second-to-first:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_prime@basic-crc-vgem@second-to-first.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#5904
>         <https://gitlab.freedesktop.org/drm/intel/issues/5904> /
>         i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_prime@basic-crc-vgem@second-to-first.html>
>  *
>
>     igt@kms_psr@psr2_sprite_mmap_gtt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html>
>         +3 similar issues
>  *
>
>     igt@kms_rotation_crc@sprite-rotation-180:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/igt@kms_rotation_crc@sprite-rotation-180.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#5852
>         <https://gitlab.freedesktop.org/drm/intel/issues/5852>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/igt@kms_rotation_crc@sprite-rotation-180.html>
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#5904
>         <https://gitlab.freedesktop.org/drm/intel/issues/5904> /
>         i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html>
>         +99 similar issues
>  *
>
>     igt@kms_vblank@pipe-b-ts-continuation-suspend:
>
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
>         (i915#3614
>         <https://gitlab.freedesktop.org/drm/intel/issues/3614> /
>         i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939> /
>         i915#6598
>         <https://gitlab.freedesktop.org/drm/intel/issues/6598>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html>
>  *
>
>     igt@perf_pmu@busy-double-start@vcs1:
>
>       o {shard-dg1}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs1.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/intel/issues/4349>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb1/igt@gem_eio@unwedge-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>
>       o shard-apl: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#62
>         <https://gitlab.freedesktop.org/drm/intel/issues/62>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#6599
>         <https://gitlab.freedesktop.org/drm/intel/issues/6599>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257> /
>         i915#6599 <https://gitlab.freedesktop.org/drm/intel/issues/6599>)
>
>      o
>
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12057 -> Patchwork_107877v2
>
> CI-20190529: 20190529
> CI_DRM_12057: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_107877v2: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------XrsqkPsOeA8QOR5csEP7rqi9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/1/2022 2:29 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:166203535991.11919.716514572350579237@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/ttm: Abort suspend on i915_ttm_backup failure
              (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/107877/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/107877/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12057_full -&gt;
        Patchwork_107877v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_107877v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_107877v2_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (13 -&gt; 12)</h2>
      <p>Missing (1): shard-rkl </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_107877v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_busy@close-race:
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-snb6/igt@gem_busy@close-race.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb6/igt@gem_busy@close-race.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>This exsting reoccurring issue
      <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/shard-snb.html">https://intel-gfx-ci.01.org/tree/drm-tip/shard-snb.html</a>, not
      related to this patch.</p>
    <p><br>
    </p>
    <p>Nirmoy<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:166203535991.11919.716514572350579237@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_107877v2_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-glk: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html"
                moz-do-not-send="true">PASS</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html"
                moz-do-not-send="true">PASS</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html"
                moz-do-not-send="true">PASS</a>) (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4392"
                moz-do-not-send="true">i915#4392</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb6/igt@gem_eio@kms.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb5/igt@gem_eio@kms.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5784"
                moz-do-not-send="true">i915#5784</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-bb-first:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-multi:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@gem_lmem_swapping@heavy-multi.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-random:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@gem_lmem_swapping@heavy-verify-random.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/716"
                moz-do-not-send="true">i915#716</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/454"
                moz-do-not-send="true">i915#454</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>
              <p>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb6/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2867"
                  moz-do-not-send="true">i915#2867</a>) +6 similar
                issues</p>
            </li>
            <li>
              <p>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-snb4/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb4/igt@i915_selftest@live@hangcheck.html"
                  moz-do-not-send="true">INCOMPLETE</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3921"
                  moz-do-not-send="true">i915#3921</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +35 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-frame-dump:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_chamelium@hdmi-frame-dump.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_content_protection@atomic.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1319"
                moz-do-not-send="true">i915#1319</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@toggle:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5072"
                moz-do-not-send="true">i915#5072</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2672"
                moz-do-not-send="true">i915#2672</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +37 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1188"
                moz-do-not-send="true">i915#1188</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_psr2_su@frontbuffer-xrgb8888.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_blt:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109278"
                moz-do-not-send="true">fdo#109278</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-d-wait-idle:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/533"
                moz-do-not-send="true">i915#533</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@recycle-many:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@sysfs_clients@recycle-many.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2994"
                moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@sema-10:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@sysfs_clients@sema-10.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2994"
                moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@blt.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4883"
                moz-do-not-send="true">i915#4883</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-13/igt@gem_ctx_persistence@legacy-engines-hang@blt.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@in-flight-contexts-10ms:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                moz-do-not-send="true">i915#3063</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@gem_eio@in-flight-contexts-10ms.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_endless@dispatch@vcs1:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb1/igt@gem_exec_endless@dispatch@vcs1.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3778"
                moz-do-not-send="true">i915#3778</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb2/igt@gem_exec_endless@dispatch@vcs1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@gem_exec_reloc@basic-wc-gtt-active.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5904"
                moz-do-not-send="true">i915#5904</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@gem_exec_reloc@basic-wc-gtt-active.html"
                moz-do-not-send="true">PASS</a> +31 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4936"
                moz-do-not-send="true">i915#4936</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb3/igt@i915_pm_dc@dc6-psr.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/454"
                moz-do-not-send="true">i915#454</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@i915_pm_dc@dc6-psr.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1397"
                moz-do-not-send="true">i915#1397</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@engine-order:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl1/igt@i915_pm_rps@engine-order.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6537"
                moz-do-not-send="true">i915#6537</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@i915_pm_rps@engine-order.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursor-vs-flip@varying-size:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5072"
                moz-do-not-send="true">i915#5072</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4767"
                moz-do-not-send="true">i915#4767</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1188"
                moz-do-not-send="true">i915#1188</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
          <ul>
            <li>
              <p>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                  moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1188"
                  moz-do-not-send="true">i915#1188</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@tiling-x@pipe-a-dp-1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html"
                moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/165"
                moz-do-not-send="true">i915#165</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-crc-vgem@second-to-first:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_prime@basic-crc-vgem@second-to-first.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5904"
                moz-do-not-send="true">i915#5904</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_prime@basic-crc-vgem@second-to-first.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html"
                moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@sprite-rotation-180:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/igt@kms_rotation_crc@sprite-rotation-180.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1888"
                moz-do-not-send="true">i915#1888</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5852"
                moz-do-not-send="true">i915#5852</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/igt@kms_rotation_crc@sprite-rotation-180.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-idle-hang:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5904"
                moz-do-not-send="true">i915#5904</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html"
                moz-do-not-send="true">PASS</a> +99 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3614"
                moz-do-not-send="true">i915#3614</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4939"
                moz-do-not-send="true">i915#4939</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6598"
                moz-do-not-send="true">i915#6598</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@busy-double-start@vcs1:</p>
          <ul>
            <li>{shard-dg1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4349"
                moz-do-not-send="true">i915#4349</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb1/igt@gem_eio@unwedge-stress.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5784"
                moz-do-not-send="true">i915#5784</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb7/igt@gem_eio@unwedge-stress.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3063"
                moz-do-not-send="true">i915#3063</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>shard-apl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>) (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                  moz-do-not-send="true">i915#3002</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                  moz-do-not-send="true">i915#5257</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/6599"
                  moz-do-not-send="true">i915#6599</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl3/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>) (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                  moz-do-not-send="true">i915#180</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                  moz-do-not-send="true">i915#3002</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                  moz-do-not-send="true">i915#5257</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/6599"
                  moz-do-not-send="true">i915#6599</a>)</p>
            </li>
            <li>
              <p>shard-kbl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>) (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                  moz-do-not-send="true">i915#3002</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                  moz-do-not-send="true">i915#5257</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html"
                  moz-do-not-send="true">FAIL</a>) (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                  moz-do-not-send="true">i915#180</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                  moz-do-not-send="true">i915#3002</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                  moz-do-not-send="true">i915#4312</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                  moz-do-not-send="true">i915#5257</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12057 -&gt; Patchwork_107877v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12057: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_107877v2: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------XrsqkPsOeA8QOR5csEP7rqi9--
