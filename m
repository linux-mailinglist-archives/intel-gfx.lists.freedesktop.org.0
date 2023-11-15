Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C09AA7EC9B4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 18:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AABE210E103;
	Wed, 15 Nov 2023 17:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3086710E103
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 17:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700069517; x=1731605517;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=+pPJT8Y8HjJk+wx98uSWnodyp0C9/rTbOTdTKnSiW1w=;
 b=nwmUwL7dgdzsrYVohZivHg19AWjQT7LuzSNRFoRxhPdWXdBqMv+l90Iz
 JUuEBzzbucrIYQ6O3865gRRMNP/AI3viO4z97zNTpmpFhDSVNf7zEkbwN
 5CDLwKGHuv1yTNOxmxPeHEq1bTVQTTMPVK2+RyJbbH6o1gm9dfVTWqlkI
 qCc9Q17qBVhlU1PyB0RmEjuFZhd0Grx9/crbdF5it0TFNRm6I7ImhPTPM
 mg7tkzqkkEfH2ncvPdECYcjK3jB3tv5mvEWsC6VFJMuIydJBq8xKs1aOb
 MgSVCRjo7BTnmLqG4LHlUrAxTFJ8bkU78C7M6+g8D7od0ZW7XcYXTud5q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="375959927"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="375959927"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 09:31:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="855712770"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="855712770"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 09:31:54 -0800
Date: Wed, 15 Nov 2023 19:31:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZVUASAgpMvN6ALL2@ideak-desk.fi.intel.com>
References: <20231114141012.603960-1-imre.deak@intel.com>
 <169999863717.29255.9722156725801248194@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169999863717.29255.9722156725801248194@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_fractional_bpp_handling_in_intel=5Flink=5Fbw=5Fred?=
 =?utf-8?b?dWNlX2JwcCgp?=
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

On Tue, Nov 14, 2023 at 09:50:37PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix fractional bpp handling in intel_link_bw_reduce_bpp()
> URL   : https://patchwork.freedesktop.org/series/126403/
> State : success

I didn't receive any CI shards results and I can't see the patch in the
test queue either. However it fixes an obvious issue during module
loading, so pushed it do -din, thanks for the review.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13875 -> Patchwork_126403v1
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/index.html
> 
> Participating hosts (39 -> 38)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (2): fi-snb-2520m bat-dg1-5 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126403v1 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - bat-jsl-1:          [PASS][1] -> [FAIL][2] ([i915#8293])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-jsl-1/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-jsl-1/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - fi-hsw-4770:        [FAIL][3] ([i915#8293]) -> [PASS][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-hsw-4770/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-hsw-4770/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - bat-rpls-1:         [PASS][5] -> [ABORT][6] ([i915#7978])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-glk-j4005:       [PASS][7] -> [DMESG-FAIL][8] ([i915#5334])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][9] ([i915#9527])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-atsm-1:         NOTRUN -> [SKIP][10] ([i915#6645])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#5190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_busy@basic@modeset:
>     - bat-adlp-11:        [PASS][12] -> [DMESG-FAIL][13] ([i915#6868])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-adlp-11/igt@kms_busy@basic@modeset.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-adlp-11/igt@kms_busy@basic@modeset.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271]) +12 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - bat-dg2-11:         NOTRUN -> [SKIP][15] ([i915#1845] / [i915#9197])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - bat-atsm-1:         NOTRUN -> [SKIP][16] ([i915#1836])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][17] ([fdo#109271]) +29 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@sprite_plane_onoff:
>     - fi-hsw-4770:        NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#1072]) +3 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - bat-atsm-1:         [INCOMPLETE][19] ([i915#9174]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [DMESG-FAIL][21] ([i915#5334]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@d-dp5:
>     - bat-adlp-11:        [DMESG-FAIL][23] ([i915#6868]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp5.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [FAIL][25] ([IGT#3]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [ABORT][27] ([i915#8668]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
>   [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#9174]: https://gitlab.freedesktop.org/drm/intel/issues/9174
>   [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
>   [i915#9527]: https://gitlab.freedesktop.org/drm/intel/issues/9527
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13875 -> Patchwork_126403v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13875: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7588: 328c5873b8f061267fdf86ed32cb5ecc611ba081 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_126403v1: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> bd5b812fe42c drm/i915: Fix fractional bpp handling in intel_link_bw_reduce_bpp()
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126403v1/index.html
