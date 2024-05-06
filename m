Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 359798BCFA4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 16:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E0E10F088;
	Mon,  6 May 2024 14:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1X9Op14";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8E8810F9DD;
 Mon,  6 May 2024 14:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715004285; x=1746540285;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nL3NTL5xGnd3r0KLPo31WAcs36M5Ja6cp+aQlt/gpQk=;
 b=b1X9Op14zr4Gd3LWv2P4sCHrO52x4x+QYW5jIADXKr2yW72tmc11rhvp
 2cuCrDk+GhdYWRiX2s+nAPl8j0vkU8h4wNsgrxrGuIAmQ1a+mar/TivPs
 Ev4RBfDFpTApsaa2+bPi8pToSr368MxMXksNIzT+JB6l5BCdYr+eEfYS7
 8PcLmKF1kg9DhefF3sI+Y14NbyGeruhvDluxNswfHylKSKMQV9AOKN6tH
 YfFWs/3add+yXcYuc3DZDIrY8I9byL4arcongdhtH58u4DG8o9c8b1BBj
 H4Gfyz0y7ur3DgWHddAq5PcByZFZsBz6zyP0LbOlirq3C29WJAe5/pAgO w==;
X-CSE-ConnectionGUID: ELGPwziITuCacehW2pa8Qw==
X-CSE-MsgGUID: 14lpUjhPRG2VxKmOUCHBuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11283344"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="11283344"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:04:44 -0700
X-CSE-ConnectionGUID: goi0iCjpQCypJ6tEzyXgYQ==
X-CSE-MsgGUID: c4Zdmse1Rx6di28wj+O6BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28139966"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 07:04:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/9] drm/i915: Drop 'uses_fence' parameter from
 intel_pin_fb_obj_dpt()
In-Reply-To: <20240506125718.26001-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-4-ville.syrjala@linux.intel.com>
Date: Mon, 06 May 2024 17:04:39 +0300
Message-ID: <871q6fm3yg.fsf@intel.com>
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

On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Fence regions are only relevant for GGTT, not DPT. Drop the
> pointless 'uses_fence' argument from intel_pin_fb_obj_dpt().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/dr=
m/i915/display/intel_fb_pin.c
> index be095cc696ba..2b50c1946c63 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -20,7 +20,6 @@ static struct i915_vma *
>  intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  		     const struct i915_gtt_view *view,
>  		     unsigned int alignment,
> -		     bool uses_fence,
>  		     unsigned long *out_flags,
>  		     struct i915_address_space *vm)
>  {
> @@ -274,8 +273,8 @@ int intel_plane_pin_fb(struct intel_plane_state *plan=
e_state)
>  		plane_state->ggtt_vma =3D vma;
>=20=20
>  		vma =3D intel_pin_fb_obj_dpt(fb, &plane_state->view.gtt,
> -					   alignment, false,
> -					   &plane_state->flags, intel_fb->dpt_vm);
> +					   alignment, &plane_state->flags,
> +					   intel_fb->dpt_vm);
>  		if (IS_ERR(vma)) {
>  			intel_dpt_unpin(intel_fb->dpt_vm);
>  			plane_state->ggtt_vma =3D NULL;

--=20
Jani Nikula, Intel
