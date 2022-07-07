Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B08D5698E9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 05:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B081137A0;
	Thu,  7 Jul 2022 03:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618C21137B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 03:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657166146; x=1688702146;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uG2gT5KwNl5WOuk3uEAw07J6pMqMXRfGN2aqNMo71I4=;
 b=MfyeinMs2dqszUc5RcAPx2fE/d9JE7auNBe91inY4G3b0f36NYEdsfch
 52puQRYKUegDfXiY/fwQkE4JBai4J6pFymWIjqwyhsr2NyBu4cMQOGQFd
 pmlvPDZjitvbYME24GypED61WZtHb4bc2tXbxaIqrito2fJceyK2tiI0t
 9dFdTp6l+d3uoPAxr4uaXwC4PTPDNnLshTinO31hgDkztOd3a110PuZ+B
 pZO5kRMbK5YhLQzSdt8bBa1XJ1zhrdtfNGtV27AJN+SuLqkUm6rdgilr+
 AC4jmhgos2QU6QKwtW8qa5xRkmZ/8SoZEQMfVWGSF6UHtfbmj2yoghmVh g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="283948183"
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="283948183"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 20:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,251,1650956400"; d="scan'208";a="597887349"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jul 2022 20:55:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 20:55:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Jul 2022 20:55:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Jul 2022 20:55:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Jul 2022 20:55:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMwo1EKXxc+EXEDkK+5+FVCt2ZsMEW6CU6TrGkHCAKlT9oiuSmLECzEx7QhFYgF8szdR+DWJ2FMylSinLcxQj+nqKR56UpTCQdPYKFC+AnVjws7b93FZYNDGS/I2p92r0fQR2oeucVFIwrrLaz/K3TjYBARpf2Rqph7JTyibhG1yow6A4hwbl+OvIZ9dXKixsxnp7V9t2AQ78vwpVcylKmLUXJmNWDajxN72YRjiqEb/Tn3UTWXaykm2hh5kdWVsPjyiOR/EgPTy2CJSG4fsvGjQ+/LKg8Th/iv6i6ZXl7RRHcDaqm/OWhRi3zVmkPyXQHzmqJD2pxD77gYcpPAyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uG2gT5KwNl5WOuk3uEAw07J6pMqMXRfGN2aqNMo71I4=;
 b=FGTyD14MORpeiBNFxYaUoIulw/13+a41oMtBzvHUnE3Ndx8Fuls39RB0x27Hqp2i64yGKWqS0YnkgoTRXkIEkoJD9pjKb488DvKbXC+O+JQSqBL+pqLhip7UXj0aEEDVwQeAq9MvABvEIDpWuyJvnK7uOXzzLfvM4VL9orP/yRQ4p+K+5hPMqZAMjcS5pPRiqdn+YphP9GWux3gJcLuS/CddMCsjVnm8y8fTKDWxcqjjoeNoKzLdZSrf2iTNqnAfYtw6lU3BDSkk5Avul7RwfruLL1bNsNr9W501APWdoRS9eNLObAZRYgc2IaoSEWZbhEoqGfwJRB5pICG9iwtx5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM8PR11MB5622.namprd11.prod.outlook.com (2603:10b6:8:36::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Thu, 7 Jul 2022 03:55:42 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.021; Thu, 7 Jul 2022
 03:55:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add MeteorLake platform
 info
Thread-Index: AQHYkZj3OZlge0WtOUCnCsmpoPx1Za1yRzXg
Date: Thu, 7 Jul 2022 03:55:41 +0000
Message-ID: <DM6PR11MB317789A4DEC7A3C4FFA57458BA839@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220707003107.2533184-1-radhakrishna.sripada@intel.com>
 <20220707003107.2533184-2-radhakrishna.sripada@intel.com>
In-Reply-To: <20220707003107.2533184-2-radhakrishna.sripada@intel.com>
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
x-ms-office365-filtering-correlation-id: dd89bc54-3e44-43aa-c926-08da5fcc8f82
x-ms-traffictypediagnostic: DM8PR11MB5622:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hE5LLdkTNMO81e9pa12URn059PDf0TrgDtAyaG1FtnQllXLIV7fWPl5/LwlPfKnmc1ygb0maGo28xirf1fG5ldth6UJ2MebNMH/VErpKfMic0oyZ8CYLUCj8vVFoTf7MQGL5BKtyTElrtK4mdFT9FizKwtu/36FyAKSl6sWP/gU9N/oLkJnEGSDeXGsh57fNjQmkUFTsby6nTBCTokCCutUDiASMUTlZgB0PqwVFJvB5vMAas4Gmfa4/V7hbeUuPirX1xvxCWUN8ebxfBpSkrW2fWPVXD8rsnTWYP4vz0VCdMcKkfmfX+70NF2kOI+Qr14k6Tl/72BLXagPo4JjxXeIot2VkytN/wBVlxOS5Rv7RoSGEwMJ+4jEWAJR3hV3LkK5C98Jxa/+TNmpbfWoFBKoZsmqgIXRNqCmXnP2XF+bJbsc0EwXL974FTu0VQA+3ztC+i7wS9wipt8JmDM/+i+/fNIWwj27kxXulQbHGON2MD47+rNXwogR2vyLzh0Otvsy1/ET/a6Jk39R60GYQ0UESgY1/cZlAZOwiXqtCr86FD+FEU9Tamkuelw5iGZ5c3KSQkMCZfWMlfBqgP6LBR9fNlvqey6cXn2vAan8QiQIU8BNd5Dbe6vZ+Tissp4ZVhsEJOApRpkUZibRf5ku5Vj59UF49IkvuVCVyguWJwLJ2T3aktM7RpEvv0yZOS6BAXuOX4WqlUx64YR6NdB2vZH4c+RyROMxJsMMN/r05O9KllCWAKUFPPhfz+s3WKxNcdCG4l6PjBy5zfhqgMGNQN2M2rItkIYnTmivJgOVal+5KguHZdkoN84PpcqF2TfQ9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(136003)(366004)(39860400002)(396003)(107886003)(478600001)(38100700002)(2906002)(71200400001)(4326008)(76116006)(66446008)(33656002)(6506007)(186003)(53546011)(55236004)(110136005)(7696005)(41300700001)(66476007)(316002)(54906003)(86362001)(82960400001)(5660300002)(4744005)(8936002)(52536014)(38070700005)(26005)(83380400001)(122000001)(64756008)(66556008)(66946007)(55016003)(8676002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TtR9hqPDW2jDCwQUate5BbNMUwWtdUO2t0bsMCrYOh+HptDrp6/M6DCrTjEa?=
 =?us-ascii?Q?oSfhCaswkB1Sv6uWibJ6rPPCCeagnd81tzfi+K4AcYDesgWKP+MvsF1JZUT9?=
 =?us-ascii?Q?C4hoV8/Cw5SY22W0xnj5IeBbGODzG+IB7mgbzzmxuBFmcwrxPuaU7hlrs+JI?=
 =?us-ascii?Q?HdIXkLwh3c3X+jyaqifvKDqrSNp1bKHWVW350Qp/yIxGvG+d7t2c6YskLPzi?=
 =?us-ascii?Q?iklDnrHXCrAXIz0pipsWuWrSxbXNjecDilwQ11Uvn8TIqI0+ftV0Gt5PfGkQ?=
 =?us-ascii?Q?ffooFVABf/cJeLwfpXBRcBv/fC3qyYNMOjR02AdzEuWpsx5mXId2cvI5VJdl?=
 =?us-ascii?Q?f6wjX2Ytg4KRvIHhMBxlfsgzYzACUZjuWQ1kJGBPRSUo2iYD+6cdwCSo/JlM?=
 =?us-ascii?Q?KPd6ZLE3AeQjtfjxH27A74+5MKfi54/Vfk6wie8/TqN4bGxzJx+EZIOCe1Fz?=
 =?us-ascii?Q?9hkQezytZU6GXoz7z331gfM1+ei7hu7ntXTRkjNvGy+dGKha8cEBOwyTTcpy?=
 =?us-ascii?Q?dnzvpew2pf286fcqdCtsNPw2KmkB447Gn7kOjcbg8qqjIgERKkshcNm89DHd?=
 =?us-ascii?Q?oUyy+J3+npVNcZkXG5xDhJgxbid3kT0pd9m24ivRiVP9RHu5pT3btUI0zX+c?=
 =?us-ascii?Q?pQMaMj/YVWBnJTMRyRUwvxko4WbFhRjGVeCTbxfivOwMFIoYhFGZxiZ22VqP?=
 =?us-ascii?Q?yMuu29CFQIrch3b7Qm5GXE4LIIWpal0jpc39jnN865NWuvQcAjUgK2e+uzRr?=
 =?us-ascii?Q?SvcD+OA0AGo/NebQgYH3cVw/ajJlDZQ6VwOCu3zvJet+AQkoUEUH3XxHM6Ub?=
 =?us-ascii?Q?zRZCRFPdkgvAq4eoI0+kJI53Ol/GnwPGtu1XOZvk+keQvviNwrgHlNwt+17H?=
 =?us-ascii?Q?i05yGJHfiI62Uwpoh2F5yxFHSIIH5QgGl9ig4KZ9BO4BFPfCJaZFXVFZtJFJ?=
 =?us-ascii?Q?P8Ult5PzeIa4HqYNL053/H/1Dqc53O7CPGlwHAksXBFOe7NixXNc4N1JE4On?=
 =?us-ascii?Q?iEl4V532kBHIhD2dEI0Kb8R3cUrQlURLrA0oqse6xo4tj7UfSaR1qmUz8ezQ?=
 =?us-ascii?Q?BENpGTwMPI78Vahhz7ztIarO8J5SUO2bhcWFvuzHkiF1VEO8a8+RKL1RYzGU?=
 =?us-ascii?Q?parpab0dvIuhvKVzhGssBUGKyPMV7N05Kc5dkTvMOo1K91k6lAH9VsXdJwTm?=
 =?us-ascii?Q?Lyak9W2dsABIB1pPUqeqAdKiBlkjBlU2EitcdmTTKQbvNWYL2ejiPpJxWENx?=
 =?us-ascii?Q?RuJzZ7jmXs9MQKFAZzXBJ7d3BcHvDDYO158tZsvR35zqs478fFBaqHNOXgFJ?=
 =?us-ascii?Q?UY62tPIk+qTYw+Cru3Hc+ISu0cY6ZdxUAAOzdHmPkzh2jNcZKy8nRCML9OwZ?=
 =?us-ascii?Q?yfTyEa61SJmZBE9WouC9eBwns5OuYUxci/KEW5mmoY0yqKuXbmmi5wJsYNWw?=
 =?us-ascii?Q?EkiPoAMqlBIB67wIaHMDqad93dFrBCIjxQJLBluqy+z3FtSa33apgZ3stNFx?=
 =?us-ascii?Q?c3X4XHg6Q3r9vY00D1K40LF8vQhh8w+4A8a/sEj4pE8z5j6c6YLHmW5FfPCP?=
 =?us-ascii?Q?BdwY2fWX82Fa7mnTXdcg9QT3zg9ebtgfzIby3jCd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd89bc54-3e44-43aa-c926-08da5fcc8f82
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2022 03:55:41.1714 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 06lZrFtkw/X3rr+L/xtMC3Fhn11COzHVyqvTZ3caKgG6CtXkjiaYfE0o0zaqXMY+Dd/VGEw1v9zEvs3k7uMFjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add MeteorLake platform
 info
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
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add MeteorLake platform in=
fo
>=20
> MTL has Xe_LPD+ display IP (version =3D 14), MTL graphics IP (version =3D=
 12.70),
> and Xe_LPM+ media IP (version =3D 13).
>=20
> Bspec: 55413
> Bspec: 55416
> Bspec: 55417
> Bspec: 55418
> Bspec: 55726
> Bspec: 45544
> Bspec: 65380
>=20
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
