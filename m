Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BB373204F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 21:27:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86CB10E19A;
	Thu, 15 Jun 2023 19:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBBF10E19A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 19:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686857274; x=1718393274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Pnb/uz5rSVt9cYLWbVzLqmskX4Gspf6mdjJMUZoxwU=;
 b=dp/ElAXrdA2jFtX3Q8loAgSCRe+WSmd3jQnyF9qfujm1nY31PD0Y1Zpm
 MQq4pTnYjkqOZAggY46cGxjjXP7nnd8Yxcz1yNM7XL0uSXcmhJNq2Lk30
 CeutvF7A5EOrr3R8yZV5hedjAmd0pIwQDIcCXGAZtW40am3+lL/FoyTDS
 oY7diWDiYMzClZIDhGHX/RoOYu6Vg3unv1Bv6uWbdYETzozvEuf/qQWoS
 ZYYwAGM6FL0KSW1BlFxJ/aMwO2cpT0Kw85VHRzkUc4aFbda8jU8eKnI7y
 lqvmZWABreBJnJOegIwmDKz8F6b04dtaGUccXchBKn+UN5sapNNsnbFwi Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="356509687"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="356509687"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 12:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715724910"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="715724910"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 15 Jun 2023 12:27:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 12:27:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 12:27:48 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 12:27:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCxENaHAjhvFw96RhlFAU4jZfGvJMy0gTy4fHnNPljWcYujJvWVEI1QL7S2N7laL+McquVgeOAgTuaIG1xBv8ZiJIrvIwnzl4jatdfZl77a9e+IteFQEb8S4qAjaDyQDCi7z7RQOoJaXZae5V4vP23b/Atlt3lsIXTS97/RWbVejRoUdxbuFmRjEsrmu6/CjQTg1kEnGI2emqLeDIIjm6Zc+zep2zy+cDk4FmgoggPCmm0Twfb4CNtfk+24eqahSLh6kTJ1As5HEDupzDmlC6o+UaUZhWAYBHcUZ9/0BjFqvfvqq9O2HOkxDBjeB3vgzPC9JPQpey+xGmLmR3PhLIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZ380sU1WCdyzR4ncHdIkQ0IfO4ci7HeFQDMAUKk6Ic=;
 b=XUqdAHuvD9CEvncj5aWxmDGcO1raYiUxxhmmnqj1opg5achZPEhRtYN8somR430bY3WEo8+NntQ1l0RLadzU6lvc7KDQiVmpV3zh/XJtlvnwomZsdywRvt20Oa5t7RCI10pxUEVx8u2ZSvwnDwfxvcDvb/i1xc+uUDhGofnhBYHb9gB6fXpwGLVdB9j045UHOgnwrJ0WwD94Us2EpEnLym5mFvKEbWKPtUsjLAcbmzTwfAlO9vAyYXafIVc1708DQhaQ2dd/hn3uKXOIDZtyvuwCflb+YuadsvHA38LE1Ay/4KH+5o/R+gZdDEaUs2akjKnQOZ/hJrOf25OdOMfkHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 19:27:40 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 19:27:41 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 01/11] drm/i915/TGL: s/TGL/TIGERLAKE for
 platform/subplatform defines
Thread-Index: AQHZn0ZWvRFIcCW28kamcAvFIaZJvq+MQDfg
Date: Thu, 15 Jun 2023 19:27:40 +0000
Message-ID: <SJ2PR11MB7715AC2F2A50FEA6AA8ED94CF85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615050015.3105902-1-dnyaneshwar.bhadane@intel.com>
 <20230615050015.3105902-2-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615050015.3105902-2-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|SA2PR11MB5097:EE_
x-ms-office365-filtering-correlation-id: 9f925dba-542c-4368-56f5-08db6dd69607
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L/UFnSzhxxfTwBBcxGf/S++/zFw6wAA8aGs7P2DL/ElLYMIEmC/PSHaQXwYNYlcOxipKddgJmUvxHNUgEpA4XBRESUmIFGGPmC0YuyznWt6RdxPbMCjI6K46wKEh3+39grLQBNCs2aCDcnut7Z2hixyaXkABUjvTtIgBAcTDylkn97v/da70pykMKWnheVl48MjWK19HfHSZBLAxFf5/7RNNK7sHt60lsqfMu1boqnAlrm05C3OmR8VpF+ZIfkCh248wwUd1yf6PDN4wPaBFLNIFu84XJIARaiqK0YNFiWYSSHWB4oZceEzTWwcp31D65yJ0/arqEeTUIbbM6eTnaIwMWUwK3pHAqVdu2UIGFPhtFnQ0MMNtp7UExTDXZF7GpgUtyWsxmX1vNY2Dx7+tnC+lvRxw55oFsBtI6fhThF57nYh+OdqEWEQOS8Qh+jDW7XynrGwVSwH3ZiWc3V79iko4jFuFfTp3DiDrb1Esthf3sgbeWW1jJxg6VhKWJbWtjUevPYiU9PZG3th4KDpLF/8xjJr9tDq7pvAUz/6yK7CsNp8jRW0tBumpJDiyMijHqe2Acd+PEkj1HOmS4x7ClKBFZFat4TygurdkdriHyXSxxANrifeXTd08Fbx2jA4B
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(346002)(39860400002)(136003)(451199021)(110136005)(8676002)(41300700001)(7696005)(86362001)(66446008)(66556008)(8936002)(64756008)(66946007)(66476007)(316002)(33656002)(71200400001)(76116006)(4326008)(38070700005)(9686003)(478600001)(26005)(107886003)(55016003)(5660300002)(52536014)(83380400001)(6506007)(53546011)(186003)(2906002)(38100700002)(82960400001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pK+nVCVu9UkbXBWzGkRwtBADRb+8vn91j7HKWqg5pe2PMBbwgUvk0BeW3Oc9?=
 =?us-ascii?Q?J4gNNI7gyPmaw5izAb5Cd98XLxiUVm9p2Z23VxRcZlu+FlCj2W/kwPO8L9++?=
 =?us-ascii?Q?OE2rKZ+Wch6vgxsSdC7YkI1hzHN7J2dwezHbMxaA7rLvJZsM2cnvd8T5gC9u?=
 =?us-ascii?Q?m4tHZVbPBmGhiPhbMAjTKnLssKi5/1vMgLYOUVbOsiAirhkbZ8DBGj06f9sj?=
 =?us-ascii?Q?Cijd9IAcYsq2uNTlIFBacGc9QwtHH5dUPIX4zuzDcvWiIO4YLM/OYEtpvQS1?=
 =?us-ascii?Q?EZ77anRCHpa0wJXrB7w9q/zYzEQAJppuTmQMpgAaxd50/rLeaR4+a5SVGMXI?=
 =?us-ascii?Q?lqjxR1wttKgwwfNLXjtKEjQVTSb+482WonNsw9ZoUdV6AA9FeQE2jl62Z2pQ?=
 =?us-ascii?Q?j0XHSI0w0TTcO9Idhruv7O5BqbtNBxg6+LxvoAI6uYsdgG5rxvEUzLHHypIo?=
 =?us-ascii?Q?wS3ZDnOsGbY9ylSZXWvElRWvwjiehFhNFgXODOiOSeKYEWkaDhVIqJM+6OYQ?=
 =?us-ascii?Q?63txd9oWGQQuMJhHWzFNEpZLsyBmea386RGKOPUEtp4PKI2QzNbSZdTpxv8T?=
 =?us-ascii?Q?3EhhtUBqQMQmQUv7KhdYYQ5KudXayGdStByJVjwckF3xIjhZgWgKX5Hpm46D?=
 =?us-ascii?Q?+TczLSeeAbzj12gppCfYqXbVT7+o5EIkQG7X83q+nWkwoiNnPRYSukDVv/jT?=
 =?us-ascii?Q?sv/qr7wFbmqNDL8oo0LeviwKD6yNvuE2WNqijavlSA9nmLblSOR8TGz2XjIC?=
 =?us-ascii?Q?fEmdErdZUf1+xbvJyRqvf/fM0RrS4eKZ12wSkAImXCfuFmeabQAWCQGaAD4x?=
 =?us-ascii?Q?d1lli+pcUAp8SRkesSN0Hmx7O681DGO+NWsY2hxUY7c3GBk00dA7uTedpp+R?=
 =?us-ascii?Q?/ZEsTBrWddu7SdovPtx7EI8RHfjKrdVcpu9xw3aC6Z9+WjbIUEox7aEQCgxN?=
 =?us-ascii?Q?LglBcOwxQ1ExYuw1Q58YbV9bFe5eY/0b3v+i2tUxuT16pcqCDA+zev05TO8u?=
 =?us-ascii?Q?pf1tLzSnWSBnXsjGvBRFBs0l1uA37BGE/z5xNk5oo7P4M3Dv5pmAPUBUUSWL?=
 =?us-ascii?Q?HoXNG90fuu/hy6C9CEBRzvrho6Ro2HWHJhP2X0BWeNW9O4Mud5COGyvyqsE7?=
 =?us-ascii?Q?r69HEVQ/pduc9lrsKzpFRPKS9Z8rSGMQYYhqceT/jfElu4KFj1zmOVG+2JQm?=
 =?us-ascii?Q?t930nDZ41ZgxnlLhYuSRFXUrxVRhb9/F48wi+cNNAnIgyB0o77ZALK8LlpAU?=
 =?us-ascii?Q?9K0t68kIJ6erx1eBNZYhCew1EKonExC62xP9jMm2/uXGFOYCaWyDorv3lDPj?=
 =?us-ascii?Q?SHyKSHPAJYuIJsIkhvNB+weFKy5GCYq/yzVJmE9JAADmC0WRKZKpeHjocr/w?=
 =?us-ascii?Q?ey5tP0Dn7a2/HI7DbbKDZ0W3be9qXF8ZiwpkW7CXrc6RI+G3T9e0V88sQGpX?=
 =?us-ascii?Q?JCRirrvse/SQzZdyGdC6iWTzYfKhsWuqTrjSnzDiYeY1cIKL6u0pdG6CjjR5?=
 =?us-ascii?Q?O5eQqLHXRFwPIYRffcw3+0A7HG5VQ4EjbST526rfGzDn59PS1iekwIVAWT+h?=
 =?us-ascii?Q?3r1WchViyhwsrLd4tKl+wvgGrS/fCwvpxj2GZUu1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f925dba-542c-4368-56f5-08db6dd69607
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 19:27:41.0051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CkVKHOpaVXRtQHwDWmv2tb91nKOzBtZM2gFyHsu4yLp9x70F2d8S7FQsouLI1djATI+QkYsj6pA90f5H8oixiZyMLLPc7LIk/6t38I4/Ybk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/11] drm/i915/TGL: s/TGL/TIGERLAKE for
 platform/subplatform defines
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
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, June 14, 2023 10:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH 01/11] drm/i915/TGL: s/TGL/TIGERLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace TGL with TIGERLAKE.
>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c | 2 +-
> drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 4 ++--
>  drivers/gpu/drm/i915/intel_step.c                  | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> index b7d20485bde5..9e34cc103aeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> @@ -1390,7 +1390,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder
> *encoder,
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20
>  	if (crtc_state->port_clock > 270000) {
> -		if (IS_TGL_UY(dev_priv)) {
> +		if (IS_TIGERLAKE_UY(dev_priv)) {
>  			return
> intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
>  						   n_entries);
>  		} else {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 6b01a0b68b97..26def9cb86e4 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2196,7 +2196,7 @@ static bool gen12_plane_has_mc_ccs(struct
> drm_i915_private *i915,
>=20
>  	/* Wa_14010477008 */
>  	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> -	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> +	    IS_TIGERLAKE_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
>  		return false;
>=20
>  	/* Wa_22011186057 */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index b4cf6f0f636d..0f30dc890209 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -647,7 +647,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_ICL_WITH_PORT_F(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
>=20
> -#define IS_TGL_UY(i915) \
> +#define IS_TIGERLAKE_UY(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
>=20
>  #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) &&
> IS_GRAPHICS_STEP(p, since, until)) @@ -662,7 +662,7 @@
> IS_SUBPLATFORM(const struct drm_i915_private *i915,  #define
> IS_JSL_EHL_DISPLAY_STEP(p, since, until) \
>  	(IS_JSL_EHL(p) && IS_DISPLAY_STEP(p, since, until))
>=20
> -#define IS_TGL_DISPLAY_STEP(__i915, since, until) \
> +#define IS_TIGERLAKE_DISPLAY_STEP(__i915, since, until) \
>  	(IS_TIGERLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index 8a9ff6227e53..67054c87bb5f 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -213,7 +213,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ROCKETLAKE(i915)) {
>  		revids =3D rkl_revids;
>  		size =3D ARRAY_SIZE(rkl_revids);
> -	} else if (IS_TGL_UY(i915)) {
> +	} else if (IS_TIGERLAKE_UY(i915)) {
>  		revids =3D tgl_uy_revids;
>  		size =3D ARRAY_SIZE(tgl_uy_revids);
>  	} else if (IS_TIGERLAKE(i915)) {
> --
> 2.34.1

