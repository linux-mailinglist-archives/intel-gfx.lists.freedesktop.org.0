Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37104F84AC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79B310E1C1;
	Thu,  7 Apr 2022 16:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A314E10EB74
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 16:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649348084; x=1680884084;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aTi0TtO+u2tFLAqDDQC1xfLK/vXHS/mUCA1bIY5er6I=;
 b=fBt9ZRmwhQzj7T0UUgzvl8CD0lDnkiD7oD7WiunlBvDhlsQWpQs8jdIb
 Fl/ORa7SAQ0VXclpktO/WNt2+7Kt8KJ/9xuXXTxiUR26GnCUCpxra65DJ
 rbiZ9oVVnjOWdStOvNUKTYTNWTPX7QPJ7QvICYodWodNX4t1Xp+X7qw1I
 EiMhpJTuUM2NJYdGco0bAU3zdowm3zv+1GdD7jhRWFXJ9AEsmiHsnc980
 ey/y5UZaKG0BZHpd4K+N6x/x6yZnUu9RSrG5Gk2Rdvn/72xIAtFhNqFY0
 okLilvw6IbxTdN1rOOqnxG7aWU+5Be1qM19M0vgwT1Wwh4JoaJmyZ6aF1 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="322061605"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="322061605"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:14:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="571123707"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:14:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-7-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 19:14:37 +0300
Message-ID: <87v8vk50r6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 06/22] drm/i915/bios: Validate the
 panel_name table
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> In addition to the fp_timing,dvo_timing,panel_pnp_id tables
> there also exists a panel_name table. Unlike the others this
> is just one offset+table_size even though there are still 16
> actual panel_names in the data block.
>
> The panel_name table made its first appearance somewhere
> around VBT version 156-163. The exact version is not known.
> But we don't need to know that since we can just check whether
> the pointers block has enough room for it or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 18 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  5 +++++
>  2 files changed, 22 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 925f521f1f84..799c1fe36b23 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -206,7 +206,7 @@ static const struct {
>  static bool validate_lfp_data_ptrs(const void *bdb,
>  				   const struct bdb_lvds_lfp_data_ptrs *ptrs)
>  {
> -	int fp_timing_size, dvo_timing_size, panel_pnp_id_size;
> +	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
>  	int data_block_size, lfp_data_size;
>  	int i;
>=20=20
> @@ -221,6 +221,7 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  	fp_timing_size =3D ptrs->ptr[0].fp_timing.table_size;
>  	dvo_timing_size =3D ptrs->ptr[0].dvo_timing.table_size;
>  	panel_pnp_id_size =3D ptrs->ptr[0].panel_pnp_id.table_size;
> +	panel_name_size =3D ptrs->panel_name.table_size;
>=20=20
>  	/* fp_timing has variable size */
>  	if (fp_timing_size < 32 ||
> @@ -228,6 +229,11 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  	    panel_pnp_id_size !=3D sizeof(struct lvds_pnp_id))
>  		return false;
>=20=20
> +	/* panel_name is not present in old VBTs */
> +	if (panel_name_size !=3D 0 &&
> +	    panel_name_size !=3D sizeof(struct lvds_lfp_panel_name))
> +		return false;
> +
>  	lfp_data_size =3D ptrs->ptr[1].fp_timing.offset - ptrs->ptr[0].fp_timin=
g.offset;
>  	if (16 * lfp_data_size > data_block_size)
>  		return false;
> @@ -268,6 +274,9 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  			return false;
>  	}
>=20=20
> +	if (ptrs->panel_name.offset + 16 * panel_name_size > data_block_size)
> +		return false;
> +
>  	return true;
>  }
>=20=20
> @@ -291,6 +300,13 @@ static bool fixup_lfp_data_ptrs(const void *bdb, voi=
d *ptrs_block)
>  		ptrs->ptr[i].panel_pnp_id.offset -=3D offset;
>  	}
>=20=20
> +	if (ptrs->panel_name.table_size) {
> +		if (ptrs->panel_name.offset < offset)
> +			return false;
> +
> +		ptrs->panel_name.offset -=3D offset;
> +	}
> +
>  	return validate_lfp_data_ptrs(bdb, ptrs);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index d727fcd6cdab..e4a11c3e3f3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -737,6 +737,7 @@ struct lvds_lfp_data_ptr {
>  struct bdb_lvds_lfp_data_ptrs {
>  	u8 lvds_entries; /* followed by one or more lvds_data_ptr structs */
>  	struct lvds_lfp_data_ptr ptr[16];
> +	struct lvds_lfp_data_ptr_table panel_name; /* 156-163? */
>  } __packed;
>=20=20
>  /*
> @@ -778,6 +779,10 @@ struct bdb_lvds_lfp_data {
>  	struct lvds_lfp_data_entry data[16];
>  } __packed;
>=20=20
> +struct lvds_lfp_panel_name {
> +	u8 name[13];
> +} __packed;
> +
>  /*
>   * Block 43 - LFP Backlight Control Data Block
>   */

--=20
Jani Nikula, Intel Open Source Graphics Center
