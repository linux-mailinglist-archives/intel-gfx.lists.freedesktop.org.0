Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 857A49686B2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 229CE10E2B5;
	Mon,  2 Sep 2024 11:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YsGwLEde";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7A010E2C5;
 Mon,  2 Sep 2024 11:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725277923; x=1756813923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ljvJkms/MAbTusFsA4ZNpXPKom4wvtzAnVOLGXnQch0=;
 b=YsGwLEdeYBasjOJVoOXqVzAcarj9rsyC7jaPRyaD61IY2OsB5l0htjC/
 FkndJJRU/DctITJfOI7LKVHXyH65a58lZsbDQlEW0dziXMvEXmPlcJ6UC
 X8lZ8IUa8/OFAep7jXl2EFhZqoB42AhTR24ylXmPCl46xQFZVYYEW2Mri
 vIJHlVebWJHRLWCb/fxOa9n5NsqTOGDley1+rGXSiuB63QnjBQyH9oqWo
 tzOh9C/RQDMG0VquC4uwbvppXDMfnr1SIZ4hsT7bIen7CPIyHabM6ClCf
 9+V28mB4igFFyVGmgguQqyLAY+WsW0AW0MdLeUtc/bgQCNg9C3LV4JloE g==;
X-CSE-ConnectionGUID: Xm2r9nt6TLmr8ge65udyGQ==
X-CSE-MsgGUID: UQCnR3/+RXWZemDDcwGwTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="27728800"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="27728800"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:49:49 -0700
X-CSE-ConnectionGUID: Cp4ZTu6iQpWKvQduCOxAPw==
X-CSE-MsgGUID: k8a5X6urTwGlNIKXezn1QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="68724057"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:49:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:49:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QXAHXT/LtRyta5E4YlUtcbBDjFV07XrqUtyCalLpGTwjZ59ZSKcuxyFuTcgkGOHhG4zkeL5chw+AFAB6oA82S0+vACZTM7bxivoI4beILJSKCjSQqpRw1Z9Vkx8xV7i9uaFiiXJkJT0A7B4j1fdTh+OX6fiLAQmsqeWyDZOeqnCfnwmauRMHhtPCnEyIFkV04cgzDXLEMK/6TzKPC8V/ATLFgNY6L6ei+rtxrlcpQQpiUbfwSMHcwYVYdl1Pv2dWSfjOiqgpuZ+wwxZEZh1TKT4xLi2Na1EZE8LZl/Lj5R85PBJ3W3sKuJ+v8Bpw/gtyLZ8xej2gaCzof9Onj7XAeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=heqoghZbLHGVZ1u0FKP2otj0lB240K9dk6guoWW5gYo=;
 b=t0KwpZUqOYP+WOJR63Wu0NMW6ALaN76EpSbJbpyLUltg3f94nVQM8xL+FZvHes1jT5KiTHf/rNR9fci8DzOYFPv9T+RGFkkQPYo1n75DiWOK5RmQmT1mHBC0wWtSROgZrJ/5be4kapQcyOXZSSpNEqJzLMuDgABc6ITpnIEACRW+P4FHy34ShLgW1NpFW/oRxcbNwr1aR9grR4daGXs2vbcgYlP3G+1M2jh7IsEEeEEX9bYFYIQIJCGz2T7+yARg0gYBMMl9noVuK7WVDTgDD19HPhuk+Q39l46Z4zTISmMQiGrAYMGmql3dI01NI7cpYvuezruvalJRvfA5Cwv15w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH8PR11MB6730.namprd11.prod.outlook.com (2603:10b6:510:1c6::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.24; Mon, 2 Sep
 2024 08:47:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7918.020; Mon, 2 Sep 2024
 08:47:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
Thread-Topic: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915()
 in GSC messaging
Thread-Index: AQHa+iKvhmCv5Xq9oUqzPmy+8qOU6rJENQXg
Date: Mon, 2 Sep 2024 08:47:38 +0000
Message-ID: <SN7PR11MB6750958780CD68FCA874F632E3922@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
 <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
In-Reply-To: <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH8PR11MB6730:EE_
x-ms-office365-filtering-correlation-id: 9d638672-c02a-4d47-8bfe-08dccb2be652
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?TVLsxW1SQ0c4Qat8+1xFQbdtcf8YOuUZDPKQIzmTF0CMiw69OcGisjsjyxXq?=
 =?us-ascii?Q?OVPSWxqbEpqSY71suTL0r394gQSA2pAuUSjQgNmy7wZvG908Wf5JkZhmehFh?=
 =?us-ascii?Q?P5kCgZtnS3S6huF4CGnvwUQaQVXpSIzUC8kCbI3K9KZ/z8gUjupyq/4/xDmz?=
 =?us-ascii?Q?INcM29gOFyH7OtctmNM5latFXWp1GqQL/QU2T9BRoftE6AyZI39LrxzxR2ML?=
 =?us-ascii?Q?+DgdQB+spPWbWJ679wz+tYqMIcHFv2Qrv1xrNEqm/JLYo8xmSIn+g4FKxZoT?=
 =?us-ascii?Q?+AMtbeGX2/pmQwZiMX5gqMdCpAVOpqnl7vLapALTblgOUyr1T+y5vpn0ogaj?=
 =?us-ascii?Q?R0cGJvbqrLM12LGReBvzMimbnlFtXrQtskIvoUfCLqBL6JJYiKw6VJa9w0gn?=
 =?us-ascii?Q?ej3zPoP64mvKOmfb55qc+ypMidiuMF1lGlKAwE5zopeIQNVn9pKcDRqopMUK?=
 =?us-ascii?Q?qPdxLCB5388z8yM7frWF1TkxifwcCArMC0OVZN/8nlzrPSbAbg2Ca9BaowXA?=
 =?us-ascii?Q?2e7Yspx101OiwH54gxPAqj3LLanp6k1zYLDmoIra2WhXKgCxcs5pIkEIzKxk?=
 =?us-ascii?Q?mt6BZ32x235EvV/WtKqEoWbGGW5fqw6zRhKYHoKCNkQzh538o43E2si/+nMs?=
 =?us-ascii?Q?FVwTmXJf/KIYhjtYx1gipkRhCYuI2NPr4qwCIVv9EJl5HVZm4AbT/IeJT0Tw?=
 =?us-ascii?Q?McGGfhKwHam9o5qQzp49U5+zDQfqwGO9bIhIbn+1KiPUfnn9VOHjC99ZDBPw?=
 =?us-ascii?Q?5oNIkjIFsyzXvYzzVms+u5rOT5wsvyO9RcyPM+b7D8Rq4adPJHfsV+R6e14O?=
 =?us-ascii?Q?GjqgOwzP8szX0oGkp8RrsshwXj7xOTqNJQxPHFMe1meisDnaLaLFfLc4XpoX?=
 =?us-ascii?Q?MrEjvkGuJlg8WFUQHRAYqR/n7ankbi2P3O0wiUn5lBW99Um/PYQGGdlHbRaq?=
 =?us-ascii?Q?mlDvnF8xsK5dl+szCIsFB60+tWC+4pSmABEybFip8qhK68QqcskR+B06eRQO?=
 =?us-ascii?Q?1lT+hNnfcirR/J+BDLBkp1m/T6q5rLb2Vb4OKe9zi7sdoLtT5RDMtHMWGT9Q?=
 =?us-ascii?Q?2KgtDSFnCVs4h58g008BY90uqLZCuWdiHpUaP7WfdG7SLJQjdReonK1N0wu8?=
 =?us-ascii?Q?IiPlXQZu9gslHsa4qBvOf7HBqXAwqvhEm/Rwu9wE0XdQoGBCEfEO62MEeQEC?=
 =?us-ascii?Q?rhGWeYIUZopc5IeIiIWbdKeD2Du4fL9szWCjFvFfGw93NlqwJEVlzt9E9p1n?=
 =?us-ascii?Q?5EZw1dwQDqe1FRPkHg5b40Qep4GTYuZzkhh7MXjrv2L8v7FJ6FSKIwE7lyuq?=
 =?us-ascii?Q?lE/r9/85F7208i9zjCNU8jefXW1OCJU96Ftqf5Am0wE3HDqd4Yf4eN8R1+vT?=
 =?us-ascii?Q?bP2qvU3QnU9b7h0edBVg91dS/oWLri8mwoF+mjO76EiElC8f2Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TCnCaKHoOZwDvsqfdINi1O4295CF9JTDAbQGwjmff7gGYA+t2pTdF0j+5LJv?=
 =?us-ascii?Q?eGyKgAzgJ5Yts4Mm9LSzK1hvbwgmTVSXp9Oxc4wpu7mijqOOPygXA2aWuI+C?=
 =?us-ascii?Q?gd5tpF5F4MyiCh3PynOk73RA84OKx2O8W0vJjUqjhZroEWE4/7XjIvAEp5FI?=
 =?us-ascii?Q?i7ma17BGxFQf6yMo2dIcqwuHTYpbg4H24u51bxBdpJ55JjWzBWgv9aaQS+fF?=
 =?us-ascii?Q?l8iTdsqKnWRhdWXxYe56/267AvAF4KlktVa/tRgckVvX4GZfo6ceq6YSTS71?=
 =?us-ascii?Q?uVxwIHc9A9cafZBOLkrCKvCVkMYGg/J6ml0K52aR5UJUkc8WsvMtkiCYqA3m?=
 =?us-ascii?Q?4yvRLKBb6fg/7DiA7noeuWdfUsOjU8ZV/g9/QNE42g9Pf8p3V0kptafTOBO0?=
 =?us-ascii?Q?aJoynv4a6ubHlsCXw97T5skH7U7h2txZlgzuB+h5q8j1Le/jkgl0voqKnrAU?=
 =?us-ascii?Q?EeNs51mETpiTSlA+vgdI4Qj+UBWjT3BKXzg0eWBCw+6ubfQzEU63We0mwvnj?=
 =?us-ascii?Q?6d/aKlPLgzCnNk+2/Ih5h6gtniDINbetNz7kyLD3HEu5OG0+x36vEpDno0bP?=
 =?us-ascii?Q?Hln5t67GfREkjBzoLWaRVhwEgX/Tc//qvYdrg8TidNscEligVnyLJMyJkebi?=
 =?us-ascii?Q?BsMlaJ0psP6+uvebNpuKNMxwCPi0NkvV2UdMge73prZewAF1gitHlt/rJtNb?=
 =?us-ascii?Q?Tw5cVHpL2r20Yw5j1lS2u0uMXqGtRS/l9AP/9QNRbI8PAm97C49k7K8JKZOL?=
 =?us-ascii?Q?ClFb0XUBI2b9baFJ+BvR/odUjSoVmr1POaQESXC/k0N7YoVUpbnlpTvdQ8R6?=
 =?us-ascii?Q?S1f0+UYKTyiXsfbxft6GnXQQcbCOQeaWqBhCPD6kOsYBn+/zdc4rlJVzch8o?=
 =?us-ascii?Q?0oohJUuvpW/j8l28ZSkIwGdbKsLHeAM8QcF8ObVKb7t0c56VYajG3wUZYhTm?=
 =?us-ascii?Q?LoRkDI1CUFoJrOWDNJkTmZnTFwT17P3JQEZj2Sv3z6b16hnxKN3daXV494OU?=
 =?us-ascii?Q?U5E9OlVYXDLzRaM5bz4F08ldIYmWlSmnJZ0hOiaZej9wyOfvkOXdcTUro/4S?=
 =?us-ascii?Q?A8vHdJ2TDOTj64IIij3w9dM/L1a4zn/Ys1AhChTQvJZLGijmkU2j+IgR+9lP?=
 =?us-ascii?Q?sFjBjU/2YMjS3gnutDcDBgewr1oNrn574L1mM0YXRSi20gL/v40lyLZzvnJE?=
 =?us-ascii?Q?Fe9C1sChsyZ7x785pZMpkPWA95reGzKVhlDcYJRirZtqlzaPZsGwghlyj3f7?=
 =?us-ascii?Q?UIxdkzc1Q0je3WNjXrkPQU9kVGrbWE4g/aW2cW6guKM4WHy+P9zg3Lyzff47?=
 =?us-ascii?Q?v7E5hD8bO2Povi6B3zoQjia86at0+1dNWEpMuoDY6ShtiemLUwiRYiPx/my4?=
 =?us-ascii?Q?8KI6+nByEEMxMjf2pbHhuMHffYk/wrudGYQZML62Hwny4bSl0hk9Be6IxuH2?=
 =?us-ascii?Q?GfsXoFXyRdQCso61+/PJIWB7cn5lBOWp/bGTWOT5gw3OgmJ//HJ6/Q7idBKy?=
 =?us-ascii?Q?rvH5AEIs2kfMCTd5UdYL846BXaOKDl4LMW3zEayNscOPlT7oiogq3wmvC+QE?=
 =?us-ascii?Q?OyRzzyhQXW51RP5oIfaSAdtcFWcNtfxENg0l4Nuc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d638672-c02a-4d47-8bfe-08dccb2be652
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 08:47:38.7347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PlNdC3YgvmOtTZYUUSpxqvDNNndTkODygf1Fyuc9xbtLD10anJw278cZXWS1poqh2AblaHHrD0rq4JVE3zxulw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6730
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 29, 2024 8:18 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Vivi, Rodrigo
> <rodrigo.vivi@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>;
> Sousa, Gustavo <gustavo.sousa@intel.com>
> Subject: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() i=
n
> GSC messaging
>=20
> Use to_intel_display() instead of kdev_to_i915() in the HDCP component AP=
I
> hooks. Avoid further drive-by changes at this point, and just convert the
> display pointer to i915, and leave the struct intel_display conversion fo=
r
> later.
>=20
> The NULL error checking in the hooks make this a bit cumbersome. I'm not
> actually sure they're really required, but don't go down that rabbit hole=
 just
> now.
>=20
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>=09

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>  1 file changed, 45 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 6548e71b4c49..35bdb532bbb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -7,6 +7,7 @@
>  #include <drm/intel/i915_hdcp_interface.h>
>=20
>  #include "i915_drv.h"
> +#include "intel_display_types.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
>  int
> @@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev,
> struct hdcp_port_data *data,  {
>  	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D {};
>  	struct wired_cmd_initiate_hdcp2_session_out session_init_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ake_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	session_init_in.header.api_version =3D HDCP_API_VERSION;
>  	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION; @@ -72,17 +75,19 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,  {
>  	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D {};
>  	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km ||
> !msg_sz)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_rxcert_in.header.command_id =3D
> WIRED_VERIFY_RECEIVER_CERT; @@ -135,17 +140,19 @@
> intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data
> *data,  {
>  	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>  	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_hprime)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>  	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> @@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device
> *dev, struct hdcp_port_data *dat  {
>  	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D {};
>  	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !pairing_info)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>  	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO; @@ -234,17 +243,19 @@
> intel_hdcp_gsc_initiate_locality_check(struct device *dev,  {
>  	struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>  	struct wired_cmd_init_locality_check_out lc_init_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !lc_init_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	lc_init_in.header.api_version =3D HDCP_API_VERSION;
>  	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK; @@
> -280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struc=
t
> hdcp_port_data *data,  {
>  	struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>  	struct wired_cmd_validate_locality_out verify_lprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_lprime)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> @@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device
> *dev,  {
>  	struct wired_cmd_get_session_key_in get_skey_in =3D {};
>  	struct wired_cmd_get_session_key_out get_skey_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ske_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	get_skey_in.header.api_version =3D HDCP_API_VERSION;
>  	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY; @@ -
> 382,17 +397,19 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,  {
>  	struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>  	struct wired_cmd_verify_repeater_out verify_repeater_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !rep_topology || !rep_send_ack || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> @@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device
> *dev,  {
>  	struct wired_cmd_repeater_auth_stream_req_in
> *verify_mprime_in;
>  	struct wired_cmd_repeater_auth_stream_req_out
> verify_mprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>  	size_t cmd_size;
> @@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device
> *dev,
>  	if (!dev || !stream_ready || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>  	if (cmd_size =3D=3D SIZE_MAX)
> @@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct
> device *dev,  {
>  	struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>  	struct wired_cmd_enable_auth_out enable_auth_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>  	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH; @@ -
> 549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, struct
> hdcp_port_data *data)  {
>  	struct wired_cmd_close_session_in session_close_in =3D {};
>  	struct wired_cmd_close_session_out session_close_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	session_close_in.header.api_version =3D HDCP_API_VERSION;
>  	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> --
> 2.39.2

