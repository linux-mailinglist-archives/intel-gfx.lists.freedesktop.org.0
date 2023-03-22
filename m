Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C476C53DC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 19:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE5910E3DA;
	Wed, 22 Mar 2023 18:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5AE510E3E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 18:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679510324; x=1711046324;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=dA9sIj/ywDctKWmCIVT+YhmdlM5Vn02M/DA+PCFQDgE=;
 b=UOX5eHtdOxnQAAF7duvugClg22KCKEBSwNB4G9f2QHJP/EctXMt0ETTM
 xnK459DyZArKwr4KtW65kTnLAps4Dv40FI13j2rMCHVobcm1WRnyWFw7z
 V5mn0sMvXM53310NWNI+Wd44y4lNwUlhjTUkPsxLa9BjUWtXc8NzJHMpP
 ZEt+fKKl6KuSyYflav53xrHaK0oGE7uhR5w4jt6tUkMRfvBmLkQnL8JJI
 LfweOK02E9pOZKMbpSms9vkFtTzJ3XysKsT6FdZnjkb/N/buYYEIB7Eqx
 EFn7XrhlWP92tkIbAhN0Qfm5MVeNwj38jZ8XO9crEwSmq8IBkA7Z/Y+JE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="341661988"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="341661988"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 11:38:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="659282351"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="659282351"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 11:38:42 -0700
Date: Wed, 22 Mar 2023 20:38:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Mika Kahola <mika.kahola@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZBtLLzISQqftQIGE@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <167949766466.13422.12248471592559318043@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167949766466.13422.12248471592559318043@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_a_few_TypeC_/_MST_issues_=28rev6=29?=
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

On Wed, Mar 22, 2023 at 03:07:44PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix a few TypeC / MST issues (rev6)
> URL   : https://patchwork.freedesktop.org/series/115270/
> State : success

Thanks for the reviews, the patchset is pushed to din.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12893_full -> Patchwork_115270v6_full
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
> Participating hosts (7 -> 8)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_115270v6_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - {shard-dg1}:        NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-dg1-14/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@kms_dp_aux_dev:
>     - {shard-tglu}:       [PASS][2] -> [FAIL][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-tglu-9/igt@kms_dp_aux_dev.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-tglu-8/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - {shard-tglu}:       NOTRUN -> [SKIP][4] +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-tglu-9/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_115270v6_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - {shard-rkl}:        [FAIL][9] ([i915#7742]) -> [PASS][10] +2 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@feature_discovery@psr1:
>     - {shard-rkl}:        [SKIP][11] ([i915#658]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@feature_discovery@psr1.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - {shard-rkl}:        [SKIP][13] ([i915#6252]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-4/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_eio@suspend:
>     - {shard-rkl}:        [FAIL][15] ([i915#5115] / [i915#7052]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@gem_eio@suspend.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-1/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][17] ([i915#2846]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][19] ([i915#2842]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - {shard-rkl}:        [FAIL][21] ([i915#2842]) -> [PASS][22] +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - {shard-rkl}:        [SKIP][23] ([fdo#109313]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - {shard-rkl}:        [SKIP][25] ([i915#3281]) -> [PASS][26] +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_partial_pwrite_pread@write:
>     - {shard-rkl}:        [SKIP][27] ([i915#3282]) -> [PASS][28] +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-3/igt@gem_partial_pwrite_pread@write.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - {shard-rkl}:        [SKIP][29] ([i915#2527]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-1/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][31] ([i915#6258]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
>     - {shard-rkl}:        [SKIP][33] ([i915#1397]) -> [PASS][34] +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - {shard-dg1}:        [SKIP][35] ([i915#1397]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-dg1-14/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-dg1-16/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@fences-dpms:
>     - {shard-rkl}:        [SKIP][37] ([i915#1849]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@i915_pm_rpm@fences-dpms.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - {shard-tglu}:       [SKIP][39] ([i915#1397]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-tglu-9/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-tglu-8/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_selftest@live@migrate:
>     - shard-glk:          [DMESG-FAIL][41] -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-glk1/igt@i915_selftest@live@migrate.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-glk6/igt@i915_selftest@live@migrate.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][43] ([i915#1845] / [i915#4098]) -> [PASS][44] +35 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-apl:          [FAIL][45] ([i915#2346]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dp_aux_dev:
>     - {shard-rkl}:        [SKIP][47] ([i915#1257]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@kms_dp_aux_dev.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][49] ([i915#4767]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
>     - {shard-tglu}:       [SKIP][51] ([i915#1849]) -> [PASS][52] +4 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
>     - {shard-rkl}:        [SKIP][53] ([i915#1849] / [i915#4098]) -> [PASS][54] +16 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - {shard-rkl}:        [SKIP][55] ([i915#1072]) -> [PASS][56] +2 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-2/igt@kms_psr@sprite_plane_onoff.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - {shard-rkl}:        [SKIP][57] ([i915#5461]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_pwrite_crc:
>     - {shard-tglu}:       [SKIP][59] ([fdo#109274] / [i915#1845]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-tglu-9/igt@kms_pwrite_crc.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-tglu-8/igt@kms_pwrite_crc.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:
>     - {shard-rkl}:        [SKIP][61] ([i915#4098]) -> [PASS][62] +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html
> 
>   * igt@kms_vblank@pipe-c-wait-forked:
>     - {shard-tglu}:       [SKIP][63] ([i915#1845] / [i915#7651]) -> [PASS][64] +11 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-tglu-9/igt@kms_vblank@pipe-c-wait-forked.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-tglu-8/igt@kms_vblank@pipe-c-wait-forked.html
> 
>   * igt@perf_pmu@most-busy-check-all@rcs0:
>     - {shard-rkl}:        [FAIL][65] ([i915#4349]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-4/igt@perf_pmu@most-busy-check-all@rcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@perf_pmu@most-busy-check-all@rcs0.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - {shard-rkl}:        [SKIP][67] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12893/shard-rkl-2/igt@prime_vgem@basic-fence-flip.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#8018]: https://gitlab.freedesktop.org/drm/intel/issues/8018
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8282]: https://gitlab.freedesktop.org/drm/intel/issues/8282
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12893 -> Patchwork_115270v6
> 
>   CI-20190529: 20190529
>   CI_DRM_12893: f8980398783b2abaa6479829786e9ffb9c4b7490 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7210: 5f7116708590b55864456acd993ecdb02374a06f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_115270v6: f8980398783b2abaa6479829786e9ffb9c4b7490 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v6/index.html
