Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 817ADD39EDB
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 07:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85EB10E36C;
	Mon, 19 Jan 2026 06:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ldoJFWIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895F310E127;
 Mon, 19 Jan 2026 06:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768805038; x=1800341038;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FmGcYHl8czdJBSIJYL5RGWEM+II1pYy0q1sAZJQtNn0=;
 b=ldoJFWIEtusGBRWfdw02PCRS8Rro+zyfkWqbKKjvD0iwzwyviz64NMSQ
 2pbUuTfWVtaKmeaWskrtcpM0lbFIiSSIpw8RWHC8L3YwRWL8ywSWDqAf8
 waO5FTGHf2NED4mUaAGfsQ8+dtgN2cEasqifL4Y4LTJNfyF1+7WU/LVf6
 d61zPEjwxnDVufSRfD3TFSgjva4bm5sh3bSKkof/gF3IcBO8xhHEBr9jx
 1oh5iBbjtR48O36Ry96N0h9gcRQxUsFAeex2Nazx71LFEKd0XaiJdQ+VX
 gSEvgJY32id1OPKMFcvYEQzYdnPtQmnYqn88xWZaqeVNzkDP+bgaIwzdz w==;
X-CSE-ConnectionGUID: JegGfH+cQCiJmN5eYeZXFw==
X-CSE-MsgGUID: GE+u6+LcSwurFrkEwyJpIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="72601840"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="72601840"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2026 22:43:57 -0800
X-CSE-ConnectionGUID: w/N8kGM/RMO2e/2Ng19eMg==
X-CSE-MsgGUID: F7vD0UcLSe6lb5kTBZXtWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="209927638"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2026 22:43:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 18 Jan 2026 22:43:55 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 18 Jan 2026 22:43:55 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.11) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 18 Jan 2026 22:43:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sqsPokWUiTfRRzv6XearCgf9V/B2nJeIfbwLI6WVztVaUgnCk8/0nJ4RymlN2q853qYCt6vHne7DxHSlG6ya0MR8zvzR+osuca43qlbUUtfazM1wNFjd0jy/i4EBWJYw3VtbgRFwvvXlItaNPYFFfFXxJcKbwRscn2OOvKK0KnLXxSwp30W7u23BtFiBRs5+scdvjgbQ2Tmhjsgqt9TeHUl0E1PGL1zEiMKhA6I1jhq41y7TONXxk7hG85XO0JLYC8avTsIcvue9ebhgN9PULz5WtQ8WpvSdBGy3cuzARHQGuNrvj5WjSnBviU4JW2qWtplqt9xXjezO8l0kGQ4jQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWaQFhLIg3gFjXokzpDIGj7Jg7O3o6+3qJH3Abn+b5w=;
 b=MyrJweAj11Fk187WI9hfZHFfRByxQDJZblkmluO32ZGetsIvD9OoAs9QLrYrVRePzd5DGium3i8/5l4wIVwugs0Csd/+6bs4kpcGS148dUw0s8u7LJtbs8kW6pJa1qz9aDGpBXew3W6RwkLFHiKq949dNnyXVcxkpDHRAEhVXW80b4wabmDu3scsvNg7qDXGfCPCnMqoiHJPRntLOf2luIAf3qosnOuUjGnASvZICOqwYbQ8ZrTm5yjCXnl+R6odx7k4XL4nKZIUzSjKCnW3SqB7Bp/b13+pyfB0G9uRENF1dkjL29g3f3f2Ndwkl35aPwxKAA1fIY/qg+HXNFkHdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by SJ2PR11MB8322.namprd11.prod.outlook.com (2603:10b6:a03:549::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 06:43:51 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::7aa6:c6db:3d15:8973%6]) with mapi id 15.20.9520.010; Mon, 19 Jan 2026
 06:43:51 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
Subject: RE: [PATCH v3 3/3] drm/i915/cx0: Rename intel_clear_response_ready
 flag
Thread-Topic: [PATCH v3 3/3] drm/i915/cx0: Rename intel_clear_response_ready
 flag
Thread-Index: AQHchsXe/dRwdKQBr0e0iQt64XYyw7VZEDhA
Date: Mon, 19 Jan 2026 06:43:51 +0000
Message-ID: <IA1PR11MB64672EAB2A7AD8EE3E76306BE388A@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20260116085455.571766-1-suraj.kandpal@intel.com>
 <20260116085455.571766-4-suraj.kandpal@intel.com>
In-Reply-To: <20260116085455.571766-4-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|SJ2PR11MB8322:EE_
x-ms-office365-filtering-correlation-id: e57eab7f-3981-48c8-ca81-08de57261ba5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?NmeL2wly3vUidN5ihn6uEI/63l0uxqNSER+OkzOJgNF2NbM7lCKR38sOWhdA?=
 =?us-ascii?Q?PXahNbD8ZFOiZ7trrv8pbsXEPjMzPlvp1yuzwsigK77xQBJRZZKzbxdso/if?=
 =?us-ascii?Q?XHyolz5QKUX8MRHp2tXKsYnisAqYpz+x0zd8lmjLVHA9fL5Ih4gDoDpvkI8A?=
 =?us-ascii?Q?HMQLLe9bQmpCPvO/Gmn4UXhFLWjpuZtr664tbBeMYa3FoXKTSvucC9YLcFyt?=
 =?us-ascii?Q?zni2LvYYivEHhAtR2jMmtuIvK7y/e1Yzcc2Zz/qaS5C4qK9QrJi/6Gq+qVyc?=
 =?us-ascii?Q?9U7nt5NusDgt6LfSkIk5eIyyvRKQn8T+HEvWuH3M1NEwGfpakPmgAugNN4Jx?=
 =?us-ascii?Q?SyWsgvfwv/ic0shqY1/arQTXO3ecpCqm5eH28buXhcGiiE2ElXMwiA6i20xd?=
 =?us-ascii?Q?My9u81lc7XvOIuYwObMn9B4JehdsbdQSdcUAi7r5Q/CnmCa+6BbhURkUdeN9?=
 =?us-ascii?Q?ysSyli9VRne+RQiNwA8jV2oR57HiliWOFspt/TRDE3mB63qGlFPPGHQHSOz1?=
 =?us-ascii?Q?+z8+WOw2wDH6V4LkD0IR3BETfsMZjxYLjt35w/ehy4u6uRK2Wo/OXH4gqo9M?=
 =?us-ascii?Q?1rS4WCHd4sgn8P3bRysnt5PTckI9i1pqO1xXWAYdhQyhNHvq5IJYTaO5vGdu?=
 =?us-ascii?Q?3rIW07veHYlYqo5/gcLTNe8Wk3Fa9UK14bd6L/2u4EwK5f0mjYpV3o5WLSyB?=
 =?us-ascii?Q?wjVs7DNds8YX7ldvW4Pb8w/y3lDafen4ho3khIYDpe5AxkkW8djRCMXNPIxf?=
 =?us-ascii?Q?EZ+iFni63yfnuxB478+AOfyyNde5HDkWx9sRP9KbZ6mF/aXbvIG70YV3/pyi?=
 =?us-ascii?Q?9Fe8Mf6SoQmk9doEEZCp8I2JNo8+rhIRiF0df2oUH9LkmKn3ZbyGJAYbTxGH?=
 =?us-ascii?Q?BVDSFYyM630v8UVQ4lUuLbuPxyrpDdhPU2E5SfBTWl30faODnOw192ZPO8ex?=
 =?us-ascii?Q?GbvKMkRcSp7GgJ2nirbprQI5HV1+iozYw6o/68PlDM9ydOBi3T0LUqeXivTk?=
 =?us-ascii?Q?Ey3COSgGfFIlHE5uJ06F4HydDwzpr6LfG7PsJhrel5PgpZRRenK4PimDvWq5?=
 =?us-ascii?Q?HW+DjMThvX8xX3+oX9VwFQXfEtwq4OGtRlkqNE9by3v7vzL2O3uua0CoU7dT?=
 =?us-ascii?Q?Nngvx4QB5CE+PTbLGV0Cus98qB6PVCS6A0YylLr3OJ6yxSe4W72maZbOiUeK?=
 =?us-ascii?Q?YcbEb7v1LXPqf5iOvksebZWblh3Q18l2F1Y84FwUpfgdPcIQOy/zyvvcAfo+?=
 =?us-ascii?Q?e1DY3UwA00Db6z4sZsQFIk7t/YDoBlsHzlek3IHOAqKv+07O/cBb/0TAlfmY?=
 =?us-ascii?Q?Oni+dSQgmRZn280vTOfx9sKiPc8IUjRfdw8y1TF1wN2+PzFjWv1tYZpJtFj+?=
 =?us-ascii?Q?kegxFK1rIT/PMliOM3Kj53Qy5ZgjHCsDPBGo/OxdrpmUChfLD58511zZQ1rQ?=
 =?us-ascii?Q?rLHDuQl/TUdOLeg/J2V3+0cw1HJvTfwPK5kUNfIKa1HLA5xnM63h5bxn1mEI?=
 =?us-ascii?Q?/FVM85Q4Dv1YA44ZRvqNUt+iuW8KC6tJXNEcx0+NqIqyro30ZPYtXP/cQ0oT?=
 =?us-ascii?Q?0F/RdqlcWItxhlnh1ftPftgTX8FGxvVdAp4xB2esxbEN6BjB54Bqp7MuXqTO?=
 =?us-ascii?Q?jABe4iha5id7r3urj0c+5qU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wnnpRE/kdRr+v3J6UiPbUoxPtzv6+fntxgtjX2AX/Qiyo7Bw7VkaEpKn/2n0?=
 =?us-ascii?Q?HMYaaGqpJmEOYisNGEl/e9FdSp2823yMvdERZBbOz/5gaH6qYqvaypiswtZT?=
 =?us-ascii?Q?RSMIx/H7u2X8ZSP6f77l3H6pfpRyamlK5B3P6Sj4j/neOqXJaZY/deVJz71Y?=
 =?us-ascii?Q?Ml6u3dcLd3Sp5IofNVy6ESCoIFjM2aQCHUBfEUYxCQT5PwwUpIBgwtJHNIcJ?=
 =?us-ascii?Q?W4s9VtubmTcN2wLh12fUGf2nLu/SPulGPwD5EnBYUVG2ag2VDBkjs+ZZWa1o?=
 =?us-ascii?Q?vgRn3o/1gpnaxZwFHMZcPuYDhP7+fN2wiIXeiP0mS42zufQScLaH3rC/zr4O?=
 =?us-ascii?Q?lf70aHyUluMpTrDUGTOmACqfRTnYX2l2J9rgHVedc7W7Vb1RtWUy6a+u6r23?=
 =?us-ascii?Q?DvP3zdYwFcvi+clOVpvk1hw0chxJmlB3QMP600Dd2XRp2Uf5R3xe52xM6YBO?=
 =?us-ascii?Q?yfo+wpxaDNyQsYOY76RqyNcHmMSb7sc2w4jjA/zULbH2Sig4ZjMtBEv3DvQp?=
 =?us-ascii?Q?ntblGv51MSq8P123fzF5waMm3iTQwgiPGfbQTatSUwkXYDjMHNhHIZneww9m?=
 =?us-ascii?Q?Zr+fDNMhCWb4MnLWpbrf7lgB7lkqKLTK7olGrX4OmGeShQOcnTdXZjZaooY8?=
 =?us-ascii?Q?0NicQcpouCfaZsVdjsQJqhMEpqfsyfsOR6CINQQjTcfKf+ykZextkaTs81e4?=
 =?us-ascii?Q?Xf7YF1O9KuGPEzhtCxgXvnB9MNFpQ2cdnUJR3ZMf5F/+25T3fXploHDnVykf?=
 =?us-ascii?Q?Y33ycWq6Zyirj4675F2nHYRxkpSlSSHT9C74MfjNfSIXKQGedLETbTFM5LLg?=
 =?us-ascii?Q?S/RrCJV40oWXX0SVfAkGS6CfL66FejYuPgzjnJM9KcIa8CtNeDc6cOmjkTA8?=
 =?us-ascii?Q?jLAbpiBBfQcqDDn6RyE9gYQ7xiTxAkqgPuNvml/yFiEjKPNxRAEq37E8Ya34?=
 =?us-ascii?Q?0Of8fy+EsrN+DQoVlUyD9weiRdhXJ3qvjoAsgHoFti02r8d3b9n583GhFOTk?=
 =?us-ascii?Q?xtCVlR/iZ7s+CTrgf5tYMJI5UEtGgKe75XTE1V4cQNDN9SNCbkcs92FZ4RPZ?=
 =?us-ascii?Q?Sh50bpL4/kO9DhlmePjZ4MW3sQ1t3J8CDlTH285FYTtHgEa+a7NuDROxepW9?=
 =?us-ascii?Q?uji242BtRApSojXs+Md2l2mA/p/+bNzx4pVaMnPzOXWIawbl3S5TWoP1lQdh?=
 =?us-ascii?Q?ZEa4x1CkK8RYcQGvzlzC+ELK4HtZlWMx9Nd3vqQ53II18FLHbHgUaxO/SI9H?=
 =?us-ascii?Q?7QUy4WJQ5k0mV9biWj7DhdsACCNruW30axrYrb69AI/qOKSudeF5NE2zYUxp?=
 =?us-ascii?Q?QfMG+XJDt51TqNrjpyjRAdFdePppAUfSyEot1v0elu11/K0VblRvM51RaLMC?=
 =?us-ascii?Q?wbXWHNFcYuFB06/eUTg4ahdeoWa3pPL6JU5W67wT6e6kYPrUlEWaRomWcn8L?=
 =?us-ascii?Q?URMyRVMqYIxdNzQ1IgdIyj/U1hNkIG0s1WHVop7zr6oSbVloMstowd3lqdO7?=
 =?us-ascii?Q?gh0EgNdy5ZgRHnxv6v/CNS9I4N8i1qM/xwQvUy990G4sFfOAaY9lxW7q2KUp?=
 =?us-ascii?Q?yw9J8hjco5IbAL2CRcWKvO84UgOnJpEFZRSR0MKtXPVcCjWluDTb+gBsh4h6?=
 =?us-ascii?Q?2br30KTONfjzeFLuWMNkypP4m//c+spn4HKuSAvsuOn/A+0JIDkWwj/cg240?=
 =?us-ascii?Q?YBifLWxu6J5EWf4YWNFupncTD3UFed/eroYtSlhzN/CWnLob5+ZoiIZr2lk8?=
 =?us-ascii?Q?PBWLl9XKvw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e57eab7f-3981-48c8-ca81-08de57261ba5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 06:43:51.6931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t/wjU4/km3+Gl/q3hAGQkZd6Uqz1t1GcIHvk3IIWYZLq+HJpIqUUlaldi7v0u5hm/vQF5GJxDMhID/tUwXJang==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8322
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Sura=
j
> Kandpal
> Sent: Friday, January 16, 2026 2:25 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v3 3/3] drm/i915/cx0: Rename intel_clear_response_ready
> flag
>=20
> Rename the non static intel_clear_response_ready_flag to
> intel_cx0_clear_response_ready_flag so that we follow the naming standard=
s
> of non static function.
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 +++++++-------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  4 ++--
> drivers/gpu/drm/i915/display/intel_lt_phy.c  |  2 +-
>  3 files changed, 10 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 5b6b1ce40b0d..3ef25c942f44 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -127,8 +127,8 @@ static void intel_cx0_phy_transaction_end(struct
> intel_encoder *encoder, struct
>  	intel_display_power_put(display, POWER_DOMAIN_DC_OFF,
> wakeref);  }
>=20
> -void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> -				     int lane)
> +void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
> +					 int lane)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
>=20
> @@ -155,7 +155,7 @@ void intel_cx0_bus_reset(struct intel_encoder
> *encoder, int lane)
>  		return;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>  }
>=20
>  int intel_cx0_wait_for_ack(struct intel_encoder *encoder, @@ -222,7 +222=
,7
> @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
>  		return -ETIMEDOUT;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display,
> port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING | @@ -
> 233,7 +233,7 @@ static int __intel_cx0_read_once(struct intel_encoder
> *encoder,
>  	if (ack < 0)
>  		return ack;
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	/*
>  	 * FIXME: Workaround to let HW to settle @@ -295,7 +295,7 @@
> static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  		return -ETIMEDOUT;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display,
> port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING | @@ -
> 325,7 +325,7 @@ static int __intel_cx0_write_once(struct intel_encoder
> *encoder,
>  		return -EINVAL;
>  	}
>=20
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>=20
>  	/*
>  	 * FIXME: Workaround to let HW to settle diff --git
> a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index ae98ac23ea22..87d3bdaca3ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -25,8 +25,8 @@ struct intel_dpll_hw_state;  struct intel_encoder;  str=
uct
> intel_hdmi;
>=20
> -void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> -				     int lane);
> +void intel_cx0_clear_response_ready_flag(struct intel_encoder *encoder,
> +					 int lane);
>  bool intel_encoder_is_c10phy(struct intel_encoder *encoder);  void
> intel_mtl_pll_enable(struct intel_encoder *encoder,
>  			  struct intel_dpll *pll,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 6cdae03ee172..e174ca011d50 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1106,7 +1106,7 @@ static int __intel_lt_phy_p2p_write_once(struct
> intel_encoder *encoder,
>  	 * This is the time PHY takes to settle down after programming the
> PHY.
>  	 */
>  	udelay(150);
> -	intel_clear_response_ready_flag(encoder, lane);
> +	intel_cx0_clear_response_ready_flag(encoder, lane);
>  	intel_lt_phy_clear_status_p2p(encoder, lane);
>=20
>  	return 0;
> --
LGTM,
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> 2.34.1

