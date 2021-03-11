Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A4B337883
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 16:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F796EE2A;
	Thu, 11 Mar 2021 15:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2506EE28
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 15:54:04 +0000 (UTC)
IronPort-SDR: KEBEX/4OyML6uyaE+vqOJhFc7SnLQYX4Sy0eO05G/m7V2vEZG/D/X+wsUuU9Hna5MLE8UrLAlk
 dT0dC7guoThw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188724744"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188724744"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:54:03 -0800
IronPort-SDR: /Tq7sFz+RUvewO58/DkkJrmqa72ZNiFhAx4D1dVuvZIv3K+1QBYrx0MJOgk18GZkHug9krT08L
 /iy9+OzcEzlQ==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="404109311"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 07:54:02 -0800
Date: Thu, 11 Mar 2021 17:53:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210311155359.GB2970909@ideak-desk.fi.intel.com>
References: <20210311144529.3059024-1-imre.deak@intel.com>
 <161547655141.28798.8712045346239571090@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161547655141.28798.8712045346239571090@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Uninit_the_DMC_FW_loader_state_during_shutdown?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi,

On Thu, Mar 11, 2021 at 03:29:11PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Uninit the DMC FW loader state during shutdown
> URL   : https://patchwork.freedesktop.org/series/87883/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9849 -> Patchwork_19781
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19781 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19781, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19781:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

this is unrelated (suspend vs. power-off/reboot) and tracked at:
https://gitlab.freedesktop.org/drm/intel/-/issues/3159

--Imre

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19781 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-bsw-n3050:       NOTRUN -> [SKIP][2] ([fdo#109271])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4] ([i915#3145])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9849/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
> 
> 
> Participating hosts (45 -> 41)
> ------------------------------
> 
>   Additional (1): fi-bsw-n3050 
>   Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_9849 -> Patchwork_19781
> 
>   CI-20190529: 20190529
>   CI_DRM_9849: 123ebf0379ca90c2f64bff73ff32c7c2140d2b9c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6030: e11e4bfb91fec9af71c3909996c66e5666270e07 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_19781: df2d63b8f2b7d30eeaa78b1e5a25503779be3f59 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> df2d63b8f2b7 drm/i915: Uninit the DMC FW loader state during shutdown
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19781/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
