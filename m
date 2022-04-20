Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A18509041
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Apr 2022 21:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 454AD10E2AC;
	Wed, 20 Apr 2022 19:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01CAC10E2AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Apr 2022 19:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650482370; x=1682018370;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mupKyYz1amncktUeS9X97EnXkytQ3sEnJCYq14Kvk+s=;
 b=HsKgow+Qbx6VafpaTAFK0iYE78SBZ4DfRg8sHeMZ21hp+eWutNQay5YA
 24FqR4METPgJwWumGIZVjHpWuO7sv0TmycCBpqsKgvhYTrjYC4FI8fTk2
 OUjKF6cTaGJxh7Mgj2/RmzWLSsGm053oEbuqRZ6cw33kBYkxoVjz9cxaf
 ysifYbjVsFQe3NZzT0SnmKeEKCqmyK9cMvfaEANZktma8lEPkKalR3IPF
 cIZilD7X5+Cekn0UpCCaAMKUDIU8CQiK3dkOxonjrrEdMT1kXCWYHf+Hp
 59poUrpnT/j9wKx2Amv4ppBZdGSUvXEHLrq0mK6xKKu6vVtVkNvosH+4B g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="350584725"
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="350584725"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 12:19:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,276,1643702400"; d="scan'208";a="727633567"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2022 12:19:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 20 Apr 2022 12:19:28 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.027;
 Wed, 20 Apr 2022 12:19:28 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Disable DC5 before going to DC9
Thread-Index: AQHYVOopXl1y59U1w0i/ItZuhgE49qz5LKJA
Date: Wed, 20 Apr 2022 19:19:28 +0000
Message-ID: <c4e8b9c84bae4bd7a431cb390c5bae86@intel.com>
References: <20220420190921.419345-1-rodrigo.vivi@intel.com>
In-Reply-To: <20220420190921.419345-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable DC5 before going to DC9
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



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Wednesday, April 20, 2022 12:09 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Deak, Imre
> <imre.deak@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Subject: [PATCH] drm/i915: Disable DC5 before going to DC9
>=20
> According to BSPec:
> 	Sequence to Allow DC9:
> 		1. Follow Sequence to Disallow DC5.
>=20
> which is:
> 	Sequence to Disallow DC5 and DC6
> 		Set DC_STATE_EN Dynamic DC State Enable =3D "Disable".
>=20
> I understand that we haven't had any issue so far. But since
> DC9 is a software thing, it is better to disable DC5 before to avoid any =
conflict.
> And respect the spec to avoid potential future issues.
>=20
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6a5695008f7c..b3cf5182044f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -883,6 +883,9 @@ static void bxt_enable_dc9(struct drm_i915_private
> *dev_priv)  {
>  	assert_can_enable_dc9(dev_priv);

^ We are already checking if DC5 is enabled. If enabled then don't enable D=
C9. SO the change should be- if driver cannot enableDC9 because DC5 is enab=
led then go ahead and disable DC5.

Anusha=20
> +	/* Disable DC5 before enabling DC9 */
> +	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> +
>  	drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
>  	/*
>  	 * Power sequencer reset is not needed on
> --
> 2.34.1

