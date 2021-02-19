Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4EC31FC10
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 16:36:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 713FE6E046;
	Fri, 19 Feb 2021 15:36:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBA56E046
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 15:36:08 +0000 (UTC)
IronPort-SDR: W0msNk0lCUvcQsOX+bVBNMlQcjF+fdsBz5Ek9CncPycOHX6cAtcBdDZ336K/vxmgUKZMmEemYQ
 teeHBnpBwoYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="268726742"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="268726742"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 07:36:08 -0800
IronPort-SDR: MOAVCPCyH8QisAXyxWJeognSo60P+vtbtbBlSac02Q2PYHdUW/SPvlJ3n0RXWw29a4EAwPecuj
 Bb7Wa++c+ctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="387006338"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 19 Feb 2021 07:36:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Feb 2021 17:36:05 +0200
Date: Fri, 19 Feb 2021 17:36:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gary C Wang <gary.c.wang@intel.com>
Message-ID: <YC/a5VtNqYRawIcJ@intel.com>
References: <20210219062539.19282-1-gary.c.wang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219062539.19282-1-gary.c.wang@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: enhance legacy HPD disconnection
 flow for 4K pipe compute in GLK
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
Cc: intel-gfx@lists.freedesktop.org, Gordon Sylin <gordon.sylin@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 19, 2021 at 02:25:39PM +0800, Gary C Wang wrote:
> HDMI PHY is not available to use when its HDMI disaply plug-in, and power=
-off
> then power-on as soon as getting a hotplug. In above cases where there's =
a HDMI
> connector physically connected but it can't be used by GLK with 4K pipe t=
hen blank
> screen (lacking of edid-update & mode-probing) then need return false, si=
nce the
> rest of the driver should pretty much treat the port as disconnected.

HPD live status has been notoriously unreliable on HDMI,
hence we don't use it. Dunno if we could start to trust it on
GLK.

> =

> As previous result, handshaking through is required around connect and di=
sconnect.
> Otherwise it would be in a inconsistent state as port is disconnected but=
 with a
> valid HDMI type.

Not sure what handshaking you're talking about. HDMI detection
itself only uses GMBUS so it has no relationship to any PHY stuff.

Anyway this looks a bit like duct tape that happens to avoid some
unknown sequence of events that cause a black screen. I suspect
it may have something to do with the scrambling/bit clock ratio
stuff. I'll comment on the bug a bit...

> =

> Also setting it to return HDMI disconnect for any future calls to
> intel_digital_port_connected(), this way we don't need to check if port i=
s marked
> as safe everytime.
> =

> References: https://gitlab.freedesktop.org/drm/intel/-/issues/3092
> Test-steps: setup HDMI 4K@60Hz in GLK then to power monitor off then on t=
o get display
> recovery correctly
> =

> Cc: Gordon Sylin <gordon.sylin@intel.com>
> Tested-by: Gary C Wang <gary.c.wang@intel.com>
> Reviewed-by: Gordon Sylin <gordon.sylin@intel.com>
> Signed-off-by: Gary C Wang <gary.c.wang@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 7f384f259fc8..039cdbfe71a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2705,7 +2705,7 @@ intel_hdmi_detect(struct drm_connector *connector, =
bool force)
>  =

>  	wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11 &&
> +	if ((INTEL_GEN(dev_priv) >=3D 11 || IS_GEMINILAKE(dev_priv)) &&
>  	    !intel_digital_port_connected(encoder))
>  		goto out;
>  =

> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
