Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKE3E3XY2GnHjAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 13:01:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0D73D5EBE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 13:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B4B10E931;
	Fri, 10 Apr 2026 11:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="No55YYAn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA9D10E931
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Apr 2026 11:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775818866; x=1807354866;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fknRf8ijQuW50Ks/u78vejJnOvh2eGIbQMajRNxnJZE=;
 b=No55YYAnxrlk1CaLOpJ0JFQ/xskYA+cCZdbKo78d10Degq5it7hT9zNy
 /oR7cb5x4Ln0B5fhLpU3R8q/diX1W6jSv6tqbf7BFTeUZBMnMos7HJ0cI
 SdtTW5az3PrKKJn1TqK9TF7pf9z1ejqfCKZaKXourIGzlz59WdWsJxC8I
 iWRxzKb7QklrIbJR9a1yL4qCTNV36rsoa8lwTWhc95RYjArqaij00eENV
 Rao4OuE29wpnu3WtXvf3yi2YtjzvqhxmYozeKcLcOhC3NW7shs6eVMgAr
 uypQvdZZTDm77g7cb8is1Hgox8FzqtfPugB3y8q/DEakXU4nv5KV5Z1xf g==;
X-CSE-ConnectionGUID: ujUstlBlRJiPqk00qSySMg==
X-CSE-MsgGUID: Nsfhowy3QtKUA/ufrXXVAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="80696015"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="80696015"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 04:01:05 -0700
X-CSE-ConnectionGUID: Zz+uhQuwRtKlsIEKHjLlFQ==
X-CSE-MsgGUID: qBC+ez+mQfexhcapRjwQbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="267021449"
Received: from zzombora-mobl1 (HELO localhost) ([10.245.244.89])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 04:01:03 -0700
Date: Fri, 10 Apr 2026 14:00:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v1 06/10] drm/i915/casf: remove id in favor of scaler_id
Message-ID: <adjYa5dEFcDPTD48@intel.com>
References: <20260328143212.601656-1-michal.grzelak@intel.com>
 <20260328143212.601656-7-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260328143212.601656-7-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BF0D73D5EBE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, Mar 28, 2026 at 03:32:08PM +0100, Michał Grzelak wrote:
> id is not really used anywhere in skl_scaler_get_config(). Replace it
> with scaler_id.
> 
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 729ef51beeb4..5954f5beb19c 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -969,7 +969,6 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
> -	int id = -1;
>  	int scaler_id;
>  
>  	/* find scaler attached to this pipe */
> @@ -980,10 +979,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>  		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
>  			continue;
>  
> -		id = scaler_id;
> -
>  		/* Read CASF regs for second scaler */
> -		if (HAS_CASF(display) && id == 1)
> +		if (HAS_CASF(display) && scaler_id == 1)
>  			intel_casf_sharpness_get_config(crtc_state);
>  
>  		if (!crtc_state->hw.casf_params.casf_enable)
> @@ -1003,8 +1000,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>  		break;
>  	}
>  
> -	scaler_state->scaler_id = id;
> -	if (id >= 0)
> +	scaler_state->scaler_id = scaler_id;
> +	if (scaler_id >= 0)

We'll have scaler_id == crtc->num_scalers if the loop
didn't find a pipe scaler. So this is now a bit busted.

Otherwise I think this stuff looks pretty reasonable, but it no longer
applies since my casf reorganization landed. Please rebase and repost.

>  		scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
>  	else
>  		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
