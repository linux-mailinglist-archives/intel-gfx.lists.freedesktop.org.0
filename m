Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE136E7E7C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA6210E140;
	Wed, 19 Apr 2023 15:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B5910E140
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918728; x=1713454728;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ji6VriyHXtJp73dPmCDDQRQSHQa6n8ODp5PSosnCTg0=;
 b=DZm3y21cE9qPADAeZSat7zMa1C/+ZCi9Q6J/D30IiRQ9HHepVe14g2fC
 Y5qQORoAoqTq900X3GJLpIRPDIaGo7nmAOBch8MHYpUf1JDIVdCHPRgvF
 G4UoeSMMvQ158Yi3MTCX8JqhN36x9CRnRQsb1+cBNhl8vxbYIEjMpo4Pr
 5Qylgay+TVAuLTX+Q0gkfhsrby3yrJBQFwl5n6kYdvFFk5AdRJYUJjKSj
 vJUL1juL4QfagfvTOqBWGnP/0OlD5yohAVmndTzAXwrS7lIFYjkHK1AvF
 NPqeyG0Xd6GHrGojfzKVeaz8hjldCVdfGzr2pgi4qLsOe1GESXoDe46nb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="325096214"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325096214"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="641816834"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="641816834"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:38:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-13-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:38:44 +0300
Message-ID: <87jzy7yj97.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/15] drm/i915:
 s/PS_COEE_INDEX_AUTO_INC/PS_COEF_INDEX_AUTO_INC/
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Fix a typo in the PS_COEF_INDEX_AUTO_INC define.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h           | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index a96f8ecbeec1..4437d130293a 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -658,7 +658,7 @@ static void glk_program_nearest_filter_coefs(struct d=
rm_i915_private *dev_priv,
>  	int i;
>=20=20
>  	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set),
> -			  PS_COEE_INDEX_AUTO_INC);
> +			  PS_COEF_INDEX_AUTO_INC);
>=20=20
>  	for (i =3D 0; i < 17 * 7; i +=3D 2) {
>  		u32 tmp;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f8e6b86facc3..a5ae291de55b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4146,7 +4146,7 @@
>  #define _PS_COEF_SET0_INDEX_2A	   0x68298
>  #define _PS_COEF_SET0_INDEX_1B	   0x68998
>  #define _PS_COEF_SET0_INDEX_2B	   0x68A98
> -#define PS_COEE_INDEX_AUTO_INC	   (1 << 10)
> +#define PS_COEF_INDEX_AUTO_INC	   (1 << 10)
>=20=20
>  #define _PS_COEF_SET0_DATA_1A	   0x6819C
>  #define _PS_COEF_SET0_DATA_2A	   0x6829C

--=20
Jani Nikula, Intel Open Source Graphics Center
