Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F608ADD2D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 07:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7628C1130F1;
	Tue, 23 Apr 2024 05:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QdP/90XW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32AE71130F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 05:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713850606; x=1745386606;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pNd+DqIcU5BVB8/hWnyp7KOKsjYQoyjcO6LqOU5ENYY=;
 b=QdP/90XWvJXt7Mvt1i4djsSyGW5Mzy8Cq7cwn0KSZyJwXVUCBU15uzdv
 O0M3bFIGG+0uvZ5ZcTQLvjHg9Zs2ArXLuGBN6npgTwMMJU+A1Urh493sk
 bf7wr3AzTdxfcblNFGQDW5yNmpBda0Sxg9b3SqCL5IYokG6TFKqh6CPY7
 7TenqQaWelnzLjycz5mNiu4znxNygg2uzsm9elUWQTojjONF4jtvQV7mS
 zVDrNyPhhzJzXNrhDlfR/l0CLJhfdbOQ022RqBUq8llv0qr4LiDDMJ5mp
 0odORryPkGMK2D+a7RhC4fgfzgkodqoZgc76A5EscfCDepvVKy8C/GDq+ A==;
X-CSE-ConnectionGUID: ZInoy7hcRM+csLJiTMBeQw==
X-CSE-MsgGUID: 8akMlwV/QK6E0HZpH9Dvcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9287220"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9287220"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 22:36:45 -0700
X-CSE-ConnectionGUID: OOVtcFPjSYGNR5HX16eYoA==
X-CSE-MsgGUID: AnV3Mb0oT5aDrFck9RgLYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="29060145"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 22:36:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 22:36:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 22:36:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 22:36:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZCW7wvPHkg9mHLB1+BWBP/fA/pWzGqUd0cq1Is4bOTjvxNGGmuBHKljEu8jNbxsaRlDj6MX5w93t4XN5w0RIJRtmIJlWi2Or1LLJSzuwaADdXyFBdoFhWEjiCWwq0aNkqT73hLb+0/8AyAb6lEG/WBL+KmRxRKQCoTk3I2nuMsDXIxb6znPAEJx9HjhNnS8/LpzoNtIqGmuKWqE2C5A/s8vZeJw6lS1DEP7syhvGtaHeES71Jk7Add4Y2J9rLotcxbUiUWVW4vdQXq26Ucl3hd/syrFyAC81d0mg/WUzQbt5esgAbI792uS4J0kRliKLrqw1PHnUvTBuWnIiOUY9zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3WvbTp0V6AwdxSPz5oCtRqrG6ddmsDnNl40oA+Idp6s=;
 b=KqSuCXnhh7W3VdrNt47aRBP20Boyy1ROmG9qta0RvrAxw9Xv7XzznEbfTr+X7VY/MP09PfLAtV803sE/6pIGKoNmpjoJ+niv5fWF3Ik7VLubm8kfQT3RkP7v3mqdw30/OpfK1ioA+nlANeQH9zCrdjkgL69uVTYDAX8IJ/85jHGuDgIRICw667Dvyc/bUSNIQ6D5Wycsk1ZDT+T60tGpbcsdOM9rGpwyBb6ncetCJvRXnAbTUb6sFscvx2uWJKAFlg/sic8LX94hAMNrtU6CzgLiaHad/LRYOiVXI9hCc35CdXdfv3068ax/qVfvloydhZlQwodyLzp61Oi+vTQxGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB7434.namprd11.prod.outlook.com (2603:10b6:806:306::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.16; Tue, 23 Apr
 2024 05:35:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7519.018; Tue, 23 Apr 2024
 05:35:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, 
 "Kumar, Naveen1" <naveen1.kumar@intel.com>, "sebastian.wick@redhat.com"
 <sebastian.wick@redhat.com>
Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Topic: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
Thread-Index: AQHalGYmTql/vixhwUmUTHm9AQvCSLF1KlSAgAATkDCAAAsMAIAADkig
Date: Tue, 23 Apr 2024 05:35:56 +0000
Message-ID: <SN7PR11MB67503EF83400AFCE01F09A0DE3112@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
 <20240422033256.713902-3-suraj.kandpal@intel.com>
 <IA0PR11MB7307E137CDCDE6DC39F6B290BA112@IA0PR11MB7307.namprd11.prod.outlook.com>
 <SN7PR11MB6750E6BFFC0755CCE78E7B0FE3112@SN7PR11MB6750.namprd11.prod.outlook.com>
 <IA0PR11MB73076DDAE3145A922905DE9FBA112@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB73076DDAE3145A922905DE9FBA112@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB7434:EE_
x-ms-office365-filtering-correlation-id: 6b16beb1-e41a-4f03-c84c-08dc63574019
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?Wv1v+RhXIbP5IvU/HKYsb94qmunmoKlDHI4WYnx9MOvRCZkpLJ2kEFwKcM3d?=
 =?us-ascii?Q?v0LUgo1pNj2IR7J/lrZKqvZFh1ecp+IIuqoVH3BI75fSwSEGhPlc/fq552g2?=
 =?us-ascii?Q?jBtcs6/5knOJX66PRztj5Ek5FtFKLFmQ/b+lVjynACe/dVtbXl3b8EjQ4Q9P?=
 =?us-ascii?Q?UQCIaeu5RIUaW+EEbS3182uaxS2KN1RPmSbyOhRAIud5cxjqsZMUssVJTt8f?=
 =?us-ascii?Q?+w/qPApoIpKT50cXxseP/AeJHgWXg49HEIDFKt1KJWf2BoVxCPZurEJMXEG2?=
 =?us-ascii?Q?8A2uHJTptOHnfwuxx4EB+4beCCmcArHpqw1K1z1+eHYcR9GH2A2RjBTQbY0I?=
 =?us-ascii?Q?wvlRo129VS3zf8YL/F6YMxljY9AKlHSdu8f2BaxyrBD4uJvttqEGcyoufAl7?=
 =?us-ascii?Q?zGj7IZ8aIwCXm3OrRT+HBjGDPEkXr6itCsf8g+nkmCddCOb0Tma0zxnyZEvW?=
 =?us-ascii?Q?fXL7MDv0kjuRrXQiWeYgKgGK8dCxD9sw9i1KjguxqZS4aUnFWUYx22P69t4L?=
 =?us-ascii?Q?1tYqE4jCxRjCig1cGIzLf82YcLvyW0uN3JQ2awq0rzloZJ1Z2JSPxAR8O8Q3?=
 =?us-ascii?Q?wsaJM+LLbKdJbmm5SbOhukwFGNOL/RWkkApz6NhNqw6xOFPRVa2yjE+mwcxt?=
 =?us-ascii?Q?PQm4DDU36Nav7dXFgvTwj4TW4jRzBtNSk8Rl30sbxAqPQhHBiojSPwDJR/LI?=
 =?us-ascii?Q?jT6Qbv3RbEFFbOczzNU5VB6BTyRk6S05rbw/1DVZr/N/cEW7kzicDQF7KmfC?=
 =?us-ascii?Q?ej0PEx3lZdsptW9K3KkiZpeI9aOQV8VlAY+vdEOkf/KVvN6Xd6l7ZeGCOszI?=
 =?us-ascii?Q?Lp0CHWCKtRP+LgOaS80BbJ6umArBJcsJE+IdEWeLuazNbblpPNVlsr9Xa1CV?=
 =?us-ascii?Q?hoTUyYKZoI5r67s4T48jqD3aApXZoXMJTCq6FDFF0iwpu3ToqEN5itVAI1s3?=
 =?us-ascii?Q?408Rk9Wp6k61axvgBf2MUAKBtOI8i9nsoMyU+kLgjoOTZ3VJu7+e7zZo0huG?=
 =?us-ascii?Q?yUUXizG0fqnjSvLi2yhxIfSGx63gR7Q6mrP+xrMw5jIpEVXBvp1qlv7pDzuO?=
 =?us-ascii?Q?Z0Tjna9YzM1svlkbEbiM/DoMcY3Yxf2kmCZQGvRVzyxoHYRqqmit0vAniXgr?=
 =?us-ascii?Q?3usMqx1Sw1LX7nwinhQdPiWY+SQ65lAAM4RbYQdQ8z+wc7VotuHHWh9+1Tnb?=
 =?us-ascii?Q?aPDo6BHxBwjCJZFWheCBQIifD9vilDwdg8+CrhyIea/GT4ZkhiXSzy3j5Nn6?=
 =?us-ascii?Q?jStSaYKVkJrSVgYAKuKmF44JthEoE1CLqiXNL+OaGe+BXysh3e/vdrf2j7HZ?=
 =?us-ascii?Q?haVho+QBFNqOsBqdqnhyDMHOqflmstBpEohgLvWcg1lSjQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ETQLZmvarcYDVUa2Y2BlvvcVlETVN6C4G+QrFxHwvzHDP9yP2yV5FYRkJvEN?=
 =?us-ascii?Q?klTr+UfkYdZvA5Oygkl+KYhjvtqiusll8pIrbn8I5BY9qDJm8cziqPTvGDZz?=
 =?us-ascii?Q?dDbfAjQa4dUUUbwFDIqq2eSRfC7hz1ToDzvH6gr5IeG5L8uhlaYQ/ZVHpUAC?=
 =?us-ascii?Q?+14YwrvW2nQI3kCjNtgtN4mVMLMaI0i6f3G3rVcrJQZFyTAQ2sOtSkXqdY/i?=
 =?us-ascii?Q?ATvnAn8UMGbmp5qHGonJ8fRumI4CSF90XW2zfu+g6fZHJM3Tk4QVpBiyj+Tk?=
 =?us-ascii?Q?toXnKPs+9Ga1WjobK/SPGQZvSQk/jeDRTHUFn8oGo7PTYETkbIZ1iilxqK0y?=
 =?us-ascii?Q?zsvFhXiLSFDOx6QzL0Lfcvicy/jF9t0kQ01z7MMRNMW8TfrhR7I8KkxAV7S6?=
 =?us-ascii?Q?Z465x63y7Dyh8ORFR+aSqVZb73aG/KSBCL+xhy65wjrm9GSe+havYtH98Pza?=
 =?us-ascii?Q?KKr14TdZ7o/YQ1iA9QLBfXcDJGbaSxOUB3a5lVKviHqzjF9Sx4oFFsR3AYlF?=
 =?us-ascii?Q?kp229Om/N5W2e79JN4HgCl9250bWdoTPR9sKcxXiVXMpS0JlrPJjQnCwvYrZ?=
 =?us-ascii?Q?G8bVxMAYj5u4s7v/ya9P8sD3/6FQmg4nnYUHqN5ncTFR3ldGB/60OHdekuWC?=
 =?us-ascii?Q?KjJ5otFgAI6pXvzxfUwt1ERvxwLmbMQ/GhZDnW0ilW1pj4uUYqjGQtTyMkF0?=
 =?us-ascii?Q?AuS9zfmds04d4qd6PHuSIsZmDYjweBTe+yujz/pXNQkppWpGBliEvvPtA9hs?=
 =?us-ascii?Q?fM/VzwKI911dGqa5YmRcKb/Cb477uxXLZfNKVXwAJAyNJ1dMqlGQGR4/mKR8?=
 =?us-ascii?Q?a2iY9xe78EVeNF/oZVxOBS/cXPOUZPLSYlq17cX1wCkwreLOe2Lk6ZYaYKRu?=
 =?us-ascii?Q?nt/PO1bUV6gO77azWSm3dJrmjZzlf/NTq8x8bUNG8geA/ICZvMIXiLMA+V2G?=
 =?us-ascii?Q?/VRcFnUNkE71MwPa1tqgG232hMf56Reqb4G6HV6TA/QMPlOwKxLuq+X4Cv5c?=
 =?us-ascii?Q?NQTLGfC6mgh5turePuLZ9Fa1cBFYfv2Ra3XPPb+4aoY3pFnzhHjWO7HKMnuz?=
 =?us-ascii?Q?QSXW7ftqmbU2xKVt4noRGymiafALOx5OjjGeFqo4NVppxcbWrmU5VcHJp+fV?=
 =?us-ascii?Q?hUlKbOebs+D3lQOPOJ5RKUqGjtQdipfetAlL6Z7UeolJ77n3Z2D4ZjIykryg?=
 =?us-ascii?Q?W8E+ZYfIaGj3t+EryfG8GS9CYJNZ/P2fqwrJ7ghw9oOZGWkuFF8z7S0HMneT?=
 =?us-ascii?Q?wAMZuEatmg5jDadft8OySlj4tiQJVK3o0lmi1OTm+gGN65Sw5yY9PmkNVtwW?=
 =?us-ascii?Q?Yml3aKlDxTmFBwc6vo7IEozvEwz4JLIeKUCwX88/UJpx2zs/oTMtWRpKnuF9?=
 =?us-ascii?Q?e96ApUqc6/DqY696pp5JmaIcPApEL1YKUeZOOFQwYd+epRJfqFaxMRrtjNfl?=
 =?us-ascii?Q?zKKIjH4NEtBuwMY26VbrmfMkMO+wGHXIVDoZeIo6vwdVY0TO6HrrAnB8rOHB?=
 =?us-ascii?Q?AQBBHgcQM75/C5s6QypsgTtUgfQH891QswObwJrebMBlToOGzGYDDfBDw8mW?=
 =?us-ascii?Q?oOeXIM0UOOP8hj1mjDy5xQdNHDMdGnd5fxQzZvO5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b16beb1-e41a-4f03-c84c-08dc63574019
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 05:35:56.8387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JfodpG9yl+ZwqQmcV6z9/T20keCtrfV2jw6d0vvYrkcBNFPvabxIZtxvbsexcmQojLHXN6j2VzYXfb9cg2wPJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7434
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
> Sent: Tuesday, April 23, 2024 10:14 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kumar, Naveen1 <naveen1.kumar@intel.com>;
> sebastian.wick@redhat.com
> Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
>=20
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Tuesday, April 23, 2024 9:39 AM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Shankar,
> > Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com>; Kumar, Naveen1
> > <naveen1.kumar@intel.com>; sebastian.wick@redhat.com
> > Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
> >
> >
> >
> > > -----Original Message-----
> > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Sent: Tuesday, April 23, 2024 8:25 AM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > > Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> > > <ankit.k.nautiyal@intel.com>; Kumar, Naveen1
> > > <naveen1.kumar@intel.com>; sebastian.wick@redhat.com
> > > Subject: RE: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
> > >
> > >
> > > > -----Original Message-----
> > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Sent: Monday, April 22, 2024 9:03 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > > > Shankar, Uma <uma.shankar@intel.com>; Nautiyal, Ankit K
> > > > <ankit.k.nautiyal@intel.com>; Murthy, Arun R
> > > > <arun.r.murthy@intel.com>; Kumar, Naveen1
> > > > <naveen1.kumar@intel.com>; sebastian.wick@redhat.com; Kandpal,
> > > > Suraj <suraj.kandpal@intel.com>
> > > > Subject: [PATCH 2/6] drm/i915/dp: Add TCON HDR capability checks
> > > >
> > > > Add checks to see the HDR capability of TCON panel.
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display_types.h    |  5 +++++
> > > >  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 10
> > > > ++++++++++
> > > >  2 files changed, 15 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 62f7a30c37dc..1cf4caf1a0a9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -401,6 +401,11 @@ struct intel_panel {
> > > >  			} vesa;
> > > >  			struct {
> > > >  				bool sdr_uses_aux;
> > > > +				bool supports_2084_decode;
> > > > +				bool supports_2020_gamut;
> > > > +				bool supports_segmented_backlight;
> > > > +				bool supports_sdp_colorimetry;
> > > > +				bool supports_tone_mapping;
> > > >
> > > 		} intel;
> > > Even though not part of this patch, but the struct is growing.
> > > Can you change the name of this struct to a meaningful one, maybe
> > > tcon_capability ?
> >
> > So this was named intel because it comes under the following structure
> > and is Called like this Backlight.edp.intel Since there are two
> > standards one which is defined by intel edp hdr specs and One defined
> > by vesa hence the naming intel here plus as you see above when getting
> > Called it tells us that this pertains to intel edp backlight capability=
.
> > I think it makes sense to keep it as is.
> > Do you still think this needs to be renamed?
> >
>=20
> Somehow just intel is not that readable, maybe intel_tcon_cap?
>=20

Maybe intel_cap then since this structure is already inside edp struct

Regards,
Suraj Kandpal
> Thanks and Regards
> Arun R Murthy
> -------------------
>=20
> > Regards,
> > Suraj Kandpal
> > >
> > > With the above change
> > > Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> > >
> > > Thanks and Regards,
> > > Arun R Murthy
> > > -------------------
> > >
> > > >  		} edp;
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > index 4f58efdc688a..94edf982eff8 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> > > > @@ -158,6 +158,16 @@ intel_dp_aux_supports_hdr_backlight(struct
> > > > intel_connector *connector)
> > > >
> > > >  	panel->backlight.edp.intel.sdr_uses_aux =3D
> > > >  		tcon_cap[2] &
> > > INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
> > > > +	panel->backlight.edp.intel.supports_2084_decode =3D
> > > > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
> > > > +	panel->backlight.edp.intel.supports_2020_gamut =3D
> > > > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
> > > > +	panel->backlight.edp.intel.supports_segmented_backlight =3D
> > > > +		tcon_cap[1] &
> > > > INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
> > > > +	panel->backlight.edp.intel.supports_sdp_colorimetry =3D
> > > > +		tcon_cap[1] &
> > > > INTEL_EDP_HDR_TCON_SDP_COLORIMETRY_CAP;
> > > > +	panel->backlight.edp.intel.supports_tone_mapping =3D
> > > > +		tcon_cap[1] & INTEL_EDP_HDR_TCON_TONE_MAPPING_CAP;
> > > >
> > > >  	return true;
> > > >  }
> > > > --
> > > > 2.43.2

