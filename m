Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAFlFdKCzWnReQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 22:40:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7DD3804E6
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 22:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E300E10E0D0;
	Wed,  1 Apr 2026 20:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X85qpzzg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FE710E061;
 Wed,  1 Apr 2026 20:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775076046; x=1806612046;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ExUNQl0sgFIZHppRM1yVAyjI7X6W10ODM2MRKea6Z1g=;
 b=X85qpzzgGF6ns9AoPJXAWSy78jnd733NG2wtdYub8BSoNLJ+BaqosXJ3
 g01Dia3N2FKOCgZiPQq/8PXyW8l4mln/V1/QgM6xED7Xk9eYnbW1EPDcc
 AYmXbDB8IX+W54/rkUFiV1YsTxoHLNTnhu9OEEdXSuJz1FbY7TRzkHkEy
 xRyoAAnHVO5McOHSoqq0nR7TfzO1G78hvaU+Vk55dwH36z79rgyC79+ZS
 5rtxzHUS8GFklU1EGcFZjMcG4+0n9wpDo6U5krUxBw2ru1Eu+1BJOkCZU
 aX+QmsiEm5PQZNKPCCEptj5cW3FD102xxgq++MHxxEXeENTWZARfyIdBd A==;
X-CSE-ConnectionGUID: WIvcZv9LQCuMygZFqnfu8w==
X-CSE-MsgGUID: BLnHzyGnRZK5j+fVEyRpuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="76145004"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76145004"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 13:40:46 -0700
X-CSE-ConnectionGUID: t1PmiKBUSBWfTZBj38J3mw==
X-CSE-MsgGUID: KFTtHLuqT7W/HoqIf+1Z9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="257258506"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 13:40:44 -0700
Date: Wed, 1 Apr 2026 23:40:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pfit: Prevent negative coordinates in center mode
Message-ID: <ac2CyZQA9ku8jk78@intel.com>
References: <20260331181656.77300-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260331181656.77300-1-nemesa.garg@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9A7DD3804E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 31, 2026 at 11:46:56PM +0530, Nemesa Garg wrote:
> When the pipe_src width or height are greater than adjusted_mode hdisplay
> and vdisplay, computed x and y offsets for center mode can be negative.
> Writing negative values into the pch_fit registers result in a state error.
> Add a check to clamp these values so that they are never negative.
> 
> v2: Compare in terms of pipe_src width and height.[Ville]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 6dda496190e0..0edd29eef6ad 100644
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
> @@ -200,6 +201,16 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  
>  	switch (conn_state->scaling_mode) {
>  	case DRM_MODE_SCALE_CENTER:
> +		if (adjusted_mode->crtc_hdisplay < pipe_src_w ||
> +		    adjusted_mode->crtc_vdisplay < pipe_src_h) {
> +			drm_dbg_kms(display->drm,
> +				    "[CRTC:%d:%s] pfit center mode source (%dx%d) exceeds display (%dx%d)\n",
> +				    crtc->base.base.id, crtc->base.name,
> +				    width, height,

These should should be pipe_src_* as well.

> +				    adjusted_mode->crtc_hdisplay,
> +				    adjusted_mode->crtc_vdisplay);
> +			return -EINVAL;
> +		}
>  		width = pipe_src_w;
>  		height = pipe_src_h;
>  		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
