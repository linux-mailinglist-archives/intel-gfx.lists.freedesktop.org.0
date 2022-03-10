Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 094E54D449B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 11:30:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F5C10EA53;
	Thu, 10 Mar 2022 10:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C6810EA53
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 10:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646908210; x=1678444210;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZGsanMhIE79ZlWlp/RnC8OwboE+a6G8OFnmB1NAPUvk=;
 b=Dppmsxu9kUZtxwxcYTakmbNL35rMYpeInS6rltQNw1JZmzlMTjuCQX53
 EEZOS2PN7JEIo80wQ/Fi0Doh9pc/g5VG674NwK3iYfXHFNtZWwMMvhzuJ
 ayItjrU/qoku9jipVz2yarU3wr0PucQRq3ib4sRWpZug/CRcZ+Q7ZXkiV
 jP+J97oVSlcNzsxm0QaMfFGpV6LJRzDkyTpZotOE0KtNV8U9Rnyu6QxL/
 l7ojtlhGBhU3D5ReQBTau0Yk7i26d6lDB6/cuPXeBa4Qckm6r0emuT4pU
 6EyRQnuKvJeAk42uYYmSbRC+GM0YWuR4WCh36a81p0bpHmbd9Q+FNsVW6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255408268"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="255408268"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:30:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554584201"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 02:30:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-14-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 12:30:06 +0200
Message-ID: <875yomxfpt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915: Implement static DRRS
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
> Let's start supporting static DRRS by trying to match the refresh
> rate the user has requested, assuming the panel supports suitable
> timings.
>
> For now we stick to just our current two timings:
> - fixed_mode: the panel's preferred mode
> - downclock_mode: the lowest refresh rate mode we found
> Some panels may support more timings than that, but we'll
> have to convert our fixed_mode/downclock_mode pointers
> into a full list before we can handle that.

So this won't fix panels with, say, a 120 Hz mode that isn't the panel's
preferred mode?

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_drrs.c  |  8 +++++---
>  drivers/gpu/drm/i915/display/intel_panel.c | 20 ++++++++++++++++++--
>  3 files changed, 34 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index af659320c02e..9bd958377a54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4599,6 +4599,17 @@ static int intel_dp_get_modes(struct drm_connector=
 *connector)
>  			num_modes++;
>  		}
>  	}
> +	if (intel_dp_is_edp(intel_attached_dp(intel_connector)) &&
> +	    intel_connector->panel.downclock_mode) {

I thought you wanted abstract access to connector->panel.downclock_mode
in the previous patch.

> +		struct drm_display_mode *mode;
> +
> +		mode =3D drm_mode_duplicate(connector->dev,
> +					  intel_connector->panel.downclock_mode);
> +		if (mode) {
> +			drm_mode_probed_add(connector, mode);
> +			num_modes++;
> +		}
> +	}
>=20=20
>  	if (num_modes)
>  		return num_modes;
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 5b2eb55c1340..dc1733c9abab 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -383,7 +383,7 @@ intel_drrs_init(struct intel_connector *connector,
>  		return NULL;
>  	}
>=20=20
> -	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS) {
> +	if (dev_priv->vbt.drrs_type =3D=3D DRRS_TYPE_NONE) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
>  			    connector->base.base.id, connector->base.name);
> @@ -399,8 +399,10 @@ intel_drrs_init(struct intel_connector *connector,
>  	}
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
> -		    connector->base.base.id, connector->base.name);
> +		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
> +		    connector->base.base.id, connector->base.name,
> +		    dev_priv->vbt.drrs_type =3D=3D DRRS_TYPE_SEAMLESS ?
> +		    "seamless" : "static");
>=20=20
>  	return downclock_mode;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 127ad9643360..6ddbb69dcfdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -49,14 +49,30 @@ const struct drm_display_mode *
>  intel_panel_fixed_mode(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode)
>  {
> -	return connector->panel.fixed_mode;
> +	const struct drm_display_mode *fixed_mode =3D connector->panel.fixed_mo=
de;
> +	const struct drm_display_mode *downclock_mode =3D connector->panel.down=
clock_mode;
> +
> +	/* pick the one that is closer in terms of vrefresh */
> +	/* FIXME make this a a list of modes so we can have more than two */

Indeed feels a bit hackish...

This being the last and arguably fairly simple part of the series, I do
wonder about the pros and cons of merging this as an interim
solution.

IIUC if the user wanted to do static/manual drrs while seamless is
supported, this does not disable seamless when the user chooses
preferred vrefresh and a downclock vrefresh is available. So you can
choose lower vrefresh and stay there, but you can't choose higher
vrefresh and stay there.

> +	if (fixed_mode && downclock_mode &&
> +	    abs(drm_mode_vrefresh(downclock_mode) - drm_mode_vrefresh(mode)) <
> +	    abs(drm_mode_vrefresh(fixed_mode) - drm_mode_vrefresh(mode)))
> +		return downclock_mode;
> +	else
> +		return fixed_mode;
>  }
>=20=20
>  const struct drm_display_mode *
>  intel_panel_downclock_mode(struct intel_connector *connector,
>  			   const struct drm_display_mode *fixed_mode)
>  {
> -	return connector->panel.downclock_mode;
> +	const struct drm_display_mode *downclock_mode =3D connector->panel.down=
clock_mode;
> +
> +	if (downclock_mode &&
> +	    drm_mode_vrefresh(downclock_mode) < drm_mode_vrefresh(fixed_mode))

With this use, I think the fixed_mode name here is a bit misleading. The
downclock mode will always have a vrefresh lower than the fixed
mode. But you're not always passing the fixed mode, right?

> +		return downclock_mode;
> +	else
> +		return NULL;
>  }
>=20=20
>  int intel_panel_compute_config(struct intel_connector *connector,

--=20
Jani Nikula, Intel Open Source Graphics Center
