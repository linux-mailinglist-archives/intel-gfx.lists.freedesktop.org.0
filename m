Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C7D561A7A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 14:38:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9F411A80F;
	Thu, 30 Jun 2022 12:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5DED11A80F
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 12:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656592715; x=1688128715;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=z0PBujJUwXbneSECkXqE6QgulcF5xdwCi4h9mfPh7J8=;
 b=LyWWqkRWNzzZ99US+qEeT4Lh1fEo+ppEY38bsHG82JxqD+32dpCBPMJk
 2M/IqQMt3d0FdSPV1CDhru9HixNEWq4nly6dCYu+sxvWmcgSMbjnBsW/r
 jJEKJrY/bGzmt7bo44jGJZ/wLxSvufvCS4arHPATCOjUAaq8KfriOLY4G
 LmgKfKuNj4B1ZFItI5LBSNSjhdWHePpAu5YXsnoAdVUQCcJlVZN2TIEi3
 gVagl30mOsv/C2w8LkoywT03b0HdE7MvWvLkJ3Bub88EihsTQ0/2YlwYJ
 d5mgfbUGiqRGtKGEcvbzUmJrwSh1Tlfv/3tv9s/xjb1znpdiu9TKjVRFZ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="281100589"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="281100589"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:38:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="588743647"
Received: from dtorranx-mobl.ger.corp.intel.com (HELO [10.213.226.91])
 ([10.213.226.91])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 05:38:32 -0700
Message-ID: <9a17a70f-f79d-4098-7053-330e3118ac98@intel.com>
Date: Thu, 30 Jun 2022 13:38:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
 <165658217360.26514.15583453509379990300@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <165658217360.26514.15583453509379990300@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2Cv4=2C01/13=5D_drm/doc=3A_add_rfc_sect?=
 =?utf-8?q?ion_for_small_BAR_uapi?=
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

On 30/06/2022 10:42, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [CI,v4,01/13] drm/doc: add rfc section 
> for small BAR uapi
> *URL:*	https://patchwork.freedesktop.org/series/105787/ 
> <https://patchwork.freedesktop.org/series/105787/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11825_full -> Patchwork_105787v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_105787v1_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105787v1_full, please notify your bug team to 
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
> Patchwork_105787v1_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_query@query-regions-garbage-items:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl7/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb2/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb7/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk3/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk8/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb4/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb2/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl6/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-snb5/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-snb5/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@i915_query@query-regions-garbage-items.html>
> 
>   *
> 
>     igt@kms_cursor_legacy@cursor-vs-flip@atomic:
> 
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl1/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html>

This one looks unrelated. The other failures are expected/normal until 
the IGT series is merged (plan is merge that first so we don't see these 
failures):
https://patchwork.freedesktop.org/series/105792/

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     igt@gem_exec_capture@capture@vcs1-smem:
> 
>       o {shard-dg1}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-16/igt@gem_exec_capture@capture@vcs1-smem.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-dg1-18/igt@gem_exec_capture@capture@vcs1-smem.html>
>         +10 similar issues
>   *
> 
>     igt@i915_query@query-regions-garbage-items:
> 
>       o
> 
>         {shard-rkl}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-2/igt@i915_query@query-regions-garbage-items.html>
> 
>       o
> 
>         {shard-tglu}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-3/igt@i915_query@query-regions-garbage-items.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglu-6/igt@i915_query@query-regions-garbage-items.html>
> 
> 
>       Piglit changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     spec@glsl-1.10@execution@built-in-functions@vs-tan-float:
> 
>       o pig-glk-j5005: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/pig-glk-j5005/spec@glsl-1.10@execution@built-in-functions@vs-tan-float.html>
>   *
> 
>     spec@glsl-1.30@execution@fs-textureoffset-2d:
> 
>       o pig-glk-j5005: NOTRUN -> CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/pig-glk-j5005/spec@glsl-1.30@execution@fs-textureoffset-2d.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_105787v1_full that come from 
> known issues:
> 
> 
>       CI changes
> 
> 
>         Possible fixes
> 
>   * boot:
>       o shard-apl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html>)
>         (i915#4386
>         <https://gitlab.freedesktop.org/drm/intel/issues/4386>) -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/boot.html>)
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_create@create-massive:
> 
>       o
> 
>         shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
> 
>       o
> 
>         shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@gem_create@create-massive.html>
>         (i915#4991 <https://gitlab.freedesktop.org/drm/intel/issues/4991>)
> 
>   *
> 
>     igt@gem_ctx_persistence@smoketest:
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@gem_ctx_persistence@smoketest.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk6/igt@gem_ctx_persistence@smoketest.html>
>         (i915#6310 <https://gitlab.freedesktop.org/drm/intel/issues/6310>)
> 
>       o
> 
>         shard-skl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl3/igt@gem_ctx_persistence@smoketest.html>
>         (i915#6310 <https://gitlab.freedesktop.org/drm/intel/issues/6310>)
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@gem_exec_balancer@parallel-ordering.html>
>         (i915#6117 <https://gitlab.freedesktop.org/drm/intel/issues/6117>)
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb3/igt@gem_exec_balancer@parallel-out-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_schedule@submit-golden-slice@vecs0:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk9/igt@gem_exec_schedule@submit-golden-slice@vecs0.html>
>         (i915#6310 <https://gitlab.freedesktop.org/drm/intel/issues/6310>)
>   *
> 
>     igt@gem_exec_whisper@basic-normal-all:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk3/igt@gem_exec_whisper@basic-normal-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk8/igt@gem_exec_whisper@basic-normal-all.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/igt@gem_lmem_swapping@heavy-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl9/igt@gem_lmem_swapping@heavy-verify-random-ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@gem_lmem_swapping@parallel-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@gem_lmem_swapping@random-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>   *
> 
>     igt@gem_pxp@create-regular-context-2:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@gem_pxp@create-regular-context-2.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +70
>         similar issues
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +4 similar issues
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl4/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>       o
> 
>         shard-glk: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb1/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>         (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk9/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +56
>         similar issues
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb2/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb5/igt@i915_selftest@live@hangcheck.html>
>         (i915#5591 <https://gitlab.freedesktop.org/drm/intel/issues/5591>)
>   *
> 
>     igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>)
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs.html>
>         (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>   *
> 
>     igt@kms_chamelium@dp-hpd-for-each-pipe:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
> 
>       o
> 
>         shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-snb7/igt@kms_chamelium@dp-hpd-for-each-pipe.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
> 
>   *
> 
>     igt@kms_chamelium@hdmi-crc-multiple:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl6/igt@kms_chamelium@hdmi-crc-multiple.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +9
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-max:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@kms_color_chamelium@pipe-d-ctm-max.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +4
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl1/igt@kms_content_protection@atomic.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@kms_content_protection@legacy.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +118
>         similar issues
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/intel/issues/4839> /
>         i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +1 similar issue
>   *
> 
>     igt@kms_flip@plain-flip-ts-check@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +3
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) +1
>         similar issue
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +37
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +67
>         similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html>
>         (i915#1188 <https://gitlab.freedesktop.org/drm/intel/issues/1188>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +3
>         similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         (i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>   *
> 
>     igt@kms_psr2_su@page_flip-nv12:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@kms_psr2_su@page_flip-nv12.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>   *
> 
>     igt@kms_psr@psr2_suspend:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_psr@psr2_suspend.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb1/igt@kms_psr@psr2_suspend.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@perf@polling-parameterized.html>
>         (i915#5639 <https://gitlab.freedesktop.org/drm/intel/issues/5639>)
>   *
> 
>     igt@sysfs_clients@busy:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@sysfs_clients@busy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@sysfs_clients@fair-3:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk5/igt@sysfs_clients@fair-3.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@sysfs_clients@recycle-many:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@sysfs_clients@recycle-many.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@drm_read@short-buffer-nonblock:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@drm_read@short-buffer-nonblock.html>
>         (i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@drm_read@short-buffer-nonblock.html>
>         +1 similar issue
>   *
> 
>     igt@fbdev@unaligned-write:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@fbdev@unaligned-write.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@fbdev@unaligned-write.html>
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/intel/issues/6268>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html>
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         +4 similar issues
>   *
> 
>     igt@gem_ctx_persistence@hostile:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gem_ctx_persistence@hostile.html>
>         (i915#2410
>         <https://gitlab.freedesktop.org/drm/intel/issues/2410>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-5/igt@gem_ctx_persistence@hostile.html>
>   *
> 
>     igt@gem_ctx_persistence@many-contexts:
> 
>       o {shard-dg1}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-13/igt@gem_ctx_persistence@many-contexts.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-dg1-19/igt@gem_ctx_persistence@many-contexts.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-1/igt@gem_eio@unwedge-stress.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglu-4/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-contexts:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2849
>         <https://gitlab.freedesktop.org/drm/intel/issues/2849>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_exec_reloc@basic-write-cpu:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@gem_exec_reloc@basic-write-cpu.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-cpu.html>
>         +4 similar issues
>   *
> 
>     igt@gem_exec_whisper@basic-contexts-priority-all:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html>
>         (i915#118 <https://gitlab.freedesktop.org/drm/intel/issues/118>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority-all.html>
>   *
> 
>     igt@gem_exec_whisper@basic-fds-priority-all:
> 
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html>
>         (i915#6310
>         <https://gitlab.freedesktop.org/drm/intel/issues/6310>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk9/igt@gem_exec_whisper@basic-fds-priority-all.html>
>         +1 similar issue
>   *
> 
>     igt@gem_pread@display:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@gem_pread@display.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-5/igt@gem_pread@display.html>
>         +1 similar issue
>   *
> 
>     igt@gen9_exec_parse@secure-batches:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html>
>         +1 similar issue
>   *
> 
>     igt@i915_module_load@reload-no-display:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-8/igt@i915_module_load@reload-no-display.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglu-5/igt@i915_module_load@reload-no-display.html>
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@i915_pm_backlight@fade_with_dpms.html>
>         (i915#3012
>         <https://gitlab.freedesktop.org/drm/intel/issues/3012>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html>
>         +1 similar issue
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o
> 
>         {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html>
> 
>       o
> 
>         {shard-dg1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-dg1-16/igt@i915_pm_rpm@dpms-lpsp.html>
> 
>   *
> 
>     igt@i915_pm_rpm@system-suspend-modeset:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html>
>         (i915#5420
>         <https://gitlab.freedesktop.org/drm/intel/issues/5420>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl6/igt@i915_pm_rpm@system-suspend-modeset.html>
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-snb4/igt@i915_selftest@live@hangcheck.html>
>         (i915#3921
>         <https://gitlab.freedesktop.org/drm/intel/issues/3921>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-snb7/igt@i915_selftest@live@hangcheck.html>
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/igt@i915_suspend@forcewake.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@i915_suspend@forcewake.html>
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html>
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         +1 similar issue
>   *
> 
>     igt@kms_color@pipe-b-ctm-green-to-red:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_color@pipe-b-ctm-green-to-red.html>
>         (i915#1149
>         <https://gitlab.freedesktop.org/drm/intel/issues/1149> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>
>         / i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@toggle:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html>
>         +2 similar issues
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>
>         (fdo#111314
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111314> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>
>         / i915#4369
>         <https://gitlab.freedesktop.org/drm/intel/issues/4369>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         i915#5864
>         <https://gitlab.freedesktop.org/drm/intel/issues/5864>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html>
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> 
>       o
> 
>         shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
> 
>       o
> 
>         shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
> 
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         (i915#3701
>         <https://gitlab.freedesktop.org/drm/intel/issues/3701>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html>
>         (i915#3701
>         <https://gitlab.freedesktop.org/drm/intel/issues/3701>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         +17 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html>
>         +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html>
>   *
> 
>     igt@kms_psr@sprite_blt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_psr@sprite_blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_psr@sprite_blt.html>
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5461
>         <https://gitlab.freedesktop.org/drm/intel/issues/5461>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>   *
> 
>     igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070>
>         / i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html>
>   *
> 
>     igt@kms_vblank@pipe-b-query-forked:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_vblank@pipe-b-query-forked.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#4098
>         <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html>
>         +19 similar issues
>   *
> 
>     igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
> 
>       o {shard-tglu}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglu-5/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html>
>         +2 similar issues
>   *
> 
>     igt@perf@gen12-unprivileged-single-ctx-counters:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-counters.html>
>   *
> 
>     igt@sysfs_heartbeat_interval@nopreempt@bcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html>
>         (i915#6015
>         <https://gitlab.freedesktop.org/drm/intel/issues/6015>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html>
>         +4 similar issues
>   *
> 
>     igt@sysfs_heartbeat_interval@precise@vecs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@sysfs_heartbeat_interval@precise@vecs0.html>
>         (i915#1755
>         <https://gitlab.freedesktop.org/drm/intel/issues/1755>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-kbl4/igt@sysfs_heartbeat_interval@precise@vecs0.html>
>   *
> 
>     igt@testdisplay:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-2/igt@testdisplay.html>
>         (i915#4941
>         <https://gitlab.freedesktop.org/drm/intel/issues/4941>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglu-1/igt@testdisplay.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@gem_eio@kms.html>
>         (i915#3063
>         <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb2/igt@gem_eio@kms.html>
>         (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb3/igt@gem_eio@unwedge-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb7/igt@gem_eio@unwedge-stress.html>
>         (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@bcs0:
> 
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2848
>         <https://gitlab.freedesktop.org/drm/intel/issues/2848>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +5
>         similar issues
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#2684
>         <https://gitlab.freedesktop.org/drm/intel/issues/2684>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>)
>   *
> 
>     igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-skl4/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) +1
>         similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>   *
> 
>     igt@runner@aborted:
> 
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/igt@runner@aborted.html>)
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105787v1/shard-apl3/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002 <https://gitlab.freedesktop.org/drm/intel/issues/3002>
>         / i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11825 -> Patchwork_105787v1
> 
> CI-20190529: 20190529
> CI_DRM_11825: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6551: a01ebaef40f1fa653e9d6a59b719f2d69af2b458 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105787v1: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
