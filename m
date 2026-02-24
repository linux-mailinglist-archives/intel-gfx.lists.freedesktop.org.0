Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIWkM0CgnWlrQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:57:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 468FE1874F3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:57:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA19310E57B;
	Tue, 24 Feb 2026 12:57:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9FZS4qz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D993710E57E;
 Tue, 24 Feb 2026 12:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771937853; x=1803473853;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=obeL9rHwvQ2mkx8rwczcijq6kid6bgleXR5lfjtx4jE=;
 b=F9FZS4qzwh/BhxBiIAsN+EnE1+Jxw4uX/vhgexSz+FsCgkCZ3wa3TMAO
 uqD1w6W/JKORwi+TI0w76+Tx9XepdclJO50/Tmg9idzTszyxGa1w1Z2Ai
 e67fMhOQ/Qt99uK77n/V9dS8IWnlPtfioQ7LoJBuIox7IDngVmA/SK6YZ
 +Zz8IhaHzJI8jTuSlw6VcLFSAB5s4vDgEysuwwHG0TqLRrygjze9iYR5M
 hyVJ/n8q3VNM0BamSY8T0Sl8FrFmCEAVo1TjxH0T0jCshWeZjBmjEXsGP
 ZaqQFDeofnFDq8Y0JTj9n1PgE0OfPIX2M8qt5dZWY88WdyiU9X18DmW+U w==;
X-CSE-ConnectionGUID: Yh3SGoDqR52yths43NTdEw==
X-CSE-MsgGUID: I9AjVWJgTnecnBtjv3Vxkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="90361790"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90361790"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:57:32 -0800
X-CSE-ConnectionGUID: oZ5Iux+XT5yNBcFJUT7LVw==
X-CSE-MsgGUID: nUNvfSQiRC6rGl3ehS5I2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="214735761"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:57:32 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:57:31 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 04:57:31 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:57:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xz12s90PY+q9CcnX4hyEAGO9BnIQ22nf5+z49KPImr3Oi72ivIlmyZCcNR0kG0Rbnj7D9+utsDAbvK7yejDpjBBxV754L3hQvaoYLO4I/cKKv/Lzhjiz+7fDAbFXFV/qoFcEfHy0u/WYtfIj0KJUPu1H+RxURYJt1912Ohh+LghSnFI3F6+bsVo41kX5guSAiJhsHlyFeWfJRKojiLHjGJKVO4JctEfYNFgY6eW5IxkZcYCatLSdgOSh8hcKOPILu9gYwYPiCI/gf4Gt4xxwzCmCzbf1uUV2bEnBHFAMYerFqZ+EatthIrriLFrniwU4Ub9J8CvNRymf3+3FuBUVuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bQpGUr37nlLFZ8IS1koXsfvmF88E5sLBKmFJaqxyFL0=;
 b=RmhaHT0aZjsEmn3RnVJ1/M0MrBqToMaUgYGmedBHmb44trkwz91RSGKMEu8hKjFBkeYDqh1PwCPsa+7Q1RrbAmQQvnighGK65/c6UW0XTdr6vhMRrMmR+M/Azd5Er7wVvpVS630nk7SwLzJfoKGTB79xqfnM8tW6z8/FOCDPdpb5rOL+wkHBRH6VxQUWTWBFHgpn238msz9Uj59LUpziELwgOG5bGVaarQ2v1ZADfZKwnlceaGAAUb0cCELwAlRpSlR+LFqeuVO8invengcfCTU4vT6co4HYm0VnHhnaDdLCjeja3xf0DZZYfONFsqdY92LkAca8+50qcLYyxrRrkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 12:57:26 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 12:57:26 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] drm/i915/dp_tunnel: Split update_tunnel_state()
Thread-Topic: [PATCH 3/5] drm/i915/dp_tunnel: Split update_tunnel_state()
Thread-Index: AQHcoc23UttwMTgGrkyrs3d0/zhgxrWR1nUA
Date: Tue, 24 Feb 2026 12:57:26 +0000
Message-ID: <IA0PR11MB7307340A639817DF7CDC2E5DBA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-4-imre.deak@intel.com>
In-Reply-To: <20260219182823.926702-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY5PR11MB6437:EE_
x-ms-office365-filtering-correlation-id: 3e2f4c00-038d-4564-7956-08de73a442a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?5CcL+AoEJr2s3aE1q10V/pJcrDZRPLBYYO6HC3C/ZoZZAZmLKxRXfMVBcw50?=
 =?us-ascii?Q?49dL5yN4ixdBjneOsBOlMivFrbz9pP2HBK1MZcxYT8iosJI/n63MlcclUxou?=
 =?us-ascii?Q?bb82W96gXS9o4zTUz+6/AcAlVOJB9HtddzSsnaE/40FF++KYWMdYyzIkosXc?=
 =?us-ascii?Q?rz1DtB6ejyXi6s+0Py5qzCZIxwA8d/x9fQzRQo9QCpFmb8km8pjl+zkcy+B+?=
 =?us-ascii?Q?CFvy6Cf98kag4FZCfEOasFzn8a/h1Zf/YZd+Eug97upt/5pydcpsuUcMls3M?=
 =?us-ascii?Q?oew0PNIpyYWrSACf75Pn0h7Q9TfycCZmL8grcEE8wXx10ypEAkibdOR6lFEf?=
 =?us-ascii?Q?vVQOoMxPSuq5x3b+jWVw7rdCscnrNutQBEDS/SeeIR6+1JMS4TJBRUfZuIC7?=
 =?us-ascii?Q?wnfsCYLqOHti1ibCdQN2uV7lbT5rR5hb3K72FTvI9vy8d0aCW5w2Z8K8D2CU?=
 =?us-ascii?Q?Ck/kkSasUXg7tm6R6HKRmxjL1/T9ih3ax29OQQP+bLOv/CPMixdxwPbnV9cy?=
 =?us-ascii?Q?7/76zmGflSpNnetwFw6tdNVjVg0AyIPOPybZ6uGBsmzT6vL36rJ/0IyfC3n/?=
 =?us-ascii?Q?5VMN2U0S7gjh/nXzqVgwgbEXivlSsnXlQX1i4ltpvMYiSC1im67ltxsA9ebg?=
 =?us-ascii?Q?jrgU9USco663C20KaQV1T3F75CYhIhVIE8OmCRuX515srOQhl3tcUULhPpu3?=
 =?us-ascii?Q?gBPr8MXuOsRpzybVzVcD0oq4d6nES901SpwGpxGUZTA7fJEXh3XEHiIbkg90?=
 =?us-ascii?Q?0xFDnMBcgHci0oNfojxweQK1tUjqDmU3Q4y4TkNtn8EGtYIfyw25jzIKycAH?=
 =?us-ascii?Q?mr42zSeOJERTPyCKClzDYRkKGltdOoEy/+n/S4QZJCP3diJYhd2D7kMFdyBZ?=
 =?us-ascii?Q?vAvZuRh9TE/gYfW+Ut67pELQ6kGOydI48uKPyAmw87bqgWPJWXCWNiIE2XSU?=
 =?us-ascii?Q?wcBrt0vnyBdRF3wjKJ7jPwlqUJs/Sds/3/to0SC8fNRBf7VNfzF+9L8Rp6JT?=
 =?us-ascii?Q?w3rFWKzv9Y45iW7lqMSOp2GsHQXftFo3+tJiEg+yKhMzDJY5K4yvuGw+JWWm?=
 =?us-ascii?Q?/YD2pgBkBVj7TFPCdRXwRBOykzoKQuG9Oxx+tD72fL7hecgtsWaW/mdLRcXT?=
 =?us-ascii?Q?rfGDQT+TygpB5ZBi9WmBJKKoCxVRMNht8jFe3XhnRyw3XcfuxEF9OZ38gmDB?=
 =?us-ascii?Q?Ci/Wql7QdGUpYGXxgqIB9igOp38458ZzHVtPQ6HujKzLcrM6WFyKFNlmlGy7?=
 =?us-ascii?Q?vDK2AJeD8utaMNc0mfMODMmfGxfJKRPBjcL+mQ3j83irXezKDCNCyQhQD7W3?=
 =?us-ascii?Q?st03KZ6KWppR3G4uNAlWEQjQmHKCQTRfh9bWeZc268ZNyPLguDLL5N0j3DqT?=
 =?us-ascii?Q?CrZT/6cCJhhFPPxAoG+MyWPuRhuKWgD9ZTMauPffjnVLMp5vPPTl78UTHAO0?=
 =?us-ascii?Q?c9x+miDjho+4fKrNvMLDFl+TMzasflFNq2vzEQw7Jna6DPwDoKU3P0qbTbtj?=
 =?us-ascii?Q?2ZM0VG4Fe5r0r5s31XaEZvy04ANCxrnNXIaF2PcvA9fIDIwi0XwidwONxHe1?=
 =?us-ascii?Q?CTltFHXhLAeAgEgWMlFIclPBACsud8PLRWX7KemCdmsY6XB8RJsQOjSQZCr7?=
 =?us-ascii?Q?6wkzlxYsupZhzqx1IVLLQc8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OO4eRhjtjJtAli24L4H/cmh1s2E2Gx2xmiSi6IlsUs/MnvF1uOYFrOevjJwz?=
 =?us-ascii?Q?xWWSEL1yOw8Bn1n+PUbvSjJcDSMmttodtCt5/T3THWksAFuPeQ6tL/oUuRRs?=
 =?us-ascii?Q?9yARx6szGmRTLxwtCaoW8n86JEmGEOZiGLq1tBMqS8kstgO/hG4E+6nSPPO3?=
 =?us-ascii?Q?jSKdbO37TJ8EBg6BR67FmpNtIFfUgAh84Pma56WaRI2MioDtVUd5x7qgo1d+?=
 =?us-ascii?Q?Siilm5RUsxzlqki+6uE+LOcimhnbPn6caPBmQWDAwzNw4OBnZ6jjPH6bHZtY?=
 =?us-ascii?Q?KlI8OgTLPY3cqn8DfE22vjSMOW5prf2rrgxcpGhWMtRWhwi7q4hie8WNlc4a?=
 =?us-ascii?Q?LHnfrQLJ7OerIHfaq1cnWeuD+KuiGYFv3y3qpcyURV4n3yyKJ0ZjX2lkjXwN?=
 =?us-ascii?Q?nT2HjL0tMQb86w6G+v0QveE31/UYMtIq3hYt69EoLeTUynV/43QuFwS9MSID?=
 =?us-ascii?Q?DwoI9KYmW3kZLP+lK3FSKQomCYVsXcyamkfkQRUY+cn3F0UQKd0g7XYm2dDH?=
 =?us-ascii?Q?31U4zjN0ndj19IrvbmjrJN5QmKTwmessBXgxaiDHM8mdYWTPiwb1nSREuwmj?=
 =?us-ascii?Q?40fDWrrejLjwZqA0wyk3vBFpBo5cj4HKcVU255HZeDjjIAQhvWYLCEUDi8vH?=
 =?us-ascii?Q?IDIQXuyvnJNckdgn7N3k0tLkfmg1QrA45gZzjI+JIGQ/jrMTBUJryWO5n1w2?=
 =?us-ascii?Q?JI/LqMEHDA+e7gRR17v1Bb5gRWZ9pIxRAPQB6B5OAJBc1uWJw7IUKIBZxHqs?=
 =?us-ascii?Q?MBxI4l8wSQEHgs3k7Iew4CsokrcbPLjp++RVkFMPbm6zXDP1Tex8zbM6C9xu?=
 =?us-ascii?Q?bWw2msmqvN9psOrPXhHnFK1SKWO/52SmO7ckKrWpjkR9Z3AypTYHZrzHcy3v?=
 =?us-ascii?Q?hiEvMBMtWZ2ymsDWQT7MpEZKpFbFKTWmKB8aikLh3cQq9YUA0l/rRxYXbln+?=
 =?us-ascii?Q?prYWGyduh6aUXI9WZe94J5BaxvUqVFejujdO+NDhXr1U2/UhJ/jL3a6RiwsP?=
 =?us-ascii?Q?eN9rGGQPrA3/aeCGn21UcN9XvVFP+gQxGjuUJCwMqyShR98DtuesPKRQBR0u?=
 =?us-ascii?Q?yboahRHhmfvaNTDjKE26mphyEb7YTDJhO6AUvwHmOpQIqIIO8YAsKnjgYUAO?=
 =?us-ascii?Q?ZRNME7fb9+Ku6zHOcfR5qDMQNIK/Sjsapts1t5MTToUKvo4lJruRXPnRRQ9K?=
 =?us-ascii?Q?g2WuD6VDqjvbRvc2q0E7uktlmo1yXOn6bSOfr/i6bmb5pyNXVQUXBnI3GHSR?=
 =?us-ascii?Q?9WcDLHdJSof8Q5/6aQCqYZcyBvs35Y2VJdwdvYiTPc3fMyDOn57vNp7CpHKq?=
 =?us-ascii?Q?P0GbU7307jQlzj9FifDKY9zK5OzCP3BGHJtdvm9j+9AOLk5OJO+Oc4g3wmuW?=
 =?us-ascii?Q?4S64lvdmntkWvCARkdK5Egze0aZ1W0uopxeImB5nudhfNmXL3rqLskLFWcme?=
 =?us-ascii?Q?/kI9dHoct7bQ7E28KHJJEseIYW6ZtCibI6/K3kRoK+Ujne0WKnwdp0roDTtO?=
 =?us-ascii?Q?Qen9c2tmmpeHKqPE3XtbXA28z7xURDBPUXQUXR4l3T7J2ypxq5+J/HIZienM?=
 =?us-ascii?Q?o/3TD7VD72VYO0naAnGy6qCmpnbHOIRXtziAugshoiW8vniJpizo9+TeH/Ga?=
 =?us-ascii?Q?aJHI3DtLzY82m9X4ZdJ6rumNuzAVmADAxIbqimcnfqL1MVtaXbCBkbiZfpqI?=
 =?us-ascii?Q?nGQsaSpo3blDu7iKVfc4AeVP34euZFTtZGBXZ/36icK4157DDg+ErvK4QLy7?=
 =?us-ascii?Q?JtltMM/Ngh4A/zp5BVvTkYaeXY/0ROq15/Yz0lvu5X03mGLq6nKdQDnPrROo?=
x-ms-exchange-antispam-messagedata-1: RxwiVnozT/XY7Q==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e2f4c00-038d-4564-7956-08de73a442a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 12:57:26.3343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FK3LYruOPQuwxYhzi+HML+xYZOEMMvXwCHyhd/uSLnsou8sbH4MdhgjZfBnoQ0C9fzT0KLtvIkygwo25RFDssw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA0PR11MB7307.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 468FE1874F3
X-Rspamd-Action: no action

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Thursday, February 19, 2026 11:58 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: [PATCH 3/5] drm/i915/dp_tunnel: Split update_tunnel_state()
>=20
> Split update_tunnel_state() into two helpers: one that updates the tunnel=
 state,
> and another that detects whether the tunnel bandwidth has changed.
>=20
> This prepares for a follow-up change that needs to compare the current
> bandwidth against the value from before the DP tunnel was detected and
> bandwidth allocation mode was enabled.
>=20
> While at it, document the return value of update_tunnel_state().
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_tunnel.c    | 41 +++++++++++++++----
>  1 file changed, 34 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 9f3750035f68e..5840b92dace19 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -62,16 +62,12 @@ static int get_current_link_bw(struct intel_dp
> *intel_dp)
>  	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);  }
>=20
> -static int update_tunnel_state(struct intel_dp *intel_dp)
> +static int __update_tunnel_state(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> -	int old_bw;
> -	int new_bw;
>  	int ret;
>=20
> -	old_bw =3D get_current_link_bw(intel_dp);
> -
>  	ret =3D drm_dp_tunnel_update_state(intel_dp->tunnel);
>  	if (ret < 0) {
>  		drm_dbg_kms(display->drm,
> @@ -89,11 +85,20 @@ static int update_tunnel_state(struct intel_dp
> *intel_dp)
>=20
>  	intel_dp_update_sink_caps(intel_dp);
>=20
> +	return 0;
> +}
> +
> +static bool has_tunnel_bw_changed(struct intel_dp *intel_dp, int
> +old_bw) {
> +	struct intel_display *display =3D to_intel_display(intel_dp);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	int new_bw;
> +
>  	new_bw =3D get_current_link_bw(intel_dp);
>=20
>  	/* Suppress the notification if the mode list can't change due to bw. *=
/
>  	if (old_bw =3D=3D new_bw)
> -		return 0;
> +		return false;
>=20
>  	drm_dbg_kms(display->drm,
>  		    "[DPTUN %s][ENCODER:%d:%s] Notify users about BW
> change: %d -> %d\n", @@ -101,7 +106,29 @@ static int
> update_tunnel_state(struct intel_dp *intel_dp)
>  		    encoder->base.base.id, encoder->base.name,
>  		    kbytes_to_mbits(old_bw), kbytes_to_mbits(new_bw));
>=20
> -	return 1;
> +	return true;
> +}
> +
> +/*
> + * Returns:
> + * - 0 in case of success - if there wasn't any change in the tunnel sta=
te
> + *   requiring a user notification
> + * - 1 in case of success - if there was a change in the tunnel state
> + *   requiring a user notification
> + * - Negative error code if updating the tunnel state failed  */ static
> +int update_tunnel_state(struct intel_dp *intel_dp) {
> +	int old_bw;
> +	int err;
> +
> +	old_bw =3D get_current_link_bw(intel_dp);
> +
> +	err =3D __update_tunnel_state(intel_dp);
> +	if (err)
> +		return err;
> +
> +	return has_tunnel_bw_changed(intel_dp, old_bw) ? 1 : 0;
>  }
>=20
>  /*
> --
> 2.49.1

