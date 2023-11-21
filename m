Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F287F28EA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 10:28:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EBBB10E461;
	Tue, 21 Nov 2023 09:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7513910E251
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 09:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700558879; x=1732094879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QgwSqGKPBBxSh0tNsNURO5FT3BziWMTnCKMIqzQCW/4=;
 b=grpiUW5J0o5qALu3yvlTxNeYeoOd2Pu0ng8E5IiZvVLH+0Jqg75heU6m
 W7IGHzPzVuVahyE78QYDe3cw2ICQFSc5eK0yIPT3Z97IsZhsphITxcAZu
 yj6Po+E/z7wTuTdYMeQKq/329S8dpEs1mV5JgMKNLwqz3rRGez6i3yYEG
 uemft5RY0iOJFYCCSRSPbQrgkg119YrZND5zDemltfs0aGHERTtg6M2ce
 rC4Jo1HGHWzy5DSalaXG4m8rAYINVoZ/A0N/aafbLU8+VYqy13nuUAMca
 i0C26/aCiBVtW8kt+GioUIB2AFdfuDwfZgPEfwdojvRmIowNLDzr45GFy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458299296"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458299296"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 01:27:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="14860194"
Received: from cdeakx-mobl.amr.corp.intel.com (HELO localhost) ([10.252.58.54])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 01:27:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: lgci.bug.filing@intel.com
In-Reply-To: <170052565275.30157.2954704296486218863@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231103201831.1037416-1-andriy.shevchenko@linux.intel.com>
 <170052565275.30157.2954704296486218863@emeril.freedesktop.org>
Date: Tue, 21 Nov 2023 11:27:54 +0200
Message-ID: <878r6ro3qd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dsi=3A_4th_attempt_to_get_rid_of_IOSF_GPIO_=28rev5=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 21 Nov 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/dsi: 4th attempt to get rid of IOSF GPIO (rev5)
> URL   : https://patchwork.freedesktop.org/series/125977/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_13900 -> Patchwork_125977v5
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_125977v5 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_125977v5, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.

These patches have functional changes only for platforms that have DSI.

On this and the previous BAT failures: fi-kbl-soraka, fi-hsw-4770, and
bat-atsm-1 do not have DSI.

Please do whatever it is you do to make this continue to IGT
testing. I've asked before, I've hit re-test.


BR,
Jani.


>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html
>
> Participating hosts (33 -> 34)
> ------------------------------
>
>   Additional (2): fi-kbl-soraka fi-hsw-4770 
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_125977v5:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_125977v5 that come from known issues:
>
> ### CI changes ###
>
> #### Issues hit ####
>
>   * boot:
>     - fi-elk-e7500:       [PASS][2] -> [FAIL][3] ([i915#8293])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-elk-e7500/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-elk-e7500/boot.html
>     - fi-kbl-x1275:       [PASS][4] -> [FAIL][5] ([i915#8293])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-kbl-x1275/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-x1275/boot.html
>
>   
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - bat-dg2-9:          [PASS][6] -> [INCOMPLETE][7] ([i915#9275])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
>
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
>
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html
>
>   * igt@i915_selftest@live@gem_contexts:
>     - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][10] ([i915#9307])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@i915_selftest@live@gem_contexts.html
>
>   * igt@i915_selftest@live@gt_lrc:
>     - bat-adlm-1:         [PASS][11] -> [INCOMPLETE][12] ([i915#9413])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-adlm-1/igt@i915_selftest@live@gt_lrc.html
>
>   * igt@i915_selftest@live@gt_pm:
>     - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][13] ([i915#1886])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#5190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_dsc@dsc-basic:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271]) +9 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][16] ([fdo#109271]) +12 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [DMESG-FAIL][17] ([i915#5334]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@i915_selftest@live@gt_mocs:
>     - bat-mtlp-6:         [DMESG-WARN][19] -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13900/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9307]: https://gitlab.freedesktop.org/drm/intel/issues/9307
>   [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413
>   [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_13900 -> Patchwork_125977v5
>
>   CI-20190529: 20190529
>   CI_DRM_13900: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_125977v5: 7e7a522c80874faff37a7a66bdaff0747f978e11 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> cb7eb92e41e3 drm/i915/iosf: Drop unused APIs
> 44c7e68968f6 drm/i915/dsi: Combine checks in mipi_exec_gpio()
> e4396287dc34 drm/i915/dsi: Replace poking of CHV GPIOs behind the driver's back
> 28e3789e862e drm/i915/dsi: Prepare soc_gpio_set_value() to distinguish GPIO communities
> f158fdd42837 drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
> 6d1ab8a8b97e drm/i915/dsi: Extract common soc_gpio_set_value() helper
> 4dfbdedecdd6 drm/i915/dsi: Fix wrong initial value for GPIOs in bxt_gpio_set_value()
> 0cb4b3df52e7 drm/i915/dsi: Remove GPIO lookup table at the end of intel_dsi_vbt_gpio_init()
> fead969f21d1 drm/i915/dsi: Replace check with a (missing) MIPI sequence name
> 4c9e915997f9 drm/i915/dsi: Get rid of redundant 'else'
> e5900b3a5fd2 drm/i915/dsi: Replace while(1) with one with clear exit condition
> 2384619f40ea drm/i915/dsi: bxt/icl GPIO set value do not need gpio source
> e5c894cae398 drm/i915/dsi: rename platform specific *_exec_gpio() to *_gpio_set_value()
> 74a19c4a70c6 drm/i915/dsi: clarify GPIO exec sequence
> dd72fa43d232 drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
> 4472705c19fb drm/i915/dsi: assume BXT gpio works for non-native GPIO
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125977v5/index.html

-- 
Jani Nikula, Intel
