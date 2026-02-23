Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHDgJh0enGkZ/wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 10:30:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBBE173EC3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 10:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2685C10E2C1;
	Mon, 23 Feb 2026 09:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="af0Zc2yT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD21D10E2C0;
 Mon, 23 Feb 2026 09:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771839001; x=1803375001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0/KPHm+TC1II7FEcbikaYCcD8Mn4/nOlg2iaRfZlmHU=;
 b=af0Zc2yTOdISoLCsfIdCShKnz0KYIpDgfLhS5PtWDsZQ+XyMdXs7kuVe
 cdaXP31s/9pKKyduejV13zbNiTpxXp/3atFfGrjz2I83l1B+Uaxzp8SVE
 +bZnugV+w3rDTlnofM0YR9EXezcYMvZjooCfCD8slZx5jxG3cTrWj3DTk
 BbmcGjKyqs9+YhUtJI7byreueT9cYCzYEx4tPMlc/bOuRFpey/jJQHzwA
 WTz3JBxdxtDxVY4YsgS+e+M3Kda5ThPqYTKGsyf/u6vztYXL0HlINDhgt
 DbxaqkaTARobY0mmxGlxPqUhXKMKpk3l1fJt8QVTupN7DeV0rdg1PHBNS g==;
X-CSE-ConnectionGUID: QunfmkJZRKqlZvzdlkG80A==
X-CSE-MsgGUID: jklLWO34ShGZ1tZ0uqVDjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="75438409"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="75438409"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 01:30:00 -0800
X-CSE-ConnectionGUID: CWs8WwkNRgKsFrbEKlKMrQ==
X-CSE-MsgGUID: 92VaF/RJRLqQhvdMMAygsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="243688222"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 01:30:00 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 01:29:59 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 01:29:59 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 01:29:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A3z8QaJ9QeLqEKLefR2/WVLTvkfmbKGlXSkvrEHWtS9UewUWSMxNa9oYazGerVtGw57c/npPbJxZkQWWUkIuIanPs6IV+3K9c5OPQAV47zWAu2cBZzbur4DQwGqmwT0SlvzxJSQSgwaVdSzAGY+A7qT+iPVohH4GuV7H8wgJM7EhMKjr5xI3zhdmaVAVtebH1JblCn2bUCdbx7Wd/PO2NJFM1U7h/ZYG/ztelY56ixDSgPgDMLRA+2dfKAp7Hp1/KlIxqphv7OxbVaVNkVfnjOzT1C7RqYJFGZXb9owufAvMs8r7GWx0I3zqnYhBohJ9v//4OSb0BTs2iiznbaDe2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ytj8Wj0t4DtwfLb6u29B5hBhqgbfeuWTqoFwKWK2vkM=;
 b=TERFHZVyh8ZALn5CPMwvJ+OYlJ0e/7qgvy0GGfck2Ka3LcwzxHJC3mHDv7WKx07DpTQI+IbUmMn+jtMJeOhtBGCtkuE4caWzowg+kAQt3CM8npBTnb4w0V0nda8NrI2ccaK6f50zzZAzcPMd5F2I9uRbRoeNjo0l/GRgeOlKMZlND6GUWwaPz+r4RDmn9W2UFxDoUgiMOVLsgQ7DInN4qbFEUPVyYRQHs/iR8kxj1P2kSlxZSsLi9mCuMZ55pRqy6WXU7ldjMoZ9hWGnoV44+6BtMxo0WIW0TKxsktK5aJCR3iMudbjL50ibuYtbaJjoeyxoc+eTWufVnE6qi9i4HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH8PR11MB6998.namprd11.prod.outlook.com (2603:10b6:510:222::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 09:29:57 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%4]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 09:29:56 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH 6/8] drm/i915/backlight: Update debug log during backlight
 setup
Thread-Topic: [PATCH 6/8] drm/i915/backlight: Update debug log during
 backlight setup
Thread-Index: AQHcoica2kEuTfXifEuHXvMxVfjyg7WP38tQgAAUCYCAABIwkA==
Date: Mon, 23 Feb 2026 09:29:56 +0000
Message-ID: <IA1PR11MB646769D261D8EB75C0D49643E377A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-7-suraj.kandpal@intel.com>
 <IA1PR11MB64670ABDAC9EC44406BDC577E377A@IA1PR11MB6467.namprd11.prod.outlook.com>
 <DM3PPF208195D8D2127173B1BD6FCBAB774E377A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D2127173B1BD6FCBAB774E377A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH8PR11MB6998:EE_
x-ms-office365-filtering-correlation-id: c140f153-b33a-47a9-9564-08de72be1bc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QIe6uz1DqbHYeN3++xtuKaYrV9fMJr+ql22E47z9qfV9weqTziUBj/YnmqD2?=
 =?us-ascii?Q?pG65dPVXoga944F4tzM6jFMWKk6z7VJdtQATSDJewj4gzw5hhDp3yttb9y6p?=
 =?us-ascii?Q?UffUG5IgQ2k6iELC+1r08uUOI+eTaBUVg2SaMZlC5H8Vdpsw1DenNjwyt4kr?=
 =?us-ascii?Q?CoECgxbvHReaGcCYsnj6MxeAHBljxqGziJDUPMzqSEnkgazE3AorP9TL4f/x?=
 =?us-ascii?Q?fvjvcUX94N13o0DQAvnpyovTOGCWh3UqkHYYJjrtLte7OR+hZtjFuLCYilMS?=
 =?us-ascii?Q?Ey61XOkGKaEJnXYV11tDgXsypMQIN6aIl/sdvesNUZCeiiboPqJ9weYh/HXy?=
 =?us-ascii?Q?OYosL1jdnIZDTJLLg0JnJT1pgE25Q3ciff4T0H1WFKTp5IB+iTt1OQ6wqRxZ?=
 =?us-ascii?Q?objl0xeGDW0ytTjvYeLoRDjiwJxy3iHWPFA5dFdK/7Rw399H82RSz/xrgeH/?=
 =?us-ascii?Q?FdshsLaFXAh1vikE26MN3qJmVFOQxgWBqlq4MdT4jhFWPJjwiinn5eZH5X21?=
 =?us-ascii?Q?s3wqFOoaci/cnDGFsAKNwQ4yw7Ny9SiFTiYFg1hVsckPHj5WPDL/Eavrq1jC?=
 =?us-ascii?Q?7z2g26DHpvD35VgwXXt4SsYEgpBlfACXOereFtX/EsQv1ZW3daBkOtnjsdo9?=
 =?us-ascii?Q?TDzPE+aOyYLiy63gC32JBGEyNojSsrp2CWXmTdInSZfVnlM5SVLupUyhBa+F?=
 =?us-ascii?Q?qfRW7ROxDfnDGQvoSFSnm2NRf0Fw4I/6ZmBlgtEhqnWHYfaGIvn54jfLQumd?=
 =?us-ascii?Q?q4Q7aPLmVavFvtqzuKHEGT6P+2Fsf6cj4V3fsFNofn9cZq5tc622GnV3hfzW?=
 =?us-ascii?Q?IWaSaMETgHPPoMLrNYe46Fyv9FEpajju3JBxPbWgvuaQ+lIuOwYqhMS0Z5Ax?=
 =?us-ascii?Q?ba/qOPIzhR15OY73e8A0yzvjMMo6jYlmoO4TXzg6+4pdHYqE9CE0CrSGEcnm?=
 =?us-ascii?Q?8CzFETUavWOBkAgZtXvKQpPQZxeo3RWx8C2YaJCFdJ1pxXYmCYRAc54bDBAJ?=
 =?us-ascii?Q?zmQ2t0NtIlknooWhLhSY3Cv5m2Pz3QcWGpTImN1QxB46LoBatOHjNg7ZoCuX?=
 =?us-ascii?Q?7r6jbh3UJbtiJe0d8B67T2n6cVWwinrwWYDXVlDkKE/yEo6Z7Zi77F8e7ySw?=
 =?us-ascii?Q?6vs6RfaOuodz70vaYa0mdnSVSh4Jos+2A2Tdia4tdkxK2bxf+ZISMHXGmbZi?=
 =?us-ascii?Q?V8+EyFRkPZMcwBEJmXZ5slV4BvSh83WENuj9MuJ8U11q/JyoEErrYbFQq54F?=
 =?us-ascii?Q?ZczXgrCEmfFpPey4VWl1dmWiGbp7AV/UFh2jQLPSlXpYqZzu6L5M4OLrEt3n?=
 =?us-ascii?Q?G2WFd/yaoRY2B0VFd6PGJZ4umSND0FpoMamN+8cqjXk21mE5s2C/NdBOtAHR?=
 =?us-ascii?Q?y4sp0Hkobr7Dn3YkENi7iorMa5sV7V9zguqLFPPr5t2i4FPVzcH+8R0vk6mk?=
 =?us-ascii?Q?HM8VsPUjCNqALEODRXwpj6zhnk1lVKSg2p0Ei2FWEtc3Ea41M4k+Tqmff2hr?=
 =?us-ascii?Q?B3Fg/yhSCcVU42r0YkN0aa0ER3QmjOIkXwufE+1LlCvFfV2OZJJPc1tjwGgp?=
 =?us-ascii?Q?gEKGDIWONVI2Mq/SGh+G4avpGWEsim103O1xk2SqbISoeURbl23a14jFcnsD?=
 =?us-ascii?Q?uN3aAE1QpYtRVNFMq0Fvpco=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?olo7gQqhIeXazzu1v5Dw3YHyW0FXfnzmuLLNwcbLeJK+TX+g8iSkJ6BBaQ0G?=
 =?us-ascii?Q?LUpQKoFI+WtIG458RoG0O8QrmN7ObejqDIQz8pMoB16Pkvg9J/mCcxnjP9vA?=
 =?us-ascii?Q?og0xGueTvKSbQhTIm8NXcvv0guvjjx+mbMh1h/JBgqSGKDkHxQikhUbXc912?=
 =?us-ascii?Q?+IIH4zF0bnsta9MKwhLERR0a9BEFZy4O9LHubx+YiB5B+kNWH0shY9A205Sd?=
 =?us-ascii?Q?8P6wxjAnK458PsXw15roYPgm9nnS3XVUoNq5V4taRKwxURXU4S+yL1BUzA0g?=
 =?us-ascii?Q?3dewEjBul8aKYMp14p5cWPUP1j+ZxOGWEhSP0cUk4FVUUSxfUEcRQMzNM1P3?=
 =?us-ascii?Q?2LsGWmdBgSkTPdpy4F/LZxoWR8X4s9AOfbjm1QF2omgSB4WlDfIclLVtBo2W?=
 =?us-ascii?Q?ZGm6zAVYygQ5IlpjvqwCW6yR+l9/X2r1rIUAD/Yuk2JPa3RzHtioqLOdg4BF?=
 =?us-ascii?Q?msuH3mClqPsikvkrUjuOhVyHAhYpvRACPynErnnSTWdKxrgSpuWNHAVC+82c?=
 =?us-ascii?Q?KM60465mYUG1N9RbiIbum39dPxwkqavO6VXdXNIySPMc1kYiL5hGOzXEeWTj?=
 =?us-ascii?Q?8FYpuq2o666ZjX2sAogcf0Aav/szv7VALaWWcobkajatKeBmqSJneodrNP7K?=
 =?us-ascii?Q?VSDwNugyPp6qdLavW3fuO0rmTGW6bCqA5hLc/RiRGeYjN6zkXB2UXM3uOc3Y?=
 =?us-ascii?Q?XOhn9wgDCRnZGnnWwUzPHRlnqsW5xA8yqCEW6SCwU6RZElLpAjCMXOG2Uwa+?=
 =?us-ascii?Q?0iwlJcZ+Lhfa2oT2SX8Z3kpZ+qOQnlK2u0aiVTAgOcYBPnzJtiiPx9Pf0VjG?=
 =?us-ascii?Q?5bkq/ytGQZrD9PuQ9lLfMAfpF3dHC+P0+5/BK/KE7WZ71jjuWzCAnj76y4il?=
 =?us-ascii?Q?y1yndbpoGdp1yYtYe1TP+5boWLXoka2WnBP7oqru+FVLqR3/1rd16Axc5KjH?=
 =?us-ascii?Q?q8OPvwnGbFw9Sh/0HW639gNy9zWjF7vFi9GMr3/PV+h7S9sO25QNzCFBCnv0?=
 =?us-ascii?Q?bacA4+UCvy0/4fxFkxcfTrzIB8607wzACbjUxW0R3q+EonuPuyWshmdxW6/o?=
 =?us-ascii?Q?dT3Q+kIUc/FRBLRHj5WXmtBSUWK3v2CrSHH6ndoFbgj77+X7Zn/BAofTS1BN?=
 =?us-ascii?Q?iU1euThIbE6kKBuzVxeFlVQdPJ2adzWBlXT+7djapKQC8RgeWVA7NVm9FmME?=
 =?us-ascii?Q?wBEfOtGnCW+VOMMsuhc0DO7HqozKru3uM9m/4yRk3Af3CU+mnDPvuOpYI1sB?=
 =?us-ascii?Q?vFD+jYmuvoiqSAel4eTQT6PhTehmJf/B9FjK5WMZcbI3mSbtWTxG++lYBba2?=
 =?us-ascii?Q?HiqiLdi9PsSWOEHY/8dtvN6AL4RSooRN3yvf4kK7eEzfpoIjks/nBtPd5Ozw?=
 =?us-ascii?Q?ndswMHqAsZWhDQAyU77ufp+ZELMU9mPb5nIpozGFalA7ymWD35T4/wh1mlIq?=
 =?us-ascii?Q?KuLT9A0objU5zndhaXdP53BBsn8nWgUoQ2paKlQnyx3P+R2GOXHpRCTIlx1X?=
 =?us-ascii?Q?gNkVzOWMplUEwsIhV5uDTuaE09sA/+aIOWDY7hTryXJ/nLS4C9oyadlAhW3q?=
 =?us-ascii?Q?pX78MJ0NqgEH73r5dQibNUL4DOzVEjga6OZlnqpZ1pzyEtR2Bvd74CRL7JqF?=
 =?us-ascii?Q?DzARagalluPT+WYbq7P0ui077Aq4ewJyX5cGLuSD7KsMlyQkC59bKuHRcaUk?=
 =?us-ascii?Q?T3g7aJuCjXXbYF/Az1mtvZRJ1jPmNkqF5Yf/8H4j0k4+7xm9OlU0pL87LIfe?=
 =?us-ascii?Q?ItOMzbgMUw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c140f153-b33a-47a9-9564-08de72be1bc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 09:29:56.8558 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mSGlOm+U2s5HQJCOEUe36hB823wcq7rQU6GieSB2BTinswjLkxTcbLjazG3ck0G23TkIlUC62bRuz2QpCBvGIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
X-OriginatorOrg: intel.com
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,intel.com:email,intel.com:dkim,IA1PR11MB6467.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ECBBE173EC3
X-Rspamd-Action: no action



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, February 23, 2026 1:42 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-xe@lists.freedesktop.org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: RE: [PATCH 6/8] drm/i915/backlight: Update debug log during
> backlight setup
>=20
> > > Subject: [PATCH 6/8] drm/i915/backlight: Update debug log during
> > > backlight setup
> > >
> > > With luminance_set which represents PANEL_LUMINANCE_OVERRIDE, we
> > have
> > > another variable other than aux_enable to decide if we use PWM or
> > > DPCD. Make drm_dbg_kms log represent that.
> > >
> > Hi Suraj,
> > In this patch we have existing parameter aux_enable and you are adding
> > luminance_set as new parameter in the log so I guess commit message
> > can be something like this:
> >
> > Since luminance_set (PANEL_LUMINANCE_OVERRIDE) will also affect the
> > brightness control path, so log this as well along with aux_enable in
> > drm_dbg_kms logs.
>=20
> Currently what you are proposing is just a paraphrased version of my comm=
it
> message.
> Can you mention what you feel is wrong with the commit message which
> would require me  To change commit message.
>=20
Yes, it was just rephrasing for better understanding.=20
=20
> Regards,
> Suraj Kandpal
>=20
> >
> > Thanks and Regards,
> > Nemesa
> >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > index c7143869bafd..043c9aef2ea6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > @@ -539,7 +539,8 @@ static int
> > > intel_dp_aux_vesa_setup_backlight(struct
> > > intel_connector *connector,
> > >  	drm_dbg_kms(display->drm,
> > >  		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is
> > controlled
> > > through %s\n",
> > >  		    connector->base.base.id, connector->base.name,
> > > -		    dpcd_vs_pwm_str(panel-
> > > >backlight.edp.vesa.info.aux_enable));
> > > +		    dpcd_vs_pwm_str(panel-
> > > >backlight.edp.vesa.info.aux_enable ||
> > > +				    panel-
> > > >backlight.edp.vesa.info.luminance_set));
> > >  	drm_dbg_kms(display->drm,
> > >  		    "[CONNECTOR:%d:%s] AUX VESA backlight level is
> controlled
> > > through %s\n",
> > >  		    connector->base.base.id, connector->base.name,
> > > --
> > > 2.34.1

