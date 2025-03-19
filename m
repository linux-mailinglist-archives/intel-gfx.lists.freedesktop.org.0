Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A629DA697D2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 19:17:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC58C10E573;
	Wed, 19 Mar 2025 18:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J0CLN43G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C549F10E573;
 Wed, 19 Mar 2025 18:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742408217; x=1773944217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0TuvIyqdpLglLdjnn5N4O30m2pLqR9A+NEZL6MnPSO0=;
 b=J0CLN43GdTv4mEIpNTxbHSyNZzuBFZf2f4UL1cJgZOYoQYzTEVlEZJrX
 qDUQthx4JAmvn4jYrrfh22fHUTbd9jGqpooTqenuV7QBHkNaqrZPmrK5H
 jvPlWlwRcn2PyJr5V3PvfDMEdDT3jAWWn6A3l4/gQqkyHkT3xYU6gP7es
 8bybrUM7dl598jXmtNye4DyszWS1G6Kfj8QVMbmq2ddp4iey7FDYSXcDL
 eEK/O4G48Fjw59ctncsIpWp7vQxo60lv4bJHZxjs19JOFF2KGELxaasLc
 Oox+bkgRzKEKxtC6T8EcnnAPK9Es0EQSMvUWlkgJVvk/iFz5GzkyG6+7G w==;
X-CSE-ConnectionGUID: vaRcn1/eTHS+oVy5kMNhuA==
X-CSE-MsgGUID: 7AD15so+TDyuTMI+ZBPaVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="54995854"
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="54995854"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 11:16:56 -0700
X-CSE-ConnectionGUID: KBMJs1e4Rtqm92JAO/H+Nw==
X-CSE-MsgGUID: sYDKvrdITQqmD1A61PPtTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,259,1736841600"; d="scan'208";a="122731766"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.34])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2025 11:16:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.Full: failure for drm/i915: Fix harmful
 driver register/unregister asymmetry
Date: Wed, 19 Mar 2025 19:16:52 +0100
Message-ID: <4398973.mogB4TqSGs@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <174240478412.54991.7499684983166865645@18a75f3d1eae>
References: <20250314205202.809563-5-janusz.krzysztofik@linux.intel.com>
 <174240478412.54991.7499684983166865645@18a75f3d1eae>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi I915-ci-infra@lists.freedesktop.org,

On Wednesday, 19 March 2025 18:19:44 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix harmful driver register/unregister asymmetry
> URL   : https://patchwork.freedesktop.org/series/146336/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16292_full -> Patchwork_146336v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_146336v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_146336v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_146336v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1:
>     - shard-snb:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146336v1/shard-snb6/igt@kms_flip@basic-flip-vs-wf_vblank@b-vga1.html

Changes introduced by the patches can only affect driver unbind / module 
unload path, while this test doesn't perform such operations, only uses the 
device with the driver already bound to it.  Please update filters and re-
report.

Thanks,
Janusz



