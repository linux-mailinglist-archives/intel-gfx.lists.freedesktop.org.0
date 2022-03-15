Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490474DA095
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 17:56:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DCD10E43C;
	Tue, 15 Mar 2022 16:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E47E10E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 16:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647363387; x=1678899387;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=Xjz4XGenlmlWD+kgST+1FF70YamxL3LhVUHXQTa5drI=;
 b=NhTjUCEhj8ms5pfWitvx/cVF0fi1PHQUxv98SYqA63k6OTODG9zPQ/Kf
 ethxB10yBZu3DQikh2pZ7AfKdIXHYLm7KrU75SgYMYml7AiJqI/JjGqKa
 SV7KwkufTFVFHwEvXFGBMDhIgQqJBcDE5gxF55f3u2n1wa5MwMaQwbP+A
 Mtd+sd4ACp7rx30+LWr7izwh8MK+r60/g31KVlQ8ZZ6Vtcz8eVKEqZIxL
 w3CW8Z8YZki5CggXCzSGn+4n0clQymBfWgocVfmZN6ApFfXkY2oUmSsxC
 vlXM2z9y2CXUzChQH0Zz/9fzXaTfLalS+K8AKw3QeadFi2mEqmsXcsi6J A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="342786069"
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="342786069"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 09:56:08 -0700
X-IronPort-AV: E=Sophos;i="5.90,184,1643702400"; d="scan'208";a="819947454"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 09:56:08 -0700
Date: Tue, 15 Mar 2022 09:56:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YjDFJ3V9q+yqIRaR@mdroper-desk1.amr.corp.intel.com>
References: <20220315020805.844962-1-matthew.d.roper@intel.com>
 <164735923115.20491.14221505785563884357@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164735923115.20491.14221505785563884357@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reduce_stack_usage_in_debugfs_due_to_SSEU_=28rev2=29?=
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

On Tue, Mar 15, 2022 at 03:47:11PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Reduce stack usage in debugfs due to SSEU (rev2)
> URL   : https://patchwork.freedesktop.org/series/101369/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11363_full -> Patchwork_22567_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Jose for the review.


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
>   Here are the unknown changes that may have been introduced in Patchwork_22567_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_schedule@smoketest@bcs0:
>     - {shard-rkl}:        [PASS][1] -> ([PASS][2], [INCOMPLETE][3])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@gem_exec_schedule@smoketest@bcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-4/igt@gem_exec_schedule@smoketest@bcs0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/igt@gem_exec_schedule@smoketest@bcs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22567_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - {shard-rkl}:        ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [FAIL][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) ([i915#5131]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-5/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-4/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-4/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#5325])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglb8/igt@gem_ccs@block-copy-compressed.html
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#5327])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][46] -> [FAIL][47] ([i915#232])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglb6/igt@gem_eio@kms.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglb2/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][48] -> [FAIL][49] ([i915#2842]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][50] ([i915#2842])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#2842])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-forked-all:
>     - shard-glk:          [PASS][53] -> [DMESG-WARN][54] ([i915#118]) +3 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2190])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@gem_huc_copy@huc-copy.html
>     - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2190])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-glk:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#4613])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#4613])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#4270]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][61] ([i915#768]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#3297])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][63] ([i915#4991])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][64] ([i915#1436] / [i915#716])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#2856])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@i915_pm_backlight@fade_with_suspend:
>     - shard-skl:          [PASS][66] -> [DMESG-WARN][67] ([i915#1982]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - shard-skl:          NOTRUN -> [CRASH][68] ([i915#5343])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          [PASS][69] -> [FAIL][70] ([i915#454])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl8/igt@i915_pm_dc@dc6-psr.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [PASS][71] -> [SKIP][72] ([i915#4281])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#110892]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][74] -> [INCOMPLETE][75] ([i915#3921])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-snb7/igt@i915_selftest@live@hangcheck.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-snb4/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_atomic@atomic_plane_damage:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#4765])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_atomic@atomic_plane_damage.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#5286]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#110725] / [fdo#111614])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][81] ([i915#3743])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#110723])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_chamelium@vga-hpd-enable-disable-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_color@pipe-d-ctm-green-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109278] / [i915#1149])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_color@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>     - shard-glk:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#3116])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][92] ([i915#1319])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271]) +139 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-64x21-rapid-movement.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278]) +15 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109274] / [fdo#109278]) +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#426])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#5287])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][99] -> [DMESG-WARN][100] ([i915#180])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [PASS][101] -> [INCOMPLETE][102] ([i915#4839])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#3701]) +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109280]) +10 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +122 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271]) +9 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a:
>     - shard-skl:          [PASS][108] -> [FAIL][109] ([i915#1188])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl10/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl8/igt@kms_hdr@bpc-switch-dpms@bpc-switch-dpms-edp-1-pipe-a.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([i915#3555]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-kbl:          [PASS][111] -> [DMESG-WARN][112] ([i915#180]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][114] -> [FAIL][115] ([fdo#108145] / [i915#265])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#3536]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_plane_lowres@pipe-b-tiling-x.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][117] -> [SKIP][118] ([i915#5235]) +2 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#111068] / [i915#658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         NOTRUN -> [SKIP][121] ([fdo#109441])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109441]) +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_psr@suspend:
>     - shard-skl:          [PASS][124] -> [INCOMPLETE][125] ([i915#4939])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl3/igt@kms_psr@suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt@kms_psr@suspend.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-apl:          NOTRUN -> [FAIL][126] ([IGT#2])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl2/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][127] ([fdo#109271] / [i915#533]) +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#2437])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-complete:
>     - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#2530])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-complete.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([fdo#109289])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_test@nv_i915_sharing:
>     - shard-iclb:         NOTRUN -> [SKIP][131] ([fdo#109291]) +3 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@prime_nv_test@nv_i915_sharing.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - shard-iclb:         NOTRUN -> [SKIP][132] ([i915#3301])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb8/igt@prime_vgem@basic-userptr.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][133] ([i915#5098])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@split-10:
>     - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2994])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl1/igt@sysfs_clients@split-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@suspend:
>     - {shard-rkl}:        ([PASS][135], [FAIL][136]) ([i915#5115]) -> [PASS][137]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-1/igt@gem_eio@suspend.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-4/igt@gem_eio@suspend.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@gem_eio@suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][138] ([i915#2481] / [i915#3070]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-iclb4/igt@gem_eio@unwedge-stress.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-iclb7/igt@gem_eio@unwedge-stress.html
>     - {shard-rkl}:        [TIMEOUT][140] ([i915#3063]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-6/igt@gem_eio@unwedge-stress.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - {shard-tglu}:       [FAIL][142] ([i915#2842]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglu-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][144] ([i915#2842]) -> [PASS][145] +2 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][146] ([i915#2842]) -> [PASS][147] +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fence@syncobj-import:
>     - shard-skl:          [FAIL][148] -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl2/igt@gem_exec_fence@syncobj-import.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl6/igt@gem_exec_fence@syncobj-import.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [DMESG-WARN][150] ([i915#180]) -> [PASS][151] +4 similar issues
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-apl7/igt@gem_softpin@noreloc-s3.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-apl8/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - {shard-rkl}:        [DMESG-FAIL][152] ([i915#4258]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-rkl-5/igt@i915_selftest@live@gt_pm.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-rkl-1/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-skl:          [INCOMPLETE][154] ([i915#4939]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-skl4/igt@i915_suspend@debugfs-reader.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-skl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - {shard-tglu}:       [DMESG-WARN][156] ([i915#402]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-180.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-snb:          [SKIP][158] ([fdo#109271]) -> [PASS][159] +1 similar issue
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11363/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22567/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
