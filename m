Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AC28FE6AC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 14:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E5410E13A;
	Thu,  6 Jun 2024 12:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATCvcYtv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F0010E13A;
 Thu,  6 Jun 2024 12:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717677508; x=1749213508;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rIxMLXDZqgTSHJjE2Fvq9EdF1Gyk+JYdgDUTAPY4L+k=;
 b=ATCvcYtvGF2XNis5ilKahorAw8Tom1u16qlfLGL9Z/rWgMO5qZNCtmgA
 dMoQZzT6xzw/l4UXBrjdJ2UuLGVGZCsBGoEpyoAFoo41DX3XQFIiKpZTK
 QppQ4KY74/MECnrrfjqSKZ+SdwcDkrRQIwmiIUQJPdPYChSFBoIfKUc5p
 JgIIChG0F/4NnwUOCxlEUDr6nVLVr6M1zPVBl2Dl8SvQDnnrtNnad7VCb
 KYBkAO/n8blEMY+4jX/qe154IUoafHYm+Dcsu3L2a3dvM7Ldch+9NH/e7
 0HKhe5IFT4H59ilIvBItKXUiLl9M19q22GDXPAjgQYOB/pGzmUEeXyxJr Q==;
X-CSE-ConnectionGUID: m4hv4bZGRx2x/Wh6J7vB9Q==
X-CSE-MsgGUID: nLsEOsn6TSykDiwwNwytvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14180516"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14180516"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 05:38:27 -0700
X-CSE-ConnectionGUID: RYMg3WWXRnWR5YwhseGdcA==
X-CSE-MsgGUID: gF/XRpkLQiWg/Fh1sgP0ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37964095"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Jun 2024 05:38:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Jun 2024 15:38:24 +0300
Date: Thu, 6 Jun 2024 15:38:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_with_=5B1=2F2=5D_drm=2Fi915=2Fbios?=
 =?utf-8?Q?=3A?= Define block 46 chromaticity coordinates properly
Message-ID: <ZmGtwOLe75rQxNFI@intel.com>
References: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
 <171760041127.1068.15460221562900862543@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171760041127.1068.15460221562900862543@a6498e030952>
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

On Wed, Jun 05, 2024 at 03:13:31PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/bios: Define block 46 chromaticity coordinates properly
> URL   : https://patchwork.freedesktop.org/series/134505/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14881 -> Patchwork_134505v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_134505v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134505v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134505v1/index.html
> 
> Participating hosts (38 -> 34)
> ------------------------------
> 
>   Additional (2): fi-kbl-8809g fi-bsw-n3050 
>   Missing    (6): bat-mtlp-9 bat-arls-3 fi-snb-2520m bat-dg2-11 bat-jsl-1 bat-mtlp-6 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134505v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@active:
>     - fi-glk-j4005:       [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14881/fi-glk-j4005/igt@i915_selftest@live@active.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134505v1/fi-glk-j4005/igt@i915_selftest@live@active.html

(i915_selftest:5675) igt_kmod-WARNING: i915: Running i915_active_live_selftests/live_active_wait
(i915_selftest:5675) igt_kmod-WARNING: i915 0000:00:02.0: [drm] *ERROR* live_active_wait i915_active not retired after waiting!
(i915_selftest:5675) igt_kmod-WARNING: i915 0000:00:02.0: [drm] *ERROR* live_active_wait active __live_active [i915]:__live_retire [i915]
(i915_selftest:5675) igt_kmod-WARNING: i915 0000:00:02.0: [drm] *ERROR* live_active_wait \x09count: 0
(i915_selftest:5675) igt_kmod-WARNING: i915 0000:00:02.0: [drm] *ERROR* live_active_wait \x09preallocated barriers? no
(i915_selftest:5675) igt_kmod-WARNING: i915/i915_active_live_selftests: live_active_wait failed with error -22


Looks like:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11170

-- 
Ville Syrjälä
Intel
