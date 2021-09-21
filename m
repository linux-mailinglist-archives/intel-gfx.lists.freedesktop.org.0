Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7002F412E1B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 07:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C806E8F6;
	Tue, 21 Sep 2021 05:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C580B6E8F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Sep 2021 05:03:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="308836820"
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="308836820"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 22:03:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,310,1624345200"; d="scan'208";a="556679617"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 22:03:47 -0700
Date: Mon, 20 Sep 2021 22:03:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210921050346.GD3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210917161407.812335-1-matthew.d.roper@intel.com>
 <163219042236.15888.16651250578349771658@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163219042236.15888.16651250578349771658@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ2hl?=
 =?utf-8?q?ck_SFC_fusing_on_Xe=5FHP_=28rev4=29?=
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

On Tue, Sep 21, 2021 at 02:13:42AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Check SFC fusing on Xe_HP (rev4)
> URL   : https://patchwork.freedesktop.org/series/94808/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10613_full -> Patchwork_21099_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21099_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21099_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21099_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl7/igt@i915_module_load@reload.html

snd_hda_intel "spurious response" errors, followed by "NMI watchdog:
Watchdog detected hard LOCKUP on cpu 1", originating from snd_hda_core.
We've been seeing this on several series since the 5.15rc1 merge.  Not
quite the same signature as fdo#4179 (which are pagefaults rather than
CPU lockups), but likely somehow related to the same underlying root
cause.

> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-tglb:         [PASS][2] -> [INCOMPLETE][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

Another sound-related failure, this time coming from snd_hda_intel
(rather than snd_hda_core).  Again not quite a match for any of the fdo
issues we have open, but likely related to the same underlying issue.

> 
>   * igt@kms_plane_cursor@pipe-b-primary-size-64:
>     - shard-glk:          [PASS][4] -> [FAIL][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk2/igt@kms_plane_cursor@pipe-b-primary-size-64.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk4/igt@kms_plane_cursor@pipe-b-primary-size-64.html

Similar to https://gitlab.freedesktop.org/drm/intel/-/issues/4153,
although on the -64 subtest instead of -128, and on GLK instead of ICL.
But a display-related CRC mismatch like this can't be related to
checking the media fuse bits on Xe_HP platforms.


None of the issues reported here are related to this series.  Applied to
drm-intel-gt-next.  Thanks Jose for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_module_load@reload:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-rkl-1/igt@i915_module_load@reload.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21099_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-glk:          [PASS][7] -> [INCOMPLETE][8] ([i915#4130])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk7/igt@core_hotunplug@unbind-rebind.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk3/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_create@create-massive:
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][9] ([i915#3002])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@gem_create@create-massive.html
>     - shard-apl:          NOTRUN -> [DMESG-WARN][10] ([i915#3002])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl7/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-snb2/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][12] -> [TIMEOUT][13] ([i915#3063])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][14] -> [TIMEOUT][15] ([i915#2369] / [i915#3063] / [i915#3648])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][16] ([i915#2842])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][17] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#2842])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][21] ([i915#2842])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109283])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#112283])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][24] ([i915#2658]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-snb:          NOTRUN -> [FAIL][25] ([i915#2724])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-snb5/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@load-register-reg:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109289])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@gen7_exec_parse@load-register-reg.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#2856])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@reload:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][28] ([i915#4130])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl2/igt@i915_module_load@reload.html
>     - shard-iclb:         [PASS][29] -> [INCOMPLETE][30] ([i915#4130])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-iclb4/igt@i915_module_load@reload.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb8/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1937])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#1937])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglb:         NOTRUN -> [WARN][33] ([i915#2681] / [i915#2684])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@pc8-residency:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#109506] / [i915#2411])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@i915_pm_rpm@pc8-residency.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#2411] / [i915#456])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb3/igt@i915_suspend@forcewake.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb7/igt@i915_suspend@forcewake.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#456])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb5/igt@i915_suspend@sysfs-reader.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb7/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111614])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3777])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3777])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#111615])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([i915#2705])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@kms_big_joiner@2x-modeset.html
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#2705])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb5/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3689] / [i915#3886]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#3886])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl2/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +13 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3689]) +10 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-audio:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl2/igt@kms_chamelium@dp-audio.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl2/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          [PASS][54] -> [DMESG-WARN][55] ([i915#1982])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +20 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109284] / [fdo#111827]) +8 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl3/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111828]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-apl:          NOTRUN -> [TIMEOUT][60] ([i915#1319]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl3/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#3319]) +2 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x32-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#3359])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-512x170-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-size-change:
>     - shard-snb:          NOTRUN -> [FAIL][63] ([i915#4024])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-size-change.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
>     - shard-glk:          [PASS][64] -> [FAIL][65] ([i915#1888] / [i915#3444])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk4/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +87 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
>     - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271]) +31 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#109279] / [i915#3359]) +2 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html
>     - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109278]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3528])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#3528])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][72] -> [FAIL][73] ([i915#79])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109274])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-tglb:         [PASS][75] -> [INCOMPLETE][76] ([i915#2411] / [i915#4173] / [i915#456])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb6/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][77] -> [DMESG-WARN][78] ([i915#180])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][79] ([i915#180])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2587])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2672])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-snb:          NOTRUN -> [SKIP][82] ([fdo#109271]) +433 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
>     - shard-glk:          [PASS][83] -> [FAIL][84] ([i915#1888] / [i915#2546])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109280])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +27 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180]) +3 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#111825]) +22 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [PASS][90] -> [FAIL][91] ([i915#1188])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][92] ([i915#180])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#533]) +1 similar issue
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][94] ([fdo#108145] / [i915#265])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
>     - shard-glk:          [PASS][95] -> [FAIL][96] ([fdo#108145] / [i915#265])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk4/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][97] ([i915#265]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
>     - shard-kbl:          NOTRUN -> [FAIL][98] ([i915#265])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-none:
>     - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#3536])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@kms_plane_lowres@pipe-c-tiling-none.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#658]) +4 similar issues
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>     - shard-glk:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#658])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#658])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>     - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658]) +1 similar issue
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-tglb:         NOTRUN -> [FAIL][105] ([i915#132] / [i915#3467]) +2 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb1/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][106] -> [SKIP][107] ([fdo#109441]) +3 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb7/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          [PASS][108] -> [INCOMPLETE][109] ([i915#155] / [i915#180] / [i915#2828])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-kbl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][110] ([fdo#109271]) +198 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#2437])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#2437])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@nouveau_crc@pipe-c-ctx-flip-detection:
>     - shard-tglb:         NOTRUN -> [SKIP][113] ([i915#2530])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@nouveau_crc@pipe-c-ctx-flip-detection.html
> 
>   * igt@prime_nv_api@nv_self_import_to_different_fd:
>     - shard-tglb:         NOTRUN -> [SKIP][114] ([fdo#109291]) +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@prime_nv_api@nv_self_import_to_different_fd.html
> 
>   * igt@sysfs_clients@create:
>     - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#2994]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb2/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2994])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-skl2/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@fair-1:
>     - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-apl6/igt@sysfs_clients@fair-1.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl6/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-kbl:          [DMESG-WARN][119] ([i915#4130]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-kbl2/igt@device_reset@unbind-reset-rebind.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl7/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [DMESG-WARN][121] ([i915#180]) -> [PASS][122] +3 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-kbl:          [INCOMPLETE][123] ([i915#155] / [i915#180]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-kbl6/igt@gem_eio@in-flight-suspend.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-kbl6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][125] ([i915#2842]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][127] ([i915#1436] / [i915#716]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-glk1/igt@gen9_exec_parse@allowed-all.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-glk7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][129] ([i915#454]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@pm-caching:
>     - shard-tglb:         [INCOMPLETE][131] ([i915#2411]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10613/shard-tglb8/igt@i915_pm_rpm@pm-caching.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/shard-tglb6/igt@i915_pm
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21099/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
