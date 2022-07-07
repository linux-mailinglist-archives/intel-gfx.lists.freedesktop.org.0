Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7735698EE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 05:58:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9349C1139B8;
	Thu,  7 Jul 2022 03:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D351A1139B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 03:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657166307; x=1688702307;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Zabn2x8DJcurAOQQO1e+C6Csf+DhDMcSYhi2+QbSG8=;
 b=lZvXGi0/ObsWD6GKhoKlkvnQOo5NuUv6VHLYVfsLfoBMQvHjOoUV51Ye
 WT6FDeq4mQWiTqjJUUcF+i1rZQsRE1SRfnX17KDjMDF7hVmBspxcj6SOq
 WJ2MY2VMI2RPfi+LS4qxBuXps/UjzJ1x6IBSk0FXIICCPZ+C+zeK0U7v6
 IYxHdJ5z0e1gBrRx3P+H2LHtoPWylH6pP/DaIvz9sQ8fsZBX2rEalI3CK
 NYMugCDAktvmS+W7U9ehVvVyn8eobmPUB8arB4q9MvFemAkgePbJ1agb8
 Io8aKT8Ux1dGZcdhh8CSXr5szGwKux0WEeXDXS00+ws758AUO1SbfGvks Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="284664002"
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="284664002"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 20:58:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="650955319"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jul 2022 20:58:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 20:58:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 20:58:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Jul 2022 20:58:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Jul 2022 20:58:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e5prDbXI+Jb7X812zgmKO0xHPH+IgUL4q+IsQu668owAgb0asxHRrCiu6ZoYp2keSoHWRA3MKXU0tZkrZgzDQxGVu2flD2shIuizKgxXlccy9aZJ6olJVsiG3590YvgZTK5tXpcCuWFCehNEi/azBhkOSXDu5hBxwpe/7dtf4hdz6BnfpvKsWiqKQgMQWUNl4bwklI95xtXLRqrk0+F8nBJi8rjCcaBsfOayNl7tDGxjsivAPxFC5XFAI9aQtMoxsiKcdERMBVnS6FB7a/gPbOOVc8yq5rfEPInZIlshulB8Nkw47TjcDCh21drdrsHm7PFt3JTfrg7XOpoaksuzGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Zabn2x8DJcurAOQQO1e+C6Csf+DhDMcSYhi2+QbSG8=;
 b=L9rntS0KYqxQVgGaHR794FQ6TcpovQtsLolaQgwwcBnfN0EyDZa8/UnU7My1hHT9R7GCEAgxWNITPDJz/exWnZFXhuHxoD49pQPQ7KxnQTc30zY4EZNDfExGF2Va70YLAtPBeggOiDsmlZdTE9t8DwGWzrLvqtrbftFotu0//hZpUtXx6EaQmusU8CizMd2uBHiyWi/zWUPiOJX9of0ycQKv/I20fuq0gMFKP+bdvBltjS+5gHseZolEgHvFjkl72JdE9ogVTC8qaneQTO1oKIa+uNRbMacL23MgAxWhwS5q96XP8Oe5L07UakWaC6WX89cn9ckLXAnmvHH1x2M/eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Thu, 7 Jul
 2022 03:58:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.021; Thu, 7 Jul 2022
 03:58:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
Thread-Index: AQHYkZj6lnm1H32J5UO2G4XuUNksRa1ySCNg
Date: Thu, 7 Jul 2022 03:58:19 +0000
Message-ID: <DM6PR11MB3177500C3CBBE66B60D056ECBA839@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
 <20220707003107.2533184-3-radhakrishna.sripada@intel.com>
In-Reply-To: <20220707003107.2533184-3-radhakrishna.sripada@intel.com>
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
x-ms-office365-filtering-correlation-id: 41428baf-1282-49ec-4ea4-08da5fccedbc
x-ms-traffictypediagnostic: MN0PR11MB6086:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCEfMmKaQn0dPKvTVqhdCczeIUgsCp6ca0a+8q1OMSzX12ihznO+4iIgx4YP+ztQyeAPHdlTFmJ6VdKMt+qFtKIGfcG1zkFTSXavccFf8dpBPlGzarhUP2LV5NnHjajOmO8Cg9/PbtZ+hZp0GFUkQJW8NGBVxvxB9Tbd1XpxtyqTA6CTChY2RvK4PlAVcailDB3zX7W/hsjMmTCeq8VTsTC7jXRrSrIDa49K6fhWRfuNAilO3a40iJzlfRe1iWNkCyLY3vANzYvK1mWgkcezMvDXlDyKL9hla2Oi1/dv/PXxuLEOpT5vjGW7BGNwQmUSlP0O8uyUs1PMFDrEKopPwuMieBU5MEaCdVUhbHp+joyyVAeai0F8pBgWpRSJzclNU0YYX7QuZF9DXP8dfsXOaHV8r/ZPMZ64J/YHRZ+5TIbUFD+Y775U3PBUoVDRYp4R7Xb3bezNWqxDXboCFxsq4y9niJbwlBWBWAsYQAOJSPqyL0NhYdAn11MuHp+zY6DWbj0LRGY955SLh1LcciojbI166srN9bQks1YqRQLJWH5lLvle4mVWG3pHEreG2XB/zuipdyUaKIbquVg3zScjV/GluvrlyuwrvjsTHUhscuidsTunMmec1U+Q8AGh2zV4bHRsnPMMcDg3nGEOZs7M33GfIywgLp7r9EvUQI3x2F4KPtISzUonlZTxojH/Iva4AHw4iKHFhyWkOAXqs975lety8SXIpoJQ0/ndWkrPDv73fAI8r3qmUcfkUpQDclQdAam2Xf8F+kb5oDPxeAy9+dEkJd+CQPb3C7lH73GI71Ytc6T4cWkhGJPupEO7Fven
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(136003)(396003)(376002)(366004)(66446008)(54906003)(8676002)(76116006)(4326008)(66556008)(64756008)(316002)(66946007)(478600001)(66476007)(2906002)(110136005)(71200400001)(55016003)(26005)(53546011)(8936002)(52536014)(6506007)(55236004)(7696005)(41300700001)(9686003)(83380400001)(107886003)(4744005)(82960400001)(5660300002)(33656002)(186003)(38100700002)(38070700005)(86362001)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?M5ZsN85ttWZyMrzGl/msGlqT/elnGX0eOTBAGvQtR8pDBEElGB5paQB36URg?=
 =?us-ascii?Q?DaMCxn4hdLmaBaFoD7r4O6KCZsm7uiKlURnKLvAjjxhD7W1oTSGqZZY/DysV?=
 =?us-ascii?Q?e4sWicXgGDfA4Kr41ALy60a1DAJqUvvqTV0fVBYbxVWUz1YiETCV88kl+eFY?=
 =?us-ascii?Q?x41nQ2o238c4f5wLrEgWBx58JXIq223fw9eZGibBds6jmZ6/nm+zmJP/RkIu?=
 =?us-ascii?Q?QSwGfz+WgpphSUgkiFLGhTWXZMPosEZyatQioKguvY7g/ax31kvmCmIAEvJ7?=
 =?us-ascii?Q?SPnk11PYDxw8jmtFH9aG5YA8BNYh2IV+k7Ph9nckNFJScJipMHcsz5xEw48b?=
 =?us-ascii?Q?xXWtvtCr3HS5VEgsMWrg7pQpc40eJ2OfRk3f1yPGsy5dGcl0h7j9+l5+mktn?=
 =?us-ascii?Q?lyFLiUIDSZfVs1pwNTZy5xGDTSbQiZRGU/f8P7QTLxqQshKIUmM9diZlp9ri?=
 =?us-ascii?Q?qGGOc6wX2gBJS/9C89OYha71jigI7mWKjLCY5tAdA5IifMU/+bQvgSc6JQzl?=
 =?us-ascii?Q?2lvbOw4+lSfXIZC2nrPOPsjGfraFSTjM5qccnI3Ntn5sPfhQAI6rbcb6bmn5?=
 =?us-ascii?Q?oNnIRKlkXX2MqMiIxbcZC6wc4mJpBl6aBApNRVEhzVn4sgN+6bnB7w0BgHx2?=
 =?us-ascii?Q?N5NbK52YH0XyXtvGnraFZahFyM+o/OMJNhEBYpdz4HLGKOqL8QEfRBtJ5VyY?=
 =?us-ascii?Q?43yAJkuPfqIfPx0EuB5/4PyBNYOc0PCVWKO39e0uCs16o7fhCIEy+uXuESTV?=
 =?us-ascii?Q?+guJ2/VcBIueMSzNfoTGJf2oRAqoYdIAhW/7kpOmJm5I01Qrgaz9LAoHRnP4?=
 =?us-ascii?Q?FVt8TO/AUXrXZcmsjdLlXyvNXcog9lKyrTohNZz4HKbM+hV78JC/s8baMq6C?=
 =?us-ascii?Q?nMkVYxIkoQBIqHOTbpAu6VdS36QGiDFU8T81rtWHzQdfHD4YnahD/lMrmgQo?=
 =?us-ascii?Q?5xbTU9tU+96xZzI3nOmI/AXL7V3S9dxwZfVaEArMkIsDVEVrVCN6S1GXGDFo?=
 =?us-ascii?Q?zddpc78hrGzT0+6Mpzlvy9jS22qOboGoDPWNBmWFcyam6F+rIrDIjdU4ZTDD?=
 =?us-ascii?Q?aU8ORXv2TYkTzJxWTzYxjezvMTlw6Gk/o9eN1ApMu/zHGml9VbvwDBipgqsQ?=
 =?us-ascii?Q?0laxDusMcfT9nm3OeHexUVrfgsp5VC+jWvpTwTEE+eWhQPtM1zAng834WxqL?=
 =?us-ascii?Q?iH4GRHZ8PR3xXSPFWKzWiZIdQ08jGwrnPm4r/X78QPhgmCMrwq7ESmeHrZCM?=
 =?us-ascii?Q?scBWgGZVUXUdbkF3kQuTy1/ItPYTKNVIzma8qmXXs57/vaC0b8a0d3Br9nc1?=
 =?us-ascii?Q?BVz5eHYmFzMfVqvQZ/vse9xPBdBcx6gMdN99WLt5ypC55ekb8hZ1Pd6sKF4p?=
 =?us-ascii?Q?Rot8+tDPb8KYfLfUM59V/N/lvh8Kb8drV/tQtxhL9EwCmaFt2HL3zfnzGIMb?=
 =?us-ascii?Q?VfA718t736pK8vvlDdzG2i34GmdUj/g97fJUbkGy8ZKRDaDTvDfJXx/Y5T7X?=
 =?us-ascii?Q?sfpanod0WxTAkJAjTAyAzzr7Nr8y7iUOrDpi1oagJBJfwOk1pFdoLrfgmvYL?=
 =?us-ascii?Q?ZlCaBhDUpRLTwzpmSR4hgLpkAiQB1flhZwjxq59V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41428baf-1282-49ec-4ea4-08da5fccedbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2022 03:58:19.2229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a6HKQmZlr7sbdPw2ZXtGsK6vLDykEOMCcuPURNZ7iadsP0t42pH6Yf6fN0LTnW59LghdmmEp/MLxnP3RwndXzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Radhakrishna Sripada
> Sent: Thursday, July 7, 2022 6:01 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Add MeteorLake PCI IDs
>=20
> Add Meteorlake PCI IDs. Split into M, and P subplatforms.
>=20
> Bspec: 55420
>=20
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
