Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DA8665B07
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 13:09:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8DB10E714;
	Wed, 11 Jan 2023 12:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120A710E714
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 12:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673438949; x=1704974949;
 h=message-id:date:mime-version:subject:to:references:from:
 cc:in-reply-to:content-transfer-encoding;
 bh=vaLhdGc3UEfeBMqQd9R49zv7jRlodIY44rEMxV4Xn5A=;
 b=Qvy26DKnnmrnIcexehZZWBvaHN1Wqy7CRbPcbJLWNh4cj2vah8qIL6QZ
 0QyoncJXdmMx9IVs8KnvAthl9VqulQnxTI58k+nwIoJomJuY+zOARspJu
 A23La9k6NA2GsRGTJNKgM845qL3vPIoJxz1SORiqwLRt0wnxPM0lzZat2
 ux886nlhTgqKjAvLglBqHVxFGVA/gB8NloMZcZ2DnusPhQ+pIrrsuEiZw
 H0V7VLAvc60fTbgwZ/AxGPg+8dBJR2lj2Lgglii0dztir54HlhsfzUIxT
 yZv6VsMP0rRmWrubp8F5zSvAGhzaq4V1ABS1mBpfMpoNMhybE3L/EWDbb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="387857880"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="387857880"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 04:09:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="765132072"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="765132072"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.7.172])
 ([10.213.7.172])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 04:09:06 -0800
Message-ID: <46730542-def1-17f0-1a25-5ec6050c3b04@intel.com>
Date: Wed, 11 Jan 2023 13:09:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <167336553276.5203.7592745731911143747@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <167336553276.5203.7592745731911143747@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/core=3A_use_i?=
 =?utf-8?q?ntel=5Fde=5Frmw_if_possible_=28rev3=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>, "Veesam,
 RavitejaX" <ravitejax.veesam@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10.01.2023 16:45, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [v2,1/9] drm/i915/display/core: use 
> intel_de_rmw if possible (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/112438/ 
> <https://patchwork.freedesktop.org/series/112438/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12567 -> Patchwork_112438v3
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_112438v3 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_112438v3, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/index.html
> 
> 
>     Participating hosts (41 -> 41)
> 
> Additional (1): fi-kbl-soraka
> Missing (1): fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_112438v3:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@guc:
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/fi-kbl-soraka/igt@i915_selftest@live@guc.html>


Quite common recently bug with fi-kbl-soraka and GuC [1] or more 
generaly live tests[2], not related.

[1]: 
https://lore.kernel.org/intel-gfx/?q=b%3A%22fi-kbl-soraka%2Figt%40i915_selftest%40live%40guc.html%22
[2]: 
https://lore.kernel.org/intel-gfx/?q=b%3A%22fi-kbl-soraka%2Figt%40i915_selftest%40live%40%22

Regards
Andrzej

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_selftest@live@guc:
>       o {bat-rpls-2}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12567/bat-rpls-2/igt@i915_selftest@live@guc.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/bat-rpls-2/igt@i915_selftest@live@guc.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_112438v3 that come from known 
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
>     igt@gem_exec_gttfill@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +15 similar issues
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html> (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v3/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html> (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12567 -> Patchwork_112438v3
> 
> CI-20190529: 20190529
> CI_DRM_12567: a5cd9627b806f2f42bbacbf9649145f3954830d9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7114: 2fd839599a200c089a5c9dbf5048609faf9b8104 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_112438v3: a5cd9627b806f2f42bbacbf9649145f3954830d9 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> 737bb731534e drm/i915/display/misc: use intel_de_rmw if possible
> 4219e82d96cf drm/i915/display/interfaces: use intel_de_rmw if possible
> bcb374d246e2 drm/i915/display/panel: use intel_de_rmw if possible in 
> panel related code
> db81cb0d0791 drm/i915/display/hdmi: use intel_de_rmw if possible
> a1b81bc46443 drm/i915/display/pch: use intel_de_rmw if possible
> 16d27bbb75d3 drm/i915/display/phys: use intel_de_rmw if possible
> 5717847cc9c8 drm/i915/display/dpll: use intel_de_rmw if possible
> ed71f8596212 drm/i915/display/power: use intel_de_rmw if possible
> 842075203e0b drm/i915/display/core: use intel_de_rmw if possible
> 

