Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AD02C452A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D58B6EA33;
	Wed, 25 Nov 2020 16:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6766EA3D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:29:07 +0000 (UTC)
IronPort-SDR: b34BtGFoEwnyMmcLciYSpyQon66NckvFvlrUtvBXKnGSG85cuGbG2y3DQeh49Rk3yb4Mcr4vIk
 N0wviyU2S0OQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="190301852"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="190301852"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:29:07 -0800
IronPort-SDR: TQZKm3etrXx8MeJHZ1mjwXuLIYjsFnEf12hNAAFeWqMmewfZz5ZaUYP4Baq0Lm4Vl2Mes9M7JC
 R+fv5r0bn1aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="313707031"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 25 Nov 2020 08:29:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:29:04 +0200
Date: Wed, 25 Nov 2020 18:29:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125162904.GP6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-5-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-5-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 04/12] drm/i915/display: Attach content type
 property for LSPCON
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

On Tue, Nov 03, 2020 at 08:58:26PM +0530, Uma Shankar wrote:
> Content type is supported on HDMI sink devices. Attached the
> property for the same for LSPCON based devices.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 0ce3204473fa..79a49d1cbb21 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6736,6 +6736,7 @@ intel_dp_connector_register(struct drm_connector *c=
onnector)
>  			drm_object_attach_property(&connector->base,
>  						   connector->dev->mode_config.hdr_output_metadata_property,
>  						   0);
> +		drm_connector_attach_content_type_property(connector);

Doesn't look like you're populating the infoframe until patch 6, so this
looks a bit early. Should probably suck in the infoframe part into this
patch too.

>  	}
>  =

>  	return ret;
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
