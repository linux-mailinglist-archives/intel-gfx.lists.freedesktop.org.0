Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2DF977E2A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 13:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B5CC10E260;
	Fri, 13 Sep 2024 11:05:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EMdjCyKi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A21510E25E;
 Fri, 13 Sep 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726225523; x=1757761523;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=f0Fw46TOO+MiyGH92vqk35IQDIcrgdDjIBaP4l5Ccbc=;
 b=EMdjCyKiwIDdO+CUj5GuMBzOuUgx87J4yAWvBYFVbhPTIDjk+D6saCGp
 z/sMRPoHu4OixcV2XBenMQMmFMJhHKLzVwYwHx25qIm2lVyGs2NZuL07G
 C4EyL7Tc0Z/tVDYRPBb9bGFu9q9X+l/HLzFOc1/xy2AvBBPDA9HnjeWrZ
 +YQvCgs1+0ywd/m+boMQ2IGhs7mPWEU27diUnpmK2aV0e5OiDt7IFKlAj
 FJhuWHuhp1wn4Y0lx/JmonTVBBGeVsXPE3F3Yl+st5CpIfUjRlHq0o3FP
 TaTAoSr1PQaRLVkGiKQd15IAp2fGm+uppmJT4xB4AeuFY26tX2NYeKnWc w==;
X-CSE-ConnectionGUID: Ez8Go88EQcCzWiXniTEMGw==
X-CSE-MsgGUID: hOAEt/A1TDm5Icluj8skqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="13511010"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="13511010"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 04:05:22 -0700
X-CSE-ConnectionGUID: OD7Iza9qRBig531St0Qgrg==
X-CSE-MsgGUID: 9XhMVGJiRB2ItjbOYCnYcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="68107962"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Sep 2024 04:05:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Sep 2024 14:05:19 +0300
Date: Fri, 13 Sep 2024 14:05:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/psr: Fix PSR sink enable sequence
Message-ID: <ZuQcb4HcR12CNRXA@intel.com>
References: <20240911151836.16800-1-ville.syrjala@linux.intel.com>
 <172608648905.988049.9501932730284658711@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <172608648905.988049.9501932730284658711@2413ebb6fbb6>
X-Patchwork-Hint: comment
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

On Wed, Sep 11, 2024 at 08:28:09PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/psr: Fix PSR sink enable sequence
> URL   : https://patchwork.freedesktop.org/series/138530/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15395 -> Patchwork_138530v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_138530v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_138530v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138530v1/index.html
> 
> Participating hosts (40 -> 36)
> ------------------------------
> 
>   Additional (2): bat-mtlp-8 fi-kbl-8809g 
>   Missing    (6): fi-kbl-7567u bat-kbl-2 fi-snb-2520m fi-glk-j4005 bat-dg2-11 bat-mtlp-6 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_138530v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gt_pm:
>     - bat-twl-1:          [PASS][1] -> [DMESG-FAIL][2] +1 other test dmesg-fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15395/bat-twl-1/igt@i915_selftest@live@gt_pm.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138530v1/bat-twl-1/igt@i915_selftest@live@gt_pm.html

<3> [283.360457] No power measured while in RC0
<3> [283.360544] i915/intel_gt_pm_live_selftests: live_rc6_manual failed with error -22

Unrelated to this change.

-- 
Ville Syrjälä
Intel
