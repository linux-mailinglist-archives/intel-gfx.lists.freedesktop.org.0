Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Ct8OSnUw2lwuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:25:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A9B5324D63
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:25:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A303710E55A;
	Wed, 25 Mar 2026 12:25:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QLzPXVd/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2335010E55A;
 Wed, 25 Mar 2026 12:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774441511; x=1805977511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ruNP2xp3L48E0Lv2GyAw1oMecu5FpIKqxkVTFjIXTNE=;
 b=QLzPXVd/cqT4eUfYwfzQQ5W9HeOJ1PltrpS8mzteHewZ6tC1nCU788hq
 Ub7eOrNFXZQLk0KNpGsyA1nSzT1q26AOU4BBDRwvMYHAPyjWiOYUVT6+5
 uqNR46jyECixEJ+U/wLzWI+O51p70QWiWKcEjUXb6tQoqlKNZIZxtMrG1
 Ne2bqbmYZYXMrGNXCX9823KhNWYYj6R4QZT29us0S6j8UbvuSKDjqIUz5
 M6xVc7QNYGhVnSWjHlaXdbxawfrk7lITnkp7Y0VRQFyi6OVSwX1zjKG0k
 wg+Jw5Wsk92VZXmb3IOBC7egk/kKYegLdkpkBv4iJ5OFQfR+VDmugZv/N Q==;
X-CSE-ConnectionGUID: 4EDqfT5DQ+C/anYqsATdMg==
X-CSE-MsgGUID: 6JmKn/REQre+DV/g97D/4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75363459"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75363459"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:25:10 -0700
X-CSE-ConnectionGUID: UtWB6YDBQPWjBexhmG6n7w==
X-CSE-MsgGUID: h+6LRuEKRDyv87R6K0axsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="248184380"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:25:07 -0700
Date: Wed, 25 Mar 2026 14:25:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 15/26] drm/i915/writeback: Add connector atomic check
Message-ID: <acPUIGM9Sox4YS77@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-16-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-16-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 4A9B5324D63
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:33PM +0530, Suraj Kandpal wrote:
> Add connector helper function for atomic check which sets the
> mode_changed bit and checks if pixel format of fb is valid or not.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 86b53e4603ae..ba4c162847c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -167,6 +167,54 @@ static void intel_writeback_connector_destroy(struct drm_connector *connector)
>  	kfree(connector);
>  }
>  
> +static int intel_writeback_check_format(u32 format)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(writeback_formats); i++) {
> +		if (writeback_formats[i] == format)
> +			return 0;
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +static int intel_writeback_atomic_check(struct drm_connector *connector,
> +					struct drm_atomic_state *state)
> +{
> +	struct drm_connector_state *conn_state =
> +		drm_atomic_get_new_connector_state(state, connector);
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_framebuffer *fb;
> +	int ret;
> +
> +	/* We return 0 since this is called while disabling writeback encoder */
> +	if (!conn_state->crtc)
> +		return 0;
> +
> +	/* We do not allow a blank commit when using writeback connector */
> +	if (!conn_state->writeback_job)
> +		return -EINVAL;
> +
> +	fb = conn_state->writeback_job->fb;
> +	if (!fb)
> +		return -EINVAL;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (fb->width != crtc_state->mode.hdisplay ||
> +	    fb->height != crtc_state->mode.vdisplay)
> +		return -EINVAL;
> +
> +	ret = intel_writeback_check_format(fb->format->format);
> +	if (ret) {
> +		drm_dbg_kms(connector->dev,
> +			    "Unsupported drm format sent in writeback job\n");
> +		return ret;
> +	}

Pretty much all of this look like something that belongs
in the core/helpers.

> +
> +	return 0;
> +}
> +
>  static const struct drm_encoder_funcs drm_writeback_encoder_funcs = {
>  	.destroy = drm_encoder_cleanup,
>  };
> @@ -182,6 +230,7 @@ const struct drm_connector_funcs conn_funcs = {
>  static const struct drm_connector_helper_funcs conn_helper_funcs = {
>  	.get_modes = intel_writeback_get_modes,
>  	.mode_valid = intel_writeback_mode_valid,
> +	.atomic_check = intel_writeback_atomic_check,
>  	.prepare_writeback_job = intel_writeback_prepare_job,
>  	.cleanup_writeback_job = intel_writeback_cleanup_job,
>  };
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
