Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A1CA83D83
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Apr 2025 10:52:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF14910E7F0;
	Thu, 10 Apr 2025 08:52:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BO2vc+1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C57E10E7EC;
 Thu, 10 Apr 2025 08:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744275150; x=1775811150;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=5Qfk264FGYABiKhN1zzBmsscX+dO/wVcZl30cyR8cSg=;
 b=BO2vc+1Op6csJMUWN8EHfGiCrLn4L6eIkUEaA5dPzTOBk2lC5gMbuBVt
 H7j9Id9BNRi2IqLEhB2Oyg6Fqo0JRMc4x6mEpOqwRdngNEYHpW7ZdupSq
 bTk1U2nZG9VImMfM9dJokRFpmvARKapGTGt+gXtlx4gp+Uuc0fVjG6ZL2
 klZ8LKjZeQnNu7tQ/cm35kWa5cyYNAkuU2v6pb2R81dvduxb6HAgCNH45
 ITI2NYAXKEXaTgogqrwpWPPsD7G8wOZSglvW0+zrGVsJseJY6dxdhDf7k
 +DWT2JYIdVsITabTGfgfKjmpqe3RxcatSGzNyuVW/ndjLCPbSE3k8GA+0 g==;
X-CSE-ConnectionGUID: BGbnal4RRC6+UF/qpPTrWg==
X-CSE-MsgGUID: k9xhNfo6R3m/d3eXIrQ5WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45669165"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="45669165"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:52:30 -0700
X-CSE-ConnectionGUID: 55lVENcUR0udhLVlPkqpag==
X-CSE-MsgGUID: iKpCRuADSyuB/3FZxadrLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="128758755"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.28])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 01:52:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/6] drm/i915: Use i915_vma_offset() in
 intel_dpt_offset()
In-Reply-To: <20250402172240.9275-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402172240.9275-1-ville.syrjala@linux.intel.com>
 <20250402172240.9275-5-ville.syrjala@linux.intel.com>
Date: Thu, 10 Apr 2025 11:52:24 +0300
Message-ID: <87v7rcv1o7.fsf@intel.com>
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

On Wed, 02 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the open coded vma mm node stuff in intel_dpt_offset()
> with i915_vma_offset(). This will also include the VT-d guard
> in the result. Granted that should always be 0 for DPT, but
> it seems prudent to include that in our DPT vma offset check
> anyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dpt.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i=
915/display/intel_dpt.c
> index 43bd97e4f589..2bf4ad6a0fdf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -321,5 +321,5 @@ void intel_dpt_destroy(struct i915_address_space *vm)
>=20=20
>  u64 intel_dpt_offset(struct i915_vma *dpt_vma)
>  {
> -	return dpt_vma->node.start;
> +	return i915_vma_offset(dpt_vma);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index a5b9d87b2255..d40e3d96b14a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -300,8 +300,8 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state,
>  		WARN_ON(plane_state->ggtt_vma =3D=3D plane_state->dpt_vma);
>=20=20
>  		/*
> -		 * The DPT object contains only one vma, so
> -		 * the VMA's offset within the DPT is always 0.
> +		 * The DPT object contains only one vma, and there is no VT-d
> +		 * guard, so the VMA's offset within the DPT is always 0.
>  		 */
>  		drm_WARN_ON(display->drm, intel_dpt_offset(plane_state->dpt_vma));
>  	}

--=20
Jani Nikula, Intel
