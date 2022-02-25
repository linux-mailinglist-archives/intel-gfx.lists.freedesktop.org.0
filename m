Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001624C4500
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 13:54:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202FD10E14A;
	Fri, 25 Feb 2022 12:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2A510E18D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645793695; x=1677329695;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IZmHBlMf2m6cx1s/s/nlQf0zp9z8nLYz7VITYaMmPWo=;
 b=eksDgcGnJ5vlamicKla/cSLAiRKGxDpDTwcZC3N7VMV/jLvGn6Y+8LWE
 WATGejPkcnvNKa0cjWheMXL3cFoAS87VAQN8+DBKxBoCtGXZj9Ij97faB
 b+88mq3oTzZkitCg7YeQhNQy/CHi/ZcUhbzulezVb0mylaAYnZ89gOUxQ
 ne6CUNwB3+q/8HhGfWiMP8hbNSEVKyXcbEHOoXD3hrFGpnqCqaYokNGDS
 lYBDJuG5wI8JM2z7fO1Vw9sc3WemS3AwlEJWRsu8LfrP5YmY5HFw2KDzB
 XC0xKU5NXqQLP3U5hLDLLYRVINNsTazB7UUBvXUmtm/MBgTy0ckFyyrUA w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="233113840"
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="233113840"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 04:54:55 -0800
X-IronPort-AV: E=Sophos;i="5.90,136,1643702400"; d="scan'208";a="628833941"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2022 04:54:53 -0800
Date: Fri, 25 Feb 2022 18:25:13 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220225125512.GA7803@intel.com>
References: <20220223210933.3049143-1-lucas.demarchi@intel.com>
 <164577882558.6269.7127051609555719055@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <164577882558.6269.7127051609555719055@emeril.freedesktop.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Do_not_try_loading_wrong_DMC_version?=
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-02-25 at 08:47:05 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc: Do not try loading wrong DMC version
> URL   : https://patchwork.freedesktop.org/series/100664/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11279_full -> Patchwork_22393_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22393_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22393_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22393_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-skl8/igt@gem_eio@in-flight-suspend.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@kms_flip@busy-flip@a-hdmi-a1:
>     - shard-glk:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-glk1/igt@kms_flip@busy-flip@a-hdmi-a1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-glk8/igt@kms_flip@busy-flip@a-hdmi-a1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-skl:          [SKIP][5] ([fdo#109271] / [i915#658]) -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-skl10/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 

This change is restricting the tgl DMC for the TGL alone. which was
applied for all tgl+ platforms. Hence there is no impact to skl and
other gen < 12 platforms.

So ignoring this issues reported.

Ram
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - {shard-tglu}:       NOTRUN -> [DMESG-WARN][7] +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglu-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22393_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_mm@all@insert:
>     - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#4547])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-skl9/igt@drm_mm@all@insert.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl2/igt@drm_mm@all@insert.html
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         NOTRUN -> [SKIP][10] ([i915#658])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@feature_discovery@psr2.html
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][11] ([i915#4991])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl1/igt@gem_create@create-massive.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-snb:          [PASS][12] -> [FAIL][13] ([i915#4409])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-tglb:         NOTRUN -> [TIMEOUT][14] ([i915#3063])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#232])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-tglb7/igt@gem_eio@kms.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb5/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][17] ([i915#4547])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl4/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][18] ([i915#2846])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl2/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +264 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl10/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][20] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][21] ([i915#2842])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl3/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#4613])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-kbl:          NOTRUN -> [WARN][28] ([i915#2658])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#4270]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#4270]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#768]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +73 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl4/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109289])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#2856]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglb:         NOTRUN -> [SKIP][35] ([i915#2527] / [i915#2856])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][36] ([i915#1982])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109289])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglb:         NOTRUN -> [WARN][38] ([i915#2681] / [i915#2684])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@i915_pm_rc6_residency@rc6-fence.html
>     - shard-iclb:         NOTRUN -> [WARN][39] ([i915#1804] / [i915#2684])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110892])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109293] / [fdo#109506])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][42] ([i915#2373])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][43] ([i915#1759])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [PASS][44] -> [DMESG-WARN][45] ([i915#180]) +5 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#111614])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][47] ([i915#3743])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#110725] / [fdo#111614]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][50] ([i915#3763])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3777])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#110723]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111615])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3689] / [i915#3886]) +2 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +13 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109278] / [i915#3886]) +4 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#3689]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109278]) +17 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@kms_ccs@pipe-d-random-ccs-data-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109284] / [fdo#111827]) +6 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_chamelium@dp-hpd-storm.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109284] / [fdo#111827]) +5 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +25 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl5/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([i915#3116])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#3116] / [i915#3299]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb7/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][70] ([i915#1319])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#3359])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-32x10-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3319]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#109279] / [i915#3359])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109278] / [fdo#109279])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][76] ([i915#2346] / [i915#533])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>     - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#2346] / [i915#533])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#426])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_dp_tiled_display@basic-test-pattern.html
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#426])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglb:         NOTRUN -> [SKIP][81] ([fdo#109274] / [fdo#111825]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109274]) +5 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][83] ([i915#2122])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][84] ([i915#3701])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][85] -> [SKIP][86] ([i915#3701])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([i915#2587])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109280] / [fdo#111825]) +7 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109280]) +17 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-skl:          [PASS][92] -> [FAIL][93] ([i915#1188]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#1187])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#533]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][96] ([i915#265]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][97] ([i915#265])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][98] ([fdo#108145] / [i915#265])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][100] ([fdo#108145] / [i915#265]) +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-y:
>     - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#3536])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@kms_plane_lowres@pipe-c-tiling-y.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#658]) +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-apl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][103] -> [SKIP][104] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11279/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109441]) +2 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][106] ([i915#132] / [i915#3467]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271]) +65 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl7/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#5030]) +3 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-a.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
>     - shard-iclb:         NOTRUN -> [SKIP][109] ([i915#5030]) +2 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][110] ([IGT#2])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109309])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@kms_tv_load_detect@load-detect.html
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109309])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb3/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109502])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#2437])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl7/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-iclb:         NOTRUN -> [SKIP][115] ([i915#2437])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#2530])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb7/igt@nouveau_crc@pipe-b-source-outp-inactive.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#2530])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@nouveau_crc@pipe-d-source-outp-complete.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          NOTRUN -> [FAIL][118] ([i915#1542])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl5/igt@perf@blocking.html
> 
>   * igt@prime_nv_pcopy@test2:
>     - shard-tglb:         NOTRUN -> [SKIP][119] ([fdo#109291])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb1/igt@prime_nv_pcopy@test2.html
> 
>   * igt@prime_nv_test@i915_import_cpu_mmap:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109291]) +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-iclb6/igt@prime_nv_test@i915_import_cpu_mmap.html
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - shard-kbl:          NOTRUN -> [DMESG-FAIL][121] ([i915#5098])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-kbl4/igt@syncobj_timeline@transfer-timeline-point.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-tglb:         NOTRUN -> [SKIP][122] ([i915#2994]) +2 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-tglb7/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994]) +5 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/shard-skl8/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#2994]) +1 s
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22393/index.html
