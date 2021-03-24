Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A34B5347804
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 13:14:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D786EB8A;
	Wed, 24 Mar 2021 12:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4ECF6EB7E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 12:13:59 +0000 (UTC)
IronPort-SDR: qwzRg6ocRbUL+lya5fP/lsg94Yp8NfaPkSfqcEhmcIbVoUNCr1XAKmzeL54karnz0LPJ6XuYx4
 NyWu1TGSyp/Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="177807156"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="177807156"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 05:13:58 -0700
IronPort-SDR: eJ9JzfS4bQjijMAHEtiSTBRYHKnaP8GHFoMCeCl3k98nuBDgKCCm9tjhQRpQgbwRo/9mdB8nKm
 65uNYEmxWbmQ==
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; d="scan'208";a="415461188"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.252.163.96])
 ([10.252.163.96])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2021 05:13:57 -0700
To: intel-gfx@lists.freedesktop.org, lakshminarayana.vudum@intel.com
References: <20210323112422.1211-1-ankit.k.nautiyal@intel.com>
 <161651358353.20053.11792700618658578135@emeril.freedesktop.org>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <c6bcc93e-0a90-f651-e5c8-3544ac08925c@intel.com>
Date: Wed, 24 Mar 2021 17:43:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <161651358353.20053.11792700618658578135@emeril.freedesktop.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSERN?=
 =?utf-8?q?I2=2E1_PCON_Misc_Fixes_=28rev5=29?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi,

igt@kms_chamelium@hdmi-hpd-fast:

  * fi-icl-u2: PASS
    <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
    -> DMESG-WARN
    <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>

This is existing issue 
https://gitlab.freedesktop.org/drm/intel/-/issues/2868


Regards,

Ankit

On 3/23/2021 9:03 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	HDMI2.1 PCON Misc Fixes (rev5)
> *URL:* 	https://patchwork.freedesktop.org/series/86677/ 
> <https://patchwork.freedesktop.org/series/86677/>
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/index.html>
>
>
>   CI Bug Log - changes from CI_DRM_9885 -> Patchwork_19838
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_19838 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_19838, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/index.html
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_19838:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_chamelium@hdmi-hpd-fast:
>       o fi-icl-u2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_19838 that come from known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@amdgpu/amd_prime@amd-to-i915:
>
>       o fi-kbl-8809g: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-kbl-8809g/igt@amdgpu/amd_prime@amd-to-i915.html>
>         (i915#2947 <https://gitlab.freedesktop.org/drm/intel/issues/2947>)
>  *
>
>     igt@gem_exec_suspend@basic-s0:
>
>       o fi-kbl-soraka: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html>
>         (i915#155 <https://gitlab.freedesktop.org/drm/intel/issues/155>)
>  *
>
>     igt@gem_mmap_gtt@basic:
>
>       o fi-tgl-y: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_mmap_gtt@basic.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-tgl-y/igt@gem_mmap_gtt@basic.html>
>         (i915#402
>         <https://gitlab.freedesktop.org/drm/intel/issues/402>) +2
>         similar issues
>  *
>
>     igt@runner@aborted:
>
>       o fi-kbl-8809g: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-kbl-8809g/igt@runner@aborted.html>
>         (i915#2947 <https://gitlab.freedesktop.org/drm/intel/issues/2947>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_gttfill@basic:
>
>       o fi-kbl-8809g: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html>
>         (i915#3145
>         <https://gitlab.freedesktop.org/drm/intel/issues/3145>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html>
>  *
>
>     igt@gem_exec_suspend@basic-s3:
>
>       o fi-tgl-y: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html>
>         (i915#2411
>         <https://gitlab.freedesktop.org/drm/intel/issues/2411> /
>         i915#402
>         <https://gitlab.freedesktop.org/drm/intel/issues/402>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html>
>  *
>
>     igt@gem_flink_basic@bad-flink:
>
>       o fi-tgl-y: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-tgl-y/igt@gem_flink_basic@bad-flink.html>
>         (i915#402
>         <https://gitlab.freedesktop.org/drm/intel/issues/402>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-tgl-y/igt@gem_flink_basic@bad-flink.html>
>         +1 similar issue
>  *
>
>     igt@i915_selftest@live@client:
>
>       o fi-glk-dsi: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-glk-dsi/igt@i915_selftest@live@client.html>
>         (i915#3047
>         <https://gitlab.freedesktop.org/drm/intel/issues/3047>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-glk-dsi/igt@i915_selftest@live@client.html>
>  *
>
>     igt@kms_chamelium@common-hpd-after-suspend:
>
>       o fi-kbl-7500u: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (i915#165
>         <https://gitlab.freedesktop.org/drm/intel/issues/165>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html>
>
>
>         Warnings
>
>   * igt@gem_linear_blits@basic:
>       o fi-kbl-8809g: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9885/fi-kbl-8809g/igt@gem_linear_blits@basic.html>
>         (i915#2502
>         <https://gitlab.freedesktop.org/drm/intel/issues/2502> /
>         i915#3145
>         <https://gitlab.freedesktop.org/drm/intel/issues/3145>) ->
>         TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19838/fi-kbl-8809g/igt@gem_linear_blits@basic.html>
>         (i915#3145 <https://gitlab.freedesktop.org/drm/intel/issues/3145>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Participating hosts (48 -> 42)
>
> Missing (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 
> fi-icl-y fi-bdw-samus
>
>
>     Build changes
>
>   * Linux: CI_DRM_9885 -> Patchwork_19838
>
> CI-20190529: 20190529
> CI_DRM_9885: 370158d493f88d52f5aae76794228f47dd04cfe3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6042: 529e182e30117d083ac0693011f1af04357d0115 @ 
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_19838: 120f8c9b0706eb3f52bc2185346c2f731b873a8e @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> 120f8c9b0706 drm/i915/display: Configure HDMI2.1 Pcon for FRL only if 
> Src-Ctl mode is available
> 873474340aaa drm/dp_helper: Define options for FRL training for 
> HDMI2.1 PCON
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
