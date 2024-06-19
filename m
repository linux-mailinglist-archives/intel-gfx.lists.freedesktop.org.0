Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0844090ECD1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 15:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B1D10EC93;
	Wed, 19 Jun 2024 13:11:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ESo75mS0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A18410E2AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 13:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718802673; x=1750338673;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kBtycLXods8lVWZM1KsRuKmHPH0NA1E2W6kNo616okY=;
 b=ESo75mS00DNqj5nUjG2bD3U7G7ljRLNRD5ScslfLnayq5O6K36xWhOIy
 4u7cf0SEk2ig8DlWXcjTW9di4TYIPZei5v9AGhMAwcnvWC9ZdiNe6V+8q
 WzaB66Pa46VpDNIBFwhekhc2K6zSkcer1Rduyh6/rj3RrZcCe3zbOT8NH
 dG3MmBh073zbrYTlUbOjZoWmXoudubJXqVoWQufdUPjCyLp4u3beNUZVT
 xl97aYQ2QZHDDXF7S6nWQYefxpjHQdyjHwEV4Y6JgKECC6zh5/DuJwV+p
 rq1R16UwDDzEAL/V/h2Ei36o271xji8FQzbmS7Pyqc7o3a+lyWFJlW69X w==;
X-CSE-ConnectionGUID: MbZl3erxS/Sd8QdKkuaTPg==
X-CSE-MsgGUID: MGcmj5uASkahJnMF8wHubg==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="12147948"
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="12147948"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 06:11:13 -0700
X-CSE-ConnectionGUID: XnPqSSPPQtGoGxsdIWop5Q==
X-CSE-MsgGUID: HPV6AZvbRWq7nE2upYhjAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,250,1712646000"; d="scan'208";a="65163642"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 06:11:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/11] drm/i915/dsb: Add i915.enable_dsb module parameter
In-Reply-To: <ZnLA_a8zAukixdI-@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
 <20240611133344.30673-9-ville.syrjala@linux.intel.com>
 <875xu6h5kj.fsf@intel.com> <ZnLA_a8zAukixdI-@intel.com>
Date: Wed, 19 Jun 2024 16:11:08 +0300
Message-ID: <8734p9f577.fsf@intel.com>
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

On Wed, 19 Jun 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jun 18, 2024 at 02:07:56PM +0300, Jani Nikula wrote:
>> On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > As we extend the use of DSB for critical pipe/plane register
>> > programming, it'll be nice to have an escape valve at hand,
>> > in case things go very poorly. To that end, add a i915.enable_dsb
>> > modparam by which we can force the driver to take the pure mmio
>> > path instead.
>> >
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>> >  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>> >  drivers/gpu/drm/i915/display/intel_dsb.c            | 3 +++
>> >  3 files changed, 7 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/dri=
vers/gpu/drm/i915/display/intel_display_params.c
>> > index aebdb7b59dbf..449a31767791 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_params.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>> > @@ -54,6 +54,9 @@ intel_display_param_named_unsafe(enable_dc, int, 040=
0,
>> >  intel_display_param_named_unsafe(enable_dpt, bool, 0400,
>> >  	"Enable display page table (DPT) (default: true)");
>> >=20=20
>> > +intel_display_param_named_unsafe(enable_dsb, bool, 0600,
>> > +	"Enable display state buffer (DSB) (default: true)");
>>=20
>> Not much point in leaving the module param 0600, is there?
>
> It'll let you try both dsb and mmio paths at runtime without
> having to do a full reboot/reload.

I mean does any code actually look at the *module* parameter runtime?
It's only the initial value for the device param?

BR,
Jani.

>
>>=20
>> BR,
>> Jani.
>>=20
>> > +
>> >  intel_display_param_named_unsafe(enable_sagv, bool, 0400,
>> >  	"Enable system agent voltage/frequency scaling (SAGV) (default: true=
)");
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/dri=
vers/gpu/drm/i915/display/intel_display_params.h
>> > index 1208a62c16d2..48c29c55c939 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_params.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>> > @@ -31,6 +31,7 @@ struct drm_i915_private;
>> >  	param(int, vbt_sdvo_panel_type, -1, 0400) \
>> >  	param(int, enable_dc, -1, 0400) \
>> >  	param(bool, enable_dpt, true, 0400) \
>> > +	param(bool, enable_dsb, true, 0600) \
>> >  	param(bool, enable_sagv, true, 0600) \
>> >  	param(int, disable_power_well, -1, 0400) \
>> >  	param(bool, enable_ips, true, 0600) \
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/dr=
m/i915/display/intel_dsb.c
>> > index bee48ac419ce..2ab3765f6c06 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>> > @@ -460,6 +460,9 @@ struct intel_dsb *intel_dsb_prepare(struct intel_a=
tomic_state *state,
>> >  	if (!HAS_DSB(i915))
>> >  		return NULL;
>> >=20=20
>> > +	if (!i915->display.params.enable_dsb)
>> > +		return NULL;
>> > +
>> >  	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
>> >  	if (!IS_ENABLED(I915))
>> >  		return NULL;
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
