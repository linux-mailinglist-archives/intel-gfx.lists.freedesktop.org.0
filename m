Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17891579158
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 05:31:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E6010E1DE;
	Tue, 19 Jul 2022 03:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A054510E1DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 03:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658201493; x=1689737493;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+4SnyKr0pM3dVDMdPDicFiqc/2NDf988Z+6qAMUh3hs=;
 b=TwGFEC0I+jF3TN6JAWQes8yn0s8s3VlGIG5clGLw+jf9ufYZag5aBXeh
 mbWD85Bl0g+bRoneJ9aV9jlNpvfz/Ina6x1gdzOPLKkdOrgDqbKAaly+G
 pNSPc8lybDmuQr0beiqANqz75kmY01j6vgVj1YtMKz8/w2yKqP+8bQV2j
 v7nAGwnDO7yc6xxS1OWTY95PyHul83U0h+cOvYFsiT5glhwYygN6INy+F
 jWyUYEiEOfzusK6EL9UoXZfqWm3vS0fJST4vsNFwvB+btOYO7bK3t6NkT
 ql8TqAqd8zhfO6E9D5TcgG/kAK9HIpSRkZygA8PfqXROZ33gKarmIJJwK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="348066942"
X-IronPort-AV: E=Sophos;i="5.92,282,1650956400"; d="scan'208";a="348066942"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2022 20:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,282,1650956400"; d="scan'208";a="655556492"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jul 2022 20:31:32 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 18 Jul 2022 20:31:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 18 Jul 2022 20:31:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 18 Jul 2022 20:31:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3viktNluHNXECnbPx+1weVvpcfS3Rx4caQJ1SIEYiJhEaBXw7UcRie95L6kJljD/2Umc2acSX72B5UDYNSKWW/vG8C/KTe1nEgWWH3M4TiLYW4rJqRFUn002bPs0YdhMZop4UuWhggF1Qiiz1s7AYJTIegcIJ0V8BnjhWe2fCnGFy9JzT6j9kSTn182m3hG/xAls7GzH15ZHsxLf9ZTSZTvbPaLDnwIL8wKsO5N1AbTdy/09vtI9au3whz2bgiwHRb12FRuB1XZyL850SOZCUhd/d72RGAxJSl1Ix6wWfaffjNYczH5A7ZxlA/EzCL83AF39SfaT//+HtmU76vdkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBtsm0Oj0vN0gUxZwY2mS9+AyE/RB9aBWhEne1mV1lU=;
 b=NuvMQiSAW4bjL8rFXl5ZaonU9zJRkcC4yx9/caDGdO3HRNaSjviA/0MawDbM8DAUok6e2wmx/G8b76GlYYUqZGVOXEdq9EA1GHTVtczUw2/ZiRIxKrNgfOxFY97TJI2gEfLzsI3JrzHXFlbIdVsiu80FnML7caMsknD7QOJdLU46m+L3szQhUEaGgIvJ9WZXqeo/2iE5FSV0m+n2Nb/cCswWBRna3/HRuVw0WLRnWxQiCDpLZb74Yn0SYpdDQY204KVxbmSMM4uGSE45BNHZBCNC1WrKbqfhkZXP5O4dWrLkuxDRWe8oJVo0BwHZ9H9UFvbKtgCuce6g1ddqwtZZUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.20; Tue, 19 Jul 2022 03:31:30 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5438.023; Tue, 19 Jul 2022
 03:31:30 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
Thread-Index: AQHYmtpo4UR9b7tcu0+G9SgR/ifAA62FCCjw
Date: Tue, 19 Jul 2022 03:31:30 +0000
Message-ID: <DM6PR11MB31775421CAF98B4F838C1E1ABA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220718191212.166141-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220718191212.166141-1-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 879cb683-5fe0-4009-9b7b-08da69372b9a
x-ms-traffictypediagnostic: SN7PR11MB6797:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WH1bNRz9ztTBkrmX1PU454il1G4bc4gacBirOfeMUknLiEf4j+TVJ9WUEZb9Oho6ajQg1GNjbM5D9wls3HZcKnz9zged54aj640amxA8BxoKFDlEV8joX/F8FV0yNcKtPPrOnbAzaDA+AqKlGLCVRgSUQgIIR4tYuJ1jSitB9aeoIOEIhLENH4KJSchSvPsuGj6yvdy/4zuQxv3zrrik9OZkaVO3cqPut3d2UmGIY0cW+wYwsFRfLbxRfSTUVRNLBIV0AxDs8uAbagk6eAy39r1rViD+rWZzMASibZWlmmNuvvQFDod+U7DOi10xRRGHIyuwJNETt//7FFQI/BZ9DaOTa7GAaOyumAbefEI5ZjslTAizuvHJY+jmmKsUHjd52DVhTBM6gFhywYVZd/E2UBGMe4860/gcolI3Szo2glqnNio44oV0XRGZmQi7cU1+PsqVxX1hzSwqP3JgKyaQXOOySX/iZ810UHHMENmKe3PixB2x/arsKtknEBjdAf6PvIZRsOtTP9hnCEllaXpmzNVXXRc5He7ROCrTsPUeA6Hp7d3y4u/WhEtcu21O2YuRH1p4TUvWoTS/CGcNKQ/Q4txsf3Qm5YlctSkA0gQSC1Be6RF/1WYLmIX6sLYrjhAfiztMnZC6AhbgPeyyjxIPMo4g3M+6Rg3J12wlRHV3Kg/Dr5OZVujRvR5h/Pe0U0ZoyccMb1WjCHTeNPHZ5gjOd+r1YBJ5aw7bvGs8lFCiqoekG2w5Tkd30amYvZojtkran8pYjRk0t1XfnPrqq27g4tN4PkZVZOdlDw8kTzqZh5OiUo2DhScAtB4heIUbGj74
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(39860400002)(346002)(366004)(396003)(55016003)(2906002)(33656002)(8676002)(5660300002)(52536014)(316002)(8936002)(76116006)(66476007)(64756008)(55236004)(66946007)(66446008)(110136005)(66556008)(6506007)(7696005)(83380400001)(71200400001)(86362001)(41300700001)(122000001)(478600001)(82960400001)(38100700002)(186003)(38070700005)(26005)(9686003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ALuhpgBca35HXieAnPVnsGKKr4mq0GMiVVvQ5cR+I2qEkzYQsL/6lX9JP2LL?=
 =?us-ascii?Q?07e22+jK0fxYU6KebDRr6i1Ql5UAL6aM/OeRpQlLuQu5IlNa4zU49TW9dtXU?=
 =?us-ascii?Q?TgYhi/nxYRpUQdqRCJdolSH94FpEZhRSj/7Q0d/NcsjYnYOFgKz7CNZAih22?=
 =?us-ascii?Q?ieOCvdevgR8qYiewMI+eizPkR6D3nqcs8+82jS5yKCRFJLQZHKr5Qx7/vSSB?=
 =?us-ascii?Q?k3FxLaAEmYnyF17TXPKvQ0KnaNDlMdABaWJW0IHN5gLRf7niNnW3hpvjDNXc?=
 =?us-ascii?Q?JZj9jkh/ETnDa7Kld3S/2Rt1W6peeyJDHQVPLf/+YWBVgoKP4CkEi9cSM99a?=
 =?us-ascii?Q?FToUbxwEAWs2Jo4osdolKHhiPw1qI0tHHvG0AjEWsMrXQEmF4x/z/bTAu7RW?=
 =?us-ascii?Q?cKGBPKqKbFSmVJ33bn42/RDTJJ8ZIb+0UFhATTSUUyD/qRJ5xDQ5s74cRhZp?=
 =?us-ascii?Q?T+DIObz5/cPvjGW9vToDkap9+Ls14t4YFlQ91wQv6B6VxSNlJEqcLfgyDgrk?=
 =?us-ascii?Q?lxX+QWCWh4kUxJq6DXUaSuVg5ii7qXQmLpFVHbC6w+KHYyg1iJy5ZonsDCmx?=
 =?us-ascii?Q?J9kp+m9uACQDZAb2FGY0OsgQ7j55MFDR9d+zvlNKIK9L8h1U5l4BOpTHDBjA?=
 =?us-ascii?Q?Di/iBeKPk3Pq4jJF+3L/pF8KLZogVii5FLLIRxKInhOVjU5iiN51XxVMOMp4?=
 =?us-ascii?Q?vmJ+gK9lCdZyHZS1YG6i27JJXojwwxB35w4MAuxfwSRKaiE5f66p3MkmoK6L?=
 =?us-ascii?Q?KU18doCn5vwOUNFDT6PRbexrFGKA0CIumSJh9kvzo0KMT39jWjnWap3zM7rs?=
 =?us-ascii?Q?LEz1l4z0+cCKJ6uHLTQbbN6vBYJ+QcO/2FE+DsnAgnjl9/8G6qkSEVL6Kocy?=
 =?us-ascii?Q?uD8CxNY16LB/zlI93OOKELQNBvVTbK6XHHNSLHh6bRpKgXBHAdVqVmwL7ZCa?=
 =?us-ascii?Q?FDuyvz5QEXu5q8iMdCOkYzIZnVslE1RfzKjBWi+H5W+SjirIyljs2GhQXQMq?=
 =?us-ascii?Q?dERfg0i5cLo8VKZQ4C5TwiTs39Lx19Grz66AIBWgnUC4nydfp63Uuxlmg2cr?=
 =?us-ascii?Q?QYKJVZ6tTwQyU8Y4Iaqe32j2N7oNjaQQDDeqUIfkGKQOx8WCFJgnko63qM71?=
 =?us-ascii?Q?oIlHqcsD+7Lwi7+TUmi6Nbff1/ke8m6YGfg9xVj/kWJKGijfqEb0S3OIa6tP?=
 =?us-ascii?Q?nk0BmG6vd2pY/WdSXm8GfLUy4bQB1RS+7Yrleh1efxs+gyihJwhi6UQj3vw0?=
 =?us-ascii?Q?M20dT+OuqZ4z7P4FqXRv2oYbe/qzUe3pmq/+oncVwOJ97FGSMdiVrs4RDnic?=
 =?us-ascii?Q?36CKAEGHRdY1UBIPMVHuXfhoYmv3ot4yiPCkD4TefU5HpMhIDTV6sTiJqpSW?=
 =?us-ascii?Q?at/Q2G30AWzqV5PPuo81mIN/FhfwxWgOAoTlKx5Xml5NJXx8WWG0jemC7+p6?=
 =?us-ascii?Q?Z1HMpfND2J+OLnAVQRi4oVhVnd9hhXrdI2xArM2ggXgRPCI11wisTb6C680f?=
 =?us-ascii?Q?iav5BEm5ICDZZvKulEzlszfRZDeukB/pPuUkPV11tMlK6HCKHgRysHNeSK37?=
 =?us-ascii?Q?TBv9hPIByetG9KuZBwISuFcLwXNoifnIGh/Ydx9n?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 879cb683-5fe0-4009-9b7b-08da69372b9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 03:31:30.1860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jr98H42iucwBST+vUrH9Z4Qj9jeaFakZeIHecLpFJRtQWVU4bUj0wU1cSNyVYiPyPgqms/ZjG2h8RKwE38nNeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Anusha Srivatsa
> Sent: Tuesday, July 19, 2022 12:42 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup intel_phy_is_combo=
()
>=20
> No functional change. Cleanup the intel_phy_is_combo to accomodate for
> cases where combo phy is not available.
>=20
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index a0f84cbe974f..b69208cf9a5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2082,20 +2082,13 @@ bool intel_phy_is_combo(struct
> drm_i915_private *dev_priv, enum phy phy)  {
>  	if (phy =3D=3D PHY_NONE)
>  		return false;
> -	else if (IS_DG2(dev_priv))
> -		/*
> -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> -		 * SNPS PHYs with completely different programming,
> -		 * hence we always return false here.
> -		 */
> -		return false;
I feel it would be good to retain this. This is very well commented. In fut=
ure upon adding something
like DISPLAY_VER(dev_priv) >=3D 11, like the one done below can create conf=
usion.

>  	else if (IS_ALDERLAKE_S(dev_priv))
>  		return phy <=3D PHY_E;
>  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return phy <=3D PHY_D;
>  	else if (IS_JSL_EHL(dev_priv))
>  		return phy <=3D PHY_C;
> -	else if (DISPLAY_VER(dev_priv) >=3D 11)
> +	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11,
> 12))
>  		return phy <=3D PHY_B;
>  	else
>  		return false;
> --
> 2.25.1

Thanks and Regards,
Arun R Murthy
--------------------
