Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97AE6C3EBD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 00:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6556C10E130;
	Tue, 21 Mar 2023 23:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C61CA10E130
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 23:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679442224; x=1710978224;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=TN69HiF43gnbsZIKbMwELE1lV4yY1pzUzRFaqFuR1CI=;
 b=At+U8W/t3CDD4lFKGjuO5JyAIzfWk7peilvXeSeWMQxWgc/lZwJZoGIl
 txqFk9O1OCh7HytacyNuyQtvdylu3N1W1t4LxdsmSzz1dvoDg2LV2ufAF
 r3xqxG2po5N5fqFJACCyP3RitG+H8XMUvPteqgT/Ad1wbVEYya/yiT2H+
 gn95CQDRzhCzB8f+x/bpqZRXqpnWiVqpOoxFMwh1tRaM/7LsTONcPQcDZ
 tVNnoamc2eOU2cCer9OjM0HNR8qT1OvsnHhIZJYN5KsMyotL98TAXmc8Y
 m/iuvtCLAmcW0hYv9oVRQKgvHFGWQ4kC4vvP2VorMfIjXhL8MYIr3YAw5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="327464356"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="327464356"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:43:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="792311966"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="792311966"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:43:42 -0700
Date: Wed, 22 Mar 2023 01:43:39 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZBpBKwzKxXMzb0dk@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <167943826111.18680.12676154866981282039@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167943826111.18680.12676154866981282039@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_a_few_TypeC_/_MST_issues_=28rev5=29?=
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

On Tue, Mar 21, 2023 at 10:37:41PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix a few TypeC / MST issues (rev5)
> URL   : https://patchwork.freedesktop.org/series/115270/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12890 -> Patchwork_115270v5
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_115270v5 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_115270v5, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/index.html
> 
> Participating hosts (36 -> 36)
> ------------------------------
> 
>   Additional (1): bat-atsm-1 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_115270v5:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - bat-rpls-2:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12890/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-rpls-2/igt@gem_exec_suspend@basic-s0@smem.html

Unrelated problem: there are no TypeC PHYs on RPL-S and there is no
display connected to the above host. Looks like some xHCI
suspend/resume issue, which also happened earlier in:

https://intel-gfx-ci.01.org/tree/drm-tip/IGT_7193/bat-rpls-2/igt@gem_exec_suspend@basic-s3@smem.html

and starts with:
<6> [368.247539] pcieport 0000:00:1d.0: pciehp: Slot(8): Card not present
<3> [368.251918] pci 0000:02:03.0: Unable to change power state from D3cold to D0, device inaccessible
<6> [368.252118] xhci_hcd 0000:38:00.0: remove, state 4
<6> [368.252129] usb usb3: USB disconnect, device number 1
<6> [368.252792] i915 0000:00:02.0: [drm] GT0: GuC firmware i915/tgl_guc_70.bin version 70.5.1
<6> [368.252796] i915 0000:00:02.0: [drm] GT0: HuC firmware i915/tgl_huc.bin version 7.9.3
<6> [368.253381] xhci_hcd 0000:38:00.0: USB bus 3 deregistered
<6> [368.253395] xhci_hcd 0000:38:00.0: remove, state 4
<6> [368.253400] usb usb1: USB disconnect, device number 1
<4> [368.254914] xhci_hcd 0000:38:00.0: Host halt failed, -19
<4> [368.254934] xhci_hcd 0000:38:00.0: Host not accessible, reset failed.
<7> [368.255694] i915 0000:00:02.0: [drm:guc_enable_communication [i915]] GT0: GUC: communication enabled
<6> [368.255808] xhci_hcd 0000:38:00.0: USB bus 1 deregistered
<4> [368.255822] ------------[ cut here ]------------
<4> [368.255823] xhci_hcd 0000:38:00.0: disabling already-disabled device
<4> [368.255832] WARNING: CPU: 0 PID: 149 at drivers/pci/pci.c:2241 pci_disable_device+0x8f/0xb0

I see the above 'Host halt failed' error on this machine in all/most CI
runs.

>   * igt@i915_pm_rps@basic-api:
>     - bat-dg1-6:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12890/bat-dg1-6/igt@i915_pm_rps@basic-api.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-dg1-6/igt@i915_pm_rps@basic-api.html

Unrelated problem, no TC PHYs or displays connected on the above card:

Decrease max to midpoint...
(i915_pm_rps:5287) DEBUG: gt freq (MHz):  act=0  cur=983  min=300  max=975  RP0=1650  RP1=600  RPn=300  boost=1650
(i915_pm_rps:5287) CRITICAL: Test assertion failure function check_freq_constraints, file ../../../usr/src/igt-gpu-tools/tests/i915/i915_pm_rps.c:162:
(i915_pm_rps:5287) CRITICAL: Failed assertion: freqs[CUR] <= freqs[MAX]
(i915_pm_rps:5287) CRITICAL: Last errno: 22, Invalid argument
(i915_pm_rps:5287) CRITICAL: error: 983 > 975

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_115270v5 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@fbdev@eof:
>     - bat-atsm-1:         NOTRUN -> [SKIP][5] ([i915#2582]) +4 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@fbdev@eof.html
> 
>   * igt@gem_mmap@basic:
>     - bat-atsm-1:         NOTRUN -> [SKIP][6] ([i915#4083])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@gem_mmap@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-atsm-1:         NOTRUN -> [SKIP][7] ([i915#4077]) +2 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-atsm-1:         NOTRUN -> [SKIP][8] ([i915#4079]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_selftest@live@migrate:
>     - bat-dg2-11:         [PASS][9] -> [DMESG-WARN][10] ([i915#7699])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12890/bat-dg2-11/igt@i915_selftest@live@migrate.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-dg2-11/igt@i915_selftest@live@migrate.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-atsm-1:         NOTRUN -> [SKIP][11] ([i915#6645])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@size-max:
>     - bat-atsm-1:         NOTRUN -> [SKIP][12] ([i915#6077]) +36 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_addfb_basic@size-max.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - bat-atsm-1:         NOTRUN -> [SKIP][13] ([i915#6078]) +19 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
> 
>   * igt@kms_flip@basic-plain-flip:
>     - bat-atsm-1:         NOTRUN -> [SKIP][14] ([i915#6166]) +3 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_flip@basic-plain-flip.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-atsm-1:         NOTRUN -> [SKIP][15] ([i915#6093]) +3 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc:
>     - bat-atsm-1:         NOTRUN -> [SKIP][16] ([i915#1836]) +6 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_pipe_crc_basic@hang-read-crc.html
> 
>   * igt@kms_prop_blob@basic:
>     - bat-atsm-1:         NOTRUN -> [SKIP][17] ([i915#7357])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_prop_blob@basic.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - bat-atsm-1:         NOTRUN -> [SKIP][18] ([i915#1072]) +3 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_psr@sprite_plane_onoff.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-atsm-1:         NOTRUN -> [SKIP][19] ([i915#6094])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-atsm-1:         NOTRUN -> [SKIP][20] ([fdo#109295] / [i915#6078])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-atsm-1:         NOTRUN -> [SKIP][21] ([fdo#109295] / [i915#4077]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-atsm-1:         NOTRUN -> [SKIP][22] ([fdo#109295]) +3 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-atsm-1/igt@prime_vgem@basic-write.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-2:         [DMESG-FAIL][23] ([i915#6367] / [i915#7913]) -> [DMESG-FAIL][24] ([i915#6997] / [i915#7913])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12890/bat-rpls-2/igt@i915_selftest@live@slpc.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/bat-rpls-2/igt@i915_selftest@live@slpc.html
> 
>   
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
>   [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
>   [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
>   [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
>   [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
>   [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357
>   [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12890 -> Patchwork_115270v5
> 
>   CI-20190529: 20190529
>   CI_DRM_12890: d4834b54c9207f50e07560f1be732a626a1f4bca @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7210: 5f7116708590b55864456acd993ecdb02374a06f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_115270v5: d4834b54c9207f50e07560f1be732a626a1f4bca @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 69b197a11e90 drm/i915/tc: Check the PLL type used by an enabled TC port
> f08c2734efbd drm/i915/tc: Factor out a function querying active links on a TC port
> ce43f166e4c8 drm/i915: Add encoder hook to get the PLL type used by TC ports
> 2004793ac26f drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
> 9e9d2fd16a78 drm/i915/tc: Make the TC mode readout consistent in all PHY states
> 515a64b25cbc drm/i915/tc: Fix initial TC mode on disabled legacy ports
> eca58eb98289 drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
> 92a4660856f7 drm/i915/tc: Fix target TC mode for a disconnected legacy port
> 731d038c38d4 drm/i915/tc: Factor out helpers converting HPD mask to TC mode
> 8854cbcfe768 drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
> 5a6cf2c99b77 drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
> be709c10c911 drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
> 19e8be5df491 drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
> 63821e5a3efd drm/i915/tc: Abort DP AUX transfer on a disconnected TC port
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v5/index.html
