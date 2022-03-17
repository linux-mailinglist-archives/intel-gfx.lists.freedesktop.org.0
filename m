Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0944DCD9F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4A0C10E70B;
	Thu, 17 Mar 2022 18:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A31A510E70B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542022; x=1679078022;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=AFISyCNzDP8ZDFh7RjthstJ/CageXSVkNfdffRDIkyU=;
 b=hRpk7CzhUp2QhcYcI/EBZNw8leqBnINe1wdyyqbYGy3yQnEODChk7H0L
 Me84booMGR6xb/qCA3k0BONbskoxOzqfXcyyZYChMJV7AtrJPmOq5dv1z
 f4AuUuWHPEUkhzk7tNH2AbG1xta8bfuzHdkTzQP2iymRYHP6a/O2JJ9Wt
 D4SDhLrUDP34tkSUAVmb3CawR/OboctJMXSsIFM+XtsXblDyqRmZnBN89
 v1VTq++BhMN+JMTbDH+EwSP/pFXdLBvQLMmek5aRW6ktRHIwX+9XpkPJS
 4t18tgxzxYMKZjPxtk1FIPhBPjwcxPqvlHfpK2qhC25PW9wplhMdAO/Uw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="317668787"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="317668787"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:33:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558055526"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:33:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220317171948.10400-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220317171948.10400-1-ville.syrjala@linux.intel.com>
 <20220317171948.10400-2-ville.syrjala@linux.intel.com>
Date: Thu, 17 Mar 2022 20:33:37 +0200
Message-ID: <87k0csmnsu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/bios: Extract struct
 lvds_lfp_data_ptr_table
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

On Thu, 17 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> All the LFP data table pointers have uniform layout. Turn
> that into a struct.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 13 +++++++------
>  2 files changed, 12 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c7afe19dd44a..31fce7c92a28 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -180,11 +180,11 @@ get_lvds_dvo_timing(const struct bdb_lvds_lfp_data =
*lvds_lfp_data,
>  	 */
>=20=20
>  	int lfp_data_size =3D
> -		lvds_lfp_data_ptrs->ptr[1].dvo_timing_offset -
> -		lvds_lfp_data_ptrs->ptr[0].dvo_timing_offset;
> +		lvds_lfp_data_ptrs->ptr[1].dvo_timing.offset -
> +		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset;
>  	int dvo_timing_offset =3D
> -		lvds_lfp_data_ptrs->ptr[0].dvo_timing_offset -
> -		lvds_lfp_data_ptrs->ptr[0].fp_timing_offset;
> +		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset -
> +		lvds_lfp_data_ptrs->ptr[0].fp_timing.offset;
>  	char *entry =3D (char *)lvds_lfp_data->data + lfp_data_size * index;
>=20=20
>  	return (struct lvds_dvo_timing *)(entry + dvo_timing_offset);
> @@ -205,7 +205,7 @@ get_lvds_fp_timing(const struct bdb_header *bdb,
>=20=20
>  	if (index >=3D ARRAY_SIZE(ptrs->ptr))
>  		return NULL;
> -	ofs =3D ptrs->ptr[index].fp_timing_offset;
> +	ofs =3D ptrs->ptr[index].fp_timing.offset;
>  	if (ofs < data_ofs ||
>  	    ofs + sizeof(struct lvds_fp_timing) > data_ofs + data_size)
>  		return NULL;
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index e0508990df48..d727fcd6cdab 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -722,15 +722,16 @@ struct bdb_lvds_options {
>  /*
>   * Block 41 - LFP Data Table Pointers
>   */
> +struct lvds_lfp_data_ptr_table {
> +	u16 offset; /* offsets are from start of bdb */
> +	u8 table_size;
> +} __packed;
>=20=20
>  /* LFP pointer table contains entries to the struct below */
>  struct lvds_lfp_data_ptr {
> -	u16 fp_timing_offset; /* offsets are from start of bdb */
> -	u8 fp_table_size;
> -	u16 dvo_timing_offset;
> -	u8 dvo_table_size;
> -	u16 panel_pnp_id_offset;
> -	u8 pnp_table_size;
> +	struct lvds_lfp_data_ptr_table fp_timing;
> +	struct lvds_lfp_data_ptr_table dvo_timing;
> +	struct lvds_lfp_data_ptr_table panel_pnp_id;
>  } __packed;
>=20=20
>  struct bdb_lvds_lfp_data_ptrs {

--=20
Jani Nikula, Intel Open Source Graphics Center
