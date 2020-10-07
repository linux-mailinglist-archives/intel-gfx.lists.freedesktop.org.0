Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC12286B5F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 01:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7926E9AE;
	Wed,  7 Oct 2020 23:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C3E6E9AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 23:11:47 +0000 (UTC)
IronPort-SDR: LghDcpbWYdsRpfYp1hOjRVO8+An/rA2OpFWny8aeDmj6TxBbuzDrF+KMXQc4fq2qsypII2o9R0
 CaQ1YLnO2WdQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165234675"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="165234675"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:11:46 -0700
IronPort-SDR: Z68w+i1P6B7Kf9vOkaDNro11grCGuaZMcR6674gibhsfgwFusMGnxtfjZ6ZrtvuIDWL6JONSwL
 O8mdpKrsNl6w==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="311973587"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 16:11:46 -0700
Date: Wed, 7 Oct 2020 16:11:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007231145.ufu23osa6minqeyl@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-8-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 07/20] drm/i915: Use AUX_CH_USBCn for the
 RKL VBT AUX CH setup
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 06, 2020 at 05:33:36PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>As with the VBT DVO port, RKL uses PHY based mapping for the
>VBT AUX CH. Adjust the code to use the new AUX_USBCn names
>and add a comment to explain the situation.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
> 1 file changed, 6 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index 179029c3d3d5..77c86f51c36d 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2636,10 +2636,14 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915=
_private *dev_priv,
> 		aux_ch =3D AUX_CH_B;
> 		break;
> 	case DP_AUX_C:
>-		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_D : AUX_CH_C;
>+		/*
>+		 * RKL VBT uses PHY based mapping. Combo PHYs A,B,C,D
>+		 * map to DDI A,B,TC1,TC2 respectively.

This will conflict with DG1 that was just merged and use the same
mapping as RKL. Change here LGTM.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+		 */
>+		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_USBC1 : AUX_CH_C;
> 		break;
> 	case DP_AUX_D:
>-		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_E : AUX_CH_D;
>+		aux_ch =3D IS_ROCKETLAKE(dev_priv) ? AUX_CH_USBC2 : AUX_CH_D;
> 		break;
> 	case DP_AUX_E:
> 		aux_ch =3D AUX_CH_E;
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
