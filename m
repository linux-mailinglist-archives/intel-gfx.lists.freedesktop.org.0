Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F739B7A59
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 13:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7B910E870;
	Thu, 31 Oct 2024 12:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fV/N7bmo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ACF110E870
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 12:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730376976; x=1761912976;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=ccd5WomCjz1xH4QCgRNsYB0WhVAsm80e8s1m0Jy7yms=;
 b=fV/N7bmoHCKJsR67AMMFLpMyx8X5NIHeEZi3f6FbVkiuxqSGuY6xHQyd
 X/bzsnBxjtrBchCc3EeOdapYQLD/ywz/rBmODKWuHvYOW5H0sMGykFb3h
 ASQ2Np42qqUgZtlIvSQfAyPlldAqQL7s/3n35M8mTQ0U3pMLNFwZu+ZYT
 oyUG5+oFHw1Keyf52056hHoV/txxmBqs3BGPo1VPqcdqkaVNYgxBdNejP
 70cESE/CMIitCBKXWsNO7K99KMMeeUQ5BMGUCbDoq90a8NnvG2wFTCNhm
 AjjI40XiWINWVvD8l5xG2k73uQGr1dEP67N0f+LIiTcskViVfo3+QX6VK A==;
X-CSE-ConnectionGUID: EGO6GV7VSAGsp3WX46WJjQ==
X-CSE-MsgGUID: c86MgSc3Qm2WfIYQ4WKPTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="30215780"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30215780"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 05:16:15 -0700
X-CSE-ConnectionGUID: mPTCf/wsT8SMyHr3N6UmqQ==
X-CSE-MsgGUID: oXg9U4VWT6ez19W3zVn74g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82728634"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 05:16:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 14:16:12 +0200
Date: Thu, 31 Oct 2024 14:16:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=2Fcolor?= =?utf-8?Q?=3A?= Stop using non-posted
 DSB writes for legacy LUT
Message-ID: <ZyN1DKHT8Vmc4h1F@intel.com>
References: <20241030210750.6550-1-ville.syrjala@linux.intel.com>
 <173036805953.1378613.1355420152301315872@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173036805953.1378613.1355420152301315872@2413ebb6fbb6>
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

On Thu, Oct 31, 2024 at 09:47:39AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/color: Stop using non-posted DSB writes for legacy LUT
> URL   : https://patchwork.freedesktop.org/series/140739/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15615_full -> Patchwork_140739v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140739v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140739v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140739v1_full:
> 
> ### CI changes ###
> 
> #### Possible regressions ####
> 
<snip> 
> #### Warnings ####
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-tglu:         [SKIP][47] -> [ABORT][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15615/shard-tglu-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140739v1/shard-tglu-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

Looks like an actual mismatch in the LUT. Troubling...

-- 
Ville Syrjälä
Intel
