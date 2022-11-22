Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C61B1633C8B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:34:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD19F89823;
	Tue, 22 Nov 2022 12:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC62889823
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120432; x=1700656432;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QnFWwYj8kq0MG4YaovnuG6epBc+w/bVUS45L2mGH2ns=;
 b=gMYA030ltiQMrz8DprUmqIuXSYmS1YFiwcCw2PQaviTScKfqY/UaIzGu
 GC0WvbMEgrIQAEDvOncskl5n/BUyNBGk760ZiEZ/RN+lrFqkMUTr7h01U
 8BGlK/qjIdUSwU9+n1lp90C5Pli1d7bqGMoHqke2uwSNZZbj9geS3sLoq
 2onVSnaCtcPMBOyyweDapPUHEGaClVkhsfSmVC1uHb8EhxH5ImQT2wg45
 vbzEYCBOeXLOlkXjTWe7rwx57zN1/vU29I2A6iE7deRxT/8ZxVgV7wMfX
 RwQAiMd4ceLPNxWI9Hz49gk4sBX2gFMTrp5INKuW0PfmbMXzKQ5qjBW9M w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="400092532"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="400092532"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:33:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="635530128"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="635530128"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:33:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-7-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:33:48 +0200
Message-ID: <87pmdfxj6b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/dvo: Rename the "active data
 order" bits
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have two sets of bits for DVO "data order" stuff. Rename
> one set to ACT_DATA_ORDER to make it clear they are separate
> bitfields.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h          | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 255deb55b932..b36c3a620250 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -288,10 +288,10 @@ static void intel_dvo_pre_enable(struct intel_atomi=
c_state *state,
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 dvo_val;
>=20=20
> -	/* Save the data order, since I don't know what it should be set to. */
> +	/* Save the active data order, since I don't know what it should be set=
 to. */
>  	dvo_val =3D intel_de_read(i915, DVO(port)) &
>  		  (DVO_DEDICATED_INT_ENABLE |
> -		   DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
> +		   DVO_PRESERVE_MASK | DVO_ACT_DATA_ORDER_GBRG);
>  	dvo_val |=3D DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
>  		   DVO_BLANK_ACTIVE_HIGH;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 89c834d8fff8..464be86d6125 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2600,10 +2600,10 @@
>  #define   DVO_VSYNC_TRISTATE		(1 << 9)
>  #define   DVO_HSYNC_TRISTATE		(1 << 8)
>  #define   DVO_BORDER_ENABLE		(1 << 7)
> -#define   DVO_DATA_ORDER_GBRG		(1 << 6)
> -#define   DVO_DATA_ORDER_RGGB		(0 << 6)
> -#define   DVO_DATA_ORDER_GBRG_ERRATA	(0 << 6)
> -#define   DVO_DATA_ORDER_RGGB_ERRATA	(1 << 6)
> +#define   DVO_ACT_DATA_ORDER_GBRG		(1 << 6)
> +#define   DVO_ACT_DATA_ORDER_RGGB		(0 << 6)
> +#define   DVO_ACT_DATA_ORDER_GBRG_ERRATA	(0 << 6)
> +#define   DVO_ACT_DATA_ORDER_RGGB_ERRATA	(1 << 6)
>  #define   DVO_VSYNC_ACTIVE_HIGH		(1 << 4)
>  #define   DVO_HSYNC_ACTIVE_HIGH		(1 << 3)
>  #define   DVO_BLANK_ACTIVE_HIGH		(1 << 2)

--=20
Jani Nikula, Intel Open Source Graphics Center
