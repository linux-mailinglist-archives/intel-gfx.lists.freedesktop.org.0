Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D299681ED
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 10:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C0E10E24C;
	Mon,  2 Sep 2024 08:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XNYjcEgk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C91A10E24C
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 08:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725265908; x=1756801908;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7fLe9e1k+jRW4bpTAIyXPiM228lTQpHrydXpopu04Cc=;
 b=XNYjcEgkJfJiEyRrm1xGtex/DtiN0d5YpnKiYq/7K3VZ2simYl/kI7aR
 VqUFEM/8DSm8v4I3xekGR4CLtAF3lPJ6Bh0Fz6HIv7kXus3UgQVIQYgRd
 8zl8W3I2jX9auo7uNtwW6MUEyf58DUu3YwbpovY8c9B09xo5jseqnpuuF
 nwfoqkhxmvDhtM3dRbSd7GgAgWbl95EMPAOL+41hH9pdomWzhXdSWTdrO
 SCdqcTeRaXWapT/y0Y3svW29LrS8BDdpk54FBoHA0yEBepc0GVh/WqXYm
 z2W1Esje9rukAWbJshd7gu+FGfniR1ctatKhfm72rVWz8E5vlSwWbOMZ5 g==;
X-CSE-ConnectionGUID: kGW7iSGxSwSgKjymUCppdw==
X-CSE-MsgGUID: XJDniMwoRDKjwHLlitnctQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="34496038"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="34496038"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 01:31:47 -0700
X-CSE-ConnectionGUID: 9aa9AipPS0SRU1oPK5F2UA==
X-CSE-MsgGUID: XN5k+AAzQT6rT//rKL1b5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="87780593"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by fmviesa002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 01:31:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add mechanism to use sink
 model when applying quirk
In-Reply-To: <20240902064241.1020965-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240902064241.1020965-1-jouni.hogander@intel.com>
 <20240902064241.1020965-2-jouni.hogander@intel.com>
Date: Mon, 02 Sep 2024 11:31:32 +0300
Message-ID: <87cylmv4m3.fsf@intel.com>
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

On Mon, 02 Sep 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently there is no way to apply quirk on device only if certain panel
> model is installed. This patch implements such mechanism by adding new
> quirk type intel_dpcd_quirk which contains also sink_oui and sink_device_=
id
> fields and using also them to figure out if applying quirk is needed.
>
> New intel_init_dpcd_quirks is added and called after drm_dp_read_desc with
> proper sink device identity read from dpcdc.
>
> v3:
>   - !mem_is_zero fixed to mem_is_zero
> v2:
>   - instead of using struct intel_quirk add new struct intel_dpcd_quirk
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    |  4 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++
>  drivers/gpu/drm/i915/display/intel_quirks.c   | 51 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_quirks.h   |  5 ++
>  4 files changed, 64 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 868ff8976ed93..ba1617bcea9f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1907,6 +1907,10 @@ struct intel_dp {
>  	} alpm_parameters;
>=20=20
>  	u8 alpm_dpcd;
> +
> +	struct {
> +		unsigned long mask;
> +	} quirks;
>  };
>=20=20
>  enum lspcon_vendor {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 789c2f78826d0..98ed39413a7de 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -84,6 +84,7 @@
>  #include "intel_pch_display.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> +#include "intel_quirks.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vrr.h"
> @@ -4053,6 +4054,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, stru=
ct intel_connector *connector
>=20=20
>  	drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
>  			 drm_dp_is_branch(intel_dp->dpcd));
> +	intel_init_dpcd_quirks(intel_dp, &intel_dp->desc.ident);
>=20=20
>  	/*
>  	 * Read the eDP display control registers.
> @@ -4165,6 +4167,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  		drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
>  				 drm_dp_is_branch(intel_dp->dpcd));
>=20=20
> +		intel_init_dpcd_quirks(intel_dp, &intel_dp->desc.ident);
> +
>  		intel_dp_update_sink_caps(intel_dp);
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/dr=
m/i915/display/intel_quirks.c
> index 14d5fefc9c5b2..bce1f67c918bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -14,6 +14,11 @@ static void intel_set_quirk(struct intel_display *disp=
lay, enum intel_quirk_id q
>  	display->quirks.mask |=3D BIT(quirk);
>  }
>=20=20
> +static void intel_set_dpcd_quirk(struct intel_dp *intel_dp, enum intel_q=
uirk_id quirk)
> +{
> +	intel_dp->quirks.mask |=3D BIT(quirk);
> +}
> +
>  /*
>   * Some machines (Lenovo U160) do not work with SSC on LVDS for some rea=
son
>   */
> @@ -72,6 +77,21 @@ struct intel_quirk {
>  	void (*hook)(struct intel_display *display);
>  };
>=20=20
> +struct intel_dpcd_quirk {
> +	int device;
> +	int subsystem_vendor;
> +	int subsystem_device;
> +	u8 sink_oui[3];
> +	u8 sink_device_id[6];
> +	void (*hook)(struct intel_dp *intel_dp);
> +};
> +
> +#define SINK_OUI(first, second, third) { (first), (second), (third) }
> +#define SINK_DEVICE_ID(first, second, third, fourth, fifth, sixth) \
> +	{ (first), (second), (third), (fourth), (fifth), (sixth) }
> +
> +#define SINK_DEVICE_ID_ANY	SINK_DEVICE_ID(0, 0, 0, 0, 0, 0)
> +
>  /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
>  struct intel_dmi_quirk {
>  	void (*hook)(struct intel_display *display);
> @@ -203,6 +223,9 @@ static struct intel_quirk intel_quirks[] =3D {
>  	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>  };
>=20=20
> +static struct intel_dpcd_quirk intel_dpcd_quirks[] =3D {
> +};
> +
>  void intel_init_quirks(struct intel_display *display)
>  {
>  	struct pci_dev *d =3D to_pci_dev(display->drm->dev);
> @@ -224,7 +247,35 @@ void intel_init_quirks(struct intel_display *display)
>  	}
>  }
>=20=20
> +void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
> +			    const struct drm_dp_dpcd_ident *ident)
> +{
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct pci_dev *d =3D to_pci_dev(display->drm->dev);
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
> +		struct intel_dpcd_quirk *q =3D &intel_dpcd_quirks[i];
> +
> +		if (d->device =3D=3D q->device &&
> +		    (d->subsystem_vendor =3D=3D q->subsystem_vendor ||
> +		     q->subsystem_vendor =3D=3D PCI_ANY_ID) &&
> +		    (d->subsystem_device =3D=3D q->subsystem_device ||
> +		     q->subsystem_device =3D=3D PCI_ANY_ID) &&
> +		    !memcmp(q->sink_oui, ident->oui, sizeof(ident->oui)) &&
> +		    (!memcmp(q->sink_device_id, ident->device_id,
> +			    sizeof(ident->device_id)) ||
> +		     mem_is_zero(q->sink_device_id, sizeof(q->sink_device_id))))
> +			q->hook(intel_dp);
> +	}
> +}
> +
>  bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id =
quirk)
>  {
>  	return display->quirks.mask & BIT(quirk);
>  }
> +
> +bool intel_has_dpcd_quirk(struct intel_dp *intel_dp, enum intel_quirk_id=
 quirk)
> +{
> +	return intel_dp->quirks.mask & BIT(quirk);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/dr=
m/i915/display/intel_quirks.h
> index 151c8f4ae5760..c8db50b9ab74d 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -9,6 +9,8 @@
>  #include <linux/types.h>
>=20=20
>  struct intel_display;
> +struct intel_dp;
> +struct drm_dp_dpcd_ident;
>=20=20
>  enum intel_quirk_id {
>  	QUIRK_BACKLIGHT_PRESENT,
> @@ -20,6 +22,9 @@ enum intel_quirk_id {
>  };
>=20=20
>  void intel_init_quirks(struct intel_display *display);
> +void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
> +			    const struct drm_dp_dpcd_ident *ident);
>  bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id =
quirk);
> +bool intel_has_dpcd_quirk(struct intel_dp *intel_dp, enum intel_quirk_id=
 quirk);
>=20=20
>  #endif /* __INTEL_QUIRKS_H__ */

--=20
Jani Nikula, Intel
