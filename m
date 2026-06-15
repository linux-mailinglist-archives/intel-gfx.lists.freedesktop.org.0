Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qweOEY6JL2pSCAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:11:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C50F68365E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 07:11:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aKdcZFK3;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13FF310E18F;
	Mon, 15 Jun 2026 05:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075FB10E18F;
 Mon, 15 Jun 2026 05:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781500298; x=1813036298;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BO6j4UC0/RpLN3M4af4sxENugqnmTrFWpdBl1qXeet8=;
 b=aKdcZFK3NEhYOh9EHgJAliqRQf0YDH9ci3LYQed7fMIyNmizbar2/gmD
 ZLG/DVOUQxoij6MmRM5/xUIuyxiy4kk6Pu8OUiwNWQg9Vuwgp82ucEIrt
 hYepuCX+fAQwlwxmwQiCaN0lwooqJz7d0owRWRozfBQBD40lc0Aj/ExkZ
 UW/ZCLIRYQSn8NOY7FweuIUhdnB1wLWyHMpDxI39QLp20f8/CYfvqu28c
 jcui9H9AoZ1sU4u2VuUsUERDgEG6wLPf1LR/7hwe1wwu3XC30dxF1/uD9
 DVT2/ZIe24BBbF6NRqCPvQ44ePbHcXLpRFbcLZX1pPta2OzLgaHyVupVD g==;
X-CSE-ConnectionGUID: 2Nj39G/ARKu1db/r+r7iAA==
X-CSE-MsgGUID: eZuKdpWCQt2QswaGRRdbhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="99808738"
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="99808738"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:11:37 -0700
X-CSE-ConnectionGUID: QWHUzSEvRjqQNeumS8Y9Fg==
X-CSE-MsgGUID: 87eS45H7SvWbWH/ckmBryA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,205,1774335600"; d="scan'208";a="246267835"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2026 22:11:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:11:35 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 14 Jun 2026 22:11:35 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 14 Jun 2026 22:11:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OyVuDO4sTe1q/KZqsWg6Xocez6kGWhVUKa32BHnZgP9QO8LiJEbbLuqxgXS0gQVbKZbw2eGfVIgCkWRs/rN1lczVFnVFEBwWYlcAAMKVmeg3yR7VMfpI9rim64tszdV7ePR4HmY1wLcSDwzZsfho89NUlyrycJZEUuAdWjWTjCmzstfmLGZZll67Xzm6nTE5PfRGVt50HrF40oFuTPblYvIuvLqYFDa/BoY2kob+v9Z3NVh0OE+jR6WDmZ3xWERglLGYeE4mr/8smLC0xIIaBv1zgYP35345tjovHF7nVWBpGJmO8Ke4CTmT7aG9Apn1g8E0/wDSvRVre876FeU69w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BO6j4UC0/RpLN3M4af4sxENugqnmTrFWpdBl1qXeet8=;
 b=gPb/sbsR6eMCzlW4RDS5kjwnZP/78jc6Y/I7WrKq9b4p4PH3WHuoIQzj7v84vMt8g31hNm/zQclNZ5GctMgCLyi39D8wkYhfK0FQIv3KiRyWDzUhCWyn7YSyRGVlHzGZhRMuhjfSZp4thTFBIEqdHVGIrxbd+dIGDs937IaW/hbd4FB8d9DoeiMcQVchOPfnQar8V4EQXMllNjmCssSr/0Lh+ugEULIiJbey/oFlmhvpbjopx5koaktyBXmB0db7++QMKpnESvY+2TZnh5Sv39LuWERuZ268Z1B1b1xrkd9hHIsJj9MPfWLajY6ypu4Jhslaxhyry9cwqPzfi3GIKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by DM4PR11MB6264.namprd11.prod.outlook.com
 (2603:10b6:8:a5::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 05:11:33 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 05:11:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Grzelak, Michal"
 <michal.grzelak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for each
 port
Thread-Topic: [PATCH v7 4/8] drm/i915/bios: de/allocate VS/PE-O buffer for
 each port
Thread-Index: AQHc930C6ru6Fy/iq0C7vate9uaAJrY/EaxAgAAJzrA=
Date: Mon, 15 Jun 2026 05:11:33 +0000
Message-ID: <DS4PPFE901A304F84F770ADC3C9DB312343E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608192821.3414590-1-michal.grzelak@intel.com>
 <20260608192821.3414590-5-michal.grzelak@intel.com>
 <DS4PPFE901A304FB4F026BD63D97D447834E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304FB4F026BD63D97D447834E3E62@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|DM4PR11MB6264:EE_
x-ms-office365-filtering-correlation-id: 022bddc0-bb8e-4712-40b9-08deca9c912b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|38070700021|18002099003|22082099003|11063799006|3023799007|4143699003|56012099006;
x-microsoft-antispam-message-info: /o7cFUKvr8vKfiNtMTtXGbfsHO8++VgtuaTkkD9G23/aqfLv6gAQzZynwCCBBnP+wyO6FQVpRfZhYKEm+l4LuNzRpaKA2PG3dx6XE5OoU8mQzh83b2hL1rtRKBdUIrEsNBX3ocOikTTX8Stapen3IDj1N4mdMHHnfgLUI+B+4J0jxmKTaZl8gDZVhT5AVmEATzTnLPipTcjLqPae1kLy869EoYDrA08zu3UoM/qikAIDz96EbES6A/2N8oPbiZIFBDZ3TF+lfTwQdUGGDL0W4TnwkoPPCaDVUA8ypFFhVpZ/HOmNCX3ZUcflvkZ2N2q+ESjn9JIGdJDar2bzQa2ziukiI/jwEKNv6xzzZ6NwRaQyzUzv0eMJ99AcPLh7lh+3wwF2sJ25q+hLW2W8juQuhBqp1jFQhxRdUQg75LPGqBldJWdckwnGOMPL1v4mhVKX3cx7ZXyhZpDN9dhIlBV3bBCeG0c5VZlqog1pQ2uke5D4EFHGekdH3FX6ISHsDDVBwIEJD3c7b28gXvuKf/kcujj4yRK25Nxe05Lskv0+tFvUAMFrKk0aS2azAZ3U9hSdb1ko0NxOHMKoQRieAo16fZDa1faqQyBOY+EFjDkOb+YCEPwvj87vPIoxpt1mLFBAKynkY2OXir5cVnQuMDeYiuf7Sg6zUld/kX5OMI+xXBbY6FwrMBAF5/EhxmtA16Y9VLGvypQ1mO5vezFTq97cUalmfA+YeT7fHODi8BmXuEqhXIKTJtXhAR3gR4g+587D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(38070700021)(18002099003)(22082099003)(11063799006)(3023799007)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WlI5VkRFY3pxNDdsWDhSaW9vRmRSS2F4VlFGWDlxenFhRll3eTJzYXFOWE1z?=
 =?utf-8?B?V0tCT1g2Y1c0c0tvbVVNTXZrb2dMQUw1dFpYWFZDUnhXSDJxdFd6NXNxUUVh?=
 =?utf-8?B?WFc3eWJSaC80TjRRenNlMTV0QkhiYWs2UnEzT0lXNVZyNytySmZIOTNkNlZq?=
 =?utf-8?B?UnBtbXRiN2JpMG5aa0hqc0o0SVB6TStxWG96M1lFMEJKRUQvbHp1bm1NenJV?=
 =?utf-8?B?c3JHNWhxWkNqZ2hFTHZ2NEQ0cFVhZGlmTjBpRzhWeHFZdmFTKzFhUnlUWTVJ?=
 =?utf-8?B?K0tPWGV6ZVJCVi9OSExkOWtyMGNEc0pYYnpuVmRJejIzbVJ6QUxuckJiZlFT?=
 =?utf-8?B?emI0UnRzZC8vVW9GbTQ1eTJ2dEsweDVSQngvQkY4MFN1M2VtTlljRDJqREV5?=
 =?utf-8?B?ZlBIbDkyeS9HNzBFM0hNZi9pbXFMSnpxZElYVmRXdXUxeVdESlVkcjVyajEv?=
 =?utf-8?B?MnR2Wng1S01weldSS0xMeGQ4eURETW5BZm5vc3VLRGpieXVDVTJxdkppT1FL?=
 =?utf-8?B?bVFvZklyV0Q3czRib3dvaldONGNkRDhDSnNqaW1tUE1yRzd6UVJCVHFwMjJC?=
 =?utf-8?B?OUlDKy9PMGhoZEtoN1dNTXhFMTV1RFFUcFpmQkxvR3ltMDVPYkhDRDZVaytm?=
 =?utf-8?B?RjdLc3pIUWtYV09lS2ExeGFnQy92c0w4VThRWllsOWl3YkFyYmdJUUttT0Rm?=
 =?utf-8?B?a3BMbWJCVVB2S3VGMnNOdEJ2UUVsV3RDZWZiVFA2elV0dzBWQTlsS3dVa0Iy?=
 =?utf-8?B?OHAwcHFxVGpPT2dEcTZOVldzWCt5T1pINkcrSXpWTzVyUFJsMWkrbTVLSmtu?=
 =?utf-8?B?ZjJ1QStoY3ozTENrRUxwdkFncktyYlFYZlJaT0sxVXpQM0FLUUhFSGNJL0tt?=
 =?utf-8?B?a3kyN3VSU2E4S3cwKzdNbmJJSE15Ykhmb0pvQVBBM1pUN1lkZ1grRWwvRUd1?=
 =?utf-8?B?bjNZZTBLZFEzR0hOMlpOSVNpQ2xBUUFQL21QamtsQ0NOMzZ4MnJnQ1V1YzRy?=
 =?utf-8?B?WTB1eEdJeHJkcG84bkp2empBdTM1TUMxcUxGZ2F5YXZybnFqa1psbVhMWEIv?=
 =?utf-8?B?UzhPeUJUZGNFdWtwZDZwZzdRYTlsWDZINTJyRkZBNko2YWFqajFDNHpVekdu?=
 =?utf-8?B?blRScUw1YlhPaStkSTh4aWRDWEVHeVNBS0pLOWljWXB4QVhRWkFtTkNKNVBW?=
 =?utf-8?B?ZEw5Wm5XREdQVk8zZWpadkUvUnlidWliUHJxWUVLTHBFTmk1elRHS0srYUtF?=
 =?utf-8?B?bDFIelFiV1dtSlVwTnIvSnRXV2hoRXBBUmJlR2lPR3FSWFVsQmdRbGdhcDVr?=
 =?utf-8?B?SnhnSHJNTEx6RS8vSkRxek9ReHhVd0pBblNaV05qRjlUWkNmelAzUU5WYm5P?=
 =?utf-8?B?eWJZd2ZMQnV4aDhrU3c2NU9HT1BaSzFhZFJyTVpUUjFha01SVk5IYnovU1l5?=
 =?utf-8?B?SmdEZ0E5R1lTNys1MUk5K0lhcmtrbnl4dmt5eUZBTFhUdzNFRldkK3RwbnNp?=
 =?utf-8?B?dmZ5Qy9jRDIwaUhoVXI2UTBXMzJZeXUzenR4ckdVcVlCYmdTRDNQb3VjcFpu?=
 =?utf-8?B?NGluZFlVdURHK2xGamM2QjRpanlpaCt5QUdIeUpXcmd6YjdMMmFsZG1KRW03?=
 =?utf-8?B?T3RoTUg0QVYyWldRRFg4L0tOSERJeVJYMjBVWldRbnZCZTkwOG1pOUVYdXph?=
 =?utf-8?B?Y1pRbzVIek1scmRUN011dTV4bDVyT2dzZ2tmVmtMUkdBQTAzV28wbnA5QmVv?=
 =?utf-8?B?WnlRUy9WV0RvYjR0UUdJWjgvbWo4ZjNqSGlGdzFNeGhmajMvamcwcGRlZlRN?=
 =?utf-8?B?bm1TS0JxQVRXQVZMQnBuMkJkanJtWnRWUEtwZ3o5WFBwczdERWVTQXpLZWJH?=
 =?utf-8?B?YXkrNUR4bStwMlJna3ZRZHlLME1oVHJtR1gvRjE0alM3bHJ3bWg2UUZFR2hX?=
 =?utf-8?B?UWt1ME5lMHBxU1p2YldVRW12MU1lS0I2U240Mlp5andKdzg3YThRNmRCbk9p?=
 =?utf-8?B?bjRzL2Q3UWg1Wm5ETjN5TFFVcTBKUXk0ZGc2T3duZTFFbmg4V0R2WVdRc3NT?=
 =?utf-8?B?NklFblR6ejc4L0Rhc0Y0T01NTzI3dlljb0tpdVNROU5ZanZLKzR3bWVhUG04?=
 =?utf-8?B?cWhKdzd6Q2tUMWVzdC91SkdLVWRHTW1GZVFvdkhEbjQ1RzRVTkNTQUVYMUxq?=
 =?utf-8?B?S29aa2E2N1hiQldoRGZRSmZDMTNabkZ4TkwwSXlKeXFHUVlRS3NsZkpBQ2Mv?=
 =?utf-8?B?eHA2UlhkdEx2cFJ1Z0tWUEFxMTUvV09HSEk0dk5sMndQU3ZzeVh3cXFMR01M?=
 =?utf-8?B?Y3NLSUl1RjF6Y1oxNVc1eEFaR1kwVlQ2cU5SM2p5TUFzUVBNNVhQQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OcwvFK2mUHn12+5+R41PDMaJZive5ntNJTLH/cVu0FM/zdhA1R5jaolpTRQ9PjaCVylmHgkRwfSVbNFT8f9g8ArmsTfvToKciqQHXog85C8AKg7Ry3qXa/YKWbzfLuI5ZvPmJRUqMTUBWcX4pyIGk9qnb8jbNfpTSKHaaKP0zg4dre3k5VmxVBH9bYWtBcr6SLbjzQcFXbjXrpNpgQd/p0FaQrN6dqf3zvKteroPY14VEYFIMcQ3DKaL/4dLSBvt23jh0wL1p0a0iQybuFGsBg1IzRp6KWGh5at6tMya3yO6jbSW/+GjRrUEfjgSzK9nGFoPOmkAoet5anNMX8TFLA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 022bddc0-bb8e-4712-40b9-08deca9c912b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2026 05:11:33.2243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H5a79DXGTk76IDurm823aAwveOyUOZzYCr9FHDUPtPrRVZiEdoN106P8HB+JnN4yx0Gz1D/wVUVJHjv5E5v5mg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6264
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,DS4PPFE901A304F.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9C50F68365E

DQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjcgNC84XSBkcm0vaTkxNS9iaW9zOiBkZS9hbGxvY2F0
ZSBWUy9QRS1PIGJ1ZmZlciBmb3INCj4gZWFjaCBwb3J0DQo+IA0KPiA+IDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT47IEdyemVsYWssIE1pY2hhbCA8bWljaGFsLmdyemVsYWtAaW50ZWwuY29tPg0K
PiA+IFN1YmplY3Q6IFtQQVRDSCB2NyA0LzhdIGRybS9pOTE1L2Jpb3M6IGRlL2FsbG9jYXRlIFZT
L1BFLU8gYnVmZmVyIGZvcg0KPiA+IGVhY2ggcG9ydA0KPiA+DQo+ID4gRXZlcnkgZGV2ZGF0YSBu
ZWVkcyBhIHNlcGFyYXRlIGludGVsX2RkaV9idWZfdHJhbnMgc2luY2UgZWFjaCBwb3J0IGNhbg0K
PiA+IHJlcXVlc3QgYW4gb3ZlcnJpZGUuIEFkZCBidWZmZXIncyBwb2ludGVyIGludG8gaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGEuDQo+ID4NCj4gPiBBbGxvY2F0ZSBzdHJ1Y3QgaW50ZWxfZGRpX2J1
Zl90cmFucyBmb3IgdGhlIHBvcnQgaWYgVlMvUEUtTyB3YXMNCj4gPiByZXF1ZXN0ZWQgYW5kIGlz
IHN1cHBvcnRlZC4gQXQgdGhlIHNhbWUgdGltZSwgYWxsb2NhdGUgc3RydWN0DQo+ID4gaW50ZWxf
ZGRpX2J1Zl90cmFuc19lbnRyeSBhbmQgc3RvcmUgaXQgaW5zaWRlIHN0cnVjdCBpbnRlbF9kZGlf
YnVmX3RyYW5zLg0KPiA+DQo+ID4gRGVhbGxvY2F0ZSB0aGUgYnVmZmVyIGFzIHdlbGwgYXMgZW50
cmllcyBpZiB0aGUgcmVxdWVzdCBpcyBzdXBwb3J0ZWQuDQo+ID4NCj4gPiB2NC0+djUNCj4gPiAt
IHNldCBkZXZkYXRhLT52c3Blby0+bnVtX2VudHJpZXMgaW4gaW50ZWxfYmlvcy5jDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMgfCAzMg0KPiA+ICsrKysrKysrKysrKysrKysrKysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2Vk
LCAzMiBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gaW5kZXggNzA0NjczNDRmMDhlLi4zZDg4NjQzNzRjYWMg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0K
PiA+IEBAIC0zNCw2ICszNCw3IEBADQo+ID4gICNpbmNsdWRlIDxkcm0vZHJtX2ZpeGVkLmg+DQo+
ID4gICNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+DQo+ID4NCj4gPiArI2luY2x1ZGUgImludGVs
X2RkaV9idWZfdHJhbnMuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCINCj4gPiAg
I2luY2x1ZGUgImludGVsX2Rpc3BsYXlfY29yZS5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlz
cGxheV9ycG0uaCINCj4gPiBAQCAtNzIsNiArNzMsNyBAQA0KPiA+ICBzdHJ1Y3QgaW50ZWxfYmlv
c19lbmNvZGVyX2RhdGEgew0KPiA+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXk7DQo+
ID4NCj4gPiArCXN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICp2c3BlbzsNCj4gPiAgCXN0cnVj
dCBjaGlsZF9kZXZpY2VfY29uZmlnIGNoaWxkOw0KPiA+ICAJc3RydWN0IGRzY19jb21wcmVzc2lv
bl9wYXJhbWV0ZXJzX2VudHJ5ICpkc2M7DQo+ID4gIAlzdHJ1Y3QgbGlzdF9oZWFkIG5vZGU7DQo+
ID4gQEAgLTI2MjgsNiArMjYzMCwzMCBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9kZXZpY2VfdHlw
ZShzdHJ1Y3QNCj4gPiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSwNCj4gPiAgCWRl
dmRhdGEtPmNoaWxkLmRldmljZV90eXBlIHw9IERFVklDRV9UWVBFX05PVF9IRE1JX09VVFBVVDsg
fQ0KPiA+DQo+ID4gK3N0YXRpYyB2b2lkIGFsbG9jYXRlX3Zzd2luZ19wcmVlbXBoX292ZXJyaWRl
KHN0cnVjdA0KPiA+ICtpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSkgew0KPiA+ICsJ
aW50IG51bV9yb3dzID0gZGV2ZGF0YS0+ZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9yb3dzOw0KPiA+
ICsJdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqZW50cmllczsNCj4gPiArCXN0cnVj
dCBpbnRlbF9kZGlfYnVmX3RyYW5zICp2c3BlbzsNCj4gPiArDQo+ID4gKwlpZiAoIWludGVsX2Jp
b3NfZW5jb2Rlcl9yZXF1ZXN0c192c3BlbyhkZXZkYXRhKSkNCj4gPiArCQlyZXR1cm47DQo+ID4g
Kw0KPiA+ICsJdnNwZW8gPSBremFsbG9jX29iaigqdnNwZW8pOw0KPiA+ICsJaWYgKCF2c3BlbykN
Cj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJZW50cmllcyA9IGt6YWxsb2Nfb2JqcygqZW50
cmllcywgbnVtX3Jvd3MpOw0KPiA+ICsJaWYgKCFlbnRyaWVzKSB7DQo+ID4gKwkJa2ZyZWUodnNw
ZW8pOw0KPiA+ICsJCXJldHVybjsNCj4gPiArCX0NCj4gDQo+IFNvIHRoZXJlIGlzIGEgc21hbGwg
Y2hhbmNlIHlvdSBtYXkgZW5kIHVwIHdpdGggTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGluDQo+
IHRoaXMgY29kZS4NCj4gDQo+IFNvIGluIHRoZSBjYXNlIHZzcGVvIG9yIGVudHJpZXMgYWxsb2Nh
dGlvbiBmYWlscyB3ZSBmcmVlIHRoZSBzcGFjZSBhbmQgcXVpZXRseQ0KPiByZXR1cm4uIEJ1dCB3
ZSB1c2UNCj4gaW50ZWxfYmlvc19lbmNvZGVyX3JlcXVlc3RzX3ZzcGVvKCkgdG8gZGVjaWRlIGlm
IHdlIHdhbnQgdG8gdXNlIGN1c3RvbQ0KPiBWUy9QRSBUYWJsZXMsIGEgZnVuY3Rpb24gd2hvIGlz
IG5vdCBhd2FyZSBpZiBhbGwgdGhlIGFsbG9jYXRpb25zIGhhcHBlbmVkIGluIGENCj4gZXJyb3Ig
ZnJlZSB3YXkuDQo+IFNvIGxldHMgc2F5cyBpdCBkaWQgbm90IGFuZCBub3cgaWYgYW55b25lIHRy
aWVzIHRvIGRlZmVyZW5jZSBkZXZlZGF0YS0+dnNwZW8NCj4gdGhleeKAmWxsIHNlZSBhIGJ1Zy4N
Cj4gTWF5YmUgd2UgY2FuIGhhdmUgYSBmbGFnIGNhbl91c2UgaW4gdnNwZW8gc3RydWN0IGFuZCBm
aWxsIHRoYXQgYXMgdHJ1ZSBpZiBhbGwNCj4gYWxsb2NhdGlvbnMgd29yayBvdXQgJiBrZWVwIGl0
IGZhbHNlIGJ5IGRlZmF1bHQuIFNvIGFsb25nIHdpdGgNCj4gaW50ZWxfYmlvc19lbmNvZGVyX3Jl
cXVlc3RzX3ZzcGVvKCkgd2UgYWxzbyBuZWVkIHRvIGNoZWNrIHRoaXMgZmxhZyBiZWZvcmUNCj4g
d2UgZGVjaWRlIGlmIFdlIHdhbnQgdG8gZ28gdGhlIFZTUEVPIHJvdXRlIG9yIG5vdC4NCj4gDQoN
ClNpbmNlIHlvdSBjcmVhdGUgYSBmdW5jdGlvbiB2YWxpZGF0ZV92c3BlbyBsYXRlciB3aGljaCBk
b2VzIHRoaXMgZXhhY3QgdGhpbmcgSSB0aGluayBJIGFtIGdvb2Qgd2l0aCB0aGlzIHBhdGNoLg0K
DQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4gDQo+ID4gKw0KPiA+ICsJZGV2
ZGF0YS0+dnNwZW8gPSB2c3BlbzsNCj4gPiArCWRldmRhdGEtPnZzcGVvLT5lbnRyaWVzID0gZW50
cmllczsNCj4gPiArCWRldmRhdGEtPnZzcGVvLT5udW1fZW50cmllcyA9IG51bV9yb3dzOyB9DQo+
ID4gKw0KPiA+ICBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9oZG1pX2xldmVsX3NoaWZ0KHN0cnVjdCBp
bnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiA+ICpkZXZkYXRhLA0KPiA+ICAJCQkJICAgICAgZW51
bSBwb3J0IHBvcnQpDQo+ID4gIHsNCj4gPiBAQCAtMjg0Niw2ICsyODcyLDcgQEAgc3RhdGljIHZv
aWQgcGFyc2VfZGRpX3BvcnQoc3RydWN0DQo+ID4gaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRl
dmRhdGEpDQo+ID4gIAlzYW5pdGl6ZV9kZWRpY2F0ZWRfZXh0ZXJuYWwoZGV2ZGF0YSwgcG9ydCk7
DQo+ID4gIAlzYW5pdGl6ZV9kZXZpY2VfdHlwZShkZXZkYXRhLCBwb3J0KTsNCj4gPiAgCXNhbml0
aXplX2hkbWlfbGV2ZWxfc2hpZnQoZGV2ZGF0YSwgcG9ydCk7DQo+ID4gKwlhbGxvY2F0ZV92c3dp
bmdfcHJlZW1waF9vdmVycmlkZShkZXZkYXRhKTsNCj4gPiAgfQ0KPiA+DQo+ID4gIHN0YXRpYyBi
b29sIGhhc19kZGlfcG9ydF9pbmZvKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSBAQA0K
PiA+IC0zMzgzLDYNCj4gPiArMzQxMCwxMSBAQCB2b2lkIGludGVsX2Jpb3NfZHJpdmVyX3JlbW92
ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ICsqZGlzcGxheSkNCj4gPiAgCWxpc3RfZm9yX2Vh
Y2hfZW50cnlfc2FmZShkZXZkYXRhLCBuZCwgJmRpc3BsYXktPnZidC5kaXNwbGF5X2RldmljZXMs
DQo+ID4gIAkJCQkgbm9kZSkgew0KPiA+ICAJCWxpc3RfZGVsKCZkZXZkYXRhLT5ub2RlKTsNCj4g
PiArDQo+ID4gKwkJaWYgKGRldmRhdGEtPnZzcGVvKQ0KPiA+ICsJCQlrZnJlZShkZXZkYXRhLT52
c3Blby0+ZW50cmllcyk7DQo+ID4gKw0KPiA+ICsJCWtmcmVlKGRldmRhdGEtPnZzcGVvKTsNCj4g
PiAgCQlrZnJlZShkZXZkYXRhLT5kc2MpOw0KPiA+ICAJCWtmcmVlKGRldmRhdGEpOw0KPiA+ICAJ
fQ0KPiA+IC0tDQo+ID4gMi40NS4yDQoNCg==
