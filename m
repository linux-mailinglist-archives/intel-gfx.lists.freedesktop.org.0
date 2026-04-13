Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ABerEHPl3GkZYAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:45:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E7B3EC2A1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 14:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1805310E430;
	Mon, 13 Apr 2026 12:45:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oJONbrdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D644E10E431
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 12:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776084335; x=1807620335;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NEQ13m3EpcbqmcY9BrjP3feNL83wKzhYi34KhJnb9i0=;
 b=oJONbrdfHA4ASypLciG96zbvR0PNTuZjLafSLCR5FPiv6PbY1zRGEp+t
 9VobV7vPsVf3P2QHsrb+UVLmgkmCdl0bz8T6GYDF/G/pyLKRh7JqMwODG
 1gKRSvnDd3xeU3+yXblqhVXTVOpgdOmyGwKmDmqnYgVyV2d/Y1pb7EPU9
 hPw0frKQbqj2NBGLG5aA6noR3j/D4Eb/cv4GWq+ZWElBaO8P2caGPrTjC
 AOooYrhQy28dgKynd4lFAaeOKTRqa/VCf6Uty9aKamSQUWP4vlQq8lxQp
 hJXe9+jvxkkz+SBcTipb7bWCRLIPBRCXU2uFplQr7S3PRS0+G2ExLGVMn w==;
X-CSE-ConnectionGUID: BtMjtdYSRGqNGv25C48Mxw==
X-CSE-MsgGUID: Xs46ZEoISVua6Wb1QDnSog==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="87312732"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="87312732"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 05:45:35 -0700
X-CSE-ConnectionGUID: yJfbe1Q5T6iD7Zix2lHEvQ==
X-CSE-MsgGUID: MwtEHB8ETY6ailmsYiw8eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="229695687"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.64])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 05:45:31 -0700
Date: Mon, 13 Apr 2026 15:45:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v2 09/10] drm/i915/scaler: abstract scaler searching loop
Message-ID: <adzlZzTcNo7Ampmj@intel.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
 <20260411174526.2850179-10-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260411174526.2850179-10-michal.grzelak@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:michal.grzelak@intel.com,m:nemesa.garg@intel.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 93E7B3EC2A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Apr 11, 2026 at 07:45:25PM +0200, Michał Grzelak wrote:
> Add a helper function hiding the search for scaler_id.
> 
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 29 ++++++++++++++---------
>  1 file changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 4e2f4c4ffc45a..1f47c5fc1802f 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -836,6 +836,21 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
>  }
>  
> +static int skl_pipe_scaler_get_hw_state(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 ctl;

'ctl' could stay inside the loop.

I suppose technically 'display' could go there as well, but
we've established the convention that 'display' (if needed inside
the function) is the first variable declared. So that one should
stay here.

> +
> +	for (int scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
> +		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
> +		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) == (PS_SCALER_EN | PS_BINDING_PIPE))
> +			return scaler_id;
> +	}
> +
> +	return -1;
> +}
> +
>  void
>  skl_program_plane_scaler(struct intel_dsb *dsb,
>  			 struct intel_plane *plane,
> @@ -950,19 +965,11 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
> -	int scaler_id;
> -	u32 pos, size;
> -
>  	/* find scaler attached to this pipe */
> -	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
> -		u32 ctl;
> -
> -		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
> -		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) == (PS_SCALER_EN | PS_BINDING_PIPE))
> -			break;
> -	}
> +	int scaler_id = skl_pipe_scaler_get_hw_state(crtc_state);

I don't like hiding stuff with potential side effects
inside the variable declaration block. Only pure
functions should be called there. So it's better to
do the function call+assignment just before the <0 check.

Apart from that it all looks good to me. So with that adjusted
the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

But looks like you forgot to cc intel-xe@. We do want xe CI results
before merging...

> +	u32 pos, size;
>  
> -	if (scaler_id == crtc->num_scalers)
> +	if (scaler_id < 0)
>  		return;
>  
>  	if (scaler_has_casf(display, scaler_id))
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
