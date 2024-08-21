Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FA1959F1E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 15:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2521E10E55C;
	Wed, 21 Aug 2024 13:57:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQ6114Yw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB05E10E55C
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 13:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724248669; x=1755784669;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=kKrtxwB7ACouDqYGrtjHcPIMmdaUxsJEiPh99LO4zVo=;
 b=iQ6114Ywcn5gThn3zM5DlD48JxWKI1ummoo6YesSJZ9s4+XSLkPhhcTI
 j4EDNAZgIWVoxmKeWM0EZnls3ISFb0pV4wT/aSJL1whEiqGcmURDhfbWF
 CHlHDxdekKPJs91kDFQLbzIqGIUuOprxWsMQb4UfDtbluQtFErCPkhogd
 sK8/M9xzHdiX47WoGc/zXwMU5apLokNgT2PbleKULDfxl8QedIiDWStAD
 EUh/dmSmyOVuknKJySOrecYDs9tXF46CYIP5T2c0BhRruIN8K8hF90opR
 gaKBCTSZmomyaZwXdPthEb3bcRt+3enCISGas4NWY29XCAnXzJl9yt2Tc Q==;
X-CSE-ConnectionGUID: U/I++rhfQJu2iV6PFkSKzg==
X-CSE-MsgGUID: sC1D14yiQFGVihRRfYzn7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="33227602"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="33227602"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:57:49 -0700
X-CSE-ConnectionGUID: 2IS179yMRA2Cw+Pcs5+xYw==
X-CSE-MsgGUID: vFNAVAPiSkmd32NqQ/U+rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65448797"
Received: from sbutnari-mobl1.ti.intel.com (HELO localhost) ([10.245.246.20])
 by fmviesa005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2024 06:57:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Add mechanism to use sink model
 when applying quirk
In-Reply-To: <20240820161429.2213343-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240820161429.2213343-1-jouni.hogander@intel.com>
 <20240820161429.2213343-2-jouni.hogander@intel.com>
Date: Wed, 21 Aug 2024 16:57:44 +0300
Message-ID: <87zfp63rmv.fsf@intel.com>
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

On Tue, 20 Aug 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Currently there is no way to apply quirk device only if certain panel
> model is installed. This patch implements such mechanism by adding
> sink_oui and sink_device_id field into intel_quirk and using them to
> figure out if applying quirk is needed.
>
> For all existing quirks sink_oui and sink_device_id are set as
> SINK_[OUI DEVICE_ID]_ANY to indicate quirk is not specific to any
> sink model.
>
> Existing intel_init_quirks is modified to ignore quirk if it has
> sink_oui set to something else than SINK_OUI_ANY.
>
> New intel_init_dpcd_quirks is added and called after drm_dp_read_desc
> with proper sink device identity read from dpcdc.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  5 ++
>  drivers/gpu/drm/i915/display/intel_quirks.c | 90 +++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_quirks.h |  3 +
>  3 files changed, 74 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 6a0c7ae654f40..9d8bd41dacfe0 100644
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
> +	intel_init_dpcd_quirks(&dev_priv->display, &intel_dp->desc.ident);

Please don't use &dev_priv->display inline in code. Instead, add a local
variable as the first thing:

	struct intel_display *display =3D to_intel_display(intel_dp);

>=20=20
>  	/*
>  	 * Read the eDP display control registers.
> @@ -4152,6 +4154,7 @@ void intel_dp_update_sink_caps(struct intel_dp *int=
el_dp)
>  static bool
>  intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);

Ditto.

>  	int ret;
>=20=20
>  	if (intel_dp_init_lttpr_and_dprx_caps(intel_dp) < 0)
> @@ -4165,6 +4168,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  		drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
>  				 drm_dp_is_branch(intel_dp->dpcd));
>=20=20
> +		intel_init_dpcd_quirks(&i915->display, &intel_dp->desc.ident);
> +
>  		intel_dp_update_sink_caps(intel_dp);
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/dr=
m/i915/display/intel_quirks.c
> index 14d5fefc9c5b2..d9045b317cd16 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -69,9 +69,18 @@ struct intel_quirk {
>  	int device;
>  	int subsystem_vendor;
>  	int subsystem_device;
> +	u8 sink_oui[3];
> +	u8 sink_device_id[6];
>  	void (*hook)(struct intel_display *display);
>  };
>=20=20
> +#define SINK_OUI(first, second, third) { (first), (second), (third) }
> +#define SINK_DEVICE_ID(first, second, third, fourth, fifth, sixth) \
> +	{ (first), (second), (third), (fourth), (fifth), (sixth) }
> +
> +#define SINK_OUI_ANY		SINK_OUI(0, 0, 0)
> +#define SINK_DEVICE_ID_ANY	SINK_DEVICE_ID(0, 0, 0, 0, 0, 0)
> +
>  /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
>  struct intel_dmi_quirk {
>  	void (*hook)(struct intel_display *display);
> @@ -140,77 +149,82 @@ static const struct intel_dmi_quirk intel_dmi_quirk=
s[] =3D {
>=20=20
>  static struct intel_quirk intel_quirks[] =3D {
>  	/* Lenovo U160 cannot use SSC on LVDS */
> -	{ 0x0046, 0x17aa, 0x3920, quirk_ssc_force_disable },
> +	{ 0x0046, 0x17aa, 0x3920, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_ssc_f=
orce_disable },
>=20=20
>  	/* Sony Vaio Y cannot use SSC on LVDS */
> -	{ 0x0046, 0x104d, 0x9076, quirk_ssc_force_disable },
> +	{ 0x0046, 0x104d, 0x9076, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_ssc_f=
orce_disable },
>=20=20
>  	/* Acer Aspire 5734Z must invert backlight brightness */
> -	{ 0x2a42, 0x1025, 0x0459, quirk_invert_brightness },
> +	{ 0x2a42, 0x1025, 0x0459, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>=20=20
>  	/* Acer/eMachines G725 */
> -	{ 0x2a42, 0x1025, 0x0210, quirk_invert_brightness },
> +	{ 0x2a42, 0x1025, 0x0210, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>=20=20
>  	/* Acer/eMachines e725 */
> -	{ 0x2a42, 0x1025, 0x0212, quirk_invert_brightness },
> +	{ 0x2a42, 0x1025, 0x0212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>=20=20
>  	/* Acer/Packard Bell NCL20 */
> -	{ 0x2a42, 0x1025, 0x034b, quirk_invert_brightness },
> +	{ 0x2a42, 0x1025, 0x034b, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>=20=20
>  	/* Acer Aspire 4736Z */
> -	{ 0x2a42, 0x1025, 0x0260, quirk_invert_brightness },
> +	{ 0x2a42, 0x1025, 0x0260, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>=20=20
>  	/* Acer Aspire 5336 */
> -	{ 0x2a42, 0x1025, 0x048a, quirk_invert_brightness },
> +	{ 0x2a42, 0x1025, 0x048a, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>=20=20
>  	/* Acer C720 and C720P Chromebooks (Celeron 2955U) have backlights */
> -	{ 0x0a06, 0x1025, 0x0a11, quirk_backlight_present },
> +	{ 0x0a06, 0x1025, 0x0a11, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Acer C720 Chromebook (Core i3 4005U) */
> -	{ 0x0a16, 0x1025, 0x0a11, quirk_backlight_present },
> +	{ 0x0a16, 0x1025, 0x0a11, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Apple Macbook 2,1 (Core 2 T7400) */
> -	{ 0x27a2, 0x8086, 0x7270, quirk_backlight_present },
> +	{ 0x27a2, 0x8086, 0x7270, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Apple Macbook 4,1 */
> -	{ 0x2a02, 0x106b, 0x00a1, quirk_backlight_present },
> +	{ 0x2a02, 0x106b, 0x00a1, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Toshiba CB35 Chromebook (Celeron 2955U) */
> -	{ 0x0a06, 0x1179, 0x0a88, quirk_backlight_present },
> +	{ 0x0a06, 0x1179, 0x0a88, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* HP Chromebook 14 (Celeron 2955U) */
> -	{ 0x0a06, 0x103c, 0x21ed, quirk_backlight_present },
> +	{ 0x0a06, 0x103c, 0x21ed, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Dell Chromebook 11 */
> -	{ 0x0a06, 0x1028, 0x0a35, quirk_backlight_present },
> +	{ 0x0a06, 0x1028, 0x0a35, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Dell Chromebook 11 (2015 version) */
> -	{ 0x0a16, 0x1028, 0x0a35, quirk_backlight_present },
> +	{ 0x0a16, 0x1028, 0x0a35, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backl=
ight_present },
>=20=20
>  	/* Toshiba Satellite P50-C-18C */
> -	{ 0x191B, 0x1179, 0xF840, quirk_increase_t12_delay },
> +	{ 0x191B, 0x1179, 0xF840, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_t12_delay },
>=20=20
>  	/* GeminiLake NUC */
> -	{ 0x3185, 0x8086, 0x2072, quirk_increase_ddi_disabled_time },
> -	{ 0x3184, 0x8086, 0x2072, quirk_increase_ddi_disabled_time },
> +	{ 0x3185, 0x8086, 0x2072, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_ddi_disabled_time },
> +	{ 0x3184, 0x8086, 0x2072, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_ddi_disabled_time },
>  	/* ASRock ITX*/
> -	{ 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
> -	{ 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
> +	{ 0x3185, 0x1849, 0x2212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_ddi_disabled_time },
> +	{ 0x3184, 0x1849, 0x2212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_ddi_disabled_time },
>  	/* ECS Liva Q2 */
> -	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
> -	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
> +	{ 0x3185, 0x1019, 0xa94d, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_ddi_disabled_time },
> +	{ 0x3184, 0x1019, 0xa94d, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_incre=
ase_ddi_disabled_time },
>  	/* HP Notebook - 14-r206nv */
> -	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
> +	{ 0x0f31, 0x103c, 0x220f, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_inver=
t_brightness },
>  };

Mmh. Since SINK_OUI_ANY and SINK_DEVICE_ID_ANY are both all zeros, it
would be nice to not have to initialize them.

One approach is to first convert the whole thing to designated
initializers as a separate patch. Maybe the device, subsystem_vendor and
subsystem_device could be initialized with a macro that contains the
designated initializer to not be too verbose.

>=20=20
>  void intel_init_quirks(struct intel_display *display)
>  {
>  	struct pci_dev *d =3D to_pci_dev(display->drm->dev);
> +	u8 any_sink_oui[] =3D SINK_OUI_ANY;
>  	int i;
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(intel_quirks); i++) {
>  		struct intel_quirk *q =3D &intel_quirks[i];
>=20=20
> +		if (memcmp(q->sink_oui, any_sink_oui,
> +			   sizeof(any_sink_oui)) !=3D 0)
> +			continue;
> +
>  		if (d->device =3D=3D q->device &&
>  		    (d->subsystem_vendor =3D=3D q->subsystem_vendor ||
>  		     q->subsystem_vendor =3D=3D PCI_ANY_ID) &&
> @@ -224,6 +238,34 @@ void intel_init_quirks(struct intel_display *display)
>  	}
>  }
>=20=20
> +void intel_init_dpcd_quirks(struct intel_display *display,
> +			    struct drm_dp_dpcd_ident *ident)

Can be const.

> +{
> +	struct pci_dev *d =3D to_pci_dev(display->drm->dev);
> +	u8 any_sink_oui[] =3D SINK_OUI_ANY;
> +	u8 any_sink_device_id[] =3D SINK_DEVICE_ID_ANY;
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(intel_quirks); i++) {
> +		struct intel_quirk *q =3D &intel_quirks[i];
> +
> +		if (!memcmp(q->sink_oui, any_sink_oui, sizeof(any_sink_oui)))

Maybe we could just check if it's zero?

> +			continue;
> +
> +		if (d->device =3D=3D q->device &&
> +		    (d->subsystem_vendor =3D=3D q->subsystem_vendor ||
> +		     q->subsystem_vendor =3D=3D PCI_ANY_ID) &&
> +		    (d->subsystem_device =3D=3D q->subsystem_device ||
> +		     q->subsystem_device =3D=3D PCI_ANY_ID) &&
> +		    !memcmp(q->sink_oui, ident->oui, sizeof(ident->oui)) &&
> +		    (!memcmp(q->sink_device_id, ident->device_id,
> +			    sizeof(ident->device_id)) ||
> +		     !memcmp(q->sink_device_id, any_sink_device_id,
> +			    sizeof(any_sink_device_id))))

Ditto.

> +			q->hook(display);

It's a bit odd that a display specific quirk affects
everything. Shouldn't the quirk be applied only for connectors that have
the affected display?

> +	}
> +}
> +
>  bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id =
quirk)
>  {
>  	return display->quirks.mask & BIT(quirk);
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/dr=
m/i915/display/intel_quirks.h
> index 151c8f4ae5760..2d664af7e89f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>=20=20
>  struct intel_display;
> +struct drm_dp_dpcd_ident;
>=20=20
>  enum intel_quirk_id {
>  	QUIRK_BACKLIGHT_PRESENT,
> @@ -20,6 +21,8 @@ enum intel_quirk_id {
>  };
>=20=20
>  void intel_init_quirks(struct intel_display *display);
> +void intel_init_dpcd_quirks(struct intel_display *display,
> +			    struct drm_dp_dpcd_ident *ident);
>  bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id =
quirk);
>=20=20
>  #endif /* __INTEL_QUIRKS_H__ */

--=20
Jani Nikula, Intel
