Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A51282459E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39D5610E4D1;
	Thu,  4 Jan 2024 16:00:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF36110E4D1;
 Thu,  4 Jan 2024 16:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704384037; x=1735920037;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=u74z7nw2uM3O9Dlp7sdf3Wn62B5qFvltUSdaOC5kXp4=;
 b=KC84LbywbFGVT8SMmTvKticxs84/LIG1Udnz/QTr6Q3VRrGKr+Gkz4uj
 zxQgRyWaGpcYjv/Qv2tD64DJ04LZxCOFIEZQNB7Job7NHYsC2TjNsKb5s
 MZiDhtUTmvIYqf+AVxlniukwbLn2wxrEUKZSaXU+GBs0DQ0/mDA7/2g7i
 ggb0aQGipovyQPARfqHIm9wkI1SzsFPdge2Mfx1HjB+agKmcP25GwcUrF
 vdLmS+KB5+gcWqe2QNOLSjpkqq5y+Gak2C9Wob7ZKBV/1Jl19xQ0VSJ1M
 2l++0LH73SlJ+Oxj7cUhHwehRmhHdqYpR+uvZ3cGLDXCqn7OXFM5EyptM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="387733820"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="387733820"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:00:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="846289504"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="846289504"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:00:30 -0800
Date: Thu, 4 Jan 2024 18:00:41 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?= =?utf-8?Q?e_fo?=
 =?utf-8?Q?r?= drm/i915: Fix HPD handling during driver init/shutdown (rev2)
Message-ID: <ZZbWKVxrojmHlLuZ@ideak-desk.fi.intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <170437731238.20654.12811965027388779019@5338d5abeb45>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170437731238.20654.12811965027388779019@5338d5abeb45>
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

On Thu, Jan 04, 2024 at 02:08:32PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix HPD handling during driver init/shutdown (rev2)
> URL   : https://patchwork.freedesktop.org/series/128186/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14078 -> Patchwork_128186v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_128186v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_128186v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/index.html
> 
> Participating hosts (38 -> 37)
> ------------------------------
> 
>   Additional (2): bat-rpls-2 fi-pnv-d510 
>   Missing    (3): bat-dg2-8 bat-dg2-9 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_128186v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

<7>[  358.803569] i915 0000:00:02.0: [drm:lspcon_wake_native_aux_ch [i915]] Native AUX CH up, DPCD version: 1.2
<7>[  358.804571] i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
<7>[  358.805995] i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
...
<7>[  358.823684] i915 0000:00:02.0: [drm:drm_dp_dual_mode_detect [drm_display_helper]] DP dual mode HDMI ID:  (err -121)
...
<7>[  358.925347] i915 0000:00:02.0: [drm:drm_dp_dual_mode_detect [drm_display_helper]] DP dual mode HDMI ID:  (err -121)
<7>[  358.925360] i915 0000:00:02.0: [drm:lspcon_init [i915]] No LSPCON detected, found unknown
<3>[  358.925619] i915 0000:00:02.0: [drm] *ERROR* Failed to probe lspcon

Repeating many times, across multiple driver reloads, and then
recovering after a system suspend/resume:

<7>[  541.293689] [IGT] i915_suspend: executing
<7>[  541.302373] [IGT] i915_suspend: starting subtest basic-s3-without-i915
...
<7>[  541.323944] [IGT] Unloading i915
<7>[  542.504357] i915 0000:00:02.0: [drm:verify_connector_state [i915]] [CONNECTOR:121:DP-4]
<7>[  544.783852] [IGT] Re-loading i915
...
<7>[  545.658165] i915 0000:00:02.0: [drm:lspcon_wake_native_aux_ch [i915]] Native AUX CH up, DPCD version: 1.2
<7>[  545.659690] i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
<7>[  545.666846] i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
...
<7>[  545.667750] i915 0000:00:02.0: [drm:drm_dp_dual_mode_detect [drm_display_helper]] DP dual mode HDMI ID: DP-HDMI ADAPTOR\004 (err 0)
...
<7>[  545.678538] i915 0000:00:02.0: [drm:lspcon_init [i915]] LSPCON detected
...
<7>[  545.679409] i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
<7>[  545.681121] i915 0000:00:02.0: [drm:drm_dp_i2c_do_msg [drm_display_helper]] AUX B/DDI B/PHY B: native defer
...
<7>[  545.696955] i915 0000:00:02.0: [drm:lspcon_init [i915]] Vendor: Mega Chips
<7>[  545.697221] i915 0000:00:02.0: [drm:lspcon_init [i915]] Success: LSPCON init
<7>[  545.697953] i915 0000:00:02.0: [drm:lspcon_detect_hdr_capability [i915]] LSPCON capable of HDR

Looks either the LSPCON FW breaking for some reason after a while, deferring
all the AUX responses similarly to the working scenarios, but never actually
completing the AUX request as it does in the working scenarios. This state
persists across multiple driver reloads and eventually recovering after a
system suspend/resume. Possible root causes are:

- Some required LSPCON programming done by BIOS/GOP but unknown to i915 getting
  lost across power state transitions
- LSPCON getting confused by some i915 programming (via AUX DPCD)
- Firmware bug, missing FW update on the KBL system

The same issues happened already earlier in the following CI runs:
Patchwork_127966v3/fi-kbl-7567u
Patchwork_128147v2/fi-kbl-7567u
IGTPW_10469/fi-kbl-7567u

I couldn't find any ticket open for it:
https://gitlab.freedesktop.org/drm/intel/-/issues/10013

I thought it could be related to one of
  drm/i915/dp: Abort AUX on disconnected native DP ports
  drm/i915: Filter out glitches on HPD lines during hotplug detection

in the patchset, however I can't see in the log any connector state change (due
to HPD getting deasserted) or an AUX failure related to that (which would
result in an DPCD failing with -ENXIO).

Based on the above, I don't see how this issue would be related to changes.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_128186v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-rpls-2:         NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - fi-apl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#8703])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-apl-guc/igt@gem_exec_suspend@basic-s3@smem.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-apl-guc/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +28 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-adlm-1:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-rpls-2:         NOTRUN -> [SKIP][8] ([i915#3282])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#8585])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-kbl-7567u/igt@i915_module_load@reload.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-kbl-7567u/igt@i915_module_load@reload.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#9730]) +31 other tests dmesg-warn
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - fi-kbl-7567u:       [PASS][13] -> [DMESG-WARN][14] ([i915#180])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-kbl-7567u:       [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14078/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-rpls-2:         NOTRUN -> [SKIP][17] ([i915#4103]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-rpls-2:         NOTRUN -> [SKIP][18] ([i915#3555] / [i915#3840] / [i915#9886])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-rpls-2:         NOTRUN -> [SKIP][19] ([fdo#109285])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         NOTRUN -> [SKIP][20] ([i915#9197]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-adlm-1:         NOTRUN -> [SKIP][21] ([i915#9875] / [i915#9900])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-rpls-2:         NOTRUN -> [SKIP][22] ([i915#5354])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_rpm@basic-rte:
>     - bat-rpls-2:         NOTRUN -> [ABORT][23] ([i915#8668] / [i915#9368] / [i915#9897])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/bat-rpls-2/igt@kms_pm_rpm@basic-rte.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8703]: https://gitlab.freedesktop.org/drm/intel/issues/8703
>   [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9368]: https://gitlab.freedesktop.org/drm/intel/issues/9368
>   [i915#9730]: https://gitlab.freedesktop.org/drm/intel/issues/9730
>   [i915#9875]: https://gitlab.freedesktop.org/drm/intel/issues/9875
>   [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886
>   [i915#9897]: https://gitlab.freedesktop.org/drm/intel/issues/9897
>   [i915#9900]: https://gitlab.freedesktop.org/drm/intel/issues/9900
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14078 -> Patchwork_128186v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14078: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_128186v2: 1baf990bc673f31d9eba7dfcb597ac0cb7420b14 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> f16395a37264 drm/i915/dp: Abort AUX on disconnected native DP ports
> e735c5f7678a drm/i915: Filter out glitches on HPD lines during hotplug detection
> ca90793b41d3 drm/i915: Add intel_digital_port lock/unlock hooks
> 2a4971d5053d drm/i915: Disable hotplug detection handlers during driver init/shutdown
> f3ddc64dff6a drm/i915: Disable hotplug detection works during driver init/shutdown
> 754579f9cb8d drm/i915: Prevent modesets during driver init/shutdown
> 827819da9f43 drm/i915: Suspend the framebuffer console earlier during system suspend
> 253c1a69d57c drm/i915: Suspend the framebuffer console during driver shutdown
> 54b9b48b1651 drm/i915: Disable intel HPD poll after DRM poll init/enable
> c36f85bcea25 drm/i915: Move audio deinit after disabling polling
> e0a6e219aeab drm/i915: Keep the connector polled state disabled after storm
> f2a1e7b10db8 drm/i915: Init DRM connector polled field early
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128186v2/index.html
