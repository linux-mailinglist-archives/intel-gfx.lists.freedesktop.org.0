Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A7D9DFD68
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D517510E68D;
	Mon,  2 Dec 2024 09:40:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="THCPUFqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8592810E68D;
 Mon,  2 Dec 2024 09:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733132424; x=1764668424;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xhphmrFBUH3Z693snI64/SkptT0rUa81neh4Dz8ygfk=;
 b=THCPUFquo4QkSsZ7fqwBL0Q2LGnS/H8CnerObMO589RhOhWO/5p4zFG2
 KeA6vzRpEXvlmZRPFwy340zzdFv4Ngcc/iwWunIMMS/D4UfGqA+XQePVh
 rE7/4nN8zWdba03Vq3r2g+geVGhh+BFSNh6x4BDJSIp5QPm9o9BbtAgxz
 rL006SjOn/8NZG3jYy28BM6FLOZeRg+o69w8Ml1PbDTngQ1cyUtf7EPq/
 We1nVdEVC3TCvLx2sUrH2gvHhgVM8odyR9FkmQDhECghJLKX0LnVoj35f
 S1xNUnJb5kxA3gPeEKJ1dWCV2EVq1qZfCJcNEPoYvhvC0g4rr95SlGBtK Q==;
X-CSE-ConnectionGUID: iAOFGPB9Rk+I2Y7nUY+emA==
X-CSE-MsgGUID: 4EZw8KGMT3iMSiGpccClLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="33035592"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="33035592"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:40:24 -0800
X-CSE-ConnectionGUID: uqoi8PSySNGd1hcfqt6bSg==
X-CSE-MsgGUID: 3HWJ3qvQSUe9WRZmEaSbEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="116321926"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:40:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:40:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:40:23 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:40:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b1VNTwwZxkcQfTXIc3tj/Y+g8sVu2Hfn13dfzaKlzi3yUEKZhp/csgPDoILeDAAqdI2A16c5FaoUBDF/6H1toJ7iulqk9/aGKlSf4E8tJfh0AOud+Odo63pneZBFw6RbtTkN9Dd1OGjX0/LmtkWMGCTOqS+6QiyK3DlDIxMYkSFdv2D/ZdoEy/HtxNHgIWYJ5fYFWeiuHFVFO4UM31IP0vq1baUzY0XMHbjR42B8sYmQHRc3ANQOIfv8AWVdEOA8cH4vm+q92oK9Drxy3En5tQwFlsI6uLlGDwH2QwJllp+YLDuqZ5ZZTSxzP1UmHh3WBZI+gtl2XqCYcro/th+qDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LVntUprIvEXVHEAW9fq/bevWXCKXo2dPAHEsD8aYj28=;
 b=dtofbG9p5tmuEHR95Dy+SLxI8Rwip/tCxgSyDjnOXpw2el850O6Q85cgSwVSuig8tMKmehhzT8S007lqu5t3AVcCL/45w8YJxWTYvhTiD1vxBknREqanfJSqU+6Y3GYi0LS3cZNnFISKhLqpYx1PrUlzE6wUx8SixsGnz/ziIoTBiINGFrsyKkCWEvB36vZkHT8YQntjW5sMYuYr+xptWteM0pcbvvFNw+TeZkuzLAOFGsXgpZ9gP1gz3yQlyWv2aTBcxlJ1BCmMmiSZha2vVREzXzaXpnkH+f4aEDgXSERcacxT6aZVJ+hc5bWYilg2UL8ax0tg0UK5a0blgWRpcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6121.namprd11.prod.outlook.com (2603:10b6:208:3ef::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Mon, 2 Dec
 2024 09:40:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.014; Mon, 2 Dec 2024
 09:40:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Thread-Topic: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Thread-Index: AQHbN3fQ6ZkGJxCqh0SNzLw9AV13prLSy7aAgAABKBA=
Date: Mon, 2 Dec 2024 09:40:20 +0000
Message-ID: <SN7PR11MB6750B4B720BB8B136CCE9EFBE3352@SN7PR11MB6750.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6121:EE_
x-ms-office365-filtering-correlation-id: 523dec86-968d-4d0c-29d0-08dd12b55697
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?6JUoMmHiTH1JIR1XMwexVNftWBTteEpoEyVUJMJi/9viRAH6rY3crNFpOaRP?=
 =?us-ascii?Q?uiy4eI+651XarQLM4SwWKsqYPy4jMo9fAYVklRpN1qxKeDktctD56MwN2eJA?=
 =?us-ascii?Q?kxqKOuscq3GCT4xYlIEIRgi7BOAoZaLIPuBaIDhUNXPQmVG8QoitQhzNKgNN?=
 =?us-ascii?Q?Ec+fFc7hNO6w0G8TyuL3izQ48QDau5yNGMFmlzm2RBeCjqEeytgE6B+aFZZk?=
 =?us-ascii?Q?pebpzb/0KEgOJbQgvsLuqNc7C57/MWojRGSgs5qP8fba0Tv+gQhfbitGD3Gc?=
 =?us-ascii?Q?gop2CyDrsk1m1F46EbtACZFaaXgDZsR3Glx+IUUrrT/axWHXPuG8xjr5x3tM?=
 =?us-ascii?Q?QF6rKUYRMu8/M4AdZqDPh9A9Xfk/+JpjqA5SyBjhKxq1sTiaXNcfwGFG+DMA?=
 =?us-ascii?Q?ByuJxZ38MsawV4lJmhjtGoUxaLnZJDQmGe3+xYGaMfVTsmOCo3+hn2op6yYc?=
 =?us-ascii?Q?8NX5W/fndwBhnxzpC5TlH4GG9opNUGfddj/svm+2MYkchdhH+oLZQ6AHwubF?=
 =?us-ascii?Q?VoqmJ5a3tdMA2kAMpegds9T1LAlQ6UlYZCd76C4WQ0dv8CaoC8+kOFVXQPEB?=
 =?us-ascii?Q?l0ZU5vHuox08Z/+mbjvEEN4A6e/VvHH/Ymmif7pLToE57pi94FFydIgN44TC?=
 =?us-ascii?Q?Z/lRfXp7RYEADRBqscFJMVKGeoad2uF6tAYj7mverFyLNJsdycpmUf3a2RfS?=
 =?us-ascii?Q?eBZdakah9J2CUrmuBujyJq+p7pJY2o8i6sKX6nod5EeD58FLnY217l7C5brw?=
 =?us-ascii?Q?cbNMbaVyW/BjvwdHlv4YoEoM7FF2w3Pjniw2egMUq+qU8rdfnsB7Gc6vdXxi?=
 =?us-ascii?Q?3+moc6Vg1aPeser6KOGpKco/KMZjTQzJuLDnpfpvJL2lACKjEXnxM5JsQyMx?=
 =?us-ascii?Q?RyST2I9pFel35/Be5w927ULZYc4yfqHmVQDBaGqpsulhNSeEKCCu5dTKalTN?=
 =?us-ascii?Q?gU5h04UaIBWnULFVehTQ12Zg2TQHeJ5oYqb/be9TbB0IfZsV/COgVUXTdUnN?=
 =?us-ascii?Q?KIr+yExkYQpBHUwxYwzT8fZRwmzPNqNDJnOszkAKd2KNbvrvP1MGsHng7RsY?=
 =?us-ascii?Q?D025mhjINZunZ90J1ydayMxQmHXRUgmUhJyEOOZ6CA5XnyzMhUxKjuIiLaQa?=
 =?us-ascii?Q?8hU8dLCi69VY3FR9cxd75atbGfBbEe8SyrJ6L7BqwmERtGV2fzDef56Lu90h?=
 =?us-ascii?Q?OZwe86PtSpSidwP/ZlFRjsktl2b3yS+7jwkwDITSx+/CCbH4f+MDsED6Wf94?=
 =?us-ascii?Q?891O27Z0uwplLusJGrRX85hKTF9TG9CPIsDC1wnhLlmlD3X54sg8i+r+SAqS?=
 =?us-ascii?Q?RC8pWfE/eD/8nEzkGMsgfZ2O5qwdPG3LQXJyqQ8BM3VyRjXoLzIX//yr028M?=
 =?us-ascii?Q?J/p4otNXqXcIE3JhjzBuc1vvnfuhY/ZXGEXGkS9mkjMxbI+zUQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FqdvL/sNvDkBZDoBrq2m0ZdeL153SGtpqX9sGhQL3oRn5nzmQl6byeBO/RgK?=
 =?us-ascii?Q?9QPUPo4mTnMn18k9kB4kkZTeya+U3aNia/PMiCU8Q9QtPJoQSx4ffQEJ3l4c?=
 =?us-ascii?Q?BK9SGNFNu8lRRjFGg2hprUSBMFhw36iSZ1l8VKPiBPocQoBUkgie+of75E6m?=
 =?us-ascii?Q?VcuN3MiH00+3NiFz87YTqjSgT72DfDmcxdOF95rebmku/jv/NkiMN3UQnoFK?=
 =?us-ascii?Q?CXbNZHZVVy0LMK/h128q1BbAF4QRMesBX6jHR6p0DiA0MEaG21i5MksrTq4c?=
 =?us-ascii?Q?TtUfLxa/WsH2CdpcP6CayVTlv6nzKnp76ey5F1vAlRo3LJW+u1dv8OhtC/PP?=
 =?us-ascii?Q?awz8+eMGdt5sEhb8Y/p4eCKkZSjPInAoCM8J8wL83l2CidQyaVOmFG52pQnx?=
 =?us-ascii?Q?T76TvBdbOaAqwzJu0MJvWy0elL9WUWUHyZ8L1bljptu+uhLu4sUQOzB23bX8?=
 =?us-ascii?Q?K1GLdQM52ek7zwR5N8lXpI0/keROKsq5beNd6+P2QxjjjukIfYFR2qjBZRKA?=
 =?us-ascii?Q?yCcGjMM49OeFREfgxhqAWA/d6s/i2lyYrUcLNmOMea+IBYTk6fiqXoTyGtPD?=
 =?us-ascii?Q?Sp6rrWnis1Z/qkAkJFU2YOziwg+KP28DwyQ/9equn0eJaHBYgs2SNQHU3hVB?=
 =?us-ascii?Q?ejlR7QvB91bseNVzvEQDB82B/PWOSEpBSZzZiPEA90dmwCMPsNUaz8YlYNXg?=
 =?us-ascii?Q?EReLEGd25zYv4JMdGLau8Y2G+M35NTwVKeNXm81c9BzylpHCGAgL5VLufmvG?=
 =?us-ascii?Q?jfaOu0QD1sF+pSal762DqEBIVo88dCzKGMnFKDNwXNpwAObl/Z1khrH4UI6u?=
 =?us-ascii?Q?WxXBPAneeOdPjQH6NIjiYtSMvJdgIAFIhoTq/5sfQqQbnHs+kSLWvKDTWxkx?=
 =?us-ascii?Q?izyo3bJFGRd5sVXm/uwpmik5+PvvWSFUWPVWpn9NU+8g5vJHCPrXgtyR5Qbd?=
 =?us-ascii?Q?4KgCyqGUsrNqlNoUAopFkRhgxKloajovXqx3ZvN1Vz1op7PNiW+fVNGrk7S7?=
 =?us-ascii?Q?itFxWPWoShds8s+4at2gxSSCzE6aEJz8joYwmRQilIq9gYDE9E2g6BqoMHu8?=
 =?us-ascii?Q?lotrEHPHuZ5lNU+vQjBemyeJ0/9qokrQtC/hMqz5FC+zTFlaywL7crrKntwU?=
 =?us-ascii?Q?QXieSc/3J49+qcj0c7x+qZTJaZg3ro67UvkWDLmgEFcC3LYYrh78pcQzCeWq?=
 =?us-ascii?Q?yjmgdmtB/sWwyeH81711Blh7n4YTafzYrrWNQuX6NjNMBynDYUvg1iNw2b9o?=
 =?us-ascii?Q?9RZ7spbgkjsCniu0A9R5YwCoJA0mdzMNLIfpqEYlt894ys9IJtNd8Cc2qC2c?=
 =?us-ascii?Q?beuttGFjkDS+OAT/6G+m4h2dC/R3sgGyOYLo0Fh1FJ5zNEinJmSoydtmJAQe?=
 =?us-ascii?Q?3fC4+40aJiRAQhZAoHI1wCue2LDHpAh8/Ef3ZRr2DUYuCLzkNtAqbr4U0zbM?=
 =?us-ascii?Q?XOCd+jYUkQPNwGQFNQVy1Uj5HB0IrNGD4yIvMBZjlv4StW87dLBFJHCVvvG3?=
 =?us-ascii?Q?1PyHF5c+NhlpZkDHGVeMo+IlJ6kp9QRCcGkE1Pd3GT5h3nIKU55rhnYnnK7E?=
 =?us-ascii?Q?/zp+aVPJC62+7caSBJUHWGSnF+GbmpPn2Yl7UoWH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 523dec86-968d-4d0c-29d0-08dd12b55697
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:40:20.7184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zqbd+tGj3d0+NGlG25tB/YN4Exv5l5iUiXpm5GzQpy4UygaF1JqYA2OEKv6OpkHEH1/euvY4exTnNzEDAkfI1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6121
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

It isn't just for the sake of function,
Enable_dpkgc gets set only when we are at a fixed refresh rate which make t=
he
Name fixed_refresh_rate compared to enable_dpkgc since there are chances th=
at DPKGC is
Not enabled even though fixed refresh rate is enabled for less than LNL=20

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

