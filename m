Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 477108AA04D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 18:40:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD161113DDE;
	Thu, 18 Apr 2024 16:40:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OV2tovOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B930113DD9
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Apr 2024 16:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713458441; x=1744994441;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=z1VKb1YcVjXaOA60K4WLsU5KqWC57BlsyRo3MvuH+Ao=;
 b=OV2tovOglfkF7nTfw4OXc/XyuztDaXpVLUeVzBpQWM+3fWTC8ccl7uIq
 0+pcLks97CBFt8PPZv0oXj6ahlRo1rEMfq/c1k4NsJqta3QSJjRZLZbL3
 DBL8ezFFqVZVUR9Vfg/yQLNYUA5EBogQnVzC+grrAJHkNHbnQgnzIlc+i
 qBcWtGq7DarJv+nELs5zflg5Y3AYSi+WTwvgwXHovafv/89htEeZBphqV
 3Xs4Xm3W+jD26jXd9LmqOazGN5Yddihze8WvA9YZJqZUvd2jCIp99KaVj
 KRpYLfw0QthtUTOlXlLxf4Eq9j4M+BgVytaufYgSlTSzq8DgGHacbF8NI w==;
X-CSE-ConnectionGUID: tsHYxxy/SRaYkhMUPyYmHw==
X-CSE-MsgGUID: aOsoptkxQBGUrLbn/2eVfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="31501453"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="31501453"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 09:40:40 -0700
X-CSE-ConnectionGUID: FC69Z5NoRoCId+8hxNirEQ==
X-CSE-MsgGUID: TYjTeBKZTEC7fwpABaHHqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27699776"
Received: from msundstr-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.212])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 09:40:38 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=93?= Fi.CI.BAT: success for drm/i915: BXT/GLK
 per-lane vswing and PHY reg cleanup (rev3)
In-Reply-To: <171337812744.1482849.14997719345480382947@8e613ede5ea5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <171337812744.1482849.14997719345480382947@8e613ede5ea5>
Date: Thu, 18 Apr 2024 19:40:34 +0300
Message-ID: <87r0f2wrnh.fsf@intel.com>
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

On Wed, 17 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: BXT/GLK per-lane vswing and PHY reg cleanup (rev3)
> URL   : https://patchwork.freedesktop.org/series/132390/
> State : success
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14597 -> Patchwork_132390v3
> ====================================================
>
> Summary
> -------
>
>   **SUCCESS**
>
>   No regressions found.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html

What happened here? BAT passed, but there are no IGT results, and the
shards queue is empty?

BR,
Jani.


>
> Participating hosts (38 -> 32)
> ------------------------------
>
>   Missing    (6): bat-dg1-7 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-dg2-11 bat-arls-3 
>
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_132390v3 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_selftest@live@gem:
>     - bat-dg2-9:          [PASS][1] -> [ABORT][2] ([i915#10366])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14597/bat-dg2-9/igt@i915_selftest@live@gem.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/bat-dg2-9/igt@i915_selftest@live@gem.html
>
>   
>   [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14597 -> Patchwork_132390v3
>
>   CI-20190529: 20190529
>   CI_DRM_14597: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7810: 189483744e9ff56ea573e07a049c5365404c7ecb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_132390v3: 64a20aacb61e4ce6d8a0b3dc6e4bff72e316ffa3 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132390v3/index.html

-- 
Jani Nikula, Intel
