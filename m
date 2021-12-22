Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E02DD47CEC0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 10:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54C3E112744;
	Wed, 22 Dec 2021 09:05:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962AB10F981
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 09:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640163956; x=1671699956;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8LRxEJAxTr7FCOmPyE1lykhdadh2AMF0Di5qgyef81A=;
 b=SrijaZ4ktV0Z3WGmLExHdbjzs7FqtasN/bTmM4lBCa98yfp8mppb3fz4
 ssZ4ex9eFrsFy8maKdBfrgbu8iClUnfGyKH6pOVbbZt3JcIRNJ8CGCgtp
 KK2Lbrxkq6hoZ1tLRqtJA4IXTPAnd0yR0GLwsViSSUwoLz9/JLBoGBsJ+
 oqITWWyaGDZPw7lwmS83wheQTEKISJdQ6ww5K8w2D4j4RJhbp78Pp/nJk
 rw2SyKyevbPGLcI0zpDr3OXAgHtiiooSFlLMd/Tlbo9VydXORQBTAOcbw
 nLLpaqJjf+bp29Mkdq/UfbnUs4OYOQYw1DGvpArEY3CCSpy6BGSaZok4d g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="326885280"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="326885280"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:05:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="521603207"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 01:05:54 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217155403.31477-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-3-ville.syrjala@linux.intel.com>
Date: Wed, 22 Dec 2021 11:05:50 +0200
Message-ID: <87fsqlypox.fsf@intel.com>
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

Whoa, this is far more subtle than what the code looks!

We stop checking for port A for CHV in intel_bios_is_port_present(), but
it's a warn and I don't recall any bug reports, so probably fine. We
could add a check in parse_ddi_port(), but meh.

Ditto for intel_bios_is_port_dp_dual_mode(), except it doesn't have a
warn.

The eDP check in intel_bios_is_port_edp() becomes slightly more
relaxed. Both the old and new check require these to be set:

 - DEVICE_TYPE_DISPLAYPORT_OUTPUT
 - DEVICE_TYPE_INTERNAL_CONNECTOR.

The old code also required these to be unset:

 - DEVICE_TYPE_MIPI_OUTPUT
 - DEVICE_TYPE_COMPOSITE_OUTPUT
 - DEVICE_TYPE_DUAL_CHANNEL
 - DEVICE_TYPE_LVDS_SIGNALING
 - DEVICE_TYPE_TMDS_DVI_SIGNALING
 - DEVICE_TYPE_VIDEO_SIGNALING
 - DEVICE_TYPE_ANALOG_OUTPUT

It's possible we've added these just as a sanity check for broken VBTs
more than anything. I guess I'd see if actual problems arise.

Bottom line, I think the functional changes matter only for VBTs with
bogus data.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> dvo_port_to_port() doesn't know about DSI so we won't get into
> any kind of "is port B HDMI or DSI or both?" conundrum, which
> could otherwise happen on VLV/CHV due to DSI ports living in a
> separate world from the other digital ports.
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
