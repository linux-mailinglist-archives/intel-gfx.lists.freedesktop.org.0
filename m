Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6071AB291
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 22:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B9F6EA69;
	Wed, 15 Apr 2020 20:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40416EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 20:36:55 +0000 (UTC)
IronPort-SDR: +9u3D2Z0bm1QW/NoURS3kkbJgeIQnvZiLTt9jiqW5qZP2mr04/bV6jyUk4shnwSxDdMANDwIiB
 eXc3Vdbx8fdA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 13:36:55 -0700
IronPort-SDR: fkHi1CtbMg4ptd32RevCdyxBUW003iDpDxEBtQQf3hnG8wnVoQWVY0RweNJktjGxo4kla8sSAV
 eLz7HyQjip4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,388,1580803200"; d="scan'208";a="288658143"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga002.fm.intel.com with SMTP; 15 Apr 2020 13:36:55 -0700
Date: Wed, 15 Apr 2020 13:36:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200415203655.GP2715344@mdroper-desk1.amr.corp.intel.com>
References: <20200413175322.12162-1-matthew.s.atwood@intel.com>
 <158695314555.21014.9592638163533130349@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158695314555.21014.9592638163533130349@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/ehl=3A_extended_Wa=5F2006604312_to_ehl?=
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

On Wed, Apr 15, 2020 at 12:19:05PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ehl: extended Wa_2006604312 to ehl
> URL   : https://patchwork.freedesktop.org/series/75894/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8298_full -> Patchwork_17290_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to dinq.  Thanks for the patch.


Matt

>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_17290_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#716])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@gen9_exec_parse@allowed-all.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate:
>     - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#34])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#95])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][9] -> [FAIL][10] ([fdo#108145] / [i915#265]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#31])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@kms_setmode@basic.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl7/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@gem_wait@write-wait@all}:
>     - shard-skl:          [FAIL][17] ([i915#1676]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl2/igt@gem_wait@write-wait@all.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl6/igt@gem_wait@write-wait@all.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +2 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@i915_suspend@debugfs-reader.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-apl3/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [FAIL][21] ([i915#72]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][23] ([i915#1188]) -> [PASS][24] +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [SKIP][29] ([fdo#109441]) -> [PASS][30] +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
>     - shard-skl:          [INCOMPLETE][31] ([i915#198]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-skl8/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [DMESG-FAIL][33] ([i915#180] / [i915#95]) -> [FAIL][34] ([i915#93] / [i915#95])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [FAIL][36] ([fdo#108145] / [i915#265] / [i915#95])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-apl:          [FAIL][37] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][38] ([fdo#108145] / [i915#265])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          [FAIL][39] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [FAIL][40] ([fdo#108145] / [i915#265])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8298/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
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
>   * Linux: CI_DRM_8298 -> Patchwork_17290
> 
>   CI-20190529: 20190529
>   CI_DRM_8298: 17f82f0c2857d0b442adbdb62eb44b61d0f5b775 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5589: 31962324ac86f029e2841e56e97c42cf9d572956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_17290: 8291fb20b0e53e2ea184a6fc312103f76f23b2b6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17290/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
