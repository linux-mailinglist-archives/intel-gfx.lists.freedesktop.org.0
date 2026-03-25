Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OQIOMLVw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:32:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E10324E80
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 605FB10E204;
	Wed, 25 Mar 2026 12:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHTWw21V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B180B10E204;
 Wed, 25 Mar 2026 12:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774441918; x=1805977918;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=g6ErfOE74vHbzUtvp8/DGJV5kyORsv97Us58w4vDcOw=;
 b=fHTWw21VReKZjatcmA6CpwpWqNxQDnN4MKIdii0KDsxlrm1vOhLR8iWj
 N02xnolHti3MMyyebxpeojTMNrWi9REZnjrtyQfZi6voF3wRIQOjV3dTD
 A8B0o8pk1snnMzFwiabs84784GBydt+0YYWDLtL1Zrsiau/xTukRL8VhL
 qVJX2oGpbO7BUlY6YMMITYjd7N5hTZMdtkdMpBvrRa2xgL1fengH3N6x2
 IImFGXnwuQ7V4PUtDZrqso3wURR3RYvAfNt/k5Z84icFrEsKBFBrTALs0
 YB6a8wRw/J0gGLWPag9Xs0Cuuus/EXOMhjEeZ6ZlKkppFcs1R/3EC2hDf Q==;
X-CSE-ConnectionGUID: LYwDbGclSD65ALtvJZhhsA==
X-CSE-MsgGUID: jxAnL8DuTB25FWt0twC6tQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75498817"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75498817"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:31:58 -0700
X-CSE-ConnectionGUID: iP6osTr/RfC3Y8GAJc1LqA==
X-CSE-MsgGUID: vWCX8m4YSve7MH8nddXbew==
X-ExtLoop1: 1
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:31:55 -0700
Date: Wed, 25 Mar 2026 14:31:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 17/26] drm/i915/writeback: Add the enable sequence
 from writeback
Message-ID: <acPVuVzdmOAOSfgM@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-18-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-18-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 52E10324E80
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:35PM +0530, Suraj Kandpal wrote:
> Add enable sequence for writeback, use encoder->enable hook to
> enable the transcoder.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index ba4c162847c8..d45d5faaf7cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -17,8 +17,10 @@
>  
>  #include "intel_atomic.h"
>  #include "intel_connector.h"
> +#include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_driver.h"
> +#include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_display_utils.h"
>  #include "intel_fb_pin.h"
> @@ -30,6 +32,7 @@ struct intel_writeback_connector {
>  	struct intel_encoder encoder;
>  	struct intel_writeback_job *job;
>  	enum transcoder trans;
> +	enum pipe pipe;
>  	int frame_num;
>  };
>  
> @@ -48,6 +51,12 @@ static const u32 writeback_formats[] = {
>  	DRM_FORMAT_XBGR2101010,
>  };
>  
> +static struct intel_writeback_connector
> +*enc_to_intel_writeback_connector(struct intel_encoder *encoder)
> +{
> +	return container_of(encoder, struct intel_writeback_connector, encoder);
> +}
> +
>  static int intel_writeback_connector_init(struct intel_connector *connector)
>  {
>  	struct intel_digital_connector_state *conn_state;
> @@ -215,6 +224,99 @@ static int intel_writeback_atomic_check(struct drm_connector *connector,
>  	return 0;
>  }
>  
> +static void intel_writeback_enable_encoder(struct intel_atomic_state *state,
> +					   struct intel_encoder *encoder,
> +					   const struct intel_crtc_state *crtc_state,
> +					   const struct drm_connector_state *conn_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_writeback_connector *wb_conn =
> +		enc_to_intel_writeback_connector(encoder);
> +	struct intel_writeback_job *job = wb_conn->job;
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	enum transcoder trans = crtc_state->cpu_transcoder;
> +	struct intel_crtc *pipe_crtc;
> +	struct drm_framebuffer *fb;
> +	u32 val = 0, hactive, vactive;
> +	int i = 0;
> +
> +	if (!conn_state->writeback_job)
> +		return;
> +
> +	wb_conn->trans = trans;
> +	wb_conn->pipe = crtc->pipe;
> +	fb = job->fb;
> +	hactive = adjusted_mode->hdisplay;
> +	vactive = adjusted_mode->vdisplay;
> +
> +	/* Configure WD_STRIDE, WD_SURF and WD_TAIL_CFG */
> +	/* Enable Planes, Pipes and Transcoder */
> +	/* TRANSCODER TIMINGS and other transcoder setting*/
> +	/* minimum hactive as per bspec: 64 pixels */
> +	if (hactive < 64)
> +		drm_err(display->drm, "hactive is less then 64 pixels\n");
> +
> +	intel_de_write(display, TRANS_HTOTAL(display, trans), HACTIVE(hactive - 1));
> +	intel_de_write(display, TRANS_VTOTAL(display, trans), VACTIVE(vactive - 1));
> +
> +	val = 0;
> +	/* 2f) Configure and enable TRANS_WD_FUNC_CTL */
> +	switch (crtc->pipe) {
> +	default:
> +		fallthrough;
> +	case PIPE_A:
> +		val |= WD_INPUT_PIPE_A;
> +		break;
> +	case PIPE_B:
> +		val |= WD_INPUT_PIPE_B;
> +		break;
> +	case PIPE_C:
> +		val |= WD_INPUT_PIPE_C;
> +		break;
> +	case PIPE_D:
> +		val |= WD_INPUT_PIPE_D;
> +		break;
> +	}
> +
> +	switch (fb->format->format) {
> +	default:
> +		fallthrough;
> +	case DRM_FORMAT_YUYV:
> +		val |= WD_PIX_FMT_YUYV;
> +		break;
> +	case DRM_FORMAT_XYUV8888:
> +		val |= WD_PIX_FMT_XYUV8888;
> +		break;
> +	case DRM_FORMAT_XBGR8888:
> +		val |= WD_PIX_FMT_XBGR8888;
> +		break;
> +	case DRM_FORMAT_XBGR2101010:
> +		val |= WD_PIX_FMT_XBGR2101010;
> +		break;
> +	}
> +
> +	val |= TRANS_WD_FUNC_ENABLE | WD_TRIGGERED_CAP_MODE_ENABLE |
> +		WD_DISABLE_POINTERS;
> +	intel_de_write(display, WD_TRANS_FUNC_CTL(trans), val);
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		intel_de_rmw(display, PIPE_CHICKEN(crtc->pipe),
> +			     UNDERRUN_RECOVERY_DISABLE_ADLP,
> +			     UNDERRUN_RECOVERY_DISABLE_ADLP);
> +
> +	/*  Configure and enable TRANS_CONF */
> +	intel_de_write(display, TRANSCONF_WD(trans), WD_TRANS_ENABLE);
> +	intel_de_posting_read(display, TRANSCONF_WD(trans));
> +
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
> +		const struct intel_crtc_state *pipe_crtc_state =
> +			intel_atomic_get_new_crtc_state(state, pipe_crtc);
> +
> +		intel_crtc_vblank_on(pipe_crtc_state);
> +	}

Most of this looks like stuff we already do in the normal transcoder
configre/enable sequence.

> +}
> +
>  static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>  	.destroy = drm_encoder_cleanup,
>  };
> @@ -335,6 +437,7 @@ int intel_writeback_init(struct intel_display *display)
>  	encoder->get_config = intel_writeback_get_config;
>  	encoder->get_hw_state = intel_writeback_get_hw_state;
>  	encoder->compute_config = intel_writeback_compute_config;
> +	encoder->enable = intel_writeback_enable_encoder;
>  
>  	connector = &writeback_conn->connector;
>  	ret = intel_writeback_connector_alloc(connector);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
