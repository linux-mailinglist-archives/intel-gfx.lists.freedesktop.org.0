Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B9430293A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 18:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E140C6E0C5;
	Mon, 25 Jan 2021 17:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E646E0C5
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 17:46:18 +0000 (UTC)
IronPort-SDR: L6LchZhUfQ7FyDiNEf2VULUBYGnT529vqxbgBhXrRNGNACPAVU0r1vKc8UoFaDMUde8VZQQ7Tg
 TKGyWoq2w/lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="166869337"
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="166869337"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 09:46:18 -0800
IronPort-SDR: jMoupYM5vkHuyAEik4vqGqFIj+sF47rs2Z1zWP/05QB2+LVeyyMxSLs78K/rQIOnIYvDOphpdC
 /lDbsZyN8TNQ==
X-IronPort-AV: E=Sophos;i="5.79,374,1602572400"; d="scan'208";a="472409572"
Received: from vlesnikx-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.212.30.223])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 09:46:15 -0800
Date: Mon, 25 Jan 2021 09:46:13 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210125174613.qjmitixo2s7hhrdb@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210125140753.347998-1-aditya.swarup@intel.com>
 <20210125140753.347998-4-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140753.347998-4-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915/adl_s: Add Interrupt Support
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

On Mon, Jan 25, 2021 at 06:07:46AM -0800, Aditya Swarup wrote:
>From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>
>ADLS follows ICP/TGP like interrupts.
>
>v2: Use "INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP" of hpd_icp (Lucas)
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I think the commit message is a little too short... this is only adding
the hpd pins, but apparently it's the only thing needed to differentiate
irq-wise.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/i915_irq.c | 3 +--
> 1 file changed, 1 insertion(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 33019cf0e630..6568e7e9fe2a 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -209,8 +209,7 @@ static void intel_hpd_init_pins(struct drm_i915_privat=
e *dev_priv)
>
> 	if (HAS_PCH_DG1(dev_priv))
> 		hpd->pch_hpd =3D hpd_sde_dg1;
>-	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
>-		 HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
>+	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> 		hpd->pch_hpd =3D hpd_icp;
> 	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> 		hpd->pch_hpd =3D hpd_spt;
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
