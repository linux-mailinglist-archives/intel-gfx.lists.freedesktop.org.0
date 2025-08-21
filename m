Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3507BB2F94D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 15:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C647710E306;
	Thu, 21 Aug 2025 13:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eZOR3qTq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA5910E306;
 Thu, 21 Aug 2025 13:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755781511; x=1787317511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qd0bbUuUGks1hrJq7wVYxgCYIhVBy4u1m7Cst/selJo=;
 b=eZOR3qTqH1kdu7QTxpBwDEUaPaXqfuoFp5mnGViWm8gkwR2n00crwoBw
 Y3YQwhHlroT/wu4c+mEB6I7+789EO0J50IB/SSVK/aBishLnUiQc94K6L
 pp/xXj3QZF8p1/8rHfdM40QipKQzcPKNo8+xGfGektSj8yHHfnIBISAB5
 4sRu3MmRetj0KPAG6Ij0kgpWQe8t31effRldixG5Qusyce9P/yRoOLaYJ
 BL3miGE65heuQ64v1Kg6ZNB0dPUXpq1Fa6cCoLlXxKk23WnKps3mO21VB
 6FngIYhc3iMFG/DcyQqotGmR9wI+8y7EIWwxeDDctrssDUCeRfAiZdRbJ Q==;
X-CSE-ConnectionGUID: TIKxiU9pTAWn2xtbQIIVgg==
X-CSE-MsgGUID: X/D+fLIpTGqEnQ7luicOag==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="61712373"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="61712373"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 06:05:11 -0700
X-CSE-ConnectionGUID: 5Mtb22kKSWKFVKtEhB+t0w==
X-CSE-MsgGUID: PwX03zqPSluFA4hQiU3M3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="173746077"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.10])
 by orviesa005.jf.intel.com with SMTP; 21 Aug 2025 06:05:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Aug 2025 16:05:07 +0300
Date: Thu, 21 Aug 2025 16:05:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Avoid divide by zero
Message-ID: <aKcZg9tk2YH0r67f@intel.com>
References: <20250820132913.496505-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250820132913.496505-1-juhapekka.heikkila@gmail.com>
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

On Wed, Aug 20, 2025 at 04:29:13PM +0300, Juha-Pekka Heikkila wrote:
> skl_crtc_allocate_plane_ddb allow iter.data_rate to be zero
> which could cause divide by zero in skl_allocate_plane_ddb,
> check against that.
> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index def5150231a4..403783504ab3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1388,7 +1388,7 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
>  {
>  	u16 size, extra = 0;
>  
> -	if (data_rate) {
> +	if (data_rate && iter->data_rate) {

I don't think it should be possible to have iter_data->data_rate==0 
and data_rate!=0, with iter->data_rate being the sum of all the
planes' data_rates.

>  		extra = min_t(u16, iter->size,
>  			      DIV64_U64_ROUND_UP(iter->size * data_rate,
>  						 iter->data_rate));
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
