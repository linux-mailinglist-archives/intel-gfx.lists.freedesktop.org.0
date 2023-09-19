Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB487A64ED
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 15:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4804C10E287;
	Tue, 19 Sep 2023 13:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5F8010E287
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695130286; x=1726666286;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=bio11/gOuzJUJiVy0CRW9Nc+Miy11BomsxTeMl4SDcA=;
 b=bFfTYV+StyrUfvFsmX3PbcTn8mJdINe9aTbWzb3GCQaB/znDv1DWXHRh
 ARDKSgTqV9TInVXiFewuf+E2Zva6JKcXclqYCKJxBQN2ZIlLgt7HuL/QT
 ddG7fYJ1IKX7W78OXkVwqF1DoCMUGQvKCRvPBR2ZJZSVBkTbFyprPAm2R
 gP9XXwwJlTK5NmDluoghgDJyo4IqNIaEoXHqzUSv87SQa3iv26gObnGFr
 AZK9RxaWgPeXxIh92mDB2Fh0M86jz05k8uc6WtZKmvZBIzVUEREeL4Yvb
 xDaVXx6lzF89yaq4mL3uLjgc/RMuNsBT564kgz7M25JBz8MP6DFQ9Iup3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="410871540"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="410871540"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 06:29:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="749478759"
X-IronPort-AV: E=Sophos;i="6.02,159,1688454000"; d="scan'208";a="749478759"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 06:29:30 -0700
Date: Tue, 19 Sep 2023 16:29:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZQmiT8MEVCnI13on@ideak-desk.fi.intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <169512453031.3667.994176278823103721@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169512453031.3667.994176278823103721@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_shared_display_links_=28rev10?=
 =?utf-8?q?=29?=
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

On Tue, Sep 19, 2023 at 11:55:30AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Improve BW management on shared display links (rev10)
> URL   : https://patchwork.freedesktop.org/series/122589/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13651 -> Patchwork_122589v10
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_122589v10 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_122589v10, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html
> 
> Participating hosts (38 -> 37)
> ------------------------------
> 
>   Additional (2): fi-kbl-soraka bat-rpls-2 
>   Missing    (3): fi-tgl-1115g4 bat-atsm-1 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_122589v10:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - bat-mtlp-8:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-mtlp-8/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-mtlp-8/igt@i915_module_load@load.html

Looks like an issue in 
intel_crtc_initial_plane_config() -> intel_plane_disable_noatomic()

which has been happening on different mtlp machines, recently in
CI_DRM_13651 / re-mtlp-7. I opened a ticket for it:
https://gitlab.freedesktop.org/drm/intel/-/issues/9366

>   * igt@runner@aborted:
>     - bat-rpls-2:         NOTRUN -> [FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-rpls-2/igt@runner@aborted.html

This is an issue unrelated to i915, happening before loading the driver:

6>[   12.711379] pcieport 0000:00:1d.0:   bridge window [mem 0x6001000000-0x60019fffff 64bit pref]

<4>[   12.715089] ======================================================
<4>[   12.721385] WARNING: possible circular locking dependency detected
<4>[   12.727676] 6.6.0-rc2-Patchwork_122589v10-g61b71c3f061a+ #1 Not tainted
<4>[   12.734394] ------------------------------------------------------
<4>[   12.740680] irq/123-pciehp/150 is trying to acquire lock:
<4>[   12.746193] ffff888105adc2f8 (&ctrl->reset_lock){.+.+}-{3:3}, at: pciehp_configure_device+0xb5/0x160
<4>[   12.755573]
                  but task is already holding lock:
<4>[   12.761693] ffffffff827aeb68 (pci_rescan_remove_lock){+.+.}-{3:3}, at: pciehp_configure_device+0x23/0x160

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122589v10 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - fi-hsw-4770:        [PASS][4] -> [FAIL][5] ([i915#8293])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-hsw-4770/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-hsw-4770/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][8] ([i915#1886] / [i915#7913])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271]) +9 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [ABORT][10] ([i915#7913]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - {bat-dg2-13}:       [DMESG-WARN][12] ([i915#7952]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [FAIL][14] ([IGT#3] / [i915#6121]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13651/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13651 -> Patchwork_122589v10
> 
>   CI-20190529: 20190529
>   CI_DRM_13651: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122589v10: 61b71c3f061a44a6ab1dcf756918886aa03a5480 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 083e3c934233 drm/i915/dp_mst: Check BW limitations only after all streams are computed
> 981a0f4e3e4c drm/i915/dp_mst: Improve BW sharing between MST streams
> 56ef0e4b6625 drm/i915/dp_mst: Allow DSC only for sink ports of the first branch device
> d6dd87fac678 drm/i915/dp_mst: Add missing DSC compression disabling
> 1a32e08efe98 drm/i915/dp_mst: Enable DSC decompression if any stream needs this
> 6cc7e9ed99c7 drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
> 11fc2f2b8219 drm/i915/dp_mst: Program the DSC PPS SDP for each stream
> 1ae3523042c4 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
> a0ef3c0a67ac drm/i915/dp_mst: Fix PBN calculation with FEC overhead
> cbeff948d039 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
> 53b98fbfae49 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
> 08dccb8ead0c drm/dp_mst: Add helper to determine if an MST port is downstream of another port
> 9ce658a8cf6c drm/dp_mst: Add a way to calculate PBN values with FEC overhead
> 0a1f353ad215 drm/dp_mst: Fix fractional DSC bpp handling
> ff78e7f980c5 drm/i915/fdi: Recompute state for affected CRTCs on FDI links
> 94262c175ffd drm/i915/fdi: Improve FDI BW sharing between pipe B and C
> bfb10a7239d1 drm/i915: Add helpers for BW management on shared display links
> 0899c01543f4 drm/i915: Factor out a helper to check/compute all the CRTC states
> 81ea58177388 drm/i915: Rename intel_modeset_all_pipes() to intel_modeset_all_pipes_late()
> f3bc271dbb8b drm/i915: Add helper to modeset a set of pipes
> 45a2fb673630 drm/i915/dp: Limit the output link bpp in DSC mode
> a14f3e77aa9f drm/i915/dp: Update the link bpp limits for DSC mode
> 7b7d3300dc14 drm/i915/dp: Skip computing a non-DSC link config if DSC is needed
> 94fc9fc20497 drm/i915/dp: Track the pipe and link bpp limits separately
> 33e00687bb18 drm/i915/dp: Factor out helpers to compute the link limits
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122589v10/index.html
