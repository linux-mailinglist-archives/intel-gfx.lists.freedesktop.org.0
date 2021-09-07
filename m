Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFC9402F07
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 21:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11AA6E0D5;
	Tue,  7 Sep 2021 19:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175296E0CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 19:37:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="242592589"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="242592589"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 12:37:47 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="469329047"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 12:37:47 -0700
Date: Tue, 7 Sep 2021 12:37:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 jaswanthx.kattamanchi@intel.com
Message-ID: <20210907193745.GJ461228@mdroper-desk1.amr.corp.intel.com>
References: <20210904003544.2422282-1-matthew.d.roper@intel.com>
 <163104155153.24492.11403074447679022766@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163104155153.24492.11403074447679022766@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_MOCS_tables_for_XeHP_SDV_and_DG2_=28rev3=29?=
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

On Tue, Sep 07, 2021 at 07:05:51PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add MOCS tables for XeHP SDV and DG2 (rev3)
> URL   : https://patchwork.freedesktop.org/series/94344/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10557_full -> Patchwork_20977_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20977_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20977_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20977_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

It appears the machine just crashed or otherwise became unresponsive.
Failure not related to this series.


Matt

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_10557_full and Patchwork_20977_full:
> 
> ### New IGT tests (149) ###
> 
>   * igt@feature_discovery@chamelium:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@feature_discovery@display:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@feature_discovery@display-2x:
>     - Statuses : 1 pass(s) 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@feature_discovery@display-3x:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@feature_discovery@display-4x:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@feature_discovery@psr1:
>     - Statuses : 3 pass(s) 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@feature_discovery@psr2:
>     - Statuses : 1 pass(s) 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@gem_exec_fence@invalid-timeline-fence-array:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.50] s
> 
>   * igt@gem_exec_fence@syncobj-stationary-timeline-chain-engines:
>     - Statuses : 5 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.51] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-chain-engines:
>     - Statuses : 6 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.50] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-export:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.04] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-invalid-flags:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-invalid-wait:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-repeat:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.27, 4.49] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-signal:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.04] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-unused-fence:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.03] s
> 
>   * igt@gem_exec_fence@syncobj-timeline-wait:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.03, 0.14] s
> 
>   * igt@gem_mmap_offset@blt-coherency:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.01, 0.08] s
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-a:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.50, 1.84] s
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-b:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.42, 3.02] s
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.64, 2.96] s
> 
>   * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
>     - Statuses : 1 pass(s) 6 skip(s)
>     - Exec time: [0.0, 2.48] s
> 
>   * igt@kms_writeback@writeback-check-output:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - Statuses : 7 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@32bits-limit:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@syncobj_timeline@device-signal-unordered:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@device-submit-unordered:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-available-unsubmitted-submitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-for-submit-unsubmitted-submitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.12] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-all-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-for-submit-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-for-submit-unsubmitted-submitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.12] s
> 
>   * igt@syncobj_timeline@etime-multi-wait-submitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-all-for-submit-available-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-all-for-submit-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-all-for-submit-unsubmitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-all-submitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-for-submit-available-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-for-submit-submitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-for-submit-unsubmitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@etime-single-wait-submitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@host-signal-ordered:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@host-signal-points:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.01, 0.09] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-submitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-signaled:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-multi-wait-unsubmitted-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@invalid-query-bad-pad:
>     - Statuses : 3 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-query-illegal-handle:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-query-one-illegal-handle:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-query-zero-handles:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-signal-bad-pad:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-signal-illegal-handle:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-signal-illegal-point:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-signal-one-illegal-handle:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-signal-zero-handles:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-single-wait-all-available-unsubmitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-single-wait-all-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-single-wait-unsubmitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-transfer-bad-pad:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-transfer-illegal-handle:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-wait-bad-flags:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@invalid-wait-illegal-handle:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0] s
> 
>   * igt@syncobj_timeline@multi-wait-all-available-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-available-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-available-submitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-for-submit-available-signaled:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-for-submit-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-all-signaled:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-available-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.02] s
> 
>   * igt@syncobj_timeline@multi-wait-available-submitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-available-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-available-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-available-submitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-available-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-available-unsubmitted-submitted-signaled:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-submitted-signaled:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-for-submit-unsubmitted-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@multi-wait-submitted-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@reset-during-wait-for-submit:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@syncobj_timeline@reset-multiple-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@reset-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@reset-unsignaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@signal:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@signal-array:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@signal-point-0:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-all-available-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-all-available-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-all-for-submit-available-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-all-for-submit-available-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-all-for-submit-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-all-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-available-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@single-wait-available-submitted:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-for-submit-available-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-for-submit-available-submitted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-for-submit-signaled:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@syncobj_timeline@single-wait-signaled:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@syncobj_timeline@transfer-timeline-point:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.00, 0.01] s
> 
>   * igt@syncobj_timeline@wait-all-complex:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.21, 0.23] s
> 
>   * igt@syncobj_timeline@wait-all-delayed-signal:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@wait-all-for-submit-complex:
>     - Statuses : 3 pass(s)
>     - Exec time: [0.22] s
> 
>   * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@syncobj_timeline@wait-all-for-submit-snapshot:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.08, 0.09] s
> 
>   * igt@syncobj_timeline@wait-all-interrupted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@wait-all-snapshot:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.08, 0.09] s
> 
>   * igt@syncobj_timeline@wait-any-complex:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.06, 0.08] s
> 
>   * igt@syncobj_timeline@wait-any-interrupted:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@wait-any-snapshot:
>     - Statuses : 7 pass(s)
>     - Exec time: [0.08, 0.09] s
> 
>   * igt@syncobj_timeline@wait-delayed-signal:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@wait-for-submit-complex:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.06, 0.08] s
> 
>   * igt@syncobj_timeline@wait-for-submit-delayed-submit:
>     - Statuses : 6 pass(s)
>     - Exec time: [0.10, 0.11] s
> 
>   * igt@syncobj_timeline@wait-for-submit-snapshot:
>     - Statuses : 5 pass(s)
>     - Exec time: [0.08, 0.09] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20977_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][3] ([i915#3002]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@gem_create@create-massive.html
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][4] ([i915#3002])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +6 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#3063]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-iclb:         [PASS][8] -> [TIMEOUT][9] ([i915#3070])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb1/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-snb:          NOTRUN -> [TIMEOUT][10] ([i915#3427])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-tglb:         NOTRUN -> [FAIL][15] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl2/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#307])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][19] ([i915#2658])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#110542])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3323])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][22] ([i915#3002])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#3297])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#456])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb3/igt@gem_workarounds@suspend-resume.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb7/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2856])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#2856]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#454])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-iclb:         [PASS][34] -> [DMESG-WARN][35] ([i915#3621])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111615])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +11 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +6 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +299 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium@hdmi-crc-fast:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_chamelium@hdmi-crc-fast.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>     - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +23 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +23 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111828])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3116]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#3116])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3319])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3359])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html
> 
>   * igt@kms_curs
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
