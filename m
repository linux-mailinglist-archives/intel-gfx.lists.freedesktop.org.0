Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E41494CEE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:29:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EB110E1F9;
	Thu, 20 Jan 2022 11:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1672110E4BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642678138; x=1674214138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TWBUTYsj8EA6iNN/M8I0/UJ3ESGpr3irZWnjuIioB34=;
 b=Gq9PkTpb6CsVS1MTJbEFNGbdyoAQv4FUQEvU2Hz18FraoBI/cdWS3w+k
 oQski2dsvLbrztIy5XnQgs+kmvjWyzuT8BSGmONTRoozG++uSoA60iz5w
 LsTjU3eUFwmKdh9T4Efvcm3AFFIFYTJXkUz9XzAB5ywzQhtuubmCsX+8X
 2fyBr1IybJrCOayphNg2E/rE33RoeBxDoL6J6LOWeGdUa1/yjKtbZGYVd
 2lPQPwT14JKFr2/boDNSHZHRAQHpAuOphKDINwxyH60GqRfVLPeISqJGV
 C2Iq8qTWFFXv+FSrdBDVLIVBfk+FocvZUsOQ5XRUq5u2TKgTfJPy4RFu5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="269730527"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="269730527"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:28:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="532736020"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga008.jf.intel.com with ESMTP; 20 Jan 2022 03:28:56 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 11:28:55 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 16:58:53 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 1/7] drm/i915/mst: fix
 intel_dp_mst_hpd_irq() indentation
Thread-Index: AQHYB6QLHQbSj9Yxb0KCx/kkXP/yuqxr0mcw
Date: Thu, 20 Jan 2022 11:28:53 +0000
Message-ID: <62dda473efb64f979913a4de055c6c08@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
In-Reply-To: <20220112110319.1172110-1-jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH RESEND 1/7] drm/i915/mst: fix
 intel_dp_mst_hpd_irq() indentation
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
> Subject: [Intel-gfx] [PATCH RESEND 1/7] drm/i915/mst: fix intel_dp_mst_hp=
d_irq()
> indentation
>=20
> Remove extra indentation.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 942a755a0c48..e789ecbc69f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3618,12 +3618,12 @@ static void intel_dp_handle_test_request(struct
> intel_dp *intel_dp)  static void  intel_dp_mst_hpd_irq(struct intel_dp *i=
ntel_dp, u8
> *esi, bool *handled)  {
> -		drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
> +	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
>=20
> -		if (esi[1] & DP_CP_IRQ) {
> -			intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
> -			*handled =3D true;
> -		}
> +	if (esi[1] & DP_CP_IRQ) {
> +		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
> +		*handled =3D true;
> +	}
>  }
>=20
>  /**
> --
> 2.30.2

