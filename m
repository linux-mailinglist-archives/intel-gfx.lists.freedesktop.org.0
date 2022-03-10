Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FA74D4393
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:32:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C84A10FAD7;
	Thu, 10 Mar 2022 09:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E7B10FAD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646904741; x=1678440741;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=NdBnRGQKnQOvCCWLejdnHhFCAAgh11ay8AyByKktPKI=;
 b=PXpNOlgSsMqMG2JKAGIGLRYLIhq4s0JU1/R0234o0gYAX2oGvUuF4K6Q
 fX+uJ3EYADT2ovuAHViVz9eabNhgCfXEzLc9ESBZmSIAaYiW7j4ghqrZ3
 tb9PHq/ipGB9z3ew9xGPeBu08qZwrnOznFDFHe2lRJczYzZwJJ3v+17GD
 VshX0sbToEiEUf4sCEck8LKphv0GscxNf+Vcb+zDklw/LSPwxC9i6ffYA
 GL6ieRGnkg1hamNgsNeL4AkecNpIWoTgttykIjirJ7TlybXciZxU3FYew
 T0cqH1PoCmXb62WZKoNcmCEl8WRlk83Q+Yyu8QspjrRY1RlqUJ/RhL4ED Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237374031"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="237374031"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:32:20 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554565119"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:32:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-5-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:32:17 +0200
Message-ID: <87v8wmxie6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915: Read DRRS MSA timing delay
 from VBT
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> VBT hsa a field for the MSA timing delay, which supposedly
> should be used with DRRS. Extract the data from the VBT.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 3 +++
>  drivers/gpu/drm/i915/i915_drv.h           | 5 +++--
>  2 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index a559a1914588..93dc32fb3e40 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -888,6 +888,9 @@ parse_edp(struct drm_i915_private *i915, const struct=
 bdb_header *bdb)
>  			i915->vbt.edp.low_vswing =3D vswing =3D=3D 0;
>  		}
>  	}
> +
> +	i915->vbt.edp.drrs_msa_timing_delay =3D
> +		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 943267393ecb..020c5f7602a2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -356,10 +356,11 @@ struct intel_vbt_data {
>  		int lanes;
>  		int preemphasis;
>  		int vswing;
> -		bool low_vswing;
> -		bool initialized;
>  		int bpp;
>  		struct edp_power_seq pps;
> +		u8 drrs_msa_timing_delay;
> +		bool low_vswing;
> +		bool initialized;
>  		bool hobl;
>  	} edp;

--=20
Jani Nikula, Intel Open Source Graphics Center
