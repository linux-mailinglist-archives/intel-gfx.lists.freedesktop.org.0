Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F793545E18
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 10:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1741112641;
	Fri, 10 Jun 2022 08:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE58112641
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 08:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654848181; x=1686384181;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LnJh2RU5z50IwjAVIGcvDK7BNkKJxAM7nD91kkYgnik=;
 b=XZaHGf3689qWr61qlDLv4bu/fVEZzt2/nz0oNx7qA0Vzt/Lyr4qgCrLf
 dNmjGUNnK53LyiE0zSw7P5/7BbypU1FnDvCF17SBC4MKkKG0mOAYZMteE
 3vt8XtfPKj5XJx/lE+Uc2bP6o7CNSOTu5l7ld9MG02NWOIGeIQIlEbR7p
 Bn1OlkHGM8luG9Mm6tBJMurm7aFUZHQKib9W/fFTWlTIC4DNj0nK4YOhP
 1JuvOP/mAIsKO2qf47FW7LLnc4H2gLN/+UGYxXQlH6C9Om3akYaDfUnax
 3RklYXp8jNGRgReEZBxL6IA7IxBV2QXDLFpw9ygpjgvv1W0FViBz+H8gI w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="257385514"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="257385514"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 01:03:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="638008712"
Received: from vrao2-mobl1.gar.corp.intel.com (HELO localhost) ([10.252.58.80])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 01:02:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220610071704.4150527-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220610071704.4150527-1-jouni.hogander@intel.com>
 <20220610071704.4150527-2-jouni.hogander@intel.com>
Date: Fri, 10 Jun 2022 11:02:57 +0300
Message-ID: <878rq50wum.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/opregion: add function to
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

On Fri, 10 Jun 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> Export headless sku bit (bit 13) from opregion->header->pcon as an
> interface to check if our device is headless configuration.
>
> This is mainly targeted for hybrid gfx systems. E.g. when display
> is not supposed to be connected discrete graphics card it's
> opregion can inform this is headless graphics card.
>
> v2: Check also opregion version
>
> Bspec: 53441
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index f31e8c3f8ce0..6876ba30d5a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -53,6 +53,8 @@
>  #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
>  #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
>=20=20
> +#define PCON_HEADLESS_SKU	BIT(13)
> +
>  struct opregion_header {
>  	u8 signature[16];
>  	u32 size;
> @@ -1135,6 +1137,18 @@ struct edid *intel_opregion_get_edid(struct intel_=
connector *intel_connector)
>  	return new_edid;
>  }
>=20=20
> +bool intel_opregion_headless_sku(struct drm_i915_private *i915)
> +{
> +	struct intel_opregion *opregion =3D &i915->opregion;
> +	struct opregion_header *header =3D opregion->header;
> +
> +	if (!header || header->over.major < 2 ||
> +	    (header->over.major =3D=3D 2 && header->over.minor < 3))
> +		return false;
> +
> +	return opregion->header->pcon & PCON_HEADLESS_SKU;
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

This needs to be static inline.

With that fixed, the series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +{
> +	return false;
> +}
> +
>  #endif /* CONFIG_ACPI */
>=20=20
>  #endif

--=20
Jani Nikula, Intel Open Source Graphics Center
