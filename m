Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id o1VeAnkT3Gm0MAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 23:49:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C703E635A
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 23:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEEA10E2D4;
	Sun, 12 Apr 2026 21:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2z0GE7w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652C010E2D4
 for <intel-gfx@lists.freedesktop.org>; Sun, 12 Apr 2026 21:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776030579; x=1807566579;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=MpE5b0WtCERkKtmxicAUKZxqnZoe+EjfyzCDVibLBIU=;
 b=l2z0GE7wHAI/u5jri2bzaVN3wAyB1VUMsDVw6TNm6k4Z/3rPZL8Ao86Y
 Xkd1KbWh6PObAgxidvkuLM2YNvTDAQaHENwVZ7xWyjiPt0qfS83zSOw0z
 hoFFZYGTJRDVBVZuiERetbdOso4RhkUEiwRcizayOo/ExF2MePXVXKV6f
 oysZfYq7mlCDjGfqxSjGsD2TV1rPYnOCih55i8q0SKH1cymvrcPIiK/bm
 7KlSWHNOQXhZLw1ONfLCnhV3z5CQCfVsGE7fzs9zNT8XX+rXVe3yGXJUm
 GC6YDpWWNstHyrzKEjqrWeqt+HrKiTdnDhmzBXxMXJ31LGCoKckuejNvN Q==;
X-CSE-ConnectionGUID: EkexMwUxSrSGS0SHfoACVQ==
X-CSE-MsgGUID: ZW4vawJITxCBVMAkwRylYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="76877333"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76877333"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 14:49:38 -0700
X-CSE-ConnectionGUID: kaCMwo2JQN6pDCVYi9wb1w==
X-CSE-MsgGUID: Cy/WwcWBT4a0EafNACZ+ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="225333600"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 14:49:38 -0700
Date: Sun, 12 Apr 2026 23:49:35 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
cc: intel-gfx@lists.freedesktop.org, 
 =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, 
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v2 02/10] drm/i915/casf: rename *_coeff*() into *_coef*()
In-Reply-To: <20260411174526.2850179-3-michal.grzelak@intel.com>
Message-ID: <b0953ba5-58f8-b852-b6e5-a80b4ce831ac@intel.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
 <20260411174526.2850179-3-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1829872638-1776030578=:3082509"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.grzelak@intel.com,m:ville.syrjala@linux.intel.com,m:nemesa.garg@intel.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D3C703E635A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1829872638-1776030578=:3082509
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

Title starts to make sense after swapping in it coeff <-> coef. Eh.

On Sat, 11 Apr 2026, Michał Grzelak wrote:
> Stick to the notion of already used *_coeff*() instead of *_coef*().
> Rename that way convert_sharpness_coef_binary() and
> intel_casf_scaler_compute_coef().
>
> v1->v2
> - rename intel_casf_scaler_compute_coef()
>
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
> ---
> drivers/gpu/drm/i915/display/intel_casf.c | 10 +++++-----
> 1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 9a306aee21994..c4fabffa369e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -88,7 +88,7 @@ static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
> 		crtc_state->pch_pfit.casf.win_size = SHARPNESS_FILTER_SIZE_7X7;
> }
>
> -static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state);
> +static void intel_casf_scaler_compute_coeff(struct intel_crtc_state *crtc_state);
>
> int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
> {
> @@ -118,7 +118,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
>
> 	intel_casf_compute_win_size(crtc_state);
>
> -	intel_casf_scaler_compute_coef(crtc_state);
> +	intel_casf_scaler_compute_coeff(crtc_state);
>
> 	return 0;
> }
> @@ -196,7 +196,7 @@ static void intel_casf_write_coeff(const struct intel_crtc_state *crtc_state)
> 	}
> }
>
> -static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
> +static void convert_sharpness_coeff_binary(struct scaler_filter_coeff *coeff,
> 					  u16 coefficient)
> {
> 	if (coefficient < 25) {
> @@ -214,7 +214,7 @@ static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
> 	}
> }
>
> -static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state)
> +static void intel_casf_scaler_compute_coeff(struct intel_crtc_state *crtc_state)
> {
> 	const u16 *filtercoeff;
> 	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> @@ -233,7 +233,7 @@ static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state)
>
> 	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
> 		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
> -		convert_sharpness_coef_binary(&crtc_state->pch_pfit.casf.coeff[i],
> +		convert_sharpness_coeff_binary(&crtc_state->pch_pfit.casf.coeff[i],
> 					      filter_coeff[i]);
> 	}
> }
> -- 
> 2.45.2
>
>
--8323329-1829872638-1776030578=:3082509--
