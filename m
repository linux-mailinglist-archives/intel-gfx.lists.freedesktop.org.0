Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4701EC7178D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 00:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B8110E6AB;
	Wed, 19 Nov 2025 23:56:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IiALZoVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE10710E6AB;
 Wed, 19 Nov 2025 23:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763596586; x=1795132586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6kg+SoDfuRFJosIYMoMFcN7rj68wnnTfUnKXP2VsPg8=;
 b=IiALZoVgbB98RQZHDQbHULeCWax1VF59Jn0hlDy5brdp8gF+jem3oJcY
 Pus3R8wvRxl/vWY3wiv9COrRfz0+H++4cczSC+TMPJo+ohtyiiwlzhx3w
 M73X/NNQzZ99AUA0vtGaBE+tPNE/y+8jq4Kl/5KrMA91F+VX/mrB8RPPW
 3x1kG6f5fMuT+hBsEDY3k1tVwzBs3RoVaN1ZnoX71OscjSJxeZ0rl8M8y
 yyReyCFJXQeVH75QhC/YEAv86rO7I2WdZC5DyujCFt1I0YDFMGuoRgG9W
 qUuQUcs8IJKP/VzZGq/C8feg49jsNXbzws1XF3dwH1/v8lxbGS9VxtKH1 w==;
X-CSE-ConnectionGUID: SvASJcnOQjGn0Z2iLgHuGQ==
X-CSE-MsgGUID: ofTKNpFCSCmMpaLAy66BlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="75981763"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="75981763"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 15:56:25 -0800
X-CSE-ConnectionGUID: h5k+nUZCRdSP3WsSdqKiSg==
X-CSE-MsgGUID: BrFXp9aqRq+zSLv9IGEL8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="228518743"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 15:56:24 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 15:56:23 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 15:56:23 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 15:56:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TLdP0nrdpExl9jj8mDRldoul2i0kAFjTCsiCwQPGdfzd9gjM5FseA7OczqczG/kM68hWTpjWrwM21Zc979yZK+xFvrTAwQSgvf9L6LPkxriMSCYMMFPN5DwpDgQiVa3eA2Ule6u1vT47NTFlxRhXTNGaKwMxBetlp9fZYk79slJRO7CYY8zVqEH/KI3aspYqA2uGKxoj2VHiMAqLokDUx6JNe/CeWytUQB9V2FBcEo8K/UK3FfLOurbW7r5txdbrIp4bkMF7qQ9+WHLKjD+CWAaKlzQhOapQGz8vnma8jjaIRJ4cV61nsA0DrbLPXIEoCV5ptGd49weZcFDMRNFthQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cdT65zSW/25er+HfEE4wI0x8k9z4D1IJPtllRDB2beU=;
 b=BpIMc75fDo5A2pjuytW+vFiwPOni1FZcCFv5+1ZZGVjP8PzU1S/PYgRBgGNELVi7RrwAVu2CtpGVo1o0E04sZOFuXhWOPSp3M0LsPKcQ2USB3uIfloqxvbaB6q7YE6mD/eKDgJPYoE06lGxWvg3hKjzQZz3lYfzgyiiJ75Q0wQdr7JJ/1rnuj04E9xfXl3tLP0Z8tqBqIt/PJ95jy+miSAj+XJbaWDX6mpzWQZtUtRwyQQRoE8xZtS8HcTgh+hTVzKdhTiRxxOsX9NZ8gIppgrkKSPimo/1G+Lbsmtv6G4qhqmTjce8G/L6ChfYQRcf6yUEUOoij7hnpFigRJY6acg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 23:56:16 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 23:56:16 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>, "baolu.lu@linux.intel.com"
 <baolu.lu@linux.intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: REGRESSION on linux-next (next-20251106)
Thread-Topic: REGRESSION on linux-next (next-20251106)
Thread-Index: AQHcUgxxcVhkxCy/KkSOgc4hzGsZELT3sYoAgADnF4CAAA/igIABAt6AgAAIQ0CAALM+gIAAUo1A
Date: Wed, 19 Nov 2025 23:56:16 +0000
Message-ID: <BN9PR11MB52764557ECAEF2200054070D8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
 <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
 <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119185119.GP120075@nvidia.com>
In-Reply-To: <20251119185119.GP120075@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|PH0PR11MB5061:EE_
x-ms-office365-filtering-correlation-id: f653dd5d-de14-4460-f844-08de27c73a3b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?EZ6YUkC21xQviokArd024FN7alxWmkuHfxR9siRmWAesniZQAfLIuBBJiSSJ?=
 =?us-ascii?Q?jWTmrHWMPr4f83RQTjI+ZRAIFV7yC+a4sgNK0zQcqx1chfwTEU6CvIpwEE7e?=
 =?us-ascii?Q?TVjCj4M9qomSuXrm4KNBFA6lSyZXS+Wiix3w+dmEwkF1Y0V2kFZoaLeNPC1a?=
 =?us-ascii?Q?H5ztGKiEsjVUJJC9YhZO7TAgaNDCPaw2JKKljXC5AZJynv9W4UCwU6a21Uxy?=
 =?us-ascii?Q?eVkFNM3nLddKOOS03rzfPI0fyQ+AEVyDvpTtW1xehVGjfvnVGUlbvCfNGcAI?=
 =?us-ascii?Q?uR1YiXFd+/sTNBPuAH9EBFjNdiFK2P/yaBBu+ZxJ64/K784UW4Y/GWhwJWiA?=
 =?us-ascii?Q?E8HUHKfuPL+vaLbMg+lyLPGnHmeWGdlX1yEdupkZhDbmGczxl+iAvUGJivKW?=
 =?us-ascii?Q?46Wka0qGOEbG/FNaDLm5zWFathhvNO7OOdmWuBHwr+OVNhzn0SRGFN2Nb2HI?=
 =?us-ascii?Q?FzAURlz+c8O4jY1/0kHlahPlW/jWr6dmF05F52W5hlRjt72MIZrVghMs2Wqr?=
 =?us-ascii?Q?eHmGwci+Ndad6vy+I+b6Sa+kvgNnzkAxucgv7aUDaqcVpKcjTNqkOA+3nMQI?=
 =?us-ascii?Q?0b1xe7s0P1BjbV5hEqhxQaKQZUcTjWcHx/hYgFUnATlPmmtPqqQZaRvPYJYI?=
 =?us-ascii?Q?9KI4L9H3RcWdZomOQPW8FJvrwhlR1pKcXngbbzI/TSpd6oyyFFsCd3WrTrWs?=
 =?us-ascii?Q?Hy93Rj/XdrmtPtXMRf25sgR31uUZjBMxF+uVCsPlTS82izRdGPQMA+lMN9D5?=
 =?us-ascii?Q?EoabsclrAj4yr2L5AJ2QMoBsSocg1xmi7uzA/1tvNn10q0W5Xr8+KIfSZFAB?=
 =?us-ascii?Q?IncMQn/0pRVjelNzh3DWoP+zEm3BUXyDNzfPLUk+syRXaBJAj2M2xlYgLKI8?=
 =?us-ascii?Q?TundxfYIUJojhhLU0o8qGBcKjHMMEQMzN4Nz2pYSMvtFgExP9V5AuD8uS7Yr?=
 =?us-ascii?Q?77QT+ieLGN1GU1+QK22UjAW9bC3b8MzyGffIa+hsFz9swJxSLYu4RposXYGv?=
 =?us-ascii?Q?rNo8CS3ugf1gBwnfwJBiHB3Fk/ht0+9NCvuWKZqkt2icxYblpFnUHGUhUHM8?=
 =?us-ascii?Q?kou2EQN1i8C9J37ooY76vq5Mb+DtQWpUe/tQVBuWU9ppEt7Kb0AklVt5Q1Ww?=
 =?us-ascii?Q?HHh20V3A26uEHNowLMd0Idd8b/rDpPeyaFPwcVH3+mQEzYLNSM7vgIIwDhr8?=
 =?us-ascii?Q?/cqg350LbB5tIREmtbhd1Pkk/dNzvAj0PvwYTE26/ocWHe9XLshRhYvKNGhI?=
 =?us-ascii?Q?hPrCjVepRUXm1JbLFoMfXHgAuvGt0wJUxymofJQs7YzPJBcWGkUF7+KMBu43?=
 =?us-ascii?Q?zL0J6YI9MXTGfL7J9cOVunQv1KB5AtwLd/1CQOVdDezf+CZE9DzYsFNHZsK4?=
 =?us-ascii?Q?5oOO+6n3mZqNXyYBXJIOjp7BZNCjGc7Kh62Hd6cEYVMDeq8cpecwfwZoxfre?=
 =?us-ascii?Q?wpnVRGFo20Aoki9EWsQlxuZ1tVClkYE7+AJqgRxxBoQwKYa9+9t5QhUtCc1T?=
 =?us-ascii?Q?1dL/ei2yduh5idlAo0vuLUwioqk8FdLr8+XN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NqTNVjyRBo/RI2SYCQVqn5crJzEpGpyITzCzXR8paTKh9tPKGdjPF3nhAWnA?=
 =?us-ascii?Q?fFTmDGlheSq24CWo/8DQfWWbxCWwsV2aDU5dNTOdXuQ9iwn5gXVgJ3Dwb14r?=
 =?us-ascii?Q?UTXMAUg2SdIzF4wIroQt4IUoDGyDb5w2V3kKwRbwmZUzLGpD2b/1YzdKPK4V?=
 =?us-ascii?Q?NR4evq+KXCwOg6xb8F77CkZvWSL2b4lFDF2ScQ5qtQmrQQ4pZqSQW8BML5Fv?=
 =?us-ascii?Q?ZcZdqMmyx7Of2ObpWi7K0TQg6VljIqyfK+lK/wDBA36C/50p51q3XOeCHhJw?=
 =?us-ascii?Q?2bwXcpDA5usNiXjb3WB54mu4aMmWrjPP+Dn3aEqQb/IbZ2LJLXbP6e0Xf5tk?=
 =?us-ascii?Q?3VHVFUvN7/2LmnRsJCKQpYVBKw6E/CAyOI9YvyCGj8xAMFpdokzBGyu6HGGJ?=
 =?us-ascii?Q?XCxKVp4I+Ud28/I1xVxzeIzLiH4LF23aFtqE+mhU3ur23oQ9/9huUJquniwP?=
 =?us-ascii?Q?XEIRj95Dj+m3URBaClAARGdEPj5A2vd3owZTIknm3/GN2LpfVIGzMcQ0K1Xk?=
 =?us-ascii?Q?0H70ak0z+c0tDfhQbuNrSj3fPFzHhjMCnWxooBpeCTXKAalTRAxvsdlAMu0V?=
 =?us-ascii?Q?9wdxHflP+X+0evjbmsvxPzo4GSI16Skol0iTdj2v0unyPZlPgqc1ed2uTAe8?=
 =?us-ascii?Q?wOc24WGAy2hj3YopnhYTCUHFukQz+TSOCy8PyKuoXLhFny5wPjKemmyIOX7P?=
 =?us-ascii?Q?zfI/87v8eH4XWQamFQCfb9Rj8uwr+gs3WR/rbeaMR26ua8tHZoCwIAfC3MYW?=
 =?us-ascii?Q?GaOOTbwkBauyFTGmfL8+qL62Putfcv5zDmMBy5NlV61STwL/4yBrf61Qe28X?=
 =?us-ascii?Q?nWEBOMSNGAiK6rn1E0DiPg23N6fiFuH+xmGqGS94SZ01qAkLeFrXph6jUr8B?=
 =?us-ascii?Q?fDSMb4st20dK/+BMoLTyNYyNTRDmwgHpWzg3vNf05w30MlO1WgXCc38K81KJ?=
 =?us-ascii?Q?8QvQgIsjXdo0flICUqWTXToROGiGor2hig1x0cLUplEP61nTxzDGzV8AYYQF?=
 =?us-ascii?Q?Cg1u2dVmC//hUbZBinruoD/R0TwSWds+RCFEfjMxvCF2K3y+USIzizpUOD1V?=
 =?us-ascii?Q?53qmqeX9DK0iodRwDf/6btxfBh61kWmlV/2OcSh0fZIFkBIJziMYhm9dcW22?=
 =?us-ascii?Q?fLe6cXrpIu6EqffQh1PP1b+7omLZo9LVkqeH/5PVzYcpoztaTPuhbJFBsHI2?=
 =?us-ascii?Q?p3CPFIZiqiDkC9UwBf9isO8Hxl94TnjGGYuwmj6FObS8HRRBy4YB1yN6hqi0?=
 =?us-ascii?Q?8bXpiUbCAutrBRhj+SrQZkCtCEAMahdcjvRA6PuBg5ovIU//hExafJ/ywXxd?=
 =?us-ascii?Q?G0mJiUaKMHxlR6UDGkhZ+gxuzkDqDef2rSz+Sms3/m+16rJicGwXSf3u4JAc?=
 =?us-ascii?Q?uWIpETd1oQNTJKucWXrdBL+N8lygwWUWHeN+XjD0fkRkJEWaYfab0GqBTVL2?=
 =?us-ascii?Q?mcamnS8gWPjyUskXsk+SOZP05tl7nQg7gkeB6JtwU1vzmTcbdLLIkppdxDj7?=
 =?us-ascii?Q?uqbwHIiqpWKBIRxziA3kkgcwQB7+qMcLjVnjg+KnSBzxu35zS6nO9dRyaI1H?=
 =?us-ascii?Q?8+88fq9dJPvVc4mjYk+1XK7h3SKUYrJs7rSs5b4U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f653dd5d-de14-4460-f844-08de27c73a3b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 23:56:16.1918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zDfVDccrLje64y1/3w+QJKdaU5ebYHt/XXUS42+gvg0gD4pPynffAaormj1tGiC/pBVIwMOb28Rx5PCndokkHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
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

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Thursday, November 20, 2025 2:51 AM
>=20
> On Wed, Nov 19, 2025 at 09:31:50AM +0000, Tian, Kevin wrote:
>=20
> > old way:
> >
> > 	if (first_stage)
> > 		domain->domain.geometry.aperture_end =3D
> __DOMAIN_MAX_ADDR(domain->gaw - 1);
> > 	else
> > 		domain->domain.geometry.aperture_end =3D
> __DOMAIN_MAX_ADDR(domain->gaw);
> >
> > i.e. both are initialized around domain->gaw.
> >
> > but the new way has difference between first-stage and second-stage as
> > Jason pointed out already.
> >
> > Baolu, what is the number in "Using xxx-bit DMA addresses" when
> > using second-stage?
>=20
> He said 42.
>=20
> Indeed Chaitanya's dmesg has this:
>=20
> [    0.079787] DMAR: Host address width 42
>=20
> Which I think explains the bug. The dmar->width is being ignored by
> the driver except for that print.
>=20
> > my  understanding of various 'gaw' fields are only about second stage, =
but
> > maybe there is something we overlooked...
>=20
> That is what the spec says:
>=20
>   MGAW: Maximum Guest Address Width
>=20
>   This field indicates the maximum guest physical address width
>   supported by second-stage translation in remapping hardware. The
>   Maximum Guest Address Width (MGAW) is computed as (N+1),
>   where N is the valued reported in this field. For example, a hardware
>   implementation supporting 48-bit MGAW reports a value of 47
>   (101111b) in this fiel
>=20
> Seems very clear it is related to the second stage in that paragraph..
>=20
> So, I think what has happened here is the old driver mis-used mgaw for
> the first stage:
>=20
> 	addr_width =3D agaw_to_width(iommu->agaw);
> 	if (addr_width > cap_mgaw(iommu->cap))
> 		addr_width =3D cap_mgaw(iommu->cap);
> 	domain->gaw =3D addr_width;
>=20
> And fully ignored dmar->width, which happened to work because mgaw <
> dmar->width
>=20
> So we should be using dmar->width to constrain the first stage and
> expect that mgaw is less than dmar->width ?
>=20

dmar->width is the host address width, i.e. for OA. so it's irrelevant
to the input iova here.

I checked the spec again, looks the statements in it are inconsistent

"
3.6 First-Stage Translation

First-stage translation restricts the input-address to a canonical address
(i.e., address bits 63:N have the same value as address bit [N-1], where
N is 48 bits with 4-level paging and 57 bits with 5-level paging). Requests
subject to first-stage translation by remapping hardware are subject to
canonical address checking as a pre-condition for first-stage translation,=
=20
and a violation is treated as a translation-fault.

Software using first-stage translation structures to translate an IO Virtua=
l
Address (IOVA) must use canonical addresses. Additionally, software
must limit addresses to less than the minimum of MGAW and the lower
canonical address width implied by FSPM (i.e., 47-bit when FSPM is 4-level
and 56-bit when FSPM is 5-level)
"

so it's indeed restricted by mgaw.=20

I'll check back with our spec owner to get it fixed.

