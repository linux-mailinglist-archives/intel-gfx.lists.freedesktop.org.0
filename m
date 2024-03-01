Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC9F86DDDB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 10:07:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686F610EC2B;
	Fri,  1 Mar 2024 09:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vbcs7rN3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C26B810EC2B
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 09:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709284073; x=1740820073;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CsTuMOn1WqN7bPZ5y/9dpmxV+yIkWMzzBjPiJsoAh88=;
 b=Vbcs7rN3waKTXfldOkiKSvPI7ErMfDycpKZfridbwnIH4a0ZGxJqB9mQ
 eDhPqIW/WqlkkhhwTtbOXertLc2gK8TrSj3MyDjR+auVB4MpMScUr8sRc
 Vr29KsoizfeIYkIs49TkwMT4xmur3ZUwFBcrW5W6i9MS6kS3JLKPsffXD
 ABme47cXsvVw6KCpMUqzgL+wTweSeiZapMf7HtuQPJzjKNnFDl6DKG2pl
 77af6r1r8C0tDA1lwwt8rADVwaI6oyPm3/iXNEYHyGG8t/uoR97rYKcmH
 J5CzCxHLwrHmJi5NmeOcM7QFiL+H3Rs6MK5urkOlQSCY5I/WAobjdl3FZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="15224312"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="15224312"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 01:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="31322630"
Received: from eseresrx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.228])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 01:07:49 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Charlton Lin <charlton.lin@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Charlton Lin <charlton.lin@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>, Sean Paul <seanpaul@chromium.org>
Subject: Re: [RFC] drm/i915/dp: Log message when limiting SST link rate
In-Reply-To: <20240301074923.485807-1-charlton.lin@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240301074923.485807-1-charlton.lin@intel.com>
Date: Fri, 01 Mar 2024 11:07:43 +0200
Message-ID: <87v8665nhc.fsf@intel.com>
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

On Thu, 29 Feb 2024, Charlton Lin <charlton.lin@intel.com> wrote:
> Driver currently limits link rate up to HBR3 in SST mode. Log a
> message with monitor vendor, product id, and MSTM_CAP to
> help understand what monitors are being downgraded by this limit.

Any logging of the sink details should be done exactly once at detect
time. No matter what happens after that, there's no need to spam the
dmesg with duplicate information. If the information currently logged is
insufficient, please add it at detect, where it helps *all* debugging,
not just a single restricted case.

More details inline.

> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Cc: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Charlton Lin <charlton.lin@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6ece2c563c7a..0b2d6d88fd37 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2437,6 +2437,25 @@ intel_dp_compute_link_config(struct intel_encoder =
*encoder,
>  						     false,
>  						     &limits);
>=20=20
> +	if (intel_dp_max_common_rate(intel_dp) > limits.max_rate) {

If link training has failed and the max rate is limited due to that,
you'll hit this on all retraining attempts.

And, of course, this is hit at every single modeset for 128b/132b
capable displays that don't support MST. That's just excessive.

> +		u8 mstm_cap;
> +		u32 panel_id =3D drm_edid_get_panel_id(&intel_dp->aux.ddc);

That reads the entire EDID base block again in the middle of compute
config. A big no. We've also taken care to cache the EDID to avoid
duplicate reads otherwise.

Moreover, it ignores any EDID overrides etc.

> +		char vend[4];
> +		u16 product_id;
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "Limiting LR from max common rate %d to %d\n",
> +			    intel_dp_max_common_rate(intel_dp), limits.max_rate);
> +
> +		drm_edid_decode_panel_id(panel_id, vend, &product_id);
> +
> +		if (intel_dp->dpcd[DP_DPCD_REV] >=3D DP_DPCD_REV_12 &&
> +		    drm_dp_dpcd_readb(&intel_dp->aux, DP_MSTM_CAP, &mstm_cap) =3D=3D 1)

We shouldn't add extra DPCD reads nilly willy either. This should be
debug logged once at detect. I've got a WIP series that should address
this [1], once I fix it.

> +			drm_dbg_kms(&i915->drm,
> +				    "Manufacturer=3D%s Model=3D%x Sink MSTM_CAP=3D%x\n",
> +				    vend, product_id, mstm_cap);

Ville and I have discussed adding entire EDID debug logging at
drm_edid.c level, which would address a lot more things than this.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/129468/



> +	}
> +
>  	if (!dsc_needed) {
>  		/*
>  		 * Optimize for slow and wide for everything, because there are some

--=20
Jani Nikula, Intel
