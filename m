Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PPIC9ABvGmurAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 15:01:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCCA2CC592
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 15:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0896010E94F;
	Thu, 19 Mar 2026 14:01:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hI/YPyc7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC9C10E8D3;
 Thu, 19 Mar 2026 14:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773928907; x=1805464907;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nd6OQRLmGn0t0kGrczEVMl2voYqO33qdI6iNef11K/8=;
 b=hI/YPyc7dhOThvCjea9MTOfpRv1MXsjDPRVre289oK32YtX9PsuYcmQZ
 24alI1Y83VV45FARxXRxbuDXp4APu/TYzy4uazuprPCq7IMeSV7A/1Bt0
 WM9syV6x1j7+4MsolLUIsrLSrvcHMS+aOk199tfWXxVFtTr2aryZamXNE
 Ps1YkzB6lwxpAjaJlvzPsiwZ1pIhESsbjPNAYdsBFXSPnxiCgNkWsYpgm
 EJ+JFx3KGeLHUghe50iV/l2rq/1ffvsZcZ6J7e8pUUbgXjqDyeQz+Av9a
 getnO3Ahtp2+gGAC608ZKXW86nOycRaLwE/RfvM9tGL0nbXvrVxq+yJwb Q==;
X-CSE-ConnectionGUID: eSr8yYX8S/imh1qKzV8vyw==
X-CSE-MsgGUID: 27W04p1YQLie3OLrVLhDpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="86360631"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="86360631"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 07:01:46 -0700
X-CSE-ConnectionGUID: lyepmwVOQ9mKOX461hTTqg==
X-CSE-MsgGUID: pHaYANpGT4is3Yi0+CJVCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="253436878"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 07:01:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 9/9] drm/i915/wm: Include .min_ddb_alloc_uv in the wm dumps
In-Reply-To: <20260319114034.7093-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260319114034.7093-1-ville.syrjala@linux.intel.com>
 <20260319114034.7093-10-ville.syrjala@linux.intel.com>
Date: Thu, 19 Mar 2026 16:01:39 +0200
Message-ID: <b68395f61ce24edaf7f20b9bee0971c247f128a1@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2DCCA2CC592
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 19 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We include the Y/RGB .min_ddb_alloc in the wm state change dumps.
> Do the same for .min_ddb_alloc_uv, on the platforms where it is
> used.
>
> Also adjust the whitespace in the other debug prints to keep
> the values for each wm level lined up across all the lines.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 30 +++++++++++++++++---
>  1 file changed, 26 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 345767349988..4725927acfd4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2624,7 +2624,7 @@ skl_print_plane_wm_changes(struct intel_plane *plan=
e,
>  	struct intel_display *display =3D to_intel_display(plane);
>=20=20
>  	drm_dbg_kms(display->drm,
> -		    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%=
cwm7,%ctwm,%cswm,%cstwm"
> +		    "[PLANE:%d:%s]      level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm=
6,%cwm7,%ctwm,%cswm,%cstwm"
>  		    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm,%=
cstwm\n",
>  		    plane->base.base.id, plane->base.name,
>  		    enast(old_wm->wm[0].enable), enast(old_wm->wm[1].enable),
> @@ -2643,7 +2643,7 @@ skl_print_plane_wm_changes(struct intel_plane *plan=
e,
>  		    enast(new_wm->sagv.trans_wm.enable));
>=20=20
>  	drm_dbg_kms(display->drm,
> -		    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%=
c%3d,%c%3d,%c%3d,%c%4d"
> +		    "[PLANE:%d:%s]      lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3=
d,%c%3d,%c%3d,%c%3d,%c%4d"
>  		      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%4d\n",
>  		    plane->base.base.id, plane->base.name,
>  		    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].lines,
> @@ -2670,7 +2670,7 @@ skl_print_plane_wm_changes(struct intel_plane *plan=
e,
>  		    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm.l=
ines);
>=20=20
>  	drm_dbg_kms(display->drm,
> -		    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
> +		    "[PLANE:%d:%s]     blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,=
%5d"
>  		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
>  		    plane->base.base.id, plane->base.name,
>  		    old_wm->wm[0].blocks, old_wm->wm[1].blocks,
> @@ -2689,7 +2689,7 @@ skl_print_plane_wm_changes(struct intel_plane *plan=
e,
>  		    new_wm->sagv.trans_wm.blocks);
>=20=20
>  	drm_dbg_kms(display->drm,
> -		    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d"
> +		    "[PLANE:%d:%s]    min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,=
%5d"

I wonder if the space changes would've been cleared with something like:

"[PLANE:%d:%s] min_ddb:   %4d...

but *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
>  		    plane->base.base.id, plane->base.name,
>  		    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
> @@ -2706,6 +2706,28 @@ skl_print_plane_wm_changes(struct intel_plane *pla=
ne,
>  		    new_wm->trans_wm.min_ddb_alloc,
>  		    new_wm->sagv.wm0.min_ddb_alloc,
>  		    new_wm->sagv.trans_wm.min_ddb_alloc);
> +
> +	if (DISPLAY_VER(display) >=3D 11)
> +		return;
> +
> +	drm_dbg_kms(display->drm,
> +		    "[PLANE:%d:%s] min_ddb_uv %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,=
%5d"
> +		    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
> +		    plane->base.base.id, plane->base.name,
> +		    old_wm->wm[0].min_ddb_alloc_uv, old_wm->wm[1].min_ddb_alloc_uv,
> +		    old_wm->wm[2].min_ddb_alloc_uv, old_wm->wm[3].min_ddb_alloc_uv,
> +		    old_wm->wm[4].min_ddb_alloc_uv, old_wm->wm[5].min_ddb_alloc_uv,
> +		    old_wm->wm[6].min_ddb_alloc_uv, old_wm->wm[7].min_ddb_alloc_uv,
> +		    old_wm->trans_wm.min_ddb_alloc_uv,
> +		    old_wm->sagv.wm0.min_ddb_alloc_uv,
> +		    old_wm->sagv.trans_wm.min_ddb_alloc_uv,
> +		    new_wm->wm[0].min_ddb_alloc_uv, new_wm->wm[1].min_ddb_alloc_uv,
> +		    new_wm->wm[2].min_ddb_alloc_uv, new_wm->wm[3].min_ddb_alloc_uv,
> +		    new_wm->wm[4].min_ddb_alloc_uv, new_wm->wm[5].min_ddb_alloc_uv,
> +		    new_wm->wm[6].min_ddb_alloc_uv, new_wm->wm[7].min_ddb_alloc_uv,
> +		    new_wm->trans_wm.min_ddb_alloc_uv,
> +		    new_wm->sagv.wm0.min_ddb_alloc_uv,
> +		    new_wm->sagv.trans_wm.min_ddb_alloc_uv);
>  }
>=20=20
>  static void

--=20
Jani Nikula, Intel
