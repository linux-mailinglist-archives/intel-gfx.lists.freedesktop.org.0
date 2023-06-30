Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEF0743FB0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:29:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229FE10E4B1;
	Fri, 30 Jun 2023 16:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4484A10E0BE
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688142540; x=1719678540;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dDKnVOXSdAvPi4Xc1M9imJa6uejwN3fXBP+ESJaNDWk=;
 b=PNC+p3r0H9yHdJf77/rmGwSTydgwOsF+6vJk/0FfoTCedVq0o8wFClYY
 hSZ9sMcQJQSFDKJcCoI+UFclvQjbTpdAUD8DgDL/h/e30d7K5+cLX2AXh
 pKiyBsjv39CIF5d6QNf4cgzB2/Xj9V8yUQgrlKLIdsnbSmJl5GF6RHIbZ
 +V1fjC714R+PMlW+GI0SItr7a4EMoXG+tleTPX7Ng78Og58tx9xEQm8oS
 fWk5RjbvilsKUqJlfBHd20F8BQmNToc1Jxrs7p6RErT0mIDiBj2t+NY1z
 1b+BSiJteoFO3wEfSivFTk8mxrx2m+UsU5qPQ2QKbpGpNES/k4jtI6a04 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342018895"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="342018895"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 09:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="787768449"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="787768449"
Received: from lpascal-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.62])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 09:28:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230630155846.29931-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
 <20230630155846.29931-6-ville.syrjala@linux.intel.com>
Date: Fri, 30 Jun 2023 19:28:54 +0300
Message-ID: <874jmo3oe1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915/bios: Extract
 intel_bios_encoder_port()
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

On Fri, 30 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We'll have a few places where we need to do the full (incl. ICL+ DSI)
> DVO port->port conversion, so extract the code for that into a helper.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index ae83788177ce..c96bbbe4448e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2374,6 +2374,19 @@ dsi_dvo_port_to_port(struct drm_i915_private *i915=
, u8 dvo_port)
>  	}
>  }
>=20=20
> +static enum port intel_bios_encoder_port(const struct intel_bios_encoder=
_data *devdata)
> +{
> +	struct drm_i915_private *i915 =3D devdata->i915;
> +	const struct child_device_config *child =3D &devdata->child;
> +	enum port port;
> +
> +	port =3D dvo_port_to_port(i915, child->dvo_port);
> +	if (port =3D=3D PORT_NONE && DISPLAY_VER(i915) >=3D 11)
> +		port =3D dsi_dvo_port_to_port(i915, child->dvo_port);
> +
> +	return port;
> +}
> +
>  static int parse_bdb_230_dp_max_link_rate(const int vbt_max_link_rate)
>  {
>  	switch (vbt_max_link_rate) {
> @@ -2613,12 +2626,9 @@ static void print_ddi_port(const struct intel_bios=
_encoder_data *devdata,
>  static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  {
>  	struct drm_i915_private *i915 =3D devdata->i915;
> -	const struct child_device_config *child =3D &devdata->child;
>  	enum port port;
>=20=20
> -	port =3D dvo_port_to_port(i915, child->dvo_port);
> -	if (port =3D=3D PORT_NONE && DISPLAY_VER(i915) >=3D 11)
> -		port =3D dsi_dvo_port_to_port(i915, child->dvo_port);
> +	port =3D intel_bios_encoder_port(devdata);
>  	if (port =3D=3D PORT_NONE)
>  		return;

--=20
Jani Nikula, Intel Open Source Graphics Center
