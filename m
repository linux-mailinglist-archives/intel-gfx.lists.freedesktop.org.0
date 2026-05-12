Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Ax+L78FA2owzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:49:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A09251ED84
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8E6F10E1FC;
	Tue, 12 May 2026 10:49:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JmkOP3Hh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A10210E1FC;
 Tue, 12 May 2026 10:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778582973; x=1810118973;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8rr7QNDc4znXGbfDvF3nl7XrZm6F0E5pvEMuOff3ZJc=;
 b=JmkOP3HhrzBmSm5f7Qvk3rSJLTsAoi1z2F9bJPbK1EtM10Eg0YanAyBe
 ulgQ5NZy6qZLv3ns1cYgSrKh0at2Wb27iJaUe6llyBPIKrwzKpBenH5Ro
 lXBOW/bPEUs9Z7Y9f0kaj6d3DNUaU1iPppQPogT0MBn/uLq5Kut9M5oGU
 1nPhfindS4DKXpwwz5h14Di24KkwX0AlwFzmPCvGz0LZuQQl43vuZWckn
 g48ZxW7XoKMG/5DgSPYlF+dK/CM5bM6fOcjopeirKd+25IiCDsnDBeRYn
 +zxFI2N7CcRURgX7WGOU4m68sU3DoI+vR0Lwpi0MR8laJIpK4xlez6er5 A==;
X-CSE-ConnectionGUID: YJAM69WAQ1yFkpT+PFsFxA==
X-CSE-MsgGUID: p0TejBMAR5G7R/NkBIexfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="102152709"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="102152709"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:49:32 -0700
X-CSE-ConnectionGUID: V+2pIhKFQyqi9f1Bx2T3qQ==
X-CSE-MsgGUID: V2TFqmNcTje4jqOWYP/0KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="231337293"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:49:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/14] drm/xe: s/bar2/lmembar/
In-Reply-To: <20260511214122.8468-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-12-ville.syrjala@linux.intel.com>
Date: Tue, 12 May 2026 13:49:26 +0300
Message-ID: <fbae55deb2751896cfff0a71cdf80481a8dc4960@intel.com>
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
X-Rspamd-Queue-Id: 5A09251ED84
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Tue, 12 May 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The local memory BAR has a name (LMEMBAR). Use that instead
> of referring to it by its BAR register index.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/=
xe_ttm_stolen_mgr.c
> index 5e9070739e65..60f39efb02d0 100644
> --- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> +++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> @@ -61,7 +61,7 @@ static u32 get_wopcm_size(struct xe_device *xe)
>  	return wopcm_size;
>  }
>=20=20
> -static u64 detect_bar2_dgfx(struct xe_device *xe, struct xe_ttm_stolen_m=
gr *mgr)
> +static u64 detect_lmembar_dgfx(struct xe_device *xe, struct xe_ttm_stole=
n_mgr *mgr)
>  {
>  	struct xe_vram_region *tile_vram =3D xe_device_get_root_tile(xe)->mem.v=
ram;
>  	resource_size_t tile_io_start =3D xe_vram_region_io_start(tile_vram);
> @@ -102,7 +102,7 @@ static u64 detect_bar2_dgfx(struct xe_device *xe, str=
uct xe_ttm_stolen_mgr *mgr)
>  	return ALIGN_DOWN(stolen_size, SZ_1M);
>  }
>=20=20
> -static u32 detect_bar2_integrated(struct xe_device *xe, struct xe_ttm_st=
olen_mgr *mgr)
> +static u32 detect_lmembar_integrated(struct xe_device *xe, struct xe_ttm=
_stolen_mgr *mgr)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(xe->drm.dev);
>  	struct xe_gt *media_gt =3D xe_device_get_root_tile(xe)->media_gt;
> @@ -212,9 +212,9 @@ int xe_ttm_stolen_mgr_init(struct xe_device *xe)
>  	if (IS_SRIOV_VF(xe))
>  		stolen_size =3D 0;
>  	else if (IS_DGFX(xe))
> -		stolen_size =3D detect_bar2_dgfx(xe, mgr);
> +		stolen_size =3D detect_lmembar_dgfx(xe, mgr);
>  	else if (GRAPHICS_VERx100(xe) >=3D 1270)
> -		stolen_size =3D detect_bar2_integrated(xe, mgr);
> +		stolen_size =3D detect_lmembar_integrated(xe, mgr);
>  	else
>  		stolen_size =3D detect_stolen(xe, mgr);
>=20=20
> @@ -262,9 +262,9 @@ u64 xe_ttm_stolen_io_offset(struct xe_bo *bo, u32 off=
set)
>  	return mgr->io_base + (bo->ttm.resource->start << PAGE_SHIFT) + offset;
>  }
>=20=20
> -static int __xe_ttm_stolen_io_mem_reserve_bar2(struct xe_device *xe,
> -					       struct xe_ttm_stolen_mgr *mgr,
> -					       struct ttm_resource *mem)
> +static int __xe_ttm_stolen_io_mem_reserve_lmembar(struct xe_device *xe,
> +						  struct xe_ttm_stolen_mgr *mgr,
> +						  struct ttm_resource *mem)
>  {
>  	if (!mgr->io_base)
>  		return -EIO;
> @@ -321,7 +321,7 @@ int xe_ttm_stolen_io_mem_reserve(struct xe_device *xe=
, struct ttm_resource *mem)
>  	if (xe_ttm_stolen_cpu_access_needs_ggtt(xe))
>  		return __xe_ttm_stolen_io_mem_reserve_stolen(xe, mgr, mem);
>  	else
> -		return __xe_ttm_stolen_io_mem_reserve_bar2(xe, mgr, mem);
> +		return __xe_ttm_stolen_io_mem_reserve_lmembar(xe, mgr, mem);
>  }
>=20=20
>  u64 xe_ttm_stolen_gpu_offset(struct xe_device *xe)

--=20
Jani Nikula, Intel
