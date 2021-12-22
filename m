Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C8447CF0E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 10:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69FB10FBD5;
	Wed, 22 Dec 2021 09:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA6310FBD5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 09:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640164774; x=1671700774;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=upptPy4Rfufq7f6sNXfRU3KS/ORWCttL14i4oQelxyE=;
 b=Pt72jEVg+QNCN3AmwUsOf/UdhNScqmF4og6/m6QXx2zJdIwOMeTkpkCf
 WVqV59bc/mQ7RralD/m0xhrrT/gfj4aw+2wohjFLTXt1MfuCLuXfZTiMF
 be9HEs7U7SRwzQYGz7CE4jR/3vbvhZ69HPnfiT+klN6ya7Cpa8Bg/22NH
 wERixufCWKmcs/YPwBVffI55DuZZ1S65JoZ3BRNIpys+tW1oajxU3RGn5
 4usCrUz8urmqR5OPqMd+Ueia2NCCcHuUjk4Z+YssvQxvsn+lYppSLP7ek
 KALVzwnACVAmwPcPrwyRw7piz1PXS14ER+jWElIwlwX806cB76nY/UaVo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220595004"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="220595004"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:19:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="508405825"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:19:32 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-4-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 11:19:29 +0200
Message-ID: <878rwdyp26.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/bios: Use i915->vbt.ports[]
 for all g4x+
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

On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extend the vbt.ports[] stuff for all g4x+ platforms. We do need
> to drop the version check as some elk/ctg machines may have VBTs
> older than that. The oldest I know is an elk with version 142.
> But the child device stuff has had the correct size since at
> least version 125 (observed on my sdg), we from that angle this
> should be totally safe.
>
> This does couple of things:
> - Start using the aux_ch/ddc_pin from VBT instead of just the
>   hardcoded defaults. Hopefully there are no VBTs with entirely
>   bogus information here.
> - Start using i915->vbt.ports[] for intel_bios_is_port_dp_dual_mode().
>   Should be fine as the logic doesn't actually change.
> - Start using i915->vbt.ports[] for intel_bios_is_port_edp().
>   The old codepath only looks at the DP DVO ports, the new codepath
>   looks at both DP and HDMI DVO ports. In principle that should not
>   matter. We also stop looking at some of the other device type bits
>   (eg. LVDS,MIPI,ANALOG,etc.). Hopefully no VBT is broken enough that
>   it sets up totally conflicting device type bits (eg. LVDS+eDP at the
>   same time). We also lose the "g4x->no eDP ever" hardcoding (shouldn't
>   be hard to re-introduce that into eg. sanitize_device_type() if needed).

Aligns with what I figured in my reply earlier in the thread. I still
think we should do this for maintainability, even though there's a risk
we'll need to follow-up with additional checks/sanitization for older
platforms in parse_ddi_port().

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> TODO: actually smoke test on various platforms
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index b7adea9827c3..d7d64d3bf083 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2075,7 +2075,7 @@ static void parse_ddi_port(struct drm_i915_private =
*i915,
>=20=20
>  static bool has_ddi_port_info(struct drm_i915_private *i915)
>  {
> -	return HAS_DDI(i915) || IS_CHERRYVIEW(i915);
> +	return DISPLAY_VER(i915) >=3D 5 || IS_G4X(i915);
>  }
>=20=20
>  static void parse_ddi_ports(struct drm_i915_private *i915)
> @@ -2085,9 +2085,6 @@ static void parse_ddi_ports(struct drm_i915_private=
 *i915)
>  	if (!has_ddi_port_info(i915))
>  		return;
>=20=20
> -	if (i915->vbt.version < 155)
> -		return;
> -
>  	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
>  		parse_ddi_port(i915, devdata);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
