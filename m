Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFK0IuVOxmk2IgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:33:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB45341C48
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CF910ED62;
	Fri, 27 Mar 2026 09:33:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JenxP0s9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D27210ED48;
 Fri, 27 Mar 2026 09:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774604001; x=1806140001;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=VK6Dfgb5H5rKUBbOhglFvLn73X1kLwKtTxuq2LSJTuU=;
 b=JenxP0s9Q4swPzAH53j40N0BzC7hyfJSqM9d+Fu/RC9WHaiKE8xNiQKG
 OM7DkJrvZcG0HSPBGL5jKXrn4ewa4LtMYp+t9nl1cuBOTS/hGUDKYfY0J
 qkiFpuR+UedoRHyr/nAmADEOtbMHxxZ6o/VE+BX34daQZ2B34ndTVLn7J
 m2D+DUcMYLe1np2rCANGjKupGbUfUXwLniSIDBhZasyqsLaQRHaARsBr4
 JHK1u/JxKf3GD+GZTZYoARWkoSxTb/cIBHQd4VXOK4Zgsin0oWwQCkDI7
 tDN9nMs9DCbhldR5CcTIRmsPJmZJHtshgP1enDRqjybZzjGFXmLyVSyYz A==;
X-CSE-ConnectionGUID: 9q91VCrQRw2nDwrLpOS6Jg==
X-CSE-MsgGUID: 3XEtXex9QhGqJidERJeHxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="98291459"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="98291459"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:33:20 -0700
X-CSE-ConnectionGUID: cSBlcjzmRS+gYupNnWkDfQ==
X-CSE-MsgGUID: KxdE7V9BT76zlnahJENB3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="248586430"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:33:19 -0700
Date: Fri, 27 Mar 2026 10:33:17 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH 4/9] drm/i915/casf: Extract scaler_has_casf()
In-Reply-To: <20260326223139.19116-5-ville.syrjala@linux.intel.com>
Message-ID: <5312c2aa-a724-9b98-aa95-e4a4fffe3e91@intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
 <20260326223139.19116-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-633765894-1774604000=:330621"
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EEB45341C48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-633765894-1774604000=:330621
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Thu, 26 Mar 2026, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Extract a small helper to determine if the scaler supports
> the sharpness filter or not.
>
> Cc: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
> drivers/gpu/drm/i915/display/skl_scaler.c | 12 ++++++++----
> 1 file changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index e9fe5c0bf6ff..525afd736195 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -323,19 +323,24 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
> 				 need_scaler);
> }
>
> +static bool scaler_has_casf(struct intel_display *display, int scaler_id)
> +{
> +	return HAS_CASF(display) && scaler_id == 1;
> +}
> +
> static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
> 				 struct intel_crtc *crtc,
> 				 struct intel_plane_state *plane_state,
> 				 bool casf_scaler)
> {
> +	struct intel_display *display = to_intel_display(crtc);
> 	int i;
>
> 	for (i = 0; i < crtc->num_scalers; i++) {
> 		if (scaler_state->scalers[i].in_use)
> 			continue;
>
> -		/* CASF needs second scaler */
> -		if (!plane_state && casf_scaler && i != 1)
> +		if (casf_scaler && !scaler_has_casf(display, i))
> 			continue;
>
> 		scaler_state->scalers[i].in_use = true;
> @@ -982,8 +987,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>
> 		id = i;
>
> -		/* Read CASF regs for second scaler */
> -		if (HAS_CASF(display) && id == 1)
> +		if (scaler_has_casf(display, i))

With that being changed I am wondering if we need int id at all. The
only user of it is outside the loop. Since id is set to i on every
loop's pass, I guess we can replace it with last value of i. And if
crtc->num_scalers == -1, we wouldn't enter the loop anyway, so the id
is still set to -1. The only scenario I see where it can break is e.g.
when crtc->num_scalers == -2, but I have no clue if it is even possible.

To be precise, I am wondering about such change (diff without your change
being applied):

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4c4deac7f9c8..78852267e60b 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -969,7 +969,6 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
         struct intel_display *display = to_intel_display(crtc_state);
         struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
         struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
-       int id = -1;
         int i;

         /* find scaler attached to this pipe */
@@ -980,8 +979,6 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
                 if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
                         continue;

-               id = i;
-
                 /* Read CASF regs for second scaler */
                 if (HAS_CASF(display) && id == 1)
                         intel_casf_sharpness_get_config(crtc_state);
@@ -1003,8 +1000,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
                 break;
         }

-       scaler_state->scaler_id = id;
-       if (id >= 0)
+       scaler_state->scaler_id = crtc->num_scalers;
+       if (scaler_state->scaler_id >= 0)
                 scaler_state->scaler_users |= (1 << SKL_CRTC_INDEX);
         else
                 scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);

But I don't know if the reasoning above makes any sense.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał

> 			intel_casf_sharpness_get_config(crtc_state);
>
> 		if (!crtc_state->pch_pfit.casf.enable)
> -- 
> 2.52.0
>
>
--8323329-633765894-1774604000=:330621--
