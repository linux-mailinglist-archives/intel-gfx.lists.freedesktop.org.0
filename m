Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AE8B4567C
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 13:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C08F10EB8C;
	Fri,  5 Sep 2025 11:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbt8yVXc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3A3A10EB8B;
 Fri,  5 Sep 2025 11:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757072209; x=1788608209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bCNCU0YKTQoQLkjATErH70XQOp+M2WEh3JHWGZc+xuA=;
 b=hbt8yVXcZ83rvhUNflaOGDKFAPywMAIFNI+QP1xrqJqe0gkIr3FeFWZ0
 I4emw/lvSGgUTRAUlgjAHTGg2Rix4MiIMnxQCzH8doGfcnFhcik3e6rcl
 LCHWuXfKEeuhYvcdzhyOOyB/9CEjHjdvadBDadS4j/QS0alvcdixz2PLW
 CehsucnsNqCFy2rAEE5zxV3K/qh9hXDvVPJT27W4mDLtEzGTUSdcVGS4F
 V1wQQDkZYrgZGq1HCGFe6HQKaSkEnKi95HCMsBKPDRSnhlXkKih3myTkg
 meDjbbwgvs2wHi4R7enbLtj+Rhwh0Qb36+pIbccyvWhEcqIuhkyo06XHK A==;
X-CSE-ConnectionGUID: 8JGYj+1bRviJqWqYpH4V1Q==
X-CSE-MsgGUID: EKsTznrVRJScHhpWKqyGYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="63064496"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="63064496"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 04:36:49 -0700
X-CSE-ConnectionGUID: DUiOtTBLQ2aSlkEZ89UDig==
X-CSE-MsgGUID: gsIUNOYhTB2SkBkY2uIhDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="171350080"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 04:36:48 -0700
Date: Fri, 5 Sep 2025 14:36:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 3/3] drm/i915/display: Avoid divide by zero
Message-ID: <aLrLTMJa2DXep4Nl@intel.com>
References: <20250905104626.1274147-1-juhapekka.heikkila@gmail.com>
 <20250905104626.1274147-3-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250905104626.1274147-3-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Sep 05, 2025 at 01:46:26PM +0300, Juha-Pekka Heikkila wrote:
> skl_crtc_allocate_plane_ddb allow iter.data_rate to be zero
> which could cause divide by zero in skl_allocate_plane_ddb,
> check against that.

As I said I don't think the div-by-zero is really possible. 
So should say here that this is just to shut up some static
analysis noise.

> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 33885d619a97..bfcd700b95e4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1388,7 +1388,7 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
>  {
>  	u16 size, extra = 0;
>  
> -	if (data_rate) {
> +	if (data_rate && iter->data_rate) {
>  		extra = min_t(u16, iter->size,
>  			      DIV64_U64_ROUND_UP(iter->size * data_rate,
>  						 iter->data_rate));
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
