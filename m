Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE37E868E2F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 11:58:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C2910E8B3;
	Tue, 27 Feb 2024 10:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PoVhHvZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D28C10E6A5;
 Tue, 27 Feb 2024 10:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709031523; x=1740567523;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=yYH0A8cB4AcNg/A9inmCAOjIs/2fTc6Vu/xoFaG209w=;
 b=PoVhHvZdjTCygwXaL/hZwB3OGTDCMAWEQrxa82H9iMbsjUsdo194HZOv
 0lrNYBSox/7AiA1qPkVdFfWjr5dQgupWyGJIcu94JEzNBNTokhG7ZHiVD
 9XKGyzEJp6zi4dsKdi5I3U3DR3OaKNt1GRTxa0EbNilF/oNdPAo+Hnksm
 lrJ2C71HLjkRDv8oOFewo3mP9jJcvWiIZtgbcsmXF/wCTCDrcN5rMVkuY
 QU/P7dWrmpp2Z2Y6XzAXmDD3H00+Y9km13lMg1CCMDMzJ6cMwMpBTFWEq
 nbQ0vHpGRdP0FWAbsPioSpu0yuYCCMjwkfSie3/Fun1tICWilY/GlrpFf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14805328"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="14805328"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 02:58:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7547496"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 02:58:41 -0800
Date: Tue, 27 Feb 2024 12:59:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Cc: Jani Saarinen <jani.saarinen@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915?= =?utf-8?Q?=3A?= Add Display Port tunnel BW
 allocation support (rev6)
Message-ID: <Zd3Ad7sSQjJsVeP/@ideak-desk.fi.intel.com>
References: <20240220211841.448846-1-imre.deak@intel.com>
 <170899671666.299097.2832582019289991895@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170899671666.299097.2832582019289991895@8e613ede5ea5>
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

On Tue, Feb 27, 2024 at 01:18:36AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add Display Port tunnel BW allocation support (rev6)
> URL   : https://patchwork.freedesktop.org/series/129082/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14345 -> Patchwork_129082v6
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_129082v6 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_129082v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html
> 
> Participating hosts (39 -> 38)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_129082v6:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1:
>     - bat-arls-2:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-2/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-arls-2/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1.html

It's an unrelated issue:

There is only an eDP panel connected to the above ARL, so no TBT/DP
tunnel where the patchset would have an effect.

Looks like some core memory management issue:

<0> [223.728871] BUG: spinlock bad magic on CPU#1, kworker/1:1/224
<0> [223.728880]  lock: obj_hash+0xec060/0x120000, .magic: d6ad4ead, .owner: <none>/-1, .owner_cpu: -1
<4> [223.728890] CPU: 1 PID: 224 Comm: kworker/1:1 Not tainted 6.8.0-rc6-Patchwork_129082v6-gb3552bf1e79d+ #1
<4> [223.728894] Hardware name: Intel Corporation Arrow Lake Client Platform/MTL-S UDIMM 2DPC EVCRB, BIOS MTLSFWI1.R00.3473.D80.2311222130 11/22/2023
<4> [223.728898] Workqueue: events delayed_fput
<7> [223.728778] i915 0000:00:02.0: [drm:pipe_config_mismatch [i915]] [CRTC:233:pipe D] fastset requirement not met in hw.adjusted_mode.crtc_htotal (expected 3040, found 0)
<4> [223.728906] Call Trace:
<4> [223.728909]  <TASK>
<4> [223.728911]  dump_stack_lvl+0x64/0xb0
<4> [223.728919]  do_raw_spin_lock+0x74/0xc0
<4> [223.728925]  _raw_spin_lock_irqsave+0x45/0x60
<4> [223.728931]  ? debug_check_no_obj_freed+0xcc/0x240
<4> [223.728936]  debug_check_no_obj_freed+0xcc/0x240
<4> [223.728940]  ? lock_acquire+0xd8/0x2d0
<4> [223.728943]  ? find_held_lock+0x2b/0x80
<4> [223.728949]  free_unref_page_prepare+0xec/0x350
<4> [223.728955]  free_unref_page+0x33/0x160
<4> [223.728959]  release_pages+0x6c/0x580
<4> [223.728966]  __folio_batch_release+0x1a/0x30
<4> [223.728970]  shmem_undo_range+0x248/0x6c0
<4> [223.728977]  ? cpu_attach_domain+0x74f/0x9a0
<4> [223.728982]  shmem_truncate_range+0x14/0x40
<4> [223.728985]  shmem_evict_inode+0xd7/0x270
<4> [223.728989]  evict+0xc8/0x170

probably CI noticing this and aborting with:

[224.019721] Subtest hang-read-crc: SUCCESS (11.568s
[224.948083] Aborting: Lockdep not active

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_129082v6 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-cfl-8109u/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/fi-cfl-8109u/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - bat-atsm-1:         [INCOMPLETE][5] ([i915#10094] / [i915#10137]) -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {bat-rpls-3}:       [DMESG-WARN][7] ([i915#5591]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10094]: https://gitlab.freedesktop.org/drm/intel/issues/10094
>   [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14345 -> Patchwork_129082v6
> 
>   CI-20190529: 20190529
>   CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_129082v6: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 6f0303321631 drm/i915/dp: Enable DP tunnel BW allocation mode
> 8b160bd78946 drm/i915/dp: Read DPRX for all long HPD pulses
> 84f928739de0 drm/i915/dp: Suspend/resume DP tunnels
> 232a81c3545b drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders
> d6e68e72eeea drm/i915/dp: Handle DP tunnel IRQs
> 77a316a5547c drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks
> 904f8ff4847c drm/i915/dp: Compute DP tunnel BW during encoder state computation
> e30c2b294042 drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()
> cfe003896226 drm/i915/dp: Add DP tunnel atomic state and check BW limit
> e845d3e65f57 drm/i915/dp: Add support for DP tunnel BW allocation
> 1e491673dd40 drm/i915/dp: Sync instead of try-sync commits when getting active pipes
> f9a23c72455c drm/i915/dp: Add intel_dp_max_link_data_rate()
> d02f06d5e00c drm/i915/dp: Factor out intel_dp_read_dprx_caps()
> 95a664a77474 drm/i915/dp: Factor out intel_dp_update_sink_caps()
> e587647c4a35 drm/i915/dp: Export intel_dp_max_common_rate/lane_count()
> cc6689daacbe drm/i915/dp: Factor out intel_dp_config_required_rate()
> e76c8cac43f0 drm/i915/dp: Use drm_dp_max_dprx_data_rate()
> 8fea4c43fb32 drm/i915/dp: Add support to notify MST connectors to retry modesets
> a50d19596539 drm/i915: Fix display bpp limit computation during system resume
> cfae6a8751d6 drm/dp: Add support for DP tunneling
> 5bed9d5b20dc drm/dp: Add drm_dp_max_dprx_data_rate()
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html
