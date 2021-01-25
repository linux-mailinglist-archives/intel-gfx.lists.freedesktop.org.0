Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 930A4302AA6
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 19:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AC06E11C;
	Mon, 25 Jan 2021 18:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E44A6E0C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 18:47:42 +0000 (UTC)
IronPort-SDR: 27SRd7cayC0e953tw++7Yv5+vquQ68NvOlHX2Ye0MaxTRxx5i2hP6yQiKq2oKyV6+hlWMKFkdg
 0OItcfEKQsig==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="167456721"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="167456721"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 10:47:24 -0800
IronPort-SDR: F9Hh0CSItbqmx/seFnUMZgdZPlBPasOjG5osndtN7tyEADl2p+fsyiWH2cf0Emqktu8XcRouvr
 /yIotx+kON1g==
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="402452039"
Received: from vlesnikx-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.223])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 10:47:21 -0800
Date: Mon, 25 Jan 2021 10:47:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210125184717.tmhmkejsrzljzndr@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210125140753.347998-1-aditya.swarup@intel.com>
 <20210125140753.347998-8-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140753.347998-8-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/adl_s: Initialize display
 for ADL-S
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 06:07:50AM -0800, Aditya Swarup wrote:
>Initialize display outputs for ADL-S. ADL-S has 5 display
>outputs -> 1 eDP, 2 HDMI and 2 DP++ outputs.
>
>v2:
>- Use PORT_TCx instead of PORT_D,E.. to stay consistent
>  with other platforms.(mdroper)
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
> 1 file changed, 7 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 83ac0a7a59f0..eaec5cd1a144 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -13897,7 +13897,13 @@ static void intel_setup_outputs(struct drm_i915_p=
rivate *dev_priv)
> 	if (!HAS_DISPLAY(dev_priv))
> 		return;
>
>-	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
>+	if (IS_ALDERLAKE_S(dev_priv)) {
>+		intel_ddi_init(dev_priv, PORT_A);
>+		intel_ddi_init(dev_priv, PORT_TC1);
>+		intel_ddi_init(dev_priv, PORT_TC2);
>+		intel_ddi_init(dev_priv, PORT_TC3);
>+		intel_ddi_init(dev_priv, PORT_TC4);
>+	} else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) {
> 		intel_ddi_init(dev_priv, PORT_A);
> 		intel_ddi_init(dev_priv, PORT_B);
> 		intel_ddi_init(dev_priv, PORT_TC1);
>-- =

>2.27.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
