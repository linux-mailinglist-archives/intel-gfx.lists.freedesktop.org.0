Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD4A695C71
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 09:12:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C77510E809;
	Tue, 14 Feb 2023 08:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D0810E809
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 08:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676362324; x=1707898324;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0+kSt1MQLCqJEqFmRtS2ooCyOF/XWXhwZbaNUdnrg6s=;
 b=GxHIIhHgSQHnQZGApSMpiKhZsBPh5Cu46ujRAL/7bGvi+8A66N9krgI2
 2wK1Ghf5FUywvQWkqMIHe0uSfICFrHRBGTMAxERlQYn/OMazTgxpv5MbS
 gIvvHszWEm694HaGe1A3Vxll0QgeWeDgdRKNXZHrtoM+9XRlB06CK+wR9
 HUjBVwXtkVQEhf3981EkQqV2/335v/dE5EFTu7/Lu67LAKCNvufk6qMqa
 rlqv/5aoRZchsLlUAPFkjXRQQDx6slhoFLrIusTEY4aDq4EtQsuGKYr+a
 AT34+V9TMJsOASUB3YAFH+PYgBMRe1Cc2qGETbnV2rP+HJMaIZW5YtYFL w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="328816354"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="328816354"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 00:12:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="793036270"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="793036270"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 00:12:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230214073818.20231-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208015508.24824-10-ville.syrjala@linux.intel.com>
 <20230214073818.20231-1-ville.syrjala@linux.intel.com>
Date: Tue, 14 Feb 2023 10:11:59 +0200
Message-ID: <87wn4ku0mo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 09/10] drm/i915: Iterate all child devs
 in intel_bios_is_port_present()
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

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Instead of consulting vbt.ports[] lets just go through the
> whole child device list to check whether a specific port
> was declared by the VBT or not.
>
> Note that this doesn't change anything wrt. detecting duplicate
> child devices with the same port as vbt.ports[] would also always
> contain exactly one of the duplicates.
>
> v2: Include a is_port_valid() check to deal with some broken VBTs
>     Mention something about duplicate port detection (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index efe33af2259b..77964618664a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3398,10 +3398,22 @@ bool intel_bios_is_lvds_present(struct drm_i915_p=
rivate *i915, u8 *i2c_pin)
>   */
>  bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port=
 port)
>  {
> +	const struct intel_bios_encoder_data *devdata;
> +
>  	if (WARN_ON(!has_ddi_port_info(i915)))
>  		return true;
>=20=20
> -	return i915->display.vbt.ports[port];
> +	if (!is_port_valid(i915, port))
> +		return false;
> +
> +	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
> +		const struct child_device_config *child =3D &devdata->child;
> +
> +		if (dvo_port_to_port(i915, child->dvo_port) =3D=3D port)
> +			return true;
> +	}
> +
> +	return false;
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
