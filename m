Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6C09338AD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2024 10:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8134E10E9EE;
	Wed, 17 Jul 2024 08:12:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wrz6dX5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D824C10E9E7;
 Wed, 17 Jul 2024 08:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721203946; x=1752739946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=I3mKt65SKRH8nKoGzuPqiM3d3AF6lLzRnLnJw2kFytI=;
 b=Wrz6dX5aZcuPGiiQA/3chB300AGp/Pz6tMK0mGU+28NGIuiw+sn27Mmu
 mHyM75EFR2QSBpuolfvn9nlLvWEiAnLgbs2+dhIbZhp/2Ak0YPXXa0Br9
 dNmobPg4EzKH3m89Ks+BlKSfBf4nn9EgZQDv+zElJzQSTxb5yEH3SKJCN
 VWk2hH5ORVRcOGn7I7P69e1ZUELoUsrxPSx+KBGOi4N/Woxs0WllMnPwU
 5Z8rDY8PpFxlnzrkSQz4mLuh7mOzVV5HtQYBBHZpbm/a02Q54lRVYvyD1
 7vz0205c29WY2z7yk2DRI2OmIdz+O94omJ22MpT1PdLoZYfSl9iEh/KQB Q==;
X-CSE-ConnectionGUID: dvQYBVuMTmuL815aDWc94g==
X-CSE-MsgGUID: f2+x/IHNRV2eIcwfrv78YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18388566"
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="18388566"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 01:12:26 -0700
X-CSE-ConnectionGUID: XFnmAXNRRtezN4gOBEN+zg==
X-CSE-MsgGUID: znkCHLSWTtm59mfabVcGMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,214,1716274800"; d="scan'208";a="87793650"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 01:12:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 01:12:26 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 01:12:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 01:12:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 01:12:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Te5/WETAZH7qi/HTfIoya6/0Y3Q26tcbpQkM55vtVYa/186ACnbrT3hfp7A/KkN94wLcG395u12NuPRqSaE0VRzRo7iHFXPv3V/1Cs/2eAqcaAsJAkCtZ9Sj2oKV2et8SCgzH5+8V2SvkC6SiR7d2zkA3eFOcIffRe5BDDbnnYS7xke/FL/RsGfJwoZyoym0p9c4jz02GnelPFcK0ZdfZOwqxVrAXWZaAShgi3U3hojKxSY7YjJ047RrUIaEzwSg2XwwyXW08KzPZEbInCN2uyd01YOG988PPcK0gdR1hsqce3cT+ilIaIH+ViWAkEsetCP/lkJSn7dFyOiH6r2nwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ONthp4y1UXpwkMmqeO4OD9oRgO2Y7y0oDvGQigstUhM=;
 b=smrVof0pKl5FTBjRyZXoz2WBLHIvgDud4RgfDEwaBpM2gaHWRaj/vhpQtHdJZCC8jb1PwlCru2SsLbsmeXz9MvLdikQv3os9QPUg4zBWFOnd5TKWmHfWm0KTJZtI8iun2dVaNoQaorjAzzYv27khSC25RM0E+JhNKjq15gHcCZ2V59zfePN9wKRcAZ2RjT8sS9/jQwLgXsKtI5sGp/6aTXiBH1L5RHu0PqAspagBgH+ibsl5P0yiaNGFeNQUO4lufJMzCielJ7DjjIGDXuzCNoZOIV7it+rktTvo2IF0MsGoPRAZ5JLfL9bJ9j2vyNoqNM5la6yIw6qfyrXZWkW3Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Wed, 17 Jul
 2024 08:12:23 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7784.016; Wed, 17 Jul 2024
 08:12:22 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Ceraolo
 Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [v3] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Topic: [v3] drm/xe/fbdev: Limit the usage of stolen for LNL+
Thread-Index: AQHa1ugvk/LnFmbIG0yKdXxQURNcz7H5gWuAgAESjoA=
Date: Wed, 17 Jul 2024 08:12:22 +0000
Message-ID: <DM4PR11MB6360EE665E02F6CB3423EA46F4A32@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240715190043.3775819-1-uma.shankar@intel.com>
 <soruwn44kfcmiwwqn7scn4iexhmz22dnzc6slckeu2mkwxfnso@3hmv663dixvt>
In-Reply-To: <soruwn44kfcmiwwqn7scn4iexhmz22dnzc6slckeu2mkwxfnso@3hmv663dixvt>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5954:EE_
x-ms-office365-filtering-correlation-id: 0a277461-dfe6-4095-b861-08dca6382fba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?9Jpazbnr/bC7LIBEwsWPTW7bt2eUN24sq3h3134RqcRK3hUnZEEEb6sAT1oT?=
 =?us-ascii?Q?oIB9qlkxfaRlZ5IA0HmsGAZ0HGQV+6ttBPo4yvPHinCsL9Ae0Snbk3kuImwG?=
 =?us-ascii?Q?ePCf8aV54zwf9EnTmnLoTrwsxRVNCOcI+6lpZ5GXp6+Y/wvbBqMsuzkAcc3v?=
 =?us-ascii?Q?Ljm1NimnT7T5CF9x19Zh3fcMIJ2Kvu0vPZXrafUNVZxhiBgU0+q3IsTGcBGS?=
 =?us-ascii?Q?fRlzKzFoPirzwNGBUCcEnogdUtLm7/CoD7qjUZG9ZAeat1KDqdKcMy9C2hQm?=
 =?us-ascii?Q?hq65381DL8JIrzaFlv3xdrvXIzHWuAqDrZJ7ki0QpaQ0gJ1Pk06+K3vZOHxU?=
 =?us-ascii?Q?GlfrO93F4CWQOm2v/PJLYF2bnRobWrjvj1QRIwI/fupvxDZUrWiJ8YWR56Ch?=
 =?us-ascii?Q?IRtKLMkgYgJW4vHTllIRFQuJawgnpswpFdSrYzW54AQG69vtzmiv82Iafmti?=
 =?us-ascii?Q?nvXXe4Zv/VeU1GLmgbDX7zHwRDI8V8gDU9LSe6LhVLgBt7+1OhRJGiCYtLjE?=
 =?us-ascii?Q?+1a1r17bjJzwjgEyKaGR5yTrFoz/VsGMeNm7LvHTnK7O01onsmg8/rqdCyal?=
 =?us-ascii?Q?JVkkRkqtVE3zI4xkzzeexmOFbhCpv7xdQgvKTmkY7EC2s6NoTSfKhfg7FGib?=
 =?us-ascii?Q?YZT0jw86+6HFg8wZ7Rce4+T9UhYK2qtTglQeRAkXpgiuB/cQP1JgXTad6GGl?=
 =?us-ascii?Q?YgbOa6pVeuIqzf69OzLxLIvQufRaXKg4NhRfNksVA1AD+H5AaQFDI8Ry345j?=
 =?us-ascii?Q?y89VcWb8iI4ojluDu2mYiYhTrRDBCF3evGYaFj8rwoaCfoFIN3a9gFwA0xLz?=
 =?us-ascii?Q?aJQd1D0K/zzT8l6k1ODZCED9dfHyOniDGNFEF0HIjdZY7WeEpHX8MWhHurt5?=
 =?us-ascii?Q?EtAJLb5oUs5g5BAbaTAVl7HvXbIEffBfl1RjUvo+KDDdaKJVSQw5hFOAHttH?=
 =?us-ascii?Q?dBObz1YHjFghJRTaQtwjFAw7fctBFtYCVUTMABXh/yFoole75g1Ga93SbdHh?=
 =?us-ascii?Q?eS7oTdLvkdHz/KVZbOgs6V61nBNTOqTfz5TkQBYW/ewfxNDaU60GTXw3Gk2q?=
 =?us-ascii?Q?NX0z1elf3G8+HY4kfLEG1Uynh9fOq0xpyP8H0oqPLcAao0odMsxSZWhR6T2M?=
 =?us-ascii?Q?BdhS2BTXHiBZdopJEqTvTS3mboHNOAbs4BBJLomYJaBbhQL2vMOlamT7dnWg?=
 =?us-ascii?Q?UPMuSunqmnh0oY8jPt737f5cdcvbQ8XeUdJ00+13AxA7tQQbtanl00q09u49?=
 =?us-ascii?Q?RPTf5vLugp6vU3kmX0I1QyJR1ji93H9dFgk0XQi0ngXvzCPOMJbVj+I7lqfp?=
 =?us-ascii?Q?tn4/WnEKT/es5CKwoAyD4X+EFP0LBDUjVO6UMHTmAiFph4fQEMk43MR1BhGe?=
 =?us-ascii?Q?kSWF1MDeZtrdxxCYCDLtrE1nHWZ525pWByq+4358OTqd2wBiZg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xjWyGV9BhR2x7SV27H8V/LoiAQBe9wvBDLtKvp2WuDPypjarBONLB/TBfiV7?=
 =?us-ascii?Q?AzIs4uFTkpseiAoxJW7smxPLjDQwAWncgA8RbjZ5w/90sXZwdajPKL+oymtB?=
 =?us-ascii?Q?pwbZJ/nGlCwzKfUKaZfK5DZDLhKweeDlGXsvjbNRPZqDBvjdeBwlMRV2TRkv?=
 =?us-ascii?Q?xz8+WkyQc+coanW/QB6NZuSi7En+MoXRaQ7bWCU4O1V8WfEhF0iAnfP+R9Ui?=
 =?us-ascii?Q?4jSZV8uqTmtxzSKuAdodFQpeWORdjh0O17sNCme2/li522p6I1AvTpYcF53b?=
 =?us-ascii?Q?K0Ja369xKpzPgTrYU1xGb8cFvGHzryASghCIFqHIaBfBnQbR4SeidydoDGlH?=
 =?us-ascii?Q?I/LTIozYHzo7ykZzLqj3WsgeNh6asnKkGbcECSxMcpP+lKTl85UtTna6LMSx?=
 =?us-ascii?Q?gZgBweaKc8BhPsl5DwQqks2K4dr/IlKxRRMjolLrp/I7s83PYmUp5m/TdUpk?=
 =?us-ascii?Q?pmUyUInGcmXnerDE6HbB2ObqSolhMfsBSs/hRL6EUvMW6xD7CepvDHEePTug?=
 =?us-ascii?Q?R4qkqUdIFqiETCaUxM+6rQPJU0OrfSitgPFlP4DCjMr4yU985Clrv/weL0G5?=
 =?us-ascii?Q?pMuSGUyZrbPfHLrrSWRuEscmli/YEzsujGz08k3qHx8IERHB+GOJEp99kGGc?=
 =?us-ascii?Q?f7NGqX2tBpH4MSVKIUMhGjSZCGfeaUwxAXiZzl4pMQfXWNFqURzfYJPBkbZl?=
 =?us-ascii?Q?Qo7ty3ZdOJj4V3MXRn0Nr/sQiGfDMKR1ouN//BH5b2LQEf0Lk2nLJvV/s8xm?=
 =?us-ascii?Q?bPrAiYVoaEXPq0jP5HLOeEgeUQN6aMH6LLx8B7ERswDeUZGz2AJSdGNsPHIL?=
 =?us-ascii?Q?ZFxCfM/6Bom2rAKqMuMKLDO0jC815fEiQco76PrqT8Y7p7td/OlbfSeF3CWo?=
 =?us-ascii?Q?e8/DlSiA7ohe2qm6dNtpki4eucv2RJ3gqPZ3Fl7HcWkQ20/+COWiSHP/pGyJ?=
 =?us-ascii?Q?Na5vWiGSaMlfsYLVPy59YCxYiMl7jDY7UyCdXeoIHTOnoqUlorqF9PUaEPqU?=
 =?us-ascii?Q?SJduFDUkU6xPFjtJY19k4mx6WQGUAogATef4lOn5i903WUqr/eiFWcSSl6Q0?=
 =?us-ascii?Q?VTs+Vn7EYZB7407Y6LNqFylkigBOZzmcZhJhA28ipyTcENn/8FB6Es9z/vx+?=
 =?us-ascii?Q?370d3VMZCoOf0yChCJJoJrURbuGFxvKJhcsDJ/ZsaW20vBz10PgqvJzeKv5q?=
 =?us-ascii?Q?m6Uk8siD7aH1n9IuZfEyNCfVzO3dKV89cTiTmvUq8t3uHF4bLMPVyaZLlaQl?=
 =?us-ascii?Q?tru3e81FCIp2qhENp0FsRr641zdkjFsEMGfWjhfkwA4bdy6/keWeSLnMaztv?=
 =?us-ascii?Q?JugRjHXgGA5Ey0EcWWn6WO+rVl/NiytZaA0202FG86qNTsAxqWBHFanmQpKR?=
 =?us-ascii?Q?NKgAqmIqHIxzgLT1bzsIYoMwpR6FUWZPgnvQUrJ4Pa6xJ08yRHorChT49IYL?=
 =?us-ascii?Q?1+jjGmXelzQJioIGSZ7FD4SPjvWM87qNjrzZYn0/Ev4fqMXctXF6jKxHA/i+?=
 =?us-ascii?Q?dB2DyA33qbiWMFnhzzrlAEwioDQu240bS0qgL6HbZygiz3izvBRaV6JC7WtM?=
 =?us-ascii?Q?wh6mGq6MLa/2bbWTnIkPVAT0cwXEhKLuEab9oog8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a277461-dfe6-4095-b861-08dca6382fba
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2024 08:12:22.8573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0g41ix9d7IZMcclqq9pqoRBcnOOcKTV98m7y1oxEeux3Wm1kyZSTmmIOczwafwGaqL7L/53h67vUougPRPB/DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
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
> From: De Marchi, Lucas <lucas.demarchi@intel.com>
> Sent: Tuesday, July 16, 2024 9:19 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> ville.syrjala@linux.intel.com; Ceraolo Spurio, Daniele
> <daniele.ceraolospurio@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: Re: [v3] drm/xe/fbdev: Limit the usage of stolen for LNL+
>=20
> On Tue, Jul 16, 2024 at 12:30:43AM GMT, Uma Shankar wrote:
> >As per recommendation in the workarounds:
> >WA_22019338487
> >
> >There is an issue with accessing Stolen memory pages due a hardware
> >limitation. Limit the usage of stolen memory for fbdev for LNL+. Don't
> >use BIOS FB from stolen on LNL+ and assign the same from system memory.
> >
> >v2: Corrected the WA Number, limited WA to LNL and
> >    Adopted XE_WA framework as suggested by Lucas and Matt.
> >
> >v3: Introduced the waxxx_display to avoid tipping on other WA.
>=20
> it's actually the same WA, just a different part of it
>=20
> a few nits below, otherwise this is

> // Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Thanks Lucas for the review. Will address the nits and float a next version=
.

Regards,
Uma Shankar

> >    Used xe_root_mmio_gt and avoid the for loop.
> >    (Suggested by Lucas)
> >
> >Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >---
> > drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> > drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 ++++++
> > drivers/gpu/drm/xe/xe_wa_oob.rules            |  1 +
> > 3 files changed, 16 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >index 816ad13821a8..0f02e6222ada 100644
> >--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >@@ -10,6 +10,9 @@
> > #include "xe_bo.h"
> > #include "xe_gt.h"
> > #include "xe_ttm_stolen_mgr.h"
> >+#include "xe_wa.h"
> >+
> >+#include <generated/xe_wa_oob.h>
> >
> > struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *he=
lper,
> > 					       struct drm_fb_helper_surface_size
> *sizes) @@ -20,6 +23,7
> >@@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper
> *helper,
> > 	struct drm_mode_fb_cmd2 mode_cmd =3D {};
> > 	struct drm_i915_gem_object *obj;
> > 	int size;
> >+	bool wa_22019338487 =3D false;
>=20
> no need for the bool, just use XE_WA() in the one place needed.
>=20
> >
> > 	/* we don't do packed 24bpp */
> > 	if (sizes->surface_bpp =3D=3D 24)
> >@@ -37,7 +41,10 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct
> drm_fb_helper *helper,
> > 	size =3D PAGE_ALIGN(size);
> > 	obj =3D ERR_PTR(-ENODEV);
> >
> >-	if (!IS_DGFX(xe)) {
> >+	if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
> >+		wa_22019338487 =3D true;
> >+
> >+	if (!IS_DGFX(xe) && !wa_22019338487) {
> > 		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> > 					   NULL, size,
> > 					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | @@ -48,6 +55,7 @@
> >struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *hel=
per,
> > 		else
> > 			drm_info(&xe->drm, "Allocated fbdev into stolen failed:
> %li\n", PTR_ERR(obj));
> > 	}
> >+
> > 	if (IS_ERR(obj)) {
> > 		obj =3D xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> NULL, size,
> > 					   ttm_bo_type_kernel,
> XE_BO_FLAG_SCANOUT | diff --git
> >a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >index 5eccd6abb3ef..a50ab9eae40a 100644
> >--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> >@@ -18,6 +18,9 @@
> > #include "intel_frontbuffer.h"
> > #include "intel_plane_initial.h"
> > #include "xe_bo.h"
> >+#include "xe_wa.h"
> >+
> >+#include <generated/xe_wa_oob.h>
> >
> > static bool
> > intel_reuse_initial_plane_obj(struct intel_crtc *this, @@ -104,6
> >+107,9 @@ initial_plane_bo(struct xe_device *xe,
> > 		phys_base =3D base;
> > 		flags |=3D XE_BO_FLAG_STOLEN;
> >
> >+		if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
> >+			return NULL;
> >+
> > 		/*
> > 		 * If the FB is too big, just don't use it since fbdev is not very
> > 		 * important and we should probably use that space with FBC or
> other
> >diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
> >b/drivers/gpu/drm/xe/xe_wa_oob.rules
> >index 08f7336881e3..6ec23c4b972e 100644
> >--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> >+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> >@@ -30,3 +30,4 @@
> > 22019338487	MEDIA_VERSION(2000)
> > 		GRAPHICS_VERSION(2001)
>=20
> better to put the line here as it's actually the same WA, just a differen=
t part of it.
> It's easier if we group them close together.
>=20
> Daniele, can you check the gsc patch now works with this addition to the =
WA?
>=20
> thanks
> Lucas De Marchi
>=20
> > 16023588340	GRAPHICS_VERSION(2001)
> >+22019338487_display	PLATFORM(LUNARLAKE)
> >--
> >2.42.0
> >
