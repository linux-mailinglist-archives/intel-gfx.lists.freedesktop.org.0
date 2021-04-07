Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EF23568A3
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 12:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A78B36E088;
	Wed,  7 Apr 2021 10:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF156E088
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 10:02:32 +0000 (UTC)
IronPort-SDR: lfPDPdW8VOFi22r6zMzLULThM3qBEw03vyFic3JAItpvowYbThMagIrXqYu88gsjVzmmPjCHzh
 Cn6w1HnJCcRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="213662533"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="213662533"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 03:02:21 -0700
IronPort-SDR: FQ97xgW2Bawhc37aHiIHLr7gQEWZX5z19/aF3ztvPm+fAtDxceNTkGFS+HmqKsEoptiy5Al3ss
 V+aaPbIZ2syA==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="421630301"
Received: from shochwel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.33.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 03:02:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>
In-Reply-To: <161778896672.12995.12386289714718473633@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210407090812.3602-1-jani.nikula@intel.com>
 <161778896672.12995.12386289714718473633@emeril.freedesktop.org>
Date: Wed, 07 Apr 2021 13:02:17 +0300
Message-ID: <87r1jmjtue.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/backlight=3A_switch_to_unique_backlight_device_names?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 07 Apr 2021, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/backlight: switch to unique backlight device names
> URL   : https://patchwork.freedesktop.org/series/88798/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_9931 -> Patchwork_19897
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_19897 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19897, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/index.html
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_19897:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-icl-u2:          [PASS][1] -> [SKIP][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-icl-u2/igt@i915_pm_backlight@basic-brightness.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-icl-u2/igt@i915_pm_backlight@basic-brightness.html
>     - fi-cml-u2:          [PASS][3] -> [SKIP][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-cml-u2/igt@i915_pm_backlight@basic-brightness.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-cml-u2/igt@i915_pm_backlight@basic-brightness.html
>     - fi-icl-y:           [PASS][5] -> [SKIP][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-icl-y/igt@i915_pm_backlight@basic-brightness.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-icl-y/igt@i915_pm_backlight@basic-brightness.html
>     - fi-tgl-y:           [PASS][7] -> [SKIP][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-tgl-y/igt@i915_pm_backlight@basic-brightness.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-tgl-y/igt@i915_pm_backlight@basic-brightness.html
>     - fi-cml-s:           [PASS][9] -> [SKIP][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-cml-s/igt@i915_pm_backlight@basic-brightness.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-cml-s/igt@i915_pm_backlight@basic-brightness.html

This is unsurprising, as igt is silly and uses a fixed "intel_backlight"
path.

BR,
Jani.


>
>   
> #### Suppressed ####
>
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
>
>   * igt@i915_pm_backlight@basic-brightness:
>     - {fi-ehl-1}:         [PASS][11] -> [SKIP][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-ehl-1/igt@i915_pm_backlight@basic-brightness.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-ehl-1/igt@i915_pm_backlight@basic-brightness.html
>     - {fi-tgl-dsi}:       [PASS][13] -> [SKIP][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-tgl-dsi/igt@i915_pm_backlight@basic-brightness.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-tgl-dsi/igt@i915_pm_backlight@basic-brightness.html
>     - {fi-ehl-2}:         [PASS][15] -> [SKIP][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-ehl-2/igt@i915_pm_backlight@basic-brightness.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-ehl-2/igt@i915_pm_backlight@basic-brightness.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_19897 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@read:
>     - fi-tgl-y:           [PASS][17] -> [DMESG-WARN][18] ([i915#402]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-tgl-y/igt@fbdev@read.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-tgl-y/igt@fbdev@read.html
>
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-skl-6600u:       [PASS][19] -> [SKIP][20] ([fdo#109271])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-skl-6600u/igt@i915_pm_backlight@basic-brightness.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-skl-6600u/igt@i915_pm_backlight@basic-brightness.html
>     - fi-snb-2520m:       [PASS][21] -> [SKIP][22] ([fdo#109271])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-snb-2520m/igt@i915_pm_backlight@basic-brightness.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-snb-2520m/igt@i915_pm_backlight@basic-brightness.html
>     - fi-bxt-dsi:         [PASS][23] -> [SKIP][24] ([fdo#109271])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-bxt-dsi/igt@i915_pm_backlight@basic-brightness.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-bxt-dsi/igt@i915_pm_backlight@basic-brightness.html
>     - fi-kbl-r:           [PASS][25] -> [SKIP][26] ([fdo#109271])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-kbl-r/igt@i915_pm_backlight@basic-brightness.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-kbl-r/igt@i915_pm_backlight@basic-brightness.html
>     - fi-bsw-kefka:       [PASS][27] -> [SKIP][28] ([fdo#109271])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
>     - fi-glk-dsi:         [PASS][29] -> [SKIP][30] ([fdo#109271])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-glk-dsi/igt@i915_pm_backlight@basic-brightness.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-glk-dsi/igt@i915_pm_backlight@basic-brightness.html
>     - fi-kbl-soraka:      [PASS][31] -> [SKIP][32] ([fdo#109271])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html
>
>   * igt@i915_selftest@live@hangcheck:
>     - fi-snb-2600:        [PASS][33] -> [INCOMPLETE][34] ([i915#2782])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>
>   
> #### Possible fixes ####
>
>   * igt@prime_vgem@basic-gtt:
>     - fi-tgl-y:           [DMESG-WARN][35] ([i915#402]) -> [PASS][36] +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9931/fi-tgl-y/igt@prime_vgem@basic-gtt.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/fi-tgl-y/igt@prime_vgem@basic-gtt.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>
>
> Participating hosts (43 -> 40)
> ------------------------------
>
>   Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_9931 -> Patchwork_19897
>
>   CI-20190529: 20190529
>   CI_DRM_9931: 88d3a98ecbb1264e9046972e1103ac11b573bf83 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6059: fae783adafb5face387d2df7a983de5c1d752b45 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19897: 9a58db04f241c83503c0a25dd4d30b78424d3662 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> == Linux commits ==
>
> 9a58db04f241 drm/i915/backlight: switch to unique backlight device names
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19897/index.html

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
