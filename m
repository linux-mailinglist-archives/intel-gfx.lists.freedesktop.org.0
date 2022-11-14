Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D486283FB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 16:33:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFB0910E2E7;
	Mon, 14 Nov 2022 15:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D3AD10E2E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 15:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668440006; x=1699976006;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U1vOJ6pGCZ5LP5JjAGcDD1T1WaxsY9vvrO0PdtsOamc=;
 b=ZUyCtrvjPJ7Aj7bIt99uScT0dCMeLk+yB14DuZitlQJL6B0KBIPpThLR
 uFH6Wjr2xF2QGJrD2jjEsGCwN3zlibMmZ85G2Ire6f+NlIWUqyCwCrdiz
 zMZWrZMxloGH4oh38s8eHfYUtdwxQzpb4ScUHP4SEWznP7Vd2M/hZOvXO
 grAhhDHRX9XgYMJnruIshVSnRYZa9ayTZa47HFPgdc6Xhdz8t2jC8DD9I
 ryqyK82kEQnqTafDAtWOTxsfnTIQifg8gqZvVz86jeEAxWk2VUq7np1g8
 9shHksTkVjbVNhoJNHdkF3WWmbPqcgfswK0mju/ZNHCdRnBiWUM7l9oTW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="309626562"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="309626562"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:33:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="763523843"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="763523843"
Received: from dsmahang-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.240])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 07:33:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>
In-Reply-To: <166843705665.32747.18387200436888305695@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221114111709.434979-1-jani.nikula@intel.com>
 <166843705665.32747.18387200436888305695@emeril.freedesktop.org>
Date: Mon, 14 Nov 2022 17:33:18 +0200
Message-ID: <87v8nh360x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/edid/firmware=3A_stop_using_a_throwaway_platform_device?=
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

On Mon, 14 Nov 2022, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/edid/firmware: stop using a throwaway platform device
> URL   : https://patchwork.freedesktop.org/series/110859/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_12376 -> Patchwork_110859v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_110859v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_110859v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/index.html
>
> Participating hosts (37 -> 37)
> ------------------------------
>
>   Additional (2): bat-kbl-2 fi-bsw-nick 
>   Missing    (2): fi-bdw-samus bat-dg1-5 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_110859v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@mman:
>     - fi-rkl-guc:         [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12376/fi-rkl-guc/igt@i915_selftest@live@mman.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-rkl-guc/igt@i915_selftest@live@mman.html

Completely unrelated.

BR,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_110859v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@gem_lmem_swapping@basic:
>     - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][4] ([fdo#109271]) +38 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - bat-adlp-4:         [PASS][5] -> [DMESG-WARN][6] ([i915#7077])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12376/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
>
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][7] ([fdo#111827])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html
>
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - fi-apl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html
>
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html
>
>   * igt@kms_force_connector_basic@force-connector-state:
>     - fi-apl-guc:         NOTRUN -> [SKIP][10] ([fdo#109271]) +11 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-apl-guc/igt@kms_force_connector_basic@force-connector-state.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_render_tiled_blits@basic:
>     - fi-apl-guc:         [INCOMPLETE][11] ([i915#7056]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12376/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
>
>   * igt@i915_selftest@live@migrate:
>     - {bat-adlp-6}:       [INCOMPLETE][13] ([i915#7348]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12376/bat-adlp-6/igt@i915_selftest@live@migrate.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/bat-adlp-6/igt@i915_selftest@live@migrate.html
>
>   * igt@i915_selftest@live@slpc:
>     - {bat-adln-1}:       [DMESG-FAIL][15] ([i915#6997]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12376/bat-adln-1/igt@i915_selftest@live@slpc.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/bat-adln-1/igt@i915_selftest@live@slpc.html
>
>   * igt@i915_suspend@basic-s3-without-i915:
>     - fi-rkl-11600:       [INCOMPLETE][17] ([i915#4817]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12376/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
>   [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
>   [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
>   [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_12376 -> Patchwork_110859v1
>
>   CI-20190529: 20190529
>   CI_DRM_12376: ceb77a7b0d107112b1b4197917d8fdec9a3d0ca8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7054: 5a0fd5b1011658f7ba117a45537e770a80d257fd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_110859v1: ceb77a7b0d107112b1b4197917d8fdec9a3d0ca8 @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> 90c2b72dc380 drm/edid/firmware: stop using a throwaway platform device
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110859v1/index.html

-- 
Jani Nikula, Intel Open Source Graphics Center
