Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8E253CA1F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 14:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCF210E093;
	Fri,  3 Jun 2022 12:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92AC610E021
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 12:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654260223; x=1685796223;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nupDC+OGmbvsYuqGMBZH2KvHggAqCuUqV0I0a9Wm8LE=;
 b=CbhW5Gtu17zQUK4GwrEr7vQmET9pdWrEvxSaoknVcDsOSb+v/Vvs+aNg
 uaQXdGviDanlPiI7SvFG/h+bGJBSEvX7OaiMcfouonl7lJ1Hu7zMSsRfL
 RT/Yp/Q0LUjc1klrcHJLfqsmNcYGh+LltiX+a2CEm7u7t38R91FP/fPnB
 Tu+IJzss+iFAyUMIRIRwELefx+evyFuqIZ3J3cVZnStrw7bMIeg3M2Xj1
 bZpJzQgTegU72lqwzhVqooe7GGk2KZORMn3iTXdZ4NP1zbwHPXCKghOkc
 Q+9hYGx9iMath4rlP+tDXhW6HWC00O0KYiKpIUkj/QTXreSKs1x+4HmWm w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="258320836"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="258320836"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 05:43:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="607383766"
Received: from richardf-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 05:43:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220603101411.3087789-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
Date: Fri, 03 Jun 2022 15:43:37 +0300
Message-ID: <87k09xor2e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

On Fri, 03 Jun 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Export headless sku bit (bit 13) from opregion->header->pcon as an
> interface to check if our device is headless configuration.
>
> Bspec: 53441
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
>  2 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index f31e8c3f8ce0..eab3f2e6b786 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -53,6 +53,8 @@
>  #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
>  #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
>=20=20
> +#define PCON_HEADLESS_SKU	BIT(13)

Here we go again.

What does headless mean here? The spec does not say. Does it have
display hardware? Apparently yes, since otherwise we wouldn't be here.

We have INTEL_DISPLAY_ENABLED() which should do the right thing when you
do have display hardware and have done output setup etc. but want to
force them disconnected, i.e. you take the hardware over properly, but
put it to sleep for power savings.

Maybe we should bolt this opregion check in that macro?

Maybe we need to use INTEL_DISPLAY_ENABLED() also to prevent polling.

I certainly would not want to add another mode that's separate from
HAS_DISPLAY() and INTEL_DISPLAY_ENABLED().

> +
>  struct opregion_header {
>  	u8 signature[16];
>  	u32 size;
> @@ -1135,6 +1137,16 @@ struct edid *intel_opregion_get_edid(struct intel_=
connector *intel_connector)
>  	return new_edid;
>  }
>=20=20
> +bool intel_opregion_headless_sku(struct drm_i915_private *i915)
> +{
> +	struct intel_opregion *opregion =3D &i915->opregion;
> +
> +	if (!opregion->header)
> +		return false;
> +
> +	return opregion->header->pcon & PCON_HEADLESS_SKU;

We should probably start checking for opregion version for this stuff
too.


BR,
Jani.

> +}
> +
>  void intel_opregion_register(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion =3D &i915->opregion;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/=
drm/i915/display/intel_opregion.h
> index 82cc0ba34af7..5ad96e1d8278 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -76,6 +76,8 @@ int intel_opregion_notify_adapter(struct drm_i915_priva=
te *dev_priv,
>  int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
>  struct edid *intel_opregion_get_edid(struct intel_connector *connector);
>=20=20
> +bool intel_opregion_headless_sku(struct drm_i915_private *i915);
> +
>  #else /* CONFIG_ACPI*/
>=20=20
>  static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
> @@ -127,6 +129,11 @@ intel_opregion_get_edid(struct intel_connector *conn=
ector)
>  	return NULL;
>  }
>=20=20
> +bool intel_opregion_headless_sku(struct drm_i915_private *i915)
> +{
> +	return false;
> +}
> +
>  #endif /* CONFIG_ACPI */
>=20=20
>  #endif

--=20
Jani Nikula, Intel Open Source Graphics Center
