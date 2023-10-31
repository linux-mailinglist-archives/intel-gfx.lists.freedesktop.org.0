Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B7E7DCEDC
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 15:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4A410E4F1;
	Tue, 31 Oct 2023 14:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9680310E4F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 14:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698761757; x=1730297757;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=LmU+kX3KakFXY8VurRmZLjzh1uh6JMh4Yda+gWNUPEo=;
 b=dQ+tEPhFw0qeJScV3CIQ3KlIZp5kvArLpB7BAdOav2U0sc3InoC4OZs8
 rasmZNNuNql5qtGmdGlv7HfZU8zaGFEe9pa9PWBoY2wuaZfmiwvjPdDZF
 u4WAkh9yXrouE+h/lfn8eDO06pfnobN17nRoCz0C5z3DYdvs+zYJO+pkP
 u2V72bzNBfeFTP78+79Jl89w8Hk/VtcbNnHtlyVg8JU3c/eWqKW8Lfnli
 +9qH5lIo14S6E40E9Sz7zidBKRAme3rRKWRLXrikqv8Mg1gtoJ25F665c
 t8I1/2WHiVXZz+wHgB9DY14yw+fGQbTvxLPs75boT1XGOPEAgyUzGz13/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="474534177"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="474534177"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 07:15:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="1007792439"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="1007792439"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 07:15:55 -0700
Date: Tue, 31 Oct 2023 16:16:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, lgci.bug.filing@intel.com
Message-ID: <ZUEMOnEPAmwZI/D8@ideak-desk.fi.intel.com>
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <169871024709.25484.4338559984740449446@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169871024709.25484.4338559984740449446@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_MST_links_=28rev8=29?=
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

On Mon, Oct 30, 2023 at 11:57:27PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Improve BW management on MST links (rev8)
> URL   : https://patchwork.freedesktop.org/series/125490/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13814 -> Patchwork_125490v8
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_125490v8 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_125490v8, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html
> 
> Participating hosts (35 -> 33)
> ------------------------------
> 
>   Additional (2): bat-kbl-2 bat-jsl-3 
>   Missing    (4): fi-hsw-4770 bat-adlp-11 fi-snb-2520m bat-dg1-5 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_125490v8:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_force_connector_basic@force-connector-state:
>     - bat-rpls-1:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html

Looks like a corruption in the mode requested by the test or framebuffer
console:
<7> [72.565692] [drm:drm_client_modeset_probe] desired mode \xd8\xc0\x1c^\x81\x88\xff\xff set on crtc 80 (0,0)
<7> [72.565743] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and_unlock] test CRTC 0 primary plane
<7> [72.565749] i915 0000:00:02.0: [drm:__drm_fb_helper_initial_config_and_unlock] Fbdev over-allocation too large; clamping height to 16384
<7> [72.565754] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb, allocating a new one
<3> [72.565837] __i915_gem_object_create_region:73 GEM_BUG_ON(!size)

Also happened recently in 
Patchwork_125323v3/fi-kbl-guc

and even earlier in CI_DRM runs. I reopened the ticket which seemed to
have the same root cause:
https://gitlab.freedesktop.org/drm/intel/-/issues/9315

I don't see how it would be related to the changes, since there is
no display connected to the host and in this test an HDMI output is
force enabled (the changes affect only DP).

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_125490v8 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-jsl-3:          NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@fbdev@info:
>     - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1849])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-kbl-2/igt@fbdev@info.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - bat-jsl-3:          NOTRUN -> [SKIP][5] ([i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-jsl-3:          NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-kbl-2:          NOTRUN -> [SKIP][7] ([fdo#109271]) +39 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [PASS][8] -> [DMESG-FAIL][9] ([i915#5334])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-jsl-3:          NOTRUN -> [SKIP][10] ([i915#4103]) +1 other test skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-jsl-3:          NOTRUN -> [SKIP][11] ([fdo#109285])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [PASS][12] -> [FAIL][13] ([IGT#3])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13814/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-jsl-3:          NOTRUN -> [SKIP][14] ([i915#3555]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13814 -> Patchwork_125490v8
> 
>   CI-20190529: 20190529
>   CI_DRM_13814: b560681c6bf623db41064ac486dd148d6c103e53 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7566: 7566
>   Patchwork_125490v8: b560681c6bf623db41064ac486dd148d6c103e53 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 1569a83c368b drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
> f752c221f7dc drm/i915/dp_mst: Check BW limitations only after all streams are computed
> f6db4b851955 drm/i915/dp_mst: Improve BW sharing between MST streams
> 88174b0f14f5 drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
> 55bfd15b1f8a drm/i915: Factor out function to clear pipe update flags
> 7700735c22e9 drm/i915/dp_mst: Enable MST DSC decompression for all streams
> 2c703e559452 drm/i915/dp_mst: Enable DSC passthrough
> 6e3844f39232 drm/i915/dp: Enable DSC via the connector decompression AUX
> 1ac943431a78 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
> 0c29eafc983f drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
> c2a5ca4ed9b5 drm/i915/dp: Disable FEC ready flag in the sink
> 8ddde9873129 drm/i915/dp: Wait for FEC detected status in the sink
> 50bde9c7a949 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
> fbe41de11a43 drm/i915/dp_mst: Add missing DSC compression disabling
> fca9f5c25986 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
> d8e97f9f9957 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
> 3569154af98e drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
> 36246a635303 drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
> dc2f75e48632 drm/i915/dp: Pass actual BW overhead to m_n calculation
> f5011a363aba drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
> 71ac021a3909 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
> ae37af9911f5 drm/dp: Add helpers to calculate the link BW overhead
> 48155a9d962f drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
> b71fd60b8593 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
> d1662e35c27c drm/dp_mst: Allow DSC in any Synaptics last branch device
> cba9c81513dd drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
> 64ffc1470787 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
> 0b631e694e25 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
> 3f78b3a37478 drm/dp_mst: Fix fractional DSC bpp handling
> 9a1c5f7e42e3 drm/i915/dp_mst: Fix race between connector registration and setup
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v8/index.html
