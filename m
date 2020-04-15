Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3438C1AB3DA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 00:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A4F46EA9E;
	Wed, 15 Apr 2020 22:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB81D6EA9E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 22:33:17 +0000 (UTC)
IronPort-SDR: S3opBOjMPUxSAASwue5IWirPcfnDunNq2ZFHTh5tz0Fmv3nKXWcyxnfAQIK8B6Plu90rAB70Hm
 RbDDAYDdeSeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 15:33:17 -0700
IronPort-SDR: KOiqFQEcvn8mUi/O2YqgdkCV5a+D0VqAg76aZ0dk4eXX46GECIhTPB2CEeeKJyVKYDcY1aViBo
 7A9uE94xM1UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="363799081"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with SMTP; 15 Apr 2020 15:33:17 -0700
Date: Wed, 15 Apr 2020 15:33:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200415223317.GR2715344@mdroper-desk1.amr.corp.intel.com>
References: <20200414211118.2787489-1-matthew.d.roper@intel.com>
 <158698724122.21016.17286654616521191114@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158698724122.21016.17286654616521191114@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVGln?=
 =?utf-8?q?erlake_workaround_updates?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 09:47:21PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Tigerlake workaround updates
> URL   : https://patchwork.freedesktop.org/series/75944/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17302_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Switched the order of patch 1 and 2 as suggested by Jose and applied to
dinq.  Thanks Jose for the reviews.


Matt

> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_17302_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_exec_parallel@engines@fds}:
>     - shard-skl:          [PASS][1] -> [FAIL][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@gem_exec_parallel@engines@fds.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl8/igt@gem_exec_parallel@engines@fds.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_8298_full and Patchwork_17302_full:
> 
> ### New IGT tests (27) ###
> 
>   * igt@kms_plane_cursor@pipe-a-overlay-size-128:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.66, 3.66] s
> 
>   * igt@kms_plane_cursor@pipe-a-overlay-size-256:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.64, 3.64] s
> 
>   * igt@kms_plane_cursor@pipe-a-overlay-size-64:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.65, 3.65] s
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-128:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.64, 3.49] s
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-256:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.64, 3.47] s
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-64:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.63, 3.34] s
> 
>   * igt@kms_plane_cursor@pipe-a-viewport-size-128:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.65, 3.69] s
> 
>   * igt@kms_plane_cursor@pipe-a-viewport-size-256:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.64, 3.69] s
> 
>   * igt@kms_plane_cursor@pipe-a-viewport-size-64:
>     - Statuses : 8 pass(s)
>     - Exec time: [1.64, 3.66] s
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-128:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.21, 4.86] s
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-256:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.23, 4.91] s
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-64:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.23, 4.82] s
> 
>   * igt@kms_plane_cursor@pipe-b-primary-size-128:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.21, 4.65] s
> 
>   * igt@kms_plane_cursor@pipe-b-primary-size-256:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.21, 4.63] s
> 
>   * igt@kms_plane_cursor@pipe-b-primary-size-64:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.20, 4.65] s
> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-128:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-256:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.22, 4.86] s
> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-64:
>     - Statuses : 8 pass(s)
>     - Exec time: [2.23, 4.91] s
> 
>   * igt@kms_plane_cursor@pipe-c-overlay-size-128:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.79] s
> 
>   * igt@kms_plane_cursor@pipe-c-overlay-size-256:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.88] s
> 
>   * igt@kms_plane_cursor@pipe-c-overlay-size-64:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.85] s
> 
>   * igt@kms_plane_cursor@pipe-c-primary-size-128:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.66] s
> 
>   * igt@kms_plane_cursor@pipe-c-primary-size-256:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.74] s
> 
>   * igt@kms_plane_cursor@pipe-c-primary-size-64:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.56] s
> 
>   * igt@kms_plane_cursor@pipe-c-viewport-size-128:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.85] s
> 
>   * igt@kms_plane_cursor@pipe-c-viewport-size-256:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.89] s
> 
>   * igt@kms_plane_cursor@pipe-c-viewport-size-64:
>     - Statuses : 7 pass(s) 1 skip(s)
>     - Exec time: [0.0, 4.86] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17302_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_exec@basic-norecovery:
>     - shard-skl:          [PASS][3] -> [SKIP][4] ([fdo#109271]) +4 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@gem_ctx_exec@basic-norecovery.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl8/igt@gem_ctx_exec@basic-norecovery.html
> 
>   * igt@gem_exec_create@madvise:
>     - shard-hsw:          [PASS][5] -> [INCOMPLETE][6] ([i915#61]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw1/igt@gem_exec_create@madvise.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-hsw4/igt@gem_exec_create@madvise.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@gen9_exec_parse@allowed-all.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl10/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#72])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#79])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1185] / [i915#221])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb7/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-iclb3/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180] / [i915#93] / [i915#95])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#31])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_setmode@basic.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl9/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +4 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@gem_wait@write-wait@all}:
>     - shard-skl:          [FAIL][27] ([i915#1676]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl9/igt@gem_wait@write-wait@all.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [DMESG-WARN][29] ([i915#716]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@gen9_exec_parse@allowed-all.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-apl1/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +3 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][37] ([i915#31]) -> [PASS][38]
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk2/igt@kms_setmode@basic.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-glk8/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +3 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * {igt@perf@blocking-parameterized}:
>     - shard-hsw:          [FAIL][41] ([i915#1542]) -> [PASS][42] +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw6/igt@perf@blocking-parameterized.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-hsw7/igt@perf@blocking-parameterized.html
> 
>   * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
>     - shard-skl:          [INCOMPLETE][43] ([i915#198]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [DMESG-FAIL][45] ([i915#180] / [i915#95]) -> [FAIL][46] ([i915#93] / [i915#95])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [FAIL][47] ([i915#79]) -> [FAIL][48] ([i915#46])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][50] ([fdo#108145] / [i915#265])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          [FAIL][51] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][52] ([fdo#108145] / [i915#265])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm:
>     - shard-hsw:          [SKIP][53] ([fdo#109271]) -> [INCOMPLETE][54] ([i915#61])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-hsw7/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-hsw8/igt@kms_vblank@pipe-a-ts-continuation-dpms-rpm.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][55], [FAIL][56]) ([i915#1423] / [i915#716]) -> [FAIL][57] ([i915#1423])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl3/igt@runner@aborted.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/shard-apl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>   [i915#935]: https://gitlab.freedesktop.org/drm/intel/issues/935
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_8298 -> Patchwork_17302
> 
>   CI-20190529: 20190529
>   CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17302: 70839f0c2611d7ce6d8c19410571db921cab265c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17302/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
