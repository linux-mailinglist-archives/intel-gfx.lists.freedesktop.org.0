Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215986A5EA6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 19:18:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A299F10E4EF;
	Tue, 28 Feb 2023 18:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E2A10E4EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 18:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677608324; x=1709144324;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Pcrp4vVUp/KPA8QV8+JFCyUIuKk19y7hq4E0UJdvmv8=;
 b=FXBmLdrkLtuctFKUWP9LrMi1NY7FSCYTWO10gjGKPooqE96HJiuDdugJ
 mBjKus5Sq4go8osJSE5R9NfHsSMWj7RD/3pvqm+WHB9B8+MDjmJG78fs9
 zBYzyILynn0PmJIrM0qjLB1YYRuSRFdwRT8t9yasuVB5XCu20eogm/Z+X
 QQTZUq+l7loBUzApBit3q7YEtP+eTWYZfHVxrb/nPzuGM2oPVBlOrow1x
 SOwdJVE9tgJJSss8pPiznIrqIAVEFDLONJJqg7C55hSoeqF06/vfLSnEE
 QNqW2CNWGaKWP6Eg7EEFjTvuwumr3cOTowW/pfD8RdWw0HAHG/DAyZYeq w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="318009893"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="318009893"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 10:18:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="798135767"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="798135767"
Received: from barumuga-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.26])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 10:18:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230221230227.6244-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
 <20230221230227.6244-3-ville.syrjala@linux.intel.com>
Date: Tue, 28 Feb 2023 20:18:33 +0200
Message-ID: <878rghy7pi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 02/22] drm/i915: Fix SKL DDI A digital
 port .connected()
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

On Wed, 22 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> SKL doesn't have any north DE hotplug stuff. Currently we're
> trying to read DDI A live state from the BDW north DE bit,
> instead of the approproate south DE bit. Fix it.
>
> And for good measure clear the pointer to the north hpd
> pin array, so that we'll actually notice if some other
> place is also using the wrong thing.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Finally found the clue in bspec for skl+, "This field is unused in
projects that have a PCH."

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++----
>  drivers/gpu/drm/i915/i915_irq.c          |  2 ++
>  2 files changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 40b5c93f9223..1a042f3658eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4508,15 +4508,18 @@ void intel_ddi_init(struct drm_i915_private *dev_=
priv, enum port port)
>  		if (intel_phy_is_tc(dev_priv, phy))
>  			dig_port->connected =3D intel_tc_port_connected;
>  		else
>  			dig_port->connected =3D lpt_digital_port_connected;
> -	} else if (DISPLAY_VER(dev_priv) >=3D 8) {
> -		if (port =3D=3D PORT_A || IS_GEMINILAKE(dev_priv) ||
> -		    IS_BROXTON(dev_priv))
> +	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> +		dig_port->connected =3D bdw_digital_port_connected;
> +	} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
> +		dig_port->connected =3D lpt_digital_port_connected;
> +	} else if (IS_BROADWELL(dev_priv)) {
> +		if (port =3D=3D PORT_A)
>  			dig_port->connected =3D bdw_digital_port_connected;
>  		else
>  			dig_port->connected =3D lpt_digital_port_connected;
> -	} else {
> +	} else if (IS_HASWELL(dev_priv)) {
>  		if (port =3D=3D PORT_A)
>  			dig_port->connected =3D hsw_digital_port_connected;
>  		else
>  			dig_port->connected =3D lpt_digital_port_connected;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index b024a3a7ca19..13ada0916c2a 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -197,8 +197,10 @@ static void intel_hpd_init_pins(struct drm_i915_priv=
ate *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >=3D 11)
>  		hpd->hpd =3D hpd_gen11;
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		hpd->hpd =3D hpd_bxt;
> +	else if (DISPLAY_VER(dev_priv) =3D=3D 9)
> +		hpd->hpd =3D NULL; /* no north HPD on SKL */
>  	else if (DISPLAY_VER(dev_priv) >=3D 8)
>  		hpd->hpd =3D hpd_bdw;
>  	else if (DISPLAY_VER(dev_priv) >=3D 7)
>  		hpd->hpd =3D hpd_ivb;

--=20
Jani Nikula, Intel Open Source Graphics Center
