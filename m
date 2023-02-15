Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3AD69799D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 11:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A500C10EA8F;
	Wed, 15 Feb 2023 10:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2CF10EA8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 10:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676456184; x=1707992184;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=W78prJBbX8tLTqcuCXJAk1MOeGx8pviyC2GEujGxiZk=;
 b=blAMG0fRcgE0gL/0hg/gluwG1u3zC4AmLGm5Lc5I/EBf/VpT6ejY9Kfw
 HmPL2lrrD424NuQsbLmlJCtpyHeNxf3T6+ZdOCeMCwfkoSvJo5KupfVgH
 +yIRIQTIWl7iGVYxIQfGvZwOreMcMffWcymWNCDsE1HC9c/j6//+d21wJ
 Bg1NhS92PpuzOXlcCBznrH00wtmL66Hon6D3AiB6NCdZN3U13EGNn3xnQ
 y3Mah1SdCGnq22tPlRewokN56hORo1SwVtiWc1dmp52iqg+vXEAe107uy
 svRBeEMRPKE57JP7fHKIc24T4GNHBa/Ait/JwphmJkivDrn/qGYgd9GKN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="315045791"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="315045791"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:16:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="647106316"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="647106316"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 02:16:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230214134739.25077-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
 <20230214134739.25077-3-ville.syrjala@linux.intel.com>
Date: Wed, 15 Feb 2023 12:16:05 +0200
Message-ID: <87wn4jqlne.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Clean up g4x+ sprite TILEOFF
 programming
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

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We defined the bitmasks for DVSTILEOFF but never used them.
> Remedy that.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index e6b4d24b9cd0..a16e56a60c30 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1217,7 +1217,8 @@ g4x_sprite_update_arm(struct intel_plane *plane,
>  	}
>=20=20
>  	intel_de_write_fw(dev_priv, DVSLINOFF(pipe), linear_offset);
> -	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe), (y << 16) | x);
> +	intel_de_write_fw(dev_priv, DVSTILEOFF(pipe),
> +			  DVS_OFFSET_Y(y) | DVS_OFFSET_X(x));
>=20=20
>  	/*
>  	 * The control register self-arms if the plane was previously

--=20
Jani Nikula, Intel Open Source Graphics Center
