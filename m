Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3347DF0AA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 11:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC5D10E848;
	Thu,  2 Nov 2023 10:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F23010E848
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 10:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698922546; x=1730458546;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=UJ9iIy0kR6VGz2TWqI8yFC7MCIEoBN2nCgVCB4ILVcE=;
 b=nKYyF1XxGhTkC9qTmalL3O59YdsyUIEt0DcH7HAHt9uBww4p8/mX0/eO
 RBfcU7vwWBYyAaN3WpRH+6bJb8xq+VFHIIo/F5scyn/dpsSxg4neYSxNo
 NBoGE0TUTO9PVPUvwRhCnTzzH2y4sYuXT2boT4PzLMU/bOP9iQJBqzo5t
 rDv1VNJFRVuA1Ge2B8nL7L+iKI+qIU4nCC0m//cIu0Ud/2SxPIeqd5gmo
 jvee8kFVD2UaSfXam9k+6Yqv2FIBL7Uyl1EPYi316Y/ukwhoae9PHwn5D
 MjLL0IUmKXweXItBi1Yg6xTUZQ1bsIXac+WULkyjPZd7S2n1TH4YjRKmJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="391549369"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="391549369"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 03:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="1008433174"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="1008433174"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.21.247])
 ([10.213.21.247])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 03:55:10 -0700
Message-ID: <275b49f4-c360-4b1c-99fc-e26960c4e840@intel.com>
Date: Thu, 2 Nov 2023 11:55:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
 <169879161286.27664.16754661815328032641@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169879161286.27664.16754661815328032641@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?q?=C3=A2_Fi=2ECI=2EBAT=3A_failure_for_drm/i9?=
 =?utf-8?q?15=3A_use_ref=5Ftracker_library_in_i915_=28rev2=29?=
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

On 31.10.2023 23:33, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: use ref_tracker library in i915 (rev2)
> *URL:*	https://patchwork.freedesktop.org/series/125770/ 
> <https://patchwork.freedesktop.org/series/125770/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13823 -> Patchwork_125770v2
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_125770v2 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_125770v2, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/index.html
> 
> 
>     Participating hosts (35 -> 37)
> 
> Additional (4): fi-kbl-soraka bat-kbl-2 bat-adlm-1 bat-adlp-11
> Missing (2): fi-snb-2520m fi-skl-6600u
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_125770v2:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_exec_fence@basic-await:
> 
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-kbl-soraka/igt@gem_exec_fence@basic-await.html>
>   *
> 
>     igt@i915_selftest@live@gtt:
> 
>       o fi-hsw-4770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13823/fi-hsw-4770/igt@i915_selftest@live@gtt.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-hsw-4770/igt@i915_selftest@live@gtt.html>


Failures does not seems to be related (no traces pointing at 
i915/ref_tracker), on the other side re-triggering the test results in 
INCOMPLETE on different tests. Any clues?

Regards
Andrzej


> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_125770v2 that come from known 
> issues:
> 
> 
>       CI changes
> 
> 
>         Possible fixes
> 
>   * boot:
>       o bat-jsl-1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13823/bat-jsl-1/boot.html> (i915#8293 <https://gitlab.freedesktop.org/drm/intel/issues/8293>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/boot.html>
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
>       o
> 
>         bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@debugfs_test@basic-hwmon.html> (i915#3826 <https://gitlab.freedesktop.org/drm/intel/issues/3826>)
> 
>       o
> 
>         bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/igt@debugfs_test@basic-hwmon.html> (i915#9318 <https://gitlab.freedesktop.org/drm/intel/issues/9318>)
> 
>       o
> 
>         bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlp-11/igt@debugfs_test@basic-hwmon.html> (i915#9318 <https://gitlab.freedesktop.org/drm/intel/issues/9318>)
> 
>   *
> 
>     igt@fbdev@info:
> 
>       o
> 
>         bat-kbl-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-kbl-2/igt@fbdev@info.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>)
> 
>       o
> 
>         bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@fbdev@info.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>)
> 
>   *
> 
>     igt@fbdev@read:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@fbdev@read.html> (i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>) +3 other tests skip
>   *
> 
>     igt@gem_exec_suspend@basic-s0@smem:
> 
>       o bat-dg2-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13823/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html> (i915#9275 <https://gitlab.freedesktop.org/drm/intel/issues/9275>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>       o
> 
>         bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
> 
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o
> 
>         bat-kbl-2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39 other tests skip
> 
>       o
> 
>         bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 other tests skip
> 
>       o
> 
>         bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/igt@gem_lmem_swapping@parallel-random-engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 other tests skip
> 
>   *
> 
>     igt@gem_tiled_pread_basic:
> 
>       o
> 
>         bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlp-11/igt@gem_tiled_pread_basic.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
> 
>       o
> 
>         bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@gem_tiled_pread_basic.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
> 
>   *
> 
>     igt@i915_pm_rps@basic-api:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@i915_pm_rps@basic-api.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +9 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o
> 
>         bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1 other test skip
> 
>       o
> 
>         bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlp-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>) +1 other test skip
> 
>   *
> 
>     igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845>) +17 other tests skip
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o
> 
>         bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlp-11/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840>)
> 
>       o
> 
>         bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1 other test skip
> 
>   *
> 
>     igt@kms_flip@basic-flip-vs-wf_vblank:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@kms_flip@basic-flip-vs-wf_vblank.html> (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +3 other tests skip
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o
> 
>         bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
>       o
> 
>         bat-jsl-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
> 
>   *
> 
>     igt@kms_force_connector_basic@prune-stale-modes:
> 
>       o bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlp-11/igt@kms_force_connector_basic@prune-stale-modes.html> (i915#4093 <https://gitlab.freedesktop.org/drm/intel/issues/4093>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@basic:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>)
>   *
> 
>     igt@kms_hdmi_inject@inject-audio:
> 
>       o
> 
>         fi-kbl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13823/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html> (IGT#3 <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3>)
> 
>       o
> 
>         bat-adlp-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlp-11/igt@kms_hdmi_inject@inject-audio.html> (i915#4369 <https://gitlab.freedesktop.org/drm/intel/issues/4369>)
> 
>   *
> 
>     igt@kms_psr@cursor_plane_move:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@kms_psr@cursor_plane_move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +3 other tests skip
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-fence-flip:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o bat-adlm-1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/bat-adlm-1/igt@prime_vgem@basic-write.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 other tests skip
> 
> 
>         Possible fixes
> 
>   * igt@kms_frontbuffer_tracking@basic:
>       o fi-bsw-nick: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13823/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html> (i915#9276 <https://gitlab.freedesktop.org/drm/intel/issues/9276>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_13823 -> Patchwork_125770v2
> 
> CI-20190529: 20190529
> CI_DRM_13823: 3f4656949887086d179f7d5c78aa8b749efa20dc @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7566: 7566
> Patchwork_125770v2: 3f4656949887086d179f7d5c78aa8b749efa20dc @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 5e37bcacbf1c drm/i915: Track gt pm wakerefs
> aa8ab17d3195 drm/i915: Replace custom intel runtime_pm tracker with 
> ref_tracker library
> 

