Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 492094377CD
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 15:17:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92B586ED87;
	Fri, 22 Oct 2021 13:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41AC6ED87
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 13:17:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="290136996"
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; 
 d="scan'208,217";a="290136996"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 06:17:07 -0700
X-IronPort-AV: E=Sophos;i="5.87,172,1631602800"; 
 d="scan'208,217";a="484676982"
Received: from dkarner-mobl.ger.corp.intel.com (HELO [10.252.48.154])
 ([10.252.48.154])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 06:17:05 -0700
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
 <163482107361.20173.12106333558102858145@emeril.freedesktop.org>
 <CAM0jSHO0=pwusWze58FshDEc8K_YprmENK47k7AGYwyvbwdZTA@mail.gmail.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <ac29a8c9-582d-c420-3c52-7e30adbdabd1@linux.intel.com>
Date: Fri, 22 Oct 2021 15:17:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAM0jSHO0=pwusWze58FshDEc8K_YprmENK47k7AGYwyvbwdZTA@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------177ED80C26B99B8C8C776EDB"
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_drm/i915=3A_Fix_i915=5Frequest_fe?=
 =?utf-8?q?nce_wait_semantics?=
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

This is a multi-part message in MIME format.
--------------177ED80C26B99B8C8C776EDB
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Op 22-10-2021 om 13:24 schreef Matthew Auld:
> On Thu, 21 Oct 2021 at 13:57, Patchwork <patchwork@emeril.freedesktop.org <mailto:patchwork@emeril.freedesktop.org>> wrote:
>
>     *Patch Details*
>     *Series:* 	series starting with [01/28] drm/i915: Fix i915_request fence wait semantics
>     *URL:* 	https://patchwork.freedesktop.org/series/96115/ <https://patchwork.freedesktop.org/series/96115/>
>     *State:* 	failure
>     *Details:* 	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html>
>
>
>       CI Bug Log - changes from CI_DRM_10768_full -> Patchwork_21402_full
>
>
>         Summary
>
>     *FAILURE*
>
>     Serious unknown changes coming with Patchwork_21402_full absolutely need to be
>     verified manually.
>
>     If you think the reported changes have nothing to do with the changes
>     introduced in Patchwork_21402_full, please notify your bug team to allow them
>     to document this new failure mode, which will reduce false positives in CI.
>
>
>         Possible new issues
>
>     Here are the unknown changes that may have been introduced in Patchwork_21402_full:
>
>
>           IGT changes
>
>
>             Possible regressions
>
>      *
>
>         igt@gem_linear_blits@normal:
>
>           o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk4/igt@gem_linear_blits@normal.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk4/igt@gem_linear_blits@normal.html>
>      *
>
>         igt@gem_mmap_gtt@cpuset-big-copy-xy:
>
>           o shard-iclb: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html>
>      *
>
>         igt@gem_ppgtt@blt-vs-render-ctxn:
>
>           o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb5/igt@gem_ppgtt@blt-vs-render-ctxn.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html> +1 similar issue
>
>
> Maarten, do you know if these failures are related to this series? Perhaps the last one?

Yeah, unfortunately they are. In general, I think the last patch is fine, but we hit more ENOSPC errors because of the extra locking requirements around eviction.

Most of these issues don't happen when we remove the pinning in execbuf, but already earlier in the series, usuallly with locking in eviction paths.

I added some fixes in case it affects the object we are currently trying to pin, like calling i915_gem_evict_vm() in vm_fault_gtt that already fix a lot of issues, but each remaining ENOSPC error like the 3 above requires separate debugging to resolve. I've fixed many cases already, it seems those are remaining.

The fix for gem_mmap_gtt by calling i915_gem_evict_vm() to evict the current object seems to be insufficient on ICL, but originally other platforms were hit harder by this problem, and there it works as intended. :)

Just a few edge cases remaining, fortunately. The majority of tests now pass.

>  
>
>      *
>
>
>         Known issues
>
>     Here are the changes found in Patchwork_21402_full that come from known issues:
>
>
>           IGT changes
>
>
>             Issues hit
>
>      *
>
>         igt@feature_discovery@display-2x:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@feature_discovery@display-2x.html> ([i915#1839])
>      *
>
>         igt@gem_create@create-massive:
>
>           o shard-snb: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_create@create-massive.html> ([i915#3002])
>      *
>
>         igt@gem_ctx_isolation@preservation-s3@rcs0:
>
>           o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@rcs0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html> ([i915#1373])
>      *
>
>         igt@gem_ctx_isolation@preservation-s3@vcs0:
>
>           o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html> ([i915#180]) +3 similar issues
>      *
>
>         igt@gem_ctx_isolation@preservation-s3@vecs0:
>
>           o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html> ([i915#198])
>      *
>
>         igt@gem_ctx_persistence@idempotent:
>
>           o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_ctx_persistence@idempotent.html> ([fdo#109271] / [i915#1099]) +4 similar issues
>      *
>
>         igt@gem_exec_fair@basic-none-solo@rcs0:
>
>           o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html> ([i915#2842])
>      *
>
>         igt@gem_exec_fair@basic-pace@bcs0:
>
>           o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html> ([i915#2842]) +2 similar issues
>      *
>
>         igt@gem_exec_fair@basic-pace@vecs0:
>
>           o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html> ([i915#2842]) +2 similar issues
>      *
>
>         igt@gem_exec_params@no-vebox:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_exec_params@no-vebox.html> ([fdo#109283])
>      *
>
>         igt@gem_pwrite@basic-exhaustion:
>
>           o shard-kbl: NOTRUN -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html> ([i915#2658])
>      *
>
>         igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html> ([i915#4270])
>      *
>
>         igt@gem_userptr_blits@readonly-unsync:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@gem_userptr_blits@readonly-unsync.html> ([i915#3297])
>      *
>
>         igt@gen7_exec_parse@basic-rejected:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen7_exec_parse@basic-rejected.html> ([fdo#109289]) +2 similar issues
>      *
>
>         igt@gen9_exec_parse@cmd-crossing-page:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-page.html> ([i915#2856]) +2 similar issues
>      *
>
>         igt@i915_pm_dc@dc6-psr:
>
>           o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb1/igt@i915_pm_dc@dc6-psr.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_dc@dc6-psr.html> ([i915#454])
>      *
>
>         igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>
>           o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html> ([fdo#109271] / [i915#1937])
>      *
>
>         igt@i915_pm_rpm@dpms-non-lpsp:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@dpms-non-lpsp.html> ([fdo#111644] / [i915#1397] / [i915#2411])
>      *
>
>         igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html> ([fdo#109506] / [i915#2411])
>      *
>
>         igt@i915_suspend@fence-restore-untiled:
>
>           o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl8/igt@i915_suspend@fence-restore-untiled.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl1/igt@i915_suspend@fence-restore-untiled.html> ([i915#180]) +1 similar issue
>      *
>
>         igt@kms_big_fb@linear-16bpp-rotate-90:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html> ([fdo#111614]) +1 similar issue
>      *
>
>         igt@kms_big_fb@linear-32bpp-rotate-0:
>
>           o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html> ([i915#118])
>      *
>
>         igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>
>           o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html> ([fdo#109271] / [i915#3777])
>      *
>
>         igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> ([fdo#109271] / [i915#3777])
>      *
>
>         igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html> ([fdo#111615]) +2 similar issues
>      *
>
>         igt@kms_big_joiner@invalid-modeset:
>
>           o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_big_joiner@invalid-modeset.html> ([fdo#109271]) +19 similar issues
>      *
>
>         igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>           o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html> ([fdo#109271] / [i915#3886]) +1 similar issue
>      *
>
>         igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> ([fdo#109271] / [i915#3886]) +4 similar issues
>      *
>
>         igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>
>           o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html> ([fdo#109271] / [i915#3886])
>      *
>
>         igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html> ([i915#3689]) +6 similar issues
>      *
>
>         igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html> ([i915#3689] / [i915#3886]) +1 similar issue
>      *
>
>         igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>
>           o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html> ([fdo#109271]) +33 similar issues
>      *
>
>         igt@kms_chamelium@hdmi-mode-timings:
>
>           o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html> ([fdo#109271] / [fdo#111827]) +13 similar issues
>      *
>
>         igt@kms_color@pipe-a-ctm-0-75:
>
>           o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html> ([i915#1982]) +2 similar issues
>      *
>
>         igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>
>           o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html> ([fdo#109271] / [fdo#111827])
>      *
>
>         igt@kms_color_chamelium@pipe-b-ctm-limited-range:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html> ([fdo#109284] / [fdo#111827]) +5 similar issues
>      *
>
>         igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html> ([fdo#109271] / [fdo#111827]) +10 similar issues
>      *
>
>         igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>
>           o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html> ([fdo#109271] / [fdo#111827]) +1 similar issue
>      *
>
>         igt@kms_content_protection@atomic:
>
>           o shard-apl: NOTRUN -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_content_protection@atomic.html> ([i915#1319])
>      *
>
>         igt@kms_content_protection@atomic-dpms:
>
>           o shard-kbl: NOTRUN -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_content_protection@atomic-dpms.html> ([i915#1319])
>      *
>
>         igt@kms_content_protection@dp-mst-type-0:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html> ([i915#3116])
>      *
>
>         igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html> ([i915#3359]) +3 similar issues
>      *
>
>         igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html> ([fdo#109279] / [i915#3359]) +7 similar issues
>      *
>
>         igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>
>           o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html> ([fdo#109271]) +281 similar issues
>      *
>
>         igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>
>           o shard-iclb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html> ([fdo#109274] / [fdo#109278])
>      *
>
>         igt@kms_cursor_legacy@pipe-d-torture-bo:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html> ([fdo#109271] / [i915#533])
>      *
>
>         igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html> ([i915#4103])
>      *
>
>         igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html> ([i915#3528])
>      *
>
>         igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>
>           o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html> ([i915#79]) +1 similar issue
>      *
>
>         igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
>           o shard-kbl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html> ([i915#180]) +1 similar issue
>      *
>
>         igt@kms_flip@flip-vs-suspend@a-dp1:
>
>           o shard-apl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html> ([i915#180])
>      *
>
>         igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>
>           o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html> ([i915#2122])
>      *
>
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html> ([fdo#111825]) +26 similar issues
>      *
>
>         igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>
>           o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html> ([i915#2828] / [i915#456])
>      *
>
>         igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>
>           o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html> ([fdo#108145] / [i915#265])
>      *
>
>         igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
>           o shard-apl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html> ([i915#265])
>      *
>
>         igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>
>           o shard-kbl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html> ([fdo#108145] / [i915#265]) +1 similar issue
>      *
>
>         igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>
>           o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html> ([fdo#108145] / [i915#265]) +1 similar issue
>      *
>
>         igt@kms_plane_lowres@pipe-b-tiling-y:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-y.html> ([i915#3536])
>      *
>
>         igt@kms_plane_lowres@pipe-d-tiling-yf:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-yf.html> ([fdo#112054]) +1 similar issue
>      *
>
>         igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>
>           o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html> ([fdo#109271] / [i915#658]) +1 similar issue
>      *
>
>         igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html> ([fdo#109271] / [i915#658]) +3 similar issues
>      *
>
>         igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html> ([i915#2920]) +2 similar issues
>      *
>
>         igt@kms_psr2_su@page_flip:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_psr2_su@page_flip.html> ([i915#1911])
>      *
>
>         igt@kms_psr@psr2_suspend:
>
>          o
>
>             shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr@psr2_suspend.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr@psr2_suspend.html> ([fdo#109441])
>
>          o
>
>             shard-tglb: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr@psr2_suspend.html> ([i915#132] / [i915#3467])
>
>      *
>
>         igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>
>           o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html> ([i915#198] / [i915#2828])
>      *
>
>         igt@kms_vblank@pipe-d-ts-continuation-idle:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html> ([fdo#109271]) +93 similar issues
>      *
>
>         igt@nouveau_crc@pipe-a-ctx-flip-detection:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@nouveau_crc@pipe-a-ctx-flip-detection.html> ([i915#2530]) +2 similar issues
>      *
>
>         igt@perf_pmu@event-wait@rcs0:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@perf_pmu@event-wait@rcs0.html> ([fdo#112283])
>      *
>
>         igt@prime_nv_pcopy@test3_5:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_nv_pcopy@test3_5.html> ([fdo#109291])
>      *
>
>         igt@prime_vgem@fence-write-hang:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_vgem@fence-write-hang.html> ([fdo#109295])
>      *
>
>         igt@sysfs_clients@create:
>
>           o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@sysfs_clients@create.html> ([fdo#109271] / [i915#2994]) +1 similar issue
>      *
>
>         igt@sysfs_clients@fair-0:
>
>           o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@sysfs_clients@fair-0.html> ([i915#2994])
>      *
>
>         igt@sysfs_clients@sema-10:
>
>           o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@sysfs_clients@sema-10.html> ([fdo#109271] / [i915#2994])
>
>
>             Possible fixes
>
>      *
>
>         igt@drm_mm@all@evict:
>
>           o shard-skl: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl2/igt@drm_mm@all@evict.html> ([i915#198]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl4/igt@drm_mm@all@evict.html>
>      *
>
>         igt@gem_exec_fair@basic-none@vecs0:
>
>           o shard-kbl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html>
>      *
>
>         igt@gem_exec_fair@basic-pace@bcs0:
>
>           o shard-iclb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html>
>      *
>
>         igt@gem_exec_fair@basic-pace@vcs1:
>
>           o shard-tglb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>      *
>
>         igt@gem_softpin@noreloc-s3:
>
>           o shard-apl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl8/igt@gem_softpin@noreloc-s3.html> ([i915#180]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@gem_softpin@noreloc-s3.html>
>      *
>
>         igt@i915_pm_dc@dc6-dpms:
>
>           o shard-iclb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html> ([i915#454]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html>
>      *
>
>         igt@i915_suspend@forcewake:
>
>           o shard-skl: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl2/igt@i915_suspend@forcewake.html> ([i915#636]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@i915_suspend@forcewake.html>
>      *
>
>         igt@kms_color@pipe-b-ctm-0-75:
>
>           o shard-skl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html> ([i915#1982]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html>
>      *
>
>         igt@kms_cursor_crc@pipe-a-cursor-suspend:
>
>           o shard-tglb: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html> ([i915#2828] / [i915#456]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>      *
>
>         igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>
>           o shard-kbl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html> ([i915#79]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>      *
>
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>
>           o shard-iclb: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html> ([i915#3701]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>      *
>
>         igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>           o shard-skl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html> ([fdo#108145] / [i915#265]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>      *
>
>         igt@kms_psr@psr2_cursor_plane_move:
>
>           o shard-iclb: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html> ([fdo#109441]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html>
>      *
>
>         igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>           o shard-tglb: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> ([i915#456]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> +1 similar issue
>
>
>             Warnings
>
>      *
>
>         igt@i915_pm_rc6_residency@rc6-fence:
>
>           o shard-iclb: WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html> ([i915#2684]) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html> ([i915#1804] / [i915#2684])
>      *
>
>         igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>
>           o shard-iclb: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html> ([i915#658]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html> ([i915#2920])
>      *
>
>         igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>
>           o shard-iclb: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html> ([i915#2920]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html> ([i915#658]) +2 similar issues
>      *
>
>         igt@kms_psr2_su@page_flip:
>
>           o shard-iclb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr2_su@page_flip.html> ([i915#4148]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_su@page_flip.html> ([fdo#109642] / [fdo#111068] / [i915#658])
>      *
>
>         igt@runner@aborted:
>
>          o
>
>             shard-kbl: (FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl1/igt@runner@aborted.html>) ([i915#3002] / [i915#3363] / [i915#4312]) -> (FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl3/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@runner@aborted.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@runner@aborted.html>) ([i915#1436] / [i915#180] / [i915#3002] / [i915#3363] / [i915#4312])
>
>          o
>
>             shard-apl: (FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl6/igt@runner@aborted.html>, FAIL <http://ht>, [FAIL][140]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#180] / [i915#3002] / [i915#3363] / [i915#4312])
>


--------------177ED80C26B99B8C8C776EDB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Op 22-10-2021 om 13:24 schreef Matthew
      Auld:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAM0jSHO0=pwusWze58FshDEc8K_YprmENK47k7AGYwyvbwdZTA@mail.gmail.com">
      <div dir="ltr">
        <div dir="ltr">
          <div class="gmail_default">On Thu, 21 Oct 2021 at 13:57,
            Patchwork &lt;<a
              href="mailto:patchwork@emeril.freedesktop.org"
              moz-do-not-send="true">patchwork@emeril.freedesktop.org</a>&gt;
            wrote:<br>
          </div>
        </div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote">
            <div>
              <b>Patch Details</b>
              <table>
                <tbody>
                  <tr>
                    <td><b>Series:</b></td>
                    <td>series starting with [01/28] drm/i915: Fix
                      i915_request fence wait semantics</td>
                  </tr>
                  <tr>
                    <td><b>URL:</b></td>
                    <td><a
                        href="https://patchwork.freedesktop.org/series/96115/"
                        target="_blank" moz-do-not-send="true">https://patchwork.freedesktop.org/series/96115/</a></td>
                  </tr>
                  <tr>
                    <td><b>State:</b></td>
                    <td>failure</td>
                  </tr>
                  <tr>
                    <td><b>Details:</b></td>
                    <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html"
                        target="_blank" moz-do-not-send="true">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html</a></td>
                  </tr>
                </tbody>
              </table>
              <h1>CI Bug Log - changes from CI_DRM_10768_full -&gt;
                Patchwork_21402_full</h1>
              <h2>Summary</h2>
              <p><b>FAILURE</b></p>
              <p>Serious unknown changes coming with
                Patchwork_21402_full absolutely need to be<br>
                verified manually.</p>
              <p>If you think the reported changes have nothing to do
                with the changes<br>
                introduced in Patchwork_21402_full, please notify your
                bug team to allow them<br>
                to document this new failure mode, which will reduce
                false positives in CI.</p>
              <h2>Possible new issues</h2>
              <p>Here are the unknown changes that may have been
                introduced in Patchwork_21402_full:</p>
              <h3>IGT changes</h3>
              <h4>Possible regressions</h4>
              <ul>
                <li>
                  <p>igt@gem_linear_blits@normal:</p>
                  <ul>
                    <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk4/igt@gem_linear_blits@normal.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk4/igt@gem_linear_blits@normal.html"
                        target="_blank" moz-do-not-send="true">FAIL</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
                  <ul>
                    <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb5/igt@gem_ppgtt@blt-vs-render-ctxn.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      +1 similar issue</li>
                  </ul>
                </li>
              </ul>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div class="gmail_default">Maarten, do you know if these
              failures are related to this series? Perhaps the last one?<br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Yeah, unfortunately they are. In general, I think the last patch
      is fine, but we hit more ENOSPC errors because of the extra
      locking requirements around eviction.</p>
    <p>Most of these issues don't happen when we remove the pinning in
      execbuf, but already earlier in the series, usuallly with locking
      in eviction paths.<br>
    </p>
    <p>I added some fixes in case it affects the object we are currently
      trying to pin, like calling i915_gem_evict_vm() in vm_fault_gtt
      that already fix a lot of issues, but each remaining ENOSPC error
      like the 3 above requires separate debugging to resolve. I've
      fixed many cases already, it seems those are remaining.</p>
    <p>The fix for gem_mmap_gtt by calling i915_gem_evict_vm() to evict
      the current object seems to be insufficient on ICL, but originally
      other platforms were hit harder by this problem, and there it
      works as intended. :)<br>
    </p>
    <p>Just a few edge cases remaining, fortunately. The majority of
      tests now pass.<br>
    </p>
    <blockquote type="cite"
cite="mid:CAM0jSHO0=pwusWze58FshDEc8K_YprmENK47k7AGYwyvbwdZTA@mail.gmail.com">
      <div dir="ltr">
        <div class="gmail_quote">
          <div> </div>
          <blockquote class="gmail_quote">
            <div>
              <ul>
                <li>
                  <ul>
                  </ul>
                </li>
              </ul>
              <h2>Known issues</h2>
              <p>Here are the changes found in Patchwork_21402_full that
                come from known issues:</p>
              <h3>IGT changes</h3>
              <h4>Issues hit</h4>
              <ul>
                <li>
                  <p>igt@feature_discovery@display-2x:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@feature_discovery@display-2x.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#1839])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_create@create-massive:</p>
                  <ul>
                    <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_create@create-massive.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#3002])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@rcs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#1373])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
                  <ul>
                    <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#180]) +3 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#198])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_ctx_persistence@idempotent:</p>
                  <ul>
                    <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_ctx_persistence@idempotent.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#1099]) +4 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
                  <ul>
                    <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2842])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_fair@basic-pace@bcs0:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2842]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_fair@basic-pace@vecs0:</p>
                  <ul>
                    <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2842]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_params@no-vebox:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_exec_params@no-vebox.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109283])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_pwrite@basic-exhaustion:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html"
                        target="_blank" moz-do-not-send="true">WARN</a>
                      ([i915#2658])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#4270])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_userptr_blits@readonly-unsync:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@gem_userptr_blits@readonly-unsync.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3297])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gen7_exec_parse@basic-rejected:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen7_exec_parse@basic-rejected.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109289]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@gen9_exec_parse@cmd-crossing-page:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-page.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#2856]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_pm_dc@dc6-psr:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb1/igt@i915_pm_dc@dc6-psr.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_dc@dc6-psr.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#454])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#1937])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@dpms-non-lpsp.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#111644] / [i915#1397] / [i915#2411])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109506] / [i915#2411])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_suspend@fence-restore-untiled:</p>
                  <ul>
                    <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl8/igt@i915_suspend@fence-restore-untiled.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl1/igt@i915_suspend@fence-restore-untiled.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#180]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#111614]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
                  <ul>
                    <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#118])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#3777])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#3777])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#111615]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_big_joiner@invalid-modeset:</p>
                  <ul>
                    <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_big_joiner@invalid-modeset.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271]) +19 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#3886]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#3886]) +4 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
                  <ul>
                    <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#3886])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3689]) +6 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3689] / [i915#3886]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271]) +33 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_chamelium@hdmi-mode-timings:</p>
                  <ul>
                    <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_color@pipe-a-ctm-0-75:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#1982]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
                  <ul>
                    <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [fdo#111827])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_content_protection@atomic:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_content_protection@atomic.html"
                        target="_blank" moz-do-not-send="true">TIMEOUT</a>
                      ([i915#1319])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_content_protection@atomic-dpms:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_content_protection@atomic-dpms.html"
                        target="_blank" moz-do-not-send="true">TIMEOUT</a>
                      ([i915#1319])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_content_protection@dp-mst-type-0:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3116])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3359]) +3 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109279] / [i915#3359]) +7 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
                  <ul>
                    <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271]) +281 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
                  <ul>
                    <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109274] / [fdo#109278])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#533])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#4103])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3528])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
                  <ul>
                    <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#79]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#180]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#180])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2122])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#111825]) +26 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#2828] / [i915#456])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
                  <ul>
                    <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([fdo#108145] / [i915#265])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#265])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([fdo#108145] / [i915#265]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([fdo#108145] / [i915#265]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-y.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3536])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-yf.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#112054]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
                  <ul>
                    <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#658]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#658]) +3 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#2920]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_su@page_flip:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_psr2_su@page_flip.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#1911])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr@psr2_suspend:</p>
                  <ul>
                    <li>
                      <p>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr@psr2_suspend.html"
                          target="_blank" moz-do-not-send="true">PASS</a>
                        -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr@psr2_suspend.html"
                          target="_blank" moz-do-not-send="true">SKIP</a>
                        ([fdo#109441])</p>
                    </li>
                    <li>
                      <p>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr@psr2_suspend.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>
                        ([i915#132] / [i915#3467])</p>
                    </li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#198] / [i915#2828])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271]) +93 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@nouveau_crc@pipe-a-ctx-flip-detection.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#2530]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@perf_pmu@event-wait@rcs0:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@perf_pmu@event-wait@rcs0.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#112283])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@prime_nv_pcopy@test3_5:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_nv_pcopy@test3_5.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109291])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@prime_vgem@fence-write-hang:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_vgem@fence-write-hang.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109295])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@sysfs_clients@create:</p>
                  <ul>
                    <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@sysfs_clients@create.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#2994]) +1 similar issue</li>
                  </ul>
                </li>
                <li>
                  <p>igt@sysfs_clients@fair-0:</p>
                  <ul>
                    <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@sysfs_clients@fair-0.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#2994])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@sysfs_clients@sema-10:</p>
                  <ul>
                    <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@sysfs_clients@sema-10.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109271] / [i915#2994])</li>
                  </ul>
                </li>
              </ul>
              <h4>Possible fixes</h4>
              <ul>
                <li>
                  <p>igt@drm_mm@all@evict:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl2/igt@drm_mm@all@evict.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#198]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl4/igt@drm_mm@all@evict.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_fair@basic-none@vecs0:</p>
                  <ul>
                    <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2842]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_fair@basic-pace@bcs0:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2842]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_exec_fair@basic-pace@vcs1:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#2842]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@gem_softpin@noreloc-s3:</p>
                  <ul>
                    <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl8/igt@gem_softpin@noreloc-s3.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#180]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@gem_softpin@noreloc-s3.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_pm_dc@dc6-dpms:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#454]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@i915_suspend@forcewake:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl2/igt@i915_suspend@forcewake.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#636]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@i915_suspend@forcewake.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_color@pipe-b-ctm-0-75:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html"
                        target="_blank" moz-do-not-send="true">DMESG-WARN</a>
                      ([i915#1982]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#2828] / [i915#456]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
                  <ul>
                    <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#79]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#3701]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
                  <ul>
                    <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([fdo#108145] / [i915#265]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr@psr2_cursor_plane_move:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109441]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html"
                        target="_blank" moz-do-not-send="true">PASS</a></li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
                  <ul>
                    <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"
                        target="_blank" moz-do-not-send="true">INCOMPLETE</a>
                      ([i915#456]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"
                        target="_blank" moz-do-not-send="true">PASS</a>
                      +1 similar issue</li>
                  </ul>
                </li>
              </ul>
              <h4>Warnings</h4>
              <ul>
                <li>
                  <p>igt@i915_pm_rc6_residency@rc6-fence:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html"
                        target="_blank" moz-do-not-send="true">WARN</a>
                      ([i915#2684]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html"
                        target="_blank" moz-do-not-send="true">WARN</a>
                      ([i915#1804] / [i915#2684])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#658]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#2920])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#2920]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([i915#658]) +2 similar issues</li>
                  </ul>
                </li>
                <li>
                  <p>igt@kms_psr2_su@page_flip:</p>
                  <ul>
                    <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr2_su@page_flip.html"
                        target="_blank" moz-do-not-send="true">FAIL</a>
                      ([i915#4148]) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_su@page_flip.html"
                        target="_blank" moz-do-not-send="true">SKIP</a>
                      ([fdo#109642] / [fdo#111068] / [i915#658])</li>
                  </ul>
                </li>
                <li>
                  <p>igt@runner@aborted:</p>
                  <ul>
                    <li>
                      <p>shard-kbl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@runner@aborted.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>,
                        <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl1/igt@runner@aborted.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>)
                        ([i915#3002] / [i915#3363] / [i915#4312]) -&gt;
                        (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl3/igt@runner@aborted.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>,
                        <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@runner@aborted.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>,
                        <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@runner@aborted.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>)
                        ([i915#1436] / [i915#180] / [i915#3002] /
                        [i915#3363] / [i915#4312])</p>
                    </li>
                    <li>
                      <p>shard-apl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl6/igt@runner@aborted.html"
                          target="_blank" moz-do-not-send="true">FAIL</a>,
                        <a href="http://ht" target="_blank"
                          moz-do-not-send="true">FAIL</a>, [FAIL][140])
                        ([i915#180] / [i915#1814] / [i915#3002] /
                        [i915#3363] / [i915#4312]) -&gt; ([FAIL][141],
                        [FAIL][142], [FAIL][143], [FAIL][144])
                        ([i915#180] / [i915#3002] / [i915#3363] /
                        [i915#4312])</p>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------177ED80C26B99B8C8C776EDB--
