Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A9B34AC85
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F85D6F400;
	Fri, 26 Mar 2021 16:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA4F46F400
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:30:30 +0000 (UTC)
IronPort-SDR: rrJIs9UsvoJq2OMw4cTxh+HVumRA+IMLuNJAlr6CShAOe/DV39x4hQ5ZZk7zfkNzZb7L6LfAKM
 xbzz81Rv7Bkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="178725343"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="178725343"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:30:29 -0700
IronPort-SDR: 57Cbfizjb5ZGioFPFDblxYpckeos5pR5qK3mHO16iCTxU+uOGf2S0YIchi8UuKv9skeFxs9m7p
 sSTIhSMrresw==
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="416602060"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:30:27 -0700
Date: Fri, 26 Mar 2021 18:30:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Jose Souza <jose.souza@intel.com>
Message-ID: <20210326163023.GM2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-28-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-28-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 27/50] drm/i915/adl_p: Handle TC cold
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:06:57AM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> On ADL-P TC cold is exited and blocked when legacy aux is powered,
> that is exacly the same of what ICL need for static TC ports.
> =

> TODO: When a TBT hub or monitor is connected it will cause TBT and
> legacy aux to be powered at the same time, hopefully this will not
> cause any issues but if it do, some rework will be needed.

This needs Jose's patch to disable the assert in
intel_tc_port_reset_mode().

> =

> BSpec: 55480
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 20cfb86c0174..3e407d0bf363 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -550,7 +550,8 @@ static void icl_tc_port_assert_ref_held(struct drm_i9=
15_private *dev_priv,
>  	if (drm_WARN_ON(&dev_priv->drm, !dig_port))
>  		return;
>  =

> -	if (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port)
> +	if (IS_ALDERLAKE_P(dev_priv) ||
> +	   (IS_DISPLAY_VER(dev_priv, 11) && dig_port->tc_legacy_port))
>  		return;
>  =

>  	drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
