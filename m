Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D4FARgMzGnGNgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:02:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 663E436FA12
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F96E10E6CE;
	Tue, 31 Mar 2026 18:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyyKbvO4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D2A910E246;
 Tue, 31 Mar 2026 18:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774980115; x=1806516115;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2HDJr/gyO1hj6PtV3CKWr62LBjHXq23VYyVy+wOXqNA=;
 b=LyyKbvO4irPEz0iEGNz4l214bHgk733JiF65e2G1ukvhAdlqY+zbYTNc
 Rk/E3cjx2GzrLoEcZEm5sX7KbCEjBSBObzkQv0FBgOSnoaIHYHQRGiTEP
 glEq8Cc6PXKlgiTjsbnE4o7aLzpwdK4GkcsShYIJ/ckVSb1EGEBYQgihv
 P3hFsT4ozl11fV2cLEw2PtEWcbO/IyCa3gblncjgF/6wEZPVAsaqEdQU7
 zt0CpyacZa29mBQozu9kyBeHqlA5vUCAjeBqQ1ZcXjnZDefgYcU8/GJvb
 LdZSyWtkrjeSkxoy5vgDFml49HtYKsATA3/fWpMUzDX7idxs4sTUUsbOs A==;
X-CSE-ConnectionGUID: l8zIo7KnSfqVob1rml+N/g==
X-CSE-MsgGUID: T4XLIFIiQFysZWb5H8QmVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="86305784"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="86305784"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:01:46 -0700
X-CSE-ConnectionGUID: GgH1WpdyRs23StBiv1gayQ==
X-CSE-MsgGUID: Pf+7GZOlS5yqpMJc4ANUcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="264369550"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:01:45 -0700
Date: Tue, 31 Mar 2026 21:01:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pfit: Prevent negative coordinates in center mode
Message-ID: <acwMBaVFSA3rZjxN@intel.com>
References: <20260331174044.73300-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260331174044.73300-1-nemesa.garg@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 663E436FA12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 11:10:44PM +0530, Nemesa Garg wrote:
> When the pipe_src width or height are greater than adjusted_mode hdisplay
> and vdisplay, computed x and y offsets for center mode can be negative.
> Writing negative values into the pch_fit registers result in a state error.
> Add a check to clamp these values so that they are never negative.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 6dda496190e0..1507c2b5b5c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -186,6 +186,7 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
> @@ -204,6 +205,16 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  		height = pipe_src_h;
>  		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
>  		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
> +		if (adjusted_mode->crtc_hdisplay < width ||
> +		    adjusted_mode->crtc_vdisplay < height) {
> +			drm_dbg_kms(display->drm,
> +				    "[CRTC:%d:%s] pfit center mode source (%dx%d) exceeds display (%dx%d)\n",
> +				    crtc->base.base.id, crtc->base.name,
> +				    width, height,

width,height represent the pfit output window size. So I think it'd
be better to do the check in terms of pipe_src_w,pipe_src_h.

And I guess then we can do it before we even compute x,y,width,height.

> +				    adjusted_mode->crtc_hdisplay,
> +				    adjusted_mode->crtc_vdisplay);
> +			return -EINVAL;
> +		}
>  		break;
>  
>  	case DRM_MODE_SCALE_ASPECT:
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
