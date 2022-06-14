Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6115C54BB18
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 22:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FEB10E82D;
	Tue, 14 Jun 2022 20:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F0310E4EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 20:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655237224; x=1686773224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=484CBodc69UVFTHopXg71rIG/tmZD1koo8B+A3AEN34=;
 b=lhS5ZcCebYIHV8Efr4X6jmor4aOuIgeajImYT6kXP4PhPVL9ertm5pFq
 tqID48Frjy5Ee98+t0Te7W4YmJMaLpiTm7b8K4m4gjQyNZV48h+HL4lrC
 F+nBrbuB9+lSW+Yvhvi3p7OXSlmhsrZVXTB/GPsApqcS8fQvHBIaanLWC
 c0dYESv/evwJmYmkVUwkGVApc0NAjbmNGflNimrxukqKxjhGIRBsuK3vg
 0C4X9CuUIr41bZtPqJxv2wycy+dCH/kC/nQ871xZtxXJXGK5sT7dMz79X
 B98F9tcpx5btEKgyBY8/Tf+e42iYbiFw6zHlJhkatHpfGixM6wbe0N5BP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="340392638"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="340392638"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 13:06:44 -0700
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="612398614"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 13:06:44 -0700
Date: Tue, 14 Jun 2022 13:06:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqjqUi9h9GKCJ104@mdroper-desk1.amr.corp.intel.com>
References: <20220610230801.459577-1-matthew.d.roper@intel.com>
 <165523444842.12486.6997406011945732829@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165523444842.12486.6997406011945732829@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Adjust_EU_per_SS_according_to_HAS=5FONE=5FEU=5FPER?=
 =?utf-8?b?X0ZVU0VfQklUKCk=?=
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

On Tue, Jun 14, 2022 at 07:20:48PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: Adjust EU per SS according to HAS_ONE_EU_PER_FUSE_BIT()
> URL   : https://patchwork.freedesktop.org/series/105010/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11753_full -> Patchwork_105010v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105010v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105010v1_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_105010v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@syncobj_basic@bad-create-flags:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl3/igt@syncobj_basic@bad-create-flags.html

The failure logs for the two hits above don't seem to have been uploaded
to the server so I can't see exactly what went wrong.  However this
patch is modifying xehp_sseu_info_init() which only gets executed on
Xe_HP-based platforms, so it would not change the behavior of SNB or
SKL.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105010v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) -> ([PASS][29], [PASS][30], [FAIL][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53]) ([i915#4386])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl2/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl2/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl3/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl3/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl3/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl6/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl6/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl7/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl7/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl8/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl8/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl1/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl1/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl3/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl3/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl3/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl4/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl8/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl8/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl8/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][54], [PASS][55], [PASS][56], [FAIL][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78]) ([i915#4392]) -> ([PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk1/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk1/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk2/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk2/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk2/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk3/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk3/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk3/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk4/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk4/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk4/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk5/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk5/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk6/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk6/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk6/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk7/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk7/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk7/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk8/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk8/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk9/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk9/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk9/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk2/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk2/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk2/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk3/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk3/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk3/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk4/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk4/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk4/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk5/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk5/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk5/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk6/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk6/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk6/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk7/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk7/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk7/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk8/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk8/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk9/boot.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk9/boot.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-tglb:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#5325])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][105] -> [DMESG-WARN][106] ([i915#180]) +6 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-10ms:
>     - shard-tglb:         [PASS][107] -> [TIMEOUT][108] ([i915#3063])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb3/igt@gem_eio@in-flight-10ms.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb3/igt@gem_eio@in-flight-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][109] -> [FAIL][110] ([i915#5784])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [PASS][111] -> [SKIP][112] ([i915#4525])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][113] -> [FAIL][114] ([i915#2842])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][115] ([i915#2842])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][116] -> [FAIL][117] ([i915#2842])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][118] ([i915#2842])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [PASS][119] -> [FAIL][120] ([i915#2842])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb6/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [PASS][121] -> [FAIL][122] ([i915#2842])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#4613])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglb:         NOTRUN -> [SKIP][124] ([i915#4613])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-skl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#4613])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-tglb:         NOTRUN -> [SKIP][126] ([i915#4270])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglb:         NOTRUN -> [SKIP][127] ([fdo#110542])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglb:         NOTRUN -> [SKIP][128] ([i915#3323])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [PASS][129] -> [DMESG-WARN][130] ([i915#180])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/igt@gem_workarounds@suspend-resume.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl1/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglb:         NOTRUN -> [SKIP][131] ([i915#2527] / [i915#2856]) +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglb:         [PASS][132] -> [TIMEOUT][133] ([i915#3953])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][134] -> [FAIL][135] ([i915#454])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][136] ([i915#5286]) +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#111614]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglb:         [PASS][138] -> [FAIL][139] ([i915#3743]) +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][140] ([fdo#111615])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#3886])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271]) +54 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][143] ([i915#6095]) +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][144] ([i915#3689] / [i915#3886])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglb:         NOTRUN -> [SKIP][145] ([i915#3689]) +1 similar issue
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][147] ([fdo#109271]) +68 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][149] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_ccs@pipe-d-bad-rotation-90-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-glk:          NOTRUN -> [SKIP][150] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-audio:
>     - shard-tglb:         NOTRUN -> [SKIP][151] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_chamelium@hdmi-audio.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-apl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][154] ([i915#3359])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][155] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [PASS][156] -> [FAIL][157] ([i915#5072])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-tglb:         NOTRUN -> [SKIP][158] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][159] -> [FAIL][160] ([i915#2346])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-skl:          [PASS][161] -> [FAIL][162] ([i915#2346])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-skl:          NOTRUN -> [SKIP][163] ([fdo#109271] / [i915#533])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][164] ([i915#5287])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
>     - shard-glk:          [PASS][165] -> [FAIL][166] ([i915#2122])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [PASS][167] -> [FAIL][168] ([i915#2122]) +6 similar issues
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][169] -> [DMESG-WARN][170] ([i915#180] / [i915#1982])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglb:         NOTRUN -> [SKIP][171] ([fdo#109280] / [fdo#111825]) +9 similar issues
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>     - shard-kbl:          [PASS][172] -> [FAIL][173] ([i915#1188]) +1 similar issue
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl6/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][174] ([fdo#108145] / [i915#265])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-glk:          NOTRUN -> [FAIL][175] ([fdo#108145] / [i915#265])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-tglb:         NOTRUN -> [SKIP][176] ([i915#3536])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-4:
>     - shard-tglb:         NOTRUN -> [SKIP][177] ([i915#5288]) +1 similar issue
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_plane_multiple@atomic-pipe-d-tiling-4.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
>     - shard-skl:          NOTRUN -> [SKIP][178] ([fdo#109271] / [i915#5776]) +2 similar issues
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
>     - shard-tglb:         NOTRUN -> [SKIP][179] ([i915#5235]) +3 similar issues
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][180] ([fdo#109271]) +49 similar issues
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][181] ([fdo#109271] / [i915#658])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-apl:          NOTRUN -> [SKIP][182] ([fdo#109271] / [i915#658])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][183] ([i915#132] / [i915#3467])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [PASS][184] -> [SKIP][185] ([fdo#109441])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb8/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglb:         NOTRUN -> [SKIP][186] ([fdo#111615] / [i915#5289])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-skl:          NOTRUN -> [SKIP][187] ([fdo#109271] / [i915#2437])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-b-source-rg:
>     - shard-tglb:         NOTRUN -> [SKIP][188] ([i915#2530]) +1 similar issue
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@nouveau_crc@pipe-b-source-rg.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-tglb:         NOTRUN -> [SKIP][189] ([fdo#109289]) +1 similar issue
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [PASS][190] -> [FAIL][191] ([i915#5639])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl6/igt@perf@polling-parameterized.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl7/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_test@i915_nv_sharing:
>     - shard-tglb:         NOTRUN -> [SKIP][192] ([fdo#109291])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@prime_nv_test@i915_nv_sharing.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][193] ([fdo#109271] / [i915#2994])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-glk:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#2994])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk1/igt@sysfs_clients@pidname.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr1:
>     - {shard-rkl}:        [SKIP][195] ([i915#658]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@feature_discovery@psr1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][197] ([i915#2842]) -> [PASS][198] +5 similar issues
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-tglb:         [FAIL][199] ([i915#2842]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_linear_blits@normal:
>     - shard-tglb:         [INCOMPLETE][201] -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb6/igt@gem_linear_blits@normal.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@gem_linear_blits@normal.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - {shard-dg1}:        [DMESG-WARN][203] ([i915#4936]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][205] ([i915#5566] / [i915#716]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/igt@gen9_exec_parse@allowed-single.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@basic-rte:
>     - shard-tglb:         [INCOMPLETE][207] ([i915#2411]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb6/igt@i915_pm_rpm@basic-rte.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb5/igt@i915_pm_rpm@basic-rte.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         [FAIL][209] ([i915#3743]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_color@pipe-a-ctm-blue-to-red:
>     - {shard-rkl}:        [SKIP][211] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][212] +1 similar issue
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_color@pipe-a-ctm-blue-to-red.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_color@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement:
>     - {shard-rkl}:        [SKIP][213] ([fdo#112022] / [i915#4070]) -> [PASS][214] +6 similar issues
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-64x21-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x85-sliding:
>     - {shard-dg1}:        [SKIP][215] ([i915#1836]) -> [PASS][216] +5 similar issues
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-16/igt@kms_cursor_crc@pipe-d-cursor-256x85-sliding.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@kms_cursor_crc@pipe-d-cursor-256x85-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge:
>     - {shard-rkl}:        [SKIP][217] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][218] +3 similar issues
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64x64-left-edge.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
>     - {shard-dg1}:        [FAIL][219] ([i915#5972]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>     - shard-iclb:         [FAIL][221] ([i915#5072]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb4/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
>     - {shard-rkl}:        [SKIP][223] ([fdo#111825] / [i915#4070]) -> [PASS][224] +3 similar issues
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][225] ([i915#2346]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][227] ([i915#2346] / [i915#533]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [FAIL][229] ([i915#2346]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
>     - {shard-rkl}:        [SKIP][231] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][232] +4 similar issues
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [INCOMPLETE][233] ([i915#180] / [i915#1982]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@busy-flip@d-hdmi-a1:
>     - {shard-dg1}:        [FAIL][235] -> [PASS][236] +3 similar issues
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-16/igt@kms_flip@busy-flip@d-hdmi-a1.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@kms_flip@busy-flip@d-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][237] ([i915#79]) -> [PASS][238]
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [FAIL][239] ([i915#2122]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [SKIP][241] ([i915#3701]) -> [PASS][242]
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
>     - {shard-dg1}:        [SKIP][243] ([i915#5721]) -> [PASS][244]
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][245] ([i915#1849] / [i915#4098]) -> [PASS][246] +14 similar issues
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-skl:          [DMESG-WARN][247] ([i915#1982]) -> [PASS][248] +1 similar issue
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][249] ([i915#180]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl2/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_invalid_mode@zero-clock:
>     - {shard-dg1}:        [WARN][251] ([i915#5971]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-16/igt@kms_invalid_mode@zero-clock.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@kms_invalid_mode@zero-clock.html
> 
>   * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][253] ([i915#3558]) -> [PASS][254] +1 similar issue
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - {shard-rkl}:        [SKIP][255] ([i915#1849]) -> [PASS][256] +1 similar issue
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_properties@crtc-properties-legacy.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_psr@cursor_blt:
>     - {shard-rkl}:        [SKIP][257] ([i915#1072]) -> [PASS][258] +3 similar issues
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_psr@cursor_blt.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][259] ([fdo#109441]) -> [PASS][260] +1 similar issue
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb6/igt@kms_psr@psr2_suspend.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [SKIP][261] ([i915#5519]) -> [PASS][262]
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_universal_plane@universal-plane-gen9-features-pipe-b:
>     - {shard-rkl}:        [SKIP][263] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][264]
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-gen9-features-pipe-b.html
> 
>   * igt@kms_vblank@pipe-a-query-forked-hang:
>     - {shard-dg1}:        [FAIL][265] ([i915#4241]) -> [PASS][266] +3 similar issues
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-dg1-16/igt@kms_vblank@pipe-a-query-forked-hang.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-dg1-16/igt@kms_vblank@pipe-a-query-forked-hang.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][267] ([i915#1845] / [i915#4098]) -> [PASS][268] +20 similar issues
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][269] ([i915#4939]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - shard-apl:          [FAIL][271] ([i915#1755]) -> [PASS][272]
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-apl3/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [TIMEOUT][273] ([i915#3063]) -> [FAIL][274] ([i915#5784])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb1/igt@gem_eio@kms.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][275] ([i915#4525]) -> [FAIL][276] ([i915#6117])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [SKIP][277] ([i915#2848]) -> [FAIL][278] ([i915#2842])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][279] ([i915#2842]) -> [SKIP][280] ([i915#2848]) +4 similar issues
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][281] ([i915#2920]) -> [SKIP][282] ([fdo#111068] / [i915#658])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          [FAIL][283] ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][284], [FAIL][285], [FAIL][286], [FAIL][287], [FAIL][288], [FAIL][289], [FAIL][290]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11753/shard-kbl6/igt@runner@aborted.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl7/igt@runner@aborted.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@runner@aborted.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@runner@aborted.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@runner@aborted.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl7/igt@runner@aborted.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl7/igt@runner@aborted.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3953]: https://gitlab.freedesktop.org/drm/intel/issues/3953
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4241]: https://gitlab.freedesktop.org/drm/intel/issues/4241
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5357]: https://gitlab.freedesktop.org/drm/intel/issues/5357
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5721]: https://gitlab.freedesktop.org/drm/intel/issues/5721
>   [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5971]: https://gitlab.freedesktop.org/drm/intel/issues/5971
>   [i915#5972]: https://gitlab.freedesktop.org/drm/intel/issues/5972
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11753 -> Patchwork_105010v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11753: cb89eb64792fd1a78c5ffc473f7e208b88e62fad @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6518: 0189ca288f7188e60f5eda356b190040bf8ec704 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105010v1: cb89eb64792fd1a78c5ffc473f7e208b88e62fad @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105010v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
