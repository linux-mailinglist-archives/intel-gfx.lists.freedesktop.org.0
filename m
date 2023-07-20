Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B1375AD85
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 13:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E6410E0F1;
	Thu, 20 Jul 2023 11:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45B7410E0F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 11:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689854056; x=1721390056;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=k/yuKfFBk2KsBXVSa64x5dxF5DW/jJ87spvJyTzmioI=;
 b=FwZ98z4lcipUSSl58W6Sp7tTeuZq7G2jklSSLAK36USc3spnP1MClciV
 VURmnv6LhEW84mgBJTNEgk6Rs5TpbsoXzJAt10XqwBgN4xnRyhTSvWxAq
 pbJn3wMdiJrHeemhKYRgsMaZl4f8qAHc2QIU1NtoDwbJ24hnrB+ukP2JQ
 8Sr24Yk/vvnlLbQ/3XWchuDQjg1JRphnkVFYwH1B2nUZw2RkI6rmUVNSt
 MMn7PMTXWn+pl12U7p/HWMO6IHZ/DUVaE56NcRZKMRDTv/+aUVa7biW8/
 s1iq32uxKAicLTVupjsNpqQxOG1jALb79FKrCh8V2ZjQWVeshKQbVfG5C A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351572662"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
 d="scan'208,217";a="351572662"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 04:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="898247874"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; 
 d="scan'208,217";a="898247874"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.20.19])
 ([10.213.20.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 04:54:13 -0700
Content-Type: multipart/alternative;
 boundary="------------7jNVZoFh3K5bSza580djqOI9"
Message-ID: <aab20c06-fe0f-8ba0-af21-43cbd1820988@intel.com>
Date: Thu, 20 Jul 2023 13:54:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20230719145317.1485514-1-andrzej.hajda@intel.com>
 <168979312885.20709.18388853317641363350@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <168979312885.20709.18388853317641363350@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22Revert_=22drm/i915=3A_Hold_reference_to_intel=5Fcontext_?=
 =?utf-8?q?over_life_of_i915=5Frequest=22=22?=
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
--------------7jNVZoFh3K5bSza580djqOI9
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 19.07.2023 20:58, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Revert "Revert "drm/i915: Hold reference to intel_context 
> over life of i915_request""
> *URL:* 	https://patchwork.freedesktop.org/series/120990/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13396 -> Patchwork_120990v1
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_120990v1 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_120990v1, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/index.html
>
>
>     Participating hosts (42 -> 43)
>
> Additional (2): fi-kbl-soraka bat-rpls-2
> Missing (1): fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_120990v1:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@debugfs_test@read_all_entries:
>
>       o bat-mtlp-6: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-6/igt@debugfs_test@read_all_entries.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html>
>

Known bug: https://gitlab.freedesktop.org/drm/intel/-/issues/8940

>  *
>  *
>
>     igt@i915_selftest@live@gt_mocs:
>
>       o bat-adlp-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html>
>

Occasional bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5830

Does not seems to be related.

Regards
Andrzej

>  *
>
>
>         Warnings
>
>   * igt@i915_selftest@live@slpc:
>       o bat-mtlp-6: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-6/igt@i915_selftest@live@slpc.html>
>         (i915#6367
>         <https://gitlab.freedesktop.org/drm/intel/issues/6367>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_120990v1 that come from known 
> issues:
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
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html>
>         (i915#7456 <https://gitlab.freedesktop.org/drm/intel/issues/7456>)
>  *
>
>     igt@fbdev@info:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@fbdev@info.html>
>         (i915#1849
>         <https://gitlab.freedesktop.org/drm/intel/issues/1849> /
>         i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>)
>  *
>
>     igt@fbdev@read:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@fbdev@read.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/intel/issues/2582>) +3
>         similar issues
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@gem_tiled_pread_basic.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>  *
>
>     igt@i915_pm_backlight@basic-brightness:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html>
>         (i915#7561 <https://gitlab.freedesktop.org/drm/intel/issues/7561>)
>  *
>
>     igt@i915_pm_rpm@basic-rte:
>
>       o fi-cfl-8109u: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html>
>         (i915#7940 <https://gitlab.freedesktop.org/drm/intel/issues/7940>)
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>      o
>
>         bat-rpls-2: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html>
>         (i915#4258
>         <https://gitlab.freedesktop.org/drm/intel/issues/4258> /
>         i915#7913 <https://gitlab.freedesktop.org/drm/intel/issues/7913>)
>
>      o
>
>         fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886
>         <https://gitlab.freedesktop.org/drm/intel/issues/1886> /
>         i915#7913 <https://gitlab.freedesktop.org/drm/intel/issues/7913>)
>
>  *
>
>     igt@i915_selftest@live@migrate:
>
>      o
>
>         bat-rpls-2: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_selftest@live@migrate.html>
>         (i915#7699
>         <https://gitlab.freedesktop.org/drm/intel/issues/7699> /
>         i915#7913 <https://gitlab.freedesktop.org/drm/intel/issues/7913>)
>
>      o
>
>         bat-dg2-11: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-dg2-11/igt@i915_selftest@live@migrate.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-dg2-11/igt@i915_selftest@live@migrate.html>
>         (i915#7699 <https://gitlab.freedesktop.org/drm/intel/issues/7699>)
>
>  *
>
>     igt@i915_selftest@live@mman:
>
>       o bat-rpls-2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_selftest@live@mman.html>
>         (i915#6794
>         <https://gitlab.freedesktop.org/drm/intel/issues/6794> /
>         i915#7392 <https://gitlab.freedesktop.org/drm/intel/issues/7392>)
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o bat-mtlp-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-8/igt@i915_selftest@live@requests.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-8/igt@i915_selftest@live@requests.html>
>         (i915#8497 <https://gitlab.freedesktop.org/drm/intel/issues/8497>)
>  *
>
>     igt@i915_selftest@live@slpc:
>
>       o bat-mtlp-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-8/igt@i915_selftest@live@slpc.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-8/igt@i915_selftest@live@slpc.html>
>         (i915#6367 <https://gitlab.freedesktop.org/drm/intel/issues/6367>)
>  *
>
>     igt@i915_suspend@basic-s2idle-without-i915:
>
>       o bat-rpls-2: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html>
>         (i915#8747 <https://gitlab.freedesktop.org/drm/intel/issues/8747>)
>  *
>
>     igt@kms_busy@basic:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_busy@basic.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845>) +15
>         similar issues
>  *
>
>     igt@kms_chamelium_edid@hdmi-edid-read:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +8
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +15
>         similar issues
>  *
>
>     igt@kms_flip@basic-flip-vs-dpms:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +3
>         similar issues
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>  *
>
>     igt@kms_frontbuffer_tracking@basic:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html>
>         (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>)
>  *
>
>     igt@kms_psr@primary_mmap_gtt:
>
>       o bat-rplp-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
>  *
>
>     igt@kms_psr@sprite_plane_onoff:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         similar issues
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>      o
>
>         bat-rplp-1: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#8260
>         <https://gitlab.freedesktop.org/drm/intel/issues/8260> /
>         i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
>
>      o
>
>         bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@prime_vgem@basic-write:
>
>       o bat-rpls-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@prime_vgem@basic-write.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         similar issues
>
>
>         Possible fixes
>
>  *
>
>     igt@core_auth@basic-auth:
>
>       o bat-mtlp-6: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-6/igt@core_auth@basic-auth.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-6/igt@core_auth@basic-auth.html>
>  *
>
>     igt@i915_pm_rpm@basic-rte:
>
>       o fi-tgl-1115g4: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html>
>         (i915#7940
>         <https://gitlab.freedesktop.org/drm/intel/issues/7940>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html>
>  *
>
>     igt@i915_selftest@live@gt_heartbeat:
>
>       o fi-glk-j4005: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334
>         <https://gitlab.freedesktop.org/drm/intel/issues/5334>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html>
>  *
>
>     igt@i915_selftest@live@guc:
>
>       o bat-rpls-1: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-rpls-1/igt@i915_selftest@live@guc.html>
>         (i915#7852
>         <https://gitlab.freedesktop.org/drm/intel/issues/7852>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-1/igt@i915_selftest@live@guc.html>
>
>
>         Warnings
>
>  *
>
>     igt@i915_module_load@load:
>
>       o bat-adlp-11: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-adlp-11/igt@i915_module_load@load.html>
>         (i915#4423
>         <https://gitlab.freedesktop.org/drm/intel/issues/4423>) ->
>         ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-adlp-11/igt@i915_module_load@load.html>
>         (i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423>)
>  *
>
>     igt@i915_pm_rpm@basic-pci-d3-state:
>
>       o fi-cfl-guc: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html>
>         (i915#7691
>         <https://gitlab.freedesktop.org/drm/intel/issues/7691>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html>
>         (i915#7940 <https://gitlab.freedesktop.org/drm/intel/issues/7940>)
>  *
>
>     igt@kms_psr@sprite_plane_onoff:
>
>       o bat-rplp-1: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#8442
>         <https://gitlab.freedesktop.org/drm/intel/issues/8442> /
>         i915#8668
>         <https://gitlab.freedesktop.org/drm/intel/issues/8668> /
>         i915#8712
>         <https://gitlab.freedesktop.org/drm/intel/issues/8712>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13396 -> Patchwork_120990v1
>
> CI-20190529: 20190529
> CI_DRM_13396: da1bb773ff84001b185e7bec54b32b89dff44f91 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7394: 3b0c82d7e9f1b8708d351243de7f227153793ede @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_120990v1: da1bb773ff84001b185e7bec54b32b89dff44f91 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> cf364789fcd3 Revert "Revert "drm/i915: Hold reference to intel_context 
> over life of i915_request""
>

--------------7jNVZoFh3K5bSza580djqOI9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 19.07.2023 20:58, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:168979312885.20709.18388853317641363350@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Revert "Revert "drm/i915: Hold reference to
              intel_context over life of i915_request""</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/120990/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/120990/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13396 -&gt;
        Patchwork_120990v1</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_120990v1
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_120990v1, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/index.html</a></p>
      <h2>Participating hosts (42 -&gt; 43)</h2>
      <p>Additional (2): fi-kbl-soraka bat-rpls-2 <br>
        Missing (1): fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_120990v1:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@read_all_entries:</p>
          <ul>
            <li>bat-mtlp-6: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-6/igt@debugfs_test@read_all_entries.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-6/igt@debugfs_test@read_all_entries.html"
                moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Known bug: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/8940">https://gitlab.freedesktop.org/drm/intel/-/issues/8940</a><br>
    <br>
    <blockquote type="cite"
cite="mid:168979312885.20709.18388853317641363350@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_mocs:</p>
          <ul>
            <li>bat-adlp-9: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html"
                moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Occasional bug:
    <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/5830">https://gitlab.freedesktop.org/drm/intel/-/issues/5830</a><br>
    <br>
    Does not seems to be related.<br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
cite="mid:168979312885.20709.18388853317641363350@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@i915_selftest@live@slpc:
          <ul>
            <li>bat-mtlp-6: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-6/igt@i915_selftest@live@slpc.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6367"
                moz-do-not-send="true">i915#6367</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html"
                moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_120990v1 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@debugfs_test@basic-hwmon:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7456"
                moz-do-not-send="true">i915#7456</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@info:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@fbdev@info.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@fbdev@read:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@fbdev@read.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/2582"
                moz-do-not-send="true">i915#2582</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
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
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3282"
                moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_backlight@basic-brightness:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7561"
                moz-do-not-send="true">i915#7561</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@basic-rte:</p>
          <ul>
            <li>fi-cfl-8109u: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7940"
                moz-do-not-send="true">i915#7940</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_pm_rps@basic-api.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                moz-do-not-send="true">i915#6621</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>
              <p>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/4258"
                  moz-do-not-send="true">i915#4258</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/7913"
                  moz-do-not-send="true">i915#7913</a>)</p>
            </li>
            <li>
              <p>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1886"
                  moz-do-not-send="true">i915#1886</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/7913"
                  moz-do-not-send="true">i915#7913</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@migrate:</p>
          <ul>
            <li>
              <p>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_selftest@live@migrate.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/7699"
                  moz-do-not-send="true">i915#7699</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/7913"
                  moz-do-not-send="true">i915#7913</a>)</p>
            </li>
            <li>
              <p>bat-dg2-11: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-dg2-11/igt@i915_selftest@live@migrate.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-dg2-11/igt@i915_selftest@live@migrate.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/7699"
                  moz-do-not-send="true">i915#7699</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@mman:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_selftest@live@mman.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6794"
                moz-do-not-send="true">i915#6794</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7392"
                moz-do-not-send="true">i915#7392</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>bat-mtlp-8: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-8/igt@i915_selftest@live@requests.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-8/igt@i915_selftest@live@requests.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8497"
                moz-do-not-send="true">i915#8497</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@slpc:</p>
          <ul>
            <li>bat-mtlp-8: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-8/igt@i915_selftest@live@slpc.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-8/igt@i915_selftest@live@slpc.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/6367"
                moz-do-not-send="true">i915#6367</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s2idle-without-i915:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html"
                moz-do-not-send="true">WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8747"
                moz-do-not-send="true">i915#8747</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@basic:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_busy@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a>) +15 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +15 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-dpms:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                moz-do-not-send="true">fdo#109285</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@basic:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1849"
                moz-do-not-send="true">i915#1849</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_mmap_gtt:</p>
          <ul>
            <li>bat-rplp-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_plane_onoff:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>
              <p>bat-rplp-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">ABORT</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/8260"
                  moz-do-not-send="true">i915#8260</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/8668"
                  moz-do-not-send="true">i915#8668</a>)</p>
            </li>
            <li>
              <p>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>bat-rpls-2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-2/igt@prime_vgem@basic-write.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://bugs.freedesktop.org/show_bug.cgi?id=109295"
                moz-do-not-send="true">fdo#109295</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                moz-do-not-send="true">i915#3708</a>) +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@core_auth@basic-auth:</p>
          <ul>
            <li>bat-mtlp-6: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-mtlp-6/igt@core_auth@basic-auth.html"
                moz-do-not-send="true">DMESG-WARN</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-mtlp-6/igt@core_auth@basic-auth.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@basic-rte:</p>
          <ul>
            <li>fi-tgl-1115g4: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7940"
                moz-do-not-send="true">i915#7940</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-tgl-1115g4/igt@i915_pm_rpm@basic-rte.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_heartbeat:</p>
          <ul>
            <li>fi-glk-j4005: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/5334"
                moz-do-not-send="true">i915#5334</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@guc:</p>
          <ul>
            <li>bat-rpls-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-rpls-1/igt@i915_selftest@live@guc.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7852"
                moz-do-not-send="true">i915#7852</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rpls-1/igt@i915_selftest@live@guc.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@i915_module_load@load:</p>
          <ul>
            <li>bat-adlp-11: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-adlp-11/igt@i915_module_load@load.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4423"
                moz-do-not-send="true">i915#4423</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-adlp-11/igt@i915_module_load@load.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/4423"
                moz-do-not-send="true">i915#4423</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
          <ul>
            <li>fi-cfl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7691"
                moz-do-not-send="true">i915#7691</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/fi-cfl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html"
                moz-do-not-send="true">FAIL</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/7940"
                moz-do-not-send="true">i915#7940</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_plane_onoff:</p>
          <ul>
            <li>bat-rplp-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13396/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">ABORT</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8442"
                moz-do-not-send="true">i915#8442</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8668"
                moz-do-not-send="true">i915#8668</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/8712"
                moz-do-not-send="true">i915#8712</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120990v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13396 -&gt; Patchwork_120990v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13396: da1bb773ff84001b185e7bec54b32b89dff44f91 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7394: 3b0c82d7e9f1b8708d351243de7f227153793ede @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_120990v1: da1bb773ff84001b185e7bec54b32b89dff44f91 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>cf364789fcd3 Revert "Revert "drm/i915: Hold reference to
        intel_context over life of i915_request""</p>
    </blockquote>
    <br>
  </body>
</html>

--------------7jNVZoFh3K5bSza580djqOI9--
