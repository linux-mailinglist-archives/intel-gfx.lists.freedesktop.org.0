Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A827FEA2C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 09:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F31610E173;
	Thu, 30 Nov 2023 08:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7042110E173;
 Thu, 30 Nov 2023 08:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701331579; x=1732867579;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/f36ZLQgc3/OQzjWEyHFeAiBdrpR5by+05Mg9s+anXc=;
 b=ElpD0LM30YHyComKaoxpbcSghyJjwyw4yriYOHm/xI8EPDY4a9NuoyD/
 tTFGfu0L20BX0McZozIwioIvzVaAVQg6lGf68n+OOACvi/w9zx1KrybpO
 Fl8/6Lva4M+mG1MzDTijQyQmgMOL0PjmqG6y67GENzElxLh8cNCGfLxsd
 vIrTP1F/4pASSRPhEFb4LqzYco43a0DRJ5rKZHBXZJjEH9g/wtOO9Vd2q
 C3v4wc21HLAK9jjR4d6Jm9FieIo0+tDT9DanBARG5X625TJbGE5cCKk+z
 qGAvWe6XYZc1LcR2Mwn5OrJyZHGpsi2+TYk+MRaAm9ahe1nqOwJtkv/fa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="424436726"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="424436726"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 00:06:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="719051447"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="719051447"
Received: from nemelina-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 00:06:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 I915-ci-infra@lists.freedesktop.org
In-Reply-To: <170132292941.15642.13959853681520258547@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231129173506.1194437-1-jani.nikula@intel.com>
 <170132292941.15642.13959853681520258547@emeril.freedesktop.org>
Date: Thu, 30 Nov 2023 10:06:14 +0200
Message-ID: <877clz64y1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/syncmap=3A_squelch_a_sparse_warning_=28rev2=29?=
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

On Thu, 30 Nov 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/syncmap: squelch a sparse warning (rev2)
> URL   : https://patchwork.freedesktop.org/series/117802/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_13951 -> Patchwork_117802v2
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_117802v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_117802v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/index.html
>
> Participating hosts (36 -> 35)
> ------------------------------
>
>   Additional (1): bat-kbl-2 
>   Missing    (2): fi-snb-2520m bat-dg1-5 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_117802v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-atsm-1:         [PASS][1] -> [SKIP][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/bat-atsm-1/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-atsm-1/igt@i915_pm_rpm@module-reload.html

Unrelated, please re-report.

BR,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_117802v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@info:
>     - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1849])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-kbl-2/igt@fbdev@info.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271]) +20 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-guc:         [PASS][5] -> [DMESG-FAIL][6] ([i915#5334] / [i915#7872])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [PASS][7] -> [DMESG-FAIL][8] ([i915#9500])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - bat-dg2-11:         NOTRUN -> [SKIP][9] ([i915#1845] / [i915#9197])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-kbl-2:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#1845]) +14 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-apl-guc:         [DMESG-FAIL][11] ([i915#5334]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [FAIL][13] ([IGT#3]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>     - bat-rplp-1:         [ABORT][15] ([i915#8668]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13951/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
>   [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_13951 -> Patchwork_117802v2
>
>   CI-20190529: 20190529
>   CI_DRM_13951: 7bd342323d5bd405b02fd21cd78f157f363278ac @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7610: 7610
>   Patchwork_117802v2: 7bd342323d5bd405b02fd21cd78f157f363278ac @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> a3a672d1394c drm/i915/syncmap: squelch a sparse warning
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117802v2/index.html

-- 
Jani Nikula, Intel
