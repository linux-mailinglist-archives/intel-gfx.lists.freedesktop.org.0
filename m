Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B91AE5F0F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 10:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A92F10E1F2;
	Tue, 24 Jun 2025 08:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qyhp+lpG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299C610E1F2;
 Tue, 24 Jun 2025 08:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750753530; x=1782289530;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8prh5A7s+CF/HINFpH1xCKow4LRTm96LidsNXBFmnKQ=;
 b=Qyhp+lpGSYjgzEhM756gexKCPKzVSwgnkd62Fyqb0xDJSYIG+2mol4X5
 Y6Ig128DRAs00EWnXcB1yhS1LWs4nrOV1QrpHyG99Iv2jaAAq8guhweDF
 fhwVL8K30uFbC0Mrprq85TZQ6XVV8bidcowL0IWuAn+zJvqhDTCRhgV/m
 cQiPPuR6nW5IssaJAbBM2UinIyCsgdGJNqMURML/U+h1ALcleZnMmn1e0
 dg7S7Kt/8uErIi4bXV6cSRU/t7nMp8X8oC+Hiydrn0w1D0CNV0m/9VNBP
 P+lW7xX130jbmVKWNIYEJZg5eWc5sy4NYfL+aFjXoSTa44UZzjYPx2SRE A==;
X-CSE-ConnectionGUID: JWeWj0bLTpGB1rAlSqeENA==
X-CSE-MsgGUID: fpFO9CxsTay2bCRrPihpag==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="56764675"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="56764675"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 01:25:05 -0700
X-CSE-ConnectionGUID: zPX/wicARFmU6J3kZDqZVg==
X-CSE-MsgGUID: m8CbnIgCRwC+KCAc/Ac6QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="151986907"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 01:25:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v7 12/18] drm/i915/dsb: Add pipedmc dc balance
 enable/disable
In-Reply-To: <20250624074948.671761-13-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250624074948.671761-13-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 24 Jun 2025 11:25:00 +0300
Message-ID: <0f88bf4afbbe2bc08574e7fa08d1cfcb4141fac6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Jun 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> w=
rote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add function to control DC balance enable/disable bit via DSB.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc.h |  5 +++++
>  2 files changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index 4572e87d9bfa..1726c0ab18c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1607,3 +1607,21 @@ void intel_pipedmc_irq_handler(struct intel_displa=
y *display, enum pipe pipe)
>  		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
>  			crtc->base.base.id, crtc->base.name, tmp);
>  }
> +
> +void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *=
crtc)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe),
> +			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
> +}
> +
> +void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc =
*crtc)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe), 0);
> +}
> +
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i=
915/display/intel_dmc.h
> index 7820fa5aed3e..d45d51bedb87 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -8,11 +8,14 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> +

Please run checkpatch before sending.

>  enum pipe;
> +struct intel_crtc;
>  struct drm_printer;
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_dmc_snapshot;
> +struct intel_dsb;
>=20=20
>  void intel_dmc_init(struct intel_display *display);
>  void intel_dmc_load_program(struct intel_display *display);
> @@ -36,5 +39,7 @@ void intel_dmc_update_dc6_allowed_count(struct intel_di=
splay *display, bool star
>  void assert_main_dmc_loaded(struct intel_display *display);
>=20=20
>  void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe =
pipe);
> +void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *=
crtc);
> +void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc =
*crtc);
>=20=20
>  #endif /* __INTEL_DMC_H__ */

--=20
Jani Nikula, Intel
