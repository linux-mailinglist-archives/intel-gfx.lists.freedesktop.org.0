Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E175D633CB9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:39:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4F310E0C8;
	Tue, 22 Nov 2022 12:39:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326E510E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120789; x=1700656789;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tddRJ+qnmoRUNcQ+aBRMipvLpbOGOBtQLU5VUeSXqyQ=;
 b=Opg0r713mWuEmfuAP6147hWkx/ASVw6F9t6CxPqG0r2rhnNvjirjV1l+
 3+rA+9+jdTxacO82BFQBzK6rJa1jv1J4X6tdVw2XrxnhSLxBphYhs7GHc
 PvnOYrD19wVELSn/pJUHhi++UNq86ubfrcSEvHXb62f0mHyfFirX7S0/Y
 oVbUOZXHqbTqQAoRtXwsSPD3bRyd9t5nITB3g8jaTaeDaXwMJ1KAUl1HT
 wfkBPn2wi3/vb2qZywBbut+AQo5YlkEhy0YOh4TBfV23Iv65BwiDMLLO0
 0EU6/5v3v7DZ5j2bOoZ1YTp0SBeN0p/zsV7bbslgeNYRj/l5Dt3ZpXhpF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="315623465"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="315623465"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:39:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="619198690"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="619198690"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:39:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-11-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:39:41 +0200
Message-ID: <878rk3xiwi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/dvo: Log about what was
 detected on which DVO port
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
> Currently it's not 100% obvious which DVO encoder chip was
> found on which port. Leave a slightly better trace in log.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 4a4b98bfce29..4aeae0f3ac91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -525,6 +525,10 @@ void intel_dvo_init(struct drm_i915_private *i915)
>  			 intel_dvo_encoder_type(&intel_dvo->dev),
>  			 "DVO %c", port_name(encoder->port));
>=20=20
> +	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] detected %s\n",
> +		    encoder->base.base.id, encoder->base.name,
> +		    intel_dvo->dev.name);
> +
>  	if (intel_dvo->dev.type =3D=3D INTEL_DVO_CHIP_TMDS)
>  		connector->polled =3D DRM_CONNECTOR_POLL_CONNECT |
>  			DRM_CONNECTOR_POLL_DISCONNECT;

--=20
Jani Nikula, Intel Open Source Graphics Center
