Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F76A4B785
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 06:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1FF10E201;
	Mon,  3 Mar 2025 05:20:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EX1ccFn3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB9E10E201
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Mar 2025 05:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740979219; x=1772515219;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=s8PdfREonGAqmz4TONJRoNsAjzAv6pmKujnqGbNSA0I=;
 b=EX1ccFn3OhS3JX3WOlqgj9Bi2o8tmEXr4ejQwDJ7EXhiy+i5cUdNuTGI
 0ZsNs+BOd5p5rFMFnVD2IVONSBr+D/o2QPfhysbfTZpe8pBQsoCkcnlbm
 NrLmNwZqiqK77Ox3Neb7Vcmn0nxClm9rEvmyG0gtwzu+QYUf7R7Y1zV1k
 hj0m+QA/+Dc7NO0FD+k3CqveKvb9FQCj22NLC0wUdfCxpp4ebOHu1vyi/
 D6PH4/PVCY/tVe+N7G6uM0H7Q+fMOuWVCr4XjiRCMAor0jIkHEexzU0Y7
 nwaPQ7ZseGG4ktcc6Aa5Ughvu5BjOpJU2cgEBZE5+l4ZZlJNa5/ZguUht Q==;
X-CSE-ConnectionGUID: DFqCPGRZSgC3VKAdL9eQiA==
X-CSE-MsgGUID: ERnXSzSxSoScuNZ9l4vWOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="53230550"
X-IronPort-AV: E=Sophos;i="6.13,328,1732608000"; d="scan'208,217";a="53230550"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 21:20:16 -0800
X-CSE-ConnectionGUID: YDJ5vQGlQVWurcvu3gKvXQ==
X-CSE-MsgGUID: k+Yu3fmoQP+HnKcY4e9T5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
 d="scan'208,217";a="155079658"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 21:20:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 2 Mar 2025 21:20:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 2 Mar 2025 21:20:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 21:20:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OdLPKVgMsrZ5x2fJC7o3RMbGdctRNG+k7QR4498iDLRats1r13CBWmFE0W6rTfrYpHZXVWQO0SpkNDbAgPdKlDo1jHkFzq9g7w5NHY0tjuLpntHTupFMJlxXoQnkeQgooMAvgRnsmovd8IFyKzWkVuXMbxkCw+4JmpzNfE7EkJt7h676eJebqxu4AqHZInOf5FlI3poDKva7RJjRjvl9H97WshJ4jBBvtV2fctVtKDLCBjV9R0DSrRy0kMEa4ComXMCLkVsqvMrsskmaTD/MhYUTki0wEpIT9D8bMnm9mZQ2/tYXlXh9meRM0matSeJwWJdEX34jfb1hhoA7WJsZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/pKNMuqlI66/hvghkKZQiJxM3GOUoHe00Xae0opZXo=;
 b=SxeE4IUZQbWgG89L3mkvFnjYrb1we353WhRWk3MO9fINxEDisjZXHtFfTFYfSCixS+gZFl/5RylLK27Uo1PkzXVadR5tSjRnRxkzIsbxIolnidrl+QBH5MFbOZt0Cx/0j7YbzeWMzHS7bzZ/UE//JegkhFOXyaDSyWBZ2kLFrEUoC1jSlylsLtk3tGbZeMFua8Smh1KEJNcix1eJC3d7DM1DC0wFpv6e3DE8cmqetjJ6mjAtu6o1zLQNdTFmV1AIdkKsQ1Cs5uHfZ3TJo2ebC+Mu4ae1D6oV7O07tlv9Iqtmjx8ZmH6axAyE73ZzZGNAbF7It7iGU1BCqjNiZiozvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 05:19:58 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%4]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 05:19:58 +0000
From: "Anirban, Sk" <sk.anirban@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Nilawar, Badal"
 <badal.nilawar@intel.com>, "Tauro, Riana" <riana.tauro@intel.com>, "Poosa,
 Karthik" <karthik.poosa@intel.com>, "Gupta, Varun" <varun.gupta@intel.com>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Re-enable power gating after
 live_selftest
Thread-Topic: [PATCH] drm/i915/selftests: Re-enable power gating after
 live_selftest
Thread-Index: AQHbg2JwPO8vXDPLCEexGM/edWF9/LNg8PaJ
Date: Mon, 3 Mar 2025 05:19:58 +0000
Message-ID: <PH7PR11MB82526B3C905E0D70E54D611980C92@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20250220064027.1377797-1-sk.anirban@intel.com>
In-Reply-To: <20250220064027.1377797-1-sk.anirban@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SJ0PR11MB4814:EE_
x-ms-office365-filtering-correlation-id: f58e36f5-68f8-41bd-de41-08dd5a130acb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ebchKuDHByhyQ7xxFaQagQRLsL/msKrLQinaotGJLQ54NLHi+bqf7FCfp9?=
 =?iso-8859-1?Q?kwA5HPHWj7Q095Co358ubDtwYLszVAZ6Q9KOw3mNUSyZcNmfSvAh5lVJd9?=
 =?iso-8859-1?Q?3MIltPTUnw1qVGiMy1hT+z8y08m7rczmEpS8v3Y+kGqJK9hXpsiJhBQ341?=
 =?iso-8859-1?Q?l0sf8NQHYaAhmCOwYD/ndGM+qykqXPk2np5ZuIkHPmp92ZF44RHeDoHstp?=
 =?iso-8859-1?Q?kBDl1c+744hlwKsXV3JqEiDBrrfMa94K190RUCsv7l58cDvuBddtQtEvD0?=
 =?iso-8859-1?Q?bxS4AAY1+bioA01tmm3DpaMtfaCPQ8Qlc2PePqWbc/cFC6sfkB6nw+Gxfp?=
 =?iso-8859-1?Q?1fr2WpvGzk0jFj7ff6orRTTQLpV0tTyxfRmiO/qa+iITxFfNDnxCIB0YrG?=
 =?iso-8859-1?Q?0L8VAbjGS1U+WPcI4UsvHD0O79mc563XBKtbCHhhGeLq8GvEgjcRVQo3C3?=
 =?iso-8859-1?Q?M323PhCeERY9SZ5TSXW0K8OULrTmVLNEAhvOrQSptCM97xXQ2Go2g8BEcy?=
 =?iso-8859-1?Q?Qy3LbLuqIK51+b/qBklKYl6SjCFhPL16EzjXZxxYOTakmPIH911RuVlTrf?=
 =?iso-8859-1?Q?JDZl83Raivy9c7Y/uRPiL6ZmxrCiNsW2D832IMpsT7dgtVOQp08ZdrAQ7z?=
 =?iso-8859-1?Q?pisF5h1KYblcbzxsZAvo+3I4+zV4D7l7xWPj9faLAmJ8EqUVhmC/gESUEN?=
 =?iso-8859-1?Q?e/J/3QtL4+luoeCgBPaewHzbXvvMHn0uYTflNGL8kOfBcFHd2qhQOsDrks?=
 =?iso-8859-1?Q?nbv24I1xy/kZRLBIIcyyC5kyyqUkMgviBecSsM7ZyRNhz9hDVflkNYkdsE?=
 =?iso-8859-1?Q?sUOTVrokrAVC6uyzkMZwd+d0/5npEaU46pu/NciLnefuUU3mESd/WoCe9y?=
 =?iso-8859-1?Q?q7LTSDg9Qox8+qySgKIqMVaLYoAryodYJ/EhogKe0bZksjaq8dLIMvmwl5?=
 =?iso-8859-1?Q?ZwcmIod90IK3yOsBimLzKsVOKyzF2WvhWmIJs82q1nY99AArAQ0vxQNC0H?=
 =?iso-8859-1?Q?08rKoWjqY+WYGMWjxCpUfIUIraJC7rwrFr942NgL5z/3t/l3lYacjac8Mo?=
 =?iso-8859-1?Q?qU6LFY/1cZx8YocioopPlZPm/1WI36b+ATX7QEsfdENmPekLJCL5vGCKBF?=
 =?iso-8859-1?Q?i01BkcK1Jq1b+WZZrZVx7+t/I5YlqeOZrD079PwUg5JaUCt5nFKVXZiSnV?=
 =?iso-8859-1?Q?pHKTWaa3kacnSrn5jf5NhSWarlQr32Adhnv82M1E9Kz9TGA2j6Qf7Hu94u?=
 =?iso-8859-1?Q?UFyFB0/qftpreZn56QnehgIC3w0bQLDV541dqE2eBSFHBXzDRAR0vueUm3?=
 =?iso-8859-1?Q?t1HCiYz7AKGIUN5X2IgQBQ5dw99pbR+rfYub3btSV4bDj09Rix/ZMIWk5J?=
 =?iso-8859-1?Q?/kwcXmuT+yB0EF/yr9bnaD4ql97yZS0O20ljMpSl0NkUbB8OMjYSH/OdEM?=
 =?iso-8859-1?Q?p3yMr6DGqLSaD/qa0sF1vs/otbdGNQLxHmac1K+E07bxbaipgYcqmizwO3?=
 =?iso-8859-1?Q?PeTAOK59Zj4XA3Q9Dnt+3V?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(8096899003)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?rnpibQI9aFrEjAV2d7MJZhUv9Q2MlBjtjp05xQmBAZQhuJ4cA9xB/Nz+st?=
 =?iso-8859-1?Q?0Dt+NwHNZRHkSo9fOyNcmwjsJb5ryqyllgMLQ46OUHTEc5ZL52EuT3+OPc?=
 =?iso-8859-1?Q?5Ny43ky9gNxiJzD6EB1AHHeSENzeJPpWUClYlrpnpEgKFvchZgfolQpG7q?=
 =?iso-8859-1?Q?3HpY7AHa6mOiNBmGvxUjCXTEphWhDQiLcA7OTbnQ6v4d5MXOnjOy9Sk1qy?=
 =?iso-8859-1?Q?ywiQIce/d2hNElDjUDlNeKn1qCKwqFDPkfPfOTd71D612wh3n/P8qqOXjU?=
 =?iso-8859-1?Q?LpK0H8rUfP3NP2T1MBKFH5Qe3hIt2puEwXEw8xq1pi0XjeitNkOwFmlWHc?=
 =?iso-8859-1?Q?W4eC23f6WtdsPedVLHdiqi57DZDjXaIuazLepJ+EaJPqx8/BYbYA8LUjGy?=
 =?iso-8859-1?Q?EtT/JKid5lVXhDDtg6k7tGWE7cZ0QqTpclK2g4dXE57dny7VVExRfItt2c?=
 =?iso-8859-1?Q?x4eYUNAwehWXdLg9KNNinELdGKhnXqbMcUwM60C5w4B7JS/jnKGtAK3uAI?=
 =?iso-8859-1?Q?URjrH08b6y/zkO6XmkhKUGWpIklJUabYjeHFaaiaBQ87D1Ill974jCT/qa?=
 =?iso-8859-1?Q?OJDpSt444VPEVtM6x2A3E9neDio3vbK6dxecikf57FTs3DgsXR1+cgE7L/?=
 =?iso-8859-1?Q?9QE83dkNVcfvUdE7NjjFP2yU8BzjO8zFHut7CqHCd0a1ZY8dtg4r1UGXo1?=
 =?iso-8859-1?Q?Fv7hFRcro5My6oZiKKZJ4SLkT9nOshidbRbP71A/FEg3IfijX3W71m41Bi?=
 =?iso-8859-1?Q?1XkYiCW2/g7zeqSAOa5jwmaYuLLVbb8/K4RshlFiNODayV02Jb5+GoRhW0?=
 =?iso-8859-1?Q?ptKnVW1PKvKk875Hpj5CxbcMqrfmpUrTUcnI1/p4q9Yw36CT5DyR0R0M2O?=
 =?iso-8859-1?Q?a3/TbDYzp2WRFRvy1hliSGnXUgDvcf2ufOzsxyy9G9zhJ4xZCbA88eAbyr?=
 =?iso-8859-1?Q?qhNIEGaNQBoeN4buqp/M7vYnGAqNfFj4Ck3YMBfcA1dqUKUYb4UTpuvY6W?=
 =?iso-8859-1?Q?0S/QosS9+x5FdGQ+v/JLIL6PN+ff59W/MKRS1lWiV5sFFM/Qc15IHiT7nQ?=
 =?iso-8859-1?Q?EObDeXcE5ceGA+AHN4vUteVKtIRsTmsx2zAtyYiOakO5p3MCBmUYODCofd?=
 =?iso-8859-1?Q?rxjp+/PMHr2NWDRj0nyeZRbAWqCGnyCUaT4W1DSkA5iYytM4M4BRH1NrkM?=
 =?iso-8859-1?Q?LRi8FrJ87E6TkzgGY62F8yjrz77lwaBXX8D2iWs7Am8H1hgJDGGCVxpzlg?=
 =?iso-8859-1?Q?1HKRUPw6u5Uiu1lbLmz6pgK5EnTfngtEWNgGyWz8xg0p9T45DAtr/V2eCd?=
 =?iso-8859-1?Q?lTC3RQRORz2iyUVZklYBzLryr3GjEr/xPodoM12hjj8P1SscXfpj8lWvjU?=
 =?iso-8859-1?Q?Cv9FV7wORbWrqDMWTJmJ8riXFIzC8MZmnp3LjgqWqiWcULlTAk4jx6MGLv?=
 =?iso-8859-1?Q?ZPhLUjAPwVj/KYCaEO+xpHPEIARUBQTzugI6VKP+VGI7e6X9d87LUju7JV?=
 =?iso-8859-1?Q?iDjgRiL0Wu8jBtbvTJFCqcox6U7rUoirklhp+IVfvr2ZppAvK+aG8a/xDm?=
 =?iso-8859-1?Q?iP50qJSlK732+c+qkriis6LfL9jXYJ2fZu11zJ9aJcN+q8CGitRbWeK6YW?=
 =?iso-8859-1?Q?dKCWWgLTp9SHEJXWNM9AaRX73Va5Ul1Vx4?=
Content-Type: multipart/alternative;
 boundary="_000_PH7PR11MB82526B3C905E0D70E54D611980C92PH7PR11MB8252namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f58e36f5-68f8-41bd-de41-08dd5a130acb
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2025 05:19:58.8439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EGuCgSXVua+P5sY+O2knz52STcigPef8qBU4xoHIxGryZLmQZLWjPcpVQRCaGPjbF0UH9GqldU+TawOZLsJAmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
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

--_000_PH7PR11MB82526B3C905E0D70E54D611980C92PH7PR11MB8252namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

++

________________________________
From: Anirban, Sk <sk.anirban@intel.com>
Sent: Thursday, February 20, 2025 12:10 PM
To: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilaw=
ar@intel.com>; Tauro, Riana <riana.tauro@intel.com>; Poosa, Karthik <karthi=
k.poosa@intel.com>; Gupta, Varun <varun.gupta@intel.com>; Anirban, Sk <sk.a=
nirban@intel.com>
Subject: [PATCH] drm/i915/selftests: Re-enable power gating after live_self=
test

From: Sk Anirban <sk.anirban@intel.com>

The current implementation of live_rc6_manual disables power gating
after execution due to the deactivation of RC6.
This update aims to re-enable power gating following the completion
of the self-test. However, as a temporary workaround
for forcewake timeouts, power gating will remain disabled for MTL.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 37 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/=
gt/selftest_rc6.c
index 30bc2ff040ce..b24d3d7de67b 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -34,6 +34,7 @@ int live_rc6_manual(void *arg)
         struct intel_gt *gt =3D arg;
         struct intel_rc6 *rc6 =3D &gt->rc6;
         struct intel_rps *rps =3D &gt->rps;
+       struct intel_uncore *uncore =3D rc6_to_uncore(rc6);
         intel_wakeref_t wakeref;
         u64 sleep_time =3D 1000;
         u32 rc0_freq =3D 0;
@@ -42,10 +43,12 @@ int live_rc6_manual(void *arg)
         u64 rc6_power[3];
         bool has_power;
         u64 threshold;
+       u32 pg_enable;
         ktime_t dt;
         u64 res[2];
         int err =3D 0;
         u64 diff;
+       int i;


         /*
@@ -148,6 +151,40 @@ int live_rc6_manual(void *arg)
         intel_rc6_unpark(rc6);

 out_unlock:
+       if (GRAPHICS_VER(gt->i915) >=3D 9) {
+               if (!intel_guc_rc_enable(gt_to_guc(gt)))
+                       rc6->ctl_enable =3D GEN6_RC_CTL_RC6_ENABLE;
+               else
+                       rc6->ctl_enable =3D
+                               GEN6_RC_CTL_HW_ENABLE |
+                               GEN6_RC_CTL_RC6_ENABLE |
+                               GEN6_RC_CTL_EI_MODE(1);
+
+               if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
+                       pg_enable =3D
+                               GEN9_MEDIA_PG_ENABLE |
+                               GEN11_MEDIA_SAMPLER_PG_ENABLE;
+               else
+                       pg_enable =3D
+                               GEN9_RENDER_PG_ENABLE |
+                               GEN9_MEDIA_PG_ENABLE |
+                               GEN11_MEDIA_SAMPLER_PG_ENABLE;
+
+               if (GRAPHICS_VER(gt->i915) >=3D 12 && !IS_DG1(gt->i915)) {
+                       for (i =3D 0; i < I915_MAX_VCS; i++)
+                               if (HAS_ENGINE(gt, _VCS(i)))
+                                       pg_enable |=3D (VDN_HCP_POWERGATE_E=
NABLE(i) |
+                                                               VDN_MFX_POW=
ERGATE_ENABLE(i));
+               }
+
+               if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)) &=
&
+                   GRAPHICS_VER(gt->i915) < 11)
+                       intel_uncore_write_fw(uncore, GEN9_PG_ENABLE,
+                                             GEN9_RENDER_PG_ENABLE | GEN9_=
MEDIA_PG_ENABLE);
+               else
+                       intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_en=
able);
+       }
+
         intel_runtime_pm_put(gt->uncore->rpm, wakeref);
         return err;
 }
--
2.34.1


--_000_PH7PR11MB82526B3C905E0D70E54D611980C92PH7PR11MB8252namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
++</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Anirban, Sk &lt;sk.an=
irban@intel.com&gt;<br>
<b>Sent:</b> Thursday, February 20, 2025 12:10 PM<br>
<b>To:</b> intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.freedesktop.=
org&gt;<br>
<b>Cc:</b> Gupta, Anshuman &lt;anshuman.gupta@intel.com&gt;; Nilawar, Badal=
 &lt;badal.nilawar@intel.com&gt;; Tauro, Riana &lt;riana.tauro@intel.com&gt=
;; Poosa, Karthik &lt;karthik.poosa@intel.com&gt;; Gupta, Varun &lt;varun.g=
upta@intel.com&gt;; Anirban, Sk &lt;sk.anirban@intel.com&gt;<br>
<b>Subject:</b> [PATCH] drm/i915/selftests: Re-enable power gating after li=
ve_selftest</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">From: Sk Anirban &lt;sk.anirban@intel.com&gt;<br>
<br>
The current implementation of live_rc6_manual disables power gating<br>
after execution due to the deactivation of RC6.<br>
This update aims to re-enable power gating following the completion<br>
of the self-test. However, as a temporary workaround<br>
for forcewake timeouts, power gating will remain disabled for MTL.<br>
<br>
Signed-off-by: Sk Anirban &lt;sk.anirban@intel.com&gt;<br>
---<br>
&nbsp;drivers/gpu/drm/i915/gt/selftest_rc6.c | 37 +++++++++++++++++++++++++=
+<br>
&nbsp;1 file changed, 37 insertions(+)<br>
<br>
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/=
gt/selftest_rc6.c<br>
index 30bc2ff040ce..b24d3d7de67b 100644<br>
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c<br>
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c<br>
@@ -34,6 +34,7 @@ int live_rc6_manual(void *arg)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_gt *gt =3D ar=
g;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_rc6 *rc6 =3D =
&amp;gt-&gt;rc6;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_rps *rps =3D =
&amp;gt-&gt;rps;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct intel_uncore *uncore =3D rc6_t=
o_uncore(rc6);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_wakeref_t wakeref;<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 sleep_time =3D 1000;<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 rc0_freq =3D 0;<br>
@@ -42,10 +43,12 @@ int live_rc6_manual(void *arg)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 rc6_power[3];<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool has_power;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 threshold;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u32 pg_enable;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ktime_t dt;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 res[2];<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int err =3D 0;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; u64 diff;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int i;<br>
&nbsp;<br>
&nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /*<br>
@@ -148,6 +151,40 @@ int live_rc6_manual(void *arg)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_rc6_unpark(rc6);<br>
&nbsp;<br>
&nbsp;out_unlock:<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (GRAPHICS_VER(gt-&gt;i915) &gt;=3D=
 9) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (!intel_guc_rc_enable(gt_to_guc(gt)))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rc6-&gt;ctl_enab=
le =3D GEN6_RC_CTL_RC6_ENABLE;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; else<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rc6-&gt;ctl_enab=
le =3D<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN6_RC_CTL_HW_ENABLE |<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN6_RC_CTL_RC6_ENABLE |<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN6_RC_CTL_EI_MODE(1);<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pg_enable =3D<br=
>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN9_MEDIA_PG_ENABLE |<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN11_MEDIA_SAMPLER_PG_ENABLE;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; else<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pg_enable =3D<br=
>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN9_RENDER_PG_ENABLE |<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN9_MEDIA_PG_ENABLE |<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN11_MEDIA_SAMPLER_PG_ENABLE;<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (GRAPHICS_VER(gt-&gt;i915) &gt;=3D 12 &amp;&amp; !IS_DG1(gt-&=
gt;i915)) {<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (i =3D 0; i =
&lt; I915_MAX_VCS; i++)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (HAS_ENGINE(gt, _VCS(i)))<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; pg_enable |=3D (VDN_HCP_POWERGATE_ENABLE(i) |<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; V=
DN_MFX_POWERGATE_ENABLE(i));<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; }<br>
+<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; if (!NEEDS_WaRsDisableCoarsePowerGating(rc6_to_i915(rc6)) &amp;&=
amp;<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GRAPHICS_VER(gt-&gt;i915) &lt; 11)<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_uncore_wri=
te_fw(uncore, GEN9_PG_ENABLE,<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; GEN9_RENDER_PG_ENABLE | GEN9_MEDIA=
_PG_ENABLE);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; else<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_uncore_wri=
te_fw(uncore, GEN9_PG_ENABLE, pg_enable);<br>
+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
+<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; intel_runtime_pm_put(gt-&g=
t;uncore-&gt;rpm, wakeref);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return err;<br>
&nbsp;}<br>
-- <br>
2.34.1<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_PH7PR11MB82526B3C905E0D70E54D611980C92PH7PR11MB8252namp_--
