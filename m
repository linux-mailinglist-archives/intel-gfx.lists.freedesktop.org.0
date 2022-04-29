Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E09515118
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 18:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7578A10E20B;
	Fri, 29 Apr 2022 16:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C9B10E20B
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 16:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651250696; x=1682786696;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=1lDJBScbpraQxfl9Z+sOyu/FQcBRxCO2i0DEsnU4WOI=;
 b=ewt+bX3nYH/iPLk9zDTDr3LJsq4hCoiD2rhPfUiXQbECcXzioRJI3u9R
 ouGQPvydWix1fybhfFfDoSGBYuM4BsUO0aLQ1ioYqufsEYA+XEfctpvLF
 cCOQOQcGn+2dDFk1+KjVmaDaIOglkcFcQyOvQ+gHXNfiyYvHlrKyN5g6k
 9Sx34jHdyZD/yaVeKAwWN9NYAxEK6I3H0Ap3wvBaanl5kfJL+FBcXm+lh
 zTqdSJ59x7xDAydmj1L/GrZHVJtVRwUQDDGo72wzOeseJfIbcVeBQbg6J
 6SsMAxpTzRSZ4TGHm+YmK/c2o48ImQWzNNMHBo42PwthCNzbzS969KyaC g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10332"; a="266230236"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="266230236"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 09:28:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="582233347"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.203.144.108])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Apr 2022 09:28:26 -0700
Date: Fri, 29 Apr 2022 21:59:26 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220429162925.GA9945@intel.com>
References: <20220425152317.4275-1-ramalingam.c@intel.com>
 <165090505412.32285.2003217328681883615@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <165090505412.32285.2003217328681883615@emeril.freedesktop.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSGFu?=
 =?utf-8?q?dle_predicate_programming?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-04-25 at 16:44:14 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Handle predicate programming
> URL   : https://patchwork.freedesktop.org/series/103084/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11550 -> Patchwork_103084v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_103084v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_103084v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/index.html
> 
> Participating hosts (43 -> 42)
> ------------------------------
> 
>   Additional (2): bat-dg2-8 bat-dg1-6 
>   Missing    (3): fi-kbl-soraka fi-hsw-4770 fi-bsw-cyan 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103084v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - bat-dg1-6:          NOTRUN -> [INCOMPLETE][1]
These Patches are touching lrc_isolation and lrc_layout tests alone. Hence
this failure is not related.

I will be proceeding to merge this patches.

Ram.
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-dg1-6/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_rpm@module-reload:
>     - {bat-rpls-2}:       [DMESG-WARN][2] ([i915#4391]) -> [WARN][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@client:
>     - {bat-dg2-8}:        NOTRUN -> [DMESG-FAIL][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-dg2-8/igt@i915_selftest@live@client.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - {bat-dg2-8}:        NOTRUN -> [SKIP][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103084v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - fi-bdw-5557u:       [PASS][6] -> [INCOMPLETE][7] ([i915#146])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-cfl-guc:         [DMESG-FAIL][8] ([i915#5334]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - {bat-dg2-9}:        [INCOMPLETE][10] ([i915#5270]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_selftest@live@sanitycheck:
>     - {bat-rpls-2}:       [INCOMPLETE][12] ([i915#5401]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-rpls-2/igt@i915_selftest@live@sanitycheck.html
> 
>   * igt@kms_busy@basic@flip:
>     - {bat-adlp-6}:       [DMESG-WARN][14] ([i915#3576]) -> [PASS][15] +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/bat-adlp-6/igt@kms_busy@basic@flip.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/bat-adlp-6/igt@kms_busy@basic@flip.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - fi-kbl-7567u:       [SKIP][16] ([fdo#109271] / [i915#5341]) -> [SKIP][17] ([fdo#109271])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-pnv-d510:        [SKIP][18] ([fdo#109271] / [i915#5341]) -> [SKIP][19] ([fdo#109271])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-snb-2520m:       [SKIP][20] ([fdo#109271] / [i915#5341]) -> [SKIP][21] ([fdo#109271])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-bsw-kefka:       [SKIP][22] ([fdo#109271] / [i915#5341]) -> [SKIP][23] ([fdo#109271])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-kbl-8809g:       [SKIP][24] ([fdo#109271] / [i915#5341]) -> [SKIP][25] ([fdo#109271])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-bsw-nick:        [SKIP][26] ([fdo#109271] / [i915#5341]) -> [SKIP][27] ([fdo#109271])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-bwr-2160:        [SKIP][28] ([fdo#109271] / [i915#5341]) -> [SKIP][29] ([fdo#109271])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-bwr-2160/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-snb-2600:        [SKIP][30] ([fdo#109271] / [i915#5341]) -> [SKIP][31] ([fdo#109271])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-elk-e7500:       [SKIP][32] ([fdo#109271] / [i915#5341]) -> [SKIP][33] ([fdo#109271])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-blb-e6850:       [SKIP][34] ([fdo#109271] / [i915#5341]) -> [SKIP][35] ([fdo#109271])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-blb-e6850/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-ilk-650:         [SKIP][36] ([fdo#109271] / [i915#5341]) -> [SKIP][37] ([fdo#109271])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11550/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/fi-ilk-650/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
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
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
>   [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5270]: https://gitlab.freedesktop.org/drm/intel/issues/5270
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5275]: https://gitlab.freedesktop.org/drm/intel/issues/5275
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5338]: https://gitlab.freedesktop.org/drm/intel/issues/5338
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5401]: https://gitlab.freedesktop.org/drm/intel/issues/5401
>   [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11550 -> Patchwork_103084v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11550: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6451: f055bd83bd831a938d639718c2359516224f15f9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103084v1: 56b089ae03ef8ea8ab7f474eaa70367898891ef0 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> c1f7d28827ac drm/i915/gt: Clear SET_PREDICATE_RESULT prior to executing the ring
> d1bb90b604bb drm/i915/selftests: Skip poisoning SET_PREDICATE_RESULT on dg2
> fde5cb59267a drm/i915/xehpsdv/dg1/tgl: Fix issue with LRI relative addressing
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103084v1/index.html
