Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AA58B352D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 12:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE27A10FFE8;
	Fri, 26 Apr 2024 10:19:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrgWV3pB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F81D10FFE8
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Apr 2024 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714126794; x=1745662794;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=j4ODFRTXViIqInUPj10xoX7N78MYx23Ke5rItXR1yRY=;
 b=QrgWV3pBdJqRt7hIjHHmnYDS9S1P7LRx4QXXeY7vs/QBGyQXWbGr85AE
 0rTj88njNOjeyLbhrrW3zx7V35koCYE8rVlx2IIZ8mHN0DVkAuyVlSuHF
 0S3csUA3umL8OtSQIcAIa/qmJdmaRFnsmyyIQM0cDKZArslaxJ82MVzRX
 ANKdnyOwl+2CD8thZnCDHl+hEmPPatgmiOcYY2QgnvMzu640SLw0AfRMn
 dOWhWUEposWxhaur8FqW5kJYhDuI8fbIZdOJ4oyiWS0hvhnvrLQ7UcE+f
 zqQ9upwx0Z3IFgBssMAyGuswy07W62++CweiZT6Dv/5x4OAUB0TpuXLLp g==;
X-CSE-ConnectionGUID: xCJfVmapQQypNas2iMdgzA==
X-CSE-MsgGUID: F72ShyszSeiGAdhnnzi5Ng==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9691223"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; 
   d="scan'208";a="9691223"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:19:54 -0700
X-CSE-ConnectionGUID: 39bC4BjJT7yVYBY4uTgZ6Q==
X-CSE-MsgGUID: 6rDJO4OvSl+j1sVW9MJs4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="56314384"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 03:19:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, LGCI Bug Filing
 <lgci.bug.filing@intel.com>
Subject: Re: =?utf-8?Q?=E2=9C=93?= Fi.CI.BAT: success for drm/i915: VLV/CHV
 DPIO register cleanup
In-Reply-To: <171378050756.1570261.10366590081282489448@8e613ede5ea5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <171378050756.1570261.10366590081282489448@8e613ede5ea5>
Date: Fri, 26 Apr 2024 13:19:47 +0300
Message-ID: <87wmok4e9o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 22 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: VLV/CHV DPIO register cleanup
> URL   : https://patchwork.freedesktop.org/series/132691/
> State : success
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14624 -> Patchwork_132691v1
> ====================================================
>
> Summary
> -------
>
>   **SUCCESS**
>
>   No regressions found.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132691v1/index.html

BAT passed, where are the shard results?

BR,
Jani.



>
> Participating hosts (31 -> 30)
> ------------------------------
>
>   Missing    (1): fi-apl-guc 
>
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_132691v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Warnings ####
>
>   * igt@i915_module_load@reload:
>     - fi-kbl-7567u:       [DMESG-WARN][1] ([i915#10636] / [i915#180] / [i915#1982] / [i915#8585]) -> [DMESG-WARN][2] ([i915#10636] / [i915#180] / [i915#8585])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14624/fi-kbl-7567u/igt@i915_module_load@reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132691v1/fi-kbl-7567u/igt@i915_module_load@reload.html
>
>   
>   [i915#10636]: https://gitlab.freedesktop.org/drm/intel/issues/10636
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14624 -> Patchwork_132691v1
>
>   CI-20190529: 20190529
>   CI_DRM_14624: ff2f70f345aaee3cbcf93a3a06ff3a5ab88e1d7a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7814: 7814
>   Patchwork_132691v1: ff2f70f345aaee3cbcf93a3a06ff3a5ab88e1d7a @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132691v1/index.html

-- 
Jani Nikula, Intel
