Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3018494BDD
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:39:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB68710E6C4;
	Thu, 20 Jan 2022 10:39:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78B8D10E6C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642675144; x=1674211144;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1kQTiAbMZc733Nldtx8CzPLlEEwoC+wkWrXOKFYKXVA=;
 b=HlSz/Gf3gjpedIrgFLAmRt+a/Q7FneRhX7DSurlultBmQPuD9BzR9yE2
 a3atRbHMbAlLM/+5DPi87nAwpJrbrHVqZ2abohzqYc1c4iamM4PyRchk4
 Sn/sDMpOnxe3g4CH05WZQPS8uNBr1nOk6HpanfFzAnD5ypOG1CYenTlef
 mLMEthLDlkBQwyjHCXr5jISKIZCBTZCUnwr3bHsQKMqqNtpexGD+DKirK
 6GeunDImZ0ZdoddnLwuSD8G43JgWIB+zf9tzkH2g+xIrETMuGQf6XeoU3
 p2tW7NyNuyjKkUXg4k5Y/RLA3IIC+wEvtU8WpsMWPC5VE9v/unSUamPbv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="225302907"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="225302907"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:39:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="475478557"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga003.jf.intel.com with ESMTP; 20 Jan 2022 02:39:03 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:39:01 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:09:00 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 4/7] drm/i915/mst: abstract handling
 of link status in DP MST
Thread-Index: AQHYB6QQfaVxp3QrUUOM0FNHICH9PKxrxFTw
Date: Thu, 20 Jan 2022 10:39:00 +0000
Message-ID: <636061b23d0042498c80a99596114cef@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-4-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-4-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND 4/7] drm/i915/mst: abstract handling
 of link status in DP MST
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni Nikula
> Sent: Wednesday, January 12, 2022 4:33 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH RESEND 4/7] drm/i915/mst: abstract handling o=
f link
> status in DP MST
>=20
> We'll want to expand on this, so abstract it to a separate function first=
. Improve
> debug logging while at it.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6de39056e2f8..5a7976768b06 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3639,6 +3639,21 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8=
 *esi,
> bool *handled)
>  	}
>  }
>=20
> +static bool intel_dp_mst_link_status(struct intel_dp *intel_dp, u8
> +*esi) {
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +
> +	if (!drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[ENCODER:%d:%s] channel EQ not ok, retraining\n",
> +			    encoder->base.base.id, encoder->base.name);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
>  /**
>   * intel_dp_check_mst_status - service any pending MST interrupts, check=
 link status
>   * @intel_dp: Intel DP struct
> @@ -3686,11 +3701,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_d=
p)
>  		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
>=20
>  		/* check link status - esi[10] =3D 0x200c */
> -		if (intel_dp->active_mst_links > 0 && link_ok &&
> -		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
> -			drm_dbg_kms(&i915->drm,
> -				    "channel EQ not ok, retraining\n");
> -			link_ok =3D false;
> +		if (intel_dp->active_mst_links > 0 && link_ok) {
> +			if (!intel_dp_mst_link_status(intel_dp, esi))
> +				link_ok =3D false;
>  		}
>=20
>  		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
> --
> 2.30.2

