Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F06DD4D173D
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 13:27:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 398C910E24A;
	Tue,  8 Mar 2022 12:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F379C10E28B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 12:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646742455; x=1678278455;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=plwk5A1eq9GYy5+lB1RwYIWIEWWRV0XuMBMDqEnRCaw=;
 b=dYRZGjUuk3HM/EqWDnAwbqOerfHnhShz1zsbuzw/Orc6SY4iBUfGk2e2
 dgSIG+CsPmW2/fBWCBPuem6xOBgGz5YySksOjOPgXSDzRhAKzJHeb1T/X
 7oaCMlIRwUr4UKiEMkpFmDDxATqonGn0OUsefLXN2lqWpUwjvTUqeBQJ2
 S4rmcFcsCn+hAl6txGARfNFTtFFEUtPOM/GTlw1SeOIaNNQtP9Y3ATlg1
 6Dg2r4ff+dPo4z5dzF555NK2smBpnkizyxfPtSQ5MaG3KT/Wyql2WrPFL
 yLQF6y/Oj7g8Oc77U7tJzO2GjPtkpwJoLyTY+cSh3x10ph3NzhBeZYHoZ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="252242605"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="252242605"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:27:34 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="537551161"
Received: from mrynekx-mobl3.ger.corp.intel.com (HELO [10.252.3.128])
 ([10.252.3.128])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:27:33 -0800
Message-ID: <6fc5818e-cce0-6e33-c3f4-ab6428a29438@intel.com>
Date: Tue, 8 Mar 2022 12:27:31 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220303100229.839282-1-matthew.auld@intel.com>
 <164667217100.12770.10265985831247150334@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164667217100.12770.10265985831247150334@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gtt=3A_reduce_overzealous_alignment_constraints_for_GGTT_?=
 =?utf-8?b?KHJldjMp?=
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

On 07/03/2022 16:56, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/gtt: reduce overzealous alignment constraints for 
> GGTT (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/100991/ 
> <https://patchwork.freedesktop.org/series/100991/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11332_full -> Patchwork_22497_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22497_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22497_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (13 -> 13)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22497_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_softpin@safe-alignment:
> 
>       o shard-glk: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-glk3/igt@gem_softpin@safe-alignment.html>
>   *
> 
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb5/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-b-edp-1-scaler-with-clipping-clamping.html>
> 

Unrelated failure. Patch can only impact DG2.

> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-6/igt@i915_pm_lpsp@screens-disabled.html>
>         ([i915#1902]) -> (INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-5/igt@i915_pm_lpsp@screens-disabled.html>,
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-4/igt@i915_pm_lpsp@screens-disabled.html>)
>         ([i915#1902])
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22497_full that come from known 
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
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         ([i915#2842]) +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_params@secure-non-root:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@gem_exec_params@secure-non-root.html>
>         ([fdo#112283])
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl10/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@verify:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@gem_lmem_swapping@verify.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@gem_lmem_swapping@verify-random.html>
>         ([i915#4613])
>   *
> 
>     igt@gem_media_vme:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl10/igt@gem_media_vme.html>
>         ([fdo#109271]) +132 similar issues
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o
> 
>         shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@gem_userptr_blits@input-checking.html>
>         ([i915#4991])
> 
>       o
> 
>         shard-iclb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@gem_userptr_blits@input-checking.html>
>         ([i915#4991])
> 
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@gem_userptr_blits@unsync-unmap.html>
>         ([i915#3297])
>   *
> 
>     igt@gem_workarounds@suspend-resume-context:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl6/igt@gem_workarounds@suspend-resume-context.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl7/igt@gem_workarounds@suspend-resume-context.html>
>         ([i915#180]) +3 similar issues
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html>
>         ([i915#180]) +4 similar issues
>   *
> 
>     igt@gen9_exec_parse@cmd-crossing-page:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@gen9_exec_parse@cmd-crossing-page.html>
>         ([i915#2856])
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb7/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>   *
> 
>     igt@i915_query@query-topology-known-pci-ids:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@i915_query@query-topology-known-pci-ids.html>
>         ([fdo#109303])
>   *
> 
>     igt@kms_big_fb@linear-16bpp-rotate-90:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         ([i915#3743])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_joiner@basic:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_big_joiner@basic.html>
>         ([i915#2705])
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl9/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +8 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl3/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109278] / [i915#3886]) +1 similar issue
> 
>   *
> 
>     igt@kms_chamelium@dp-crc-multiple:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_chamelium@dp-crc-multiple.html>
>         ([fdo#109284] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-blue-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_color@pipe-d-ctm-blue-to-red.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-max:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl3/igt@kms_color_chamelium@pipe-c-ctm-max.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-0-5:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-degamma:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +9 similar issues
>   *
> 
>     igt@kms_content_protection@type1:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_content_protection@type1.html>
>         ([fdo#109300] / [fdo#111066]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html>
>         ([fdo#109279] / [i915#3359])
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-dpms:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-dpms.html>
>         ([fdo#109278]) +11 similar issues
>   *
> 
>     igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@cursor-vs-flip-atomic:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html>
>         ([i915#1982])
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#636])
>   *
> 
>     igt@kms_flip@2x-absolute-wf_vblank-interruptible:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html>
>         ([fdo#109274])
>   *
> 
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-tglb3/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html>
>         ([fdo#109274] / [fdo#111825])
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>         ([i915#2122]) +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html>
>         ([i915#2587])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html>
>         ([i915#1888] / [i915#2546])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html>
>         ([fdo#109271]) +46 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         ([fdo#109271]) +91 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html>
>         ([fdo#109280]) +9 similar issues
>   *
> 
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         ([i915#1839])
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl8/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@kms_psr2_su@page_flip-p010.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html>
>         ([fdo#109441])
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-c.html>
>         ([i915#5030]) +2 similar issues
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl9/igt@kms_sysfs_edid_timing.html>
>         ([IGT#2])
>   *
> 
>     igt@kms_tv_load_detect@load-detect:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-tglb3/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl7/igt@kms_writeback@writeback-pixel-formats.html>
>         ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@nouveau_crc@pipe-a-source-outp-complete:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@nouveau_crc@pipe-a-source-outp-complete.html>
>         ([i915#2530])
>   *
> 
>     igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html>
>         ([fdo#109278] / [i915#2530])
>   *
> 
>     igt@prime_nv_api@i915_nv_import_vs_close:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@prime_nv_api@i915_nv_import_vs_close.html>
>         ([fdo#109291]) +1 similar issue
>   *
> 
>     igt@sysfs_clients@busy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb7/igt@sysfs_clients@busy.html>
>         ([i915#2994])
>   *
> 
>     igt@sysfs_clients@fair-7:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl7/igt@sysfs_clients@fair-7.html>
>         ([fdo#109271] / [i915#2994])
>   *
> 
>     igt@sysfs_clients@pidname:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl10/igt@sysfs_clients@pidname.html>
>         ([fdo#109271] / [i915#2994])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vecs0:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>         ([i915#4939]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>   *
> 
>     igt@gem_ctx_persistence@many-contexts:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html>
>         ([i915#2410]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@gem_ctx_persistence@many-contexts.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         ([i915#4936]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl7/igt@i915_module_load@reload-with-fault-injection.html>
>         +1 similar issue
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html>
>         ([i915#1397]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html>
>         +1 similar issue
>   *
> 
>     igt@kms_big_fb@linear-16bpp-rotate-180:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglu-3/igt@kms_big_fb@linear-16bpp-rotate-180.html>
>         ([i915#402]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-tglu-1/igt@kms_big_fb@linear-16bpp-rotate-180.html>
>   *
> 
>     igt@kms_big_fb@y-tiled-16bpp-rotate-0:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html>
>         +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         ([i915#1845] / [i915#4098]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglu-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html>
>         ([i915#5046]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-tglu-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html>
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-25:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_color@pipe-a-ctm-0-25.html>
>         ([i915#1149] / [i915#1849] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-25.html>
>         +2 similar issues
>   *
> 
>     igt@kms_concurrent@pipe-b:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_concurrent@pipe-b.html>
>         ([i915#1845] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_concurrent@pipe-b.html>
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html>
>         ([fdo#112022]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html>
>         +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html>
>         ([fdo#112022] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html>
>         +3 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html>
>         ([fdo#111825] / [i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html>
>         +3 similar issues
>   *
> 
>     igt@kms_cursor_legacy@pipe-a-single-bo:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@kms_cursor_legacy@pipe-a-single-bo.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_cursor_legacy@pipe-a-single-bo.html>
>         +1 similar issue
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html>
>         ([fdo#111314]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         ([i915#3701]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         ([i915#1849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         +32 similar issues
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>         +2 similar issues
>   *
> 
>     igt@kms_invalid_mode@bad-vsync-start:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_invalid_mode@bad-vsync-start.html>
>         ([i915#4278]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-start.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22497/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         +3 similar issues
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>         ([i915#1849] / [i915#3558]) -> PASS <https://in> +1 similar issue
> 
