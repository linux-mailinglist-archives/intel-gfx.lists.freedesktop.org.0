Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955417EB629
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 19:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E439B10E4A8;
	Tue, 14 Nov 2023 18:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3188410E4A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 18:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699985489; x=1731521489;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=UVB3S5NLPooI/rfJSqC4qU/Qa2hKBgmpBHBOkLlEHTE=;
 b=Q42ATafHzGsHTY8wZpzo16Ob5PXMUBdc4t4hIAXbz2EYj9pDIPTNFcZX
 /cwQc+h1YVGgRKk5nXxTsXaxTH1KfyYffPzrjT/EUGjlcLJrp+TBBJB4x
 Ttw3WKnmVEBXd2msaRwS/6z/vipFJkcWVPRjHxjk4W4zzgteN+lTFcRtE
 6t0AOO6QqWUK35adev9yRuUHAENhpkZDNrK/rsMjUNkgz7jFT//F1lRUg
 wc3dVzsvkwOnAURSkxUWgAEU1dVD/CQcI6xVSCqKI+GielG0MIcJTgmCQ
 ddNXm9Uf6qSnFIEy77f7KT0i7turRV7L1mw9jtebzKtl6Xe4FXMqr2vkh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="381112383"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
 d="scan'208,217";a="381112383"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 10:11:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="1096181954"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; 
 d="scan'208,217";a="1096181954"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.9.11])
 ([10.213.9.11])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 10:11:04 -0800
Content-Type: multipart/alternative;
 boundary="------------gkePeT009zZ01JG1e3PEK4em"
Message-ID: <5dac36d3-7dad-410c-90ce-f1b605f5b3b5@intel.com>
Date: Tue, 14 Nov 2023 19:11:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 LGCI Bug Filing <lgci.bug.filing@intel.com>
References: <20231114-dont_clean_gt_on_error_path-v1-1-37f2fa827fd2@intel.com>
 <169997941381.29257.11234924158530970334@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169997941381.29257.11234924158530970334@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_do_not_clean_GT_table_on_error_path?=
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

This is a multi-part message in MIME format.
--------------gkePeT009zZ01JG1e3PEK4em
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 14.11.2023 17:30, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915: do not clean GT table on error path
> *URL:* 	https://patchwork.freedesktop.org/series/126385/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13873 -> Patchwork_126385v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_126385v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_126385v1, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/index.html
>
>
>     Participating hosts (37 -> 39)
>
> Additional (4): fi-kbl-soraka bat-rpls-1 bat-kbl-2 bat-dg2-9
> Missing (2): fi-snb-2520m fi-pnv-d510
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_126385v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_selftest@live@workarounds:
>
>       o bat-adlp-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-adlp-9/igt@i915_selftest@live@workarounds.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html>
>

Known error [1].

[1]: 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rpls-1/igt@i915_selftest@live@workarounds.html

>  *
>  *
>
>     igt@i915_suspend@basic-s2idle-without-i915:
>
>       o bat-atsm-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-atsm-1/igt@i915_suspend@basic-s2idle-without-i915.html>
>         -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-atsm-1/igt@i915_suspend@basic-s2idle-without-i915.html>
>

Known issue [2].

@BUG filing, please update the filters.


[2]: https://gitlab.freedesktop.org/drm/intel/-/issues/8715

Regards
Andrzej

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_126385v1 that come from known 
> issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o bat-jsl-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-jsl-1/boot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-jsl-1/boot.html>
>         (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@debugfs_test@basic-hwmon:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html>
>         (i915#9318 <https://gitlab.freedesktop.org/drm/intel/issues/9318>)
>  *
>
>     igt@fbdev@info:
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@fbdev@info.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>)
>
>      o
>
>         bat-kbl-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-kbl-2/igt@fbdev@info.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>)
>
>  *
>
>     igt@fbdev@write:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@fbdev@write.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) +3
>         other tests skip
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         other tests skip
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>       o bat-kbl-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +24
>         other tests skip
>  *
>
>     igt@gem_lmem_swapping@random-engines:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         other tests skip
>  *
>
>     igt@gem_mmap@basic:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>  *
>
>     igt@gem_mmap_gtt@basic:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2
>         other tests skip
>  *
>
>     igt@gem_render_tiled_blits@basic:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1
>         other test skip
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@gem_tiled_pread_basic.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html>
>         (i915#9527 <https://gitlab.freedesktop.org/drm/intel/issues/9527>)
>  *
>
>     igt@i915_selftest@live@mman:
>
>       o bat-rpls-1: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@i915_selftest@live@mman.html>
>         (i915#6794
>         <https://gitlab.freedesktop.org/drm/intel/issues/6794> /
>         i915#7392 <https://gitlab.freedesktop.org/drm/intel/issues/7392>)
>  *
>
>     igt@i915_suspend@basic-s2idle-without-i915:
>
>       o bat-rpls-1: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html>
>         (i915#8747 <https://gitlab.freedesktop.org/drm/intel/issues/8747>)
>  *
>
>     igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>  *
>
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215
>         <https://gitlab.freedesktop.org/drm/intel/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>  *
>
>     igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6
>         other tests skip
>  *
>
>     igt@kms_addfb_basic@tile-pitch-mismatch:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212> /
>         i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103> /
>         i915#4213
>         <https://gitlab.freedesktop.org/drm/intel/issues/4213> /
>         i915#5608
>         <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1
>         other test skip
>  *
>
>     igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845>) +17
>         other tests skip
>  *
>
>     igt@kms_dsc@dsc-basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9
>         other tests skip
>  *
>
>     igt@kms_flip@basic-flip-vs-modeset:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +3
>         other tests skip
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>  *
>
>     igt@kms_force_connector_basic@prune-stale-modes:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
>  *
>
>     igt@kms_frontbuffer_tracking@basic:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html>
>         (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>)
>  *
>
>     igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>
>       o bat-kbl-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845>) +14
>         other tests skip
>  *
>
>     igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>
>       o bat-rplp-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html>
>         (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
>  *
>
>     igt@kms_psr@cursor_plane_move:
>
>       o bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_psr@cursor_plane_move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>  *
>
>     igt@kms_psr@sprite_plane_onoff:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>  *
>
>     igt@prime_vgem@basic-fence-mmap:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         other test skip
>  *
>
>     igt@prime_vgem@basic-write:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>      o
>
>         bat-rpls-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@prime_vgem@basic-write.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>
>         Possible fixes
>
>   * igt@kms_psr@sprite_plane_onoff:
>       o bat-jsl-3: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#9648
>         <https://gitlab.freedesktop.org/drm/intel/issues/9648>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html>
>         +3 other tests pass
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13873 -> Patchwork_126385v1
>
> CI-20190529: 20190529
> CI_DRM_13873: 2b0a5e9915c131825481a9cc2aecb89088f51c00 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7587: bec435c24d23524d55f419a02af375e84c9be9d3 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_126385v1: 2b0a5e9915c131825481a9cc2aecb89088f51c00 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 6b271f2baa33 drm/i915: do not clean GT table on error path
>

--------------gkePeT009zZ01JG1e3PEK4em
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 14.11.2023 17:30, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:169997941381.29257.11234924158530970334@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915: do not clean GT table on error path</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/126385/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/126385/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13873 -&gt;
        Patchwork_126385v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_126385v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_126385v1, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:lgci.bug.filing@intel.com">lgci.bug.filing@intel.com</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/index.html</a></p>
      <h2>Participating hosts (37 -&gt; 39)</h2>
      <p>Additional (4): fi-kbl-soraka bat-rpls-1 bat-kbl-2 bat-dg2-9 <br>
        Missing (2): fi-snb-2520m fi-pnv-d510 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_126385v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@workarounds:</p>
          <ul>
            <li>bat-adlp-9: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-adlp-9/igt@i915_selftest@live@workarounds.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-adlp-9/igt@i915_selftest@live@workarounds.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Known error [1].<br>
    <br>
    [1]:
<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rpls-1/igt@i915_selftest@live@workarounds.html">https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rpls-1/igt@i915_selftest@live@workarounds.html</a><br>
    <br>
    <blockquote type="cite"
cite="mid:169997941381.29257.11234924158530970334@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s2idle-without-i915:</p>
          <ul>
            <li>bat-atsm-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-atsm-1/igt@i915_suspend@basic-s2idle-without-i915.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-atsm-1/igt@i915_suspend@basic-s2idle-without-i915.html"
                moz-do-not-send="true">WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Known issue [2].<br>
    <br>
    @BUG filing, please update the filters.<br>
    <br>
    <br>
    [2]: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/8715">https://gitlab.freedesktop.org/drm/intel/-/issues/8715</a><br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
cite="mid:169997941381.29257.11234924158530970334@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_126385v1 that come from
        known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>bat-jsl-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-jsl-1/boot.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-jsl-1/boot.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8293"
                moz-do-not-send="true">i915#8293</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@debugfs_test@basic-hwmon.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/9318"
                moz-do-not-send="true">i915#9318</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@info:</p>
          <ul>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@fbdev@info.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                  moz-do-not-send="true">i915#1849</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                  moz-do-not-send="true">i915#2582</a>)</p>
            </li>
            <li>
              <p>bat-kbl-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-kbl-2/igt@fbdev@info.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                  moz-do-not-send="true">i915#1849</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@write:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@fbdev@write.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>bat-kbl-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +24 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random-engines:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@gem_lmem_swapping@random-engines.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap@basic:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@gem_mmap@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                moz-do-not-send="true">i915#4083</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_tiled_blits@basic:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3282"
                moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                  moz-do-not-send="true">i915#6621</a>)</p>
            </li>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@i915_pm_rps@basic-api.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                  moz-do-not-send="true">i915#6621</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1886"
                moz-do-not-send="true">i915#1886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/9527"
                moz-do-not-send="true">i915#9527</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@mman:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@i915_selftest@live@mman.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6794"
                moz-do-not-send="true">i915#6794</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/7392"
                moz-do-not-send="true">i915#7392</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s2idle-without-i915:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html"
                moz-do-not-send="true">WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8747"
                moz-do-not-send="true">i915#8747</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4215"
                moz-do-not-send="true">i915#4215</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                moz-do-not-send="true">i915#4212</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                moz-do-not-send="true">i915#4212</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                moz-do-not-send="true">i915#5608</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4213"
                moz-do-not-send="true">i915#4213</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                moz-do-not-send="true">i915#5608</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a>) +17 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-basic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-modeset:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_flip@basic-flip-vs-modeset.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@prune-stale-modes:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5274"
                moz-do-not-send="true">i915#5274</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@basic:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_frontbuffer_tracking@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
          <ul>
            <li>bat-kbl-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a>) +14 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
          <ul>
            <li>bat-rplp-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8668"
                moz-do-not-send="true">i915#8668</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_plane_move:</p>
          <ul>
            <li>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_psr@cursor_plane_move.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_plane_onoff:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                  moz-do-not-send="true">i915#4098</a>)</p>
            </li>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>)</p>
            </li>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@prime_vgem@basic-fence-flip.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                  moz-do-not-send="true">fdo#109295</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                  moz-do-not-send="true">i915#1845</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-mmap:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-dg2-9/igt@prime_vgem@basic-write.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                  moz-do-not-send="true">i915#3291</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>) +2 other tests
                skip</p>
            </li>
            <li>
              <p>bat-rpls-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-rpls-1/igt@prime_vgem@basic-write.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                  moz-do-not-send="true">fdo#109295</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>) +2 other tests
                skip</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@kms_psr@sprite_plane_onoff:
          <ul>
            <li>bat-jsl-3: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13873/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/9648"
                moz-do-not-send="true">i915#9648</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126385v1/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">PASS</a> +3 other tests pass</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13873 -&gt; Patchwork_126385v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13873: 2b0a5e9915c131825481a9cc2aecb89088f51c00 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7587: bec435c24d23524d55f419a02af375e84c9be9d3 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_126385v1: 2b0a5e9915c131825481a9cc2aecb89088f51c00 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>6b271f2baa33 drm/i915: do not clean GT table on error path</p>
    </blockquote>
    <br>
  </body>
</html>

--------------gkePeT009zZ01JG1e3PEK4em--
