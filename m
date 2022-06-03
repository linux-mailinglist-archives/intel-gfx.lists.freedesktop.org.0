Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3437D53C18D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 03:00:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC3810E746;
	Fri,  3 Jun 2022 01:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52C610E746
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 01:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654218036; x=1685754036;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xBTyWho6eskMYl9TNGnyaLpuvCAVw7o7FA3eVbUl/bw=;
 b=eNesYIBKQt1ZdHh6nhdat37uPj4gle6G2UACRHZCdVL/wB37qMVxOack
 a+D813UQuOhdDBjB6ZAXoP+0h0aSckilgg2/GR7rdCzsxVKvPupFuq4G2
 7sWl6uEebtc3WEl77cduXQ5sZKLBQMCvC5OYNOVIBEMBvFfwRzkJL8vis
 SlFTxqwRA5xg+Hz10JlTfzanlr2TBWRQUJqYkoVv1sDtLLkRir7hzOgst
 UERjVl0iQ/4jPgL/rM7RDasdLtUHSvggpC4PWJiClxOGbM9Q+RGrafU8b
 b+q1dZ6KENVYM8+Diq3xovp87NWeqUBMkLYwULzTUAeCqKZG7f8rhx7Qw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256609717"
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="256609717"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 18:00:35 -0700
X-IronPort-AV: E=Sophos;i="5.91,273,1647327600"; d="scan'208";a="721553962"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 18:00:35 -0700
Date: Thu, 2 Jun 2022 18:00:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YpldMrWet3el1MY+@mdroper-desk1.amr.corp.intel.com>
References: <20220602135719.1093081-1-balasubramani.vivekanandan@intel.com>
 <165421758883.17721.1272338950825142336@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165421758883.17721.1272338950825142336@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/adlp=3A_More_updates_to_voltage_swing_table?=
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

On Fri, Jun 03, 2022 at 12:53:08AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display/adlp: More updates to voltage swing table
> URL   : https://patchwork.freedesktop.org/series/104661/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11719_full -> Patchwork_104661v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch and review.


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
>   Here are the unknown changes that may have been introduced in Patchwork_104661v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_setmode@basic@pipe-a-edp-1:
>     - {shard-rkl}:        NOTRUN -> [FAIL][1] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_setmode@basic@pipe-a-edp-1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104661v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-skl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [FAIL][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43]) ([i915#5032])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl2/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl9/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl3/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl3/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl1/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl1/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl1/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl10/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl10/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl10/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl4/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl4/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl2/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl1/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl1/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [FAIL][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68]) ([i915#4386]) -> ([PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl7/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl7/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl6/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl6/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl6/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl4/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl4/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl4/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl3/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl3/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl3/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl3/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl1/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl1/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl1/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl7/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl7/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl7/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl6/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl1/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl6/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl6/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl1/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl6/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl1/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl4/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl4/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl4/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl4/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl3/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl3/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl3/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@engines-hang@bcs0:
>     - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271]) +151 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@gem_ctx_persistence@engines-hang@bcs0.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-iclb:         [PASS][95] -> [INCOMPLETE][96] ([i915#3371])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb5/igt@gem_exec_capture@pi@rcs0.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          NOTRUN -> [FAIL][97] ([i915#6141])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          NOTRUN -> [FAIL][98] ([i915#2842]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#2842])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-iclb:         [PASS][101] -> [FAIL][102] ([i915#2842])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglb:         [PASS][103] -> [FAIL][104] ([i915#2842])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][105] -> [FAIL][106] ([i915#2842])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-snb:          [PASS][107] -> [SKIP][108] ([fdo#109271]) +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-snb2/igt@gem_exec_flush@basic-uc-pro-default.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-snb6/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#4613])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#4613])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#4613])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][113] ([i915#768])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#3297])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#3323])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][116] ([i915#4991])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][117] ([i915#3318])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl4/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl7/igt@gem_workarounds@suspend-resume.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#2856])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][121] -> [INCOMPLETE][122] ([i915#3921])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-snb5/igt@i915_selftest@live@hangcheck.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([i915#5286])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][124] ([i915#3743]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][125] ([fdo#110723]) +1 similar issue
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-hpd-after-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/igt@kms_chamelium@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-glk:          NOTRUN -> [SKIP][132] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109284] / [fdo#111827])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@pipe-d-invalid-gamma-lut-sizes:
>     - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271]) +65 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@kms_color@pipe-d-invalid-gamma-lut-sizes.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-75:
>     - shard-skl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/igt@kms_color_chamelium@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][137] ([i915#1319])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-iclb:         NOTRUN -> [SKIP][138] ([fdo#109300] / [fdo#111066])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
>     - shard-iclb:         NOTRUN -> [SKIP][139] ([fdo#109278] / [fdo#109279])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][140] ([fdo#109278]) +12 similar issues
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [PASS][141] -> [FAIL][142] ([i915#5072])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][143] ([fdo#109274] / [fdo#109278])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][144] -> [FAIL][145] ([i915#2346])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>     - shard-skl:          NOTRUN -> [FAIL][146] ([i915#2346])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-skl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#533]) +1 similar issue
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled:
>     - shard-iclb:         [PASS][148] -> [FAIL][149] ([i915#1888] / [i915#2546])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-xtiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][150] ([i915#5287])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271]) +57 similar issues
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [PASS][152] -> [FAIL][153] ([i915#2122])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-kbl:          NOTRUN -> [SKIP][154] ([fdo#109271]) +71 similar issues
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw:
>     - shard-iclb:         NOTRUN -> [SKIP][155] ([fdo#109280]) +9 similar issues
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][156] ([fdo#109271] / [i915#533])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-kbl:          [PASS][157] -> [DMESG-WARN][158] ([i915#180]) +5 similar issues
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][159] ([fdo#108145] / [i915#265])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][160] ([i915#265])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-glk:          NOTRUN -> [FAIL][161] ([fdo#108145] / [i915#265]) +1 similar issue
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][162] ([fdo#108145] / [i915#265])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][163] ([fdo#108145] / [i915#265])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][164] -> [SKIP][165] ([i915#5235]) +2 similar issues
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][166] ([fdo#109271] / [i915#658]) +1 similar issue
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         NOTRUN -> [SKIP][167] ([i915#658])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][168] ([fdo#109271] / [i915#658])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-iclb:         NOTRUN -> [SKIP][169] ([fdo#109441])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [PASS][170] -> [SKIP][171] ([fdo#109441])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-iclb:         NOTRUN -> [SKIP][172] ([i915#3555])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][173] -> [FAIL][174] ([i915#51])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl10/igt@perf@short-reads.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@perf@short-reads.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [PASS][175] -> [INCOMPLETE][176] ([i915#5213])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-glk3/igt@perf@stress-open-close.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk9/igt@perf@stress-open-close.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][177] ([i915#1982])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl6/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_nv_pcopy@test3_2:
>     - shard-iclb:         NOTRUN -> [SKIP][178] ([fdo#109291])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@prime_nv_pcopy@test3_2.html
> 
>   * igt@sysfs_clients@pidname:
>     - shard-skl:          NOTRUN -> [SKIP][179] ([fdo#109271] / [i915#2994])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/igt@sysfs_clients@pidname.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-iclb:         NOTRUN -> [SKIP][180] ([i915#2994])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@sysfs_clients@sema-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - {shard-rkl}:        [SKIP][181] ([i915#2582]) -> [PASS][182] +1 similar issue
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@fbdev@info.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][183] ([i915#180]) -> [PASS][184] +5 similar issues
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][185] ([i915#3070]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@gem_eio@unwedge-stress.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@gem_eio@unwedge-stress.html
>     - {shard-tglu}:       [TIMEOUT][187] ([i915#3063]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-tglu-2/igt@gem_eio@unwedge-stress.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-tglu-1/igt@gem_eio@unwedge-stress.html
>     - shard-tglb:         [TIMEOUT][189] ([i915#3063]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-tglb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][191] ([i915#4525]) -> [PASS][192] +1 similar issue
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][193] ([i915#2842]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [FAIL][195] ([i915#2842]) -> [PASS][196] +2 similar issues
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-tglu}:       [FAIL][197] ([i915#2842]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-tglu-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][199] ([i915#2842]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-snb:          [SKIP][201] ([fdo#109271]) -> [PASS][202] +4 similar issues
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-snb6/igt@gem_exec_flush@basic-uc-ro-default.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-snb2/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-iclb:         [INCOMPLETE][203] ([i915#5498] / [i915#5843]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb7/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb5/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [SKIP][205] ([i915#2190]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-tglb2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_softpin@allocator-fork:
>     - shard-iclb:         [DMESG-WARN][207] ([i915#4391]) -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb7/igt@gem_softpin@allocator-fork.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@gem_softpin@allocator-fork.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-iclb:         [FAIL][209] ([i915#4171]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb3/igt@gem_softpin@evict-single-offset.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb1/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][211] ([i915#5566] / [i915#716]) -> [PASS][212]
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-glk4/igt@gen9_exec_parse@allowed-all.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_backlight@fade_with_dpms:
>     - {shard-rkl}:        [SKIP][213] ([i915#3012]) -> [PASS][214]
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@i915_pm_backlight@fade_with_dpms.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][215] ([i915#454]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@cursor:
>     - {shard-rkl}:        [SKIP][217] ([i915#1849]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@i915_pm_rpm@cursor.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@i915_pm_rpm@cursor.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][219] ([i915#1845] / [i915#4098]) -> [PASS][220] +16 similar issues
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-gamma:
>     - {shard-rkl}:        [SKIP][221] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_color@pipe-a-gamma.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_color@pipe-a-gamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
>     - {shard-rkl}:        [SKIP][223] ([fdo#112022] / [i915#4070]) -> [PASS][224] +1 similar issue
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>     - {shard-rkl}:        [SKIP][225] ([fdo#111825] / [i915#4070]) -> [PASS][226] +1 similar issue
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-iclb:         [FAIL][227] ([i915#2346]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@pipe-c-single-bo:
>     - {shard-rkl}:        [SKIP][229] ([i915#4070]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-single-bo.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-single-bo.html
> 
>   * igt@kms_dp_aux_dev:
>     - {shard-rkl}:        [SKIP][231] ([i915#1257]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_dp_aux_dev.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
>     - {shard-rkl}:        [SKIP][233] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][234] +1 similar issue
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - {shard-dg1}:        [FAIL][235] ([i915#4767]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-dg1-16/igt@kms_fbcon_fbt@fbc-suspend.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-dg1-18/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          [FAIL][237] ([i915#79]) -> [PASS][238]
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][239] ([i915#3701]) -> [PASS][240] +1 similar issue
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - {shard-rkl}:        [SKIP][241] ([i915#3701]) -> [PASS][242]
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][243] ([i915#1849] / [i915#4098]) -> [PASS][244] +18 similar issues
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_invalid_mode@bad-vsync-start:
>     - {shard-rkl}:        [SKIP][245] ([i915#4278]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-start.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-apl:          [DMESG-WARN][247] ([i915#180]) -> [PASS][248] +2 similar issues
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - {shard-rkl}:        [SKIP][249] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][250] +2 similar issues
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][251] -> [PASS][252] +2 similar issues
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr@cursor_blt:
>     - {shard-rkl}:        [SKIP][253] ([i915#1072]) -> [PASS][254]
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@kms_psr@cursor_blt.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_psr@cursor_blt.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][255] ([fdo#109441]) -> [PASS][256] +1 similar issue
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
>     - {shard-rkl}:        [SKIP][257] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][258] +1 similar issue
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
> 
>   * igt@perf@oa-exponents:
>     - shard-glk:          [INCOMPLETE][259] ([i915#5213]) -> [PASS][260]
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-glk4/igt@perf@oa-exponents.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-glk3/igt@perf@oa-exponents.html
> 
>   * igt@perf@polling-parameterized:
>     - {shard-rkl}:        [FAIL][261] ([i915#5639]) -> [PASS][262]
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-rkl-1/igt@perf@polling-parameterized.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-rkl-2/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][263] ([i915#2684]) -> [FAIL][264] ([i915#2680] / [i915#2684])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][265] ([i915#2920]) -> [SKIP][266] ([fdo#111068] / [i915#658])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][267] ([i915#658]) -> [SKIP][268] ([i915#2920])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][269] ([fdo#111068] / [i915#658]) -> [SKIP][270] ([i915#2920])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][271] ([i915#5939]) -> [SKIP][272] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][273], [FAIL][274], [FAIL][275]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][276], [FAIL][277]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl3/igt@runner@aborted.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl7/igt@runner@aborted.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-skl1/igt@runner@aborted.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl10/igt@runner@aborted.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-skl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][278], [FAIL][279], [FAIL][280], [FAIL][281], [FAIL][282]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][283], [FAIL][284], [FAIL][285], [FAIL][286]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl1/igt@runner@aborted.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/igt@runner@aborted.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl2/igt@runner@aborted.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/igt@runner@aborted.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11719/shard-apl8/igt@runner@aborted.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/igt@runner@aborted.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/igt@runner@aborted.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl4/igt@runner@aborted.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/shard-apl2/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2680]: https://gitlab.freedesktop.org/drm/intel/issues/2680
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5498]: https://gitlab.freedesktop.org/drm/intel/issues/5498
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6139]: https://gitlab.freedesktop.org/drm/intel/issues/6139
>   [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
>   [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11719 -> Patchwork_104661v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11719: 30f22faccf454263bc2a1c9212b8ab6efbb3425b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6505: edb1a467fb622b23b927e28ff603fa43851fea97 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104661v1: 30f22faccf454263bc2a1c9212b8ab6efbb3425b @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104661v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
