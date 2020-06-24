Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EC5207B82
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 20:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61176E365;
	Wed, 24 Jun 2020 18:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4F96E197
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 18:28:34 +0000 (UTC)
IronPort-SDR: NIt7tC3ZhiVK3LCknHcXciict2cnXvPP13Vg6jDmp8+4y4C43TB6eOg+hspA+0auMfkEQ2eXWN
 32aYd2m30l5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="142806540"
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="142806540"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 11:28:33 -0700
IronPort-SDR: 5zrJWkCOnlUIRGcup4SWoHQxlHXTp5YWurWUzW55oGhj4QxtS+eOqhZDFI4Zn4hVbH/LN93Y14
 HhEeIeobgO/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,276,1589266800"; d="scan'208";a="479210021"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.165.21.157])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jun 2020 11:28:33 -0700
Date: Wed, 24 Jun 2020 11:31:40 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Message-ID: <20200624183139.GB28937@jausmus-gentoo-dev6.jf.intel.com>
References: <20200611233108.19205-1-clinton.a.taylor@intel.com>
 <159192027560.21335.2442323093114834329@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159192027560.21335.2442323093114834329@emeril.freedesktop.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915/gt=3A_Implement_WA=5F1406941453?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 12:04:35AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Implement WA_1406941453
> URL   : https://patchwork.freedesktop.org/series/78243/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8618 -> Patchwork_17931
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_17931 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_17931, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17931:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@runner@aborted:
>     - fi-bdw-5557u:       NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-bdw-5557u/igt@runner@aborted.html

Lakshmi - this failure isn't related - can you re-report?

Thanks!

-James

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17931 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - fi-tgl-u2:          [PASS][2] -> [FAIL][3] ([i915#1888])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_sync@basic-all:
>     - fi-icl-guc:         [PASS][4] -> [DMESG-WARN][5] ([i915#1982])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-icl-guc/igt@gem_sync@basic-all.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-icl-guc/igt@gem_sync@basic-all.html
> 
>   * igt@i915_module_load@reload:
>     - fi-tgl-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-tgl-u2/igt@i915_module_load@reload.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-tgl-u2/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rpm@basic-pci-d3-state:
>     - fi-bsw-kefka:       [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
>     - fi-icl-u2:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-byt-j1900:       [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
>     - fi-tgl-u2:          [DMESG-WARN][14] ([i915#402]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][17] ([i915#62] / [i915#92]) +2 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-dp1:
>     - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92]) -> [DMESG-WARN][19] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8618/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@a-dp1.html
> 
>   
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (50 -> 42)
> ------------------------------
> 
>   Missing    (8): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_8618 -> Patchwork_17931
> 
>   CI-20190529: 20190529
>   CI_DRM_8618: 88841e30e7f8c60ff464be277e5b8fef49ebaea0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5703: c33471b4aa0a0ae9dd42202048e7037a661e0574 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17931: 39466c9ac72e20913b60ada9fdf53b78e4a6f70b @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 39466c9ac72e drm/i915/gt: Implement WA_1406941453
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17931/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
