Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6712AFA38
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 22:12:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFBE89C55;
	Wed, 11 Nov 2020 21:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF8A89C55
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 21:12:33 +0000 (UTC)
IronPort-SDR: MfH4x9CEwXuS0N3dD0FwVgqc71JL+fIC4GAXJeDUVOY0yKXFVWylPOyRbzO5pZt0I5edeHMR4y
 ddBu6uFm8XsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="157998381"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="157998381"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 13:12:33 -0800
IronPort-SDR: WsOVV+yQAYi+6bTEx+nGl3fJQ0IiSNMfMXCrvr8njQm3yZnZ4JJv2uO2tu4CT16R+ogrENPpNb
 7C9VD0c9dbLQ==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="541954390"
Received: from cmarti5-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.99.40])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 13:12:33 -0800
Date: Wed, 11 Nov 2020 13:12:32 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201111211232.btab3cuyde6elhbq@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201111162408.98002-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201111162408.98002-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Group DC9 mask set
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

On Wed, Nov 11, 2020 at 08:24:07AM -0800, Jose Souza wrote:
>DC9 has a separate HW flow from the rest of the DC states and it is
>available in GEN9 LP platforms and on GEN11 and newer, so here
>moving the assignment of the mask to a single conditional block to
>simplifly code.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_power.c | 18 ++++++++----------
> 1 file changed, 8 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 689922480661..48d41a43fbb2 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -4497,26 +4497,24 @@ static u32 get_allowed_dc_mask(const struct drm_i9=
15_private *dev_priv,
> 			max_dc =3D 3;
> 		else
> 			max_dc =3D 4;
>-		/*
>-		 * DC9 has a separate HW flow from the rest of the DC states,
>-		 * not depending on the DMC firmware. It's needed by system
>-		 * suspend/resume, so allow it unconditionally.
>-		 */
>-		mask =3D DC_STATE_EN_DC9;
> 	} else if (IS_GEN(dev_priv, 11)) {
> 		max_dc =3D 2;
>-		mask =3D DC_STATE_EN_DC9;
> 	} else if (IS_GEN(dev_priv, 10) || IS_GEN9_BC(dev_priv)) {
> 		max_dc =3D 2;
>-		mask =3D 0;
> 	} else if (IS_GEN9_LP(dev_priv)) {
> 		max_dc =3D 1;
>-		mask =3D DC_STATE_EN_DC9;
> 	} else {
> 		max_dc =3D 0;
>-		mask =3D 0;
> 	}
>
>+	/*
>+	 * DC9 has a separate HW flow from the rest of the DC states,
>+	 * not depending on the DMC firmware. It's needed by system
>+	 * suspend/resume, so allow it unconditionally.
>+	 */
>+	mask =3D IS_GEN9_LP(dev_priv) || INTEL_GEN(dev_priv) >=3D 11 ?
>+	       DC_STATE_EN_DC9 : 0;

humn... these 2 conditions here in a ternary operator is something that
will probably get even harder to read if we have to add more conditions.
Maybe just move the default value to the declaration (mask =3D 0) and here
you do:

if (IS_GEN9_LP(dev_priv) || INTEL_GEN(dev_priv) >=3D 11)
	mask =3D DC_STATE_EN_DC9;

?

Up to you. Change looks correct


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+
> 	if (!dev_priv->params.disable_power_well)
> 		max_dc =3D 0;
>
>-- =

>2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
