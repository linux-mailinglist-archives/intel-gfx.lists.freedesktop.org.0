Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E627D36D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 18:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A030C6E530;
	Tue, 29 Sep 2020 16:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B826E524
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 16:14:41 +0000 (UTC)
IronPort-SDR: 9fwzpQj7LqX4c+EdJ9s7rFjGwLnhjdRE9a7XCM9rvC9XA+hK5rQvq58gXYKVkUV3jr9NMrH6LH
 dGikPDiUOYtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="163101222"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="163101222"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 09:14:20 -0700
IronPort-SDR: 9qJVvHLdZNsRIEhINvv8nmGwYdXYrklbzG8ogOK0eOJpINe3jzBe4M10l44JD4dJ84G1mvNY5U
 SdlFH2F1A4eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="324722152"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 29 Sep 2020 09:14:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Sep 2020 19:14:17 +0300
Date: Tue, 29 Sep 2020 19:14:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200929161417.GA6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-4-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914210047.11972-4-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 03/11] drm/i915/display: Attach HDR property
 for capable Gen9 devices
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 15, 2020 at 02:30:39AM +0530, Uma Shankar wrote:
> Attach HDR property for Gen9 devices with MCA LSPCON
> chips.
> =

> v2: Cleaned HDR property attachment logic based on capability
> as per Jani Nikula's suggestion.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 5 +++++
>  1 file changed, 5 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 5e2d7ca1d20f..fd05210f4405 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -626,6 +626,11 @@ bool lspcon_init(struct intel_digital_port *dig_port)
>  =

>  	lspcon_detect_hdr_capability(lspcon);
>  =

> +	if (lspcon->hdr_supported)
> +		drm_object_attach_property(&connector->base,
> +					   connector->dev->mode_config.hdr_output_metadata_property,
> +					   0);

Hmm. This hdr capability detection is going to cause us extra grief
when looking at Kai-Heng's patch to defer lspcon detection until
hotplug time. Not quite sure what to do about that though.

> +
>  	connector->ycbcr_420_allowed =3D true;
>  	lspcon->active =3D true;
>  	DRM_DEBUG_KMS("Success: LSPCON init\n");
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
