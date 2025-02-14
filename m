Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5DFA362B6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 17:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE75A10ECFE;
	Fri, 14 Feb 2025 16:07:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kqwu22Uh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F8210ECFE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 16:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739549233; x=1771085233;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fFpZx9SoGhvJXn3RojeS722OCbjrNeurjknJBfGEJbo=;
 b=kqwu22UhGD0nJR1JeerIKaD8jbm0hztSu4NRSY/xbDwV8Y9nrJlWlnKo
 c9BsWZL2nHnITOAVh6Xe1p8fvZUjU4n5oWxY8UepjeylhW8zLdGmwXwDZ
 dvSPSMkdt3h5Xr25qJHysNXnDD5oVpuLOsvcqXNS47sKbyFEFqzUigLdV
 1BZjHefYmBjuankPWvDe0en8qLWOEifhrsEZOeocgV2UAovOeUpJ03nCL
 rzroE7qf6DXsuz7FBLRCyuN2igdwOiE4Vrld5edozXHsfftndRue0BPmS
 PJ+MIDctEwpo/nSHKNiP/w5ZmckCBVdoGDrMSpyHkDE+YmKfXQ1bzh9nv w==;
X-CSE-ConnectionGUID: N7JZAabmTmiR5xKWsE4FHQ==
X-CSE-MsgGUID: fVr5ioeNRX+6f3kR14CU6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="43140995"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="43140995"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 08:07:12 -0800
X-CSE-ConnectionGUID: mQhKpusBQaG879suw5WoXA==
X-CSE-MsgGUID: Kz/boTflTNyXnv8e/txbjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150655990"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 08:07:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Egor Vorontsov <sdoregor@sdore.me>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 1/2] drm/edid: Implement DisplayID Type IX & X timing
 blocks parsing
In-Reply-To: <20250214110643.506740-1-sdoregor@sdore.me>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250214110643.506740-1-sdoregor@sdore.me>
Date: Fri, 14 Feb 2025 18:07:02 +0200
Message-ID: <87seogv7bt.fsf@intel.com>
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

On Fri, 14 Feb 2025, Egor Vorontsov <sdoregor@sdore.me> wrote:
> Some newer high refresh rate consumer monitors (including those by Samsun=
g)
> make use of DisplayID 2.1 timing blocks in their EDID data, notably for
> their highest refresh rate modes. Such modes won't be available as of now.
>
> Implement partial support for such blocks in order to enable native
> support of HRR modes of most such monitors for users without having to re=
ly
> on EDID patching/override (or need thereof).
>
> Closes: https://gitlab.freedesktop.org/drm/misc/kernel/-/issues/55
> Suggested-by: Maximilian Bo=C3=9Fe <max@bosse.io>
> Signed-off-by: Egor Vorontsov <sdoregor@sdore.me>

PS. I bounced the messages to intel-gfx to have Intel CI run these.

> ---
>  drivers/gpu/drm/drm_displayid_internal.h | 13 +++++
>  drivers/gpu/drm/drm_edid.c               | 63 ++++++++++++++++++++++++
>  2 files changed, 76 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_displayid_internal.h b/drivers/gpu/drm/d=
rm_displayid_internal.h
> index aee1b86a73c1..84831ecfdb6e 100644
> --- a/drivers/gpu/drm/drm_displayid_internal.h
> +++ b/drivers/gpu/drm/drm_displayid_internal.h
> @@ -66,6 +66,7 @@ struct drm_edid;
>  #define DATA_BLOCK_2_STEREO_DISPLAY_INTERFACE	0x27
>  #define DATA_BLOCK_2_TILED_DISPLAY_TOPOLOGY	0x28
>  #define DATA_BLOCK_2_CONTAINER_ID		0x29
> +#define DATA_BLOCK_2_TYPE_10_FORMULA_TIMING	0x2a
>  #define DATA_BLOCK_2_VENDOR_SPECIFIC		0x7e
>  #define DATA_BLOCK_2_CTA_DISPLAY_ID		0x81
>=20=20
> @@ -129,6 +130,18 @@ struct displayid_detailed_timing_block {
>  	struct displayid_detailed_timings_1 timings[];
>  };
>=20=20
> +struct displayid_formula_timings_9 {
> +	u8 flags;
> +	__le16 hactive;
> +	__le16 vactive;
> +	u8 vrefresh;
> +} __packed;
> +
> +struct displayid_formula_timing_block {
> +	struct displayid_block base;
> +	struct displayid_formula_timings_9 timings[];
> +} __packed;
> +
>  #define DISPLAYID_VESA_MSO_OVERLAP	GENMASK(3, 0)
>  #define DISPLAYID_VESA_MSO_MODE		GENMASK(6, 5)
>=20=20
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 13bc4c290b17..03edf0e1598e 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -6833,6 +6833,66 @@ static int add_displayid_detailed_1_modes(struct d=
rm_connector *connector,
>  	return num_modes;
>  }
>=20=20
> +static struct drm_display_mode *drm_mode_displayid_formula(struct drm_de=
vice *dev,
> +							   const struct displayid_formula_timings_9 *timings,
> +							   bool type_10)
> +{
> +	struct drm_display_mode *mode;
> +	u16 hactive =3D le16_to_cpu(timings->hactive) + 1;
> +	u16 vactive =3D le16_to_cpu(timings->vactive) + 1;
> +	u8 timing_formula =3D timings->flags & 0x7;
> +
> +	/* TODO: support RB-v2 & RB-v3 */
> +	if (timing_formula > 1)
> +		return NULL;
> +
> +	/* TODO: support video-optimized refresh rate */
> +	if (timings->flags & (1 << 4))
> +		drm_dbg_kms(dev, "Fractional vrefresh is not implemented, proceeding w=
ith non-video-optimized refresh rate");
> +
> +	mode =3D drm_cvt_mode(dev, hactive, vactive, timings->vrefresh + 1, tim=
ing_formula =3D=3D 1, false, false);
> +	if (!mode)
> +		return NULL;
> +
> +	/* TODO: interpret S3D flags */
> +
> +	mode->type =3D DRM_MODE_TYPE_DRIVER;
> +	drm_mode_set_name(mode);
> +
> +	return mode;
> +}
> +
> +static int add_displayid_formula_modes(struct drm_connector *connector,
> +				       const struct displayid_block *block)
> +{
> +	const struct displayid_formula_timing_block *formula_block =3D (struct =
displayid_formula_timing_block *)block;
> +	int num_timings;
> +	struct drm_display_mode *newmode;
> +	int num_modes =3D 0;
> +	bool type_10 =3D block->tag =3D=3D DATA_BLOCK_2_TYPE_10_FORMULA_TIMING;
> +	int timing_size =3D 6 + ((formula_block->base.rev & 0x70) >> 4);
> +
> +	/* extended blocks are not supported yet */
> +	if (timing_size !=3D 6)
> +		return 0;
> +
> +	if (block->num_bytes % timing_size)
> +		return 0;
> +
> +	num_timings =3D block->num_bytes / timing_size;
> +	for (int i =3D 0; i < num_timings; i++) {
> +		const struct displayid_formula_timings_9 *timings =3D &formula_block->=
timings[i];
> +
> +		newmode =3D drm_mode_displayid_formula(connector->dev, timings, type_1=
0);
> +		if (!newmode)
> +			continue;
> +
> +		drm_mode_probed_add(connector, newmode);
> +		num_modes++;
> +	}
> +	return num_modes;
> +}
> +
>  static int add_displayid_detailed_modes(struct drm_connector *connector,
>  					const struct drm_edid *drm_edid)
>  {
> @@ -6845,6 +6905,9 @@ static int add_displayid_detailed_modes(struct drm_=
connector *connector,
>  		if (block->tag =3D=3D DATA_BLOCK_TYPE_1_DETAILED_TIMING ||
>  		    block->tag =3D=3D DATA_BLOCK_2_TYPE_7_DETAILED_TIMING)
>  			num_modes +=3D add_displayid_detailed_1_modes(connector, block);
> +		else if (block->tag =3D=3D DATA_BLOCK_2_TYPE_9_FORMULA_TIMING ||
> +			 block->tag =3D=3D DATA_BLOCK_2_TYPE_10_FORMULA_TIMING)
> +			num_modes +=3D add_displayid_formula_modes(connector, block);
>  	}
>  	displayid_iter_end(&iter);

--=20
Jani Nikula, Intel
