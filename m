Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4DNfMgHSw2lLuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:16:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE6F324A87
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E7910E8A4;
	Wed, 25 Mar 2026 12:15:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HNjiqDOF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B94510E8A2;
 Wed, 25 Mar 2026 12:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774440959; x=1805976959;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H0jh73TeIQCIPSPezg+IReK8Aau451nRcjXwk3du2nA=;
 b=HNjiqDOFEIrot/C5l2aFEqYQD46hRaL1R6m0YrFFJ2/mhHgX+Obc1D7W
 81KfUfSvACkeLKePT4dvV6ODXcXqptKcgni0SLhkft9Q46KhSvd4dIeNx
 iqLj8aeNdKPGuFmWXK8ErOqHK5eP21QZ8TF1gH0rdV95AlBLq+4tPHVDl
 ndbFulsddcLphIOEXroMaUVlFCtHdA6s90bzzBFG4uBlc9H18uMsgjJGr
 AoM0IozeAZtQXH33qpFb+ZsrUyZrB8nEOO144G9Ww8smhj0QXg6aaGc4s
 ucmEKNnxi+B4wxX1+ygnit3mzdt7kkC7ZKkXqNJVcnjOOg+RR/CWKr9eE w==;
X-CSE-ConnectionGUID: gO6BAVOqTA611SchYD1K5Q==
X-CSE-MsgGUID: /adgcg5pQX2ijwrbmSXPlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="92854737"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="92854737"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:15:58 -0700
X-CSE-ConnectionGUID: m2dTsAFNQxO3PTbo5iymHQ==
X-CSE-MsgGUID: fDvp1ZXbQjqcAemxRr0/Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219811628"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:15:55 -0700
Date: Wed, 25 Mar 2026 14:15:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 09/26] drm/i915/writeback: Fill encoder->get_config
Message-ID: <acPR-MKLf9VlkED6@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-10-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-10-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 5EE6F324A87
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:27PM +0530, Suraj Kandpal wrote:
> Fill the encoder->get_config hook with relevant data which helps
> verify state.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_writeback.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 64769609aefe..1df04538d48c 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -100,6 +100,14 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
>  	.mode_valid = intel_writeback_mode_valid,
>  };
>  
> +static void
> +intel_writeback_get_config(struct intel_encoder *encoder,
> +			   struct intel_crtc_state *crtc_state)
> +{
> +	crtc_state->output_types |= BIT(INTEL_OUTPUT_WRITEBACK);
> +	crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;

That should already be covered by hsw_get_pipe_config()

> +}
> +
>  static bool
>  intel_writeback_get_hw_state(struct intel_encoder *encoder,
>  			     enum pipe *pipe)
> @@ -170,6 +178,7 @@ int intel_writeback_init(struct intel_display *display)
>  	encoder->type = INTEL_OUTPUT_WRITEBACK;
>  	encoder->pipe_mask = ~0;
>  	encoder->cloneable = 0;
> +	encoder->get_config = intel_writeback_get_config;
>  	encoder->get_hw_state = intel_writeback_get_hw_state;
>  
>  	connector = &writeback_conn->connector;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
