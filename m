Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6599248E1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 22:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23FF210E67F;
	Tue,  2 Jul 2024 20:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nayLWpYC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04ED710E318;
 Tue,  2 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719951354; x=1751487354;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9yZ/3fxqHaAy0AXzq3ZBPstBEtn2kWM7wEZYls1pRT0=;
 b=nayLWpYCxPj7JjR+P/iO3gwyMgpuaYhGimMMlXYWYS8Xzwh1eBeMyVVb
 iG34k54+HYRBH0UMAUh2/3fJ4PVEIgq1P3DGpTBE7eT8vHdhsxWbFJIgx
 0D/sEC1DcHALj15UoPgn/p9Ltb35K9r4INxFAnfoAZpGjv7uQEW9cRukX
 gzQJnpDGcQ3koRLB/HX3Whzp9mkHnt9ZYkjrZzWzgnTDmJ9sM6h2GwHVc
 iZ7Fl8Ux5Fx1MnCg95vstJObpime1BGk3m4slk2Scs6mORHdGZpEdo9F8
 Mks3NVnLcIlqDzHFuP3I8rLX+FebVzwr1kl+mJa8gbVb8MOyMRsjMlnoL w==;
X-CSE-ConnectionGUID: le5sGO5DQhOWw2304vapHg==
X-CSE-MsgGUID: l5DuPVmlSCaW6zqR45WVBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17270906"
X-IronPort-AV: E=Sophos;i="6.09,180,1716274800"; d="scan'208";a="17270906"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 13:15:53 -0700
X-CSE-ConnectionGUID: sqP22MeyThePMVEVSkh77Q==
X-CSE-MsgGUID: ok9dgNoHSwKFj8hIEu1fCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,180,1716274800"; d="scan'208";a="46078182"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 13:15:51 -0700
Date: Tue, 2 Jul 2024 23:16:03 +0300
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915: Dump DSC state to dmesg/debugfs (rev3)
Message-ID: <ZoRgAwKVMOtdU4vU@ideak-desk.fi.intel.com>
References: <20240628164451.1177612-1-imre.deak@intel.com>
 <171994402506.21588.16524126273502415648@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171994402506.21588.16524126273502415648@2413ebb6fbb6>
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

On Tue, Jul 02, 2024 at 06:13:45PM +0000, Patchwork wrote:

Hi CI team,

the failure is unrelated to the changes, could you check the comments
about it below?

> == Series Details ==
> 
> Series: drm/i915: Dump DSC state to dmesg/debugfs (rev3)
> URL   : https://patchwork.freedesktop.org/series/134906/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15013 -> Patchwork_134906v3
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_134906v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134906v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html
> 
> Participating hosts (42 -> 39)
> ------------------------------
> 
>   Additional (1): bat-twl-2 
>   Missing    (4): bat-adln-1 bat-jsl-3 fi-snb-2520m fi-elk-e7500 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134906v3:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

No display output is enabled/gets enabled until the above test, so the
changes in this patch are unrelated to the failure.

The test gets stuck in the middle of the above test:
<6>[  489.209589] i915: Running execlists
...
<6>[  491.829046] i915: Running intel_execlists_live_selftests/live_preempt_cancel
<3>[  554.835785] INFO: task systemd-udevd:5552 blocked for more than 61 seconds

I found the following similar issues that happened on the same machine
and test, though they happen a bit earlier in the subtest, so not sure
if the root cause is the same:

Trybot_135050v5/fi-bsw-n3050/0/dmesg.log:
<6>[  483.853300] i915: Running execlists
<6>[  483.853367] i915: Running intel_execlists_live_selftests/live_sanitycheck
...
<6>[  485.054414] i915: Running intel_execlists_live_selftests/live_timeslice_preempt
<0>[  521.003803] watchdog: BUG: soft lockup - CPU#0 stuck for 26s! [migration/0:18]

Patchwork_135436v1/fi-bsw-n3050/0/dmesg.log
<6>[  486.659257] i915: Running execlists
<6>[  486.659355] i915: Running intel_execlists_live_selftests/live_sanitycheck
...
<6>[  487.845981] i915: Running intel_execlists_live_selftests/live_timeslice_preempt
<0>[  517.007302] watchdog: BUG: soft lockup - CPU#0 stuck for 26s! [migration/0:18]

>   * igt@i915_selftest@live@gem_migrate:
>     - bat-arlh-2:         [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html

As above display outputs don't get enabled until the above happens (I
assume no display is actually connected to it), so the changes in the
patch are unrelated to the failure.

The machine hang similarly earlier in the same test, though a different
subtest, so the root cause could be something else:
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14993/bat-arlh-2/igt@i915_selftest@live@evict.html

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_134906v3 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@kms_chamelium_edid@dp-edid-read:
>     - bat-dg2-13:         [PASS][5] -> [ABORT][6] ([i915#11552])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-arls-2:         [PASS][7] -> [DMESG-WARN][8] ([i915#7507])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-7567u:       [DMESG-WARN][9] ([i915#11328]) -> [PASS][10] +33 other tests pass
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [DMESG-FAIL][11] ([i915#9500]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
>   [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
>   [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
>   [i915#11328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328
>   [i915#11552]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11552
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15013 -> Patchwork_134906v3
> 
>   CI-20190529: 20190529
>   CI_DRM_15013: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7906: ae91ba26f657bf11264f64bd2dc21f471a5d18f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_134906v3: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html
