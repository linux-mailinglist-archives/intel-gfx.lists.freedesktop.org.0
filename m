Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHj7MSIb2Wk1mQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:45:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259C73D9A29
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2026 17:45:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F76910E165;
	Fri, 10 Apr 2026 15:45:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELPMrRqg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 920E310E140;
 Fri, 10 Apr 2026 15:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775835934; x=1807371934;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=O92Mt2/ySGyqBMKuFXoDhSNWOFrDbeS4R5+Y51JXmMY=;
 b=ELPMrRqgZtFgHqRqU++7F2PpExdopJrTVdQxLnU4sYMj6kgC4ofcxnR/
 rDB6kVM4bzFnKXJwxyUokImM2T2nfcCszNDWRoFyyTPJeJdoAXVxRR6z4
 zMloxlqUDJSj72D/sSGh+PBTdvd3Wz3nmOzLnCLTgeNRgfsgRxLgOoys8
 2yF8V9xTKcGlrjjQKMAxT/OoWBpZzvRZmG5d9c4KQJfSfRLuZ6bago/Yj
 ZY1OnEn9cLPYNmNMAlJStEsHHH3zF2oDUFHkrG2RkVm5DASdQk7tHVbEq
 WLyc8gzxaoeyxbvwo82nQUvIZYyDtgOhtAYo7ZC/BrWeiP2k9Jijpmn+7 w==;
X-CSE-ConnectionGUID: 1Pp7kss4R2ipErAroVAgRw==
X-CSE-MsgGUID: RCU+pcTBSmyWbucjgVikoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="88300444"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="88300444"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:45:34 -0700
X-CSE-ConnectionGUID: rw+7s2QeS3e/gRlj27W/hw==
X-CSE-MsgGUID: C+2CoguyRBOFLOaRIDviRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="224376850"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 08:45:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/10] drm/i915: Don't pass the whole plane_config to
 initial_plane_phys()
In-Reply-To: <20260410150449.9699-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260410150449.9699-1-ville.syrjala@linux.intel.com>
 <20260410150449.9699-4-ville.syrjala@linux.intel.com>
Date: Fri, 10 Apr 2026 18:45:29 +0300
Message-ID: <22c69b0386a8c61230a06d915fb7700d0e9833ad@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 259C73D9A29
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 10 Apr 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> initial_plane_phys() only needs the 'base' (=3D=3D ggtt virtual address)
> from the plane_config. Stop passing the whole plane_config and just
> pass the 'base'.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_initial_plane.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/=
i915/i915_initial_plane.c
> index 060aa0388c39..6df57db9b62a 100644
> --- a/drivers/gpu/drm/i915/i915_initial_plane.c
> +++ b/drivers/gpu/drm/i915/i915_initial_plane.c
> @@ -34,8 +34,7 @@ initial_plane_memory_type(struct drm_i915_private *i915)
>=20=20
>  static bool
>  initial_plane_phys(struct drm_i915_private *i915,
> -		   struct intel_initial_plane_config *plane_config,
> -		   resource_size_t *out_phys_base,
> +		   u32 base, resource_size_t *out_phys_base,
>  		   struct intel_memory_region **out_mem)
>  {
>  	struct i915_ggtt *ggtt =3D to_gt(i915)->ggtt;
> @@ -43,7 +42,6 @@ initial_plane_phys(struct drm_i915_private *i915,
>  	enum intel_memory_type mem_type;
>  	bool is_present, is_local;
>  	dma_addr_t dma_addr;
> -	u32 base;
>=20=20
>  	mem_type =3D initial_plane_memory_type(i915);
>  	mem =3D intel_memory_region_by_type(i915, mem_type);
> @@ -54,7 +52,7 @@ initial_plane_phys(struct drm_i915_private *i915,
>  		return false;
>  	}
>=20=20
> -	base =3D round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> +	base =3D round_down(base, I915_GTT_MIN_ALIGNMENT);
>=20=20
>  	dma_addr =3D intel_ggtt_read_entry(&ggtt->vm, base, &is_present, &is_lo=
cal);
>=20=20
> @@ -101,7 +99,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	if (plane_config->size =3D=3D 0)
>  		return NULL;
>=20=20
> -	if (!initial_plane_phys(i915, plane_config, &phys_base, &mem))
> +	if (!initial_plane_phys(i915, plane_config->base, &phys_base, &mem))
>  		return NULL;
>=20=20
>  	base =3D round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);

--=20
Jani Nikula, Intel
