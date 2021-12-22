Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC5747CF7E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 10:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10EB510E5D5;
	Wed, 22 Dec 2021 09:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 087A910E5D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 09:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640166429; x=1671702429;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=a+e1PNCBcJYVkvTpeUAm2NbGhlO03WrPC9VDHhzC+VE=;
 b=IwYV53DnpACAT7GjdrSkFYq7G8UU5dgXVUCt+oelJiknKJIuAkHPfDJC
 +3eXq4l8KBe1lzYQySMeErEg4+88BGATEqciiBItUW8RfWtZ2WBIj8WP9
 9IgMwYtuLOX4o0ueUEC39mpjUxIvUtYvqsjcS6zAXv1FvrLhnNrEkrgDZ
 SGC9cJvTPBVevfuE9zpQpd4fE0IjDgLWgkWIFfWIbzTP57hIJUV6s5Lo5
 UmAqbjSDxxkBbX5MdnhjB+dG6vibm//dWcBIX9Uc2t2VFGWh+lFtQMzA+
 N/YL4xbehFu+ERSXlNjZkEKIk0+a2NtHYP7i8HiPQE4bvQ9S1qJOt8s9C Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="221263896"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="221263896"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:47:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="521614992"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:47:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-7-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 11:47:03 +0200
Message-ID: <87zgotx97s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/hdmi: Ignore DP++ TMDS clock
 limit for native HDMI ports
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

On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Lots of machines these days seem to have a crappy type1 DP dual
> mode adaptor chip slapped onto the motherboard. Based on the
> DP dual mode spec we currently limit those to 165MHz max TMDS
> clock.
>
> Windows OTOH ignores DP dual mode adaptors when the VBT
> indicates that the port is not actually DP++, so we can
> perhaps assume that the vendors did intend that the 165MHz
> clock limit doesn't apply here. Though it would be much
> nicer if they actually declared an explicit limit through
> VBT, but that doesn't seem to be happening either.
>
> So in order to match Windows behaviour let's ignore the
> DP dual mode adaptor's TMDS clock limit for ports that
> don't look like DP++ in VBT.
>
> Unfortunately many older VBTs misdelcare their DP++ ports
> as just HDMI (eg. ILK Dell Latitude E5410) or DP (eg. SNB
> Lenovo ThinkPad X220). So we can't really do this universally
> without risking black screens. I suppose a sensible cutoff
> is HSW+ since that's when 4k became a thing and one might
> assume that the machines have been tested to work with higher
> TMDS clock rates.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Out of curiousity, on the machines where we are currently too strict on
the limitation, do we actually read and get a valid limit from the
adaptor in drm_dp_dual_mode_max_tmds_clock(), or is it the fallback 165
MHz that's too strict? If the latter, should the fallback policy be
moved out of drm_dp_dual_mode_max_tmds_clock() instead?

Anyway, seems that currently we're erring too far to lower limits to
avoid black screens, so seems okay to relax this a bit. ISTR we've had
quite a few bug reports about this.

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 3b5b9e7b05b7..9f0557d9e9a5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2359,6 +2359,14 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connecto=
r *connector, bool has_edid)
>  		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
>  		    drm_dp_get_dual_mode_type_name(type),
>  		    hdmi->dp_dual_mode.max_tmds_clock);
> +
> +	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
> +	if ((DISPLAY_VER(dev_priv) >=3D 8 || IS_BROADWELL(dev_priv)) &&
> +	    !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI por=
t\n");
> +		hdmi->dp_dual_mode.max_tmds_clock =3D 0;
> +	}
>  }
>=20=20
>  static bool

--=20
Jani Nikula, Intel Open Source Graphics Center
