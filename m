Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6408B43B6E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 14:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CA1010EA1C;
	Thu,  4 Sep 2025 12:22:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F4iufKMz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FD610EA1C;
 Thu,  4 Sep 2025 12:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756988549; x=1788524549;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2PywKTeZPg5jHLSo0NKhg23QOmPfS+QVFhkSYLgY7pQ=;
 b=F4iufKMzMFq5IkXZhsVH5vk+dIFRWDPPRcUwPVQxZ6yikwSca5EmXW0O
 BWnrJexyhugi4gyXltM2h9fNJO5NgO0j46Z6Y1U+jnEIOtGi3ugPDS/DK
 RpRPC8Q6TKWBln36tbxfJIDELTB+36CPpYMO0u4zpmbZCw58HP6jD/Y1t
 jMPkXK2dzheGDpjdzhfx3OFhXBhTq/3VwjIe29GcdVFe4YQeKFUEOoHLh
 FO4GoE2FLWMDz16ndKLnZ6dNkjZugFst8N3B15EHbF+WAng+k3h3GvDBo
 aslYOJ+yd+BNUYrD4qpN0IwR+fUZOedrU5gbS1TtvTdWzvdSPWm/fKt77 g==;
X-CSE-ConnectionGUID: W4tfjPatQ3eL9k9qY8KsXQ==
X-CSE-MsgGUID: tpkk/2wMQECw+hYynErAjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="70420184"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="70420184"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 05:22:28 -0700
X-CSE-ConnectionGUID: sCS3usZDQfWTqaF5eWh6sQ==
X-CSE-MsgGUID: 5DpzW/QkR8KckGa6N2gODA==
X-ExtLoop1: 1
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 05:22:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, ankit.k.nautiyal@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/ddi: Guard reg_val against a INVALID_TRANSCODER
In-Reply-To: <20250904084510.951150-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250904084510.951150-1-suraj.kandpal@intel.com>
Date: Thu, 04 Sep 2025 15:22:22 +0300
Message-ID: <b534e914db169fd3c87a2769335d4a2d80807668@intel.com>
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

On Thu, 04 Sep 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Currently we check if the encoder is INVALID or -1 and throw a
> WARN_ON but we still end up writing the temp value which will
> overflow and corrupt the whole programmed value.
>
> Fixes: 6671c367a9bea ("drm/i915/tgl: Select master transcoder for MST stream")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4e4ea3a0ff83..0a58c07a8240 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -596,9 +596,9 @@ intel_ddi_transcoder_func_reg_val_get(struct intel_encoder *encoder,
>  			enum transcoder master;
>  
>  			master = crtc_state->mst_master_transcoder;
> -			drm_WARN_ON(display->drm,
> -				    master == INVALID_TRANSCODER);
> -			temp |= TRANS_DDI_MST_TRANSPORT_SELECT(master);
> +			if (!drm_WARN_ON(display->drm,
> +					 master == INVALID_TRANSCODER))
> +				temp |= TRANS_DDI_MST_TRANSPORT_SELECT(master);

I really *really* hate hiding happy day scenario paths within if
statements with stuff that should never happen.

Frankly I'd rather see

        if (drm_WARN_ON(display->drm, master == INVALID_TRANSCODER))
		master = TRANSCODER_A; /* bogus */

because it doesn't matter, we're hosed anyway, and this shouldn't happen
in the first place.

The code should be easy to read for the happy day scenario, and it
should be quick to mentally ignore checks like this. The !drm_WARN_ON()
is not it.


BR,
Jani.


>  		}
>  	} else {
>  		temp |= TRANS_DDI_MODE_SELECT_DP_SST;

-- 
Jani Nikula, Intel
