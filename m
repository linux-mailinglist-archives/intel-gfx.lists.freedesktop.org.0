Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8997D94DB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 12:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A77110E963;
	Fri, 27 Oct 2023 10:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD35310E963
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 10:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698401515; x=1729937515;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=bqGPkibeO4JY4ZLbUpDCxqnbFk2SFEfBWyrJszhG+qE=;
 b=ORhETmZXBAOPxq93KfsG5ttMzC4aucYqnv5zIEM0wHYaMEBV802O8kUm
 qF/3z1EEJmAtaS9atuwxU3LksLhwT36U+85decWkpYDpmmFn8uNWqOk9Y
 Ee1p5EIDjB5jnGkKXu/9+0jkJMo5caDcznpGcIrBqCNUQiOAefZQ/fTlC
 kOf4dOK8pU1xa4CK2hpEIO3/Id82SvTOfAnCEivybK6rwctOaAeyRCzjf
 vuPURZ0I19pAwEtHZ0EVt4wcsmi0bwOYxXjgL5DHAtvS/w7RdvoU56h1g
 VgjZelu2iZO/GjU1U2Sya1a5zAbfvnzIGPMwfrRxOVTzxZfE/I7IfZ+Li A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="454211559"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
 d="scan'208,217";a="454211559"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 03:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="829940126"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
 d="scan'208,217";a="829940126"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.37])
 ([10.213.18.37])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 03:11:53 -0700
Content-Type: multipart/alternative;
 boundary="------------P01QQVSw3Yo4mmQTNhps2MFn"
Message-ID: <7c7afc62-abe2-4986-b799-97f1f29b3ed3@intel.com>
Date: Fri, 27 Oct 2023 12:11:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
 <169839556178.19712.6967547600377437958@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169839556178.19712.6967547600377437958@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQXBw?=
 =?utf-8?q?ly_Wa=5F16018031267_/_Wa=5F16018063123_=28rev2=29?=
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
--------------P01QQVSw3Yo4mmQTNhps2MFn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 27.10.2023 10:32, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Apply Wa_16018031267 / Wa_16018063123 (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/125650/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13799 -> Patchwork_125650v2
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_125650v2 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_125650v2, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/index.html
>
>
>     Participating hosts (36 -> 39)
>
> Additional (5): fi-kbl-soraka fi-bsw-n3050 bat-dg2-8 bat-dg2-9 
> fi-pnv-d510
> Missing (2): bat-mtlp-8 fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_125650v2:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_selftest@live@guc:
>
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@i915_selftest@live@guc.html>
>

This machine quite often becomes unresponsive [1], not related.

[1]: 
https://gfx-ci.igk.intel.com/cibuglog-ng/results/all?query=test_name%20~=%20%22igt@i915_selftest@live@%22%20AND%20status_name%20~=%20%22incomplete%22

>  *
>  *
>
>     igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
>
>       o bat-dg2-8: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html>
>

Known issue, occasionally happens:
https://gitlab.freedesktop.org/drm/intel/-/issues/6703

Regards
Andrzej

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_125650v2 that come from known 
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
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-jsl-1/boot.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-jsl-1/boot.html>
>         (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>)
>
>
>         Possible fixes
>
>   * boot:
>       o fi-hsw-4770: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/fi-hsw-4770/boot.html>
>         (i915#8293
>         <https://gitlab.freedesktop.org/drm/intel/issues/8293>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/boot.html>
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_suspend@basic-s3@lmem0:
>
>       o bat-atsm-1: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html>
>         (i915#8841
>         <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +4
>         other tests dmesg-warn
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         other tests skip
>  *
>
>     igt@gem_lmem_swapping@random-engines:
>
>       o fi-bsw-n3050: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +18
>         other tests skip
>  *
>
>     igt@gem_mmap@basic:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>
>  *
>
>     igt@gem_mmap_gtt@basic:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2
>         other tests skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@gem_mmap_gtt@basic.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2
>         other tests skip
>
>  *
>
>     igt@gem_render_tiled_blits@basic:
>
>       o bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1
>         other test skip
>  *
>
>     igt@gem_tiled_pread_basic:
>
>       o bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@gem_tiled_pread_basic.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1
>         other test skip
>  *
>
>     igt@i915_pm_rps@basic-api:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>      o
>
>         bat-atsm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6645 <https://gitlab.freedesktop.org/drm/intel/issues/6645>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#6645 <https://gitlab.freedesktop.org/drm/intel/issues/6645>)
>
>  *
>
>     igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>      o
>
>         fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>  *
>
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215
>         <https://gitlab.freedesktop.org/drm/intel/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215
>         <https://gitlab.freedesktop.org/drm/intel/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>
>  *
>
>     igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6
>         other tests skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +6
>         other tests skip
>
>  *
>
>     igt@kms_addfb_basic@tile-pitch-mismatch:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212> /
>         i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/intel/issues/4212> /
>         i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103> /
>         i915#4213
>         <https://gitlab.freedesktop.org/drm/intel/issues/4213> /
>         i915#5608
>         <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1
>         other test skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103> /
>         i915#4213
>         <https://gitlab.freedesktop.org/drm/intel/issues/4213> /
>         i915#5608
>         <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1
>         other test skip
>
>  *
>
>     igt@kms_dsc@dsc-basic:
>
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9
>         other tests skip
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>
>  *
>
>     igt@kms_force_connector_basic@prune-stale-modes:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274 <https://gitlab.freedesktop.org/drm/intel/issues/5274>)
>
>  *
>
>     igt@kms_hdmi_inject@inject-audio:
>
>       o fi-bsw-n3050: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html>
>         (IGT#3
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3>)
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
>
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +12
>         other tests skip
>  *
>
>     igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>
>       o bat-dg2-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#9197
>         <https://gitlab.freedesktop.org/drm/intel/issues/9197>) +2
>         other tests skip
>  *
>
>     igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
>
>       o bat-rplp-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html>
>         (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc:
>
>       o bat-atsm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html>
>         (i915#1836 <https://gitlab.freedesktop.org/drm/intel/issues/1836>)
>  *
>
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
>
>       o fi-hsw-4770: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html>
>         (i915#8841
>         <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +6
>         other tests dmesg-warn
>  *
>
>     igt@kms_psr@cursor_plane_move:
>
>       o bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_psr@cursor_plane_move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>  *
>
>     igt@kms_psr@primary_page_flip:
>
>       o fi-pnv-d510: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +29
>         other tests skip
>  *
>
>     igt@kms_psr@sprite_plane_onoff:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>
>      o
>
>         fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3
>         other tests skip
>
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>
>  *
>
>     igt@prime_vgem@basic-fence-mmap:
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         other test skip
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1
>         other test skip
>
>  *
>
>     igt@prime_vgem@basic-write:
>
>      o
>
>         bat-dg2-9: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>      o
>
>         bat-dg2-8: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@prime_vgem@basic-write.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/intel/issues/3291> /
>         i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2
>         other tests skip
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_selftest@live@gem_contexts:
>
>       o bat-atsm-1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html>
>         (i915#9174
>         <https://gitlab.freedesktop.org/drm/intel/issues/9174>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html>
>  *
>
>     igt@kms_flip@basic-flip-vs-dpms@b-dp5:
>
>       o bat-adlp-11: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html>
>         (i915#6868
>         <https://gitlab.freedesktop.org/drm/intel/issues/6868>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html>
>  *
>
>     igt@kms_flip@basic-flip-vs-dpms@d-dp5:
>
>       o bat-adlp-11: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html>
>         (i915#6121
>         <https://gitlab.freedesktop.org/drm/intel/issues/6121>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html>
>         +1 other test pass
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * IGT: IGT_7559 -> IGTPW_10075
>   * Linux: CI_DRM_13799 -> Patchwork_125650v2
>
> CI-20190529: 20190529
> CI_DRM_13799: 76ad050e075bcd86919ed755602ded34c0d9e276 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGTPW_10075: 
> https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10075/index.html
> IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_125650v2: 76ad050e075bcd86919ed755602ded34c0d9e276 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 877e71c8abc9 drm/i915: Set copy engine arbitration for Wa_16018031267 
> / Wa_16018063123
> ef82fc3fd6c7 drm/i915/gt: add selftest to exercise WABB
> d4d27a67ac53 drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
> 14ef5423967f drm/i915: Reserve some kernel space per vm
>

--------------P01QQVSw3Yo4mmQTNhps2MFn
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
    <div class="moz-cite-prefix">On 27.10.2023 10:32, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:169839556178.19712.6967547600377437958@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Apply Wa_16018031267 / Wa_16018063123 (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/125650/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/125650/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13799 -&gt;
        Patchwork_125650v2</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_125650v2
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_125650v2, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:lgci.bug.filing@intel.com">lgci.bug.filing@intel.com</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/index.html</a></p>
      <h2>Participating hosts (36 -&gt; 39)</h2>
      <p>Additional (5): fi-kbl-soraka fi-bsw-n3050 bat-dg2-8 bat-dg2-9
        fi-pnv-d510 <br>
        Missing (2): bat-mtlp-8 fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_125650v2:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@guc:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@i915_selftest@live@guc.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    This machine quite often becomes unresponsive [1], not related.<br>
    <br>
    [1]:
<a class="moz-txt-link-freetext" href="https://gfx-ci.igk.intel.com/cibuglog-ng/results/all?query=test_name%20~=%20%22igt@i915_selftest@live@%22%20AND%20status_name%20~=%20%22incomplete%22">https://gfx-ci.igk.intel.com/cibuglog-ng/results/all?query=test_name%20~=%20%22igt@i915_selftest@live@%22%20AND%20status_name%20~=%20%22incomplete%22</a><br>
    <br>
    <blockquote type="cite"
cite="mid:169839556178.19712.6967547600377437958@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:</p>
          <ul>
            <li>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <br>
    Known issue, occasionally happens:<br>
    <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/intel/-/issues/6703">https://gitlab.freedesktop.org/drm/intel/-/issues/6703</a><br>
    <br>
    Regards<br>
    Andrzej<br>
    <br>
    <blockquote type="cite"
cite="mid:169839556178.19712.6967547600377437958@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_125650v2 that come from
        known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>bat-jsl-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-jsl-1/boot.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-jsl-1/boot.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8293"
                moz-do-not-send="true">i915#8293</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>boot:
          <ul>
            <li>fi-hsw-4770: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/fi-hsw-4770/boot.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8293"
                moz-do-not-send="true">i915#8293</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/boot.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@lmem0:</p>
          <ul>
            <li>bat-atsm-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@gem_exec_suspend@basic-s3@lmem0.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8841"
                moz-do-not-send="true">i915#8841</a>) +4 other tests
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
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
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random-engines:</p>
          <ul>
            <li>fi-bsw-n3050: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +18 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap@basic:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@gem_mmap@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                  moz-do-not-send="true">i915#4083</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@gem_mmap@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4083"
                  moz-do-not-send="true">i915#4083</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@gem_mmap_gtt@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +2 other tests
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@gem_mmap_gtt@basic.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +2 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_tiled_blits@basic:</p>
          <ul>
            <li>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@gem_render_tiled_blits@basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_basic:</p>
          <ul>
            <li>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@gem_tiled_pread_basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4079"
                moz-do-not-send="true">i915#4079</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@basic-api:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@i915_pm_rps@basic-api.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6621"
                  moz-do-not-send="true">i915#6621</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@i915_pm_rps@basic-api.html"
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
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1886"
                moz-do-not-send="true">i915#1886</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>
              <p>bat-atsm-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6645"
                  moz-do-not-send="true">i915#6645</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6645"
                  moz-do-not-send="true">i915#6645</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
            <li>
              <p>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4215"
                  moz-do-not-send="true">i915#4215</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4215"
                  moz-do-not-send="true">i915#4215</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5190"
                  moz-do-not-send="true">i915#5190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a>) +6 other tests
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a>) +6 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4212"
                  moz-do-not-send="true">i915#4212</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                  moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4213"
                  moz-do-not-send="true">i915#4213</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/4103"
                  moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4213"
                  moz-do-not-send="true">i915#4213</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/5608"
                  moz-do-not-send="true">i915#5608</a>) +1 other test
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-basic:</p>
          <ul>
            <li>fi-kbl-soraka: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-kbl-soraka/igt@kms_dsc@dsc-basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_force_connector_basic@force-load-detect.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109285"
                  moz-do-not-send="true">fdo#109285</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@prune-stale-modes:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5274"
                  moz-do-not-send="true">i915#5274</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/5274"
                  moz-do-not-send="true">i915#5274</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdmi_inject@inject-audio:</p>
          <ul>
            <li>fi-bsw-n3050: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3"
                moz-do-not-send="true">IGT#3</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +12 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
          <ul>
            <li>bat-dg2-11: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1845"
                moz-do-not-send="true">i915#1845</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/9197"
                moz-do-not-send="true">i915#9197</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
          <ul>
            <li>bat-rplp-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8668"
                moz-do-not-send="true">i915#8668</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
          <ul>
            <li>bat-atsm-1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1836"
                moz-do-not-send="true">i915#1836</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:</p>
          <ul>
            <li>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/8841"
                moz-do-not-send="true">i915#8841</a>) +6 other tests
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@cursor_plane_move:</p>
          <ul>
            <li>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_psr@cursor_plane_move.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                moz-do-not-send="true">i915#1072</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@primary_page_flip:</p>
          <ul>
            <li>fi-pnv-d510: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                moz-do-not-send="true">fdo#109271</a>) +29 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@sprite_plane_onoff:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_psr@sprite_plane_onoff.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                  moz-do-not-send="true">i915#1072</a>) +3 other tests
                skip</p>
            </li>
            <li>
              <p>fi-hsw-4770: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/1072"
                  moz-do-not-send="true">i915#1072</a>) +3 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                  moz-do-not-send="true">i915#4098</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3555"
                  moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4098"
                  moz-do-not-send="true">i915#4098</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>)</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@prime_vgem@basic-fence-flip.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-mmap:</p>
          <ul>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@prime_vgem@basic-fence-mmap.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/4077"
                  moz-do-not-send="true">i915#4077</a>) +1 other test
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-write:</p>
          <ul>
            <li>
              <p>bat-dg2-9: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-9/igt@prime_vgem@basic-write.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                  moz-do-not-send="true">i915#3291</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>) +2 other tests
                skip</p>
            </li>
            <li>
              <p>bat-dg2-8: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-dg2-8/igt@prime_vgem@basic-write.html"
                  moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/3291"
                  moz-do-not-send="true">i915#3291</a> / <a
href="https://gitlab.freedesktop.org/drm/intel/issues/3708"
                  moz-do-not-send="true">i915#3708</a>) +2 other tests
                skip</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@gem_contexts:</p>
          <ul>
            <li>bat-atsm-1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/9174"
                moz-do-not-send="true">i915#9174</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-dpms@b-dp5:</p>
          <ul>
            <li>bat-adlp-11: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html"
                moz-do-not-send="true">DMESG-FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6868"
                moz-do-not-send="true">i915#6868</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@b-dp5.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-dpms@d-dp5:</p>
          <ul>
            <li>bat-adlp-11: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13799/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/intel/issues/6121"
                moz-do-not-send="true">i915#6121</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125650v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html"
                moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>IGT: IGT_7559 -&gt; IGTPW_10075</li>
        <li>Linux: CI_DRM_13799 -&gt; Patchwork_125650v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13799: 76ad050e075bcd86919ed755602ded34c0d9e276 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGTPW_10075:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10075/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_10075/index.html</a><br>
        IGT_7559: 62ac3d2ddb6005b16df00a36565779848c1390c9 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_125650v2: 76ad050e075bcd86919ed755602ded34c0d9e276 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>877e71c8abc9 drm/i915: Set copy engine arbitration for
        Wa_16018031267 / Wa_16018063123<br>
        ef82fc3fd6c7 drm/i915/gt: add selftest to exercise WABB<br>
        d4d27a67ac53 drm/i915: Add WABB blit for Wa_16018031267 /
        Wa_16018063123<br>
        14ef5423967f drm/i915: Reserve some kernel space per vm</p>
    </blockquote>
    <br>
  </body>
</html>

--------------P01QQVSw3Yo4mmQTNhps2MFn--
