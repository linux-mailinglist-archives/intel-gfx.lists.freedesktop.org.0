Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810C49B6F88
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 22:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A166F10E0FD;
	Wed, 30 Oct 2024 21:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q38A0Us0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C0D510E0FD;
 Wed, 30 Oct 2024 21:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730324848; x=1761860848;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=uLz0lbg0EV0FQbhcKAFX8tmTx/w7YZoSksWsPr+DmaY=;
 b=Q38A0Us0vVRI7lcBxrviE6irVKsLl1F31ApBgMG9AW9nUy4djMF5IDiy
 R+Yr5036lt0hJcgL6TIggY0oBAMEro6tu6m/AtPs7JFvsgnJ7UvJczvL7
 4iz7n3VQ1YAKd7VU0AVfvrqM3THRpBxf7w4WHmTBIZGjNucDMzBmXH2oW
 S0AtRzCXxYjfq6nCEc0VubNUaXdvQC+VIBjrTKlpvu0IkAXdoq1VMy0zo
 DQ4+8eHmKGBUm0/y4PL2tLg77g8gwUn77BD1ffEiYD/trPusut3RKrWes
 C132/bD1ya2Y0oFglQdc1XX/kjr6wlAzjLb520pVW2OsGiHNRo9JxUSSj A==;
X-CSE-ConnectionGUID: bYlj6oWbTkCJ5PE1ivPRhw==
X-CSE-MsgGUID: c/cIBLJeRp6bWB+gstZy8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30241523"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30241523"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 14:47:28 -0700
X-CSE-ConnectionGUID: FplKNAUzREuqOcgEQnD15Q==
X-CSE-MsgGUID: hsfySxiPRnWRaqY03yEq7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82869770"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 14:47:26 -0700
Date: Wed, 30 Oct 2024 23:47:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/dp_mst: Fix DDI function/DP2 config programming
Message-ID: <ZyKpj01xTnI3Tai4@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <173032349990.1364656.800062819986519252@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173032349990.1364656.800062819986519252@2413ebb6fbb6>
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

Hi CI team,

On Wed, Oct 30, 2024 at 09:24:59PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/dp_mst: Fix DDI function/DP2 config programming
> URL   : https://patchwork.freedesktop.org/series/140732/
> State : failure

the failure is unrelated, see below, could you please re-report this
result?

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15614 -> Patchwork_140732v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140732v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140732v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/index.html
> 
> Participating hosts (47 -> 46)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140732v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-rpls-4:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

There is only an HDMI output on the above machine, so the DP only
changes in this patchset shouldn't have an effect on it.

The failure is:
<3> [200.000799] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun

and has already an open ticket:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12379

Earlier several CI runs failed on the same RPL_S machine (in different
tests), always on HDMI/pipe B:

./drmtip_1689/bat-rpls-4/10/dmesg.log:<3>[  552.684695] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./IGTPW_11973/bat-rpls-4/0/dmesg.log:<3>[  127.786110] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./IGTPW_12000/bat-rpls-4/0/dmesg.log:<3>[   78.002946] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./Patchwork_140196v3/bat-rpls-4/0/dmesg.log:<3>[   48.100895] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./IGTPW_11990/bat-rpls-4/0/dmesg.log:<3>[  145.511345] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./CI_DRM_15585/bat-rpls-4/0/dmesg.log:<3>[  139.892231] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./drmtip_1690/bat-rpls-4/23/dmesg.log:<3>[  335.533354] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./Patchwork_139978v3/bat-rpls-4/0/dmesg.log:<3>[  156.221305] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./IGTPW_11983/bat-rpls-4/0/dmesg.log:<3>[   30.789101] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./CI_DIN_1567/bat-rpls-4/0/dmesg.log:<3>[   53.293774] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./drmtip_1688/bat-rpls-4/12/dmesg.log:<3>[  147.044076] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./CI_DRM_15594/bat-rpls-4/0/dmesg.log:<3>[  136.706515] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./CI_DRM_15607/bat-rpls-4/0/dmesg.log:<3>[   74.942610] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./next-20241029/bat-rpls-4/0/dmesg.log:<3>[   42.161660] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./Patchwork_140379v2/bat-rpls-4/0/dmesg.log:<3>[   29.275714] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./next-20241023/bat-rpls-4/0/dmesg.log:<3>[   77.160192] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./drmtip_1687/bat-rpls-4/15/4/dmesg.txt:3,4918,42029436,-;i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun
./drmtip_1686/bat-rpls-4/23/dmesg.log:<3>[  274.243727] i915 0000:00:02.0: [drm] *ERROR* CPU pipe B FIFO underrun

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140732v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live:
>     - bat-arls-1:         [PASS][3] -> [ABORT][4] ([i915#12133])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/bat-arls-1/igt@i915_selftest@live.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/bat-arls-1/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-1:         [PASS][5] -> [ABORT][6] ([i915#12061])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/bat-arls-1/igt@i915_selftest@live@workarounds.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/bat-arls-1/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - bat-dg2-11:         [ABORT][7] ([i915#12133]) -> [PASS][8] +1 other test pass
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15614/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/bat-dg2-11/igt@i915_selftest@live@gt_heartbeat.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15614 -> Patchwork_140732v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15614: afdb5631acb317eca18b171006efb3930fef7eb4 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8088: 0030d5bc92b8e4ac991db1c88af1f0ad7593812a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_140732v1: afdb5631acb317eca18b171006efb3930fef7eb4 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140732v1/index.html
