Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3368CA4651F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 16:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDED010E93F;
	Wed, 26 Feb 2025 15:41:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mY6lRRlO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2076E10E93F;
 Wed, 26 Feb 2025 15:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740584464; x=1772120464;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mAZj9xUptGoteuTSIbE1ycIDHvOGsQuTozeWdMNuhos=;
 b=mY6lRRlOZUjgBUyti5frIFr/x0UcqGNehyghuYy8DOG+MFgFv4U37fap
 oNXqrsHOjO55bVFXG/jutltSwzb9f7WML3eFEGXZWS1UCMswYYQNGDoB6
 rqavGv/vHavCfrXzObZmyR/A130AyP4WE8oxI1e2kNGhtMQLnCR0rFI0/
 BYqx+6wzNjc4QFo9YxwD8CP+pYAGPO23+X7VxqHdH2UyXaCB8aKG4X+ao
 avDWCrfo2PJDo6LumcpADxfaPXaxelafSZ0i4K/5y7zIHcVCrcbLziiqg
 6s/7NggNEMCYkoCUoOPxhFp3og/NmRDUszF5Z40LpCheAt/yXA45AQcVZ A==;
X-CSE-ConnectionGUID: d//uLF60T6WDB3OTgzo3Cw==
X-CSE-MsgGUID: ENBw4gHNQgGNJDMru7GqoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41690186"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41690186"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:41:00 -0800
X-CSE-ConnectionGUID: 1BuFcQL0RFCl5bewuCxFrg==
X-CSE-MsgGUID: 5mBmrXXuSmCNm+M3sorDxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121988606"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 07:40:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 17:40:56 +0200
Date: Wed, 26 Feb 2025 17:40:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org, Imre Deak <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/mst: update max stream count to match number of
 pipes
Message-ID: <Z782CKSDNBjlmjct@intel.com>
References: <20250226135626.1956012-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250226135626.1956012-1-jani.nikula@intel.com>
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

On Wed, Feb 26, 2025 at 03:56:26PM +0200, Jani Nikula wrote:
> We create the stream encoders and attach connectors for each pipe we
> have. As the number of pipes has increased, we've failed to update the
> topology manager maximum number of payloads to match that. Bump up the
> max stream count to match number of pipes, enabling the fourth stream on
> platforms that support four pipes.
> 
> Cc: stable@vger.kernel.org
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 167e4a70ab12..822218d8cfd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1896,7 +1896,8 @@ intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
>  	/* create encoders */
>  	mst_stream_encoders_create(dig_port);
>  	ret = drm_dp_mst_topology_mgr_init(&intel_dp->mst_mgr, display->drm,
> -					   &intel_dp->aux, 16, 3, conn_base_id);
> +					   &intel_dp->aux, 16,
> +					   INTEL_NUM_PIPES(display), conn_base_id);
>  	if (ret) {
>  		intel_dp->mst_mgr.cbs = NULL;
>  		return ret;
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
