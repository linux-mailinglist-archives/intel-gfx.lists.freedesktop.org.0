Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB4847CEEB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 10:13:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34F110F5D2;
	Wed, 22 Dec 2021 09:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33FD10F699
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 09:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640164405; x=1671700405;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OyB24u7ygLMtqJ/vdRSDz3jNOzMKYbeiifCxihFEaN8=;
 b=gVx9DzFQypRyRYVRSEwyYOn1nWfjxg6cdlEBVbllUb14TSwZfPMOoSVy
 NiHpn9P0qwSdv2B4IIADNicX60Jv49aGTYFsYCubGkIBA4rHvWLJ2Qlyw
 ES3L1lgeLgySXZ4aOre7TMH+SbR9um9M/XjM4UnK3veygOe0QIv873IU4
 kahgFQl5xis0QwRNZB/mgeFHMUmTkWB91Oi7CxDAX8Kh0CzwHAZOIbtzT
 K40DYGXZjA61dSkt/Km5hs/+KICSCoOgQFmhZqDoIOCXR8u3bHMdTJnQA
 UfcU9Grn582GoR3x+TKtmnRqJbPmA+GrQIZG89G2lMdWWu77UQhc2I8kd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="220594243"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="220594243"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:13:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="468110281"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:13:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-3-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 11:13:19 +0200
Message-ID: <87czlpypcg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/bios: Use i915->vbt.ports[] on
 CHV
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
> CHV is currently straddling the divide by using parse_ddi_ports() stuff
> for aux_ch/ddc_pin but going through all old codepaths for the rest
> (intel_bios_is_port_present(), intel_bios_is_port_edp(),
> intel_bios_is_port_dp_dual_mode()). Let's switch over full and use
> i915->vbt.ports[] for the rest of the stuff.
>
> dvo_port_to_port() doesn't know about DSI so we won't get into
> any kind of "is port B HDMI or DSI or both?" conundrum, which
> could otherwise happen on VLV/CHV due to DSI ports living in a
> separate world from the other digital ports.

This is also very subtle! But it does somewhat nicely dodge the whole
question, and moves things forward.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index fce1ea7a6693..b7adea9827c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2075,14 +2075,14 @@ static void parse_ddi_port(struct drm_i915_privat=
e *i915,
>=20=20
>  static bool has_ddi_port_info(struct drm_i915_private *i915)
>  {
> -	return HAS_DDI(i915);
> +	return HAS_DDI(i915) || IS_CHERRYVIEW(i915);
>  }
>=20=20
>  static void parse_ddi_ports(struct drm_i915_private *i915)
>  {
>  	struct intel_bios_encoder_data *devdata;
>=20=20
> -	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
> +	if (!has_ddi_port_info(i915))
>  		return;
>=20=20
>  	if (i915->vbt.version < 155)

--=20
Jani Nikula, Intel Open Source Graphics Center
