Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C607E385C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 10:58:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3790810E087;
	Tue,  7 Nov 2023 09:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0B3510E087
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 09:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699351089; x=1730887089;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9jQFOvzbJ8LOBFvXejkJwnm2Y4qoaRyFJN7osZ4OYcE=;
 b=GHJ/kjVVdna/oMYQJckmTFszHaTLTJhHYusFD9oCdNeyYA658Z/jwbK4
 xkBhdwCOhyjG2WBnEiGlzVMrvwccGMW26nrXjxtHQmY4H3yMajDy1547a
 dy7NeavwPckSBsyQ5NwopA+PJv5T5kul6auHjPrsetI4QhVPjNndckm2/
 FV6JyQopzZJRxbBWpKnhWNeUg94l3iP6D53PZJXQ0gSlCujuL8DdFFxji
 bLjOSGBSUHOqeMY5SnilO125LoWEYGblc1wONZPA4J399e0MZJkR4lSWC
 6lJ+Lob+swt/HYCkYozN7RnUsFyDEcaFtwhiwedUtD9fNgGrCDfSawNau A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="475713259"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="475713259"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 01:58:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="797624614"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="797624614"
Received: from ezorina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.183])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 01:58:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231107041740.3718419-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231107041740.3718419-1-ankit.k.nautiyal@intel.com>
 <20231107041740.3718419-2-ankit.k.nautiyal@intel.com>
Date: Tue, 07 Nov 2023 11:58:03 +0200
Message-ID: <877cmtzxzo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Simplify checks for helper
 intel_dp_dsc_max_src_input_bpc
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

On Tue, 07 Nov 2023, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Return 0 if platform doesn't support DSC, and return 12 for Display ver
> 12+.

This just describes the diff in English. I'd be more interested in
reading e.g. whether there's a functional change here.

BR,
Jani.

>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1891c0cc187d..d9e1d15a386e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1569,13 +1569,14 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  static
>  u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
>  {
> +	if (!HAS_DSC(i915))
> +		return 0;
> +
>  	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
> -	if (DISPLAY_VER(i915) >= 12)
> -		return 12;
>  	if (DISPLAY_VER(i915) == 11)
>  		return 10;
>  
> -	return 0;
> +	return 12;
>  }
>  
>  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,

-- 
Jani Nikula, Intel
