Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D47B66459B2
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 13:15:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80FA810E3A2;
	Wed,  7 Dec 2022 12:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F49C10E3AA
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 12:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670415316; x=1701951316;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Xqi0a+mjslE27D7asC08sTotYL7pD5ZAbmU/S2EGFek=;
 b=K/nZgjgayAku33TWrDbBeVNswEhdAjN1azb9KxagwGCqTn6WcdbLOR4z
 2gqk93k14qbREDolk8073IIljnkyRqoyGIlZ2zGLPTgAr6LBDrtxGjbtW
 Cn/6M0q5DsQlUgIt7MDbXYIwtj9Ac7blxtk6VSDis7wpPVIcNW5DeqcuO
 vTAnWQuQ4kbrqzBz0RwkXKYz7gk3jDGNVCRAN1ME4YedIrG4R60EGlq6b
 7J4na8n5egMeosQS1CYhtOqap7xoZyvWK1s68gWIHHEApWCuedR4ULuqX
 sbO3A29MqlIQ0+8688LzA1dqbzBSlHjqW4mKgCESE0LZmB52v4gFyKoAC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="403147187"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="403147187"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 04:15:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="771083064"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="771083064"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.23.163])
 ([10.213.23.163])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 04:15:04 -0800
Message-ID: <eb17c5c0-b0e3-200c-ce89-616038a3d4d3@intel.com>
Date: Wed, 7 Dec 2022 13:15:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20221206234908.2339645-1-andrzej.hajda@intel.com>
 <167037378355.14516.8678510165553410651@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167037378355.14516.8678510165553410651@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_ensure_CSB_FIFOs_after_GuC_reset_do_not_have_odd_e?=
 =?utf-8?q?ntries?=
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

On 07.12.2022 01:43, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/guc: ensure CSB FIFOs after GuC reset do not have odd 
> entries
> *URL:*	https://patchwork.freedesktop.org/series/111697/ 
> <https://patchwork.freedesktop.org/series/111697/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12475 -> Patchwork_111697v1
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_111697v1 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_111697v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/index.html
> 
> 
>     Participating hosts (30 -> 44)
> 
> Additional (15): fi-kbl-soraka bat-kbl-2 bat-adls-5 bat-dg1-6 bat-dg1-5 
> fi-bsw-n3050 bat-dg2-8 bat-adlp-9 bat-dg2-9 bat-adlp-6 bat-adlp-4 
> bat-atsm-1 bat-jsl-3 bat-dg2-11 fi-bsw-nick
> Missing (1): fi-cfl-8700k
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_111697v1:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@guc_multi_lrc:
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@i915_selftest@live@guc_multi_lrc.html>

Known issue: https://gitlab.freedesktop.org/drm/intel/-/issues/7174, I 
am not sure why it is not marked by cibuglog as "known issue".

Regards
Andrzej

> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_111697v1 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@debugfs_test@basic-hwmon:
> 
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@debugfs_test@basic-hwmon.html> (i915#7456 <https://gitlab.freedesktop.org/drm/intel/issues/7456>)
>   *
> 
>     igt@gem_exec_gttfill@basic:
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +7 similar issues
> 
>       o
> 
>         fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12475/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html> (i915#7229 <https://gitlab.freedesktop.org/drm/intel/issues/7229>)
> 
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o
> 
>         fi-bsw-nick: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39 similar issues
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
> 
>   *
> 
>     igt@gem_mmap@basic:
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@gem_mmap@basic.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@gem_mmap@basic.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
> 
>   *
> 
>     igt@gem_render_tiled_blits@basic:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 similar issue
>   *
> 
>     igt@gem_tiled_blits@basic:
> 
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@gem_tiled_blits@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2 similar issues
>   *
> 
>     igt@gem_tiled_fence_blits@basic:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@gem_tiled_fence_blits@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +2 similar issues
>   *
> 
>     igt@gem_tiled_pread_basic:
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@gem_tiled_pread_basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 similar issue
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@gem_tiled_pread_basic.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
> 
>   *
> 
>     igt@i915_module_load@load:
> 
>       o fi-bsw-n3050: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-bsw-n3050/igt@i915_module_load@load.html> (i915#7430 <https://gitlab.freedesktop.org/drm/intel/issues/7430>)
>   *
> 
>     igt@i915_pm_backlight@basic-brightness:
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@i915_pm_backlight@basic-brightness.html> (i915#7561 <https://gitlab.freedesktop.org/drm/intel/issues/7561>)
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html> (i915#7561 <https://gitlab.freedesktop.org/drm/intel/issues/7561>)
> 
>   *
> 
>     igt@i915_pm_rps@basic-api:
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
> 
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@kms_addfb_basic@basic-x-tiled-legacy:
> 
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +7 similar issues
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215>)
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215>)
> 
>   *
> 
>     igt@kms_addfb_basic@tile-pitch-mismatch:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +7 similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-fast:
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8 similar issues
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8 similar issues
> 
>   *
> 
>     igt@kms_chamelium@hdmi-crc-fast:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-fast:
> 
>       o
> 
>         fi-bsw-nick: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-bsw-nick/igt@kms_chamelium@hdmi-hpd-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8 similar issues
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7 similar issues
> 
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
> 
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@kms_force_connector_basic@force-load-detect.html> (i915#4093 <https://gitlab.freedesktop.org/drm/intel/issues/4093>) +3 similar issues
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc:
> 
>       o bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@kms_pipe_crc_basic@suspend-read-crc.html> (i915#3546 <https://gitlab.freedesktop.org/drm/intel/issues/3546>)
>   *
> 
>     igt@kms_psr@primary_page_flip:
> 
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_psr@primary_page_flip.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>) +3 similar issues
>   *
> 
>     igt@kms_psr@sprite_plane_onoff:
> 
>       o bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_psr@sprite_plane_onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>) +3 similar issues
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#4579 <https://gitlab.freedesktop.org/drm/intel/issues/4579>)
> 
>   *
> 
>     igt@prime_vgem@basic-fence-read:
> 
>       o bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@prime_vgem@basic-fence-read.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +3 similar issues
>   *
> 
>     igt@prime_vgem@basic-gtt:
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@prime_vgem@basic-gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 similar issue
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@prime_vgem@basic-gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 similar issue
> 
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@prime_vgem@basic-userptr.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4873 <https://gitlab.freedesktop.org/drm/intel/issues/4873>)
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
> 
>       o
> 
>         bat-dg1-5: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-5/igt@prime_vgem@basic-userptr.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4873 <https://gitlab.freedesktop.org/drm/intel/issues/4873>)
> 
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o
> 
>         bat-dg1-6: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-dg1-6/igt@prime_vgem@basic-write.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +3 similar issues
> 
>       o
> 
>         bat-adlp-4: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-adlp-4/igt@prime_vgem@basic-write.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 similar issues
> 
>   *
> 
>     igt@runner@aborted:
> 
>       o fi-bsw-n3050: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/fi-bsw-n3050/igt@runner@aborted.html> (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_exec_suspend@basic-s3@smem:
> 
>       o {bat-rplp-1}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12475/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html> (i915#2867 <https://gitlab.freedesktop.org/drm/intel/issues/2867>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html>
>   *
> 
>     igt@i915_selftest@live@requests:
> 
>       o {bat-rpls-2}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12475/bat-rpls-2/igt@i915_selftest@live@requests.html> (i915#6257 <https://gitlab.freedesktop.org/drm/intel/issues/6257>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111697v1/bat-rpls-2/igt@i915_selftest@live@requests.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12475 -> Patchwork_111697v1
> 
> CI-20190529: 20190529
> CI_DRM_12475: ebea1ef56080671403683f4c09e89c3e7b7e28da @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7084: ec81855d36887dfe81d5ff513ed6d512773da37e @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_111697v1: ebea1ef56080671403683f4c09e89c3e7b7e28da @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 03494642b502 drm/i915/guc: ensure CSB FIFOs after GuC reset do not have 
> odd entries
> 

