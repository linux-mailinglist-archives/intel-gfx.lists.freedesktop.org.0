Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEC38CD6B3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 17:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CD610EC1C;
	Thu, 23 May 2024 15:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4SjPHaQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F06010EC1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 15:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716476923; x=1748012923;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7sE09lKctzhGWSg95nlhQQTBw2NgJtosD9LN2RRyO/o=;
 b=S4SjPHaQt7b7b+Qvsw/bpVPt/BBHRoENH9rWTqsdtp5uQ2dtNvvO6DcM
 SackgDi+XzwGx9GvzFk4z8Ok5NgSkAD0IX9XDNsXZ5OhMgBProPsj5rsK
 cATh6rrt+zgEa54U8ShwoSSnNXU9agSj6PQ7b0pIZ3MLgwJN3nvGojD76
 Z6Hoevw6oar12CVqPuHWLjKLIz2qX4MvjHscCpbXh6KtsC7GhZm8J9Vgb
 B4R1ZenKTvU3JnjAvXVllhigWWMLSPJmlqPAgwvMvKfvNJGeuif+tx0DX
 qpE2Q3kUaxuY6sdT03wnKvp2jcd+IOOYsWhTNijVQ+Gqnrso1+bzdP3Gq g==;
X-CSE-ConnectionGUID: u90yeCAzRCOVBV2cSQWsPA==
X-CSE-MsgGUID: 7h6OVKm7QB+i8W+x7X5ivQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13033411"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="13033411"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 08:08:43 -0700
X-CSE-ConnectionGUID: E4PkLN3VTw2Ofz8VLgoR1Q==
X-CSE-MsgGUID: 7qKE1xIESuO8EeDskV5bIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33674932"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 08:08:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 18:08:40 +0300
Date: Thu, 23 May 2024 18:08:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Message-ID: <Zk9b-BnIn9QzljpT@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
 <20240520185822.3725844-13-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520185822.3725844-13-imre.deak@intel.com>
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

On Mon, May 20, 2024 at 09:58:10PM +0300, Imre Deak wrote:
> Simplify things by retraining a DP link if a bad link is detected in the
> connector detect handler from the encoder's check link state work,
> similarly to how this is done after a modeset link training failure.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ff4ed6bb520d8..70b00e5ae7ad7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5863,11 +5863,8 @@ intel_dp_detect(struct drm_connector *connector,
>  	 * Some external monitors do not signal loss of link synchronization
>  	 * with an IRQ_HPD, so force a link status check.
>  	 */
> -	if (!intel_dp_is_edp(intel_dp)) {
> -		ret = intel_dp_retrain_link(encoder, ctx);
> -		if (ret)
> -			return ret;
> -	}
> +	if (!intel_dp_is_edp(intel_dp))
> +		intel_dp_check_link_state(intel_dp);

I would like to see this hack nuked entirely. But that
could be a followup.

>  
>  	/*
>  	 * Clearing NACK and defer counts to get their exact values
> -- 
> 2.43.3

-- 
Ville Syrjälä
Intel
