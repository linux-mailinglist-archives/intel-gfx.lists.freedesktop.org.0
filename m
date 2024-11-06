Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5844F9BF339
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E76B10E72E;
	Wed,  6 Nov 2024 16:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YUxzaQJK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E540410E729;
 Wed,  6 Nov 2024 16:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730910551; x=1762446551;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=MKUZnYDkCk/KBnvS4OnF2a00h8RzTW36v4fVxv6RzVo=;
 b=YUxzaQJKPXs5qxMulUY5bsI0DBaKEvxaKPD2Kj9DdTruPsKn1/gq8zsW
 zRFI1pNv8u4FAIw8gMJahyoTb28j2EhKJHtylFYa7O57m+zKvNu6Y+/vK
 X014RIq9rKE/svuWuarAojjDa2M0w3wLmLzQCo2zs/7dUl9Pg7WbzZffq
 IGeeEHTiDo2DahipJZetjLGlzvd2Cmy3WkEqs6TjWKWsAV5ytnUQVMJQC
 hSug0U/UOOmrmdNMNBrNFueOOFLej3fuNJo/WdVJioUt4ohe+lf9JAFPD
 rJpnJ2h3EylY0gHUJZrMXuDHdC24Dj6mKzBsuEhU23JJLWoJdiiG6oAHC Q==;
X-CSE-ConnectionGUID: egcbihI4TfSfau15GnfvFw==
X-CSE-MsgGUID: Nd/CyvmxR8mUpBtYlPzkNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42096419"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="42096419"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:29:09 -0800
X-CSE-ConnectionGUID: VxRQKer3SPWcusicJznGgA==
X-CSE-MsgGUID: QfX7snNCQVe0UjUlOG8nOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84758005"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:29:07 -0800
Date: Wed, 6 Nov 2024 18:29:40 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luciano Coelho <luciano.coelho@intel.com>,
 I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/dp_mst: Fix DDI function/DP2 config programming
Message-ID: <ZyuZdAog97T8mTpA@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <173073746446.1392002.3708636491658127947@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173073746446.1392002.3708636491658127947@2413ebb6fbb6>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 04, 2024 at 04:24:24PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/dp_mst: Fix DDI function/DP2 config programming
> URL   : https://patchwork.freedesktop.org/series/140732/
> State : failure

Thanks for the review, patchset is pushed to drm-intel-next.

The failures are unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15614_full -> Patchwork_140732v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140732v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140732v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 9)
> ------------------------------
> 
>   Missing    (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140732v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@torture-bo:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][1] +2 other tests incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@kms_cursor_legacy@torture-bo.html

The above host and the ones below have only an HDMI output connected, so
the DP only changes in the patchset should not affect them -> the
failures are unrelated.

>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-19/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-4.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-glk:          [INCOMPLETE][4] ([i915#1982]) -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/igt@kms_flip@2x-blocking-wf_vblank.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk6/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_15614_full and Patchwork_140732v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@gem_fenced_exec_thrash:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140732v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) -> ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk7/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk7/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk5/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk5/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk5/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk5/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk5/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk4/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk4/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk4/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk4/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk4/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk2/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk2/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk2/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk2/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk2/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk2/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk7/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk7/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk8/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk8/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk9/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk9/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk9/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk1/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk1/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk1/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk2/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk2/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk2/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk3/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk3/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk3/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk5/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk5/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk5/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk6/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk6/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk7/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#8411]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#8411])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#6230])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#11078])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#11078])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#8414])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#8414]) +8 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@drm_fdinfo@busy-idle-check-all@vcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@ccs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#8414]) +6 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@drm_fdinfo@most-busy-idle-check-all@ccs0.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#7697])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#9323])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#9323])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [PASS][88] -> [INCOMPLETE][89] ([i915#7297]) +1 other test incomplete
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-8/igt@gem_ccs@suspend-resume.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-10/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#7697])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#9310])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#6335])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#8562])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-glk:          ([PASS][94], [PASS][95]) -> [FAIL][96] ([i915#12031])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk8/igt@gem_ctx_engines@invalid-engines.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-dg2:          NOTRUN -> [FAIL][97] ([i915#11980] / [i915#12580])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-persistence:
>     - shard-snb:          NOTRUN -> [SKIP][98] ([i915#1099]) +1 other test skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#280])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#280])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4036])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#4525]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#6334]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][104] ([i915#11965] / [i915#12558]) +2 other tests fail
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_capture@capture@vecs1-smem:
>     - shard-dg2:          NOTRUN -> [FAIL][105] ([i915#11965]) +1 other test fail
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_exec_capture@capture@vecs1-smem.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-tglu:         NOTRUN -> [FAIL][106] ([i915#2842]) +1 other test fail
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [PASS][107] -> [FAIL][108] ([i915#2842]) +1 other test fail
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3539] / [i915#4852])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#3281]) +5 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3281]) +8 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#3281]) +4 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc.html
> 
>   * igt@gem_exec_schedule@pi-common@vcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][113] ([i915#12296]) +4 other tests fail
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@gem_exec_schedule@pi-common@vcs0.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][114] ([i915#12296]) +5 other tests fail
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_exec_schedule@pi-common@vcs0.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4537] / [i915#4812])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fenced_exec_thrash@too-many-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4860])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@gem_fenced_exec_thrash@too-many-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#4613])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#4613]) +1 other test skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#4613]) +3 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-glk:          NOTRUN -> [SKIP][120] ([i915#4613])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#4613]) +3 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_mmap_gtt@basic-read-write:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4077]) +2 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_mmap_gtt@basic-read-write.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#4077]) +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4083]) +2 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#4083])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#4083]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-2/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3282]) +4 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#4270])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4270])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_pxp@fail-invalid-protected-context.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#4270])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#4270]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3282])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4079])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-17/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4079]) +1 other test skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#4079])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#3297])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-7/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#3297]) +2 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3297]) +2 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3297])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3281] / [i915#3297])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#2856])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#2527] / [i915#2856])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#2527]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][145] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][146] -> [ABORT][147] ([i915#9820])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [PASS][148] -> [ABORT][149] ([i915#9820])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#8399])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][151] -> [FAIL][152] ([i915#12548] / [i915#3591])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#4387])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#4387])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][155] ([i915#9311]) +1 other test dmesg-warn
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-3/igt@i915_selftest@mock@memory_region.html
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][156] ([i915#9311]) +1 other test dmesg-warn
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-13/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#9531])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#1769] / [i915#3555])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#5286]) +5 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#5286]) +4 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#5286]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#4538] / [i915#5286])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][163] +52 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][164] +4 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3638]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][167] +23 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-snb:          NOTRUN -> [SKIP][168] +53 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#6095]) +4 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-a-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#6095]) +73 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#6095]) +19 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#12313])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#10307] / [i915#6095]) +153 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#10307] / [i915#10434] / [i915#6095])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#6095]) +116 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#12313])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#12313]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#12313]) +1 other test skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#6095]) +34 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#4087]) +3 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#7828])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#7828]) +5 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#7828]) +4 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#7828]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#7828]) +9 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#9979])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#9424]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_content_protection@content-type-change.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][188] ([i915#6944] / [i915#9424]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#3116] / [i915#3299])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#3116])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9424])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#8063] / [i915#9433])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#11453] / [i915#3359])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3555]) +2 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#11453] / [i915#3359])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#11453] / [i915#3359])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#4103]) +2 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#4103])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#9809]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          ([PASS][201], [PASS][202]) -> [FAIL][203] ([i915#2346])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#8812])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#3840]) +1 other test skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#3840])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3555] / [i915#3840])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#3840] / [i915#9053])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#3555] / [i915#3840] / [i915#9053])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3955])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#3469])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#2065] / [i915#4854])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#1839])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#1839])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#658])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#3637]) +1 other test skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#5354]) +13 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#3637]) +2 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#9934]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][220] -> [FAIL][221] ([i915#2122]) +1 other test fail
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-snb6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][222] -> [FAIL][223] ([i915#2122]) +1 other test fail
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk1/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#3637]) +1 other test skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-dg1:          [PASS][225] -> [FAIL][226] ([i915#12517] / [i915#2122])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4:
>     - shard-dg1:          [PASS][227] -> [FAIL][228] ([i915#2122]) +1 other test fail
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-16/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-15/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][229] ([i915#2122]) +2 other tests fail
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][230] ([i915#4839] / [i915#6113])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible.html
>     - shard-mtlp:         NOTRUN -> [INCOMPLETE][231] ([i915#6113])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][232] ([i915#4839] / [i915#6113]) +1 other test incomplete
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html
>     - shard-glk:          NOTRUN -> [INCOMPLETE][233] ([i915#4839])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][234] ([i915#6113])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-17/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
>     - shard-mtlp:         NOTRUN -> [INCOMPLETE][235] ([i915#10056] / [i915#6113])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-4/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#2672] / [i915#3555])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#2587] / [i915#2672])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#2672]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#2672] / [i915#3555] / [i915#5190])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-glk:          NOTRUN -> [SKIP][241] +22 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#2587] / [i915#2672] / [i915#3555])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#2672]) +4 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#2672] / [i915#3555]) +1 other test skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          [PASS][249] -> [FAIL][250] ([i915#6880])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-tglu-1:       NOTRUN -> [SKIP][251] +60 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [FAIL][252] ([i915#6880])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#5439])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][254] ([i915#5439]) +1 other test skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#10055])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#3458]) +1 other test skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#8708]) +1 other test skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#1825]) +4 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#8708]) +6 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#1825]) +30 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][261] ([i915#8708]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#3023]) +21 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#3458]) +7 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#3555] / [i915#8228])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [PASS][265] -> [SKIP][266] ([i915#3555] / [i915#8228])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-10/igt@kms_hdr@static-toggle.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#3555] / [i915#8228])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][268] ([i915#3555] / [i915#8228]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#12394])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#12339])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#12339])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#12339])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#6301])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-dg1:          NOTRUN -> [SKIP][274] +4 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][275] ([i915#3555] / [i915#8806])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][276] ([i915#12247]) +4 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
>     - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#12247]) +4 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu-1:       NOTRUN -> [SKIP][278] ([i915#3555]) +3 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#12247]) +6 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][280] ([i915#12247]) +12 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#12247] / [i915#6953])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:
>     - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#12247] / [i915#12504]) +3 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
>     - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#12247])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#12247] / [i915#6953] / [i915#9423])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][285] ([i915#12247] / [i915#6953])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#12247]) +3 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#12247] / [i915#3555])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#5354]) +1 other test skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#3828])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#9685]) +1 other test skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#9340])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#8430])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][293] -> [SKIP][294] ([i915#9519])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [PASS][295] -> [FAIL][296] ([i915#8717])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-8/igt@kms_pm_rpm@i2c.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#9519])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#9519])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][299] -> [SKIP][300] ([i915#9519]) +3 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#6524] / [i915#6805])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#6524])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][303] ([i915#11520])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
>     - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#12316])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][305] ([i915#11520])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][306] ([i915#11520]) +4 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#11520]) +5 other tests skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#11520]) +5 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][309] ([i915#11520]) +1 other test skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu-1:       NOTRUN -> [SKIP][310] ([i915#9683])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][311] ([i915#9732]) +13 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-cursor-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_psr@fbc-psr-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-blt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#9688]) +3 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html
> 
>   * igt@kms_psr@pr-primary-render:
>     - shard-dg2:          NOTRUN -> [SKIP][314] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_psr@pr-primary-render.html
> 
>   * igt@kms_psr@pr-sprite-plane-move:
>     - shard-tglu:         NOTRUN -> [SKIP][315] ([i915#9732]) +10 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_psr@pr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr-sprite-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][316] ([i915#4077] / [i915#9688]) +1 other test skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@kms_psr@psr-sprite-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][318] ([i915#5289])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#11131] / [i915#4235])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][320] ([i915#5289])
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#5289]) +1 other test skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#3555]) +1 other test skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#3555])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][324] ([i915#3555]) +5 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][325] -> [FAIL][326] ([IGT#2])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-10/igt@kms_sysfs_edid_timing.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][327] ([i915#12276])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-19/igt@kms_vblank@ts-continuation-suspend.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#9906])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#2437])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-11/igt@kms_writeback@writeback-check-output.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][330] ([i915#2437])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#2437] / [i915#9412])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][332] ([i915#2437])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-mtlp:         NOTRUN -> [SKIP][333] +5 other tests skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-rkl:          NOTRUN -> [SKIP][334] ([i915#8850])
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@most-busy-check-all:
>     - shard-rkl:          [PASS][335] -> [FAIL][336] ([i915#4349]) +1 other test fail
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-4/igt@perf_pmu@most-busy-check-all.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-3/igt@perf_pmu@most-busy-check-all.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#3708]) +1 other test skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#9917])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#9917])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-tglu:         NOTRUN -> [FAIL][340] ([i915#12564] / [i915#9781])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-6/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-mtlp:         [FAIL][341] ([i915#12031]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-mtlp-4/igt@gem_ctx_engines@invalid-engines.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg1:          [ABORT][343] ([i915#7975] / [i915#8213]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-14/igt@gem_eio@hibernate.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-18/igt@gem_eio@hibernate.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [ABORT][345] ([i915#9820]) -> [PASS][346]
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][347] ([i915#10131] / [i915#10887]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [FAIL][349] ([i915#3591]) -> [PASS][350]
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-snb:          [INCOMPLETE][351] ([i915#4817]) -> [PASS][352]
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-snb4/igt@i915_suspend@forcewake.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_color@legacy-gamma-reset:
>     - shard-dg2:          [SKIP][353] ([i915#12655]) -> [PASS][354]
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_color@legacy-gamma-reset.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          ([PASS][355], [FAIL][356]) ([i915#2346]) -> [PASS][357]
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
>     - shard-tglu:         [FAIL][358] ([i915#2122]) -> [PASS][359]
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
>     - shard-glk:          [FAIL][360] ([i915#2122]) -> [PASS][361] +2 other tests pass
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-dg2:          [FAIL][362] ([i915#79]) -> [PASS][363]
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a4:
>     - shard-dg1:          [FAIL][364] ([i915#79]) -> [PASS][365] +1 other test pass
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-16/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a4.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-14/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-tglu:         [INCOMPLETE][366] ([i915#6113]) -> [PASS][367]
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-8/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-7/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
>     - shard-snb:          [INCOMPLETE][368] ([i915#4839]) -> [PASS][369] +1 other test pass
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
>     - shard-glk:          ([PASS][370], [INCOMPLETE][371]) ([i915#4839]) -> [PASS][372]
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][373] ([i915#4839]) -> [PASS][374]
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
>     - shard-tglu:         [INCOMPLETE][375] -> [PASS][376]
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-8/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-7/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
>     - shard-dg2:          [SKIP][377] ([i915#3555]) -> [PASS][378] +2 other tests pass
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [SKIP][379] ([i915#5354]) -> [PASS][380] +3 other tests pass
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          [SKIP][381] ([i915#3555] / [i915#8228]) -> [PASS][382]
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-11/igt@kms_hdr@bpc-switch.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-10/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-dg2:          [SKIP][383] ([i915#9197]) -> [PASS][384] +16 other tests pass
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane@planar-pixel-format-settings:
>     - shard-dg2:          [SKIP][385] ([i915#9581]) -> [PASS][386]
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane@planar-pixel-format-settings.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>     - shard-dg2:          [SKIP][387] ([i915#7294]) -> [PASS][388]
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
>     - shard-dg2:          [SKIP][389] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][390]
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
>     - shard-dg2:          [SKIP][391] ([i915#8152]) -> [PASS][392] +1 other test pass
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
>     - shard-dg2:          [SKIP][393] ([i915#8152] / [i915#9423]) -> [PASS][394]
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
>     - shard-dg2:          [SKIP][395] ([i915#12247]) -> [PASS][396] +8 other tests pass
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>     - shard-dg2:          [SKIP][397] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][398]
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
>     - shard-dg2:          [SKIP][399] ([i915#12247] / [i915#8152]) -> [PASS][400]
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][401] ([i915#9295]) -> [PASS][402]
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-3/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-dg2:          [FAIL][403] ([i915#12561] / [i915#7330]) -> [PASS][404]
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_pm_dc@dc9-dpms.html
>     - shard-tglu:         [SKIP][405] ([i915#4281]) -> [PASS][406]
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][407] ([i915#9519]) -> [PASS][408] +1 other test pass
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-dg2:          [SKIP][409] ([i915#11521]) -> [PASS][410]
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_vblank@ts-continuation-suspend:
>     - shard-snb:          [INCOMPLETE][411] ([i915#12276]) -> [PASS][412] +1 other test pass
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-snb5/igt@kms_vblank@ts-continuation-suspend.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb1/igt@kms_vblank@ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_busy@close-race:
>     - shard-dg2:          [FAIL][413] ([i915#12297] / [i915#12577]) -> [FAIL][414] ([i915#12296] / [i915#12577])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-3/igt@gem_busy@close-race.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-2/igt@gem_busy@close-race.html
>     - shard-rkl:          [FAIL][415] ([i915#12297] / [i915#12577]) -> [FAIL][416] ([i915#12296] / [i915#12577])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-2/igt@gem_busy@close-race.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-7/igt@gem_busy@close-race.html
>     - shard-snb:          [FAIL][417] ([i915#12297] / [i915#12577]) -> [FAIL][418] ([i915#12296] / [i915#12577])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-snb7/igt@gem_busy@close-race.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-snb6/igt@gem_busy@close-race.html
>     - shard-dg1:          [FAIL][419] ([i915#12297] / [i915#12577]) -> [FAIL][420] ([i915#12296] / [i915#12577])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-18/igt@gem_busy@close-race.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-16/igt@gem_busy@close-race.html
>     - shard-tglu:         [FAIL][421] ([i915#12297] / [i915#12577]) -> [FAIL][422] ([i915#12296] / [i915#12577])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-tglu-9/igt@gem_busy@close-race.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-tglu-8/igt@gem_busy@close-race.html
>     - shard-mtlp:         [FAIL][423] ([i915#12297] / [i915#12577]) -> [FAIL][424] ([i915#12296] / [i915#12577])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-mtlp-7/igt@gem_busy@close-race.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-mtlp-3/igt@gem_busy@close-race.html
>     - shard-glk:          ([FAIL][425], [FAIL][426]) ([i915#12297] / [i915#12526] / [i915#12577]) -> [FAIL][427] ([i915#12296] / [i915#12526] / [i915#12577])
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk6/igt@gem_busy@close-race.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-glk3/igt@gem_busy@close-race.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-glk5/igt@gem_busy@close-race.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg1:          [SKIP][428] ([i915#4212] / [i915#4423]) -> [SKIP][429] ([i915#4212])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-18/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-19/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          [SKIP][430] ([i915#9197]) -> [SKIP][431] ([i915#9531])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg2:          [SKIP][432] ([i915#9197]) -> [SKIP][433] +1 other test skip
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg2:          [SKIP][434] ([i915#5190] / [i915#9197]) -> [SKIP][435] ([i915#4538] / [i915#5190]) +1 other test skip
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>     - shard-dg2:          [SKIP][436] ([i915#9197]) -> [SKIP][437] ([i915#10307] / [i915#6095]) +5 other tests skip
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          [SKIP][438] ([i915#9197]) -> [SKIP][439] ([i915#11616] / [i915#7213])
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [SKIP][440] ([i915#9197]) -> [SKIP][441] ([i915#7118] / [i915#9424])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_content_protection@legacy.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          [SKIP][442] ([i915#9197]) -> [SKIP][443] ([i915#3555]) +2 other tests skip
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-dg2:          [SKIP][444] ([i915#9197]) -> [SKIP][445] ([i915#11453] / [i915#3359])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-dg2:          [SKIP][446] ([i915#9197]) -> [SKIP][447] ([i915#5354]) +1 other test skip
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-dg2:          [SKIP][448] ([i915#3555] / [i915#5190]) -> [SKIP][449] ([i915#2672] / [i915#3555] / [i915#5190])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
>     - shard-dg2:          [SKIP][450] ([i915#5354]) -> [SKIP][451] ([i915#8708]) +6 other tests skip
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg1:          [SKIP][452] ([i915#3458] / [i915#4423]) -> [SKIP][453] ([i915#3458])
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [SKIP][454] ([i915#10433] / [i915#3458]) -> [SKIP][455] ([i915#3458])
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          [SKIP][456] ([i915#3458]) -> [SKIP][457] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg1:          [SKIP][458] ([i915#3458]) -> [SKIP][459] ([i915#3458] / [i915#4423])
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-dg2:          [SKIP][460] ([i915#5354]) -> [SKIP][461] ([i915#3458]) +6 other tests skip
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          [SKIP][462] -> [SKIP][463] ([i915#1187])
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-19/igt@kms_hdr@brightness-with-hdr.html
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][464] ([i915#4070] / [i915#4816]) -> [SKIP][465] ([i915#4816])
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          [SKIP][466] ([i915#9197]) -> [SKIP][467] ([i915#8821])
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg2-2/igt@kms_plane_lowres@tiling-y.html
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg2-6/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][468] ([i915#3361]) -> [SKIP][469] ([i915#4281])
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][470] ([i915#9340]) -> [SKIP][471] ([i915#3828])
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_psr@pr-dpms:
>     - shard-dg1:          [SKIP][472] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][473] ([i915#1072] / [i915#9732])
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/shard-dg1-14/igt@kms_psr@pr-dpms.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/shard-dg1-14/igt@
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/index.html
