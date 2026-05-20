Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKCLJ+/GDWr93AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 16:36:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F6758FB7B
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2026 16:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC5C510F07D;
	Wed, 20 May 2026 14:36:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCH6Mf0M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F95610F07D;
 Wed, 20 May 2026 14:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779287788; x=1810823788;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mjyyDEOuiOq/xhwCwv1aTi/AZTKhbUGhelykbGGhxtY=;
 b=DCH6Mf0M3WJrqeKmZ52k6Rl3KW62U/LrYhiZNaB2Fv4bpUZIWFKzciVs
 f6F3amz4Spp0gv2d0DqhpLUhGQ8HXPia7k/KvfIU59A0XphiaGTgOtQGg
 AgyEN1NWQiRm7oNqqoq0IKMRZ/fH4G0lDydzJs7y2r6cuAp/G3FdAk6cL
 yccuykp0XKrN1fynHWHotAGPjGV+36jEv9A+UUNet453Wfmb23423BxQa
 Ikv4twXq7FfreVNAYtyYqmGnHGFmalTn45KQJJ0FGsN61E8L9dL07TNY3
 YjK6YCdi28UlANZSTYW67xK7LAqbYULALXzx0HiDaYW3LDEuc4tmzrhaR Q==;
X-CSE-ConnectionGUID: QMynzIA2Rhek+ocsb38dgA==
X-CSE-MsgGUID: dbMpG1iaQbaNLgadQyfG4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="79916653"
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="79916653"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 07:36:27 -0700
X-CSE-ConnectionGUID: S/tPQ87SQg+OQGphHDKVnA==
X-CSE-MsgGUID: ErOIi7NiQqmOYpUBnLl42A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="245181442"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.148])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 07:36:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>
Subject: Re: [PATCH v3 01/31] drm/i915/buf_trans: align xe3plpd with VS/PE-O
 layout
In-Reply-To: <20260507013137.527510-2-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-2-michal.grzelak@intel.com>
Date: Wed, 20 May 2026 17:36:22 +0300
Message-ID: <90e784505a29ea9b6107f62e1fbf5e776e13e5dd@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 89F6758FB7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 07 May 2026, Micha=C5=82 Grzelak <michal.grzelak@intel.com> wrote:
> Align struct xe3plpd_lt_phy_buf_trans to match layout found in
> Vswing / Preemphasis Override tables.
>
> Move txswing & txswing_level to the end of the struct. Keep order
> between txswing & txswing_level columns in xe3plpd_lt_* tables.
>
> Move post_cursor from third field to second.

So this change implies we'd convert all of intel_ddi_buf_trans.c to use
the exact same memory layout as VBT. This means switching to __packed
structs, and initializing all the data the same way. Otherwise, there's
no point in shuffling the structs here.

Originally, I said there are two basic approaches:

1) We change our layout to match the VBT, and convert all of ddi buf
   trans usage to it. We then get the data from VBT and use it as-is
   with no conversions.

2) We stick with our current layout, and while parsing VBT, convert the
   VBT to our layout, per-platform.

Looking at this series, AFAICT it's both shuffling our structures *and*
doing the conversion from VBT.

It should only be one or the other. I think I'm now leaning to go for
option 2. Leave our current structures be, and convert the VBT data into
our structures.

BR,
Jani.



>
> v2->v3
> - fix rebase's conflict
>
> Signed-off-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>
> ---
>  .../drm/i915/display/intel_ddi_buf_trans.c    | 72 +++++++++----------
>  .../drm/i915/display/intel_ddi_buf_trans.h    |  6 +-
>  2 files changed, 39 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index 4cd1e4d76c7af..908577b04a14e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1118,50 +1118,50 @@ static const struct intel_ddi_buf_trans mtl_c20_t=
rans_uhbr =3D {
>=20=20
>  /* DP1.4 */
>  static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_dp14[] =
=3D {
> -	{ .lt =3D { 1, 0, 0, 21, 0  } },
> -	{ .lt =3D { 1, 1, 0, 24, 3  } },
> -	{ .lt =3D { 1, 2, 0, 28, 7  } },
> -	{ .lt =3D { 0, 3, 0, 35, 13 } },
> -	{ .lt =3D { 1, 1, 0, 27, 0  } },
> -	{ .lt =3D { 1, 2, 0, 31, 5  } },
> -	{ .lt =3D { 0, 3, 0, 37, 11 } },
> -	{ .lt =3D { 1, 2, 0, 35, 0  } },
> -	{ .lt =3D { 0, 3, 0, 41, 7  } },
> -	{ .lt =3D { 0, 3, 0, 48, 0  } },
> +	{ .lt =3D { 21, 0,  0, 1, 0 } },
> +	{ .lt =3D { 24, 0,  3, 1, 1 } },
> +	{ .lt =3D { 28, 0,  7, 1, 2 } },
> +	{ .lt =3D { 35, 0, 13, 0, 3 } },
> +	{ .lt =3D { 27, 0,  0, 1, 1 } },
> +	{ .lt =3D { 31, 0,  5, 1, 2 } },
> +	{ .lt =3D { 37, 0, 11, 0, 3 } },
> +	{ .lt =3D { 35, 0,  0, 1, 2 } },
> +	{ .lt =3D { 41, 0,  7, 0, 3 } },
> +	{ .lt =3D { 48, 0,  0, 0, 3 } },
>  };
>=20=20
>  /* DP2.1 */
>  static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_uhbr[] =
=3D {
> -	{ .lt =3D { 0, 0, 0, 48, 0  } },
> -	{ .lt =3D { 0, 0, 0, 43, 5  } },
> -	{ .lt =3D { 0, 0, 0, 40, 8  } },
> -	{ .lt =3D { 0, 0, 0, 37, 11 } },
> -	{ .lt =3D { 0, 0, 0, 33, 15 } },
> -	{ .lt =3D { 0, 0, 2, 46, 0  } },
> -	{ .lt =3D { 0, 0, 2, 42, 4  } },
> -	{ .lt =3D { 0, 0, 2, 38, 8  } },
> -	{ .lt =3D { 0, 0, 2, 35, 11 } },
> -	{ .lt =3D { 0, 0, 2, 33, 13 } },
> -	{ .lt =3D { 0, 0, 4, 44, 0  } },
> -	{ .lt =3D { 0, 0, 4, 40, 4  } },
> -	{ .lt =3D { 0, 0, 4, 37, 7  } },
> -	{ .lt =3D { 0, 0, 4, 33, 11 } },
> -	{ .lt =3D { 0, 0, 8, 40, 0  } },
> -	{ .lt =3D { 1, 0, 2, 26, 2  } },
> +	{ .lt =3D { 48, 0,  0, 0, 0 } },
> +	{ .lt =3D { 43, 0,  5, 0, 0 } },
> +	{ .lt =3D { 40, 0,  8, 0, 0 } },
> +	{ .lt =3D { 37, 0, 11, 0, 0 } },
> +	{ .lt =3D { 33, 0, 15, 0, 0 } },
> +	{ .lt =3D { 46, 2,  0, 0, 0 } },
> +	{ .lt =3D { 42, 2,  4, 0, 0 } },
> +	{ .lt =3D { 38, 2,  8, 0, 0 } },
> +	{ .lt =3D { 35, 2, 11, 0, 0 } },
> +	{ .lt =3D { 33, 2, 13, 0, 0 } },
> +	{ .lt =3D { 44, 4,  0, 0, 0 } },
> +	{ .lt =3D { 40, 4,  4, 0, 0 } },
> +	{ .lt =3D { 37, 4,  7, 0, 0 } },
> +	{ .lt =3D { 33, 4, 11, 0, 0 } },
> +	{ .lt =3D { 40, 8,  0, 0, 0 } },
> +	{ .lt =3D { 26, 2,  2, 1, 0 } },
>  };
>=20=20
>  /* eDp */
>  static const union intel_ddi_buf_trans_entry _xe3plpd_lt_trans_edp[] =3D=
 {
> -	{ .lt =3D { 1, 0, 0, 12, 0 } },
> -	{ .lt =3D { 1, 1, 0, 13, 1 } },
> -	{ .lt =3D { 1, 2, 0, 15, 3 } },
> -	{ .lt =3D { 1, 3, 0, 19, 7 } },
> -	{ .lt =3D { 1, 1, 0, 14, 0 } },
> -	{ .lt =3D { 1, 2, 0, 16, 2 } },
> -	{ .lt =3D { 1, 3, 0, 21, 5 } },
> -	{ .lt =3D { 1, 2, 0, 18, 0 } },
> -	{ .lt =3D { 1, 3, 0, 22, 4 } },
> -	{ .lt =3D { 1, 3, 0, 26, 0 } },
> +	{ .lt =3D { 12, 0, 0, 1, 0 } },
> +	{ .lt =3D { 13, 0, 1, 1, 1 } },
> +	{ .lt =3D { 15, 0, 3, 1, 2 } },
> +	{ .lt =3D { 19, 0, 7, 1, 3 } },
> +	{ .lt =3D { 14, 0, 0, 1, 1 } },
> +	{ .lt =3D { 16, 0, 2, 1, 2 } },
> +	{ .lt =3D { 21, 0, 5, 1, 3 } },
> +	{ .lt =3D { 18, 0, 0, 1, 2 } },
> +	{ .lt =3D { 22, 0, 4, 1, 3 } },
> +	{ .lt =3D { 26, 0, 0, 1, 3 } },
>  };
>=20=20
>  static const struct intel_ddi_buf_trans xe3plpd_lt_trans_dp14 =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h b/drivers=
/gpu/drm/i915/display/intel_ddi_buf_trans.h
> index 9698697f39177..ac9acdec6d298 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.h
> @@ -51,11 +51,11 @@ struct dg2_snps_phy_buf_trans {
>  };
>=20=20
>  struct xe3plpd_lt_phy_buf_trans {
> -	u8 txswing;
> -	u8 txswing_level;
> -	u8 pre_cursor;
>  	u8 main_cursor;
> +	u8 pre_cursor;
>  	u8 post_cursor;
> +	u8 txswing;
> +	u8 txswing_level;
>  };
>=20=20
>  union intel_ddi_buf_trans_entry {

--=20
Jani Nikula, Intel
