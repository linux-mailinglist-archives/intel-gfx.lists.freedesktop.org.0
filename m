Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E472FA4DDAD
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:18:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B9010E5AC;
	Tue,  4 Mar 2025 12:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1TA/CeD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879D010E5A0;
 Tue,  4 Mar 2025 12:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741090691; x=1772626691;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fASeg0/PaIwJHprTPwCUzBr5GieHMnIoMqyNYjPSRVQ=;
 b=a1TA/CeD7UzzF4X8yzrO4r9Xnn7SfhACXSEggUwVp8hx7nXOVVPxUK3R
 1JupzvdTmik4c9sjw3xuBQHS9vKP47OGN4Fr21T/nmO48uQZLejOeezpV
 6YSTMMXZHgxM7ytuwXaec02p/QGxfy/VqOCkycFqYWzMQGlwIq2/njnNy
 lKbXpurHZ58fXJKrvI447iBgZyS+lsMkZQWlrks5FVtzZfSNMlKyhYoPD
 ic0gx5Plzj1JravV2rbAwPf4zZer3Jepf65/JPoG7Y3b2hIt2s1idCsiT
 HoTpW8HCmq24yQzsxH6vOvt4sw3BjKbCde8GH+emgQWLuuIOCo1vYg6/i Q==;
X-CSE-ConnectionGUID: JhCtpHx0TX6Mv24h3OInmA==
X-CSE-MsgGUID: 0Cq6eZRfQW+Ke2hjAS43MA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="53408177"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="53408177"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:18:10 -0800
X-CSE-ConnectionGUID: FNQjjYGnT+my1DCNa3jAFQ==
X-CSE-MsgGUID: VtTzNJIMQpmTnTK1SQykwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118515704"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 04:18:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 04:18:09 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 04:18:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 04:18:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShXX6VM/ctD0nC2BRU2v24YDrKPEWZvtIfY1wSdWvfThPF/brEa4jiaPOt8xPA3JJ3zOwbir8PpzJH2a1WAKWu79wlziw6RsqTxCPdB0bf8sOBp+R6OuTqrtGljZ8sCXedPu6+JoZPxQPtk4iVIvvD2O8T5r1jx8PawIq4G1iheUbgQimaplyzJ5oai/UQW64nd6oPeoSK6ONktCBKgPXMXwAQCChiCBXRr2wpB20O0AyEhsdstgxLjJ8ftWsiKuge+0vB/mVf2JDP4RXuqqALLiI6DVl1Ij0oy3aUW4gkvZJnYZ/lDrCfENQRgWWFqhl61r0dqwQMnOkCtYwEIzWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fASeg0/PaIwJHprTPwCUzBr5GieHMnIoMqyNYjPSRVQ=;
 b=lwaaz/5/e1OYiumxpIhtTvBTtat8kBzpN6fOGq99XP0IyhU0QlGvMtW+IDLnU8VXDcHTwxV3vZiGefjSExNnqmJXVrEfrXwlocZDmKK3t4C/2/bo0vNfFw2FjtChpSogfd5zIcy27yjliGYq5eKCx0WwnnUXPmPxgKHDAiTX43z5JZe7+AkWGmkADiy/Qile9cST+Vf7IHSfbzFrzItmSzT3F/wUWDdwmV9vXANSu5jwQAB016QLHYXeTSv/isXpO9thJodeiwlYZs5DAsLdb+7NuHzI7njwjbDpBn88YhrN840vy//VT4K7g0fLf++hqyAts73Xt9sRa4YWYQfKuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.25; Tue, 4 Mar
 2025 12:18:06 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%6]) with mapi id 15.20.8489.028; Tue, 4 Mar 2025
 12:18:06 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IGRp?=
 =?utf-8?Q?splay_reset_cleanups_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNTogZGlzcGxh?=
 =?utf-8?Q?y_reset_cleanups_(rev3)?=
Thread-Index: AQHbjDf+oGFbZL58RESHcZ/zSy/fabNioN+AgAA+N7A=
Date: Tue, 4 Mar 2025 12:18:06 +0000
Message-ID: <PH8PR11MB6753B0DC83E38DDE22411319F2C82@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
 <174100497638.123879.14186429438268449748@b555e5b46a47>
 <87zfi1z08g.fsf@intel.com>
In-Reply-To: <87zfi1z08g.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|CO1PR11MB5140:EE_
x-ms-office365-filtering-correlation-id: d1cd7681-17cc-4747-4a21-08dd5b169eb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|7053199007|13003099007|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VWViS1QwdUROUVU1V1FPNFFnaTRuenI3OWw3VXJ5UnIvV2oxOXBtckZiN3dx?=
 =?utf-8?B?VVNpbVJKR1lSSkxFQ25OSWFNeEEvNW1PTjZzcWYyZWUxa2pRdFpEL2g4cmdj?=
 =?utf-8?B?RGU3Y1hOODFLTVowTCtMUEFVaFQzY0libXMzZmtielBWUEJySEpVNzJIZXZj?=
 =?utf-8?B?TU5jYmJDckpKZjVQQm56UURlNXM1SmhjN2JrS21PbUt2NmoxKzhrTXpYU0ph?=
 =?utf-8?B?RGN1bHR1VWtnbWdKY2N2SFVoS1pNU1BFbEdKQVFwWWxQbGRmQ3QyUks0Sm9o?=
 =?utf-8?B?QzRqRFBoOGNXY0FmMXlZcjF6K0VKNWRWNW9POTF0KzQ5ekR6TU5wUENYSnc2?=
 =?utf-8?B?MEFpZzB6WEo3RkZ3OWhOTENNVWM5M3FYMXMzUysxeFdpZmZBWkhZc2xjUWlH?=
 =?utf-8?B?bW1UZ3RmM1k0QjhYL3hNbUsxeUdCclpVU3NJa3R2Y3F5cVEzSmRpZG5KODUx?=
 =?utf-8?B?MWxsZUIyVXVkZU4rWjlITjIxV2k1WUk2dWNJb2dnSVgwcEIveHQ1c0lwVjZ3?=
 =?utf-8?B?eEc1ZkRCRWNuOGNjaHlhMzdhNGY1RzlnNUJVbnpYYld3TWtHMk1yMUI5dmFV?=
 =?utf-8?B?Wm5EemxEK3FPOGNRZnAzQkM3MndXbTJHMUhHZ3VDU0dSeERBanlLWW5vd2Zs?=
 =?utf-8?B?bitiMTdPSitJbzg5ZTVXQlMvQ1RBaEozL3I4SzZUVTZhanZUOTVxSEs4VjJU?=
 =?utf-8?B?QjJmM0x1cWk4MHU1UzQwaGwyZmpEMEs3L1NHQ2FvTWJpQk50Mmovd2JtQ0ZX?=
 =?utf-8?B?MytVWndoeTg4WkhSdithc1ROYnJpdEJ0QS9tZStIaHR6amZmc2lPd1c5cHky?=
 =?utf-8?B?K3g2d3RMRTNmbWkxVmxpQmtsanA5QjJlRUcrRy9UYk1SN0c5Q1QrSFFYczc5?=
 =?utf-8?B?VyszNmgvSGR1TDhNMHhPWk5VUmxrZFIrdXNrWXlvUGNaaUg1TXY4L0N6a1Bq?=
 =?utf-8?B?RFdEWmtWL1RMYjBrS2xUNVVyN2d5NE4vN2E0akYvb0kzejNxaXB3VVN1ak5Y?=
 =?utf-8?B?RHJSMVk1UVR3cXhCM3Z5N0dSV1BFVStJSmE2a0VRUXEvT0c2U2p6cmNWYTdi?=
 =?utf-8?B?NnpxQ3VDTFF3TFcraTVOeTN1S2hsMUlrVGUwbkU4WTF6SFh1ZWJuc2ptNG1Q?=
 =?utf-8?B?Q21kWDRNWDFMSDdySVRORjlCWGFVcDMrYnN2YXpWUk9RMnozdHptc2FHVFkv?=
 =?utf-8?B?c2N5eVJnTksxWnJqOC93bi9xcjRRejhrbmdSMWFGT1lERnNuaE9CZW9sTFRH?=
 =?utf-8?B?WVZGUVBBeGZ3RUNkVVlmQXlFQmJmVzkwQUJUWHhqY1ZGOThzMjRYdzRVcENq?=
 =?utf-8?B?eG9QWEN3V3l6MWVMQmxjNHBvL3VWRGtYbUpPQmE0WDdneDdTSUdCaWhsak1i?=
 =?utf-8?B?cFZ5YytMb0dTNW94bDdnMFRjZFpIUEdtSk5NYU9jNWwzZERjNzJRUUNBUWE1?=
 =?utf-8?B?UnpIRXBIRUh2OGxGZVJxaDV6ZUh6bXpBZEdjUHk1QkFyQUlTbktaQ1N3ZzRt?=
 =?utf-8?B?MWpIZHQyYmVkbFVnenFJMnRyY0ZGUlU1eVY3RkQvVTU0ektxMjFBcGszNzFI?=
 =?utf-8?B?K2JHQ2tCUlJXWndLMEVDMzlES3k4My96NkNjcEFwcDRQMVFNQWFiYmNlT2ZN?=
 =?utf-8?B?ZjUrOTJ4Tjl1QUltQ0xoR2VHY2FodHN1TEkxbmZ3SVd3WnBQM0tXa25BV1Rs?=
 =?utf-8?B?SzI3OEJPbGhTS2poUnp5TjNQaXpPWDFRTmVCVG9jR0tqQVppOE1iNEpKMzdH?=
 =?utf-8?B?SXNYSHA3R0doeTZVWDRnQ2t6WGpKZTNYeHNoRllaQ1pjclpJVUNXQWIrb2FV?=
 =?utf-8?B?bTlubzZMYnVnTjRYU29CRWxNMWhKTnM3NDUzQWxGSW5KSll0Qld4cXZwV3Zn?=
 =?utf-8?B?aGdaUUwwQnNVcFA3OVJRNEg5bVplMW52RFdUVEtEQUdGbEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(7053199007)(13003099007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0pGS1F0US9GR0FQU2pmeWlYRUlCYitaS2ZJL0wzdWczbE9iOEQ0cTBIcENU?=
 =?utf-8?B?WkVMcnBMVXM3cjNMZHNmR2RSblUxU0dVczUrb3pQVzl6bi9nRmFRUEpWRmpQ?=
 =?utf-8?B?dnZudEJIb1JtbTAzbzJoVUt0M21DdENjVVp0a25vaUw3bTQvZElQNXJkM2VV?=
 =?utf-8?B?Ym9RdjNNN1BQaS9mTzY2ekFhdktaWktxOUFQeW5CMEtZZHY3WktxekNKbEE3?=
 =?utf-8?B?dWtQelBZYUZFeFpCVDlmeWd0MEFJdGRrb1BKZVBrNGZ1V1pYMnY5aVZadEtY?=
 =?utf-8?B?ejVWaEtuZHJzUlFGdkF5cVpMUlFMbWRUZVRENjRmS0ZkcCsvWUUxVWNWT251?=
 =?utf-8?B?RzFKdFkxWm1nMk1qNmFveHZKb1BNZXgxWEFEcFhJYk5WbS9MUkE1V2toWHZw?=
 =?utf-8?B?b1ZUQUQ3RGlsU2IzdmgrbFlZbTgzdEs3SVIzTkNQa1BJRXBYYVRnRUtyWGtm?=
 =?utf-8?B?VU5JcUVrc2xWcHJuZjU5QTR3R3JTS05sU1hsSUIxTEp2b09RN25rQ2sxRVRV?=
 =?utf-8?B?VTlmZnVKVmVvWFFWN3hGRTFNaWNyTnllUHVydEdwL2F6a0h4NzV6bzFEUnNx?=
 =?utf-8?B?M0tBQjZiL0psb0RHWFUzaStIU0RhTTlScDE1UGxUdWxMKzBhNUEzTVVpWVdx?=
 =?utf-8?B?LzZVQWl4NTNLcFJNM29xSk1BVDFLY2phbHJ4eGswYkRHMDlXY2kyS3d3MzR5?=
 =?utf-8?B?Ui8vUVBSVXc1SzZlSS81Mmw5YzRsUHZNV0w2cHh1NHl5a0NCS0I3TkU4MFBm?=
 =?utf-8?B?eDI2ZWlaVEUzZmwzdUw1OVlQaGkxelF0cjFNSTkrMmp6cFFxK1ovN3QvWHY3?=
 =?utf-8?B?ZkhPM1BDUDh3ZGduSzd0dGhvRDZLaUhVMnJINmdOeTF2MGlLc3FNZEZzeVVv?=
 =?utf-8?B?eGZ2VCtmNVd3VHNuUnZ3VjhOek51VmdQNlBhNFFvaFBwd2xnS3lJRmpxWC9K?=
 =?utf-8?B?anAvcW41WHIxTG51a1V4aUZwR3NiVUZ0M2RZS1NJckRwK3lYTUlZbDhtYW1O?=
 =?utf-8?B?dTZjNHg1S2hwWjZaYVNEWm5wMnN0dHNPMnA1c1BTbTJtNytPNG5NcmM3a1ow?=
 =?utf-8?B?VnNZS0duakd6Y0NvWXIweXhlSG1WNDNZd2trUFpScCtYZTVLWitlREVoR2tU?=
 =?utf-8?B?VG5kd3IwNnlGQmNNUnh1OUM2NXQrSzlZNzJST1VLL2R6cHh0YWZKcFdKcXYy?=
 =?utf-8?B?Q1M3eXZ1RVErTFNSYVVsU3pxQWh0cEd3Nmc2ZXc4UmU2ZCtZTVc1Z1cvc2dy?=
 =?utf-8?B?dzZ6MFU5bGhTV0h1WnhFMXEwcENyNm42bnc1Rmo4cUpOMm5hVkhSSC9aOGda?=
 =?utf-8?B?a1NKWncvbHBGTTd3NnJqWisyYnVoSW5hNDBqS1RqSXpxVmI4dkpoVjRRWk5I?=
 =?utf-8?B?SmRhYkxyZGV2R1pxOUQzZFJ3cVBnYzFYSWhtU3pIZFlrbVJOYW83YW91SHBN?=
 =?utf-8?B?Zk1lUUc0ZUtzblVOdEQySWxFZG9PcnNpWU5vZ3dhNW5NdXpmMlNydStVZHB3?=
 =?utf-8?B?TmNLYXU5ZTNNd0dMT0x5M2RnTDZWcU9zcUF5eDFtTEJNcGszQ2VmYXl2Yzlm?=
 =?utf-8?B?M0xzVXlOdFVDZDFhSGV5R3owMVhvbEh4M203VnY4cUcrMElhcnJZa2V0ZTQz?=
 =?utf-8?B?RSsxVzllQmh1ZnY2aWgyOTlwNjFGd1RySU9OV3VBeHl5eVhEaDF3NElSL2J2?=
 =?utf-8?B?MjI5UUpRRHdlcHhOQ3NSYURyYml2OGVwZ3BVeC9nbjVGb3UzSUIxMWJMRmFC?=
 =?utf-8?B?RWVsaHFtQ2RwSElnQVBYRHhNeVl2UDBsZVBWWi9QbzZhcjZKUlE2QjJSRldF?=
 =?utf-8?B?cnFXdHo3cFZrRzMyTW1qL3R5NFlNSGhXSnVvMWVFbnBZQitrQjZaSTFjaEhG?=
 =?utf-8?B?YlNxTlRHSU5oQU5Ta1R5anA4cFpkVnNpYXh2eVd2Ym4wZm1NankwYkEvdGhn?=
 =?utf-8?B?MkdjWnQyYjh3eEh5d2M0eTA3WkpaQUdyV0F6Y0VidDN4aWpCZlZKOC9jd0Vx?=
 =?utf-8?B?N1NRUkF0T0d5bUtpTjg2Q1AzbnBtYjREVXQ1d0FlYkI4bUhuNHFYV0pQdHAy?=
 =?utf-8?B?MTQwUGpmWlNEVUJxWjM0aHk1T05iK3NGbE1ZVktyUkRiMlRXYnJ1UXdZWjZ3?=
 =?utf-8?B?ZVpVVklGcm9vSEdzanpDNFc4MlUxVy9hcmJENWR3d3V6UTFIOXA5OGNwdW5C?=
 =?utf-8?B?MGkrcUVYMk12aUsrMXFOZXNmUDVJS2V1d0xJOW9oVEVYbEhQUThQM2lwVml2?=
 =?utf-8?B?SmoxT3RjbUlMcGRZNDVKYUJrSldRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1cd7681-17cc-4747-4a21-08dd5b169eb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 12:18:06.6385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tGjlQaHGgkIW+uxAoj6Iu374/R3PJLawWSAnwEqNTjXW/juIskdNz14J5mEzBu/xYDHIFW7qsG7phWQGbIZ8+v83xGsinyoWfyGqkM0jRqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5140
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQzMjMzLyAt
UmUtcmVwb3J0ZWQuDQoNClRoYW5rcywNClRlamFzcmVlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJhIDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmFuaSBOaWt1bGENClNlbnQ6IFR1ZXNkYXks
IE1hcmNoIDQsIDIwMjUgMTozOSBQTQ0KVG86IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDogUmU6
IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IGRpc3BsYXkgcmVzZXQgY2xl
YW51cHMgKHJldjMpDQoNCk9uIE1vbiwgMDMgTWFyIDIwMjUsIFBhdGNod29yayA8cGF0Y2h3b3Jr
QGVtZXJpbC5mcmVlZGVza3RvcC5vcmc+IHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0K
Pg0KPiBTZXJpZXM6IGRybS9pOTE1OiBkaXNwbGF5IHJlc2V0IGNsZWFudXBzIChyZXYzKQ0KPiBV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQzMjMzLw0K
PiBTdGF0ZSA6IGZhaWx1cmUNCj4NCj4gPT0gU3VtbWFyeSA9PQ0KPg0KPiBDSSBCdWcgTG9nIC0g
Y2hhbmdlcyBmcm9tIENJX0RSTV8xNjIxMSAtPiBQYXRjaHdvcmtfMTQzMjMzdjMgDQo+ID09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj4gU3Vt
bWFyeQ0KPiAtLS0tLS0tDQo+DQo+ICAgKipGQUlMVVJFKioNCj4NCj4gICBTZXJpb3VzIHVua25v
d24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMTQzMjMzdjMgYWJzb2x1dGVseSBuZWVk
IHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRo
ZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+
ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQzMjMzdjMsIHBsZWFzZSBub3RpZnkgeW91ciBi
dWcgdGVhbSAoSTkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRo
ZW0NCj4gICB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVk
dWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4NCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMyMzN2My9p
bmRleC5odG1sDQo+DQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQyIC0+IDQyKQ0KPiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRp
bmcgaG9zdHMNCj4NCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0t
DQo+DQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4g
aW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQzMjMzdjM6DQo+DQo+ICMjIyBJR1QgY2hhbmdlcyAj
IyMNCj4NCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+DQo+ICAgKiBpZ3RAaTkx
NV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoNCj4gICAgIC0gZmktY2ZsLTgxMDl1OiAgICAgICBbUEFT
U11bMV0gLT4gW0RNRVNHLVdBUk5dWzJdDQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYyMTEvZmktY2ZsLTgxMDl1L2lndEBpOTE1X3Bt
X3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMjMzdjMvZmktY2ZsLTgxMA0KPiA5
dS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+DQo+ICAgKiBpZ3RAa21zX3Bp
cGVfY3JjX2Jhc2ljQHJlYWQtY3JjLWZyYW1lLXNlcXVlbmNlOg0KPiAgICAgLSBmaS1rYmwtNzU2
N3U6ICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ctV0FSTl1bNF0gKzEgb3RoZXIgdGVzdCBkbWVz
Zy13YXJuDQo+ICAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fMTYyMTEvZmkta2JsLTc1Njd1L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1j
cmMtZnJhbWUtc2VxdWVuY2UuaHRtbA0KPiAgICBbNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMyMzN2My9maS1rYmwtNzU2DQo+IDd1
L2lndEBrbXNfcGlwZV9jcmNfYmFzaWNAcmVhZC1jcmMtZnJhbWUtc2VxdWVuY2UuaHRtbA0KDQpV
bnJlbGF0ZWQsIHBsZWFzZSByZS1yZXBvcnQuDQoNCkJSLA0KSmFuaS4NCg0KPg0KPiAgIA0KPiBL
bm93biBpc3N1ZXMNCj4gLS0tLS0tLS0tLS0tDQo+DQo+ICAgSGVyZSBhcmUgdGhlIGNoYW5nZXMg
Zm91bmQgaW4gUGF0Y2h3b3JrXzE0MzIzM3YzIHRoYXQgY29tZSBmcm9tIGtub3duIGlzc3VlczoN
Cj4NCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiAjIyMjIElzc3VlcyBoaXQgIyMjIw0KPg0K
PiAgICogaWd0QGk5MTVfbW9kdWxlX2xvYWRAbG9hZDoNCj4gICAgIC0gYmF0LW10bHAtOTogICAg
ICAgICBbUEFTU11bNV0gLT4gW0RNRVNHLVdBUk5dWzZdIChbaTkxNSMxMzQ5NF0pDQo+ICAgIFs1
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYyMTEv
YmF0LW10bHAtOS9pZ3RAaTkxNV9tb2R1bGVfbG9hZEBsb2FkLmh0bWwNCj4gICAgWzZdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMjMz
djMvYmF0LW10bHAtOQ0KPiAvaWd0QGk5MTVfbW9kdWxlX2xvYWRAbG9hZC5odG1sDQo+DQo+ICAg
KiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZDoNCj4gICAgIC0gYmF0LWRnMi0xMTogICAg
ICAgICBbUEFTU11bN10gLT4gW0ZBSUxdWzhdIChbaTkxNSMxMzYzM10pDQo+ICAgIFs3XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTYyMTEvYmF0LWRn
Mi0xMS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgIFs4XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMjMzdjMvYmF0
LWRnMi0xMS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+ICAgICAtIGJhdC1h
ZGxzLTY6ICAgICAgICAgW1BBU1NdWzldIC0+IFtGQUlMXVsxMF0gKFtpOTE1IzEzNjMzXSkNCj4g
ICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8x
NjIxMS9iYXQtYWRscy02L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWwNCj4gICAg
WzEwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQzMjMzdjMvYmF0LWFkbHMtNi9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sDQo+
ICAgICAtIGJhdC1ycGxzLTQ6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbRkFJTF1bMTJdIChbaTkx
NSMxMzYzM10pDQo+ICAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzE2MjExL2JhdC1ycGxzLTQvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxv
YWQuaHRtbA0KPiAgICBbMTJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQzMjMzdjMvYmF0LXJwbHMtNA0KPiAvaWd0QGk5MTVfcG1fcnBt
QG1vZHVsZS1yZWxvYWQuaHRtbA0KPg0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3Jr
YXJvdW5kczoNCj4gICAgIC0gYmF0LW10bHAtNjogICAgICAgICBbUEFTU11bMTNdIC0+IFtETUVT
Ry1GQUlMXVsxNF0gKFtpOTE1IzEyMDYxXSkgKzEgb3RoZXIgdGVzdCBkbWVzZy1mYWlsDQo+ICAg
IFsxM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2
MjExL2JhdC1tdGxwLTYvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+
ICAgIFsxNF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDMyMzN2My9iYXQtbXRscC02DQo+IC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdv
cmthcm91bmRzLmh0bWwNCj4NCj4gICAqIGlndEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tp
bmctY3JjLWZyYW1lLXNlcXVlbmNlOg0KPiAgICAgLSBiYXQtZGcyLTExOiAgICAgICAgIFtQQVNT
XVsxNV0gLT4gW1NLSVBdWzE2XSAoW2k5MTUjOTE5N10pICszIG90aGVyIHRlc3RzIHNraXANCj4g
ICAgWzE1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTYyMTEvYmF0LWRnMi0xMS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1m
cmFtZS1zZXF1ZW5jZS5odG1sDQo+ICAgIFsxNl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDMyMzN2My9iYXQtZGcyLTExDQo+IC9pZ3RA
a21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1mcmFtZS1zZXF1ZW5jZS5odG1sDQo+
DQo+ICAgDQo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPg0KPiAgICogaWd0QGk5MTVfc2Vs
ZnRlc3RAbGl2ZUByZXNldDoNCj4gICAgIC0gYmF0LXR3bC0yOiAgICAgICAgICBbQUJPUlRdWzE3
XSAoW2k5MTUjMTI5MTldIC8gW2k5MTUjMTM1MDNdKSAtPiBbUEFTU11bMThdICsxIG90aGVyIHRl
c3QgcGFzcw0KPiAgICBbMTddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNjIxMS9iYXQtdHdsLTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXNldC5o
dG1sDQo+ICAgIFsxOF06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xNDMyMzN2My9iYXQtdHdsLTIvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxp
dmVAcmVzZXQuaHRtbA0KPg0KPiAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5k
czoNCj4gICAgIC0gYmF0LWFybHMtNTogICAgICAgICBbRE1FU0ctRkFJTF1bMTldIChbaTkxNSMx
MjA2MV0pIC0+IFtQQVNTXVsyMF0gKzEgb3RoZXIgdGVzdCBwYXNzDQo+ICAgIFsxOV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MjExL2JhdC1hcmxz
LTUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAgIFsyMF06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MzIzM3Yz
L2JhdC1hcmxzLTUvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+ICAg
ICAtIGJhdC1hcmxzLTY6ICAgICAgICAgW0RNRVNHLUZBSUxdWzIxXSAoW2k5MTUjMTIwNjFdKSAt
PiBbUEFTU11bMjJdICsxIG90aGVyIHRlc3QgcGFzcw0KPiAgICBbMjFdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xNjIxMS9iYXQtYXJscy02L2lndEBp
OTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPiAgICBbMjJdOiANCj4gaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQzMjMzdjMvYmF0
LWFybHMtNg0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1sDQo+DQo+
ICAgDQo+ICAgW2k5MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTI5MTldOiBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTE5DQo+ICAg
W2k5MTUjMTM0OTRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2Vy
bmVsLy0vaXNzdWVzLzEzNDk0DQo+ICAgW2k5MTUjMTM1MDNdOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEzNTAzDQo+ICAgW2k5MTUjMTM2
MzNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNz
dWVzLzEzNjMzDQo+ICAgW2k5MTUjOTE5N106IA0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzkxOTcNCj4NCj4NCj4gQnVpbGQgY2hhbmdl
cw0KPiAtLS0tLS0tLS0tLS0tDQo+DQo+ICAgKiBMaW51eDogQ0lfRFJNXzE2MjExIC0+IFBhdGNo
d29ya18xNDMyMzN2Mw0KPg0KPiAgIENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiAgIENJX0RSTV8x
NjIxMTogZWY5ZTU4YTdmOWQ1MmY1NThhYWFkMGU0YjAyZGUxZDc3ZmY5Y2E4MiBAIGdpdDovL2Fu
b25naXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgIElHVF84MjU1OiA0ZWY3NDJm
YWU5N2QyZjRhZjY4MGY5ZTI5ZjdlYTQ1OTIwZjkzOWI3IEAgaHR0cHM6Ly9naXRsYWIuZnJlZWRl
c2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLmdpdA0KPiAgIFBhdGNod29ya18xNDMyMzN2Mzog
ZWY5ZTU4YTdmOWQ1MmY1NThhYWFkMGU0YjAyZGUxZDc3ZmY5Y2E4MiBAIA0KPiBnaXQ6Ly9hbm9u
Z2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4NCj4gPT0gTG9ncyA9PQ0KPg0KPiBG
b3IgbW9yZSBkZXRhaWxzIHNlZTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0MzIzM3YzL2luZGV4Lmh0bWwNCg0KLS0NCkphbmkgTmlrdWxh
LCBJbnRlbA0K
