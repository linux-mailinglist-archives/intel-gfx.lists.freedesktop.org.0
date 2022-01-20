Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D86494B97
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFAE10E489;
	Thu, 20 Jan 2022 10:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F8810E489
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642674289; x=1674210289;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ro78Excs+awKcUkfJ1+rWgUZfSF4eCsC9oOy8RBYLOk=;
 b=KiuGvYuYgQGGGn6ZK9T1q4ruVMZsNQlRh/Fn4UkQBHKQcsDgXjMtWEIE
 8IPhReZD2cuLuLFhSHNmsN+r17HxZm6Sb/4k7klHN+DAlq89Vp0r6mCTV
 +nGYo3km6pp0srDBOxDKgsYfVRt3fYPk/kgy3PMW9QCuavrAPZ4F5Qp/p
 FwqwdVDl9wyPhBusdcidyBR4WvH4ZFTQP8FuFaxc9T8L7kHKZs7Ut8QYM
 Rlf5Tggj0bd9QDQz06gNY02a8q6z2yOWby0Vw4FCQ7/Y1AN7FI12yGfjJ
 rFB871Mm31fSMBsmMfi+v3gs4oRkbMFqdDy1e7O7kLfduooaeWTEfYnfp Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="232683242"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="232683242"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="694150721"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2022 02:24:48 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 10:24:47 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 15:54:45 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/7] drm/i915/mst: fix intel_dp_mst_hpd_irq()
 indentation
Thread-Index: AQHYAZIinDOeafjJs0+DN6Qeo0fC96xrzISQ
Date: Thu, 20 Jan 2022 10:24:45 +0000
Message-ID: <c46aeb750c694f84a6ee92871e69a8a1@intel.com>
References: <cover.1641317930.git.jani.nikula@intel.com>
 <a16a25e3c5fa4ed0a927f77ed736424241dbc001.1641317930.git.jani.nikula@intel.com>
In-Reply-To: <a16a25e3c5fa4ed0a927f77ed736424241dbc001.1641317930.git.jani.nikula@intel.com>
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
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/mst: fix
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
> Sent: Tuesday, January 4, 2022 11:10 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 1/7] drm/i915/mst: fix intel_dp_mst_hpd_irq()
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
> index d6d8c9922feb..357c39e09bf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3617,12 +3617,12 @@ static void intel_dp_handle_test_request(struct
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

