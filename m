Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86B8769AC1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68F910E2B3;
	Mon, 31 Jul 2023 15:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709F010E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690817224; x=1722353224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DWkCa1DHMlMOSSoB7pWHDz2Q7/EHGO2X6RCA5XxvLok=;
 b=MxJ2DE0jZ/Lxvxk9NFH3hQS8Wi9d0pfN9raXzAr30xXd1DN7prLgD+xW
 upzyN9yEWJCcqVLQODQBLnMiGg0b1TR2WyiuesUBU+B2kYaGujLMsZ/FJ
 7TozKRx3QiHot7MSHccLGJV4AyHnRh9WtPkHa2dKLFsomoFTIXJlcLZMx
 UlhcnsGlcLSdl2lKc6RaxyzTYI7uoLzUOEOzesCqNHffBbss4NIgzVLgS
 hO3Jwk4X7h7+EnDwSWDPGpPr4IUJuYENYLAMtSgghFzT9WWKtR7uOa1jy
 uRDpB7URR2f9ACCC5sqRF9WSq6X1+tGpi1d4caxBApobAtvLMTUIEpvtv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="353973281"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="353973281"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:27:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="902180233"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="902180233"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 31 Jul 2023 08:27:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:27:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:27:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:27:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AwcluZ0GUCe23duZwHCkC6W4sLtBikvkhl5GDUvJZdozGuFyDfRDvakOv5CcvCLdLj5NeDAwTroXMHqxrRsgtZQzcegEmDwuooXr1UkvJR26+tFB9+mJBa3xAZf8JhIKadO2Sp5zqFQTZYP5hawq0cQUF+BHw8W3FjAbZd/sMH+R4KnbhqPEKlPMxJtvinYY+/3iYVvFYJO3IZWZjtFOVGXxtz0cS1MGAfCNL6RusdhMDH16yh1RzTCSpZg7JR8pAFPJFbe4shu/kuAyvfiAse0CgQcSZ19tqoWMbo2ymbt6USLG2DYVc9WTVFucl9VodJ+774CORUlFfioaK0kmuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xyUMfKz6pCkyIhDiO/jt+JbxKD41AD1S5z6BrlVpETw=;
 b=jTTOAVrLeiRbNy3GdM3o8dIF4VYC8C+rsHa4dCh+wKojNQVCx66iEKjLEchr3xL15QeGSiCdPW1Gvbbipoaz01mPi+KpVVgSsSeTeTQJZTXZo26zSd69TMyFOBY6aavuyvt+ZlmmR2k2Dhc5WoMC/vmYzFAICOiEoqyxLl75Fn69rSXnP66RozpPuMlthlTIpVaBnd/btkH5/cDxmdcnJG3BJBMVDYXPnAqEzcAIq7DK74ZVOXS+H3irgXr9/K7Jn2GeMBUllVoxrnEnH4u9/ZIKPXRH8S3ijniyR1xZMQAPtkNxj0GtYodqQ7w3cj7UqO/uRC0EedAR29B+3Z6cnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Mon, 31 Jul
 2023 15:27:00 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:27:00 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 11/14] drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for
 RPLP defines
Thread-Index: AQHZv/zVDW7DPt5KT0em+I8lSTyzA6/UBpQQ
Date: Mon, 31 Jul 2023 15:27:00 +0000
Message-ID: <SJ2PR11MB7715DDDB3C8377CC00171695F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-12-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-12-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS7PR11MB6294:EE_
x-ms-office365-filtering-correlation-id: 002ae75e-70cc-4496-f484-08db91da9599
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZuxyBpwPgR8vh1jDlRsYJ8fOg8M3IbIvqMS1/P6z3ie5759NEYQPt/d/d8vQa3m6swFRHGwbCX1Nh1Q4Gq7C0+l4nZw6DM7NUmOMcPOhdDIN0iv8sb50grurj8tzIS5ScBurIrKiSyFrdWhxJqKAqF7ZM24zrNxfWbytDm5lW6en0GXfXRh6v8p8lxPT1Si8lVj0PYuLlIqAxtPjqSF3S7OsfIItGZLUnG6eGy/UYIu6x0hxxaemUx1UGZHQ1DFS/qudws/mesN7dpRv8hLkJUKv59ybpJ4JYamLIdW9Lz48vsGDiyxLyhzneSB+YpMqbFrjm92L8VI2ydPc0agLVR03H7Z+dz/jSyMRsS3gj2rbtlFaBQdjIHKZUYHVXsmhYZkC6hxDxZk3WIEdMkg0UtJl11DpCEL/fjxBgYUSvvAaNWFG75j7UssI8roF843cnantJ+k1OnulLCe8YuPLj+obZYd2phUXY+p3avlTvBXrUzKwFxa9IbKvoHb35R9CucAUaRtSkNo6jNJZaw+Gbzf/ur6w72e2q/pS5nUmCAbeV/qQLFw6yjIvVT14CB+FMJ3872bbPesIwI9oQRi93v4Kic3zXaYy6Re87bs+U7UT+jJYJueC+JjdeCQLWx9W
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(2906002)(5660300002)(8676002)(8936002)(52536014)(316002)(66476007)(66446008)(66556008)(64756008)(41300700001)(4326008)(55016003)(66946007)(76116006)(33656002)(38070700005)(71200400001)(53546011)(26005)(122000001)(82960400001)(38100700002)(186003)(83380400001)(9686003)(7696005)(110136005)(6506007)(478600001)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cifhWmtYNIGFv5Yf0lHU8Vr5GCIs0ateWDjySKirZqGMY7bF5iu1eMLDHo1M?=
 =?us-ascii?Q?oL9d0Am5HljRpXgsokjIr8eTtCP2cnbT3v2odO30AWYwZSyG+4XpItAqRPg5?=
 =?us-ascii?Q?76xV8rccPSHz5VC40+LXoERgrtQ/nil7yIrhF6UjTqw1rasDXVTiO6xgEuNW?=
 =?us-ascii?Q?vk547IZZWLlLi4soG/2AKO7EFQlbavX7lMvyMTJ4K/0cI+J5FqQkE8GGCIFJ?=
 =?us-ascii?Q?d02AfujWDQwR8Xhw6JntSF5HXQb1NNJoAH3hZ5AosVC/uw2B831xvqpJy8I4?=
 =?us-ascii?Q?dDW45bSPjg/d66e0MjXLIUxp2b9YIMdZT38hXWhOfq+InOZND5MAFz0+egJN?=
 =?us-ascii?Q?sFpEdCpauJR/3xhQeveTmxs2W5C2ia4c1XfF6iHX+jkdywx8Ja8E/Ed5oLLr?=
 =?us-ascii?Q?issqkbjU8R4o5MLaeEi3rt2q3GlYfm1Qp0N/bqHpMbn5br2EdAObzeGbcyhk?=
 =?us-ascii?Q?729Z1hWt9X1iGcOcKw5D3OXBw+yVEobqjBLYaUnNiIUNqE5TPRfgiLLzj7bn?=
 =?us-ascii?Q?0kySQiG2uMBxOn4GOo2/BNZt8nuhpMiZQnwWq3sf8ZlUyNTteAP0wknrAc42?=
 =?us-ascii?Q?peR2DxKcBqdLtGcvK/CHL6rm09hOQqdRlE0usZKPT4KNvcEJLlY4CY+13Xzc?=
 =?us-ascii?Q?43Gcg6yDfKUqCfdzu2rK2mojOnmhYD3pHwO+MCGg6GvHNXvOJ9ZV/F8z2Py0?=
 =?us-ascii?Q?UM0K3auoQxSrE86HMn/Yto9ADNbd7wmWiKJ4u+5o2hd5IO9ok/X1daKRmuIT?=
 =?us-ascii?Q?TRLSlZoeJPkb9GHUtmOjo+696MKWtDZsUDTycVu+n3WbCW71n0X0KXYOvlQD?=
 =?us-ascii?Q?OTz0iixD41MlZ0Vhpy47DDC7w0RPfpwZ7DdM2mvut/kCQ+Mx6L+iQ51Ms2Wv?=
 =?us-ascii?Q?DE3qUTfY3uZZ9YbEX/UE4EYQjdyqASh1P4aMvreD5lpJXk42i+mjoTB71PnC?=
 =?us-ascii?Q?sWWjf5jBcYQAFcr4VEVCN3f2owVIcNoXiq2unTUumLN+Dggm1VIpN7G4HuI3?=
 =?us-ascii?Q?FiVi2cnlj3woV+OTYZmzOVhZcBdo3El1ZIlZiDZPN0kZHs9bcasSkjkV5srU?=
 =?us-ascii?Q?EyEuGD7l70r2e4Ac/y7T3s2H64t3S5VfKgJnXzMjSM3Q5HA31fey6dLQhNej?=
 =?us-ascii?Q?jOvrzTkBFIbqAxR8U0UhpRZ/6ABydTAN7BOLlSno5m4j3VY5Ktzj9Uqy2P9T?=
 =?us-ascii?Q?CDqudzuaFY43N8+qBmiNat53cGxpgLicXc+TND0e2xxlYVAEeZad7c/MXlSR?=
 =?us-ascii?Q?gpurrQ+fOkg4WSNZKbCp0TR5osJFmZmcwncMCb08F5Al0oMMGo8N6+kjKHp+?=
 =?us-ascii?Q?zIu6yjITC0pCFiuAqGmHM/QFtK641VK70kNyOI0zI+MZOQRmCE1AwWfBUauf?=
 =?us-ascii?Q?Lxrxcm/ZK0T0JGFg+mOtWkdG/y3RaF+dsAUfYtiKCiTu4n1cXFXov+qQ15wY?=
 =?us-ascii?Q?OokrNHmRe7jOw/gB+Bp1mOnS64iqMh1+ofFURGsiUyVhWu77PnVUWyScWBZE?=
 =?us-ascii?Q?MKawGWzMfHcCpyz3elABdYB9DxIdvyr9pfDP3kSYN4hJTPgk8+BDfnRcwZFJ?=
 =?us-ascii?Q?7WAHANqMJuBXmmEUESCYVqvAlA3SnnS/EhvHs/Nj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 002ae75e-70cc-4496-f484-08db91da9599
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:27:00.1550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Torm851bg6qR1HDycCC7Y5unJsDvYNQiCFOoTQcLFLXAJH8x0BmYBBOYBDJ5G4iRSAiF8dqioaNmkuzPJghwGICNl95N2df3kEVFwSok3R4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 11/14] drm/i915/rplp:
 s/ADLP_RPLP/RAPTORLAKE_P for RPLP defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v2 11/14] drm/i915/rplp: s/ADLP_RPLP/RAPTORLAKE_P for
> RPLP defines
>=20
> Follow consistent naming convention. Replace ADLP with ALDERLAKE_P.
>=20
> v2:
> - Replace IS_ADLP_RPLP with IS_RAPTORLAKE_P. (Tvrtko/Lucas)
> - Change the subject
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h   | 2 +-
>  drivers/gpu/drm/i915/intel_step.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index c24be1875769..4e07ba69642d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -588,7 +588,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL)  #define IS_ADLP_N(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N) -#define IS_ADLP_RPLP(i915) \
> +#define IS_RAPTORLAKE_P(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPL)  #define IS_ADLP_RPLU(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPLU) diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index 4ca22d0c945b..7601122765b7 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -195,7 +195,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ADLP_N(i915)) {
>  		revids =3D adlp_n_revids;
>  		size =3D ARRAY_SIZE(adlp_n_revids);
> -	} else if (IS_ADLP_RPLP(i915)) {
> +	} else if (IS_RAPTORLAKE_P(i915)) {
>  		revids =3D adlp_rplp_revids;
>  		size =3D ARRAY_SIZE(adlp_rplp_revids);
>  	} else if (IS_ALDERLAKE_P(i915)) {
> --
> 2.34.1

