Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 300DB9C1DB0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F190D10E996;
	Fri,  8 Nov 2024 13:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gZFZGpfn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771DD10E996
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071545; x=1762607545;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=471X2XmzVmqmCCn+MoILv/pkqkSxKTw7xJ6ZCEWoshs=;
 b=gZFZGpfnNYoWQnW3wAP05eCM1zkJU/JgKs757AXRZCMmnebH9FPwowCB
 HoXbr6eT3BdJGXO82DpqovCMI8F9uLeuK8sinY4iNKhUCD8rkQ8cH/3vr
 Piwa+QhSAe1+ynM2VIyHkyiOLNNQTZm/hq6aVbyeSsIFKVGOadcKmcKDd
 Rw/LG78AMcrF05EF09s+luHEg7MRmalKDT3rcqAXSW4ARFyqquM9KaXq3
 CN0n/SUsV4TUE0ayefq2TaONQtWOfe8H1iFYOYHYH/KVsccA+X+SHzXRB
 tIF7DEDeDU1DVd71sXNU36me5My/4QX8GtIdZZv5mpJLn07GhaZbHR6s2 A==;
X-CSE-ConnectionGUID: D4Qq8tf1SkaJxpF4BE34JA==
X-CSE-MsgGUID: zWGfhaGtRa6d8i++TBjgsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31112222"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31112222"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:12:25 -0800
X-CSE-ConnectionGUID: J4m2RJufRl+PT5Uzr9wX0g==
X-CSE-MsgGUID: 6yflcDCdT4y/SuKaUeDtrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85541529"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:12:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/10] drm/i915/crt: Clean up ADPA_HOTPLUG_BITS definitions
In-Reply-To: <20241107161123.16269-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-6-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:12:20 +0200
Message-ID: <87jzddeuob.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> ADPA_HOTPLUG_BITS is defined in terms of the individual
> register bits and is defined in intel_crt.c, whereas the
> counterpart mask (ADPA_CRT_HOTPLUG_MASK) is just defined
> as a raw hex constant and lives in i915_reg.h. Just define
> both the same way (with unified name to boot) and move both
> to intel_crt.c since they are more an implementation detail
> rather than anything to do with the actual regiter definitions.

*register

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 16 ++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h          |  1 -
>  2 files changed, 12 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 73d5332cf103..e21e402f85c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -55,12 +55,20 @@
>  #include "intel_pch_refclk.h"
>=20=20
>  /* Here's the desired hotplug mode */
> -#define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
> +#define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_ENABLE |			\
> +			   ADPA_CRT_HOTPLUG_PERIOD_128 |		\
>  			   ADPA_CRT_HOTPLUG_WARMUP_10MS |		\
>  			   ADPA_CRT_HOTPLUG_SAMPLE_4S |			\
>  			   ADPA_CRT_HOTPLUG_VOLTAGE_50 |		\
> -			   ADPA_CRT_HOTPLUG_VOLREF_325MV |		\
> -			   ADPA_CRT_HOTPLUG_ENABLE)
> +			   ADPA_CRT_HOTPLUG_VOLREF_325MV)
> +#define ADPA_HOTPLUG_MASK (ADPA_CRT_HOTPLUG_MONITOR_MASK |		\
> +			   ADPA_CRT_HOTPLUG_ENABLE |			\
> +			   ADPA_CRT_HOTPLUG_PERIOD_MASK |		\
> +			   ADPA_CRT_HOTPLUG_WARMUP_MASK |		\
> +			   ADPA_CRT_HOTPLUG_SAMPLE_MASK |		\
> +			   ADPA_CRT_HOTPLUG_VOLTAGE_MASK |		\
> +			   ADPA_CRT_HOTPLUG_VOLREF_MASK |		\
> +			   ADPA_CRT_HOTPLUG_FORCE_TRIGGER)
>=20=20
>  struct intel_crt {
>  	struct intel_encoder base;
> @@ -984,7 +992,7 @@ void intel_crt_reset(struct drm_encoder *encoder)
>  		u32 adpa;
>=20=20
>  		adpa =3D intel_de_read(display, crt->adpa_reg);
> -		adpa &=3D ~ADPA_CRT_HOTPLUG_MASK;
> +		adpa &=3D ~ADPA_HOTPLUG_MASK;
>  		adpa |=3D ADPA_HOTPLUG_BITS;
>  		intel_de_write(display, crt->adpa_reg, adpa);
>  		intel_de_posting_read(display, crt->adpa_reg);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f233fc32e45c..6391f2e9d530 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1156,7 +1156,6 @@
>  #define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe=
))
>  #define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
>  #define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT=
, (pipe))
> -#define   ADPA_CRT_HOTPLUG_MASK  0x03ff0000 /* bit 25-16 */
>  #define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
>  #define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 0)
>  #define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 3)

--=20
Jani Nikula, Intel
