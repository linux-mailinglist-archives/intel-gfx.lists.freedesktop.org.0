Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FD75260C5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 13:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00B910E76F;
	Fri, 13 May 2022 11:11:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2C110E7A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 11:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652440304; x=1683976304;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to;
 bh=T+YaUQ4R6S1pkNeKhTzObKS21GSUaoWYeZyAUtuN3xI=;
 b=NtKtrUKdWqraUvK1s2ds0RzSWkKTzdwoxGtEHWZP+L/9bon4Qm1MaC+L
 Z/VfQzUyg4deJkQWx+gxOxCQaP5Ea54ZQwmWpYZN5oODGVqWEklaPbQA1
 daMZc7QVyUHoC0orYfnqGtTJ9+mL/zBK1r1vdh4HS8bjlsOCr/U5B2vn9
 Q/x9bNRQsaoskUqZ9DBHpCoz7Uc4GTXJ9LGY2hkXj/25rN8SbJoUntwFV
 U6l9yTwo38rJqj+lOxRTVRtTfSOC0JFJ12ElROBFI7jJ2QOGw9+URaWWh
 tpZ9iByWfHdlbxh0yLAHNLkyNzSJBiwl2uRQOQ8ddauNplT4byZ5zKzrm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="269114826"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; 
 d="scan'208,217";a="269114826"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 04:11:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; 
 d="scan'208,217";a="595172874"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.33.27])
 ([10.252.33.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 04:11:26 -0700
Content-Type: multipart/alternative;
 boundary="------------xv0Vn1AaukgSWf8YUQAI6Kij"
Message-ID: <6cd06f98-4374-7cd0-314d-cbed4df64279@linux.intel.com>
Date: Fri, 13 May 2022 13:11:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20220513084754.10601-1-nirmoy.das@intel.com>
 <165243968409.9638.8499264393528164988@emeril.freedesktop.org>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <165243968409.9638.8499264393528164988@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_Tile4_tiling_mode_=28rev3=29?=
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--------------xv0Vn1AaukgSWf8YUQAI6Kij
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 5/13/2022 1:01 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: Enable Tile4 tiling mode (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/103881/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11646_full -> Patchwork_103881v3_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_103881v3_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_103881v3_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (11 -> 11)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_103881v3_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_cursor_crc@pipe-a-cursor-dpms:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html>
>

This is unrelated as this patch only changes igt@i915_selftest@live@client


Regards,

Nirmoy

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_103881v3_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_fair@basic-deadline:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl6/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>  *
>
>     igt@gem_exec_fair@basic-none@vcs0:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace@vecs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +2
>         similar issues
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-wb:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@heavy-random:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_lmem_swapping@heavy-random.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-random:
>
>      o
>
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>
>      o
>
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_lmem_swapping@heavy-verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2
>         similar issues
>
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_pxp@display-protected-crc:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_pxp@display-protected-crc.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>  *
>
>     igt@gem_userptr_blits@unsync-overlap:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_userptr_blits@unsync-overlap.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/igt@gen9_exec_parse@allowed-single.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
>  *
>
>     igt@gen9_exec_parse@bb-start-cmd:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gen9_exec_parse@bb-start-cmd.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (fdo#110892 <https://bugs.freedesktop.org/show_bug.cgi?id=110892>)
>  *
>
>     igt@i915_pm_rpm@modeset-pc8-residency-stress:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html>
>         (fdo#109506
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109506> /
>         i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387 <https://gitlab.freedesktop.org/drm/intel/issues/4387>)
>  *
>
>     igt@i915_query@query-topology-unsupported:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_query@query-topology-unsupported.html>
>         (fdo#109302 <https://bugs.freedesktop.org/show_bug.cgi?id=109302>)
>  *
>
>     igt@i915_suspend@fence-restore-tiled2untiled:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition.html>
>         (i915#1769 <https://gitlab.freedesktop.org/drm/intel/issues/1769>)
>  *
>
>     igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +53
>         similar issues
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (fdo#110723
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +2
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>         (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689>)
>  *
>
>     igt@kms_chamelium@dp-hpd-storm-disable:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_chamelium@dp-hpd-storm-disable.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>  *
>
>     igt@kms_chamelium@vga-hpd-after-suspend:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_chamelium@vga-hpd-after-suspend.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_chamelium@vga-hpd-with-enabled-mode:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_chamelium@vga-hpd-with-enabled-mode.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color@pipe-d-ctm-0-5:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +74
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-a-ctm-negative:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-negative.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>  *
>
>     igt@kms_color_chamelium@pipe-b-ctm-max:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-max.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>  *
>
>     igt@kms_color_chamelium@pipe-c-ctm-max:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-max.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2
>         similar issues
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_content_protection@lic.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html>
>         (i915#3319
>         <https://gitlab.freedesktop.org/drm/intel/issues/3319>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1
>         similar issue
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +9
>         similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +27
>         similar issues
>  *
>
>     igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html>
>         (fdo#109279
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109279> /
>         i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>  *
>
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>  *
>
>     igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>  *
>
>     igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +8
>         similar issues
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html>
>         (i915#4939 <https://gitlab.freedesktop.org/drm/intel/issues/4939>)
>  *
>
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +3
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html>
>         (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html>
>         (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +1
>         similar issue
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +5
>         similar issues
>  *
>
>     igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +4
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1
>         similar issue
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> /
>         i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>  *
>
>     igt@kms_plane_lowres@pipe-b-tiling-none:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_plane_lowres@pipe-b-tiling-none.html>
>         (i915#3536 <https://gitlab.freedesktop.org/drm/intel/issues/3536>)
>  *
>
>     igt@kms_plane_lowres@pipe-d-tiling-4:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-4.html>
>         (i915#5288 <https://gitlab.freedesktop.org/drm/intel/issues/5288>)
>  *
>
>     igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb7/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +2
>         similar issues
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_primary_mmap_cpu:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_writeback@writeback-fb-id:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_writeback@writeback-fb-id.html>
>         (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@nouveau_crc@pipe-c-source-outp-inactive:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html>
>         (i915#2530 <https://gitlab.freedesktop.org/drm/intel/issues/2530>)
>  *
>
>     igt@perf@polling:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@perf@polling.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +46
>         similar issues
>  *
>
>     igt@prime_nv_pcopy@test3_1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_nv_pcopy@test3_1.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>  *
>
>     igt@prime_nv_test@i915_nv_sharing:
>
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@prime_nv_test@i915_nv_sharing.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>  *
>
>     igt@prime_vgem@fence-write-hang:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_vgem@fence-write-hang.html>
>         (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295>)
>  *
>
>     igt@syncobj_timeline@invalid-transfer-non-existent-point:
>
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html>
>         (i915#5098 <https://gitlab.freedesktop.org/drm/intel/issues/5098>)
>  *
>
>     igt@sysfs_clients@fair-3:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@sysfs_clients@fair-3.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         (i915#4793
>         <https://gitlab.freedesktop.org/drm/intel/issues/4793>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_exec_whisper@basic-fds-forked-all:
>
>       o {shard-tglu}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglu-6/igt@gem_exec_whisper@basic-fds-forked-all.html>
>         (i915#5966
>         <https://gitlab.freedesktop.org/drm/intel/issues/5966>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglu-3/igt@gem_exec_whisper@basic-fds-forked-all.html>
>  *
>
>     igt@i915_suspend@debugfs-reader:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl7/igt@i915_suspend@debugfs-reader.html>
>         (i915#4939
>         <https://gitlab.freedesktop.org/drm/intel/issues/4939>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@i915_suspend@debugfs-reader.html>
>  *
>
>     igt@i915_suspend@forcewake:
>
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl8/igt@i915_suspend@forcewake.html>
>         (i915#4817
>         <https://gitlab.freedesktop.org/drm/intel/issues/4817>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@i915_suspend@forcewake.html>
>  *
>
>     igt@kms_cursor_crc@pipe-a-cursor-suspend:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>  *
>
>     igt@kms_fbcon_fbt@fbc-suspend:
>
>       o shard-apl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html>
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>         +3 similar issues
>  *
>
>     igt@kms_flip@flip-vs-suspend@a-dp1:
>
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         +1 similar issue
>  *
>
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>
>       o shard-tglb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html>
>         +2 similar issues
>  *
>
>     igt@kms_psr@psr2_no_drrs:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@kms_psr@psr2_no_drrs.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_psr@psr2_no_drrs.html>
>  *
>
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
>       o shard-tglb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519
>         <https://gitlab.freedesktop.org/drm/intel/issues/5519>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>  *
>
>     igt@perf@polling-parameterized:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@perf@polling-parameterized.html>
>         (i915#5639
>         <https://gitlab.freedesktop.org/drm/intel/issues/5639>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@perf@polling-parameterized.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_exec_balancer@parallel-bb-first:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#5614 <https://gitlab.freedesktop.org/drm/intel/issues/5614>)
>  *
>
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
>
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#5614
>         <https://gitlab.freedesktop.org/drm/intel/issues/5614>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@page_flip-p010:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#5939 <https://gitlab.freedesktop.org/drm/intel/issues/5939>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11646 -> Patchwork_103881v3
>
> CI-20190529: 20190529
> CI_DRM_11646: 8e5417afe580e2eac869c09e1454d174078523fd @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_103881v3: 8e5417afe580e2eac869c09e1454d174078523fd @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------xv0Vn1AaukgSWf8YUQAI6Kij
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/13/2022 1:01 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:165243968409.9638.8499264393528164988@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: Enable Tile4 tiling mode (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/103881/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/103881/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11646_full -&gt;
        Patchwork_103881v3_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_103881v3_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_103881v3_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 11)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_103881v3_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_cursor_crc@pipe-a-cursor-dpms:
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-dpms.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-dpms.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p><br>
    </p>
    <p>This is unrelated as this patch only changes
      igt@i915_selftest@live@client</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite"
      cite="mid:165243968409.9638.8499264393528164988@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_103881v3_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_fair@basic-deadline:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl6/igt@gem_exec_fair@basic-deadline.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2846"
                moz-do-not-send="true">i915#2846</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none@vcs0:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@vecs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@gem_exec_fair@basic-pace@vecs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-random:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_lmem_swapping@heavy-random.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-random:</p>
          <ul>
            <li>
              <p>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@gem_lmem_swapping@heavy-verify-random.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                  moz-do-not-send="true">i915#4613</a>)</p>
            </li>
            <li>
              <p>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_lmem_swapping@heavy-verify-random.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                  moz-do-not-send="true">i915#4613</a>) +2 similar
                issues</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@gem_pwrite@basic-exhaustion.html"
                moz-do-not-send="true">WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2658"
                moz-do-not-send="true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@display-protected-crc:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_pxp@display-protected-crc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4270"
                moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-overlap:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gem_userptr_blits@unsync-overlap.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@gen9_exec_parse@allowed-single.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5566"
                moz-do-not-send="true">i915#5566</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/716"
                moz-do-not-send="true">i915#716</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-cmd:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@gen9_exec_parse@bb-start-cmd.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2527"
                moz-do-not-send="true">i915#2527</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2856"
                moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_rpm@modeset-non-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=110892"
                moz-do-not-send="true">fdo#110892</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109506"
                moz-do-not-send="true">fdo#109506</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2411"
                moz-do-not-send="true">i915#2411</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4387"
                moz-do-not-send="true">i915#4387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@query-topology-unsupported:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@i915_query@query-topology-unsupported.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109302"
                moz-do-not-send="true">fdo#109302</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/igt@i915_suspend@fence-restore-tiled2untiled.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk3/igt@i915_suspend@fence-restore-tiled2untiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1769"
                moz-do-not-send="true">i915#1769</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +53 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=110723"
                moz-do-not-send="true">fdo#110723</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3886"
                moz-do-not-send="true">i915#3886</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3689"
                moz-do-not-send="true">i915#3689</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_chamelium@dp-hpd-storm-disable.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_chamelium@vga-hpd-after-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109284"
                moz-do-not-send="true">fdo#109284</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_chamelium@vga-hpd-with-enabled-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@pipe-d-ctm-0-5:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_color@pipe-d-ctm-0-5.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +74 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_color_chamelium@pipe-a-ctm-negative.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-max.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109284"
                moz-do-not-send="true">fdo#109284</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-max.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111827"
                moz-do-not-send="true">fdo#111827</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_content_protection@lic.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1319"
                moz-do-not-send="true">i915#1319</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3319"
                moz-do-not-send="true">i915#3319</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109278"
                moz-do-not-send="true">fdo#109278</a>) +9 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +27 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109279"
                moz-do-not-send="true">fdo#109279</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3359"
                moz-do-not-send="true">i915#3359</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2346"
                moz-do-not-send="true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-pwrite-4tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5287"
                moz-do-not-send="true">i915#5287</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5287"
                moz-do-not-send="true">i915#5287</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109274"
                moz-do-not-send="true">fdo#109274</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111825"
                moz-do-not-send="true">fdo#111825</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/79"
                moz-do-not-send="true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4939"
                moz-do-not-send="true">i915#4939</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2587"
                moz-do-not-send="true">i915#2587</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2587"
                moz-do-not-send="true">i915#2587</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109280"
                moz-do-not-send="true">fdo#109280</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109280"
                moz-do-not-send="true">fdo#109280</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111825"
                moz-do-not-send="true">fdo#111825</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109289"
                moz-do-not-send="true">fdo#109289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=108145"
                moz-do-not-send="true">fdo#108145</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/265"
                moz-do-not-send="true">i915#265</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-b-tiling-none:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_plane_lowres@pipe-b-tiling-none.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3536"
                moz-do-not-send="true">i915#3536</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_lowres@pipe-d-tiling-4:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-4.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5288"
                moz-do-not-send="true">i915#5288</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111615"
                moz-do-not-send="true">fdo#111615</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb7/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5176"
                moz-do-not-send="true">i915#5176</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-kbl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@kms_setmode@basic-clone-single-crtc.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_writeback@writeback-fb-id.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2530"
                moz-do-not-send="true">i915#2530</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@perf@polling.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +46 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_pcopy@test3_1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_nv_pcopy@test3_1.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109291"
                moz-do-not-send="true">fdo#109291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_test@i915_nv_sharing:</p>
          <ul>
            <li>shard-tglb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@prime_nv_test@i915_nv_sharing.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109291"
                moz-do-not-send="true">fdo#109291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-write-hang:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@prime_vgem@fence-write-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@syncobj_timeline@invalid-transfer-non-existent-point.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5098"
                moz-do-not-send="true">i915#5098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@fair-3:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@sysfs_clients@fair-3.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2994"
                moz-do-not-send="true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4793"
                moz-do-not-send="true">i915#4793</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl8/igt@gem_ctx_isolation@preservation-s3@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
          <ul>
            <li>{shard-tglu}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglu-6/igt@gem_exec_whisper@basic-fds-forked-all.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5966"
                moz-do-not-send="true">i915#5966</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglu-3/igt@gem_exec_whisper@basic-fds-forked-all.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@debugfs-reader:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl7/igt@i915_suspend@debugfs-reader.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4939"
                moz-do-not-send="true">i915#4939</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl6/igt@i915_suspend@debugfs-reader.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@forcewake:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl8/igt@i915_suspend@forcewake.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4817"
                moz-do-not-send="true">i915#4817</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@i915_suspend@forcewake.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"
                moz-do-not-send="true">INCOMPLETE</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@fbc-suspend:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-glk2/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
          <ul>
            <li>shard-apl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html"
                moz-do-not-send="true">PASS</a> +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
          <ul>
            <li>shard-kbl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html"
                moz-do-not-send="true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">INCOMPLETE</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5235"
                moz-do-not-send="true">i915#5235</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_no_drrs:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@kms_psr@psr2_no_drrs.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109441"
                moz-do-not-send="true">fdo#109441</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_psr@psr2_no_drrs.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
          <ul>
            <li>shard-tglb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5519"
                moz-do-not-send="true">i915#5519</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5519"
                moz-do-not-send="true">i915#5519</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@polling-parameterized:</p>
          <ul>
            <li>shard-skl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-skl2/igt@perf@polling-parameterized.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5639"
                moz-do-not-send="true">i915#5639</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-skl10/igt@perf@polling-parameterized.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-bb-first:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb4/igt@gem_exec_balancer@parallel-bb-first.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5614"
                moz-do-not-send="true">i915#5614</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5614"
                moz-do-not-send="true">i915#5614</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4525"
                moz-do-not-send="true">i915#4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2920"
                moz-do-not-send="true">i915#2920</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-p010:</p>
          <ul>
            <li>shard-iclb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-iclb6/igt@kms_psr2_su@page_flip-p010.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109642"
                moz-do-not-send="true">fdo#109642</a> / <a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=111068"
                moz-do-not-send="true">fdo#111068</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/658"
                moz-do-not-send="true">i915#658</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5939"
                moz-do-not-send="true">i915#5939</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-apl: (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl7/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl1/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl2/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl6/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11646/shard-apl8/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>) (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                moz-do-not-send="true">i915#3002</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                moz-do-not-send="true">i915#4312</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                moz-do-not-send="true">i915#5257</a>) -&gt; (<a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl6/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl3/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl4/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>, <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103881v3/shard-apl8/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a>) (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/180"
                moz-do-not-send="true">i915#180</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3002"
                moz-do-not-send="true">i915#3002</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4312"
                moz-do-not-send="true">i915#4312</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5257"
                moz-do-not-send="true">i915#5257</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11646 -&gt; Patchwork_103881v3</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11646: 8e5417afe580e2eac869c09e1454d174078523fd @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_6471: 1d6816f1200520f936a799b7b0ef2e6f396abb16 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_103881v3: 8e5417afe580e2eac869c09e1454d174078523fd @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------xv0Vn1AaukgSWf8YUQAI6Kij--
