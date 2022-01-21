Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB244959DA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 07:21:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9A0310E6A9;
	Fri, 21 Jan 2022 06:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D2610E6A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 06:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642746111; x=1674282111;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qhdZrGajlUFoCDudZ0ZTCkye3+n6Csnl2002uvQPzw0=;
 b=ZHoEwp4vcgEc3w3WOgKcZeGE6vMjJU1d5pH+CkTrTXsS5S+kM38qXMpL
 lCoqPhZH/zT9Bv+I/GrE4p7Mkm/qs1+EKXZTiZFVPeUUndmfGe+BPYtLz
 8GXJnWnYEk/CI4M0LoEih0tJ6QC0NSoIO6hanTYcvD4yT/4nEuhJf2XZi
 yFi2iSW4mKJoO4Q+AOWt9M1ozSO9BSyyz1T0ZjilVp2QJthBH37LzI0uX
 mZkpjeSaWM6S8z3bsUOWUH292FdnzymA+AaOXpZ//IP49j7zlJ47/Szq7
 bNsXpVgZq9AGR7CEcg/kGSPPYerF5hSqP8oC5fCA7aa/E7QQKK8SLcMbu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="225556971"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="225556971"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 22:21:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="626628626"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 22:21:49 -0800
Date: Thu, 20 Jan 2022 22:21:47 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YepQ+4a4jSTio6UG@mdroper-desk1.amr.corp.intel.com>
References: <20220120234147.1200574-1-matthew.d.roper@intel.com>
 <164272710761.19939.3183786561777184304@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164272710761.19939.3183786561777184304@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_Wa=5F18018781329?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 21, 2022 at 01:05:07AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add Wa_18018781329
> URL   : https://patchwork.freedesktop.org/series/99128/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11115 -> Patchwork_22049
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22049 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22049, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/index.html
> 
> Participating hosts (42 -> 40)
> ------------------------------
> 
>   Missing    (2): fi-bsw-cyan fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22049:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-glk-j4005:       [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11115/fi-glk-j4005/igt@i915_selftest@live@execlists.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/fi-glk-j4005/igt@i915_selftest@live@execlists.html

Appears to be the same as
https://gitlab.freedesktop.org/drm/intel/-/issues/4920



Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22049 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_flink_basic@bad-flink:
>     - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4] ([i915#4547])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11115/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
> 
>   * igt@runner@aborted:
>     - fi-skl-6600u:       NOTRUN -> [FAIL][5] ([i915#2722] / [i915#4312])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/fi-skl-6600u/igt@runner@aborted.html
>     - fi-glk-j4005:       NOTRUN -> [FAIL][6] ([i915#2722] / [i915#4312] / [k.org#202321])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/fi-glk-j4005/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gtt:
>     - fi-bdw-5557u:       [DMESG-FAIL][7] -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11115/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
>   [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11115 -> Patchwork_22049
> 
>   CI-20190529: 20190529
>   CI_DRM_11115: 4e12213687264ffccb45d72fe638f94d3ca666bd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6329: 38f656fdd61119105ecfa2c4dac157cd7dcad204 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22049: 3bb57af567ca7c35813b4f945576dbf573308408 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 3bb57af567ca drm/i915/dg2: Add Wa_18018781329
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22049/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
