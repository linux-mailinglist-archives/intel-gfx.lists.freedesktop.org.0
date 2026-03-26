Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GlpDKUZxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:33:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ACA334943
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:33:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23E910E94E;
	Thu, 26 Mar 2026 11:33:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFrMu6kj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B39F10E94E;
 Thu, 26 Mar 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774524833; x=1806060833;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=IAbqjmy97TwwEaUwfljOJyN5EqUeakWON6uTbRDKF2E=;
 b=lFrMu6kjUQkiACNBfyydsxmoHtpN5xvKSjj4CYQ7JsWMQEvC0JU0KvGA
 PWO/mJ6kcrwsBMzWOgXsUrFDDcQ6H7R8ThtW8bXCCeYK+ACfKhzN6g8gT
 WCEygXW4mlDk7uti0PnBXAeWTZrd4DW4Ial+lTE71kHpke6zmyfKw8ZUr
 9CZGIbudpGLQfXf5LjvXbvz0v2imUaTv1EgZIpoSKPsPqDuqDlMVLIWgR
 JYLkvWOdcx5TB+IpOHlTMSRpWNRrgBvpBbzqmR13IbTPk+ev1VE0Jufkk
 v1zWTwaIlQNiYiCg2sND+iZ8Ox2GS8PQ4WS4X0rX/2jVHh8fZLscf49kO Q==;
X-CSE-ConnectionGUID: 4m7n2Ee+SI6l6qdOgEZ6zQ==
X-CSE-MsgGUID: 7ycUhMISTZalGE8mi/bLjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75601131"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75601131"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:33:53 -0700
X-CSE-ConnectionGUID: WZWEN6l/Sui1F0pfvyYohQ==
X-CSE-MsgGUID: ZoykCLEsQTig1VUf1iPFZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="222070109"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:33:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 08/12] drm/i915/de:
 s/intel_de_read64_2x32()/intel_de_read64_2x32_volatile()/
In-Reply-To: <20260325185342.11482-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260325185342.11482-1-ville.syrjala@linux.intel.com>
 <20260325185342.11482-9-ville.syrjala@linux.intel.com>
Date: Thu, 26 Mar 2026 13:33:47 +0200
Message-ID: <11874473929cd3203c8d505ef49f5f74d8250592@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 87ACA334943
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 25 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The raison d'etre of intel_de_read64_2x32() is that it can
> handle registers where volatile values are split across two
> registers. I don't like that it's being used needlessly.
>
> Rename it to intel_de_read64_2x32_volatile() to make it
> more clear when it should be used.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.h     | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vblank.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_vrr.c    | 8 ++++----
>  3 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i9=
15/display/intel_de.h
> index 3f9861b7a589..295e7176b732 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -36,8 +36,8 @@ intel_de_read(struct intel_display *display, i915_reg_t=
 reg)
>  }
>=20=20
>  static inline u64
> -intel_de_read64_2x32(struct intel_display *display,
> -		     i915_reg_t lower_reg, i915_reg_t upper_reg)
> +intel_de_read64_2x32_volatile(struct intel_display *display,
> +			      i915_reg_t lower_reg, i915_reg_t upper_reg)
>  {
>  	u64 val;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/dr=
m/i915/display/intel_vblank.c
> index 1b7cfe226ff8..0726a2abed38 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -109,8 +109,8 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
>  	 * we get a low value that's stable across two reads of the high
>  	 * register.
>  	 */
> -	frame =3D intel_de_read64_2x32(display, PIPEFRAMEPIXEL(display, pipe),
> -				     PIPEFRAME(display, pipe));
> +	frame =3D intel_de_read64_2x32_volatile(display, PIPEFRAMEPIXEL(display=
, pipe),
> +					      PIPEFRAME(display, pipe));
>=20=20
>  	pixel =3D frame & PIPE_PIXEL_MASK;
>  	frame =3D (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index 8a957804cb97..ae5385e92889 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1053,11 +1053,11 @@ void intel_vrr_get_config(struct intel_crtc_state=
 *crtc_state)
>=20=20
>  	if (crtc_state->cmrr.enable) {
>  		crtc_state->cmrr.cmrr_n =3D
> -			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder=
),
> -					     TRANS_CMRR_N_HI(display, cpu_transcoder));
> +			intel_de_read64_2x32_volatile(display, TRANS_CMRR_N_LO(display, cpu_t=
ranscoder),
> +						      TRANS_CMRR_N_HI(display, cpu_transcoder));
>  		crtc_state->cmrr.cmrr_m =3D
> -			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder=
),
> -					     TRANS_CMRR_M_HI(display, cpu_transcoder));
> +			intel_de_read64_2x32_volatile(display, TRANS_CMRR_M_LO(display, cpu_t=
ranscoder),
> +						      TRANS_CMRR_M_HI(display, cpu_transcoder));
>  	}
>=20=20
>  	if (DISPLAY_VER(display) >=3D 13) {

--=20
Jani Nikula, Intel
