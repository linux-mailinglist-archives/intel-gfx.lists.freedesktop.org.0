Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B12CB6227B0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 10:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A9510E599;
	Wed,  9 Nov 2022 09:55:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9784A10E541
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 09:55:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667987741; x=1699523741;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RxGTMBdUDNYFFrgqt+uYsKwgCNx3/dzz4BiwPlKQgHQ=;
 b=mluYUuVBKrfo5HBas/HQn6ghwNBHg9ayUdJrwE7KdkBc7ZWUjrfnM+xE
 XBa7nSwhnDyExbWrqlTlAzyjGui5x4isb92pwoFBDGAinHYOuy1xYPUAa
 nBY/fU9Q6Ukudbc6Rb+PKv7KTgSbMdDmadA0vJ587qGqboLTMqL+kykAA
 2uffz0JQHk/jKJZPAjds0EKNVWbagtyxmA+uPvyjd/979SvPw211RaPj0
 bNVE9d3qmfy81HvXB/Jz15zLVNKOa/jZOFBzBMUZP+f+nEVm8Rnnw05qf
 jeFwyEdHZsGMyJgDcukwqDT4ybbA/zmsp+Emzy1nnM/o85oa3kH+gMKBQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291326675"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="291326675"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 01:55:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="631200812"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="631200812"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 01:55:38 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221108211822.28048-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221108211822.28048-1-animesh.manna@intel.com>
 <20221108211822.28048-3-animesh.manna@intel.com>
Date: Wed, 09 Nov 2022 11:55:36 +0200
Message-ID: <87zgd078pz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/edp: Fix warning as vdd went
 down without driver knowledge
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

On Wed, 09 Nov 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> Kernel warning triggered as vdd went down after certain time during
> aux transfer in connector init sequence. To solve the kernel
> warning adjust power domain and vdd wakeref count.
> Currently issue seen on ADL so add the above adjustment part of
> ADL platform check, if needed will extend for future platform.

Do you understand where the original
drm_WARN_ON(intel_dp->pps.vdd_wakeref) warning comes from and why?

What is this one? What are you doing here? Do you have a backtrace of
this when running patches 1&2?

BR,
Jani.

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 0975e49f8d03..1857bbcc6fd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -587,8 +587,15 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *inte=
l_dp)
>  	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
>  	intel_dp->pps.want_panel_vdd =3D true;
>=20=20
> -	if (edp_have_panel_vdd(intel_dp))
> +	if (edp_have_panel_vdd(intel_dp)) {
>  		return need_to_disable;
> +	} else {
> +		if ((IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) &&
> +		    intel_dp->pps.vdd_wakeref)
> +			intel_display_power_put(dev_priv,
> +						intel_aux_power_domain(dig_port),
> +						fetch_and_zero(&intel_dp->pps.vdd_wakeref));
> +	}
>=20=20
>  	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
>  	intel_dp->pps.vdd_wakeref =3D intel_display_power_get(dev_priv,

--=20
Jani Nikula, Intel Open Source Graphics Center
