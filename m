Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F02515742
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 23:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1931110FACE;
	Fri, 29 Apr 2022 21:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDE910FAC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 21:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651268834; x=1682804834;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=gOLJVp60b0LRNVvwBcdv5YQDrtNIhFtfvx6qsLsk3yM=;
 b=ekak8R+5EqPB/Gix0envd+gxKYnH0i52PBa14gROLqrQmXRdMYgSnBA9
 Q952JtLdyjL0Vt4dmPtTr81yBDdkbciL0sghtf5tKQnKJs8dNJtLzS/Aq
 rxlnGattteAwxNIvDaKsHBERR2lwbh1IWgiWpBweBqK4hNpf40g0vBeCu
 VBdpYGKcE4hsKv9q9eIrg/4b15FVAnJsfn6dj9Io5F2un2PZRBIpeEbbV
 6XsIDKvMzNXfZsvzCfZGAXRaK9h+hAtrMz+eyUWTkg5rGv9tesaMwmY2e
 W0EXd2Sya68XEUAyqUUrRJn7jk89aCoMZOfYitpa13J3mLNbkIdrKJY8S w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="329729824"
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="329729824"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 14:47:13 -0700
X-IronPort-AV: E=Sophos;i="5.91,186,1647327600"; d="scan'208";a="651941109"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 14:47:13 -0700
Date: Fri, 29 Apr 2022 14:47:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ymxc4LddLE3m4wQe@mdroper-desk1.amr.corp.intel.com>
References: <20220428041926.1483683-1-matthew.d.roper@intel.com>
 <165112672132.29089.10790214677983821784@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165112672132.29089.10790214677983821784@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Turn_on_compute_engine_support_=28rev4=29?=
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

On Thu, Apr 28, 2022 at 06:18:41AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Turn on compute engine support (rev4)
> URL   : https://patchwork.freedesktop.org/series/103011/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11550_full -> Patchwork_103011v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_103011v4_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103011v4_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 13)
> ------------------------------
> 
>   Additional (3): shard-rkl shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103011v4_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][1] ([i915#232]) -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@kms.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-tglb1/igt@gem_eio@kms.html

https://gitlab.freedesktop.org/drm/intel/-/issues/5784


Series applied to drm-intel-gt-next.  Thanks for the reviews.

Matt


> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-dg1-19/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103011v4_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) ([i915#5032]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl9/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl3/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl1/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl9/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl6/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl4/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl3/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl2/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl2/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl2/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl1/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl1/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl10/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#4525])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +147 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl4/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@gem_exec_fair@basic-none@vecs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-glk6/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][59] ([i915#2842]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-snb:          [PASS][60] -> [SKIP][61] ([fdo#109271]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb2/igt@gem_exec_flush@basic-uc-prw-default.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-snb6/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][62] -> [SKIP][63] ([i915#2190])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb1/igt@gem_huc_copy@huc-copy.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>     - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2190])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl9/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#4613])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl4/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3323])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl3/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#2856])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         NOTRUN -> [FAIL][70] ([i915#454])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#1937])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][72] -> [INCOMPLETE][73] ([i915#3921])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-snb6/igt@i915_selftest@live@hangcheck.html
>     - shard-tglb:         [PASS][74] -> [DMESG-WARN][75] ([i915#5591])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb7/igt@i915_selftest@live@hangcheck.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-tglb8/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#5286])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#110725] / [fdo#111614])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3777])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#110723])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +114 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl4/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278]) +7 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_color@pipe-a-deep-color:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [i915#3555])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_color@pipe-a-deep-color.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][91] ([i915#1319])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl7/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-apl:          [PASS][92] -> [DMESG-WARN][93] ([i915#180]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [fdo#109279])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#109278])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-skl:          [PASS][96] -> [FAIL][97] ([i915#2346])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#2122])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][101] -> [DMESG-WARN][102] ([i915#180]) +8 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-edp1:
>     - shard-skl:          [PASS][103] -> [FAIL][104] ([i915#2122])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl3/igt@kms_flip@plain-flip-ts-check@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][105] -> [SKIP][106] ([i915#3701])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-skl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#3701])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109280]) +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][110] ([i915#265])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][111] ([i915#265])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#5176]) +2 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_plane_scaling@upscale-with-rotation-factor-0-25@pipe-b-edp-1-upscale-with-rotation.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][114] ([fdo#109441])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#3555])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2437])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl10/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2437])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@short-reads:
>     - shard-skl:          [PASS][118] -> [FAIL][119] ([i915#51])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl8/igt@perf@short-reads.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl2/igt@perf@short-reads.html
> 
>   * igt@prime_nv_pcopy@test3_4:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109291])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@prime_nv_pcopy@test3_4.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][121] ([i915#5098])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-skl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl8/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-glk:          [PASS][123] -> [WARN][124] ([i915#4055])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk1/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-glk5/igt@sysfs_heartbeat_interval@mixed@bcs0.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#1731])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk1/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-glk5/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [TIMEOUT][127] ([i915#3063]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][129] ([i915#2842]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [FAIL][131] ([i915#2842]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-snb:          [SKIP][133] ([fdo#109271]) -> [PASS][134] +2 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb6/igt@gem_exec_flush@basic-uc-rw-default.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-snb2/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked-all:
>     - shard-skl:          [INCOMPLETE][135] ([i915#5843]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl5/igt@gem_exec_whisper@basic-fds-forked-all.html
> 
>   * igt@gem_softpin@softpin:
>     - shard-skl:          [DMESG-WARN][137] ([i915#1982]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl10/igt@gem_softpin@softpin.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl6/igt@gem_softpin@softpin.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-glk:          [FAIL][139] ([i915#2521]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip.html
>     - shard-kbl:          [FAIL][141] ([i915#2521]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl3/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [DMESG-WARN][143] ([i915#180]) -> [PASS][144] +2 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][145] ([i915#2346] / [i915#533]) -> [PASS][146]
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>     - shard-skl:          [FAIL][147] ([i915#1188]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl7/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][149] ([fdo#108145] / [i915#265]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [SKIP][151] ([i915#5235]) -> [PASS][152] +2 similar issues
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][153] ([fdo#109441]) -> [PASS][154] +1 similar issue
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-skl:          [INCOMPLETE][155] ([i915#4939]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][157] ([i915#5639]) -> [PASS][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-skl6/igt@perf@polling-parameterized.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-skl7/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][159] ([i915#232]) -> [TIMEOUT][160] ([i915#3063] / [i915#3648])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][161] ([i915#4525]) -> [DMESG-WARN][162] ([i915#5614]) +1 similar issue
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [DMESG-WARN][163] ([i915#5614]) -> [SKIP][164] ([i915#4525])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][165] ([i915#2842]) -> [FAIL][166] ([i915#2852])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][167] ([i915#588]) -> [SKIP][168] ([i915#658])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - shard-snb:          [SKIP][169] ([fdo#109271] / [i915#5341]) -> [SKIP][170] ([fdo#109271])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][171] ([i915#2920]) -> [SKIP][172] ([i915#658])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][173] ([i915#658]) -> [SKIP][174] ([i915#2920])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][175] ([i915#2920]) -> [SKIP][176] ([fdo#111068] / [i915#658]) +1 similar issue
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl7/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl4/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl8/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl6/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-apl3/igt@runner@aborted.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl3/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl1/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl6/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl8/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl3/igt@runner@aborted.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-apl1/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][190], [FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][200], [FAIL][201], [FAIL][202], [FAIL][203], [FAIL][204], [FAIL][205], [FAIL][206], [FAIL][207], [FAIL][208], [FAIL][209], [FAIL][210], [FAIL][211], [FAIL][212], [FAIL][213], [FAIL][214]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl7/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl4/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl6/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl1/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl1/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/shard-kbl3/igt@runner@aborted.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl4/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl3/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl6/igt@runner@aborted.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@runner@aborted.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl6/igt@runner@aborted.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl6/igt@runner@aborted.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl1/igt@runner@aborted.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl3/igt@runner@aborted.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl1/igt@runner@aborted.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@runner@aborted.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@runner@aborted.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@runner@aborted.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl7/igt@runner@aborted.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl3/igt@runner@aborted.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/shard-kbl1/igt@runner@aborted.html
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
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
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
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3648]: https://gitlab.freedesktop.org/drm/intel/issues/3648
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3777]: https://gitlab.freedesktop.org/drm/intel/issues/3777
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4055]: https://gitlab.freedesktop.org/drm/intel/issues/4055
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4807]: https://gitlab.freedesktop.org/drm/intel/issues/4807
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4842]: https://gitlab.freedesktop.org/drm/intel/issues/4842
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4886]: https://gitlab.freedesktop.org/drm/intel/issues/4886
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5303]: https://gitlab.freedesktop.org/drm/intel/issues/5303
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5843]: https://gitlab.freedesktop.org/drm/intel/issues/5843
>   [i915#5849]: https://gitlab.freedesktop.org/drm/intel/issues/5849
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11550 -> Patchwork_103011v4
> 
>   CI-20190529: 20190529
>   CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103011v4: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103011v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
