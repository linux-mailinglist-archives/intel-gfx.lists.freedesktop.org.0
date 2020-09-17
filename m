Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA5326D08C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 03:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A636EB75;
	Thu, 17 Sep 2020 01:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA9EC6EB74
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 01:22:46 +0000 (UTC)
IronPort-SDR: yQk3gIYJUeBXJgsJHIJQQLIu4XgJkEaQ3R5cWY/kLtzTh2ue4bqHwYkiwfJQWmoM5i5utPuK5m
 e38+25RqULoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="177681685"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; 
 d="scan'208,217";a="177681685"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 18:22:46 -0700
IronPort-SDR: 2Op0A2uQWKgCjOgSHhLZxCLXLs/AzhwWfAbJkqri3n5wj+8oI0LIFnc2trVp/BNo8JXD8o7UWF
 ILYcVOtyj2aQ==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; 
 d="scan'208,217";a="380363757"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.254.63.12])
 ([10.254.63.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 18:22:45 -0700
To: intel-gfx@lists.freedesktop.org, Petri Latvala <petri.latvala@intel.com>, 
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 Radoslaw Szwichtenberg <radoslaw.szwichtenberg@intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <160028134210.19374.12969903715505955797@emeril.freedesktop.org>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <b2366829-8040-075e-59f8-9a92e749ed99@Intel.com>
Date: Wed, 16 Sep 2020 18:22:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <160028134210.19374.12969903715505955797@emeril.freedesktop.org>
Content-Language: en-GB
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_v49?=
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
Content-Type: multipart/mixed; boundary="===============1189499755=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1189499755==
Content-Type: multipart/alternative;
 boundary="------------84C378F2287C39FE9B65998F"
Content-Language: en-GB

This is a multi-part message in MIME format.
--------------84C378F2287C39FE9B65998F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

The failures below all appear to be because the new GuC firmware was not 
found on the test system.

My understanding is that all we need to do to get the CI system to 
update with new firmwares is to push the firmware to a branch on the FDO 
drm-firmware repo and then send a pull request to this mailing list. 
That was done yesterday.

Is there some other step we need to do? Or do I just need to wait longer 
between the PR and sending the patches?

John.


On 9/16/2020 11:35, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Update to GuC v49
> *URL:* 	https://patchwork.freedesktop.org/series/81761/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/index.html
>
>
>   CI Bug Log - changes from CI_DRM_9019 -> Patchwork_18516
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_18516 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18516, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/index.html
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_18516:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-cfl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html>
>
>      o
>
>         fi-kbl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html>
>
>      o
>
>         fi-skl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-skl-guc/igt@gem_huc_copy@huc-copy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-skl-guc/igt@gem_huc_copy@huc-copy.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-cml-u2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cml-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cml-u2/igt@gem_huc_copy@huc-copy.html>
>
>      o
>
>         fi-cml-s: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cml-s/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cml-s/igt@gem_huc_copy@huc-copy.html>
>
>      o
>
>         fi-icl-y: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-y/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-y/igt@gem_huc_copy@huc-copy.html>
>
>      o
>
>         fi-icl-u2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-u2/igt@gem_huc_copy@huc-copy.html>
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         {fi-ehl-1}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-ehl-1/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-ehl-1/igt@gem_huc_copy@huc-copy.html>
>
>      o
>
>         {fi-tgl-dsi}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_18516 that come from known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-tgl-y: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@gem_huc_copy@huc-copy.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@gem_huc_copy@huc-copy.html>
>         (i915#402 <https://gitlab.freedesktop.org/drm/intel/issues/402>)
>
>      o
>
>         fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-apl-guc/igt@gem_huc_copy@huc-copy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-apl-guc/igt@gem_huc_copy@huc-copy.html>
>         (i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635>)
>
>  *
>
>     igt@i915_pm_rpm@basic-pci-d3-state:
>
>       o fi-byt-j1900: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>       o fi-icl-u2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>)
>  *
>
>     igt@kms_pipe_crc_basic@read-crc-pipe-c:
>
>       o fi-tgl-y: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) +1
>         similar issue
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_tiled_fence_blits@basic:
>
>       o fi-tgl-y: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@gem_tiled_fence_blits@basic.html>
>         (i915#402
>         <https://gitlab.freedesktop.org/drm/intel/issues/402>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@gem_tiled_fence_blits@basic.html>
>  *
>
>     igt@i915_module_load@reload:
>
>      o
>
>         {fi-tgl-dsi}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-dsi/igt@i915_module_load@reload.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         k.org#205379
>         <https://bugzilla.kernel.org/show_bug.cgi?id=205379>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-dsi/igt@i915_module_load@reload.html>
>
>      o
>
>         fi-byt-j1900: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-byt-j1900/igt@i915_module_load@reload.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-byt-j1900/igt@i915_module_load@reload.html>
>         +2 similar issues
>
>      o
>
>         fi-apl-guc: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-apl-guc/igt@i915_module_load@reload.html>
>         (i915#1635
>         <https://gitlab.freedesktop.org/drm/intel/issues/1635> /
>         i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-apl-guc/igt@i915_module_load@reload.html>
>         +1 similar issue
>
>      o
>
>         fi-tgl-y: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@i915_module_load@reload.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982> /
>         k.org#205379
>         <https://bugzilla.kernel.org/show_bug.cgi?id=205379>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@i915_module_load@reload.html>
>
>  *
>
>     igt@kms_busy@basic@modeset:
>
>       o fi-tgl-y: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@kms_busy@basic@modeset.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@kms_busy@basic@modeset.html>
>         +2 similar issues
>  *
>
>     igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
>
>       o fi-icl-u2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-skl-6600u: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-kbl-soraka: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-skl-lmem: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-glk-dsi: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-kbl-x1275: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-kbl-7500u: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-kbl-r: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-r/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-r/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-cfl-8109u: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>      o
>
>         fi-bxt-dsi: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1635
>         <https://gitlab.freedesktop.org/drm/intel/issues/1635> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635>)
>
>      o
>
>         fi-cfl-8700k: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190
>         <https://gitlab.freedesktop.org/drm/intel/issues/2190>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>  *
>
>     igt@i915_module_load@reload:
>
>       o fi-kbl-x1275: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@i915_module_load@reload.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>
>         / i915#92
>         <https://gitlab.freedesktop.org/drm/intel/issues/92>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@i915_module_load@reload.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>
>         / i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>
>         / i915#95 <https://gitlab.freedesktop.org/drm/intel/issues/95>)
>  *
>
>     igt@i915_pm_rpm@module-reload:
>
>      o
>
>         fi-kbl-x1275: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>
>         / i915#95 <https://gitlab.freedesktop.org/drm/intel/issues/95>)
>
>      o
>
>         fi-kbl-guc: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html>
>         (i915#2203
>         <https://gitlab.freedesktop.org/drm/intel/issues/2203>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>
>       o fi-kbl-x1275: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>
>         / i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>
>         / i915#95
>         <https://gitlab.freedesktop.org/drm/intel/issues/95>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html>
>         (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>
>         / i915#92
>         <https://gitlab.freedesktop.org/drm/intel/issues/92>) +2
>         similar issues
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Participating hosts (45 -> 39)
>
> Additional (1): fi-skl-6700k2
> Missing (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan 
> fi-ctg-p8600 fi-byt-clapper fi-bdw-samus
>
>
>     Build changes
>
>   * Linux: CI_DRM_9019 -> Patchwork_18516
>
> CI-20190529: 20190529
> CI_DRM_9019: 038c228475ce10a6f9cc4052250a1315f3c7c627 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5786: 222051026b978ebbc0dc58db62d7a1f29728f95f @ 
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18516: ea57f0f58d2b987626cf191fe047e315401332d6 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> ea57f0f58d2b drm/i915/uc: turn on GuC/HuC auto mode by default
> 44b2ad598451 drm/i915/guc: Clear pointers on free
> 4e7c8483904f drm/i915/guc: Improved reporting when GuC fails to load
> f61c746b164f drm/i915/guc: Update firmware to v49.0.1
> 0ee8c9ccbc81 drm/i915/guc: Increased engine classes in ADS
> bfb299260ee6 drm/i915/guc: Setup doorbells data in ADS
> f93beff182b6 drm/i915/guc: ADS changes for GuC v42
> 64ae9427b7d7 drm/i915/guc: Kill guc_ads.reg_state_buffer
> 5f423aca568b drm/i915/guc: Remove GUC_CTL_CTXINFO init param
> a0177d57bb38 drm/i915/guc: Setup private_data pointer in GuC ADS
> 923da8dfc700 drm/i915/guc: Support logical engine mapping table in ADS
> b85247eec0d5 drm/i915/guc: New GuC IDs based on engine class and instance
>


--------------84C378F2287C39FE9B65998F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Hello,<br>
    <br>
    The failures below all appear to be because the new GuC firmware was
    not found on the test system.<br>
    <br>
    My understanding is that all we need to do to get the CI system to
    update with new firmwares is to push the firmware to a branch on the
    FDO drm-firmware repo and then send a pull request to this mailing
    list. That was done yesterday.<br>
    <br>
    Is there some other step we need to do? Or do I just need to wait
    longer between the PR and sending the patches?<br>
    <br>
    John.<br>
    <br>
    <br>
    On 9/16/2020 11:35, Patchwork wrote:<br>
    <blockquote type="cite"
cite="mid:160028134210.19374.12969903715505955797@emeril.freedesktop.org">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Update to GuC v49</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/81761/"
                moz-do-not-send="true">https://patchwork.freedesktop.org/series/81761/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/index.html"
                moz-do-not-send="true">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_9019 -&gt; Patchwork_18516</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_18516 absolutely
        need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_18516, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/index.html</a></p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_18516:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-cfl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>fi-kbl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>fi-skl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-skl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-skl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-cml-u2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cml-u2/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cml-u2/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a></p>
            </li>
            <li>
              <p>fi-cml-s: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cml-s/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cml-s/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a></p>
            </li>
            <li>
              <p>fi-icl-y: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-y/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-y/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>fi-icl-u2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-u2/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-u2/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>{fi-ehl-1}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-ehl-1/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-ehl-1/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>{fi-tgl-dsi}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a></p>
            </li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_18516 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-tgl-y: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/402"
                  moz-do-not-send="true">i915#402</a>)</p>
            </li>
            <li>
              <p>fi-apl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-apl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-apl-guc/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1635"
                  moz-do-not-send="true">i915#1635</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
          <ul>
            <li>fi-byt-j1900: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>fi-icl-u2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
          <ul>
            <li>fi-tgl-y: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>) +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_tiled_fence_blits@basic:</p>
          <ul>
            <li>fi-tgl-y: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@gem_tiled_fence_blits@basic.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/402"
                moz-do-not-send="true">i915#402</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@gem_tiled_fence_blits@basic.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload:</p>
          <ul>
            <li>
              <p>{fi-tgl-dsi}: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-dsi/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                  moz-do-not-send="true">i915#1982</a> / <a
                  href="https://bugzilla.kernel.org/show_bug.cgi?id=205379"
                  moz-do-not-send="true">k.org#205379</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-dsi/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
            <li>
              <p>fi-byt-j1900: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-byt-j1900/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                  moz-do-not-send="true">i915#1982</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-byt-j1900/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">PASS</a> +2 similar issues</p>
            </li>
            <li>
              <p>fi-apl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-apl-guc/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1635"
                  moz-do-not-send="true">i915#1635</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                  moz-do-not-send="true">i915#1982</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-apl-guc/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">PASS</a> +1 similar issue</p>
            </li>
            <li>
              <p>fi-tgl-y: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                  moz-do-not-send="true">i915#1982</a> / <a
                  href="https://bugzilla.kernel.org/show_bug.cgi?id=205379"
                  moz-do-not-send="true">k.org#205379</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@i915_module_load@reload.html"
                  moz-do-not-send="true">PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_busy@basic@modeset:</p>
          <ul>
            <li>fi-tgl-y: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-tgl-y/igt@kms_busy@basic@modeset.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-tgl-y/igt@kms_busy@basic@modeset.html"
                moz-do-not-send="true">PASS</a> +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
          <ul>
            <li>fi-icl-u2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/1982"
                moz-do-not-send="true">i915#1982</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-skl-6600u: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-kbl-soraka: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-skl-lmem: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-glk-dsi: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-kbl-x1275: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-kbl-7500u: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-kbl-r: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-r/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-r/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-cfl-8109u: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
            <li>
              <p>fi-bxt-dsi: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1635"
                  moz-do-not-send="true">i915#1635</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/1635"
                  moz-do-not-send="true">i915#1635</a>)</p>
            </li>
            <li>
              <p>fi-cfl-8700k: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2190"
                  moz-do-not-send="true">i915#2190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload:</p>
          <ul>
            <li>fi-kbl-x1275: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@i915_module_load@reload.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/92"
                moz-do-not-send="true">i915#92</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@i915_module_load@reload.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/92"
                moz-do-not-send="true">i915#92</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/95"
                moz-do-not-send="true">i915#95</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@module-reload:</p>
          <ul>
            <li>
              <p>fi-kbl-x1275: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                  moz-do-not-send="true">i915#62</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html"
                  moz-do-not-send="true">DMESG-FAIL</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                  moz-do-not-send="true">i915#62</a> / <a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/95"
                  moz-do-not-send="true">i915#95</a>)</p>
            </li>
            <li>
              <p>fi-kbl-guc: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html"
                  moz-do-not-send="true">DMESG-WARN</a> (<a
                  href="https://gitlab.freedesktop.org/drm/intel/issues/2203"
                  moz-do-not-send="true">i915#2203</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html"
                  moz-do-not-send="true">SKIP</a> (<a
                  href="https://bugs.freedesktop.org/show_bug.cgi?id=109271"
                  moz-do-not-send="true">fdo#109271</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
          <ul>
            <li>fi-kbl-x1275: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/92"
                moz-do-not-send="true">i915#92</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/95"
                moz-do-not-send="true">i915#95</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18516/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
                href="https://gitlab.freedesktop.org/drm/intel/issues/62"
                moz-do-not-send="true">i915#62</a> / <a
                href="https://gitlab.freedesktop.org/drm/intel/issues/92"
                moz-do-not-send="true">i915#92</a>) +2 similar issues</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Participating hosts (45 -&gt; 39)</h2>
      <p>Additional (1): fi-skl-6700k2 <br>
        Missing (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan
        fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_9019 -&gt; Patchwork_18516</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_9019: 038c228475ce10a6f9cc4052250a1315f3c7c627 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_5786: 222051026b978ebbc0dc58db62d7a1f29728f95f @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/xorg/app/intel-gpu-tools">git://anongit.freedesktop.org/xorg/app/intel-gpu-tools</a><br>
        Patchwork_18516: ea57f0f58d2b987626cf191fe047e315401332d6 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <p>== Linux commits ==</p>
      <p>ea57f0f58d2b drm/i915/uc: turn on GuC/HuC auto mode by default<br>
        44b2ad598451 drm/i915/guc: Clear pointers on free<br>
        4e7c8483904f drm/i915/guc: Improved reporting when GuC fails to
        load<br>
        f61c746b164f drm/i915/guc: Update firmware to v49.0.1<br>
        0ee8c9ccbc81 drm/i915/guc: Increased engine classes in ADS<br>
        bfb299260ee6 drm/i915/guc: Setup doorbells data in ADS<br>
        f93beff182b6 drm/i915/guc: ADS changes for GuC v42<br>
        64ae9427b7d7 drm/i915/guc: Kill guc_ads.reg_state_buffer<br>
        5f423aca568b drm/i915/guc: Remove GUC_CTL_CTXINFO init param<br>
        a0177d57bb38 drm/i915/guc: Setup private_data pointer in GuC ADS<br>
        923da8dfc700 drm/i915/guc: Support logical engine mapping table
        in ADS<br>
        b85247eec0d5 drm/i915/guc: New GuC IDs based on engine class and
        instance</p>
    </blockquote>
    <br>
  </body>
</html>

--------------84C378F2287C39FE9B65998F--

--===============1189499755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1189499755==--
