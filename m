Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA561633CA8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FD910E0CD;
	Tue, 22 Nov 2022 12:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6D710E0CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120692; x=1700656692;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FHP+JSnD51W7hFBHi8WdyELxcW1fPaIoRiJFMEYs76Q=;
 b=RaF57jvLW7RodzhTCoBnMJeNCok2FepqKsH7f/VF+22GCHRoqYy5eFrq
 oH3Rgl8Rl/E8u7vB1egkPTyb5SLEWQZ9+dIlbaQo37KjgqPj6Y+rfbewv
 rDnRMXmsskS8wHh0sQXQm25Kz/vXDUwVpiCtCfmcFCubLXHMCDvUoiviZ
 M0aAjuvygcpKFbhNqKpKh8BgP43blJdnJg2kzTJmfD0IYOPmB9UwnQnrR
 eqbJl6NxAkjIfniL4aXXE89hNFnbUaLgdZ9XSWiEtDP0LYeaSWgrUmZnE
 fr3LpZihOBWSlgbPZSLGWDIV+A9MpZYtU1YfFdCYGfILuKk+fYVlnvAj9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="400093180"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="400093180"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:38:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="704952461"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="704952461"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:38:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-9-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:38:08 +0200
Message-ID: <87edtvxiz3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/dvo: Use intel_de_rmw() for
 DVO enable/disable
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the hand rolled RMW with intel_de_rmw() in the DVO
> port enable/disable functions. Also switch to intel_de_posting_read()
> for the posting read (though maybe it should be just be nuked...).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I've got an old series adding intel_de_write_post() and
intel_de_rmw_post() that combine the write and the posting read. Wonder
if I should resurrect that. *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index a5c464c82e5c..c590a92205f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -185,11 +185,11 @@ static void intel_disable_dvo(struct intel_atomic_s=
tate *state,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
>  	enum port port =3D encoder->port;
> -	u32 temp =3D intel_de_read(i915, DVO(port));
>=20=20
>  	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
> -	intel_de_write(i915, DVO(port), temp & ~DVO_ENABLE);
> -	intel_de_read(i915, DVO(port));
> +
> +	intel_de_rmw(i915, DVO(port), DVO_ENABLE, 0);
> +	intel_de_posting_read(i915, DVO(port));
>  }
>=20=20
>  static void intel_enable_dvo(struct intel_atomic_state *state,
> @@ -200,14 +200,13 @@ static void intel_enable_dvo(struct intel_atomic_st=
ate *state,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
>  	enum port port =3D encoder->port;
> -	u32 temp =3D intel_de_read(i915, DVO(port));
>=20=20
>  	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
>  					 &pipe_config->hw.mode,
>  					 &pipe_config->hw.adjusted_mode);
>=20=20
> -	intel_de_write(i915, DVO(port), temp | DVO_ENABLE);
> -	intel_de_read(i915, DVO(port));
> +	intel_de_rmw(i915, DVO(port), 0, DVO_ENABLE);
> +	intel_de_posting_read(i915, DVO(port));
>=20=20
>  	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
