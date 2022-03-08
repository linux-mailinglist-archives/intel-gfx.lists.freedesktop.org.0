Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0974D1738
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 13:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6E910E246;
	Tue,  8 Mar 2022 12:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5AC610E246
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 12:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646742393; x=1678278393;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=GgMfBMJU8vUhHUig1jUnlsKRZIWZA+SS3mvDGlcugp4=;
 b=BDpnOQVX39bqwcdEnpZG3JoLzStgZghTm/ZyZnAsI7W7LUFDZkcfH2h8
 n5ZxTOtyxdYlitf+ifz+vafPwIbnCBg3b64el55LVSktTX2q1gdP6KwWl
 jLNyqwQYKNZiO3Yms7Vyx5a8WYvmwHJ+QcfFSgSEtWETHBCZyQ9kcbyYs
 33SKcvhJnjOWgALYo+Lu21rPxO9fc5yv1RyzSvD/r96TbTd8pINjOQVV8
 9nkaRMjItjwtSvKwLt/nb/gwlJauXmN1TH/Zr7fFWCmcgk1STTgcWZZhc
 kkA7Sr9CCLBW/jiDM6QcOyAu2xxuX0/KODeYAah5qXID6ejcFJiYtKZE3 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="317900371"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="317900371"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:26:32 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="537550892"
Received: from mrynekx-mobl3.ger.corp.intel.com (HELO [10.252.3.128])
 ([10.252.3.128])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 04:26:31 -0800
Message-ID: <e9d7b9d9-8754-bab3-9a19-227114b0d3dd@intel.com>
Date: Tue, 8 Mar 2022 12:26:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220202173154.3758970-1-matthew.auld@intel.com>
 <164667554681.12769.17165774051491936253@emeril.freedesktop.org>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <164667554681.12769.17165774051491936253@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_opportunistically_apply_ALLOC=5FCONTIGIOUS_=28rev2=29?=
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

On 07/03/2022 17:52, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: opportunistically apply ALLOC_CONTIGIOUS (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/99631/ 
> <https://patchwork.freedesktop.org/series/99631/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11332_full -> Patchwork_22498_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22498_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22498_full, please notify your bug team to allow 
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
> Patchwork_22498_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglb3/igt@kms_plane@plane-position-hole@pipe-b-planes.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb8/igt@kms_plane@plane-position-hole@pipe-b-planes.html>
> 
> 

Unrelated failure. Patch only has potential impact of dgpu.


>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@gem_exec_parallel@contexts@vecs0:
>       o {shard-rkl}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-2/igt@gem_exec_parallel@contexts@vecs0.html>
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-4/igt@gem_exec_parallel@contexts@vecs0.html>,
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-5/igt@gem_exec_parallel@contexts@vecs0.html>)
>         +1 similar issue
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22498_full that come from known 
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
>     igt@feature_discovery@display-3x:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@feature_discovery@display-3x.html>
>         ([fdo#109271]) +40 similar issues
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb7/igt@gem_eio@unwedge-stress.html>
>         -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb7/igt@gem_eio@unwedge-stress.html>
>         ([i915#2481] / [i915#3070])
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         ([i915#4525])
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb6/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#3371])
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846])
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl3/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
>   *
> 
>     igt@gem_lmem_swapping@heavy-multi:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@gem_lmem_swapping@heavy-multi.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@verify:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl3/igt@gem_lmem_swapping@verify.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
>   *
> 
>     igt@gem_spin_batch@user-each:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl6/igt@gem_spin_batch@user-each.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl8/igt@gem_spin_batch@user-each.html>
>         ([i915#2898])
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl3/igt@gem_userptr_blits@input-checking.html>
>         ([i915#4991])
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl2/igt@gen9_exec_parse@allowed-all.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl4/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#1436] / [i915#716])
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-180:
> 
>       o shard-glk: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html>
>         ([i915#118])
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         ([i915#3743]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl9/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +7 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html>
>         ([fdo#109278]) +5 similar issues
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_chamelium@dp-hpd-for-each-pipe:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_chamelium@dp-hpd-for-each-pipe.html>
>         ([fdo#109284] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-max:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@kms_color_chamelium@pipe-a-ctm-max.html>
>         ([fdo#109271] / [fdo#111827]) +4 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-0-5:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-5.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-degamma:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_content_protection@srm.html>
>         ([fdo#109300] / [fdo#111066])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html>
>         ([fdo#109279] / [i915#3359])
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>         ([i915#2346] / [i915#533])
>   *
> 
>     igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>         ([i915#3528])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         ([i915#180] / [i915#1982])
>   *
> 
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html>
>         ([fdo#109274] / [fdo#111825])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html>
>         ([i915#3701])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-plflip-blt.html>
>         ([fdo#109280] / [fdo#111825])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html>
>         ([fdo#109271]) +130 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html>
>         ([fdo#109280]) +4 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html>
>         ([fdo#109271]) +67 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +2 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html>
>         ([i915#265])
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk6/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         ([fdo#109271] / [i915#658]) +1 similar issue
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_psr2_su@page_flip-p010.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_no_drrs:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@kms_psr@psr2_no_drrs.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb8/igt@kms_psr@psr2_no_drrs.html>
>         ([fdo#109441]) +1 similar issue
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl9/igt@kms_sysfs_edid_timing.html>
>         ([IGT#2])
>   *
> 
>     igt@kms_tv_load_detect@load-detect:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb5/igt@kms_tv_load_detect@load-detect.html>
>         ([fdo#109309])
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl1/igt@kms_writeback@writeback-pixel-formats.html>
>         ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@sysfs_clients@create:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@sysfs_clients@create.html>
>         ([i915#2994])
>   *
> 
>     igt@sysfs_clients@fair-7:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl1/igt@sysfs_clients@fair-7.html>
>         ([fdo#109271] / [i915#2994])
>   *
> 
>     igt@sysfs_clients@recycle-many:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb5/igt@sysfs_clients@recycle-many.html>
>         ([i915#2994])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl1/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#4547]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl10/igt@gem_exec_capture@pi@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html>
>         ([i915#2846]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o
> 
>         shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
> 
>       o
> 
>         {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
> 
>   *
> 
>     igt@gem_exec_schedule@deep@rcs0:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@gem_exec_schedule@deep@rcs0.html>
>         ([i915#5080]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-5/igt@gem_exec_schedule@deep@rcs0.html>
>   *
> 
>     igt@gem_exec_whisper@basic-queues-forked-all:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html>
>         +1 similar issue
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o {shard-dg1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         ([i915#4936]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html>
>         +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-0:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglu-1/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>         ([i915#402]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglu-2/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>         +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglu-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html>
>         ([i915#5046]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglu-3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html>
>   *
> 
>     igt@kms_cursor_legacy@pipe-a-single-bo:
> 
>       o {shard-rkl}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-5/igt@kms_cursor_legacy@pipe-a-single-bo.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-2/igt@kms_cursor_legacy@pipe-a-single-bo.html>
>         +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@pipe-c-forked-bo:
> 
>       o {shard-rkl}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-1/igt@kms_cursor_legacy@pipe-c-forked-bo.html>
>         ([i915#4070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-5/igt@kms_cursor_legacy@pipe-c-forked-bo.html>
>         +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>         ([i915#3701]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html>
>         ([i915#1188]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html>
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html>
>         +2 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         ([fdo#108145] / [i915#265]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>         +1 similar issue
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o {shard-rkl}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-rkl-2/igt@perf@polling-parameterized.html>
>         ([i915#1542]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-rkl-4/igt@perf@polling-parameterized.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-in-fence:
> 
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         ([i915#5076]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         ([i915#4525])
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2842]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2852])
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-tglb2/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2842]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-tglb1/igt@gem_exec_fair@basic-pace@rcs0.html>
>         ([i915#2876])
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-update-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         ([fdo#111068] / [i915#658]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         ([i915#2920])
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         ([i915#4148]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-iclb5/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         ([fdo#109642] / [fdo#111068] / [i915#658])
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-kbl1/igt@runner@aborted.html>)
>         ([i915#1814] / [i915#3002] / [i915#4312] / [i915#5257]) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22498/shard-kbl3/igt@runner@aborted.html>)
>         ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] /
>         [i915#4312] / [i915#5257])
> 
>       o
> 
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11332/shard-apl6/igt@runner@aborted.html>,
>         FAIL <https://intel-gfx-ci.01.org/tree/d>, [FAIL][149],
>         [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153])
>         ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] /
>         [i915#5257]) -> ([FAIL][154], [FAIL][155], [FAIL][156],
>         [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161])
>         ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] /
>         [i915#4312] / [i915#5257])
> 
