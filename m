Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7A64FD1BB
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 09:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426DB10FE1E;
	Tue, 12 Apr 2022 07:01:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6603710FE1F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 07:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649746860; x=1681282860;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=quYsPxvadlUF720dL8WzQtS90qLPoxXo7Wcasr5j360=;
 b=lw6OuslYOpDv712ZiZSMpcgY1sD937tLuy1Zx/yQIAgZZfUvG3YmbXQ9
 v84NzkVMRV8KZ+2w1P5h5lN/LPYROXVFjuWiNmonJtYYBam5SnjG2pAE5
 MN90gCZ1HfIuffF4UDyR4TP6pP9Tx30oabXWh/NllJ9EAUXvUlxBsZDFo
 KjvpNFQTP1Kg42xBx2QvSS9rcMPdKl8QXuvv84BHNvciEYd3TP6g5ZN7P
 jnrbYj60WWkOyDOMeEc14Y7A31WMj2mGnJekHR0OK8VyLqzs2VYD4YIR6
 Vkm+VAR8i1KjcUZZsPQ/gfFyHcQeZ6esukNQbd2W7vehF+6f2ZvNVYxpT g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="262473712"
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="262473712"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 00:00:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="572619682"
Received: from kdabkows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.148.227])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 00:00:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220412052542.681419-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220412052542.681419-1-jouni.hogander@intel.com>
Date: Tue, 12 Apr 2022 10:00:54 +0300
Message-ID: <87wnfuhjkp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check EDID before dpcd for
 possible HDR aux bl support
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
Cc: Filippo Falezza <filippo.falezza@outlook.it>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Apr 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We have now seen panel (XMG Core 15 e21 laptop) avertizing support
> for Intel proprietary eDP backlight control via DPCD registers, but
> actually working only with legacy pwm control.
>
> This patch adds panel EDID check for possible HDR static metadata and
> does detection from DPCD registers only if this data block exists.
>
> Fixes: 4a8d79901d5b ("drm/i915/dp: Enable Intel's HDR backlight interface=
 (only SDR for now)")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5284
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Tested-by: Filippo Falezza <filippo.falezza@outlook.it>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_aux_backlight.c   | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/driv=
ers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 97cf3cac0105..f69e185b58c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -108,6 +108,19 @@ intel_dp_aux_supports_hdr_backlight(struct intel_con=
nector *connector)
>  	int ret;
>  	u8 tcon_cap[4];
>=20=20
> +	/*
> +	 * If we don't have HDR static metadata there is no way to
> +	 * runtime detect used range for nits based control. For now
> +	 * do not use Intel proprietary eDP backlight control if we
> +	 * don't have this data in panel EDID. In case we find panel
> +	 * which supports only nits based control, but doesn't provide
> +	 * HDR static metadata we need to start maintaining table of
> +	 * ranges for such panels.
> +	 */
> +	if (!(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
> +	      BIT(HDMI_STATIC_METADATA_TYPE1)))
> +		return false;

Considering the complexities around this, I'd probably start gathering
the info in variables, then debug log all of it, with the conclusion the
driver makes. It's makes future debugging much easier.

Other than that, I guess

Acked-by: Jani Nikula <jani.nikula@intel.com>

because I don't really know what's going on with these...

BR,
Jani.

> +
>  	intel_dp_wait_source_oui(intel_dp);
>=20=20
>  	ret =3D drm_dp_dpcd_read(aux, INTEL_EDP_HDR_TCON_CAP0, tcon_cap, sizeof=
(tcon_cap));

--=20
Jani Nikula, Intel Open Source Graphics Center
