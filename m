Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E899A72AE6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Mar 2025 08:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C6C10E86A;
	Thu, 27 Mar 2025 07:57:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlFOKLSW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BCE10E865;
 Thu, 27 Mar 2025 07:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743062253; x=1774598253;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZM5lkMued9qQYZxH9ICQFrIJtSV8Z3aNYyB89gFAnE4=;
 b=AlFOKLSWE45mLgSuC2+Nb3fQOqP+RvaNcHAmEPiMYwM0BARYG4AFwwlg
 jBROjrPW/QiqjN1NQh954ySXeYsuWGvdoGwk/fLQ30Ui17BIcFP+XKDs9
 NH5Hi1GEODqNaX4vo67j3Ngd0LKr3uOsCCWFccM4An7vTfhM8gGiv2zuS
 7ULYWuhB1U80ZSs6mmPzFvZNhuQRmCdbCv1PYupfYHA5YbdlOIn1ZNqqg
 Gqsm7cbfGctvdU8TGUr9h7nhb+OR9dqKn884V/1GDw3YsFnoIcUbyOHxK
 pWt+eGgB8I/XSLCxPMYwOqOR5fHn8OrfhkQPpDJsdhhxSJQ37qmz3rKfq w==;
X-CSE-ConnectionGUID: xfwRPHrESai5vdnLsfSY1A==
X-CSE-MsgGUID: 2bCOMOT6QheYzHzPaNZO5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="55379837"
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="55379837"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:57:33 -0700
X-CSE-ConnectionGUID: 6s0SOTAAQfimsm17Mo7Xdg==
X-CSE-MsgGUID: RbsGFhR/R7m2l00iOevmAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,280,1736841600"; d="scan'208";a="156054757"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.17])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2025 00:57:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 03/14] drm/i915: Extract intel_dbuf_bw_changed()
In-Reply-To: <20250326162544.3642-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
 <20250326162544.3642-4-ville.syrjala@linux.intel.com>
Date: Thu, 27 Mar 2025 09:57:27 +0200
Message-ID: <874ize7vo8.fsf@intel.com>
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

On Wed, 26 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the struct intel_dbuf_bw comparison into a small
> helper. We'll get more users later.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 23 +++++++++++++++++------
>  1 file changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index b34db55f5a7e..898ddaf7e76b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -1150,6 +1150,21 @@ static int intel_bw_check_qgv_points(struct intel_=
display *display,
>  					   old_bw_state, new_bw_state);
>  }
>=20=20
> +static bool intel_dbuf_bw_changed(struct intel_display *display,
> +				  const struct intel_dbuf_bw *old_dbuf_bw,
> +				  const struct intel_dbuf_bw *new_dbuf_bw)
> +{
> +	enum dbuf_slice slice;
> +
> +	for_each_dbuf_slice(display, slice) {
> +		if (old_dbuf_bw->max_bw[slice] !=3D new_dbuf_bw->max_bw[slice] ||
> +		    old_dbuf_bw->active_planes[slice] !=3D new_dbuf_bw->active_planes[=
slice])
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static bool intel_bw_state_changed(struct intel_display *display,
>  				   const struct intel_bw_state *old_bw_state,
>  				   const struct intel_bw_state *new_bw_state)
> @@ -1161,13 +1176,9 @@ static bool intel_bw_state_changed(struct intel_di=
splay *display,
>  			&old_bw_state->dbuf_bw[pipe];
>  		const struct intel_dbuf_bw *new_dbuf_bw =3D
>  			&new_bw_state->dbuf_bw[pipe];
> -		enum dbuf_slice slice;
>=20=20
> -		for_each_dbuf_slice(display, slice) {
> -			if (old_dbuf_bw->max_bw[slice] !=3D new_dbuf_bw->max_bw[slice] ||
> -			    old_dbuf_bw->active_planes[slice] !=3D new_dbuf_bw->active_planes=
[slice])
> -				return true;
> -		}
> +		if (intel_dbuf_bw_changed(display, old_dbuf_bw, new_dbuf_bw))
> +			return true;
>=20=20
>  		if (intel_bw_crtc_min_cdclk(display, old_bw_state->data_rate[pipe]) !=
=3D
>  		    intel_bw_crtc_min_cdclk(display, new_bw_state->data_rate[pipe]))

--=20
Jani Nikula, Intel
