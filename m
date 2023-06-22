Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E906573A2F4
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 16:24:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BDC10E572;
	Thu, 22 Jun 2023 14:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B571410E57A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 14:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687443852; x=1718979852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZPnW8auxmYkJiiExjoedZGY1WGc0mL6f3sRpyg0z8/g=;
 b=iP55/5LobdWxwZ2Sx1wuxUSz5nrf2YV4oZYITlI1oPsqumuMJ0hnmejb
 pCAVvcO656nbDaNbzbqPGyqQtHfEkEwqQzrDQWAqSDH/3/nRzT3nBl53M
 RvAYV9Rf2uBpvZh9rFc41Kzyq7uKUAmG+67ON8+09hWpDjRJs0YYWtfv1
 FO2xbSzK6pCn5xaESLKubiELD7ZUDiOyz0z5ERkeocf5M+1kz6y/Etw+4
 AheZUm1WaGaMd7zXXMOM2EfxpD4HMkvmZYJJEu6p8HZHXMRJZi7a7urlG
 enwrYRlEjYJBGGjuj+1frxj16lC8czjOBolY1v6skyAHF1KvTxBsnGTS/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="424175909"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="424175909"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 06:53:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="859448910"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="859448910"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2023 06:53:14 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 06:53:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 06:53:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 06:53:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ErCwe9BzhYyuTxf5TTrsnoq09y1c4ZVGNolvzsFFo9Dgb3AMPsGq/hFo3uGp6WMfFNUiVNi3NHijLIxtuURgF8HZPHlfrcJFwJUedW6Bp6ifAZCRRe5qGaPIngMxrKNrkaiNxr6K5PXqW+0okOQlSdeSZNRIp7m8jN3cuGVZSFGdZCaTmNEh53CJCn4zUZdoZLCwF7jLD2dRANLi/1DQ3FwdDxz8bPruzbgUm/MWj+msv3U88OejScjkH45BsiuM+99f1JoFoGXGkh9H41mN2Tng6gq6yTAcF7jkaYlxC9yMZo8bMFGTCDzaiaATI3N1xkvHPp9LBAa8NN5I4fR+uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/59VJ/zgmn1xyaEDFKM1EASgTQQPwjlOOFLXUqCVjv4=;
 b=V387YmZuDqDSbaL/yveydOlhlyx7ZsljM/AxqeIpfmewdGtpG4cx2fJ8iPms//NT+CLaUd4081CiigDIzHQGIE1qTbAI2JA5NjuqvYOBNeZir4Nv/xqmTK82XekgchozPBW4yV+lUfxY2yl69rEw/vERnSdBpgy5tX2PqZ+0ZkD422SFOsECr260G8HgVFZF70gORBRc9Zwz8pg1cJVbezUoazKBYXaHdvZsoQb4z9lwWCMfWkhjAsxs6dCkrHC+THKxlzHe2yY3l1TpAAcETvmb/32PhkcH1q67k69jElgwXLV29IiV16wzqR0VkxIKF6GkbYanO+PipssunNlU5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MN0PR11MB6087.namprd11.prod.outlook.com (2603:10b6:208:3cd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Thu, 22 Jun
 2023 13:53:08 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6521.024; Thu, 22 Jun 2023
 13:53:08 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
 capability check
Thread-Index: AQHZpB5Is8c1MGCsRkqyMcwJpk0O0K+W2QWA
Date: Thu, 22 Jun 2023 13:53:08 +0000
Message-ID: <SJ1PR11MB61298B7FA1EB5421838C7D1CB922A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230621014156.1994797-1-suraj.kandpal@intel.com>
 <20230621085453.1996166-1-suraj.kandpal@intel.com>
In-Reply-To: <20230621085453.1996166-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MN0PR11MB6087:EE_
x-ms-office365-filtering-correlation-id: a25d617d-f5a8-4c08-313a-08db732802b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aSrZlG+NJw+TOlkVnPAG4SCAgeLa8wNXL6QhSJLDoWFU3oqxey5yi5zLfNbDE+V6TjqCDuiDwfbcJACyelSvfdHXadksWSv/CSp5ibFEhxJ/5q+T3KER2G2kBsX/W9Zd3wT5rs29wT5dLFsL8W5nRY7aoZsDVlKYpo3Z/TxDg8UPRBnW0YFu94hA3EkDRZinQqt9AzLWFfYmGEum6axTIggZMAkXr3wqBUDD8tyNU6cA0qOtrCQTFD3meAbp4itZe6flbAOeHgi1GgJ9ait4oLwThC1M8QDS+uZo3m/6wHdTEwba8mLpFU/Kl6kVwKE9jSA/HxAgKwSbdlsNb3Bgt7pbPyCnQmEt+pEYw+zQ4u9rh1bDlWTqcFY/nnpRHVE5QydKyVnSNp1TSi48PeTSMQuM7DFn4iR0xBfYXn8MtsVXhWiAmQvyCOOnoqZNXP1RUj+l4U+0mkxNTjzClLKa+jUneltIRENk7eX9RjkcsYm3WdMEweBehlSCMW6RghTyQoIZlS8Ven3egLAndKv1yowkiPHaI0Md6IhsDZAmgIAkdjTKgjSGilR2iIYRStWep/ZGcP6PTf16wVxn0JXqso81TegHfRJQnT0mWXmxiY6GM6dVru7mEuCXUhN3hOyn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(39860400002)(366004)(376002)(136003)(451199021)(8936002)(122000001)(2906002)(38100700002)(38070700005)(110136005)(55016003)(66556008)(66946007)(66476007)(64756008)(66446008)(76116006)(4326008)(86362001)(33656002)(83380400001)(316002)(41300700001)(8676002)(52536014)(5660300002)(186003)(82960400001)(9686003)(26005)(71200400001)(6506007)(7696005)(478600001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?12FX3BZ0tlNBRF5AdTqk0pkARQNIt64ZrX9Jna2MnnVgTqg/P2qBTi6sXwj3?=
 =?us-ascii?Q?EfQnZ1VyQ16mgp07JgYdSETzc5l7sYHLNaPVdnj1U2n3LcPJU5IkrOw/RHGM?=
 =?us-ascii?Q?S0J9a2RFVztGFmF0QFRlXCFi5vZPVmvvS5s3nrtOhjzuHZUd4g4d0QVTpYy9?=
 =?us-ascii?Q?BmBS29eu0liSUFMugbf0LC7Z5XaWULwfEEN8sUWhdWMiXyk2AICOQ4rHLAys?=
 =?us-ascii?Q?mXEm8qILW87OJPAgmi2g7zQJZ1BB6uDV5wgbMzs/VrM2paeQTP5CpTYzEQPk?=
 =?us-ascii?Q?zWPpoUVt/Zr3AeWWclgSYqpyhvlyw4XQnPZVYhGdu6sk5qHvKlz3BrJmp7yU?=
 =?us-ascii?Q?Elv1LtlJ0p6hpU3H6zWp+8fWAsf401rERAZ2YXQGaEPIA2o27HHC1NobGmy9?=
 =?us-ascii?Q?ufy15+hAm+5dN1SDul+f0dAT7SmQbECiIpj4RMkp9RoqB7vMMA1hr4UAs2m8?=
 =?us-ascii?Q?0d4hMpaljZU+zkb3tPZhuHykKVzzxj5OVB15QSOh+GFsS1mBouDGpp7tXFJ0?=
 =?us-ascii?Q?xunfYUT77ebVkm/8yRJqORFPhakY2RuHM+R1Mg5cWZeMxzAXNQEQ69S3l1jB?=
 =?us-ascii?Q?+YA2Ovj7hdgLv/k3HjOMwd407pcwML6Uae5USXxpUMydOeKC1W1M8n5YAn1J?=
 =?us-ascii?Q?BYiqpna+K4acywLQTbq9ZKwKiadL6gRDLzhefxmtmKv9NjrbE1NWXUmCdDgp?=
 =?us-ascii?Q?JE2IiExqLdvh/RCeocoSEcvGhMWwifdsJHDLOt/tpXsEn4qGVb+O+5AqsC9Z?=
 =?us-ascii?Q?CRkcP+IHChKvR+76did1kw7A+aWqAwxr6x8kZKrdPoSi7SDdkYWjaykoj3mC?=
 =?us-ascii?Q?Sd7rxFdpzGTQkFGDjVoP2+uKfaRr2LRFE9e31Y+4MOIfidUGKVl8c0YKK1na?=
 =?us-ascii?Q?O3eq8OhRyDIX3fr508He+TH61lwEonzks5vanLb1Dd1bOiajKGUt8Npv5/55?=
 =?us-ascii?Q?+5NGu18hIkEfTbUCCqunsDA+lFxQNcjs3nyZCvOxrdtjSdI1VJ6rJuthT208?=
 =?us-ascii?Q?RJKrRH7x8zPydcKTHHRwKs2gVWQfSiCiXZDe8plF9eeqDjgJVShM0XEE9IsW?=
 =?us-ascii?Q?s5VCNTLJFPXXD539d+U25X4dNwoJseXuTsSA547mUTrRHGPs/juPs2tMmDyq?=
 =?us-ascii?Q?O2JJQI3FCZ27Lh+uwOawo9jiZLDqy1Um4ug+WODy8Jhw9VwXrMHgLP3DmHVM?=
 =?us-ascii?Q?fLSHocli4lGjEush6hxJD/yJPqhHTDKqfQSXbP2xH0uY41EyXBSrtf4nW7JN?=
 =?us-ascii?Q?Ym43/qClSk8AnKV7jCjIYpz7cTszRY9BfAaC2U6aGCYny/FcUcoj8Cem9E0k?=
 =?us-ascii?Q?P9QOonszwnzxEjIW9CXm7nLsBlJ5bvBuKv/6XnOLbqOg+AFYn1Yn561mT7db?=
 =?us-ascii?Q?Df46waTZUAffjlfV8i8eB6wOIt6z7ZM4NLFu4LcBaK93rpbBAJrxctueNnDg?=
 =?us-ascii?Q?fXdL+X+A3Xo9XogqFIfh5E+zn6buQfzT9W3xNRyp0975+bplblLdcKJxZa/8?=
 =?us-ascii?Q?mi3M6ClEynSQ66/My9hm0huPn6zavl/h18HREBfHq8aAuaZAtYtp1Qcr5XOe?=
 =?us-ascii?Q?+jSJ2nppzNeGk6iDZWEoO9S6ZIPVbzFnFa3VyFDMFe7JjZlpDHgNt3kzG2O5?=
 =?us-ascii?Q?8A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a25d617d-f5a8-4c08-313a-08db732802b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2023 13:53:08.4180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C+mE5OsIBK6cqAcPL6MWX5Zo5UVArEytHT6iLagHq2YhE7tDi9kfwUw0Nj4tTwlMdgjWVcY0/1PajBz+Oih4s9CoYvvnqa6XiKa1pCTbTcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdcp: Add a debug statement at
 hdcp2 capability check
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

Hello Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, June 21, 2023 2:25 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v3] drm/i915/hdcp: Add a debug statement at hdcp2
> capability check
>=20
> Add a debug statement at hdcp2 capability check which indicates if GSC CS=
 is
> causing hdcp2 incapability
>=20
> --v2
> -correcttypo in commit header
>=20
> --v3
> -correct the other typo in commit header [Jani]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 5ed450111f77..73fe84fc9bf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -177,8 +177,11 @@ bool intel_hdcp2_capable(struct intel_connector
> *connector)
>  		struct intel_gt *gt =3D i915->media_gt;
>  		struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
>=20
> -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw))
> +		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> +			drm_dbg_kms(&i915->drm,
> +				    "GSC components required for HDCP2.2 are
> not ready\n");

The change looks good to me. Only a small query, Is it important to know at=
 this point, for which condition out of the two, we actually fail?

Regards

Chaitanya

>  			return false;
> +		}
>  	}
>=20
>  	/* MEI/GSC interface is solid depending on which is used */
> --
> 2.25.1

