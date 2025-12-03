Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973AC9EC35
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 11:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0878089B78;
	Wed,  3 Dec 2025 10:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jo8WLHpN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06FC89B78
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Dec 2025 10:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764758936; x=1796294936;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xaAdlRs3LGD9+jr1IT7T1r5PXU9vZw2NjNhtoGnM+qw=;
 b=jo8WLHpNylV/AFyJfcQb8wyeXcbVnzxov+oc2dFckksCJN7YeoZxTPoU
 lJqobpQClwz8dah8c+VacI9IpGSeS9ySWoC4ZPwTBStnvNm+vv29fwf2R
 xPYBcqjhuUQ6T38b7TiFQV16jUqsJiqbn/CFu95FgKoOmggyadbPiEQ9u
 AH2jQdEFeWAIE75Vu2fcqhqGdHSbBvz8dziPWxHL7ewfLK0dQ0OwM/MT2
 vkHBJEM/N3leLK6jZJWoKzCL1wOB3pozSsrSTfCyvvD0c4BeG+tdLvjqa
 m8Nb2h8R0Ku2j/xF4Uf+/v3D158CFinIG4Sdy/MJYoEKAl9OpvPjLchy8 A==;
X-CSE-ConnectionGUID: 3VjQbWKHSAitMoJ8FQXDwQ==
X-CSE-MsgGUID: UrMCNEs9TuaVAfQ/GdzV9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="77428704"
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="77428704"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:48:56 -0800
X-CSE-ConnectionGUID: CwQQJVgyRey4nNZ3g97iGQ==
X-CSE-MsgGUID: dnn4o54bTgC/lqU/7KRbiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,245,1758610800"; d="scan'208";a="231988882"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO [10.245.245.67])
 ([10.245.245.67])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 02:48:54 -0800
Message-ID: <dc4d04b4-2d29-4a19-8d11-58051673e0a6@intel.com>
Date: Wed, 3 Dec 2025 11:48:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?display=3A_stop_using_the_configurable_fence_timeout_=28rev2=29?=
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20251112155612.8320-1-jani.nikula@intel.com>
 <176310680567.54560.8073003092226406962@10055242dc62>
 <3692f126b907c442d76a93957073660d7d9ffd12@intel.com>
 <aSXmTMWeOXjnYNSB@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@intel.com>
In-Reply-To: <aSXmTMWeOXjnYNSB@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2025-11-25 kl. 18:24, skrev Ville Syrjälä:
> On Tue, Nov 25, 2025 at 03:55:02PM +0200, Jani Nikula wrote:
>> On Fri, 14 Nov 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>>> == Series Details ==
>>>
>>> Series: drm/i915/display: stop using the configurable fence timeout (rev2)
>>> URL   : https://patchwork.freedesktop.org/series/157441/
>>> State : failure
>>>
>>> == Summary ==
>>>
>>> CI Bug Log - changes from CI_DRM_17544_full -> Patchwork_157441v2_full
>>> ====================================================
>>>
>>> Summary
>>> -------
>>>
>>>   **FAILURE**
>>>
>>>   Serious unknown changes coming with Patchwork_157441v2_full absolutely need to be
>>>   verified manually.
>>>   
>>>   If you think the reported changes have nothing to do with the changes
>>>   introduced in Patchwork_157441v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>>>   to document this new failure mode, which will reduce false positives in CI.
>>>
>>>   
>>>
>>> Participating hosts (10 -> 11)
>>> ------------------------------
>>>
>>>   Additional (1): shard-dg2-set2 
>>>
>>> Possible new issues
>>> -------------------
>>>
>>>   Here are the unknown changes that may have been introduced in Patchwork_157441v2_full:
>>>
>>> ### IGT changes ###
>>>
>>> #### Possible regressions ####
>>>
>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a:
>>>     - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2] +5 other tests dmesg-warn
>>>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-mtlp-7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
>>>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-mtlp-3/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-a.html
>>>
>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b:
>>>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] +3 other tests dmesg-warn
>>>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-snb5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>>>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-b.html
>>>
>>>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d:
>>>     - shard-dg2:          [PASS][5] -> [DMESG-WARN][6] +5 other tests dmesg-warn
>>>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg2-6/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
>>>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg2-5/igt@kms_busy@extended-modeset-hang-newfb-with-reset@pipe-d.html
>>>
>>>   * igt@kms_busy@extended-modeset-hang-oldfb-with-reset:
>>>     - shard-dg1:          [PASS][7] -> [DMESG-WARN][8] +2 other tests dmesg-warn
>>>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17544/shard-dg1-12/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
>>>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157441v2/shard-dg1-18/igt@kms_busy@extended-modeset-hang-oldfb-with-reset.html
>> Maarten, Ville, any ideas what to do about these?
> Looks like we need the timeout to unbreak the modeset vs. reset
> deadlock in a timely fashion.
>
> I'm not where we signal/error the fences the modeset is waiting
> for, but I guess that must be happening after the whole reset
> sequence is done. Doing that earlier would seem like another
> solution, but dunno what other fallout it would have.
intel_prepare_plane_fb() adds all dma-resv fences for old_obj on intel_crtc_needs_modeset(), does it change anything if we remove that, at least for the GPU reset commit?

Kind regards,
~Maarten Lankhorst
