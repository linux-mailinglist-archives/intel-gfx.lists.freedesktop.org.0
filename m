Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4C78BDD0B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 10:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A45810EF5E;
	Tue,  7 May 2024 08:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="atEfszx8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE6410EF5E;
 Tue,  7 May 2024 08:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715069870; x=1746605870;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vGXe+rDbUxgMXyZPaTfIN1FXS2WY+EyIFwe65TAvJcE=;
 b=atEfszx8WP+0lFy1/B5m4ASgPmHSm0y8iyTsvCkBOzzCuSZMqzlNGzBT
 2Tubi23lm2qDMVoOrRrC3892O5KzXfhF+cESSpdYWFDG+ky4Lx6nxSv33
 AAcPv69XgMuvnk+D38zJByL1AIdY5kWS3E/J4/ljkQDaafWwsGN8chTST
 PKtU07EYvUzj9GuKvCedcwSZUjHnB9L1+s94q3LYnoMSlbR57hwXNoBAX
 XOVedsJC51Ma1IuyDvOFzLjCWFXyTFQjh+1IcQUwW75VhaKBMUmnK43r5
 L7wpd+4mn4jFc4GM+5kGObzJlbRZiT0KCFtaQZ2RwckykEndqKc7hfzEm w==;
X-CSE-ConnectionGUID: A8LVEpJ7RhaXmyiKMXdwug==
X-CSE-MsgGUID: kl2KQrwQTeSBlZ8pMUlbEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="33352092"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="33352092"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 01:17:50 -0700
X-CSE-ConnectionGUID: ZTrhhrZFQRGdL0QE/JOCBQ==
X-CSE-MsgGUID: EIVjKl1nRnmU02VeYk6qwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="33241481"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 May 2024 01:17:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 01:17:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 7 May 2024 01:17:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 7 May 2024 01:17:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 7 May 2024 01:17:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYTHT4rw14q2TWylaXvjtWN1sHMHuIsMJssRx/wom6vVQcqFi04DJq3BnkW7A/10U1eSjRUpklpCZdY84S+tbMfDbh95l6n43Aas6DJEKjWEXuaZ1KFPeflCsg0LdMZywglg9XKWvTY+Bz8KgVTfFLsi9g0XWv2ePae2cXlVkCJ9cCTuzFUA1AiZW8jEEoAAzsIOhD8WQv82BRGVcWska6pYkspLPQzErc1iYVr06Df/+Ip5hdlqOP0q/bUoVlWUcKQy5hGB9CNjUhkHGcb84a8aXOsYQmeiUcascPIYlOmKzGT6/5Ajz9SBb4XAIiV6v76anWQOlwznlDdfxgRFrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JC1vt2+1lyZFXHmRUAib5FIB/DcY7rjCwIhijhlWEHA=;
 b=LkUTuxNeSXFeqnMMfIbof/dGsb0BhXDtbCvMyd1ujcxhghWAkYsateT6iUrZprhliRrRAhm+oxyqQWXOF8wJV4kHd/5MlecBufBLsIo1jBJRrIGK+9juCGnM8ZB/Qa425WSn7dyMAtWfVDMifZHNf6iiCpQu7ozYmvgme3BmhT1mGhnV+WHph0HrPWtPic5ieIzy4N0EqGftUByckNKTgj86V8ffB63PfluFnzEljEUb/4poGn2NXEAZQxmbvf2y81p9qvDU1MGDuvIqC/pZ0bXrgzrjtwz0fPL8kvjNT5Px2PEMLJGn1jCiVpz9NKcamRGSwX43gqDqYURZXHj5Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB8686.namprd11.prod.outlook.com (2603:10b6:8:1a9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.43; Tue, 7 May
 2024 08:17:41 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 08:17:41 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [v3] drm/i915: Implement Audio WA_14020863754
Thread-Topic: [v3] drm/i915: Implement Audio WA_14020863754
Thread-Index: AQHan52axZmGpR9iS0WXOmkPDeN75bGLbbpg
Date: Tue, 7 May 2024 08:17:41 +0000
Message-ID: <SJ1PR11MB6129D96B9ED77A6282BE8A27B9E42@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240506101817.2590328-1-uma.shankar@intel.com>
In-Reply-To: <20240506101817.2590328-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB8686:EE_
x-ms-office365-filtering-correlation-id: dcb79ed0-7ae7-4f4b-1adb-08dc6e6e2a6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?kaJA+zRkigYLI7ucjA3TSRQC5TUNo9BG04VEpOVq8e3xRBRON27SFrkl2EWW?=
 =?us-ascii?Q?aa6u/6GNXhfPg3/3wRpJP09WRUHloFcdr5U7Lcq+VeYN3uBBDeyve6JpY+0T?=
 =?us-ascii?Q?hS9SvSMSsIQlIb5fzXlmwbD1259sRqXVoIDFhQgpADg3rWkIj6TxvmSbZykB?=
 =?us-ascii?Q?ls6R6xNETWF71ckolVWGMrbC4FQsB2eO7iOjDAj19zW3/UZBgbpc7amtQYBa?=
 =?us-ascii?Q?sD1Cb3njyEuJPR+07VLG1TywIAnpl4fqnWC51Lm+Y4vdcXmzVQYI6Pdoplp3?=
 =?us-ascii?Q?pfTN4+cSqZ19c1msYmZLixhZ4O6Xmh20Ze/zS/bFBOo6D6jVTU2Mn47LXQXy?=
 =?us-ascii?Q?a5hdPBey6Ea3ptrZERhyQS8tUvo5ihFyeXQh5LYGsnzyqwwYnqzP3UikwRiV?=
 =?us-ascii?Q?vDBaEboLlRG9kfRHKNhyf/9LIN/4exkbOdhf3ztgKJuljr63s4GXIKn62ChR?=
 =?us-ascii?Q?Fy5I1W8/l40TH8Pt6vPwy4K59x6DOre6NnR3J3sdmIfb/q/geemm1xdG9MBf?=
 =?us-ascii?Q?Nzoc7He8eAHMWjIxUEBlwj+37Pv3g8SnoDDivYcCZbK++ivahdDoTVLqAASN?=
 =?us-ascii?Q?dppjkY8wq0fu7WJNcL4wC5vC6ahZJet4YaHdknF0V5tGuU6QfGWeF4djlUyi?=
 =?us-ascii?Q?7Vi2yzcOUfPRzvvAEh334rfgUtb0NSc4utO5bA5E8kHvIU28cHtm65TxSEmy?=
 =?us-ascii?Q?h+mvUNnyKH8IZo83rmwUYDqi0GqFGbsR6gP4xmMjtwhX9EwFz/kj2dap82MX?=
 =?us-ascii?Q?G/ZkfgP2o0QV4uizKuOPE4PGF4xLjihD5wRyXPn4OPvnEKxWX7kvZNBE8JEP?=
 =?us-ascii?Q?br5ohMrxi8XVLpe93iQ69miiUvBL0i36+GEjOeFyQbTHJr2vgD4I8rSBE/g0?=
 =?us-ascii?Q?LlYKk0S+YfDpksI89fGG1QDwbx8BNjpgofOioguwG4v0eNe38YOOvcZKPRTd?=
 =?us-ascii?Q?YVE7hi7ADecAe+GT5/M+AetljbNuZ8mZJIpOFmrvavuyL2wBdu0sySZJeiu1?=
 =?us-ascii?Q?l6P3WxtNGPcqGlImvcQzqA3a47ofhNdaLASuMzypqPOneV0LZCw+mZTKrfjz?=
 =?us-ascii?Q?YF8qE3bqZqY0Y9SPcNGqhqdDEHvXDzUl0tqvaJa/B2e8bMsWPzQ8i26kBHFG?=
 =?us-ascii?Q?qBHU4SiCWstbZyx16kPOcDPZa8ejdhpyo4Vusz0//ksjjSVVwN2dx5dBXXRI?=
 =?us-ascii?Q?2dgPUvhlyy5d9zRMSJNIMmVkOclAxcJDRLl8WSZ74kQlnX9EBos3KL+Y+TvZ?=
 =?us-ascii?Q?K+47/HeHfGHAeWKjDHlpwyJwOwe3tiLUms1/LJdalhh2CULvnnEboNXx3v39?=
 =?us-ascii?Q?Rg6yESy6J9VrAacPPPJHO9o9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yxErbrXliRtRWCdKreCZIpbzG/4Sv+p6bJaWhj20nm99rLYAVgnw3Ui15lDy?=
 =?us-ascii?Q?YP/I1Jn5Z1pE4krgu+qolP8gKPo2n5SQARxj+Dh2mCKkPWkizSkLoF83bEF2?=
 =?us-ascii?Q?P3RLY892hfqueJ8VQfWdZPud3K6l4KYliCP3VFBlp9LcO/DLMYayr0UiXSxR?=
 =?us-ascii?Q?8Ft7orWA5Dv6GWuF9zxiT7ZSfjQNSNDD/u1L0PkyJE8lsugP1jrR4WSp8DPg?=
 =?us-ascii?Q?PKeq8DpuHuhmow6ryDj5mPPch0/xF1b+43o/KtbY2hxycIY2V6ti6Qy6HdVL?=
 =?us-ascii?Q?vg/gBj4ueXqJiufkz8wYGN5tzgw/9IOGHv6vA0C1VvtMHMo7NDOcsePfrhWv?=
 =?us-ascii?Q?njeZUDEXqvP/oCODWOc9fLLdbCSd1jq9mTyyrLrIqQ6aPrMRmVz6ItJmZ7Of?=
 =?us-ascii?Q?LlvYqZvQDphX+IM+nu8W1xhJ3lpfn2GRyPsQtcOOcvOIe1c263kUPaKA6i/F?=
 =?us-ascii?Q?UosoduKOEtHUHWswvuJ3kdPezvmN0+MxalLnaFvYTPVX2Wf2vU2jLRwX8tA7?=
 =?us-ascii?Q?Ng1wpz7gIv6ptWeySgy2WtJux1VzpkvpDexvx9FBYHwIpFUucjYvU/9GXHOx?=
 =?us-ascii?Q?onaH1OTB2A/YrNer8uwi9HDi94iPd2L6fRU4yKrsZalfvwfq5AMPJyTxRX8e?=
 =?us-ascii?Q?yySrvh8c7dgC0onA9Ewl4WS7ObQoBJK2Ef/GdMTfJSmCkUISq4odyv6a1sPh?=
 =?us-ascii?Q?BNMDNwAw60nFi3NozWhDdZPXCEJxbrBzxFpMRwzGiQ1i3G9I7n6gkMx+hzXc?=
 =?us-ascii?Q?ZEomBf+PEJJOZtTgb5sJQgr8QyG5RXHDWuJUi8Vtauljpk1ZJI1npvsczqPd?=
 =?us-ascii?Q?dhgo4Y4yXULnKjk/jcGRCFMiRTbbOuf7aKTQIXeV8/tKqPSom7h4AkN1tmVL?=
 =?us-ascii?Q?+fBMsgEX6ds//MlTQggydyxWHPnzrI7H5fxQp731q5n1kaAqVZMupUTKLMrw?=
 =?us-ascii?Q?wMvCG47KMvwJEvUHyWrkjJh7qiXmJ0PtQiqBmfd8cNWMUPwoJHlKYTl2kghF?=
 =?us-ascii?Q?PChGjlVf5FzzoY8J9JgAqM4W+yYLo5t9NDImBtDy/rAxzs5iJ5xQOut/SYbR?=
 =?us-ascii?Q?XqsHgGjrLhK1AcylpYZ2qfYxUrBu3lQTuSfBepLNwqWrX59T/XsYl3dHSfZW?=
 =?us-ascii?Q?83aWuQkwpc5yFtVim+AQ2svZ1wh9g/KA2cEF4X6YUyrvHHtiZCS/MxlSK5qz?=
 =?us-ascii?Q?xV0bsM/jaYzUZH1TqSr07vXtAPPeQAng2T6BnOjHIm6aYuBgJwTOdcGntA0X?=
 =?us-ascii?Q?WACWIeK/ZFzZTZ/0iZnc9nH1XdzFg/K5LX0PitJn7CtIB2GzHXnahUsqxjno?=
 =?us-ascii?Q?mN4Sg2kCDffGj4ugJm82PjU0b+mc7EUca7G859qBwGDoaxpxhL/94/uKJPdj?=
 =?us-ascii?Q?qo7ehNLBvGva0hvMlE6EgHer7pIxXzieXzb1EB+td3MAfFaIwj7kAxfKF5bJ?=
 =?us-ascii?Q?Fj26pU5tKx8ShyNjwYo07h1jMTitMJj2d4DGRQ6doq1KTGYODjnkSErp0ZUF?=
 =?us-ascii?Q?ldrtIm0khZZRN2R4jBrpG36O4a8zqZfgDsieqUP9CPRmJ0oDPvHgkFxaOgT3?=
 =?us-ascii?Q?tOGHXn45QkKa6AZbubUPRoD1rpKQoBNDPJXPjlFCwywytJrDvELmqt/ARyPu?=
 =?us-ascii?Q?sA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb79ed0-7ae7-4f4b-1adb-08dc6e6e2a6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 08:17:41.6462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nnrEMwqGDqQtAdL8E0nIr7lzpK82a/npkJyAYU+1Kd0yHlDxC1Jt6lCnu++mu80+q/cRau8Dq8NPMghIF/QGWUMo2dYM0KTi/2GmIi40c0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8686
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Monday, May 6, 2024 3:48 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> jani.nikula@linux.intel.com; Roper, Matthew D
> <matthew.d.roper@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [v3] drm/i915: Implement Audio WA_14020863754
>=20
> WA_14020863754: Corner case with Min Hblank Fix can cause audio hang
>=20
> Issue: Previously a fix was made to avoid issues with extremely small hbl=
anks,
> called the "Min Hblank Fix". However, this can potentially cause an audio
> hang.
>=20
> Workaround :
> During "Audio Programming Sequence" Audio Enabling - When DP mode is
> enabled Set mmio offset 0x65F1C bit 18 =3D 1b, before step #1 "Enable aud=
io
> Presence Detect"
>=20
> During "Audio Programming Sequence" Audio Disabling - When DP mode is
> enabled Clear mmio offset 0x65F1C bit 18 =3D 0b, after step #6 "Disable A=
udio
> PD (Presence Detect)"
> If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave =3D 1b)
>=20
> v2: Update the platform checks (Jani Nikula)
>=20
> v3: Limited the WA to LNL and BMG, added a helper (Matt Roper)
>=20
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c     | 18 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_audio_regs.h    |  3 +++
>  2 files changed, 21 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index ed81e1466c4b..cb055c16dd98 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -183,6 +183,18 @@ static const struct hdmi_aud_ncts
> hdmi_aud_ncts_36bpp[] =3D {
>  	{ 192000, TMDS_445_5M, 20480, 371250 },  };
>=20
> +/*
> + * WA_14020863754: Implement Audio Workaround
> + * Corner case with Min Hblank Fix can cause audio hang  */ static bool
> +needs_wa_14020863754(struct drm_i915_private *i915) {
> +	if (DISPLAY_VER(i915) =3D=3D 20 || IS_BATTLEMAGE(i915))
> +		return true;
> +
> +	return false;
> +}
> +
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */  static u32
> audio_config_hdmi_pixel_clock(const struct intel_crtc_state *crtc_state) =
 {
> @@ -415,6 +427,9 @@ static void hsw_audio_codec_disable(struct
> intel_encoder *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>=20
> +	if (needs_wa_14020863754(i915))
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3,
> CHICKEN3_SPARE18, 0);
> +
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20
> @@ -540,6 +555,9 @@ static void hsw_audio_codec_enable(struct
> intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>=20
> +	if (needs_wa_14020863754(i915))
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0,
> CHICKEN3_SPARE18);
> +
>  	/* Enable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 88ea2740365d..7de82cd3380e 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -164,4 +164,7 @@
>=20
> _VLV_AUD_PORT_EN_D_DBG)
>  #define VLV_AMP_MUTE		        (1 << 1)
>=20
> +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> +#define  CHICKEN3_SPARE18		REG_BIT(18)

Nit. This bit seems to have a name now (Bspec-69036). Otherwise, LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



> +
>  #endif /* __INTEL_AUDIO_REGS_H__ */
> --
> 2.42.0

