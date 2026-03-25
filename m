Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCNKMKPWw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:35:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 358D3324F61
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:35:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9882A10E7FA;
	Wed, 25 Mar 2026 12:35:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SnOLmSLy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E211310E6FA;
 Wed, 25 Mar 2026 12:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774442144; x=1805978144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=MY6e1Z1B+7e7nVZeEoQuKprxKRLnb9K1HnXoFF3xXGA=;
 b=SnOLmSLyKn4Hjup+I1n3AmOnEW+HJSrN0YHHJzRQKC9SS3W5If8Zhq5d
 1wwanBW5AaHx8fPOdYqKcU9tj/Tt0tx3wOWmG5hDHF/uAA1engy18E7se
 zwAZUCBMEDXrU7xvhj2wmrV7OePnA8/Rof/f6Ur+paaH51xD3bLmzOS+/
 qw9BH4ukIvpqt4i7EW6NWfQGEJNxhcN1CGzhfGYYyw6co692Y9/mIMoc/
 3ysrhmyU+WvSzvWoMj/iIMuEgq588dtz4uf1sR7trKjNM8KRN0vZ6m8Tw
 JRT6U3QIGOBpfVUVPzBHiWuKC7/l5eF8FBURCC9M/7q80wkWmSFjBW3sL w==;
X-CSE-ConnectionGUID: rlyNsZXTQDi5Yq3FLw2i1Q==
X-CSE-MsgGUID: CYpgN4SYRNGsTETVXhApKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86847152"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86847152"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:35:44 -0700
X-CSE-ConnectionGUID: VGL0mwvCRner3A/P2jXO8g==
X-CSE-MsgGUID: gbONUx1+RfeyCEnGXlh+vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="229604354"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:35:41 -0700
Date: Wed, 25 Mar 2026 14:35:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 20/26] drm/i915/writeback: Configure WD_STRIDE reg
Message-ID: <acPWmiN_z3jrfhSI@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-21-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-21-suraj.kandpal@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 358D3324F61
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:38PM +0530, Suraj Kandpal wrote:
> Write to the WD_STRIDE register using the appropriate calculation
> based on the color mode and hactive.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 36 +++++++++++++++++++
>  .../drm/i915/display/intel_writeback_reg.h    |  1 +
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index d3c3716a28a9..e2f7c46015d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -231,15 +231,51 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
>  	return 0;
>  }
>  
> +static int
> +get_color_mode_bpp(struct intel_display *display, u32 color_format)
> +{
> +	int bpp = 0;
> +
> +	switch (color_format) {
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_YUYV:
> +	case DRM_FORMAT_VYUY:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_XVYU2101010:
> +		bpp = 4;
> +		break;
> +	default:
> +		drm_err(display->drm, "Unsupported format for writeback\n");
> +		break;
> +	}
> +
> +	return bpp;
> +}
> +
>  static void intel_writeback_capture(struct intel_atomic_state *state,
>  				    struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(connector);
>  	struct intel_writeback_connector *wb_conn =
>  		conn_to_intel_writeback_connector(connector);
> +	struct drm_connector_state *conn_state =
> +		drm_atomic_get_new_connector_state(&state->base, &connector->base);
> +	struct intel_crtc *crtc = intel_crtc_for_pipe(display, wb_conn->pipe);
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	struct drm_writeback_job *wb_job = conn_state->writeback_job;
>  	enum transcoder trans = wb_conn->trans;
>  	u32 val = 0;
> +	int bpp;
>  
> +	bpp = get_color_mode_bpp(display, wb_job->fb->format->format);
> +	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);

The fb should tell us its stride.

> +	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
> +
> +	val = 0;
>  	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
>  	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
>  		     START_TRIGGER_FRAME | WD_FRAME_NUMBER_MASK,
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> index 5e7c6c99d191..f526af0f9aff 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> @@ -60,6 +60,7 @@
>  					_WD_STRIDE_0,\
>  					_WD_STRIDE_1)
>  #define WD_STRIDE_MASK			REG_GENMASK(15, 6)
> +#define WD_STRIDE_VAL(val)		REG_FIELD_PREP(WD_STRIDE_MASK, val)
>  
>  #define _WD_STREAMCAP_CTL0		0x6e590
>  #define _WD_STREAMCAP_CTL1		0x6ed90
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
