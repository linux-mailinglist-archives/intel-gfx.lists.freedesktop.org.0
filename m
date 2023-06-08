Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA032727F57
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 13:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB2310E238;
	Thu,  8 Jun 2023 11:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD67710E238
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 11:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686224795; x=1717760795;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4t+8dlUewRHUHwmS4LaeBECsr/RA7xNFCjWzFapAXBg=;
 b=DLkG4JIDTCnOYv+K8L5DjK7JgBeD2ul0oxOAy6c+jLRFN1GYpz33j6m1
 jSicCu59XEbOt7x6aMdXX4gH2DHuSrc4mVM5H1ak9OVeJ+4uVp6XKJZx8
 wVaONozqeWXkMkt7zXBqTGzLSuLsfSoFbUxnetTcsxeZwxoCiMtCKx5K/
 ZrmPKQRUZJfauasXjEUdSO7GeifxXHKgOmc8E7yiIDw8g4lWmVwt9PD5g
 DCTgpL5Bb+MpE3nXf3l+NLGnr1Sz+YIvhQ2N2QmuYtyqLflKMYRhBGMD+
 ENX/ikNzkc1OMVY+CrPjFeyN1QIO1hjHtVaOG24nGlhuD+Hgi9DBKqb01 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="346900309"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="346900309"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="884187622"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="884187622"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:46:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230606191504.18099-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-3-ville.syrjala@linux.intel.com>
Date: Thu, 08 Jun 2023 14:46:29 +0300
Message-ID: <87edmmrxbe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 02/19] drm/i915/dsb: Use non-locked
 register access
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

On Tue, 06 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Avoid the locking overhead for DSB registers. We don't need the locks
> and intel_dsb_commit() in particular needs to be called from the
> vblank evade critical section and thus needs to be fast.

Mmmh, I always find it slightly puzzling to encounter _fw calls in code,
wondering what the rationale was, and why we can use the _fw variants.

Should we start adding comments explaining why?

BR,
Jani.


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index bed058d2c3ac..97e593d9f100 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -96,7 +96,7 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
>  static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
>  			enum dsb_id id)
>  {
> -	return intel_de_read(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
> +	return intel_de_read_fw(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
>  }
>=20=20
>  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
> @@ -243,13 +243,13 @@ void intel_dsb_commit(struct intel_dsb *dsb, bool w=
ait_for_vblank)
>  		return;
>  	}
>=20=20
> -	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id),
> -		       (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
> -		       DSB_ENABLE);
> -	intel_de_write(dev_priv, DSB_HEAD(pipe, dsb->id),
> -		       i915_ggtt_offset(dsb->vma));
> -	intel_de_write(dev_priv, DSB_TAIL(pipe, dsb->id),
> -		       i915_ggtt_offset(dsb->vma) + tail);
> +	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> +			  (wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0) |
> +			  DSB_ENABLE);
> +	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
> +			  i915_ggtt_offset(dsb->vma));
> +	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
> +			  i915_ggtt_offset(dsb->vma) + tail);
>  }
>=20=20
>  void intel_dsb_wait(struct intel_dsb *dsb)
> @@ -266,7 +266,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
>  	/* Attempt to reset it */
>  	dsb->free_pos =3D 0;
>  	dsb->ins_start_offset =3D 0;
> -	intel_de_write(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
> +	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel Open Source Graphics Center
