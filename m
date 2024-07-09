Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D592B801
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 13:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F27F88F94;
	Tue,  9 Jul 2024 11:29:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cvk9Ez6O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0869088F94
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 11:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720524584; x=1752060584;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WXs0YjhnUtsh/Bk5izICMHIL8TZzLQ/MhXhQQ0Kxeso=;
 b=Cvk9Ez6O5PHBX4IjDr/jGbmx3dCnMi+TyWCTRUWqIWx0E8zBDdaYIBwv
 68S1r+RqQEFH2br7U4BfHE9WMxVmiA9JSFzIocOY+fOks3sF9Bajgvx2b
 wW/9S4ZD4PQfpMD0ERPO1ZhyQeoeEAGm6PK5BOwpcxJqP8O5/Xiy09rII
 PxDHj+4ilT9iBPXrpxeo8BCpRqpola0vXL7LCRw/njk8HVvp6qffpR7Bh
 iKYQEkFiXueH9/gMSy2kO0bTj42I5Wv20x+V4GCoSrcEtTSe5vDH73Oqc
 AJ9Ctkl6kQeDKWoKRktMSjyc3ddZVbtnOOoouObLG6g9DDc6jZK6qRLYu w==;
X-CSE-ConnectionGUID: cdU5Y6KVSXiT73MYKy8aPg==
X-CSE-MsgGUID: AXcVTvJFSfarTEW8ztCemQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="43195432"
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="43195432"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 04:29:44 -0700
X-CSE-ConnectionGUID: SgoYxI0oSR2mKAwjhDf/hg==
X-CSE-MsgGUID: SXSrUntNT96HLwrgStzw1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,194,1716274800"; d="scan'208";a="78977465"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 04:29:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 04:29:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 04:29:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 04:29:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 04:29:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9i9ZP4zf9IMf1PgGGen860Tg+KJkzPQra9NLjqEufd94hM8Bn5f92hCdjShzuzUIzUJCP96xaMPR0Dki0j2Rx/hSTXRwy4Jb0jeBtyM6RWEMP0VxlnwCjijP0it/U0CLrSmU3kKwKJ5mhoZgXdKMvP4/1UsFBUZSCB/5xzwsFd3ef80G3hhBKh03pjcSo23x+VosYYFBXL4Zek0c20NzomWry6bj0obWIJ5eKqiBhj6IIOeW8sHOSVBBm8RLeKaWLNdWUy0FmWrKuVIobGqmeKcy8vC1WbYYqNaQqpnz0rwZJAIxtzpOHy2IqaJe309S2nIqCEWr/f2afT6dXgJDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g/btrlt6vyZoix49E21gLiyJhEEUYdOkakoag/V82+4=;
 b=dYWH60GrP25kSbuy1nVn/apRO7FvwSRUm8aQE2l/jex//Edij8EMyKhZNEycugO5KErwCIewT/lXU7VQVkDWQxaKpQlwn/TU6JQHHUNfKO5b51/VS4x9o6J8lM7BweQ7PB1eKrtQvQLHDvFiWz6REOzKXcZT1z/Z+1xlRCj/sBzwjJmanZyEM5l+/zQHWjJB3IyUK5NG336PfeqCQXpsTfRw1JGc/p+5Dy2sk8GmY7KLiXS68FpwiOaVT4xsMDD1ACWdqwZlUXQBLm6XHiwyndTI1BtwHCXAXO6UzLjQwvOR+3YMLkI/FqUEZB9diHWdgkrn2eLhKi9yN7M91PcI2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB7470.namprd11.prod.outlook.com (2603:10b6:510:288::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 11:29:40 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 11:29:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Garg, Nemesa" <nemesa.garg@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v5] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Thread-Topic: [PATCH v5] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Thread-Index: AQHa0RFm+oh9NUpTdEWLfCxCrcRrTbHuRABg
Date: Tue, 9 Jul 2024 11:29:39 +0000
Message-ID: <SN7PR11MB67507F05F0B3097636DD3E96E3DB2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240708050522.2538474-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240708083247.2611258-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240708083247.2611258-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB7470:EE_
x-ms-office365-filtering-correlation-id: 417eaec5-dea2-49a7-44f2-08dca00a6be0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Ykh0CsH5zYGoYSy1h3LD0Xgdk42psq172Rm32JNLkC+lv5HqUNfCZ+GJbFUr?=
 =?us-ascii?Q?AyRibM+Wl6c2XnUXZFrb5C3iAu9DkgScV710B39FMwbpFJnhCNImVSYfwsxB?=
 =?us-ascii?Q?5Xz7al6dpAqC3RKP8mmk9bZ8j6FHSoxVBAVOMPtRu9W3Y9XFflz/B0tYZ9Nd?=
 =?us-ascii?Q?lm+ovYhW6MOzRtYwMtkeHYkbLIVU4vnUe3OFsS03v8Aieea4TPuL6iKEXNCp?=
 =?us-ascii?Q?MS7+mr80woewRLs8gYUDQP/vKW53LC7HZEITW1UMjJl+vP+Txxw77Ph4/XyZ?=
 =?us-ascii?Q?4315cHoabWpOCi6b6X0O2PHo/MbKxhizY54yw3WYk9MRyQwHfXIFn6AEJqWW?=
 =?us-ascii?Q?XYd7G8r/6tbVPmjOk3ynTmH3dc4cyPHD93a1PPT4OxSvI77lfJqeGz2hpBR2?=
 =?us-ascii?Q?xjM8FJ1gb3wl8wujvOmrUJa/lQ5FW5w9SQYYQxC68HTvtzs2hTYL3DQJit/0?=
 =?us-ascii?Q?ZrVjUKmSoqsmz2Qvabsn7e1OdjMyn3WW1xhApLlQokgu401b6eR9LiMKTIxf?=
 =?us-ascii?Q?okfe4mlYK1lKwCB5m/m30r2y0hOdrNaa2LwwKL+Aew5UOTExC/xPQZi16gFU?=
 =?us-ascii?Q?YSO+BB2reLiHsCEcUMXuM9HiACBsiuMCHUnp3zGgAvaSSe1mgES0+VzGACwu?=
 =?us-ascii?Q?+XF8mUxovum+d9+I1uBptWgY26c+EWV6fW5QL6tx5p+nnjZWSd6+tdWWkjVY?=
 =?us-ascii?Q?NakOGMAAD6UhFDLsO6Zy+f3ZVg9zyMkNnTUAqAW2FxOpfRSd/UD0qbQ7lUZS?=
 =?us-ascii?Q?55hpGmKGXggNLL2OKTrPCr2Hx2crZgkuu5fsBFMWXfmtloJ7+HVwmGd7TWO0?=
 =?us-ascii?Q?LoZT/77rVXE7VVYnwPHNyh7dHmBtJ4g9NKU0cyBpR8dLBoyhsZZ/2CxRtoUY?=
 =?us-ascii?Q?d5/pv92BU1mse2lwc9b/NXm65709rvjvENMo5NRC1vLhZYfrWqnekwc/1cqJ?=
 =?us-ascii?Q?cG5Gjh4+/4wfw3jBlmNUyf1rwC6j2Z6Snr0On0gOlj531yJL/rhLv44D0x94?=
 =?us-ascii?Q?c7+L+gVIx7/arJ7kJG6fr87flW4Q32WGOYdCY153dfBqQHgkYGLco5TiGFEG?=
 =?us-ascii?Q?FAliTrINWwWxzi4AmEU/4cUjZE9yHPIWBca8GgAQBboAQ64ZTV4bhPDuOO7u?=
 =?us-ascii?Q?Bi9RdYEIBjBDJrIRvXGBejSZYUzV7w85t5A8zmfIS3nSvdxtfMsEnVOAfPxB?=
 =?us-ascii?Q?ex6WRUD2BdTR9kHViaPHzcY5IpVhKHbl0HCSIEbA2CkgpgM/EunyYCGXP7ju?=
 =?us-ascii?Q?qxd0Rd8uce90bJPm59O7IRQm/Y9RIbQGQYZugzhTZbZEo/IPmPQ3/unkpwVG?=
 =?us-ascii?Q?CiO1J7m0pdb5fVTiGjeyK2GBj99gXZ23x85/a/JCao0bLcv+LJ34KWpDDt5+?=
 =?us-ascii?Q?gmopBR7PV9JlCSnGvCqvR6vNgR8sZq8/slPKJgpzlasbZuX83A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RfBJ3BUkrdxnuYYjSyoK3p68RU3B61YevAkHm9X+q0L4TbX0IRUmhZOZEFkg?=
 =?us-ascii?Q?VW9oSYG/iZIli8EzXVDIMjJgxOW3EqeBCcoe0OV6W8sVgGfUZYDxdjbidPke?=
 =?us-ascii?Q?ol+05CG1pLdoJBbEkabCZsNE+fSZukGor7AFKhFHUSEwLrYhAsjGEMbRSbNE?=
 =?us-ascii?Q?Puihf115Tco50U3QZ0fyHXzyXTfxNLcX90qB9/F47m1LpAfAbCQphif+CErq?=
 =?us-ascii?Q?LsQlaBpKbFVrPP6lIfJTZ/k0w4vifIRF12Z2GvyYsljtzkVNMs6zvfLMexOb?=
 =?us-ascii?Q?e+vOhry/Q8AM94f39pItC+JXeG0vkTJP7PsFfO1DMT2BlzY11WoV6OKO2Mct?=
 =?us-ascii?Q?jwX8IFP0E1uakuDzAGsHiEi3SC3UcG8Lwym4XjLmm1Mg9Kw0SbylstJanU22?=
 =?us-ascii?Q?zKQoxTnEr7krozEfRix70Nzqvj+QsLpNgt2Sn+gD5um2p8ZmFNQSHMMceIFX?=
 =?us-ascii?Q?J9kyUlPqY/HTbbqo9+irjh2lq+sYI/8ZqNO/ptkEjj47a2miOlOHFEMYqmNB?=
 =?us-ascii?Q?NykpYdHbseEr6aW2uejVHXwCoQ1RFMdJhbaK6+yjy5k8UwkKxJ1OhLZdv+cp?=
 =?us-ascii?Q?Ec1LzaBaqfv+7KU7IJpg9J6aK1QF/n9HAwlWq/dDlfB7ryBbaVe6GlvYjeNk?=
 =?us-ascii?Q?Y7hpcqOMfnw0DFsauX4kDVJ/M2Ci4vLNLOZF5fZb3SRkBEB69XciDVM0Lvvb?=
 =?us-ascii?Q?0gBmbVV4wxHZoL08fQsQ2hYgorI66oEQupzqkI9WxFZuK3hjRKEouLU9Csim?=
 =?us-ascii?Q?Ye7tVWBlb1TKtj/49LKpB1SytkXmMrRFzJARF1CsH8z7PJJ9TvO0Ey+YueJu?=
 =?us-ascii?Q?n213+xVPCd587lyulsVBI+Bf1U2xr3ZEtoh84pW8+UHAG+L6eHnc2EELMNFB?=
 =?us-ascii?Q?DbiJmkdxm3IUdAbOZiD6mbdngduCJsQh0/5kYtzGdtH5hbpJJeU9gezNS9z5?=
 =?us-ascii?Q?ozGHUqJzP1vGAz2f3otmrvVCC/X9dRrLOlMwzmBFvdS536UeIoDqSxjFymmf?=
 =?us-ascii?Q?ZbJ+QJDuZ6a/LpR8ehXkdCCIe7x6tP81HBoxbTzh+DwFNRjmmjpoy9X/jrxN?=
 =?us-ascii?Q?XaSNLMBkvke7Kpof5zJYztHec95Uuv7kVzlzuGBCWxNjWrG0afnltVlap2Xk?=
 =?us-ascii?Q?AxkMn07sIdu8imCvXOoQfQ2cSHMn1Syzb60tl3pzRqmfDx8aVlKek8L/5oKP?=
 =?us-ascii?Q?vjcwqkxtWH5nPwKISjgPEAOOukE0/BuLs+bS5cmML3Xy+kKJbf8s48Yam0r/?=
 =?us-ascii?Q?Jc//reMRM8tkFcVZWMMpHNNI5eOZg6RTDcc5fJQvhAGkY/eH154YFH87vJN6?=
 =?us-ascii?Q?HZ3Z/gnwjpVivaMb27HOO5u76b0m56qwl9956H8BBXalPCe0+Ih6LJHpNhyJ?=
 =?us-ascii?Q?XSQl092prdccyh4PqxYH2YDxxiOXZn6rMU5BbNDRHCd0w6zEqG7fXBTUuisa?=
 =?us-ascii?Q?4ozwAhTrBaH5FChuc+thx2+/mM6Wvzl+i9j1ZcwF7PQv4pWLArNTrVYVBBPa?=
 =?us-ascii?Q?fEtgkMMqhDXJeJqs+F362e0ZRHF1gjrOVNMupdje5VzHyi0rWvY9BJkBVuUD?=
 =?us-ascii?Q?a0Ebvmc7JmVAfZbBu3FB0sPBDf99CA5XE+yfpDLy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 417eaec5-dea2-49a7-44f2-08dca00a6be0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2024 11:29:39.9727 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NaZKQwXB2TY5jm+InMmHATznQyQMLcXcRZOTnS1CkaROcAcww8id0wQxhZJBO4BA/ITk4feq7r/WgfVpOz+3EQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7470
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
> Sent: Monday, July 8, 2024 2:03 PM
> Cc: intel-gfx@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; Garg, Nemesa <nemesa.garg@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v5] drm/i915/display: WA for Re-initialize dispcnlunitt1 =
xosc
> clock
>=20
> The dispcnlunit1_cp_xosc_clk should be de-asserted in display off and onl=
y
> asserted in display on. As part of this workaround, Display driver shall
> execute set-reset sequence at the end of the initialize sequence to ensur=
e clk
> does not remain active in display OFF.
>=20
> HSD: 15013987218
>=20
> --v2:
> - Rebase.
> --v3:
> - Correct HSD number in commit message.
> --v4:
> - Reformat commit message.
> - Use intel_de_rmw instead of intel_de_write
> --v5:
> - Build Fixes.
>=20

Move the HSD no here other than that LGTM
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index e288a1b21d7e..0af1e34ef2a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct
> drm_i915_private *dev_priv,
>  	/* Wa_14011503030:xelpd */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK,
> ~0);
> +
> +	/* Wa_15013987218 */
> +	if (DISPLAY_VER(dev_priv) =3D=3D 20) {
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     0, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
> +	}
>  }
>=20
>  static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
> --
> 2.45.2

