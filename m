Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCjRH4QFA2r1zgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:48:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AED651ED42
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA9B10EA1E;
	Tue, 12 May 2026 10:48:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bLl8Ziac";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB5A10E2F8;
 Tue, 12 May 2026 10:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778582912; x=1810118912;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QZgLnludgqHy+zk/QMFxd0FbIc3BUwgZifollD34RgA=;
 b=bLl8ZiacvRj81t0h12gsnZ0430jRuZuadHexgPkKADLN+GUPjK8UqiQS
 53vXUKRtgLtemAYGFQSFHeCRV03p0WH37LY1aCOvGDaSPB15L7hw+u4uR
 G2QrbkG8UHYnc5rgwPu8jNs4GgTNYfgLwxuTqRNjRFgfY9gloWHusINso
 vn/eL56unPd2egNQC7zxHClCoBS6yb9iYdASPE8koX+wg/9CCHXr5bbCF
 SEZEQ1OlxN5JIxvQxE2zKDebtOEFJQa7StVXnC/9SSUYZ2MVi0XH0FLn9
 c2WdHycmniY3cfH2Ft6u7jJoWDvpLqMXq8hs2FTWOMoh13TglHjF7HlPM g==;
X-CSE-ConnectionGUID: 8chSfjBjTfGRdarzx1Q0tA==
X-CSE-MsgGUID: FcPrQSrES/GSg4J5IoxI/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="90589452"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="90589452"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:48:29 -0700
X-CSE-ConnectionGUID: tYQP95IKRqmonz6SDG+LnQ==
X-CSE-MsgGUID: 8ecKhElmQGCu1GUoUBFxkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="236880081"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:48:26 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/14] drm/xe: Abstract the initial FB PTE checks a bit
In-Reply-To: <20260511214122.8468-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
 <20260511214122.8468-10-ville.syrjala@linux.intel.com>
Date: Tue, 12 May 2026 13:48:22 +0300
Message-ID: <4cc2bd3086c250786df3a059cec22921242575d9@intel.com>
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
X-Rspamd-Queue-Id: 0AED651ED42
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
> Add a few helpers that allow us to abstract the xe initial FB PTE
> check a bit. Still very ad-hoc compared to the nicely abstracted
> i915 counterpart, but whatever.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/=
drm/xe/display/xe_initial_plane.c
> index b7e0685351bb..0dabc5709d01 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -18,8 +18,19 @@
>  #include "xe_fb_pin.h"
>  #include "xe_ggtt.h"
>  #include "xe_mmio.h"
> +#include "xe_ttm_stolen_mgr.h"

Not sure how this is related to the changes here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  #include "xe_vram_types.h"
>=20=20
> +static bool is_pte_local(u64 pte)
> +{
> +	return pte & XE_GGTT_PTE_DM;
> +}
> +
> +static bool need_pte_local(struct xe_device *xe)
> +{
> +	return IS_DGFX(xe);
> +}
> +
>  static struct xe_bo *
>  initial_plane_bo(struct xe_device *xe,
>  		 struct intel_initial_plane_config *plane_config)
> @@ -43,13 +54,13 @@ initial_plane_bo(struct xe_device *xe,
>  	if (IS_DGFX(xe)) {
>  		u64 pte =3D xe_ggtt_read_pte(tile0->mem.ggtt, base);
>=20=20
> -		if (!(pte & XE_GGTT_PTE_DM)) {
> -			drm_err(&xe->drm,
> -				"Initial plane programming missing DM bit\n");
> +		if (is_pte_local(pte) !=3D need_pte_local(xe)) {
> +			drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
>  			return NULL;
>  		}
>=20=20
>  		phys_base =3D pte & ~(page_size - 1);
> +
>  		flags |=3D XE_BO_FLAG_VRAM0;
>=20=20
>  		/*

--=20
Jani Nikula, Intel
