Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A0890C86C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 13:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6B210E06E;
	Tue, 18 Jun 2024 11:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NzvUeQts";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860D810E06E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 11:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718708882; x=1750244882;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9XhRPZ5XM52eDP4u7OKXhyBpRS7v/aM6k7krYEU3uJ0=;
 b=NzvUeQtsktXHfTw7aMHfsxiO+KmqiQgZkOJVWaSLZRDLa68A8nFE2Vs4
 +uSMDxw0bP1GI1IGjuNg3IjdOm/DXG6yz+r+P9xgzrltp9//7AQG5mmhK
 8yG/Pfpl0SzhFRRNBUzPR4iXVeI8727mBuq9tQQ859WFZktkIZawoR3pg
 ZC61jZSK2eTA+KlWAV2h/NtdSjufzB2cDCvGxv/nqt42YdZgGVWgHq94f
 Ct64aaAlv/qm7M1zYboRfDpL2rveyMx4/qOikIypHzCi+t5xa3miyskU3
 bGUTWQVr2CBDH0WF+hpCUG0tfRD+HsqmHwmom6diob/ec+LYsFjuVoKGG Q==;
X-CSE-ConnectionGUID: 4Xu1w9RmRsOfqgawl2xoCQ==
X-CSE-MsgGUID: aqeQYuf5RoGisBJzZtjamQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26992275"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="26992275"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:08:01 -0700
X-CSE-ConnectionGUID: FMEj0nCAT7OOdZQ3I5ElOA==
X-CSE-MsgGUID: sPfas3viQiK7YOc73eVK5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="72262203"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:08:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/11] drm/i915/dsb: Add i915.enable_dsb module parameter
In-Reply-To: <20240611133344.30673-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
 <20240611133344.30673-9-ville.syrjala@linux.intel.com>
Date: Tue, 18 Jun 2024 14:07:56 +0300
Message-ID: <875xu6h5kj.fsf@intel.com>
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

On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> As we extend the use of DSB for critical pipe/plane register
> programming, it'll be nice to have an escape valve at hand,
> in case things go very poorly. To that end, add a i915.enable_dsb
> modparam by which we can force the driver to take the pure mmio
> path instead.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dsb.c            | 3 +++
>  3 files changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index aebdb7b59dbf..449a31767791 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -54,6 +54,9 @@ intel_display_param_named_unsafe(enable_dc, int, 0400,
>  intel_display_param_named_unsafe(enable_dpt, bool, 0400,
>  	"Enable display page table (DPT) (default: true)");
>=20=20
> +intel_display_param_named_unsafe(enable_dsb, bool, 0600,
> +	"Enable display state buffer (DSB) (default: true)");

Not much point in leaving the module param 0600, is there?

BR,
Jani.

> +
>  intel_display_param_named_unsafe(enable_sagv, bool, 0400,
>  	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index 1208a62c16d2..48c29c55c939 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -31,6 +31,7 @@ struct drm_i915_private;
>  	param(int, vbt_sdvo_panel_type, -1, 0400) \
>  	param(int, enable_dc, -1, 0400) \
>  	param(bool, enable_dpt, true, 0400) \
> +	param(bool, enable_dsb, true, 0600) \
>  	param(bool, enable_sagv, true, 0600) \
>  	param(int, disable_power_well, -1, 0400) \
>  	param(bool, enable_ips, true, 0600) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index bee48ac419ce..2ab3765f6c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -460,6 +460,9 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atom=
ic_state *state,
>  	if (!HAS_DSB(i915))
>  		return NULL;
>=20=20
> +	if (!i915->display.params.enable_dsb)
> +		return NULL;
> +
>  	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
>  	if (!IS_ENABLED(I915))
>  		return NULL;

--=20
Jani Nikula, Intel
