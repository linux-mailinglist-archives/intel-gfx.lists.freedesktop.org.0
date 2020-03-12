Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52066182ECE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 12:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2EB56E113;
	Thu, 12 Mar 2020 11:16:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D006E113
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:16:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 04:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="236602734"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga008.fm.intel.com with ESMTP; 12 Mar 2020 04:16:46 -0700
Date: Thu, 12 Mar 2020 16:38:52 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
Message-ID: <20200312110851.GA15954@intel.com>
References: <20200311083632.3249-1-anshuman.gupta@intel.com>
 <158392096781.13949.427719057726996387@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158392096781.13949.427719057726996387@emeril.freedesktop.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_non-contiguous_pipe_fusing?=
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

On 2020-03-11 at 10:02:47 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Enable non-contiguous pipe fusing
> URL   : https://patchwork.freedesktop.org/series/74570/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8113 -> Patchwork_16920
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16920 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_16920, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_16920:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
Hi Lakshmi ,

Do u have any info on above issue, is it a already known issue?

Thanks,
Anshuman Gupta.
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16920 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([fdo#103927])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/fi-apl-guc/igt@i915_selftest@live@execlists.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/fi-apl-guc/igt@i915_selftest@live@execlists.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([CI#94] / [i915#402]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - fi-tgl-y:           [FAIL][7] ([CI#94]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-kbl-7500u:       [FAIL][9] ([fdo#111096] / [i915#323]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   * igt@prime_vgem@basic-read:
>     - fi-tgl-y:           [DMESG-WARN][11] ([CI#94] / [i915#402]) -> [PASS][12] +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8113/fi-tgl-y/igt@prime_vgem@basic-read.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/fi-tgl-y/igt@prime_vgem@basic-read.html
> 
>   
>   [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
>   [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
> 
> 
> Participating hosts (47 -> 44)
> ------------------------------
> 
>   Additional (3): fi-skl-6770hq fi-kbl-7560u fi-gdg-551 
>   Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_8113 -> Patchwork_16920
> 
>   CI-20190529: 20190529
>   CI_DRM_8113: 1e2be4486f17a3f853c134097b068d000e7c6433 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16920: 0514610816580178c8b380ccfb6cb00d2ce8de55 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 051461081658 drm/i915: Enable non-contiguous pipe fusing
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16920/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
