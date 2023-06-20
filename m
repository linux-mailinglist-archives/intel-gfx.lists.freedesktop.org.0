Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DF7736C6D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 14:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7524410E2E0;
	Tue, 20 Jun 2023 12:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7086B10E184
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 12:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687265807; x=1718801807;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=xBc02zYzMYgbmHB/fu24qEjkvGdUYHUjzRTWCQhrS+A=;
 b=AU5q7B8BDbMfLJ1CHSXO6m/dUVN0GzAdHvSuNvOooNYm8kaVVGYN+czV
 uE3pnryuT8cuEK5OjrQMNdXsbGiBhO2Rc3WapPJQmDKiz/MLkLLBViS0o
 PB2XPsb91JmBqNNTdb74mqCzuFuwwfEURpqp8vw4h6+0CkU4oiSjJTLKZ
 t+GMCNg3rVoQjXU5i3p0kvJSWQH1cR9wfI+Wxq79gS4Hv36zTX9vd67Ty
 iipEMCMbOTdue22uy6gAeQfdAVlgDWosKSJn52jd7nZ/c7jRqua4GiPQt
 XkJ63Y8pgFovU6vjVIVG/oP0gOpaWnYAlKeJJr8bW6JtJiLdKqaZ4tbCG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="362390103"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="362390103"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 05:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="803951859"
X-IronPort-AV: E=Sophos;i="6.00,257,1681196400"; d="scan'208";a="803951859"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 05:56:44 -0700
Date: Tue, 20 Jun 2023 15:56:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Uma Shankar <uma.shankar@intel.com>
Message-ID: <ZJGiEN3Oc0URvgte@ideak-desk>
References: <20230606172822.1891897-1-imre.deak@intel.com>
 <168608855396.22675.2535050535759336089@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <168608855396.22675.2535050535759336089@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adlp+=3A_Allow_DC_states_along_with_PW2_only_for_PWB_func?=
 =?utf-8?q?tionality?=
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

On Tue, Jun 06, 2023 at 09:55:53PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adlp+: Allow DC states along with PW2 only for PWB functionality
> URL   : https://patchwork.freedesktop.org/series/118951/
> State : failure

Thanks for the review, pushed the patch to drm-intel-next also adding
the missing Fixes/Tested-by tags.

The failure is unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13238 -> Patchwork_118951v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_118951v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_118951v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/index.html
> 
> Participating hosts (41 -> 39)
> ------------------------------
> 
>   Missing    (2): bat-rpls-2 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_118951v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-skl-guc:         [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

SKL's power well mapping is different than what the patch changes.

> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-dg2-11:         NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

(kms_pipe_crc_basic:5629) igt_kms-CRITICAL: At least one pipe/output combo needed.

This is due to the known behavior of the LG monitor disconnecting itself
just before the test starts, reconnecting after a 1 sec delay:

<7>[  254.244962] i915 0000:03:00.0: [drm:intel_encoder_hotplug [i915]] [CONNECTOR:255:HDMI-A-3] status updated from disconnected to connected (epoch counter 2->3)
...
<7>[  263.208101] i915 0000:03:00.0: [drm:intel_get_hpd_pins [i915]] hotplug event received, stat 0x00020000, dig 0x000088a8, pins 0x00000020, long 0x00000020
...
<7>[  263.214564] i915 0000:03:00.0: [drm:intel_encoder_hotplug [i915]] [CONNECTOR:255:HDMI-A-3] status updated from connected to disconnected (epoch counter 3->4)
...
<7>[  263.215505] [IGT] kms_pipe_crc_basic: starting subtest read-crc-frame-sequence
...
<7>[  264.237679] i915 0000:03:00.0: [drm:intel_get_hpd_pins [i915]] hotplug event received, stat 0x00020000, dig 0x000088a8, pins 0x00000020, long 0x00000020
...
<7>[  264.268216] i915 0000:03:00.0: [drm:intel_encoder_hotplug [i915]] [CONNECTOR:255:HDMI-A-3] status updated from disconnected to connected (epoch counter 5->6)

This ADLP host seems to have a configuration issue for the first two TC
ports as well, as they indicate a native DP/HDMI sink being connected,
while VBT configures them in DP-alt/TBT mode (probably a wrong BIOS or
BIOS setup issue):

<7>[  129.813837] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port D VBT info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT:1 DSC:0
<7>[  129.814193] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port E VBT info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT:1 DSC:0
<7>[  129.814549] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port F VBT info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT:1 DSC:0
<7>[  129.814880] i915 0000:00:02.0: [drm:intel_bios_init [i915]] Port G VBT info: CRT:0 DVI:0 HDMI:0 DP:1 eDP:0 DSI:0 DP++:0 LSPCON:0 USB-Type-C:1 TBT:1 DSC:0
...
<7>[  130.849579] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] Port D/TC#1: live status 00000008 mismatches the legacy port flag 00000006, fixing flag
<7>[  130.901821] i915 0000:00:02.0: [drm:intel_tc_port_update_mode [i915]] Port E/TC#2: live status 00000008 mismatches the legacy port flag 00000006, fixing flag

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_118951v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-rpls-1:         [PASS][4] -> [ABORT][5] ([i915#7677])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-rpls-1/igt@i915_selftest@live@hangcheck.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-rpls-1/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - bat-dg2-11:         NOTRUN -> [SKIP][6] ([i915#7828])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>     - bat-adlm-1:         NOTRUN -> [SKIP][7] ([i915#7828])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-adlm-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
>     - bat-dg2-8:          [PASS][8] -> [FAIL][9] ([i915#7932])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-adlm-1:         NOTRUN -> [SKIP][10] ([i915#1845])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg2-11:         [ABORT][11] ([i915#7913] / [i915#7979]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-adlm-1:         [INCOMPLETE][13] ([i915#4983] / [i915#7677]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-adlm-1/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-adlm-1/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - bat-rplp-1:         [SKIP][15] ([i915#1072]) -> [ABORT][16] ([i915#8442])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13238/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
>   [i915#7677]: https://gitlab.freedesktop.org/drm/intel/issues/7677
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
>   [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
>   [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13238 -> Patchwork_118951v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13238: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_118951v1: 8c0b302811d744b945dcb6d78164a76188914db9 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 80638da0a7d3 drm/i915/adlp+: Allow DC states along with PW2 only for PWB functionality
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118951v1/index.html
