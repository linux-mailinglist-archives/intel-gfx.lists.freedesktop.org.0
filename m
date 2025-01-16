Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B63A1323F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 06:14:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC7710E8A9;
	Thu, 16 Jan 2025 05:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hLJxLPp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16ADD10E8A9;
 Thu, 16 Jan 2025 05:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737004486; x=1768540486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VEOIpNp0GvElwAdhEseBd5bK/sjFnhQe1k/Cu7+ww+I=;
 b=hLJxLPp/H2XtCKMz9BdHAsp2wiFZxI6x43EMtgz51QZJOjoqziiFf0XZ
 zmksEivXHkbVHNW3AfhX3xryHjDXPa1IkfZtKRJjGFSU4yqXpR8dYKONP
 on8yoLhaOGHyjgr0CJv9RIqvoHWZiPSag9V2VHP2d+aA/LSjbcCWtT2Nc
 iXf0hYfF996uXHihtKvp3S/z/VfWulz5io6tMnRI1zi3zuq8LKeEYRtOk
 NxpAMMbFNreYy88kDfG3V5mdgAeWSCK1lfGq4UnqY0NLSVoYgJtXHDDVh
 C19Jx5rQ7xiznv8tBVUVjsqHRsr0T7JtIWqQkhB4MA5qv44bSBZFtKKWY g==;
X-CSE-ConnectionGUID: n2cWNp1aQsqNH+G+BGwb8A==
X-CSE-MsgGUID: Gt5OlBzwQGuuS3cEnGubcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="41308035"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="41308035"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 21:14:46 -0800
X-CSE-ConnectionGUID: MkMHnW3UTH6QkcDG8BeX5Q==
X-CSE-MsgGUID: rkyCbpvIShGn7fml14m/fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136232542"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 21:14:45 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 21:14:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 21:14:45 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 21:14:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gR+9sTvP0WHrratSoLp1CAxadMpS4trSCSVSe7sV0LvbOLyaDUdcDRPm1xwdEPrVe1D31rsJiUyLZzE8Sam2rhFWbMYjkWGjsiiEl57CBktW9jECVGUjWM24c5hyYolNfqm2zFVz8+0oqf0H/76Ub0QuqvMBbilqHSYuUc3NnSYdnzrV7o4UJE8xfknQAReGLYh1LykeeER1f5FHIbAI2BKe+NREPXjl7pyh7/GhKoaTd3Hz4Xtm/Uw5OSGFW4MjRo8GS8vOCQdjrmnQjSED7YWIbUFZU6wgPgo9tyUW+dNu6VRWI0i8neI1vFiQFqUSI8jmDFCsN9fljIembSxe2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8B2MIGJmNW/bOErNb96+WcT34LL0fVBxuJkLyvVg7Fk=;
 b=Mz1xS+z8wYxc3SsUsFqC6uGdI9Xug8PDgDNOjbhOR4YOlrSDyVkVubJBWdshVSwXezLdegIJ3ptfWrYb0/7vbexDaOLPijSA9T5mUfOlU9UJVOh5TH+7IcDglMOzvQwlzedwMpu1HyXbekv1nZmxIVvDZamQzbCg+GOfN6yLD+KZffmvFSlfiQ9a4FA+rH6mPea5mbqwSd0W5jge2h86sunWxzcUF7Y/IK0y6zevyjQywGt3bZMhwsl/w+csK43BujTyvtBzk+qyx44oioA+k7XfYl8c/m+SbRyksILMiZNY3cqbIa444dA49evJ24+ZMYli/TxJnpMSnQdgNBA66Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by LV3PR11MB8577.namprd11.prod.outlook.com (2603:10b6:408:1b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Thu, 16 Jan
 2025 05:14:22 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%5]) with mapi id 15.20.8335.017; Thu, 16 Jan 2025
 05:14:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Thread-Topic: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in PORT_CLOCK_CTL
Thread-Index: AQHbX/C6cM4E/xzsYEejOTkH5lbMf7MLaouAgADvOPCAAMVZgIALy0tQ
Date: Thu, 16 Jan 2025 05:14:22 +0000
Message-ID: <MW4PR11MB676114727CF9A6744DE2911DE31A2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20250106040821.251114-1-suraj.kandpal@intel.com>
 <20250106040821.251114-2-suraj.kandpal@intel.com>
 <Z31CF9QeIe7erRqE@ideak-desk.fi.intel.com>
 <MW4PR11MB6761744B96F87D810286FAC8E3122@MW4PR11MB6761.namprd11.prod.outlook.com>
 <Z36wT9M6kUToR1r-@ideak-desk.fi.intel.com>
In-Reply-To: <Z36wT9M6kUToR1r-@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|LV3PR11MB8577:EE_
x-ms-office365-filtering-correlation-id: a7316883-5d4b-4da8-ca07-08dd35eca33e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XPK048/120JvE5fg50sgm/c+ojmZt7WD3QPtWYw/t3KECOeFfm0YmdvZ4L4m?=
 =?us-ascii?Q?mpVvnHSsanSuMPXsr89+ZIGBdZxnCetxZLKAkMKAhFyEMjwqsVWtyDjup3Vb?=
 =?us-ascii?Q?rEGiu0v2ZotbVd/xHvtisfDDm3GJ1vrFcBcuYUh/dZLJXcnyidcBfuq9Luw7?=
 =?us-ascii?Q?9dCyX/MwXsQnijA+JbHJvU/FI2id/t+ZzKtmpfOJ/+JBt6G/vCO7NsJCgQki?=
 =?us-ascii?Q?VwfE+hqtYVAVi4wWsFBAUpSdejQZ4sXktvC5XkKb5Z+9eMkgE3BendqKIK5X?=
 =?us-ascii?Q?F8IYwOQ2b7M7ktw8xxtrLU0VknLlPvIvvJAUHTtZ/+eQ4v5gCMIzIcGZj1bI?=
 =?us-ascii?Q?WAcPlS6j3tLjdoCHmZ3k5MaHU/VqKHXCcM9K/mxBzyQEyWVWF2cjR3orHY9+?=
 =?us-ascii?Q?TYY2slW5VIk1Xi04twTa6z0uf/7KKbvoVeeaeBgUFr1vAZrXPGka4BI9ojDG?=
 =?us-ascii?Q?LeNfOUG4Yz30afMnZNwrpD5tm4Pz7syqQruMz0YFxVF1XBI0oSk6yGwv5M8L?=
 =?us-ascii?Q?rklIjZheFDUlJN3RouYGuBPkexVmlWpi4/KSdltAUuk/GLXBkoEbquawe6cO?=
 =?us-ascii?Q?N41MG73pk4KAGTG5xS/NMcPcRACYN29KMyAs5B4mifTgO+/FUSNYBmc98xsm?=
 =?us-ascii?Q?zGL2GbO4VyFNAqPJooNukiaJ484LfyU59TPTORWCiboUUoalvNFs0pOKNBc0?=
 =?us-ascii?Q?fPHYL5uLgtmbFHoVEa65NgWB6e4+sTWFGJM+GaBdQM3Ki3/kbaw5YuMSw1vU?=
 =?us-ascii?Q?rM8uD5vOf4jZVfXfiOWzv0cADumEz13CPEQnWCGq62xxdDnejx0ebN2Xy7kV?=
 =?us-ascii?Q?xjemV5yJzJwRIzdIOegIANcSC33SlWk9fW5AyITVDayT37+FDguwDrdqxlt/?=
 =?us-ascii?Q?RPvHFyR5LVZ7u9+e7E605wneRfu/SSca6mSrwbl4ChujqKpTnt8jm7sI3W85?=
 =?us-ascii?Q?zgkm2fUsurRT1jv2AsGa3hY9QIVSIGuG1S0wajhDD0AU2hG8fWpi4kftFxWO?=
 =?us-ascii?Q?HLc/GFYHkU/q+biuT9T7P3W5X57qjntzKQWNcVi6muvmV+RZsWI0KAZrKKVS?=
 =?us-ascii?Q?jdw9s1rlIOEGkKXItWfJL2I3Jy3XvdxL9LAeH7uQiYEP0AnbEuFpHt07jYlO?=
 =?us-ascii?Q?JIRPcnhMPBiVGvV0n6IOxClyY5BaBh3xDxqRtTJbZ/ST3bMlBo4cCBk0gh5f?=
 =?us-ascii?Q?tyk2YlrE0Rt9cgtJN5u459jytDpT6KfJovzTmbRtE8NOYLHybQOviSXp3/Fu?=
 =?us-ascii?Q?AUoJe4GwhorU1RDLXEaZ/epuOA1eUvpz6R9BFbxuHFaI+3IsQJbuBbl4+OIm?=
 =?us-ascii?Q?pZdZmVx3xgCBkcJWG3wKfurpBsfiFBf28wvxuiX9/qE/ePaR4up3+K1Qx0Do?=
 =?us-ascii?Q?basQha2mYOmrz3Z2M4pWNtRnZ6FtmgOLNARv5DGE0hT/cunPv1lHxoSu0+GB?=
 =?us-ascii?Q?ZklGM9YP8O6WGe92pwBCRAGNEstwDvTZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?52wBIP1WRECZLJQwzBAiIdBtRZmaIMXVaVziFvo9womdSeQyWtxT0/43mzOC?=
 =?us-ascii?Q?pm0yXDt1/Bo/YxkXLFpsQe+A4ideeKuDdkXtre/YAZz3gHsYEmfKxXe6sMXa?=
 =?us-ascii?Q?2b/h8q7Uv5MR7i8yYInOXTb7Dds6nO9Lpw/lkedyzew++39McPBHbUhnUV6+?=
 =?us-ascii?Q?JXDN7vgHFZgmvrOoZSZFbO0DGw1MLdWqKtx7PiMBTsK4ViVu04rTtKn1NPGF?=
 =?us-ascii?Q?Nls2Opx3leqa4uqp/re4B0uBYoXE+lQEauytWQH96Q9ZbO/Isb9o+lYsbElH?=
 =?us-ascii?Q?TJxU47ZCCdgK8G+O0s2DygBwpPtHylQX+UXSx7IkP/Kr02CW+RXMkUIEErhZ?=
 =?us-ascii?Q?8HpLfZGOpoQMGG+K8/NVRyTw9Daf/OqmZgySSCCPCexRkMX2Y0BziJQi7SXx?=
 =?us-ascii?Q?bxC/EdEqU/fG258HtXyLnu0+Qkl+IB+51YMxfLB4bxad0s+jDeGTGB5fx9zq?=
 =?us-ascii?Q?3J8srFHj4Ac6xAvRcGLaBCEO3VBTqCoruthyhButb+H60JuQHUo5Tb76dR7a?=
 =?us-ascii?Q?NrniL/yNpA+76E+yDPDgUAY2yN0EYmLyNa+Gywxfu/tjohf8WmUIrlbyrOjj?=
 =?us-ascii?Q?9gN5A0Rrr0mY/v/OoyPCVbBuSTRsXgQAUgKXxI81MBIxC7IibYAa8AlRde3O?=
 =?us-ascii?Q?hSIY+7udORHwrCAjZ8eaRqCjhUzduxZ1zKqzFAna0ShEQ95EW2Ee/3Hv0vB6?=
 =?us-ascii?Q?OBP3HPEm9bTvupoSmacVCB2Q/zXxZ/KKyBy2QNVNlWtB4FYOC1daQuDw5nru?=
 =?us-ascii?Q?VApX0rL+GdrWDFbaFVMXCHYuXM4fpmjwXJhbKPCgp1gzk0Y34ZB6ZVAKyy4e?=
 =?us-ascii?Q?LR5+p5YqcTRGO9WxI9LZt2dDmpHPn7md3/FJ95sFOyVZ9MPGilNVFPuYFr5Y?=
 =?us-ascii?Q?gcCK5lMEZWfiU4ZkHjUyr/NIAJF+hmXvDKIR0NKU7PbcEnjRaU25sJ3Js0zw?=
 =?us-ascii?Q?BBqtROvU5/KZ0K1vzFovkugsvoZoqH0MiuNWnln068cLmpapz/7O33/hVFBG?=
 =?us-ascii?Q?n1zDLQ7JIZEGEICWWDmYzH79ucItfq7WIrYTvmwu/l4ZjUBtUd0eMrs3Upi2?=
 =?us-ascii?Q?nKkxtrJZ0ZM4+6oa527vYt9dKnbNU9crsLY51/j/YDLGTReNzE+jAkaguxvl?=
 =?us-ascii?Q?dC0dQROiYqo9c0GDr59SUIakqp5ldmc5aesxw8Z3Yl2YTOCLT1W6lLSjP6PM?=
 =?us-ascii?Q?6V1307MgVu5hBdoiMga+D95UBiTUupYkeuoztcmjfXYlFBU9Gp847ediJPHl?=
 =?us-ascii?Q?T+2F19ASffCWk5js0lN2/S/VV/v/LgCRVPn/mlC2M1xcjMFQpOYV6ScH0j30?=
 =?us-ascii?Q?KK3etgtADRx1sMqFSPq17zK6K8h7kL/E65LKv4RgwrCZttgj+Bm7KeFU+6Ym?=
 =?us-ascii?Q?f+2iv2deHCvHFFWbTRDoRQGacdV0CLUdUriJrGK0wWhhn7mjm26lt+khmACV?=
 =?us-ascii?Q?sZswvbv9r/ZhI8kKDwvxP4Vv7h4EqECsruxVzkFYFdJIZ4xYTX5U2HUPUsRS?=
 =?us-ascii?Q?TJxasQmWtLMNq1XIpD+cQ/TRrueldXDnBBPzPXCVbBOxHAVxQAf/B+duOto1?=
 =?us-ascii?Q?0g7tf8Zl4XJN/+QwjQbxBl03vOpRk4ZF0P4D1zn7?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7316883-5d4b-4da8-ca07-08dd35eca33e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 05:14:22.3684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NHqA8QvAOoNJrSpfZQwPNFD+oQWbqRcgnV8GyCMv7rszndQ9cAWYkEU2Lf6NMNiT2Qbi+qHGJxNj/0AqgPReQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8577
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, January 8, 2025 10:35 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in
> PORT_CLOCK_CTL
>=20
> On Wed, Jan 08, 2025 at 08:04:58AM +0200, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Tuesday, January 7, 2025 8:33 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > > Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Shankar, Uma
> > > <uma.shankar@intel.com>
> > > Subject: Re: [PATCH 1/2] drm/i915/cx0: Fix SSC enablement in
> > > PORT_CLOCK_CTL
> > >
> > > On Mon, Jan 06, 2025 at 09:38:20AM +0530, Suraj Kandpal wrote:
> > > > SSC for PLL_A is enabled for UHBR10 or UHBR20 regardless of the
> > > > need for SSC. This means the ssc_enabled variable had no say to
> > > > determine enablement of SSC on PLL A.
> > >
> > > I don't see the above in the spec. It suggests that SSC should be
> > > enabled on PLL A for MFD, but in any case SSC can only be enabled if
> > > the sink supports SSC, as indicated by dpll_hw_state.cx0pll.ssc_enabl=
ed.
> >
> > Hi Imre,
> >
> > You are right In Bspec 74489 under Non-thunderbolt PLL Enable Sequence
> > It says SSC enable to be done on PLLA  for MFD when on UHBR10 or
> > UHBR20 (PLLA is only used for C20 PHY UHBR10 and 20.) and check for
> > ssc_enabled for Native mode to enable SSC but now the issue is that we
> > aren't checking for MFD mode any particular reason for this ? and how
> > would we go about checking if we are in MFD mode or not ?  Also the
> > ssc_enabled bool variable never actually gets set for C20 Phy which
> > makes checking the ssc_enabled Useless, which I fix in the next patch.
>=20
> Enabling SSC for DP outputs would require more changes than enabling SSC =
in
> the PLL, AFAICS at least:
>=20
> - Check the sink if it supports SSC.
> - Check VBT if it requires SSC to be enabled.
> - If enabling SSC, also enable it in the sink's spread control DPCD regis=
ter.
> - If enabling SSC, adjust the MST BW calculation.
>=20
> In fact I'm not sure how this works atm on the DG2 SNPS and C10 PHYs, whe=
re
> SSC is enabled w/o checking/handling all the above.

Right now we use the below code to see if SSC needs to be enabled or not
intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5

Also this code section only takes care of enabling SSC from the PLL side th=
e rest
Would need to be done in the DP code.

Regards,
Suraj Kandpal

>=20
> > Would be great if you could also have a look at that.
> >
> > Regards,
> > Suraj Kandpal
> >
> > >
> > > > Bspec: 64568, 74165, 74489, 74491
> > > > Fixes: 237e7be0bf57 ("drm/i915/mtl: For DP2.0 10G and 20G rates
> > > > use
> > > > MPLLA")
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > index e768dc6a15b3..3fd959a2773c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > > @@ -2747,7 +2747,7 @@ static void
> > > > intel_program_port_clock_ctl(struct
> > > intel_encoder *encoder,
> > > >     /* TODO: HDMI FRL */
> > > >     /* DP2.0 10G and 20G rates enable MPLLA*/
> > > >     if (crtc_state->port_clock =3D=3D 1000000 ||
> > > > crtc_state->port_clock =3D=3D
> > > 2000000)
> > > > -           val |=3D crtc_state->dpll_hw_state.cx0pll.ssc_enabled ?
> > > XELPDP_SSC_ENABLE_PLLA : 0;
> > > > +           val |=3D XELPDP_SSC_ENABLE_PLLA;
> > > >     else
> > > >             val |=3D crtc_state->dpll_hw_state.cx0pll.ssc_enabled ?
> > > > XELPDP_SSC_ENABLE_PLLB : 0;
> > > >
> > > > --
> > > > 2.34.1
> > > >
