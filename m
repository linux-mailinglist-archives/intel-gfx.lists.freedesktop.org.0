Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E956B530C45
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 11:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3256C10F155;
	Mon, 23 May 2022 09:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D14F10F155
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 May 2022 09:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653296882; x=1684832882;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aYVYaao/M34Uz8XBEEnjOHzaGKdn2GjArPQ6uasv7AM=;
 b=LSBtnwOsOIlqa6YBPfN4hFnsETHiXNSFq4FCXGaPnpXsSRnEZapBpj6y
 6JnJsh/iEa/Ew9hZbjez04xgSmzW64LzpYHcUgXE7LXbnYND9xIhdMRo0
 9qNv7Z3nhr/c0bD9w+8s4u6m9H+WxdruNTuIAK4MIqbZAYlJ9J8DotPeU
 PNmXzAt3nQkHzjkNNewpt6enX3+/9C0YJSRkAw4DsZaederRxHb22zHiY
 wKB6CDi6rcxToELmR5tJMaRqTO/pRu3R4RARG4OTqmd6HJaBky5xFZLKx
 OrY6wpvwH/+5HWLkU9s5/C/8R0+p165xPFYCw42HsVMSYIRRwQU3Y9CnG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10355"; a="260759968"
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="260759968"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 02:08:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,246,1647327600"; d="scan'208";a="571982570"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.135.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2022 02:08:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220519140010.10600-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220519140010.10600-1-ville.syrjala@linux.intel.com>
Date: Mon, 23 May 2022 12:07:57 +0300
Message-ID: <87k0acbor6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Rename block_size()/block_offset()
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

On Thu, 19 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Give block_size()/block_offset() a "raw_" prefix since they
> both operate on the "raw" (as in not duplicated) BDB block
> contents.
>
> What actually spurred this was a conflict between intel_bios.c
> block_size() vs. block_size() from blkdev.h. That only
> happend to me on a custom tree where we somehow manage to
> include blkdev.h into intel_bios.c. But I think the rename
> makes sense anyway to clarify the purpose of these functions.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 0c5638f5b72b..3ac1860a0b6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -123,7 +123,7 @@ find_raw_section(const void *_bdb, enum bdb_block_id =
section_id)
>   * Offset from the start of BDB to the start of the
>   * block data (just past the block header).
>   */
> -static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
> +static u32 raw_block_offset(const void *bdb, enum bdb_block_id section_i=
d)
>  {
>  	const void *block;
>=20=20
> @@ -135,7 +135,7 @@ static u32 block_offset(const void *bdb, enum bdb_blo=
ck_id section_id)
>  }
>=20=20
>  /* size of the block excluding the header */
> -static u32 block_size(const void *bdb, enum bdb_block_id section_id)
> +static u32 raw_block_size(const void *bdb, enum bdb_block_id section_id)
>  {
>  	const void *block;
>=20=20
> @@ -232,7 +232,7 @@ static bool validate_lfp_data_ptrs(const void *bdb,
>  	int data_block_size, lfp_data_size;
>  	int i;
>=20=20
> -	data_block_size =3D block_size(bdb, BDB_LVDS_LFP_DATA);
> +	data_block_size =3D raw_block_size(bdb, BDB_LVDS_LFP_DATA);
>  	if (data_block_size =3D=3D 0)
>  		return false;
>=20=20
> @@ -309,7 +309,7 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void=
 *ptrs_block)
>  	u32 offset;
>  	int i;
>=20=20
> -	offset =3D block_offset(bdb, BDB_LVDS_LFP_DATA);
> +	offset =3D raw_block_offset(bdb, BDB_LVDS_LFP_DATA);
>=20=20
>  	for (i =3D 0; i < 16; i++) {
>  		if (ptrs->ptr[i].fp_timing.offset < offset ||

--=20
Jani Nikula, Intel Open Source Graphics Center
