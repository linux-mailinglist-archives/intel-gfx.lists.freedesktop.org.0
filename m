Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6EBA00390
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 06:27:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AF3F10E286;
	Fri,  3 Jan 2025 05:27:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R29NeEZM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3972F10E0B9;
 Fri,  3 Jan 2025 05:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735882073; x=1767418073;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=L/LPNyqqcKjaXQ/C/IdcEiHuN+lUHRUiQxO0JHXmfEQ=;
 b=R29NeEZM8/r+CFHAbwOuV71zuqe5yEveJdKSS1Pq+dZ1Xi1wxc46Cfrj
 kioW0DxLtSms4ievRVdQDyyGCXZUAwQWkIUlqIWKoMfVyZhLRGCz4nPKl
 4HkCwAiLRBy9MlZyD10pae8zD8gFtMd59AoiwiCT7nwIufcW8gz3CQXfh
 cjkZQA+5d3XV3MhPgkJUFsMQOzkEP0qh3c8N4PUA0LF8lw5jYuAptwvg0
 2J0l7Jll70z97xL/QMQtMWAjvp9raF+SbsEPHOyceIZaCH+R6dCcGXdoS
 dITkgcmJ7Ku6rcJGgTsBIAaLJGZMfCkM06k8Oq9jfn+EpziNliURAgpGz Q==;
X-CSE-ConnectionGUID: 7JJyw5dYSNaZ5xw/zFW2QA==
X-CSE-MsgGUID: 1BqdYNxFTKKjuca4OIrpsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="46618764"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46618764"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 21:27:52 -0800
X-CSE-ConnectionGUID: Squ/lskIQlCG+h4uoj0tuA==
X-CSE-MsgGUID: ly1ydPtKSHi6T9/FYiF/tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101538872"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 21:27:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 21:27:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 21:27:51 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 21:27:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jzQ78fhF4E1KMSjVnGYjDORAyy+7LJ4K6FGkq9zI2MMKH1bF0vSRv6nHmEGcaMQMTxcpsaZQkkQQnCpujaVp23yL5XaBdeMBWFVDOJA/L52duqOqteGyxBXmLewtiEgv8V5ThiNtwPRcYvOtFikMr3Y5xuH/QmiXmlo9pzgGbgZ2wWxE5Y0dJ6RaaAWhYtQCkdMN/5XDfLJLhvXJQ/p+9jDy+4k1hKNpqs67aIpbvrhqslQtZjz3K4OaFlNJzpCbD0VAwjr6iKCRMgBab+2UILiISOd2NcTTRq+9r1qadtdUQyCOs0+HKBanV2lJuPgs43Pb3PCnBu7DIKJg33gNiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zelH3AjwiR0gWYZ4Vy7hygRvNCi8Yat5dODGlfDnhEo=;
 b=wqGZTGFYsAFJAbZwhxS+q3vg2b+kXG3w2lBb6KMZX5ohvYTrvyALHXv5brCwW8J2w5fWvxmXeBqWAWmIY+0KNH1ApLZX+AvTlowoyC+oOIr8cNIJFFxC3qL+m/DpJUWXpqHMEjqXxIg/QRf7keSLRHiNOcVn5ZPdCyhIH/oVlm5A7hlsxqw0MpeVA9hXQEjrUJ7EoJT6Y+ED/nO0/LQx13CbQoCJO5N4INWLMpqa1wRBSBmLr28kpftVCXRevnnMz6IV7VrcjORNz/hzEUWd56MmeIP3EeaxTMahhI/sI89OX6YKdLV9OaZzE5RkNeGNwvOrSERxPPdaRYoi/POldg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 05:27:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 05:27:03 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbNB0gQNFqNeO1O0ms7aeaRePrOrLiYODAgCJyD4CAAAM/EA==
Date: Fri, 3 Jan 2025 05:27:03 +0000
Message-ID: <SN7PR11MB6750CFCDECA01753CB791378E3152@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241111092608.129410-1-arun.r.murthy@intel.com>
 <SN7PR11MB6750B12553B61CBA5028331DE33F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA0PR11MB73079CA6B4D006CC7C9CE331BA152@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB73079CA6B4D006CC7C9CE331BA152@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4773:EE_
x-ms-office365-filtering-correlation-id: bcfb90eb-ce47-4c2f-cf07-08dd2bb741c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?8ppM/rx3x32FyMj3HOooihZpVGUejC28xN5sd60VSDiPlSeFPgK4Jsmvykfc?=
 =?us-ascii?Q?MHzTnTgZe8+cxfh4+OBp5e7u2YGb5PMU+UmLi+as/FJSsxdD+GxARlqUWMzW?=
 =?us-ascii?Q?TVG8EgiCGGIvbULgqnkJ3EWJ0RBvSRK7YTSjn2IR1919K8NWqmWfHsRAcpLc?=
 =?us-ascii?Q?NKBydfohw8sVkXlV5Iim+AMx/Npjril9MP7rqhfC5ho6lSk3yiCdrgCQa/mJ?=
 =?us-ascii?Q?hDJUxMdQD5YInGLxz3OdfpBDsbrTx77O0VGLxBEvo952PCqqLYMSLuScyZnY?=
 =?us-ascii?Q?VddOmyLwIPKs32mEerggcgqt/0987dbFydIkuzDR8wZbaO1ffhcEy+dr54vl?=
 =?us-ascii?Q?nHM0HXGC/vZH1/WAvAZn/jHgkdltBckTRzRGTTS2hYsO3xLLkPJX+D0tbCyp?=
 =?us-ascii?Q?pcf3Y3Wbk7vnkDeFTIEqk1iqE0UnjPoLonPHsv4VDph2WeGezKoKjplWZhIh?=
 =?us-ascii?Q?8w6+FLq28xjArBEwiE+k243gY8luztiIwdUOfHl9N4qCq0EwO1TXFV6R0zFT?=
 =?us-ascii?Q?C4WGqIorJwILgzVtkMwIKn8Dou7siyZeDMP1gdMO6TGjGkkX0vYZ7bNMU3ov?=
 =?us-ascii?Q?Jqg9dvxlIkb0SMLAtmDsTLe0gCSekMk79ILtkLLunfZhuNjSn1oMS8eiMRoH?=
 =?us-ascii?Q?ZPGJBcjtk/1lCowo1U0e41kYHVr3l2tCPGSjefhk/+40Lntwe/bOa+FdMT5G?=
 =?us-ascii?Q?A5HHjQDh8tbj8XgZg79MXhVQWH/mjBj4S52eBDuN3XT9YN9CUzcOKuLygcZt?=
 =?us-ascii?Q?7neo2xZ4qSGOLioojJcENI3FmuHEYTYWEssPYzKDUYC0yLbjYbEzNn79cSQi?=
 =?us-ascii?Q?FK2NpjAMThGDGP4nW4zKVjlYWpfXvs2xfCSaL2ELtULN2QeRY2zYBDIsCwMr?=
 =?us-ascii?Q?3pJHyLnwj/qClHZW6bAbWV7kWVnel+61JDLCkKITeutk5dbiLmr0A/rvUFUK?=
 =?us-ascii?Q?tACcVMmfwYt2jnJ3tlAmxiCKi8gupfmr3vCtzwgxd2pcCdKqvPtYELawD3kS?=
 =?us-ascii?Q?NtUL9MRfIwcT6F0UHZJUxcSVpYxRFVzAHOXNq26XsCdlRZqzEm4j7wyNDqDw?=
 =?us-ascii?Q?2A2Ayq1JRbMQVKI1t9jORpguJ9fqMz8Yknjd/E4MufKry0FlmJg9g/EGYI/v?=
 =?us-ascii?Q?HYZBijJz0CLHFhvwCYft0ERkYkxBROJGI/GRbTzyZPkcBf7tfZXGHKyaC/jU?=
 =?us-ascii?Q?Hbs7D0NNGYuesqf73q03qCjsmRvsdcMyh/LYDEWRactVSAGOHhyHgCBRd/wz?=
 =?us-ascii?Q?Yky9KzOursjOZlrHYGXfztV6xBrnQ5wJK18Na8Mil8uIlpeuvcoZr90XlBLw?=
 =?us-ascii?Q?wUm6UWNeiVJ28UiqBzbC1LLRQzVxiRgcMSrFThktctxVKBLzXMX2ZznQ02w/?=
 =?us-ascii?Q?3KprY7CrMszd2iDs1e76YHECNhDdYbSL53ciShTfK81qlH1lQGPZrtcMbkux?=
 =?us-ascii?Q?c3fMfZ2yL24Tm9nJ02m/8HgW57Z1FaRP?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2auNOQxrwwjWZlylex9dd4qy8q5vbD39xZpEoH4UynfkjthUpqKXK7sdPe6Z?=
 =?us-ascii?Q?aYB8MRsTCz8Cl6f1jWYlYrIFnwSJ6RjUcELmYbcj4G3yDrqyqte2+cIbZeBf?=
 =?us-ascii?Q?+X+o8/OC+6WQTrCcBJXMG1hwy9m5NhLql1YWX/t/+EoMvqlXPkI1Jn14bSsW?=
 =?us-ascii?Q?BTubTFswKGsTa5rY5WnEdv+U/3mlI5cW/8S7XLmH+xqFA86QdYLVhFaRqQrx?=
 =?us-ascii?Q?v4o5DtNHfUzFXd0Xx1Vdcn3nmurB5epIrPvPdyjO44AwQRgwEsjovC+fiUr4?=
 =?us-ascii?Q?B5T4+syM4BBwCqpQf9qlKS8NNp/N0eiz6QGT3wTJfha49bsWZ4AUyciFGQVf?=
 =?us-ascii?Q?rap1FLYAcuJz8EiUg5upI+NZytVKLr9D+ruuvvgORrFi8Iv9kKK4we6E9CiU?=
 =?us-ascii?Q?XQJg8ilDTRswDx4lSS5vXqcbVdOBIRctU4KanheH5a1AjuxAwx+s/cwBLLt7?=
 =?us-ascii?Q?9P3VTae4sq3ipvr6zYIj2/xXOTaVQOQmHYeaLi3YlOd1b1dKFhEaD9oj6Swd?=
 =?us-ascii?Q?MPLholIA6WdOaay13xeF7BoKpGrlCFLtgbHVWssvQweER3ugqQ3Pigc7NmbB?=
 =?us-ascii?Q?v834K64wISQeDj2ASdXntytDUi30oJMzJuM8C2PgiRUNZa+5fs4OcVHrEmzh?=
 =?us-ascii?Q?6ixhiYUwU0APtrwejTDkret0prRgvQYCe9pvh2ozWPBhLx3dpkJuwIcKdqz1?=
 =?us-ascii?Q?TW2p1kIyPXVZLHFSArFlzy+1kKejlNJ3R6UshWrGAllKix2mgTPE27Z/J7nJ?=
 =?us-ascii?Q?BkAmX1oNix/bUpKTih1ZKutEywo59CtuLc8S8GzC6h0X08/H3bmAHkN8OEcn?=
 =?us-ascii?Q?YsGyqA4axCj1Kqp+XF553AS2KTatWJvO/dDN273dhJZ6P55u9UYRDkrtk8fm?=
 =?us-ascii?Q?1LiBjZFZioi9uXR431CAwx2mc6PHw6OX0Ctv3vOp9vkQG5xkcJtpF1vcduPg?=
 =?us-ascii?Q?gdV84/j1p6uwxumKNl4XqRSlYkxeDKDR3ZICetYX3+gcdFJfY8eYhzWUMDRE?=
 =?us-ascii?Q?g4Ox8HFiiFO1pJ4I5pM580SGrp36bnNHBaibrwTo71vKpCnI9SCeto1pxQrY?=
 =?us-ascii?Q?Ckgn58aAgXU76DWEnrTtj0rGd3nyEm271P9ekUI9ctC9b44s+QHKnOOFruYh?=
 =?us-ascii?Q?yoo9mZ7/jX/c9OFEou1Y+lH+JfKyhps/WcjZ2tWHR/tEAcUVsvUa8eJm7FvF?=
 =?us-ascii?Q?VVO1A3LF8CDVydPEvTgIc2kzhpX7VnoQr4VR1WBipX+kWWqPQDpYMAv3P4+a?=
 =?us-ascii?Q?NYVBV1YJ2OmF0HPj82Fkej3AK1a/5LJjwgvYxpL5hRauZ9723+Dn9PA0f9IS?=
 =?us-ascii?Q?NFvisGzHA8zsYt8+3dJHQkuvAQZVlf8Zv+cBFnDveKT5r2KnwqMX2wCgajPV?=
 =?us-ascii?Q?n7y6CBqRM+S8vxy88DwCq4Z9c0MnILkbK3R54A//3+RIJE2SbZRmGqPjtMjK?=
 =?us-ascii?Q?s3mdHlDm79gK9haEP4qVKlB0BPVQG6DIvo9/pgrld8g6uCJUnzqeSBUFXAqY?=
 =?us-ascii?Q?BcYukpG0PzT+9fpv+rwaHU9qJJn0/+UArcvP0L7vGHnuyAg9Xlx1EbNUq8Dy?=
 =?us-ascii?Q?4qepXzZJaAMRqI2hjM+CUKjbZCCstHFXcQmjvdD4?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcfb90eb-ce47-4c2f-cf07-08dd2bb741c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 05:27:03.9012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jR/E4J73GoUUPaHKXTqFpgIT/QD4aV2xXKMuQWWHVAN6c0gbFrikPKKClUEdR0eROWtFZWzRYnhGUWbXsutMXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
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



> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Friday, January 3, 2025 10:39 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Subject: RE: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
>=20
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Arun R Murthy
> > > Sent: Monday, November 11, 2024 2:56 PM
> > > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Subject: [PATCHv4] drm/i915/dp: Guarantee a minimum HBlank time
> > >
> > > Mandate a minimum Hblank symbol cycle count between BS and BE in
> > > 8b/10b MST and 12b/132b mode.
> >
> > Missed the typo here *128
> >
> > > Spec: DP2.1a
> > >
> > > v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> > > v3: moved min_hblank from struct intel_dp to intel_crtc_state (Jani)
> > > v4: use max/min functions, change intel_xx *intel_xx to intel_xx *xx
> > >     (Jani)
> > >     Limit hblank to 511 and accomodate BS/BE in calculated value
> > >     (Srikanth)
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_crtc_state_dump.c  |  1 +
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 35
> +++++++++++++++++++
> > >  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
> > >  4 files changed, 41 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > > index 705ec5ad385c..f8c1d1dd66a3 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > > @@ -258,6 +258,7 @@ void intel_crtc_state_dump(const struct
> > > intel_crtc_state *pipe_config,
> > >  			   str_enabled_disabled(pipe_config-
> > > >has_sel_update),
> > >  			   str_enabled_disabled(pipe_config-
> > > >has_panel_replay),
> > >  			   str_enabled_disabled(pipe_config-
> > > >enable_psr2_sel_fetch));
> > > +		drm_printf(&p, "minimum HBlank: %d\n", pipe_config-
> > > >min_hblank);
> > >  	}
> >
> > Covers the dump but still missing the checker Also maybe a different
> > patch for this work
> >
> Checker may not be required alike max_link_bpp_x16 since this a must on
> every modeset.

Oh ok.

>=20
> > >
> > >  	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
> > > diff
> > > -- git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index d3a1aa7c919f..d2716addf88e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1075,6 +1075,7 @@ struct intel_crtc_state {
> > >
> > >  	int max_link_bpp_x16;	/* in 1/16 bpp units */
> > >  	int pipe_bpp;		/* in 1 bpp units */
> > > +	int min_hblank;		/* min HBlank for DP2.1 */
> >
> > Is it only for DP2.1 because we end up filling in both cases if uhbr
> > or not just with different values
> >
> Its for only MST case applicable for both uhbr and non-uhbr rates. The
> minimum calculation values changes based on uhbr/non-uhbr rates.

In that case the comment min HBlank for DP2.1 does not seems right that nee=
ds to be changed then

Regards,
Suraj Kandpal
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
