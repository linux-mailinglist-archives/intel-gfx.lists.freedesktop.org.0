Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF9314C2A1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 23:12:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B98A488A36;
	Tue, 28 Jan 2020 22:12:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C436E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 22:12:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 14:12:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="376577918"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 28 Jan 2020 14:12:39 -0800
Date: Tue, 28 Jan 2020 14:12:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200128221239.GF22783@mdroper-desk1.amr.corp.intel.com>
References: <20200124225922.644673-1-matthew.d.roper@intel.com>
 <20200127205057.831198-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127205057.831198-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [RFC v3] drm/i915/tgl: Suppress DC5/DC6 around DSB
 usage
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 27, 2020 at 12:50:57PM -0800, Matt Roper wrote:
> There are reports of unexpected DSB busy/timeout happening after IGT
> tests finish running that apparently go away when the DMC firmware isn't
> loaded.  The bspec doesn't say anything specific about DSB needing us to
> exit DC5/DC6, but let's try adding DSB usage to the "DC off" list and
> see if that changes the behavior.
> =

> v2: Include intel_wakeref.h from intel_dsb.h to ensure the header stays
>     self-contained.  (CI)
> =

> v3: Move intel_display_power_get() call earlier to cover cases where
>     dsb->refcount is already non-zero and we return early.  Also don't
>     drop the wakeref at the end of the 'get' routine; wait until the
>     'put' for that, even in error conditions.  (Swati)
> =

> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Reviewed-by(v1): Jos=E9 Roberto de Souza <jose.souza@intel.com>

Sounds like this did not fix DSB failures being seen, so DC states don't
appear to be the culprit; we can disregard this patch.  More
investigation will be necessary to track down the true root cause.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c |  3 +++
>  drivers/gpu/drm/i915/display/intel_display_power.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dsb.c           | 10 ++++------
>  drivers/gpu/drm/i915/display/intel_dsb.h           |  2 ++
>  4 files changed, 10 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 761be9fcaf10..99e6afda2db9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -150,6 +150,8 @@ intel_display_power_domain_str(enum intel_display_pow=
er_domain domain)
>  		return "GT_IRQ";
>  	case POWER_DOMAIN_DPLL_DC_OFF:
>  		return "DPLL_DC_OFF";
> +	case POWER_DOMAIN_DSB:
> +		return "DSB";
>  	default:
>  		MISSING_CASE(domain);
>  		return "?";
> @@ -2679,6 +2681,7 @@ void intel_display_power_put(struct drm_i915_privat=
e *dev_priv,
>  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
>  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
>  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> +	BIT_ULL(POWER_DOMAIN_DSB) |			\
>  	BIT_ULL(POWER_DOMAIN_INIT))
>  =

>  #define TGL_DDI_IO_D_TC1_POWER_DOMAINS (	\
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 2608a65af7fa..5e8136c65e02 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -77,6 +77,7 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_GT_IRQ,
>  	POWER_DOMAIN_DPLL_DC_OFF,
>  	POWER_DOMAIN_INIT,
> +	POWER_DOMAIN_DSB,
>  =

>  	POWER_DOMAIN_NUM,
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index ada006a690df..b47c31fa2551 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -103,16 +103,15 @@ intel_dsb_get(struct intel_crtc *crtc)
>  	struct drm_i915_gem_object *obj;
>  	struct i915_vma *vma;
>  	u32 *buf;
> -	intel_wakeref_t wakeref;
>  =

>  	if (!HAS_DSB(i915))
>  		return dsb;
>  =

> +	dsb->wakeref =3D intel_display_power_get(i915, POWER_DOMAIN_DSB);
> +
>  	if (dsb->refcount++ !=3D 0)
>  		return dsb;
>  =

> -	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> -
>  	obj =3D i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
>  	if (IS_ERR(obj)) {
>  		DRM_ERROR("Gem object creation failed\n");
> @@ -143,9 +142,6 @@ intel_dsb_get(struct intel_crtc *crtc)
>  	 * corresponding intel_dsb_put(): the important error message will
>  	 * already be logged above.
>  	 */
> -
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> -
>  	return dsb;
>  }
>  =

> @@ -174,6 +170,8 @@ void intel_dsb_put(struct intel_dsb *dsb)
>  		dsb->free_pos =3D 0;
>  		dsb->ins_start_offset =3D 0;
>  	}
> +
> +	intel_display_power_put(i915, POWER_DOMAIN_DSB, dsb->wakeref);
>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i=
915/display/intel_dsb.h
> index 395ef9ce558e..ffb5afa935b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>  =

>  #include "i915_reg.h"
> +#include "intel_wakeref.h"
>  =

>  struct intel_crtc;
>  struct i915_vma;
> @@ -26,6 +27,7 @@ struct intel_dsb {
>  	enum dsb_id id;
>  	u32 *cmd_buf;
>  	struct i915_vma *vma;
> +	intel_wakeref_t wakeref;
>  =

>  	/*
>  	 * free_pos will point the first free entry position
> -- =

> 2.23.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
