Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5CD3BDF1F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 23:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0716E5BF;
	Tue,  6 Jul 2021 21:47:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7170A6E5BD;
 Tue,  6 Jul 2021 21:47:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273045419"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="273045419"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 14:47:49 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; d="scan'208";a="645181699"
Received: from pbarbago-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.131.218])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2021 14:47:48 -0700
Date: Tue, 6 Jul 2021 14:47:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210706214748.q3pugg2q7mdtjdm4@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-34-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701202427.1547543-34-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 33/53] drm/i915/dg2: Add fake PCH
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 01, 2021 at 01:24:07PM -0700, Matt Roper wrote:
>As with DG1, DG2 has an ICL-style south display interface provided on
>the same PCI device.  Add a fake PCH to ensure DG2 takes the appropriate
>codepaths for south display handling.
>
>Bspec: 54871, 50062, 49961, 53673
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi


>---
> drivers/gpu/drm/i915/i915_irq.c  | 2 +-
> drivers/gpu/drm/i915/intel_pch.c | 3 +++
> drivers/gpu/drm/i915/intel_pch.h | 2 ++
> 3 files changed, 6 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_i=
rq.c
>index 9d47ffa39093..34a0d49e760e 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -208,7 +208,7 @@ static void intel_hpd_init_pins(struct drm_i915_privat=
e *dev_priv)
> 	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
> 		return;
>
>-	if (HAS_PCH_DG1(dev_priv))
>+	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> 		hpd->pch_hpd =3D hpd_sde_dg1;
> 	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> 		hpd->pch_hpd =3D hpd_icp;
>diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel=
_pch.c
>index 4e92ae19189e..cc44164e242b 100644
>--- a/drivers/gpu/drm/i915/intel_pch.c
>+++ b/drivers/gpu/drm/i915/intel_pch.c
>@@ -211,6 +211,9 @@ void intel_detect_pch(struct drm_i915_private *dev_pri=
v)
> 	if (IS_DG1(dev_priv)) {
> 		dev_priv->pch_type =3D PCH_DG1;
> 		return;
>+	} else if (IS_DG2(dev_priv)) {
>+		dev_priv->pch_type =3D PCH_DG2;
>+		return;
> 	}
>
> 	/*
>diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel=
_pch.h
>index e2f3f30c6445..7c0d83d292dc 100644
>--- a/drivers/gpu/drm/i915/intel_pch.h
>+++ b/drivers/gpu/drm/i915/intel_pch.h
>@@ -30,6 +30,7 @@ enum intel_pch {
>
> 	/* Fake PCHs, functionality handled on the same PCI dev */
> 	PCH_DG1 =3D 1024,
>+	PCH_DG2,
> };
>
> #define INTEL_PCH_DEVICE_ID_MASK		0xff80
>@@ -62,6 +63,7 @@ enum intel_pch {
>
> #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
> #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>+#define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG2)
> #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ADP)
> #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_DG1)
> #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_JSP)
>-- =

>2.25.4
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
