Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B7518278F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 04:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558F76EA1C;
	Thu, 12 Mar 2020 03:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D767D6EA1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 03:59:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 20:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; d="scan'208";a="277641196"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga002.fm.intel.com with SMTP; 11 Mar 2020 20:59:00 -0700
Date: Wed, 11 Mar 2020 20:59:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200312035900.GB1915840@mdroper-desk1.amr.corp.intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
 <158397548180.4949.1181356281136419425@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158397548180.4949.1181356281136419425@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgR2Vu?=
 =?utf-8?q?11_workarounds_=28rev2=29?=
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

On Thu, Mar 12, 2020 at 01:11:21AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Gen11 workarounds (rev2)
> URL   : https://patchwork.freedesktop.org/series/74475/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8124 -> Patchwork_16936
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16936 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_16936, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16936/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_16936:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@runner@aborted:
>     - fi-kbl-soraka:      NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16936/fi-kbl-soraka/igt@runner@aborted.html

GPU hang on KBL (gen9); not related to these gen11 workarounds.
Requesting a re-test.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16936 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-kbl-soraka:      [PASS][2] -> [INCOMPLETE][3] ([fdo#112259])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16936/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - fi-tgl-y:           [FAIL][4] ([CI#94]) -> [PASS][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16936/fi-tgl-y/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-icl-u2:          [FAIL][6] ([i915#217]) -> [PASS][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8124/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16936/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   
>   [CI#94]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/94
>   [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
>   [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
> 
> 
> Participating hosts (46 -> 37)
> ------------------------------
> 
>   Missing    (9): fi-bdw-5557u fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-skl-lmem fi-byt-clapper fi-skl-6600u 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_8124 -> Patchwork_16936
> 
>   CI-20190529: 20190529
>   CI_DRM_8124: b720e4b68d27d8d72bbe56abfcdc91ef2bebc2c3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16936: d3ab1d872f85093a751494d183be95d8b1b782b2 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> d3ab1d872f85 drm/i915: Add Wa_1605460711 / Wa_1408767742 to ICL and EHL
> 6cb16ad0daae drm/i915: Apply Wa_1406680159:icl, ehl as an engine workaround
> 410864dd7ba1 drm/i915: Add Wa_1406306137:icl,ehl
> d55b8a3703a0 drm/i915: Add Wa_1604278689:icl,ehl
> 8eb27ecb707e drm/i915: Add Wa_1207131216:icl,ehl
> 4881cace0973 drm/i915: Handle all MCR ranges
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16936/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
