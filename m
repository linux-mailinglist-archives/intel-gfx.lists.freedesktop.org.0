Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E63C66CB0A2
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 23:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F34410E768;
	Mon, 27 Mar 2023 21:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AEF710E768
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 21:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679952401; x=1711488401;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=i/tkaEE7A9w6BYlEbJ4jD114EL9D31OMos3XZEOHr3c=;
 b=SnqblVM2YayM6d5y1o8/KT2NO3XHHLpYRGj7AEw1/mu22/wN3rL9xQDC
 vQqyh0s9EIhakHL26wOjPhw3YHXvqeov3gktHUxfFJr1gZGVDCsiKwWqG
 4CWmCOS6Ncr17f4mT8ak0rbqHRqFLyzJkIRci8HUYBwN34C0FDE9zhW7y
 zKmuu3qCeSO8zVrpnVOPE29b2gTclRjTWAy38ye9mVrA0SNTUmToLJCfJ
 eiStvcl0EnlQJU/L82QtvW6NNEy1vPw97RcJ0OhlAzcHFGIkshS3cZB0l
 QyRD70djvizw8TYPnhtLtyXR9PVPrAvx6Y1zX5bMZNx2EGEV7Y5MYX2Bw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320795737"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="320795737"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 14:26:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="660955070"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="660955070"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 14:26:37 -0700
Date: Tue, 28 Mar 2023 00:26:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Zhang Rui <rui.zhang@intel.com>
Message-ID: <ZCIKCkGXLxlNXvVT@ideak-desk.fi.intel.com>
References: <20230327121116.1785979-1-imre.deak@intel.com>
 <167994374538.32630.158002195269097607@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167994374538.32630.158002195269097607@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgeDg2?=
 =?utf-8?q?/topology=3A_fix_erroneous_smp=5Fnum=5Fsiblings_on_Intel_Hybrid?=
 =?utf-8?q?_platform?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rui,

after applying your
"x86/topology: fix erroneous smp_num_siblings on Intel Hybrid platform"

fix on the drm-tip tree (see the patchwork URL below) the CI tests show
some regression on a HSW and a KBL machine (see [2] and [4] below) in
the i915 driver. However I think they can't be related to your changes,
since on these machines all cores will report the same number of CPU
siblings. Could you confirm this and that in general the reported
siblings can only vary on platforms with both E and P cores (ADL-P being
the first such platform)?

Thanks,
Imre

On Mon, Mar 27, 2023 at 07:02:25PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: x86/topology: fix erroneous smp_num_siblings on Intel Hybrid platform
> URL   : https://patchwork.freedesktop.org/series/115661/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12921 -> Patchwork_115661v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_115661v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_115661v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/index.html
> 
> Participating hosts (37 -> 37)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_115661v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-hsw-4770:        [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@fbdev@info:
>     - {bat-kbl-2}:        [SKIP][3] ([fdo#109271]) -> [ABORT][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-kbl-2/igt@fbdev@info.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-kbl-2/igt@fbdev@info.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_115661v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s3@lmem0:
>     - bat-dg2-11:         [PASS][5] -> [INCOMPLETE][6] ([i915#6311])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
> 
>   * igt@i915_selftest@live@reset:
>     - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#4983])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-rpls-1/igt@i915_selftest@live@reset.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-1/igt@i915_selftest@live@reset.html
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][9] ([i915#6367] / [i915#7913] / [i915#7996])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-2/igt@i915_selftest@live@slpc.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - bat-rpls-2:         NOTRUN -> [ABORT][10] ([i915#6687] / [i915#7978])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
>     - bat-dg2-8:          [PASS][11] -> [FAIL][12] ([i915#7932])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-soraka:      [DMESG-FAIL][13] ([i915#5334] / [i915#7872]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@reset:
>     - bat-rpls-2:         [ABORT][15] ([i915#4983] / [i915#7913]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12921/bat-rpls-2/igt@i915_selftest@live@reset.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/bat-rpls-2/igt@i915_selftest@live@reset.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
>   [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
>   [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
>   [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
>   [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
>   [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12921 -> Patchwork_115661v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12921: 3de6040ce9900a94ec626662d5c6a227b37eeb1c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7221: 4b77c6d85024d22ca521d510f8eee574128fe04f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_115661v1: 3de6040ce9900a94ec626662d5c6a227b37eeb1c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 83d9e76610d5 x86/topology: fix erroneous smp_num_siblings on Intel Hybrid platform
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115661v1/index.html
