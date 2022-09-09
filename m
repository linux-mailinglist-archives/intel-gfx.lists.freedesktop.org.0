Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9965B323D
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A1610EC12;
	Fri,  9 Sep 2022 08:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A323710EC12
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662713422; x=1694249422;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=KgaJFpou5qn35CmhJDfSEyLT6ULZR8HeiMn6NVJGmDQ=;
 b=D1VJJcRVjbD724lFsZfmx0SjOCFBvobmbU3ZaoUolkzKbnfOAzYBDJMg
 AFCJOafZuOokqSFA5GoXTO7vGqH7z56zjwQz1z8JYePdEyrievovL9yTR
 Lqbui5g/Z8HwbrE605z4vZaeoVE/6n1WxyX9IrO4LXryZMGinnc2u1vJZ
 JMDimt1TbNLRqZBbou8OjTaHMpi80RB28WjlOsOeWkdpI6dTHiPC91Ma5
 KICDjcn1XJUcxINERInP5/7lfbTgT0MnswSgRWUXcjKMjowk2fStbCygs
 R8kI9kulGZwTDEczeYn6koijfd+4LVjuDj/hDdhCrHRMs652W05+pWupn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280454806"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="280454806"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:50:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677081476"
Received: from abaruah-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.45.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:50:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220908191646.20239-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
 <20220908191646.20239-4-ville.syrjala@linux.intel.com>
Date: Fri, 09 Sep 2022 11:50:00 +0300
Message-ID: <87k06d6ifb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use REG_FIELD_GET() to
 extract skl+ wm latencies
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

On Thu, 08 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the hand rolled stuff with REG_FIELD_GET() for reading
> out the skl+ watermark latencies.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++++++-------------
>  drivers/gpu/drm/i915/i915_reg.h              |  8 +++----
>  2 files changed, 12 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 25ca92ae8958..cb297725d5b9 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3239,13 +3239,10 @@ static void skl_read_wm_latency(struct drm_i915_p=
rivate *i915, u16 wm[])
>  		return;
>  	}
>=20=20
> -	wm[0] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[1] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[2] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[3] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[0] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
> +	wm[1] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
> +	wm[2] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
> +	wm[3] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
>=20=20
>  	/* read the second set of memory latencies[4:7] */
>  	val =3D 1; /* data0 to be programmed to 1 for second set */
> @@ -3255,13 +3252,10 @@ static void skl_read_wm_latency(struct drm_i915_p=
rivate *i915, u16 wm[])
>  		return;
>  	}
>=20=20
> -	wm[4] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[5] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[6] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[7] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[4] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_0_4_MASK, val) * mult;
> +	wm[5] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_1_5_MASK, val) * mult;
> +	wm[6] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_2_6_MASK, val) * mult;
> +	wm[7] =3D REG_FIELD_GET(GEN9_MEM_LATENCY_LEVEL_3_7_MASK, val) * mult;
>=20=20
>  	adjust_wm_latency(i915, wm, max_level, read_latency);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index c413eec3373f..7289e2b7da2c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6551,10 +6551,10 @@
>  #define     GEN6_DECODE_RC6_VID(vids)		(((vids) * 5) + 245)
>  #define   BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ	0x18
>  #define   GEN9_PCODE_READ_MEM_LATENCY		0x6
> -#define     GEN9_MEM_LATENCY_LEVEL_MASK		0xFF
> -#define     GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT	8
> -#define     GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT	16
> -#define     GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT	24
> +#define     GEN9_MEM_LATENCY_LEVEL_3_7_MASK	REG_GENMASK(31, 24)
> +#define     GEN9_MEM_LATENCY_LEVEL_2_6_MASK	REG_GENMASK(23, 16)
> +#define     GEN9_MEM_LATENCY_LEVEL_1_5_MASK	REG_GENMASK(15, 8)
> +#define     GEN9_MEM_LATENCY_LEVEL_0_4_MASK	REG_GENMASK(7, 0)
>  #define   SKL_PCODE_LOAD_HDCP_KEYS		0x5
>  #define   SKL_PCODE_CDCLK_CONTROL		0x7
>  #define     SKL_CDCLK_PREPARE_FOR_CHANGE	0x3

--=20
Jani Nikula, Intel Open Source Graphics Center
