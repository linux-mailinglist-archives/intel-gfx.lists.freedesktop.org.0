Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BEC5FC77E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7EB10E518;
	Wed, 12 Oct 2022 14:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B7B10E518
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585450; x=1697121450;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Pq1VIn8MuIYt2YjjNEoEEBrZMYdeDgf+zwa4Tj3Tk6E=;
 b=ZhT+uatn91kvme6yZTS+k9/JWiPlgcZZLp7GcgPZDyF04CDZGvH8L37W
 BuUFm0RkudZBI7r9rtH7JN0A6JxzmzzTn0a61tGvn0f3N0DlNo0yzxU5m
 W+HZzCsgc3KHhONE9iVOPLLyqoAvOKlmKAuayUU0v4vJ6vRrH+HEQKPK6
 8PCU9lGF2TX9puqeEm3EbDP6UXEoqsLsF3udqKcT3S89yt1weWHyOYMQ9
 Q8uYfCjCzkcQAO4nSXThbH7P3HA4cUT+BByX2MvYF/0poCKziNRdRrDen
 2YfFu8qGHIfOmv0wFQFC35/aWcEZXPsYdDDWIQQRVoB8rfuwqrdQT824z A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="288077304"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="288077304"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:37:29 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="801862745"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="801862745"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:37:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-7-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:37:30 +0300
Message-ID: <87r0zdumz9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/22] drm/i915/audio: Unify register bit
 naming
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename a few g4x bits to match the ibx+ bits.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c      | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_audio_regs.h |  4 ++--
>  2 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index f79efc6e069c..c6f0c8be82b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -340,7 +340,7 @@ static void g4x_audio_codec_disable(struct intel_enco=
der *encoder,
>=20=20
>  	/* Invalidate ELD */
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp &=3D ~G4X_ELDV;
> +	tmp &=3D ~G4X_ELD_VALID;
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>  }
>=20=20
> @@ -355,13 +355,13 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	int len, i;
>=20=20
>  	if (intel_eld_uptodate(connector,
> -			       G4X_AUD_CNTL_ST, G4X_ELDV,
> -			       G4X_AUD_CNTL_ST, G4X_ELD_ADDR_MASK,
> +			       G4X_AUD_CNTL_ST, G4X_ELD_VALID,
> +			       G4X_AUD_CNTL_ST, G4X_ELD_ADDRESS_MASK,
>  			       G4X_HDMIW_HDMIEDID))
>  		return;
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp &=3D ~(G4X_ELDV | G4X_ELD_ADDR_MASK);
> +	tmp &=3D ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
>  	len =3D REG_FIELD_GET(G4X_ELD_BUFFER_SIZE_MASK, tmp);
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
> @@ -371,7 +371,7 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>  			       *((const u32 *)eld + i));
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
> -	tmp |=3D G4X_ELDV;
> +	tmp |=3D G4X_ELD_VALID;
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gp=
u/drm/i915/display/intel_audio_regs.h
> index b5684ed839be..4f432c2eb543 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -9,9 +9,9 @@
>  #include "i915_reg_defs.h"
>=20=20
>  #define G4X_AUD_CNTL_ST			_MMIO(0x620B4)
> -#define   G4X_ELDV			REG_BIT(14)
> +#define   G4X_ELD_VALID			REG_BIT(14)
>  #define   G4X_ELD_BUFFER_SIZE_MASK	REG_GENMASK(13, 9)
> -#define   G4X_ELD_ADDR_MASK		REG_GENMASK(8, 5)
> +#define   G4X_ELD_ADDRESS_MASK		REG_GENMASK(8, 5)
>  #define   G4X_ELD_ACK			REG_BIT(4)
>  #define G4X_HDMIW_HDMIEDID		_MMIO(0x6210C)

--=20
Jani Nikula, Intel Open Source Graphics Center
