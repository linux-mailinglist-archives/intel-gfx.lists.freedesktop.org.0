Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9E09AA2B4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 15:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4F310E68A;
	Tue, 22 Oct 2024 13:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFTNOCY1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7760910E687;
 Tue, 22 Oct 2024 13:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729602221; x=1761138221;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=b4gTKQZ7zrAANW4YzsR9UZjH9UyLfDrVOWTSTuPWO4A=;
 b=HFTNOCY1rEuNlBWgHTf+YZwxaikX/vlAWpZoqyP08k6Razvd+Qf77tP7
 RF6xPMFDkt+cJ0N7lICV25+B2yWUDnAKheFojY/aMUJ8mn2YeHMAqtdWV
 n8DJtebDckXEV/bxZPNAgG1Ck7rdZZyjYWfySIHvBn8u6ZG4IJmvNhZEq
 SQuAZCrIKi1OF6fQcZkH13Wq/rtPMT9pjdJMAFsPg7i0EQpXh2+lYIbgT
 qwM9MOZ0AoQxPyB/+FQpvRG/VjRPICu2QftrFxxs7JC5E2Ej8U9Y8PNvk
 9pJm3nup9n7qb1Ti4MFjUKSxYY6rkciqFOdqiSPObedgoX0tTaP74T9Vk w==;
X-CSE-ConnectionGUID: v6467U8LRFK2kGJpPeq4AQ==
X-CSE-MsgGUID: adOuim7eR9Sc7tO5MO516A==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="16761891"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="16761891"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:03:41 -0700
X-CSE-ConnectionGUID: ueKg8vpHTHKKamPbQGH6bQ==
X-CSE-MsgGUID: ujxRqs1HR3GjnS+h4ceUgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="84942549"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 06:03:40 -0700
Date: Tue, 22 Oct 2024 16:04:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915: Write source OUI for non-eDP sinks (rev3)
Message-ID: <ZxeiyzJL8LJj58nP@ideak-desk.fi.intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <172960002829.1309961.18289608097453970531@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172960002829.1309961.18289608097453970531@2413ebb6fbb6>
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

On Tue, Oct 22, 2024 at 12:27:08PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Write source OUI for non-eDP sinks (rev3)
> URL   : https://patchwork.freedesktop.org/series/140061/
> State : failure

the failure is unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15576 -> Patchwork_140061v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140061v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140061v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/index.html
> 
> Participating hosts (45 -> 44)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140061v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-jsl-3:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-jsl-3/igt@i915_selftest@live@hangcheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/bat-jsl-3/igt@i915_selftest@live@hangcheck.html

There is only an eDP panel connected here, but there is no connector
registered for it due to some unrelated and pre-existing PSR issue:
<7> [457.019660] i915 0000:00:02.0: [drm:intel_dp_init_connector [i915]] PSR condition failed: Port not supported

So the changes in the patchset won't have an effect on this machine and
the failure is unrelated:

<3> [456.963285] i915 0000:00:02.0: [drm] *ERROR* GT0: engine workaround lost on application! (reg[7000]=0x0, relevant bits were 0x0 vs expected 0x8000)

and happened on the same platform test before in:
CI_DIN_1561/bat-jsl-1/0/dmesg.log

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140061v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#12216]) +1 other test abort
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-mtlp-8/igt@i915_selftest@live.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/bat-mtlp-8/igt@i915_selftest@live.html
>     - bat-jsl-3:          [PASS][5] -> [DMESG-WARN][6] ([i915#12434])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-jsl-3/igt@i915_selftest@live.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/bat-jsl-3/igt@i915_selftest@live.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [ABORT][7] ([i915#12133]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-arlh-3/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/bat-arlh-3/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [ABORT][9] ([i915#12061]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15576/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html
> 
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
>   [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
>   [i915#12434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12434
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15576 -> Patchwork_140061v3
> 
>   CI-20190529: 20190529
>   CI_DRM_15576: d5bac12430b0d4a980c0498b3c946772950e70ee @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8081: 9b8c0f6da8898f760bfaa2113455eb84b68a69f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_140061v3: d5bac12430b0d4a980c0498b3c946772950e70ee @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140061v3/index.html
