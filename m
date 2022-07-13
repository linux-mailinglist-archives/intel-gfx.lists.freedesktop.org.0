Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4393573B32
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 18:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36F89BBD9;
	Wed, 13 Jul 2022 16:27:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E649E9BBD0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 16:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657729638; x=1689265638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kTWlAuKL77+LMwzww50KKfCYV+HvXLQ2vOV7MqVUTaw=;
 b=MTyuq7OXubaa/emNCidWIeDOeU/wQ0COJMM7gmFwCpSiixJoSMUiN66s
 cP0OL1w5NNchh1gwmRO+T1bzcbPCLfM0kLHSSYmrD2r5PjRlhgax/+iyf
 K5fU8BOenItXazoIiTssVikUJME8HbwNADXyIUTyjKh7Ho0QPn8XXMOHu
 hTKf5Um7UAy/OJ10nMOBu9DzIUIpNByNcEETbPX7tqA3BOoNMmtsVDPgk
 aRbQu0t8t/4XGSDVtNprloSKv+pKFM1beHuO8ZAnqzVdLHh5dzkCthJwd
 Bvf+8/prwI4804W7Uw+oO93TdJoC9zJFtZqRNuntq9SVqLafXS3D+GJ1J A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="265686334"
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="265686334"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 09:26:02 -0700
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="545916053"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 09:26:01 -0700
Date: Wed, 13 Jul 2022 09:26:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ys7yGFvpy8d0QHfN@mdroper-desk1.amr.corp.intel.com>
References: <20220712220513.3451794-1-matthew.d.roper@intel.com>
 <165768423553.24811.15840423984803228205@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165768423553.24811.15840423984803228205@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Correct_ss_-=3E_steering_calculation_for_pre-Xe=5FHP_p?=
 =?utf-8?q?latforms?=
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

On Wed, Jul 13, 2022 at 03:50:35AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Correct ss -> steering calculation for pre-Xe_HP platforms
> URL   : https://patchwork.freedesktop.org/series/106269/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11877_full -> Patchwork_106269v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_106269v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_106269v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_106269v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@i915_selftest@live@hangcheck.html

Random incomplete (logs cut off abruptly with no errors reported).  Does
not appear to be related to this patch.

Patch applied to drm-intel-gt-next.  Thanks Lucas for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@drm_buddy@all:
>     - {shard-dg1}:        NOTRUN -> [SKIP][2] +4 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-15/igt@drm_buddy@all.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-16/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_106269v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [FAIL][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44]) ([i915#5032])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl6/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl2/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl2/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl10/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl10/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl10/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl7/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl6/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl5/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl5/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl4/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl1/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl1/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl1/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl10/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl10/boot.html
>     - shard-glk:          ([PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69]) -> ([PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [FAIL][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94]) ([i915#4392])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk1/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk9/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk9/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk9/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk9/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk8/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk8/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk8/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk8/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk6/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk6/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk6/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk5/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk5/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk5/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk3/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk3/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk3/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk2/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk2/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk2/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk1/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk1/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk2/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk3/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk3/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk3/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk6/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk6/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk6/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk6/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk7/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk7/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk8/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk9/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk8/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk9/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk9/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk1/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk8/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk1/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk1/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk1/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk2/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk2/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - {shard-dg1}:        ([PASS][95], [FAIL][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103]) -> ([PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-16/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-16/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-16/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-15/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-15/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-15/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-13/boot.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-13/boot.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-dg1-13/boot.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-13/boot.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-13/boot.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-13/boot.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-15/boot.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-15/boot.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-15/boot.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-16/boot.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-16/boot.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-16/boot.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-16/boot.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-17/boot.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-17/boot.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-17/boot.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-17/boot.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-19/boot.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-19/boot.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-dg1-19/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@close-race:
>     - shard-snb:          [PASS][121] -> [INCOMPLETE][122] ([i915#6234])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-snb4/igt@gem_busy@close-race.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-snb4/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [PASS][123] -> [FAIL][124] ([i915#6268])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][125] -> [DMESG-WARN][126] ([i915#180]) +6 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-iclb:         [PASS][127] -> [TIMEOUT][128] ([i915#3070])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb3/igt@gem_eio@in-flight-contexts-10ms.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][129] -> [FAIL][130] ([i915#5784])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb7/igt@gem_eio@kms.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb3/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_endless@dispatch@vcs0:
>     - shard-tglb:         [PASS][131] -> [INCOMPLETE][132] ([i915#3778])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb8/igt@gem_exec_endless@dispatch@vcs0.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@gem_exec_endless@dispatch@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-apl:          [PASS][133] -> [FAIL][134] ([i915#2842]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][135] -> [FAIL][136] ([i915#2842])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [PASS][137] -> [FAIL][138] ([i915#2842])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb6/igt@gem_exec_fair@basic-pace@vecs0.html
>     - shard-kbl:          [PASS][139] -> [FAIL][140] ([i915#2842]) +2 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][141] -> [FAIL][142] ([i915#2849])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2190])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl10/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglb:         NOTRUN -> [SKIP][145] ([i915#4613])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-kbl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl4/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][147] ([i915#2658])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#4270])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-skl:          NOTRUN -> [FAIL][149] ([i915#3318])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [PASS][150] -> [DMESG-WARN][151] ([i915#180]) +3 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl8/igt@gem_workarounds@suspend-resume.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl3/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-tglb:         NOTRUN -> [SKIP][152] ([fdo#109289]) +1 similar issue
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][153] -> [DMESG-WARN][154] ([i915#6201])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][155] -> [FAIL][156] ([i915#454])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][157] -> [SKIP][158] ([i915#4281])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglb:         NOTRUN -> [SKIP][159] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [PASS][160] -> [DMESG-WARN][161] ([i915#5591])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb8/igt@i915_selftest@live@hangcheck.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb8/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][162] ([i915#5286]) +1 similar issue
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][163] ([fdo#111614]) +1 similar issue
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-glk:          [PASS][164] -> [FAIL][165] ([i915#1888] / [i915#5138])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][166] ([i915#3743]) +2 similar issues
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][167] ([fdo#111615]) +1 similar issue
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][168] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][169] ([i915#3689] / [i915#6095])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][170] ([i915#6095]) +1 similar issue
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][171] ([i915#3689]) +2 similar issues
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][172] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-75:
>     - shard-kbl:          NOTRUN -> [SKIP][173] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-tglb:         NOTRUN -> [SKIP][174] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-skl:          NOTRUN -> [SKIP][175] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][176] ([i915#3116] / [i915#3299])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-apl:          NOTRUN -> [TIMEOUT][177] ([i915#1319])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl2/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [PASS][178] -> [FAIL][179] ([i915#2346])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][180] -> [INCOMPLETE][181] ([i915#180] / [i915#4939])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-skl:          NOTRUN -> [SKIP][182] ([fdo#109271]) +214 similar issues
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][183] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][184] -> [FAIL][185] ([i915#2122])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][186] -> [FAIL][187] ([i915#2122]) +2 similar issues
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][188] ([i915#2672])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][189] ([i915#2672]) +5 similar issues
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-glk:          [PASS][190] -> [FAIL][191] ([i915#1888] / [i915#2546])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-apl:          NOTRUN -> [SKIP][192] ([fdo#109271]) +13 similar issues
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move:
>     - shard-tglb:         NOTRUN -> [SKIP][193] ([fdo#109280] / [fdo#111825]) +9 similar issues
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][194] ([fdo#108145] / [i915#265])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][195] ([i915#265])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1:
>     - shard-tglb:         NOTRUN -> [SKIP][196] ([i915#5235]) +3 similar issues
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-skl:          NOTRUN -> [SKIP][197] ([fdo#109271] / [i915#658]) +2 similar issues
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][198] ([fdo#109271] / [i915#658]) +2 similar issues
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][199] ([i915#132] / [i915#3467])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][200] -> [SKIP][201] ([fdo#109441]) +2 similar issues
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-tglb:         NOTRUN -> [SKIP][202] ([i915#3555]) +1 similar issue
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][203] ([fdo#109271] / [i915#2437])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][204] ([i915#2530])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@nouveau_crc@pipe-c-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][205] -> [FAIL][206] ([i915#5639])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl10/igt@perf@polling-parameterized.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl6/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@i915_nv_double_export:
>     - shard-tglb:         NOTRUN -> [SKIP][207] ([fdo#109291]) +1 similar issue
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@prime_nv_api@i915_nv_double_export.html
> 
>   * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
>     - shard-kbl:          NOTRUN -> [SKIP][208] ([fdo#109271]) +72 similar issues
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl4/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-tglb:         NOTRUN -> [SKIP][209] ([i915#2994])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb2/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][210] ([fdo#109271] / [i915#2994])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl4/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-skl:          NOTRUN -> [SKIP][211] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl10/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - {shard-rkl}:        [SKIP][212] ([i915#658]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@feature_discovery@psr2.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - {shard-rkl}:        [SKIP][214] ([i915#6252]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - {shard-rkl}:        [FAIL][216] ([i915#2410]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - {shard-tglu}:       [TIMEOUT][218] ([i915#3063]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglu-5/igt@gem_eio@unwedge-stress.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglu-5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [SKIP][220] ([i915#4525]) -> [PASS][221]
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][222] ([i915#2842]) -> [PASS][223] +1 similar issue
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [FAIL][224] ([i915#2842]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][226] ([i915#2842]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - {shard-rkl}:        [SKIP][228] ([i915#3281]) -> [PASS][229] +6 similar issues
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][230] ([i915#2190]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb8/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - {shard-rkl}:        [SKIP][232] ([i915#3282]) -> [PASS][233] +4 similar issues
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_spin_batch@user-each:
>     - shard-skl:          [FAIL][234] ([i915#2898]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/igt@gem_spin_batch@user-each.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl4/igt@gem_spin_batch@user-each.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - {shard-rkl}:        [SKIP][236] ([i915#2527]) -> [PASS][237] +2 similar issues
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@gen9_exec_parse@bb-start-out.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_backlight@fade:
>     - {shard-rkl}:        [SKIP][238] ([i915#3012]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@i915_pm_backlight@fade.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@i915_pm_backlight@fade.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - {shard-rkl}:        [SKIP][240] ([i915#1397]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@i915_pm_rpm@dpms-lpsp.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - {shard-rkl}:        [SKIP][242] ([fdo#109308]) -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@i915_pm_rpm@system-suspend-modeset.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@i915_selftest@live@evict:
>     - shard-skl:          [INCOMPLETE][244] ([i915#6290]) -> [PASS][245]
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl6/igt@i915_selftest@live@evict.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@i915_selftest@live@evict.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-tglu}:       [DMESG-FAIL][246] ([i915#3987]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglu-4/igt@i915_selftest@live@gt_pm.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglu-2/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          [DMESG-WARN][248] ([i915#180]) -> [PASS][249] +2 similar issues
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-kbl6/igt@i915_suspend@fence-restore-untiled.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][250] ([i915#1845] / [i915#4098]) -> [PASS][251] +18 similar issues
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1:
>     - shard-skl:          [INCOMPLETE][252] ([i915#4939]) -> [PASS][253] +2 similar issues
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-edp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][254] ([i915#2346]) -> [PASS][255]
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
>     - {shard-rkl}:        [SKIP][256] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][257] +4 similar issues
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [FAIL][258] ([i915#2122]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - {shard-rkl}:        [SKIP][260] ([i915#1849] / [i915#4098]) -> [PASS][261] +21 similar issues
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-apl:          [DMESG-WARN][262] ([i915#180]) -> [PASS][263] +1 similar issue
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>     - {shard-rkl}:        [SKIP][264] ([i915#1849] / [i915#3558]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][266] ([i915#5235]) -> [PASS][267] +5 similar issues
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_properties@crtc-properties-atomic:
>     - {shard-rkl}:        [SKIP][268] ([i915#1849]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html
> 
>   * igt@kms_psr@cursor_mmap_gtt:
>     - {shard-rkl}:        [SKIP][270] ([i915#1072]) -> [PASS][271] +1 similar issue
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@kms_psr@cursor_mmap_gtt.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][272] ([fdo#109441]) -> [PASS][273] +1 similar issue
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - {shard-rkl}:        [SKIP][274] ([fdo#109289]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@perf@gen12-mi-rpc.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@perf@gen12-mi-rpc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - {shard-rkl}:        [SKIP][276] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][277]
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-1/igt@prime_vgem@basic-fence-read.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - {shard-rkl}:        [FAIL][278] ([i915#1755]) -> [PASS][279]
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-rkl-5/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-rkl-6/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglb:         [FAIL][280] ([i915#2849]) -> [FAIL][281] ([i915#2842])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-tglb5/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-tglb8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-skl:          [SKIP][282] ([fdo#109271] / [i915#1888]) -> [SKIP][283] ([fdo#109271])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl9/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [INCOMPLETE][284] -> [FAIL][285] ([i915#454])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-skl1/igt@i915_pm_dc@dc6-psr.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-skl2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][286] ([fdo#111068] / [i915#658]) -> [SKIP][287] ([i915#2920])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][288] ([i915#2920]) -> [SKIP][289] ([i915#658])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][290] ([i915#2920]) -> [SKIP][291] ([fdo#111068] / [i915#658]) +1 similar issue
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][292] ([i915#5939]) -> [SKIP][293] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5923]: https://gitlab.freedesktop.org/drm/intel/issues/5923
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#5972]: https://gitlab.freedesktop.org/drm/intel/issues/5972
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6201]: https://gitlab.freedesktop.org/drm/intel/issues/6201
>   [i915#6234]: https://gitlab.freedesktop.org/drm/intel/issues/6234
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6290]: https://gitlab.freedesktop.org/drm/intel/issues/6290
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11877 -> Patchwork_106269v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_106269v1: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106269v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
