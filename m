Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D1A4E44E3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 18:19:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE73410E26C;
	Tue, 22 Mar 2022 17:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79A910E0FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 17:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647969539; x=1679505539;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZmitUkdkQdErpN0/fhhfzPX0M5GWbr/G+pqdmcECPkQ=;
 b=c2nNazlDHvcwki1trFVcgSdkVqO5AVai+6dxfWOeZqbOwjRhJ7xjFZw3
 8QFZsCyd8HuR51e9vITvuET0/+H4QPwP84RarQH0GMxFvnF2XK173fJeQ
 eQKZWz5bau4xi+14rWK1JH/7R/GP0IZftyJq9fNdrHZj9xsII8NVBBSqY
 PbxdV8CrY5rA3iDrlfsfZw7E9tcTTmwYeNX6KVRll4jhHgTYpT//Oq5RM
 5EuyY1iK3r9IN0jBxVvGXVo96ElI+4Yz5R1AEqFnQNEkKSWZvVqbJ5oVX
 eXhyT/gUIU2XZaD1imNYq3HJ0hQgbjVk2Hzbvnw9Le5ufg9KgqfPTHG/i w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="344312129"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="344312129"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 10:15:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="543782931"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 10:15:43 -0700
Date: Tue, 22 Mar 2022 10:15:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjoEPkhqegC7fyE8@mdroper-desk1.amr.corp.intel.com>
References: <20220321223819.72833-1-michael.cheng@intel.com>
 <164795818326.20008.17253498566817096295@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164795818326.20008.17253498566817096295@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIFVz?=
 =?utf-8?q?e_drm=5Fclflush*_instead_of_clflush?=
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
Cc: Michael Cheng <michael.cheng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 22, 2022 at 02:09:43PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Use drm_clflush* instead of clflush
> URL   : https://patchwork.freedesktop.org/series/101611/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11395_full -> Patchwork_22635_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Series applied to drm-intel-gt-next.  Thanks for the patches.


Matt

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
>   Here are the unknown changes that may have been introduced in Patchwork_22635_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@runner@aborted:
>     - {shard-rkl}:        ([FAIL][1], [FAIL][2], [FAIL][3]) ([i915#2029] / [i915#3002] / [i915#4312]) -> ([FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7]) ([i915#3002] / [i915#4312])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-rkl-1/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-2/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-5/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-1/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-rkl-2/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22635_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [FAIL][28], [PASS][29], [PASS][30], [PASS][31]) ([i915#4392]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk9/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk8/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk5/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk3/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk2/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-glk1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk2/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk3/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk5/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk8/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#1373] / [i915#4793])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#5099])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb6/igt@gem_ctx_persistence@smoketest.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb5/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         [PASS][61] -> [TIMEOUT][62] ([i915#3063])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb8/igt@gem_eio@in-flight-contexts-immediate.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb3/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-skl:          [PASS][63] -> [INCOMPLETE][64] ([i915#4843])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl8/igt@gem_eio@in-flight-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#232])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-apl:          [PASS][67] -> [SKIP][68] ([fdo#109271])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][69] ([i915#2842])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][70] -> [FAIL][71] ([i915#2842])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl3/igt@gem_exec_fair@basic-none@vecs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][72] ([i915#2842]) +2 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][73] -> [SKIP][74] ([i915#2190])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#4613]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613]) +5 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][78] ([i915#2658]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#4270])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3323])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][81] ([i915#4991])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180]) +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-apl7/igt@gem_workarounds@suspend-resume-context.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2856])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][86] -> [FAIL][87] ([i915#454])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#4387])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#1769])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#5286]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3777])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][93] ([i915#3743]) +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3777]) +4 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#3886]) +14 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [i915#3886])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271]) +52 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-after-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_chamelium@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@vga-hpd-enable-disable-mode:
>     - shard-glk:          NOTRUN -> [SKIP][101] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_color@pipe-c-deep-color:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109278] / [i915#3555])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_color@pipe-c-deep-color.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
>     - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl1/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-d-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_color_chamelium@pipe-d-degamma.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109300] / [fdo#111066])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109278] / [fdo#109279])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [PASS][109] -> [INCOMPLETE][110] ([i915#3614])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][111] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-iclb:         NOTRUN -> [FAIL][112] ([i915#2346])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-iclb:         [PASS][113] -> [FAIL][114] ([i915#2346])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#5287])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-4tiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
>     - shard-skl:          [PASS][116] -> [FAIL][117] ([i915#79])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-kbl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-skl:          [PASS][120] -> [INCOMPLETE][121] ([i915#4839] / [i915#636])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl1/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl10/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][122] ([i915#2122])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [PASS][123] -> [FAIL][124] ([i915#2122])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][125] -> [SKIP][126] ([i915#3701]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>     - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109280]) +15 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271]) +26 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>     - shard-skl:          [PASS][129] -> [FAIL][130] ([i915#1188]) +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][131] ([i915#3555])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#533])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#533]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#533]) +1 similar issue
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109278]) +23 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][136] ([fdo#108145] / [i915#265]) +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][137] ([fdo#108145] / [i915#265]) +4 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][138] -> [FAIL][139] ([fdo#108145] / [i915#265])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-glk:          NOTRUN -> [FAIL][140] ([fdo#108145] / [i915#265])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min:
>     - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271]) +4 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-kbl7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-y:
>     - shard-iclb:         NOTRUN -> [SKIP][142] ([i915#3536]) +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-y.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271]) +295 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#658])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271] / [i915#658]) +1 similar issue
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         NOTRUN -> [SKIP][146] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         NOTRUN -> [SKIP][147] ([fdo#109441]) +1 similar issue
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][148] -> [SKIP][149] ([fdo#109441]) +1 similar issue
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][150] ([i915#2828])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl7/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-glk:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#2437])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-glk6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][153] ([i915#2530]) +1 similar issue
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - shard-iclb:         NOTRUN -> [SKIP][154] ([fdo#109289])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb7/igt@perf@gen12-mi-rpc.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][155] -> [FAIL][156] ([i915#1542])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl10/igt@perf@polling-parameterized.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl9/igt@perf@polling-parameterized.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][157] -> [FAIL][158] ([i915#1722])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11395/shard-skl9/igt@perf@polling-small-buf.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-skl9/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_api@nv_i915_import_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][159] ([fdo#109291]) +2 similar issues
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/shard-iclb6/igt@prime_nv_api@nv_i915_import_twice_check_flink_name.html
> 
>   * igt@syncobj_timeline@invalid-tra
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22635/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
