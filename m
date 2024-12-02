Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A68009DFDEE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5174710E697;
	Mon,  2 Dec 2024 09:59:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fRHnEJWP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4045F10E692;
 Mon,  2 Dec 2024 09:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733133586; x=1764669586;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tFup1fEKEU0PuUVaRkGp82cTpO5dbArGfIIFsBLAmrI=;
 b=fRHnEJWPSpVPi5pKV5Y5mxRZB3I3hd6yUtpjpDFp50OLZ1WlMSu+lQoN
 4irGiqztbMSCCVR4mdhwSM3qJuRKvk1Z1y8McQUsy4u20n5Qul3zCxXQW
 d5+KjpBUycbaLHX33/Aea5j+YLL8VOgJZGAyQVLjoj/MAfCICZ3VLNOc8
 8kSIWFTokzo+aSDrN7hsUrMyKA/SFeXf391RCorrtZiI+VRYtIn3wnqAo
 GZpkp98d7+f4v7vtliJm1qjswODdLS8rXYsCIwhePyqe36RyBhBrrZJqm
 6BFTY9xhtBkyplPzWD4nD2i/vk8bcED17/3OED2hOnhNE2DYQT5ZsIoxd A==;
X-CSE-ConnectionGUID: m2SGNc7ZS1uxEWQI3XDfbA==
X-CSE-MsgGUID: hBxjAtVBTtCoYUEW/RRbKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="55785761"
X-IronPort-AV: E=Sophos;i="6.12,202,1728975600"; d="scan'208";a="55785761"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:59:46 -0800
X-CSE-ConnectionGUID: aVKl4ZxQTcyfixzGNd2mtg==
X-CSE-MsgGUID: Jm3lZ6QCT7m1wh0JsHUG1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="98092585"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:59:40 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:59:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:59:38 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:59:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HRVNtmjbshxPsEfvmG3Y6BV/mkKK3Nn460vxN7VcmXlyrswtz/s79ioF31GbdLYjzlAR2i18Auagxb97+g6+ogFBfRWYIVxocZxfUDJQbsWphuJfhttM00oscwBN0V/5RkqAXnEo28Y8yzQK5SqEbr5btqln48l6YeCt53D7iRfmFPU+hhbZbKTT9jz0A3UgLZ6LoZj3gpvdm7e0UAZrZji3HxNIxf/SVPNOzZLisE1oeWLqkAQQRXdvM2xRSJs45QNCiEgyKWR7dikWQYZlO7PEuBoH3iaO7DY/zo8OIKNhPxPN8pubQ8abuhO4rz/sMXboH717MK4/X4soQKmgbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+GFH36HwLPQZNSuAlSXOjgLBAJwZYkXQoz5w1QbtIU=;
 b=AnvsP0kcMRMX+ssyCat1Are38CEDVtqk0jvmUJWzHC5j9vEHIGwEIP7XLEIHzPEj4q7ReVmMEPXo/fx8+R5dj+EZP1LJY5k1ViQ2HzhLwtOlCwbo3TPZTEK9vgdbl8q1x+CareO4d1bpBKJfYNWISZJp4TEMMpyAnrlaauHBcqgO14X/PrbAsYU9SJEPWDzDvlCBebI4g3o5WBGSJHwZ1Dzv/j1W2fP4JfL5XC6gBmFSXgLi9bDQ2jtX4REiqiEececLmkbr+hALrh2l1bouMSPD+kX7vRhNPlJXU0TosQnYz4+IPZpvzOmL2KKsFhnfpfG3sv7lS9uWxtqpsldiDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA0PR11MB4656.namprd11.prod.outlook.com (2603:10b6:806:96::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 09:59:31 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 09:59:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Thread-Topic: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Thread-Index: AQHbN3fQ6ZkGJxCqh0SNzLw9AV13prLSy7aAgAAG2vA=
Date: Mon, 2 Dec 2024 09:59:31 +0000
Message-ID: <SN7PR11MB67505FEC9D8FCCC2A9C46CBDE3352@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-3-suraj.kandpal@intel.com>
 <IA1PR11MB634869A6013703B13A3B0C47B2352@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB634869A6013703B13A3B0C47B2352@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA0PR11MB4656:EE_
x-ms-office365-filtering-correlation-id: b189b235-24f1-445c-439e-08dd12b8045a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dIcfh3HiQDdFD2Q/QiqohRC3RZesyUvISk2A38/xZyOaNYH+qMLDSyPF4pNT?=
 =?us-ascii?Q?j9riECYIpAU8ITwduW/ybhAz7KAEZmRJWWoOM2XV9AqZkmA+Q3tCINaRW7Sr?=
 =?us-ascii?Q?jL93GxD9SSkhRV/RNHFW4iHozNR55qBNi833rmmhahmiYHvjezHQgSkKp6bm?=
 =?us-ascii?Q?4xcai+1vIE6dXVM75Zt+3/x7H6qLn5/C3ykad1pjbhQs9k+ZnhQ+QiG9biBD?=
 =?us-ascii?Q?/LW0GxhwOcMknCX1W0BLw/2i3bjWmLqdrEEsSkVeRUSzXrITNo/UpfOLIvtr?=
 =?us-ascii?Q?NsHmDEYvrpAUnTUOIcsxNz5ZL9Urdl1KsHdhEOouWqTzcT39iSwoy2im1FHy?=
 =?us-ascii?Q?UoynCRfBe71a3Dq2HYP/WMDJbAttOzCdcWOUb6UMr7kJPivOCAV77UF+sDrY?=
 =?us-ascii?Q?PCA+mQQBjSBHpEhsu/sahafWhLr2a8HqludzK/B8Y38xOufTjARMbm8i8HjN?=
 =?us-ascii?Q?+rHd+hXyKiGTcgyjvhN5X/0zOfgDdFUbJioiUms1niXWGCqFSmBjjeJxbxGN?=
 =?us-ascii?Q?vWWbDobpf5wDEevoGzlimq5GGvkMpob38FgyICboH54MQPd28W8tMAYdOWSq?=
 =?us-ascii?Q?pFS5dDRSiXcq+my7D93O/5LDFvP1ofBlYp4SS3ksNKXCkIxgay0GpYOOwzPo?=
 =?us-ascii?Q?JrP37VATNB+b+Fpx4BMs6CrBAjt+F7TdaTwFjENX/TG3z/KzFVnuLm2wswKO?=
 =?us-ascii?Q?vF6gZjEbu3ASxghaOBvtwEG52DnLe8frCMZ7fOrrfkbX+81Ffh4IIItEBmgz?=
 =?us-ascii?Q?N07cDZTo9ynMxKY6SNfn7GbSC460vtxPlbJA4sirpQM/8cOggflDwbGZWWVY?=
 =?us-ascii?Q?KLFNV84i9jd/ZoMuHHza6/2VliAFeRosFI07m+h3NyK2cTJ/vttU8hu6qdVG?=
 =?us-ascii?Q?bZi5SaHTeZk5pQMs1Y1pVnGbP+IkDf+JQQYSm6Gt8Vbu8tksQ9FLO1G/WrjU?=
 =?us-ascii?Q?AsmMxmyq3qPFfG1khOMGqDf6tavdNmCq4ezVul0THWKQp9ehnr2fC9lIgBbe?=
 =?us-ascii?Q?shdvGOxo5vxXFCoeLPIgAC19CxOFKzyU4cQpin9tuF3eh0tc3dQfv/mchLKR?=
 =?us-ascii?Q?U+2VffF3xvYoGp2zvgWdtIjA0Nd5lVykTXB13f0iWu6J0icipODhW/5My5il?=
 =?us-ascii?Q?LN9eoxWVzfX5NvrwKN2xXWapXRNtGX/r5Z29CH3h5+xvGEam25wshc+uX1/+?=
 =?us-ascii?Q?vdVNTS2n22ytXTTFUyc8m5XAJfJzsMu8GENgVGR1QAgXZR2N05Afx/wlAK3E?=
 =?us-ascii?Q?aemsvHn2jWUEaymSqJwxvsQEs3wcut1pMws4iP+Vu8TK+bTXvMYxb9EH9tb/?=
 =?us-ascii?Q?v/B7bqXIR0u2moNtiO77J7oTlHrlACg/y92vMWZ5H11cHUuJq7Aa+f48ltk9?=
 =?us-ascii?Q?f7F3kTlgmEx79rbHkqJjOZpPksIY595HA0TxJk/ZrjIAUQjY0A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WVduFLoGqPMD9yBsmoJuRqvD/O/IiJIKg4jgBNpH9MtG/aqAq6WYxwjdhBys?=
 =?us-ascii?Q?KOAMwofE3sT28QKLUas69hj5sS9R5hRR5BXGh61wTMcR1Ae9qsKAKt7W7aXH?=
 =?us-ascii?Q?PFhtC9F/wvm2Sh4xzovztXH7PyACgnncUcxiqq1KNBiEfsB6gr8lMrXlRSgF?=
 =?us-ascii?Q?Xy6ESKJhZ40EdvwgCzxMgYs/HkQeAJ848c2G3cKC4rv0TAxCY6Iyzm6C3IPD?=
 =?us-ascii?Q?YcM8vp5nx0HrrD7tpQ9TpufY6Jkh+SoHYk0ehiaTADqfVBdhRH1YZX1MsRiI?=
 =?us-ascii?Q?aEGV7TLLoasdgfV5dOXioJdPoRGQEfHwKnjvUV7/VofofVlJHAlkM7eO6BHg?=
 =?us-ascii?Q?apuS4qcj41x9U/hy0vTRIuSPxPWmHRDMui1kekT0P5C05KNexkyiWzlj0J+y?=
 =?us-ascii?Q?a1jas4Bmeg9mVHq+VHxTAXOrNlQRrRW31gsvM/nMq7RBVr6SHb5VShxU2sIE?=
 =?us-ascii?Q?/kyrkKPc2TG234hfPQ9W0UTEuzB8AHA0EBgKsT7roGdKZwucMQqAOhxyAjl7?=
 =?us-ascii?Q?95P4vKmm7WeOArDr5cb2btz66PL2+zcK0N/eMnmD+BVxyjAwNYSIUKE58VOc?=
 =?us-ascii?Q?pbpkr53fO4ck0kvRiuCsKVS4D8rs4WrWC44yg4z+rUL83OGbqKNdIeNpUtkI?=
 =?us-ascii?Q?zZdVkpmsr3gyma7xu/IcFOLGHu+MYtHRKN5STRf7do/HovQO4w0oJiIsHT4X?=
 =?us-ascii?Q?JLu1py7gjWl1z4juyWw5cC9cjNqhSMpGT7AlDE2kWneRZtJuSAhUp0JF4NGI?=
 =?us-ascii?Q?96pT0EP5K1QRYg231HjQi5fONBjVQYYIdUeoD8h4ObwkhbhE6FKxKbx3R/df?=
 =?us-ascii?Q?8GFbfI10PFP5BO+l2kx+iiwXieJkS15zdozAEAdhHbBeloQtHZ6WY/bq0qXr?=
 =?us-ascii?Q?rBSoebQ4gHFxdgcIl/x4fdiC+gatx6u492jN7nR2GvJS3cIcS2EuT1lee/ig?=
 =?us-ascii?Q?PuIbkmBIPpV4KX8yQ/Fbs1nOwvQCQzR5ldLWA96ut+K3SgpkoAWrAzW8u6v3?=
 =?us-ascii?Q?v2d7Gf5+tZ/kQZH7MNBFWdQElX6HmxaWE3lXCJ8rqz7ig+Cft8r4APL10xvA?=
 =?us-ascii?Q?35CwC5dWSbajN342jVuztUjFK637bTU2aY/t2wchQXPIdns8HJVrcviPrkp7?=
 =?us-ascii?Q?VlZtUmcalt35QygKiLLYD8zAlFx924JRVN/qf8sjkp1JO2k5FMFYJKFfCNAt?=
 =?us-ascii?Q?AYDv7vnJArBff8wQ5QCyWYmWKKMTJGgQYQYh+Sg5QdpxcN67yJxQSNi8NjL2?=
 =?us-ascii?Q?voIQMdsyrUZ8eQbqY7bAKHjEap0c+W6xnIgf5ebo6qMNvt66q1ac1LtfWpEW?=
 =?us-ascii?Q?aaqL/EWwfCmT2jvc9+MQx1PD8/sQgT51J82KRAsa+j2VWb4uggyJKHlK+TGs?=
 =?us-ascii?Q?aoRLevmAntA3auHnhesKt1L5O+Gt55jjeu8ewyXYysKVzm9Rqo8B4aN7uXyh?=
 =?us-ascii?Q?Qcb1lAu1+05PjZCOmKJaxgd8yJprpgyoTJQmOhouSeeGWikL3dJE+0OTr0JF?=
 =?us-ascii?Q?la1sehDYPTWAAyNrRPkMjhbSANSELxP+/+7DDOoRFnbbrC8tipGJ2CQyYn3q?=
 =?us-ascii?Q?NCG/F8NF3PZOdKZ4y1AloQ33mdLBOTNac4VWfEut?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b189b235-24f1-445c-439e-08dd12b8045a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:59:31.2322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ic69EMpKDDbmkr4PvFW91teAXEhCqFm1+kFBVIJugfZkISD6r2n3XS1riTHmwXWn69QGZp1CqzBayDSvEzUSsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4656
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
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Monday, December 2, 2024 3:04 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: RE: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: 15 November 2024 21:31
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> > <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
> >
> > Rename the enable_dpkgc variable to make it more clear what it
> > represents which is that if we are in fixed refresh rate or not.
>=20
> Changing names for the sake to this function doesn't make any sense to me
> here,  can be dropped if not required.

On second though this whole patch can be dropped altogether since after a l=
ittle moving around in patches later it really does not make any sense to h=
ave this change

Regards,
Suraj Kandpal

> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 6d5f64ed52ed..9ce3b5580df4 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2855,7 +2855,8 @@ static int skl_wm_add_affected_planes(struct
> > intel_atomic_state *state,
> >   * Program PKG_C_LATENCY Added Wake Time =3D 0
> >   */
> >  static void
> > -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> > enable_dpkgc)
> > +skl_program_dpkgc_latency(struct drm_i915_private *i915,
> > +			  bool fixed_refresh_rate)
> >  {
> >  	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
> >  	u32 clear, val;
> > @@ -2863,7 +2864,7 @@ skl_program_dpkgc_latency(struct
> > drm_i915_private *i915, bool enable_dpkgc)
> >  	if (DISPLAY_VER(i915) < 20)
> >  		return;
> >
> > -	if (enable_dpkgc) {
> > +	if (fixed_refresh_rate) {
> >  		max_latency =3D skl_watermark_max_latency(i915, 1);
> >  		if (max_latency =3D=3D 0)
> >  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> > --
> > 2.34.1

