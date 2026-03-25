Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uKOHCOXSw2lLuQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:19:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E597324BA3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 13:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCBE10E1DD;
	Wed, 25 Mar 2026 12:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cPs2oTXY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B91B410E1DD;
 Wed, 25 Mar 2026 12:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774441185; x=1805977185;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6WtyNqKwVLHmA3L67E2TmjNbcqOGSdlkFR1OwPskecQ=;
 b=cPs2oTXYD7+69KLqvxCmylOvRzs3FfLf3EKoFtq5V5bDdS9AdICgFed7
 qfcAxPw3Rf8Qd6R2v4RFrwfI4y6i32kg3p1Ik/IdzhIgnCHWyDBbyOIHy
 JLpq6ysazUCua5hdy+uixq4CsjP6AIVNcz4UAtf6QQZ274q6h8NNpFbaG
 /PKfcnqnxBwtIFXEZti+aZ0ExFewj/79R8N2Srq6zp6nmR56y3nWWpnut
 BN2qR1kT5JBgFNMvIgPNxWLtFTJ3JzlIm47TmSLWIkmtC0EJRx2llQyTU
 FAKwirjv+KF6/ZAOhJtpKN0veLK4mF3EE43zfffGiMrv95lpMyJCUFYq7 A==;
X-CSE-ConnectionGUID: ZpObT5kASt29U0b0xL0c7g==
X-CSE-MsgGUID: 7kTZQrsMSb2aK0n+PSwi8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="98096056"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="98096056"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:19:45 -0700
X-CSE-ConnectionGUID: V2on+tUXS6WNbpCQyMudHA==
X-CSE-MsgGUID: qrS1JKUKS4G9D4Q6eSrN7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="228733718"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 05:19:43 -0700
Date: Wed, 25 Mar 2026 14:19:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v3 12/26] drm/i915/writeback: Define compute_config for
 writeback
Message-ID: <acPS3EcAuOZYZDcH@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-13-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260325110744.1096786-13-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 7E597324BA3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:37:30PM +0530, Suraj Kandpal wrote:
> Define the compute config function where we assign the output_type
> and add the transcoder that needs to be used. We currently assign
> one WD0 transcoder.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_writeback.c    | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
> index 4a40fda639ca..b9350d97de09 100644
> --- a/drivers/gpu/drm/i915/display/intel_writeback.c
> +++ b/drivers/gpu/drm/i915/display/intel_writeback.c
> @@ -171,6 +171,25 @@ static const struct drm_connector_helper_funcs conn_helper_funcs = {
>  	.cleanup_writeback_job = intel_writeback_cleanup_job,
>  };
>  
> +static int
> +intel_writeback_compute_config(struct intel_encoder *encoder,
> +			       struct intel_crtc_state *pipe_config,

'crtc_state'

> +			       struct drm_connector_state *conn_state)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	if (!conn_state->writeback_job)
> +		return 0;
> +
> +	if (HAS_TRANSCODER(display, TRANSCODER_WD_0))

If we get here and don't have the transcoder then the nothing makes
sense anymore. 

> +		pipe_config->cpu_transcoder = TRANSCODER_WD_0;
> +
> +	pipe_config->output_types |= BIT(INTEL_OUTPUT_WRITEBACK);
> +	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> +
> +	return 0;
> +}
> +
>  static void
>  intel_writeback_get_config(struct intel_encoder *encoder,
>  			   struct intel_crtc_state *crtc_state)
> @@ -251,6 +270,7 @@ int intel_writeback_init(struct intel_display *display)
>  	encoder->cloneable = 0;
>  	encoder->get_config = intel_writeback_get_config;
>  	encoder->get_hw_state = intel_writeback_get_hw_state;
> +	encoder->compute_config = intel_writeback_compute_config;
>  
>  	connector = &writeback_conn->connector;
>  	ret = intel_writeback_connector_alloc(connector);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
