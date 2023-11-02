Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89FCC7DF1B4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 12:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F072910E862;
	Thu,  2 Nov 2023 11:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DFC710E866
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 11:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698925929; x=1730461929;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=BKyg2Dgn7j5LqomEXfIk7SdY+9IBkTEBcI4S8l+mQwc=;
 b=XrmHAB3vDV/vUqlHZSP1Z5KWOHULrhn0rrBWSeits2SYcYHAW99U6ubG
 dR/rD5YnqepcSJDwIIcBN4UGUn0OrrSF3fXGUIIclh2vSMKY40UAYBurg
 +wDhlE5w5nBp4/56TyAXJ0HsK0MAMDjw68XsRE0ZYNCzmJwXRQsbxHG0C
 xMZnBiopzyDhYEkbgN1Hz508ygGELFpZjIti9qfo1XT3+C+6EQQAJ0g5/
 m+SCtW1FrbnFHEwx7D70zOE3oPQA9l/BvtQ92UBR9H0S2EG8a+gp3YhZi
 EkJfJPSw1wd/v+xz41E07BaLdCmWldgzKhcyqWHFOBVHLjxARo1vvf19Q A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="379088323"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="379088323"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:52:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="2407486"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 04:52:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231102112219.1039362-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231102112219.1039362-1-jouni.hogander@intel.com>
Date: Thu, 02 Nov 2023 13:52:03 +0200
Message-ID: <87sf5o2x0c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use intel_bo_to_drm_bo
 instead of obj->base
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

On Thu, 02 Nov 2023, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We are preparing for Xe. Xe_bo doesn't have obj->base. Due to this
> use intel_bo_to_drm_bo instead in intel_prepare_plane_fb.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index 3b9a66923422..06c2455bdd78 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1096,7 +1096,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  		 * can safely continue.
>  		 */
>  		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> -			ret =3D add_dma_resv_fences(old_obj->base.resv,
> +			ret =3D add_dma_resv_fences(intel_bo_to_drm_bo(old_obj)->resv,
>  						  &new_plane_state->uapi);
>  			if (ret < 0)
>  				return ret;

--=20
Jani Nikula, Intel
