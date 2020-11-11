Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2142AFA3E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Nov 2020 22:15:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D069089C99;
	Wed, 11 Nov 2020 21:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B289B89C99
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Nov 2020 21:15:12 +0000 (UTC)
IronPort-SDR: A86ioujWzRulXkOrPRbwbjcFIYjL4rfLLqWOhcHuHI1ROH6jCeepQxsredjKFuTVC52u8iJ/tV
 qA+T4kxnbSTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="157998689"
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="157998689"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 13:15:12 -0800
IronPort-SDR: jmpwbiUTAqWt0awM3DHa80B7K1CsAnHZnDsUcGvR7PoXY1APDwQpj0bCrNwoyEIxTrcB8RAjJ6
 HWp20T6stbJw==
X-IronPort-AV: E=Sophos;i="5.77,470,1596524400"; d="scan'208";a="308595792"
Received: from cmarti5-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.99.40])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2020 13:15:11 -0800
Date: Wed, 11 Nov 2020 13:15:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201111211511.76fiob2akne2gvvt@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20201111162408.98002-1-jose.souza@intel.com>
 <20201111162408.98002-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201111162408.98002-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Make
 get_allowed_dc_mask().max_dc set a chain of if and elses
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

On Wed, Nov 11, 2020 at 08:24:08AM -0800, Jose Souza wrote:
>Just following what we do in many other places, DG1 is a exception so
>move it to the top instead of add it inside of INTEL_GEN(dev_priv) >=3D 12.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> .../gpu/drm/i915/display/intel_display_power.c | 18 +++++++-----------
> 1 file changed, 7 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 48d41a43fbb2..31cb9ac5c489 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -4492,20 +4492,16 @@ static u32 get_allowed_dc_mask(const struct drm_i9=
15_private *dev_priv,
> 	int requested_dc;
> 	int max_dc;
>
>-	if (INTEL_GEN(dev_priv) >=3D 12) {
>-		if (IS_DG1(dev_priv))
>-			max_dc =3D 3;
>-		else
>-			max_dc =3D 4;
>-	} else if (IS_GEN(dev_priv, 11)) {
>+	if (IS_DG1(dev_priv))
>+		max_dc =3D 3;
>+	else if (INTEL_GEN(dev_priv) >=3D 12)
>+		max_dc =3D 4;
>+	else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEN9_BC(dev_priv))
> 		max_dc =3D 2;
>-	} else if (IS_GEN(dev_priv, 10) || IS_GEN9_BC(dev_priv)) {
>-		max_dc =3D 2;
>-	} else if (IS_GEN9_LP(dev_priv)) {
>+	else if (IS_GEN9_LP(dev_priv))
> 		max_dc =3D 1;
>-	} else {
>+	else
> 		max_dc =3D 0;
>-	}
>
> 	/*
> 	 * DC9 has a separate HW flow from the rest of the DC states,
>-- =

>2.29.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
