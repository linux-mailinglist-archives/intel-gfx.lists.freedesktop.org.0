Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE86535AF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 18:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C6E10E46D;
	Wed, 21 Dec 2022 17:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3E9410E12E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 17:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671645478; x=1703181478;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Ykx1PwPsIc4TYt89oX7yy2y62OxYh80cd8RURBvshI4=;
 b=Eg/erQedJSswM77TsimHGCXLvpfcmesC1Ax9cuK9JHqd2z6+ox3MyrAN
 wH1HOp32Vu7jR7PLZAGgBffpfvnKMLcgoWcGU4fYXPlsDH/7Sc/G0xSE+
 DuP7+vtLdpVS6QPHta+r7oRZ8wACqIFNVZHcqspoDN5s/Ufuh8XciYkac
 UCcRQXXB0xPLAv5kNQpriCrhIP1eI7ckJ/aFV0C6yPPV5aBFccG7Na84P
 7iYW/WLz23n1e9BbAZDkkkQ9CFkl1WAPiQBoLCk5bpdRzXxUYcORNalzw
 9ARK0Fbauh9IQXSJa/5KglRk/E41TKIGOkXisVapsL8DaJeSihJlgPel7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="384281894"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="384281894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 09:57:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="644925180"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="644925180"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 09:57:31 -0800
Date: Wed, 21 Dec 2022 19:57:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y6NJCMweZaBDjKOs@ideak-desk.fi.intel.com>
References: <20221127052232.3942831-1-ankit.k.nautiyal@intel.com>
 <167044264914.14513.9321195484885508242@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167044264914.14513.9321195484885508242@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgQWxp?=
 =?utf-8?q?gn_DDI=5FBUF=5FCTL_Active_timeouts_with_Bspec_updates_=28rev5?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 07, 2022 at 07:50:49PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Align DDI_BUF_CTL Active timeouts with Bspec updates (rev5)
> URL   : https://patchwork.freedesktop.org/series/111373/
> State : success

Thanks for the patches, pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12477_full -> Patchwork_111373v5_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (14 -> 12)
> ------------------------------
> 
>   Missing    (2): pig-skl-6260u pig-glk-j5005 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111373v5_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_ctx_isolation@preservation@vcs1:
>     - {shard-dg1}:        NOTRUN -> [FAIL][1] +4 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-dg1-13/igt@gem_ctx_isolation@preservation@vcs1.html
> 
>   * igt@gem_ctx_shared@q-promotion@vcs0:
>     - {shard-rkl}:        [PASS][2] -> [FAIL][3] +3 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@gem_ctx_shared@q-promotion@vcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@gem_ctx_shared@q-promotion@vcs0.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-suspend:
>     - {shard-tglu-9}:     NOTRUN -> [SKIP][4] +19 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-tglu-9/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111373v5_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-snb:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [FAIL][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54]) ([i915#4338])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb7/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-snb4/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb5/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-snb4/boot.html
>     - shard-skl:          ([PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) -> ([PASS][78], [PASS][79], [PASS][80], [PASS][81], [FAIL][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91]) ([i915#5032])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl5/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl7/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl7/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl5/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl5/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl5/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl4/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl4/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl4/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl3/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl2/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl2/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([FAIL][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115], [PASS][116]) ([i915#4386]) -> ([PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [PASS][127], [PASS][128], [PASS][129], [PASS][130], [PASS][131], [PASS][132], [PASS][133], [PASS][134], [PASS][135], [PASS][136], [PASS][137], [PASS][138], [PASS][139], [PASS][140], [PASS][141])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl2/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/boot.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl6/boot.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl7/boot.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl8/boot.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl8/boot.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl8/boot.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl8/boot.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl8/boot.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl8/boot.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl7/boot.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl7/boot.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl7/boot.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl7/boot.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl6/boot.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl6/boot.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl6/boot.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl6/boot.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl3/boot.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl3/boot.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl3/boot.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl2/boot.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl2/boot.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl2/boot.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl2/boot.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/boot.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/boot.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/boot.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/boot.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271]) +72 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [PASS][143] -> [SKIP][144] ([i915#4525])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-iclb:         [PASS][145] -> [INCOMPLETE][146] ([i915#3371])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb6/igt@gem_exec_capture@pi@vecs0.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb1/igt@gem_exec_capture@pi@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][147] -> [FAIL][148] ([i915#2842])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][149] -> [FAIL][150] ([i915#2842])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk8/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][151] ([i915#2842])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          ([PASS][152], [PASS][153]) -> [FAIL][154] ([i915#2842])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [PASS][155] -> [FAIL][156] ([i915#2842])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#4613])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-iclb:         [PASS][159] -> [FAIL][160] ([i915#4171])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb5/igt@gem_softpin@evict-single-offset.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][161] -> [DMESG-WARN][162] ([i915#5566] / [i915#716])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][163] ([fdo#109271]) +48 similar issues
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][165] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_color_chamelium@ctm-red-to-blue:
>     - shard-apl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@kms_color_chamelium@ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@degamma:
>     - shard-skl:          NOTRUN -> [SKIP][167] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/igt@kms_color_chamelium@degamma.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          ([PASS][168], [PASS][169]) -> [FAIL][170] ([i915#2346])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          ([PASS][171], [PASS][172]) -> [FAIL][173] ([i915#2122])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          ([PASS][174], [PASS][175]) -> [FAIL][176] ([i915#79])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-iclb:         [PASS][177] -> [DMESG-WARN][178] ([i915#2867])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-edp1:
>     - shard-skl:          [PASS][179] -> [FAIL][180] ([i915#2122]) +1 similar issue
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl3/igt@kms_flip@plain-flip-ts-check@b-edp1.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl5/igt@kms_flip@plain-flip-ts-check@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][181] ([i915#2672]) +3 similar issues
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][182] ([i915#3555]) +1 similar issue
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][183] ([i915#2587] / [i915#2672]) +2 similar issues
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][184] ([i915#1982])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][185] ([i915#4573]) +2 similar issues
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][186] -> [SKIP][187] ([i915#5235]) +2 similar issues
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][188] ([fdo#109271] / [i915#658])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][189] -> [SKIP][190] ([fdo#109441]) +3 similar issues
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [PASS][191] -> [SKIP][192] ([i915#5519])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [PASS][193] -> [SKIP][194] ([i915#5519])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_sequence@queue-busy@edp-1-pipe-b:
>     - shard-skl:          [PASS][195] -> [FAIL][196] ([i915#7413])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/igt@kms_sequence@queue-busy@edp-1-pipe-b.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl3/igt@kms_sequence@queue-busy@edp-1-pipe-b.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          [PASS][197] -> [FAIL][198] ([i915#6493])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl4/igt@kms_sysfs_edid_timing.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][199] -> [FAIL][200] ([i915#1542])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl1/igt@perf@blocking.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl2/igt@perf@blocking.html
> 
>   * igt@perf@polling:
>     - shard-skl:          NOTRUN -> [FAIL][201] ([i915#1542])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl1/igt@perf@polling.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][202] ([fdo#109271] / [i915#2994])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl1/igt@sysfs_clients@create.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-glk:          ([PASS][203], [DMESG-WARN][204]) ([i915#5507]) -> [PASS][205]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk9/igt@device_reset@unbind-reset-rebind.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk6/igt@device_reset@unbind-reset-rebind.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk6/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][206] ([i915#658]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb5/igt@feature_discovery@psr2.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_shared@q-in-order@rcs0:
>     - {shard-rkl}:        [FAIL][208] -> [PASS][209] +3 similar issues
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_ctx_shared@q-in-order@rcs0.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gem_ctx_shared@q-in-order@rcs0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - {shard-rkl}:        [FAIL][210] ([fdo#103375]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-1/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - {shard-rkl}:        [SKIP][212] ([i915#6259]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][214] ([i915#4525]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][216] ([i915#2842]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - {shard-rkl}:        [FAIL][218] ([i915#2842]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - {shard-rkl}:        [SKIP][220] ([i915#3281]) -> [PASS][221] +7 similar issues
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - {shard-rkl}:        [SKIP][222] ([i915#7276]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][224] ([i915#2190]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-tglb5/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - {shard-rkl}:        [SKIP][226] ([fdo#111656]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-4/igt@gem_mmap_gtt@coherency.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - {shard-rkl}:        [SKIP][228] ([i915#3282]) -> [PASS][229] +6 similar issues
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - {shard-rkl}:        [FAIL][230] ([i915#3692]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@gem_ppgtt@blt-vs-render-ctx0.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-4/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - {shard-rkl}:        [SKIP][232] ([i915#2527]) -> [PASS][233] +2 similar issues
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][234] ([i915#3591]) -> [PASS][235] +1 similar issue
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - {shard-rkl}:        [SKIP][236] ([i915#1397]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [FAIL][238] ([i915#6991]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/igt@i915_pm_sseu@full-enable.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl4/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][240] ([i915#1845] / [i915#4098]) -> [PASS][241] +17 similar issues
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          ([PASS][242], [FAIL][243]) ([i915#72]) -> [PASS][244]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          ([FAIL][245], [PASS][246]) ([i915#2122]) -> [PASS][247] +1 similar issue
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
>     - shard-apl:          [FAIL][248] ([i915#79]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         [SKIP][250] ([i915#3555]) -> [PASS][251] +1 similar issue
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - {shard-rkl}:        [SKIP][252] ([i915#1849] / [i915#4098]) -> [PASS][253] +12 similar issues
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][254] ([i915#3558]) -> [PASS][255] +1 similar issue
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [SKIP][256] ([fdo#109441]) -> [PASS][257] +3 similar issues
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb6/igt@kms_psr@psr2_primary_render.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb2/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_psr@sprite_mmap_cpu:
>     - {shard-rkl}:        [SKIP][258] ([i915#1072]) -> [PASS][259] +3 similar issues
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@kms_psr@sprite_mmap_cpu.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@kms_psr@sprite_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - {shard-rkl}:        [SKIP][260] ([i915#5461]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-tglb:         [SKIP][262] ([i915#5519]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - {shard-rkl}:        [SKIP][264] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - {shard-rkl}:        [SKIP][266] ([fdo#109289]) -> [PASS][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@perf@gen12-mi-rpc.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@perf@gen12-mi-rpc.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][268] ([i915#2434]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-2/igt@perf@mi-rpc.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [DMESG-WARN][270] ([i915#1982]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl5/igt@perf_pmu@module-unload.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl7/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - {shard-rkl}:        [SKIP][272] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
>     - {shard-dg1}:        [DMESG-WARN][274] ([i915#1982]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-dg1-15/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-dg1-17/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [FAIL][276] ([i915#1731]) -> [PASS][277] +1 similar issue
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1:
>     - shard-skl:          [DMESG-FAIL][278] ([IGT#6]) -> [FAIL][279] ([i915#4573])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-skl7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-skl4/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][280] ([i915#2920]) -> [SKIP][281] ([i915#658])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][282] ([i915#2920]) -> [SKIP][283] ([fdo#111068] / [i915#658])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12477/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#6991]: https://gitlab.freedesktop.org/drm/intel/issues/6991
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7413]: https://gitlab.freedesktop.org/drm/intel/issues/7413
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12477 -> Patchwork_111373v5
> 
>   CI-20190529: 20190529
>   CI_DRM_12477: a9fe1490cceb47334a43a1b037e150300e6058f4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111373v5: a9fe1490cceb47334a43a1b037e150300e6058f4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111373v5/index.html
