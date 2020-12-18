Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0612DDCED
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 03:31:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2041189807;
	Fri, 18 Dec 2020 02:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8252789807
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 02:31:43 +0000 (UTC)
IronPort-SDR: VHLak7dlovT7+UL15VAarWoA+q0c1bW9/C4uEbbFaT/uUUjkDtOBrQMb4yI7f76Y+RecXDxlxH
 6GZWl56ntZrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="174597229"
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="174597229"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 18:31:36 -0800
IronPort-SDR: 9RbAkLXH7uUFbqX4kNuUaNL4b1VqUfT5obWTtoMMU/hSRcHiV56ACfxtIz0spvf2PU9DS4Jlag
 u/Yij8fvYMvA==
X-IronPort-AV: E=Sophos;i="5.78,428,1599548400"; d="scan'208";a="413716246"
Received: from ecahill-mobl1.ger.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.116.240])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2020 18:31:34 -0800
Date: Thu, 17 Dec 2020 18:31:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201218023129.oxuzjlbxzqg7twpl@ldmartin-desk1>
References: <20201203072359.156682-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201203072359.156682-1-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/tgl: Fix REVID macros for
 TGL to fetch correct stepping
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

Both patches applied. Thanks!

Jani, maybe now you can rebase your patch to get rid of the extern ?


Lucas De Marchi

On Wed, Dec 02, 2020 at 11:23:58PM -0800, Aditya Swarup wrote:
>Fix TGL REVID macros to fetch correct display/gt stepping based
>on SOC rev id from INTEL_REVID() macro. Previously, we were just
>returning the first element of the revid array instead of using
>the correct index based on SOC rev id.
>
>Fixes: ("drm/i915/tgl: Fix stepping WA matching")
>Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
>Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/i915_drv.h | 12 ++++++------
> 1 file changed, 6 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index fc1090c6889c..2e2149c9a2f4 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -1580,9 +1580,9 @@ static inline const struct i915_rev_steppings *
> tgl_revids_get(struct drm_i915_private *dev_priv)
> {
> 	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv))
>-		return tgl_uy_revids;
>+		return &tgl_uy_revids[INTEL_REVID(dev_priv)];
> 	else
>-		return tgl_revids;
>+		return &tgl_revids[INTEL_REVID(dev_priv)];
> }
>
> #define IS_TGL_DISP_REVID(p, since, until) \
>@@ -1592,14 +1592,14 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
>
> #define IS_TGL_UY_GT_REVID(p, since, until) \
> 	((IS_TGL_U(p) || IS_TGL_Y(p)) && \
>-	 tgl_uy_revids->gt_stepping >=3D (since) && \
>-	 tgl_uy_revids->gt_stepping <=3D (until))
>+	 tgl_uy_revids[INTEL_REVID(p)].gt_stepping >=3D (since) && \
>+	 tgl_uy_revids[INTEL_REVID(p)].gt_stepping <=3D (until))
>
> #define IS_TGL_GT_REVID(p, since, until) \
> 	(IS_TIGERLAKE(p) && \
> 	 !(IS_TGL_U(p) || IS_TGL_Y(p)) && \
>-	 tgl_revids->gt_stepping >=3D (since) && \
>-	 tgl_revids->gt_stepping <=3D (until))
>+	 tgl_revids[INTEL_REVID(p)].gt_stepping >=3D (since) && \
>+	 tgl_revids[INTEL_REVID(p)].gt_stepping <=3D (until))
>
> #define RKL_REVID_A0		0x0
> #define RKL_REVID_B0		0x1
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
