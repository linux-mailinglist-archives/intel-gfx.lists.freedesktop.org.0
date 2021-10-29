Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3112243F973
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 11:10:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3743B6EA27;
	Fri, 29 Oct 2021 09:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12EDB6EA27
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 09:10:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="316825341"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="316825341"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 02:10:23 -0700
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="487508203"
Received: from hohiggin-mobl2.ger.corp.intel.com (HELO [10.213.197.138])
 ([10.213.197.138])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 02:10:22 -0700
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20211027161813.3094681-1-matthew.auld@intel.com>
 <163542585754.4340.10178483268466606907@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <6401f115-18b3-d25b-8c17-09d64cbca920@intel.com>
Date: Fri, 29 Oct 2021 10:10:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <163542585754.4340.10178483268466606907@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915/clflush=3A_fixup_hand?=
 =?utf-8?q?ling_of_cache=5Fdirty_=28rev2=29?=
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

On 28/10/2021 13:57, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v2,1/4] drm/i915/clflush: fixup handling 
> of cache_dirty (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/96348/ 
> <https://patchwork.freedesktop.org/series/96348/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10805_full -> Patchwork_21471_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21471_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21471_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (10 -> 10)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_21471_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_hangman@engine-hang@vcs0:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb8/igt@i915_hangman@engine-hang@vcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb6/igt@i915_hangman@engine-hang@vcs0.html>


Looks like false positive. This series should only really impact discrete.

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21471_full that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@feature_discovery@display-4x:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@feature_discovery@display-4x.html>
>         ([i915#1839])
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-hang@blt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>         ([fdo#109271]) +342 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@bcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb4/igt@gem_exec_fair@basic-pace@bcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_params@secure-non-root:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gem_exec_params@secure-non-root.html>
>         ([fdo#112283])
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl3/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl6/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
> 
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@gem_pwrite@basic-exhaustion.html>
>         ([i915#2658])
>   *
> 
>     igt@gem_pxp@fail-invalid-protected-context:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gem_pxp@fail-invalid-protected-context.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gem_softpin@allocator-evict-all-engines:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-glk9/igt@gem_softpin@allocator-evict-all-engines.html>
>         ([i915#4171])
>   *
> 
>     igt@gem_userptr_blits@coherency-sync:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gem_userptr_blits@coherency-sync.html>
>         ([fdo#110542])
>   *
> 
>     igt@gem_userptr_blits@dmabuf-unsync:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gem_userptr_blits@dmabuf-unsync.html>
>         ([i915#3297])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl1/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
>   *
> 
>     igt@gem_workarounds@suspend-resume:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb1/igt@gem_workarounds@suspend-resume.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb7/igt@gem_workarounds@suspend-resume.html>
>         ([i915#456]) +2 similar issues
>   *
> 
>     igt@gen3_render_tiledy_blits:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@gen3_render_tiledy_blits.html>
>         ([fdo#109289]) +2 similar issues
>   *
> 
>     igt@gen9_exec_parse@basic-rejected:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gen9_exec_parse@basic-rejected.html>
>         ([i915#2856]) +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>   *
> 
>     igt@i915_pm_rc6_residency@media-rc6-accuracy:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html>
>         ([fdo#109289] / [fdo#111719])
>   *
> 
>     igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         ([fdo#111644] / [i915#1397] / [i915#2411])
>   *
> 
>     igt@kms_async_flips@async-flip-with-page-flip-events:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl2/igt@kms_async_flips@async-flip-with-page-flip-events.html>
>         ([i915#4323])
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-270:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_big_fb@linear-8bpp-rotate-270.html>
>         ([fdo#111614]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         ([i915#3743]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         ([i915#3763])
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html>
>         ([fdo#111615]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +3 similar issues
>   *
> 
>     igt@kms_busy@extended-modeset-hang-newfb-with-reset:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html>
>         ([fdo#109271])
>   *
> 
>     igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886]) +5 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl7/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +5 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +13 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb3/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html>
>         ([i915#3689]) +9 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-audio-edid:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_chamelium@hdmi-audio-edid.html>
>         ([fdo#109284] / [fdo#111827]) +9 similar issues
>   *
> 
>     igt@kms_chamelium@vga-edid-read:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@kms_chamelium@vga-edid-read.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd-after-suspend:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl10/igt@kms_chamelium@vga-hpd-after-suspend.html>
>         ([fdo#109271] / [fdo#111827]) +26 similar issues
>   *
> 
>     igt@kms_color@pipe-c-ctm-0-75:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html>
>         ([i915#1982])
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-max:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl7/igt@kms_color_chamelium@pipe-c-ctm-max.html>
>         ([fdo#109271] / [fdo#111827]) +12 similar issues
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_content_protection@dp-mst-lic-type-1.html>
>         ([i915#3116])
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-32x10-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x10-rapid-movement.html>
>         ([i915#3359]) +4 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x32-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x32-random.html>
>         ([i915#3319]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-512x512-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-512x512-random.html>
>         ([fdo#109279] / [i915#3359]) +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         ([i915#2346])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>         ([i915#3528])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#1982])
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
> 
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb3/igt@kms_fbcon_fbt@psr-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html>
>         ([i915#2411] / [i915#456])
>   *
> 
>     igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html>
>         ([fdo#111825]) +37 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html>
>         ([fdo#109271] / [i915#2672])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html>
>         ([i915#3701])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html>
>         ([fdo#109271] / [i915#2672])
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_force_connector_basic@force-load-detect.html>
>         ([fdo#109285])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html>
>         ([fdo#109271]) +48 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html>
>         ([fdo#109271]) +173 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188])
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#180]) +2 similar issues
> 
>       o
> 
>         shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html>
>         ([i915#1188])
> 
>   *
> 
>     igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265]) +5 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html>
>         ([fdo#108145] / [i915#265]) +4 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_lowres@pipe-b-tiling-none:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_plane_lowres@pipe-b-tiling-none.html>
>         ([i915#3536]) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html>
>         ([i915#2920]) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html>
>         ([fdo#109271] / [i915#658]) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl9/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html>
>         ([fdo#109271] / [i915#658]) +5 similar issues
>   *
> 
>     igt@kms_psr2_su@frontbuffer:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_psr2_su@frontbuffer.html>
>         ([i915#1911])
>   *
> 
>     igt@kms_psr@psr2_cursor_plane_move:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html>
>         ([fdo#109441]) +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@kms_psr@psr2_sprite_blt.html>
>         ([i915#132] / [i915#3467])
>   *
> 
>     igt@kms_rmfb@close-fd:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-snb7/igt@kms_rmfb@close-fd.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-snb7/igt@kms_rmfb@close-fd.html>
>         ([fdo#109271])
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl6/igt@kms_sysfs_edid_timing.html>
>         ([IGT#2])
>   *
> 
>     igt@kms_vrr@flip-suspend:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@kms_vrr@flip-suspend.html>
>         ([fdo#109502])
>   *
> 
>     igt@kms_writeback@writeback-invalid-parameters:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl6/igt@kms_writeback@writeback-invalid-parameters.html>
>         ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@nouveau_crc@pipe-c-source-rg:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@nouveau_crc@pipe-c-source-rg.html>
>         ([i915#2530]) +1 similar issue
>   *
> 
>     igt@prime_nv_api@i915_self_import:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@prime_nv_api@i915_self_import.html>
>         ([fdo#109291]) +1 similar issue
>   *
> 
>     igt@prime_vgem@fence-read-hang:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@prime_vgem@fence-read-hang.html>
>         ([fdo#109295])
>   *
> 
>     igt@sysfs_clients@create:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl10/igt@sysfs_clients@create.html>
>         ([fdo#109271] / [i915#2994]) +3 similar issues
>   *
> 
>     igt@sysfs_clients@fair-3:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@sysfs_clients@fair-3.html>
>         ([i915#2994]) +1 similar issue
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl3/igt@sysfs_clients@fair-3.html>
>         ([fdo#109271] / [i915#2994])
> 
>   *
> 
>     igt@sysfs_clients@split-50:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl1/igt@sysfs_clients@split-50.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         ([i915#456]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb2/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_eio@in-flight-contexts-1us:
> 
>       o shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb5/igt@gem_eio@in-flight-contexts-1us.html>
>         ([i915#3070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb8/igt@gem_eio@in-flight-contexts-1us.html>
>   *
> 
>     igt@gem_eio@in-flight-suspend:
> 
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-kbl1/igt@gem_eio@in-flight-suspend.html>
>         ([i915#3614]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl1/igt@gem_eio@in-flight-suspend.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb1/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb4/igt@gem_exec_fair@basic-pace@vecs0.html>
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-tglb7/igt@gem_softpin@noreloc-s3.html>
>         ([i915#1373] / [i915#456]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-tglb8/igt@gem_softpin@noreloc-s3.html>
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html>
>         +4 similar issues
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-skl7/igt@i915_suspend@fence-restore-untiled.html>
>         ([i915#198]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl10/igt@i915_suspend@fence-restore-untiled.html>
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-75:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>         ([i915#2346]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html>
>         ([i915#79]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21471/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10805/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>         ([i915#3701]) -> [PASS][134]
> 
