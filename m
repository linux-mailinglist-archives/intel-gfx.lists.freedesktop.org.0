Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C20F654D348
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 23:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2535113229;
	Wed, 15 Jun 2022 21:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1733B113229
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 21:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655327129; x=1686863129;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mmqK3e1WUK3JJbr2iGKUUvDRlyxOo0Kooko/Ax3bgC8=;
 b=kaYqB9S77qlrGQDfe40HvyPdoLqGXq5d5XtFWMVm+tHNlQ2e9UoLxB50
 p+Cfd74J56aKHZqSxCksa4p1Bfws6QWMZ+h3u9ShD/I/+a8kjWm0vzBW+
 +1jggIbwS9MYwhvkGorkUjqLZHd8+tKISNZjvGZYUJPsOxyie6V2QnWQh
 MDwTpVgcOsb7QAiOfB0b/aUMR5uw1U+8yEbjLq+IL6CT7dpaTcSyG43kV
 KyKnRV56Z+PN8V4RBuAV2W0YD9JQeTDQ7xEfFV9sEyXgNnFcdfFEP9JQu
 8F/4LlcE3Fvrux2Gqm9bUGxDsnfMDZHuWbS1Fb+bSapkkGTNS2Bi4VA8W Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="258955606"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="258955606"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 14:05:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="687509849"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 14:05:28 -0700
Date: Wed, 15 Jun 2022 14:05:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YqpJlwN1nEhBNS2z@mdroper-desk1.amr.corp.intel.com>
References: <20220615001019.1821989-1-matthew.d.roper@intel.com>
 <165525498670.14600.6335928362138788650@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165525498670.14600.6335928362138788650@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Extract=2C_polish=2C_and_document_multicast_handling?=
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
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 15, 2022 at 01:03:06AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Extract, polish, and document multicast handling
> URL   : https://patchwork.freedesktop.org/series/105134/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11758 -> Patchwork_105134v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_105134v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_105134v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/index.html
> 
> Participating hosts (43 -> 43)
> ------------------------------
> 
>   Additional (2): fi-hsw-4770 bat-dg2-9 
>   Missing    (2): bat-atsm-1 fi-bdw-samus 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_105134v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - fi-hsw-4770:        NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-hsw-4770/igt@i915_module_load@load.html

  <4> [25.955765] i915 0000:00:02.0: drm_WARN_ON(lpt_iclkip_freq(&p) != clock)
  <4> [25.955785] WARNING: CPU: 3 PID: 99 at drivers/gpu/drm/i915/display/intel_pch_refclk.c:182 lpt_program_iclkip+0x268/0x2f0 [i915]

This display warning is unrelated to GT multicast, so not caused by this
series.

I don't see any similar gitlab issues that match this, but the warning
itself only landed in i915 yesterday in this series:
https://patchwork.freedesktop.org/series/103491/ so it's possible this
is a known preexisting problem that just has a new warning signature
now and needs a new filter.  +Cc Ville as the author of that series.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_105134v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@gem:
>     - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][2] ([i915#4528])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-blb-e6850/igt@i915_selftest@live@gem.html
>     - fi-pnv-d510:        NOTRUN -> [DMESG-FAIL][3] ([i915#4528])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-pnv-d510/igt@i915_selftest@live@gem.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-6:          [PASS][4] -> [DMESG-FAIL][5] ([i915#4494] / [i915#4957])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - bat-dg1-5:          NOTRUN -> [INCOMPLETE][6] ([i915#6011])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/bat-dg1-5/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-bsw-n3050:       NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-bsw-n3050/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - fi-bsw-n3050:       NOTRUN -> [SKIP][8] ([fdo#109271])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-bsw-n3050/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@runner@aborted:
>     - fi-hsw-4770:        NOTRUN -> [FAIL][9] ([i915#4312] / [i915#5594])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-hsw-4770/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adlp-4:         [DMESG-WARN][10] ([i915#3576]) -> [PASS][11] +2 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [INCOMPLETE][12] ([i915#2940]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@gt_engines:
>     - bat-dg1-5:          [INCOMPLETE][14] ([i915#4418]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
> 
>   * igt@i915_selftest@live@requests:
>     - fi-pnv-d510:        [DMESG-FAIL][16] ([i915#4528]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/fi-pnv-d510/igt@i915_selftest@live@requests.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-pnv-d510/igt@i915_selftest@live@requests.html
>     - fi-blb-e6850:       [DMESG-FAIL][18] ([i915#4528]) -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/fi-blb-e6850/igt@i915_selftest@live@requests.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-blb-e6850/igt@i915_selftest@live@requests.html
> 
>   * igt@kms_busy@basic@flip:
>     - {bat-adlp-6}:       [DMESG-WARN][20] ([i915#3576]) -> [PASS][21] +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/bat-adlp-6/igt@kms_busy@basic@flip.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/bat-adlp-6/igt@kms_busy@basic@flip.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>     - fi-tgl-u2:          [DMESG-WARN][22] ([i915#402]) -> [PASS][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-bdw-5557u:       [INCOMPLETE][24] ([i915#3921] / [i915#6105]) -> [INCOMPLETE][25] ([i915#3921])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11758/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
>   [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356
>   [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
>   [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
>   [i915#5885]: https://gitlab.freedesktop.org/drm/intel/issues/5885
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6105]: https://gitlab.freedesktop.org/drm/intel/issues/6105
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11758 -> Patchwork_105134v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11758: a2644b16f1f05a1a6eff99d7076bfa0e770bdeb6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6526: 02888400228efbb29437726aa04114575ea939c3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_105134v1: a2644b16f1f05a1a6eff99d7076bfa0e770bdeb6 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> aa8c692ba084 drm/i915/gt: Cleanup interface for MCR operations
> 6be8d7758465 drm/i915/gt: Move multicast register handling to a dedicated file
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105134v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
