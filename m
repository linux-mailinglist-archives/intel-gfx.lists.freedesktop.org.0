Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAE34E7039
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E07B10E190;
	Fri, 25 Mar 2022 09:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3372B10E1BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 09:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648201723; x=1679737723;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=5SaYDbKK9ORz107ToCRQQL9rmkfXQOLzPL0GHo5KShE=;
 b=eTe7LfwDSpIm1eFkZBFKvv8HerYXB6CA2DTxjKOFi5asFr0MWS61/0nN
 KkECtdjv5XUbwFtSH3h5Z7h8acw+Y+MBIDzfCpemUK4I9Nr6geFNYIzbh
 eZKOf9PH06YYSgjD4Zw1K/dsgaf/AOe1Vbw9Y8+xM2UsHW1Zq1VvTyU1A
 kkDL+U5IWF97X+ptBYcuY3bpHDE77VlTHqyzLzLlor46+sYZj8F/a95m2
 vz6PV3NuheaaQqEAaIPGOsjjAY8uTpTCR7N4xdAhOsTPM+XhKtvvc+JFk
 RfA5HEpy2pLsUDHxdYLXi6b/CtkgAUIOy9MnpVllXD1tx2TCltLTJKqb2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="239201453"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="239201453"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:48:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="545022266"
Received: from mhenry-mobl.ger.corp.intel.com (HELO [10.252.10.83])
 ([10.252.10.83])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:48:41 -0700
Message-ID: <340a1fbb-edf2-1edb-4cd8-b5fa2aa0bf53@intel.com>
Date: Fri, 25 Mar 2022 09:48:39 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220324172143.377104-1-matthew.auld@intel.com>
 <164820015041.24040.12458019002879362470@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164820015041.24040.12458019002879362470@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/ttm=3A_limit_where_we_appl?=
 =?utf-8?q?y_TTM=5FPL=5FFLAG=5FCONTIGUOUS_=28rev2=29?=
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

On 25/03/2022 09:22, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [1/2] drm/i915/ttm: limit where we apply 
> TTM_PL_FLAG_CONTIGUOUS (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/101749/ 
> <https://patchwork.freedesktop.org/series/101749/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11403 -> Patchwork_22677
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22677 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22677, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/index.html
> 
> 
>     Participating hosts (44 -> 40)
> 
> Missing (4): fi-bsw-cyan shard-rkl shard-tglu fi-bdw-samus
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22677:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@gt_engines:
>       o fi-rkl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html>

Unrelated fail.

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_selftest@live@uncore:
>       o {bat-rpls-2}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/bat-rpls-2/igt@i915_selftest@live@uncore.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22677 that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   * igt@runner@aborted:
>       o fi-rkl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/fi-rkl-guc/igt@runner@aborted.html>
>         (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_module_load@reload:
> 
>       o {bat-rpls-2}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/bat-rpls-2/igt@i915_module_load@reload.html>
>         (i915#4391
>         <https://gitlab.freedesktop.org/drm/intel/issues/4391>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/bat-rpls-2/igt@i915_module_load@reload.html>
>   *
> 
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
> 
>       o fi-cfl-8109u: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html>
>         (i915#295 <https://gitlab.freedesktop.org/drm/intel/issues/295>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html>
>         +10 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
> 
>       o fi-cfl-8109u: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11403/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>         (i915#295 <https://gitlab.freedesktop.org/drm/intel/issues/295>
>         / i915#5341
>         <https://gitlab.freedesktop.org/drm/intel/issues/5341>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22677/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11403 -> Patchwork_22677
> 
> CI-20190529: 20190529
> CI_DRM_11403: 76ccfdacc3c78b22c90127356a2d19241f452208 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6392: 5a78ea9ff9c0a77bec5b094bf7e9d82c9848702b @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_22677: 2c1ea7309b6ade223d932cd43b4f7735d57b32d9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> 2c1ea7309b6a drm/i915/migrate: move the sanity check
> 1da8e5cdeb99 drm/i915/ttm: limit where we apply TTM_PL_FLAG_CONTIGUOUS
> 
