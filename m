Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F01E0A94CCE
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 09:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8A510E075;
	Mon, 21 Apr 2025 07:15:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="brzkH62/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0CB910E075;
 Mon, 21 Apr 2025 07:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745219712; x=1776755712;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=HEwUL1XvydJ/OBnSWhgyblm1heMLkEHCOsCt08yXXcg=;
 b=brzkH62/44foqVc3+juYZ9sjI7Lh8NmNIl1rhRQs8Ii17+bPvis7IXkd
 iNFZA40VThIThbGiu4AQIcgq/Y951iuNsFuSqwsWfs56E/pCnunsN7X3v
 XPFx01rAwPzZYqDveUrFSME24MGy8ggWA2Mt4ctzT68bbdvkpggtx6SIg
 OhLF6yppzl9PRPktPGngEhvzU5BDCpF4qD/DABxS+Qk7QuA4zjUw+kuPM
 AnYaN3rA4na6B01NANfRFgMmRMZaf07y7HfAiIZJUgIEZ41dgxgnIWUq0
 rgRHvubc10x06X6drw30HEVnpCR9TjKxz8L7SHGmbVDVhU+G9OaT3kW2z w==;
X-CSE-ConnectionGUID: pDZ8PIOVRz6aL8IED57d5w==
X-CSE-MsgGUID: fIZqSb/dTF6YizO1tSbK6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="56929426"
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208,217";a="56929426"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 00:15:07 -0700
X-CSE-ConnectionGUID: +jCU1QR3RTCJcifvE/JeNA==
X-CSE-MsgGUID: EYoHLZJzRfSFMbZRRG6FIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; 
 d="scan'208,217";a="154818439"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 00:15:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 00:15:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 00:15:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 00:15:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t1e70+uHO3IFCN0ktJMB7BgY/ROLLzGWsdNobHBzLm4fHun9AZ1hFJdf0HKmGXlUjuQCqJBha7NvLztqmVt0APf6Rn3RUks1u6LM+NhwoD2XDANVdJ5Us7UBjlZWTjZiMOR/4UuHd9jyBSI1aTY8Z80hImHWa695qVaDgi9JX35WdyWTaqQz8OFpXXageat/ZSh9wWhznJRxyRWUmsRRoS2XLkVmlG8+tr0oDfkcRO3Rl6JJTzskXgAl9OHtWzmySXcc19ZPwKaehQDOY3F/GBYKlLcgtLbgLUAicQGhgh5jvFM0N6T8Qh/Yc6Zivxx0SsH/2ZH2PRuytf8QNV13MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HEwUL1XvydJ/OBnSWhgyblm1heMLkEHCOsCt08yXXcg=;
 b=rKulgUPUsIB4gsRf0TFACUydaEnXhRHyyjNX5LvGYGfgwcAxUz3l1O1Tnu2WmxVrrp3nQqaF2kd6kq9cQhO83aiWZr1Xk89/wab0OvHfkhRfu0LEtUjc+etOSNcaaYn7gOUq4vcCyhTgJMgNWTfWcELCJh87FoTZd9n3g00QMJ/Cew7UWxRgBpno3SBStXKDZUJTTOhr8ujglwMxJqAWDUKFcQimK6cOR4G82iMPVMOkWJbI7xgpA7kVmH7lE1T/OZO9YZPs2yFTrmgezCxkjTxlLd/idDUe9N4zJ5lWCBq4k7v5544zfZMCET++iXa94Q6NkIhMG1tW7Vc1KuubxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by SJ0PR11MB8296.namprd11.prod.outlook.com (2603:10b6:a03:47a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Mon, 21 Apr
 2025 07:15:03 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%3]) with mapi id 15.20.8655.033; Mon, 21 Apr 2025
 07:15:03 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2d0?=
 =?utf-8?Q?:_Add_delay_to_let_engine_resumes_properly?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3Q6IEFk?=
 =?utf-8?Q?d_delay_to_let_engine_resumes_properly?=
Thread-Index: AQHbrydh4UryDFn210qktze749P1CLOtul3K
Date: Mon, 21 Apr 2025 07:15:03 +0000
Message-ID: <SJ0PR11MB5867A2D642318DD63185C9B9D0B82@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
 <174484613847.11746.11801315719420825260@b68e5b3b99e1>
In-Reply-To: <174484613847.11746.11801315719420825260@b68e5b3b99e1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|SJ0PR11MB8296:EE_
x-ms-office365-filtering-correlation-id: fd74e471-b13e-4287-4846-08dd80a43c9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|13003099007|8096899003|7053199007;
x-microsoft-antispam-message-info: =?utf-8?B?K09PcEZlTlhwNkNYN1U2L01QOHJoWi9Kd2ZVdElyV1NjS2ZTRnFtRkhtZUlu?=
 =?utf-8?B?TmpqaERUYlZDQXArb2xFY2d0MUcybU1mcllSM1J3NW8wWXdSajJTU042Snlo?=
 =?utf-8?B?aStMM1Y3ODU5UzJmdVo4SXBsVG1NZTI3VzkxRGhpbkRRM2NPV0dMWG4rNmd3?=
 =?utf-8?B?N3BPSmlIeUU0MkdjRmpxMENESlQ0aSsvUmppcEx0OG0yMW01ejMzZGZtdS90?=
 =?utf-8?B?RTZsekFWZFhXUG5JZjRIY001TlM2VHV0ejJ0UzRkY2xDQ2ZYdzIzR0RHQ09q?=
 =?utf-8?B?Wkl4Vk13MVRFUG14aCtGSVdwZTlqdUVzaU1lVWtuTTQ1dmxsSEZqeWRINitL?=
 =?utf-8?B?ZE9VYXViOCtqLzBHMk9oL3JocElNaUd2eCs0RlRMVXRLd3NobFl0b1RrbUc0?=
 =?utf-8?B?QmRqNXFBY2p3NnZ1SXN1V1BsNDNieC8rekMvZWhjdUdVRWwyV2Q0K2RYcVdR?=
 =?utf-8?B?MHNrV1pLSlhIRmVWbWd3Y3hNRmk4emtmVGN3MDhnQndvTE1QZzhVWktyWkkr?=
 =?utf-8?B?NkovSEtkMmJDRHB4UTlEODBzVS9ZZ0crYmNSTHhWVzVNNXdOcXpnN2NKaEIy?=
 =?utf-8?B?eUJNdjZ6bEd3ZTkxUjZyUFJieWlyQjhVZXc3V3hydTAwNkRmMmJ1VTJoc01R?=
 =?utf-8?B?ZmlSQjI5V3RrM3NubkY2aGdIUnV3a2dKTkk5ODh5UDJWUE1iRVJhL2dubnVR?=
 =?utf-8?B?aDk0VkMvbGRWeTJTWVMyU05wTjFucTJDUFJ1YTRXSVlBQnZnczJqS21pdWg3?=
 =?utf-8?B?MGZ6NFNhKzAxZlVncks3UE44dWE4a3VkNTh1aG56OTl0cTUzOWVaS3hMdktl?=
 =?utf-8?B?TUZ6MUNxQlF0QW14YjNIV01lRXh0Q3hncXBmSSttRnVCL0VFMlFRTlBRY0ND?=
 =?utf-8?B?VFRUbVA2NWdEZkc2Y2JnRDVCNXlZclNqaVFIL2FpWWt5Z3FqQUtiSEx4SXFs?=
 =?utf-8?B?M3R0U3Z2Z0JMQmNEVENNNklmTU00SFpFV3l1c3MrNU9IQ1h4S0pjam0yNUhr?=
 =?utf-8?B?VlBGOUk1bDJmSUZxU3VsK1FQc0dtN1BkSDh4cWRlbGlsNlpGMDd5dW5USmJl?=
 =?utf-8?B?ZTAzQVdlOUJjUVlOWmJCZ21YNGxtZmp6dUZSdTNnQ3R3L3ZZNnNMdU1ySU1k?=
 =?utf-8?B?OFEyZGc4K2p1WElKWGVpY2QrM3NNSkJiaUhNamgyN1RmRVpoZnMrWGhFNHBQ?=
 =?utf-8?B?Q290WEFBTVU0ZmZXRUZNak1HWVFmQVZnNFpEZ2xJQ1RoT0daOE9ndWRJaTJq?=
 =?utf-8?B?amxHZUJpSVc3Mm84Tldja2gySmhGeFJ4QW5hdDFqZFhyalRYZ28rNldPaVpr?=
 =?utf-8?B?MHBhNTFRZ296R0lIT3VUeU1JZWV1aG1ZZVNvMGNhR1lOZ1FwYUl5YWQxb2Zu?=
 =?utf-8?B?OWlGSlY0cXY5eFFJUEFoOFZKajlyWTlvdkh2ZnpRYlNPV21XNGttKytwa3pw?=
 =?utf-8?B?cDBmWElNNkJ1TDJxNzlzS0Rva3owOFZSS25GNTN1K1NrNDVRL1gyc3pBMkw0?=
 =?utf-8?B?RmRzZG5INHF5REVIK1hhMkV6djllMHA3SnM4VVpJZDZvR3BqcTFRWTNpREtC?=
 =?utf-8?B?OTZMZEk0dlAxUjJwcXdwUlRwdm1LbUJpNktxZ0QxUHQrZWJKSXJYNHljZ1Bk?=
 =?utf-8?B?VGU2djZMZXJuNmd5VkUyYklEVmxtSFVGRjJsWC9yQXdFWTZpeFUvVjZycGVS?=
 =?utf-8?B?eUljT1hRUElMUHNxRUltNFQzNWdPWFJtOVZnTklXV1RxbDl0MGxDVnhLODZl?=
 =?utf-8?B?MzluT3J1TmJhNzdtbEx6U256ZXBOMkFrRzNjT0V3WUhNVDVWM1ZBT29rVHB0?=
 =?utf-8?B?TWRQeDBZT1BSeGN0UUtReGh2QkZlTXZSVVZuZURrdWsyYnh6clY3d3ZOejJu?=
 =?utf-8?B?REFJZGh6WWN5QkdwcllTb3EyU0J3eGJBU25tODVzNFFHeFFUOG0zVUhFc2Nh?=
 =?utf-8?Q?zhHqHy+pA8BqiMMt0sX5uQmNK3o+BoTh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(13003099007)(8096899003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkVLQk10N2pSaU8zMGVMZm1aMWhnbDAxOUt5STRNd24yOEo2VWRxTy85L1ND?=
 =?utf-8?B?UmdVQ1NYano0S0pUWFJYa1BOdGc4d2Z6MWtuWmkyaFRNM0gvZTJ0TXo4aDRo?=
 =?utf-8?B?Q29kUmdDRGVUdTNoZXJabitpYTF4dllEUHV1WGhrbURzYSsyWWZhejA0Ri9B?=
 =?utf-8?B?R0Y1ZUlEY2UrRVdIdElFeGVhNnpDWUxITWdvZFNXRkNYbk14ZUNvd2VMWUc4?=
 =?utf-8?B?VForVHllclZIRkNLcERabElXTXEzVVBleGt2anRKOFd5S3ZjNEljakx1bDg2?=
 =?utf-8?B?aFBoREFNY0owZExSejk4Y2YrKzA1cW5sRWZwcmRWdC9rcDE4UEJSM2lZLzMv?=
 =?utf-8?B?a0lIU2NFUytkanhCTFJtTWxLUW9XcHhRbVRjZlYrOXhCRXRDZ2xwT0lRVXlE?=
 =?utf-8?B?ZlNHRVE3TU9BL1Rlci82eU5BWkFkNW5pQ2RXeW54aVQxWjh3VFhaelVTblNi?=
 =?utf-8?B?aUpKTUNIQW9Za1JmdWVuNmFaSkxGbTYxUkhjd3RidjN2K3dXeG4xdmRHUHps?=
 =?utf-8?B?OXZ4bkErSjM2NmVUek92VVNlZ3dzcGtnb1NqTDBYQ0h0RUF5QVBhdTdkR1hi?=
 =?utf-8?B?TXcrSnIwcHRpcTBJVVRNZXo1MEM2OWdFVWhqcENyVTZrK2xMelhCV2xBaVRn?=
 =?utf-8?B?a200Y3VoczBnd0krazBRdnBSNERwTUNoTFl2NGJHWEZhajVxUyt5M3JGVzYr?=
 =?utf-8?B?MXN0UjVlMFQzRFNrZGZEVmUyK29ZTjhVR3pTSlVyUkcxWEFKL1kwbnd4RjBZ?=
 =?utf-8?B?TWJTcjNpeDE0dWk4UjMyeHVrancrYVJXTDBOY2hXVi9FVFMwU0w5YmVHbzNy?=
 =?utf-8?B?U1ZQTkZETW9Md0RrQVNFUW9uZ3p3ZURwUGJhZXpjM0VZeDFRYndoM1ZIVEI5?=
 =?utf-8?B?S2VPWDRaT0JjT1pyR1NiMUs5cXY4cGNIWG9vTVpZRyt1ZmtmYnExVkdURzR0?=
 =?utf-8?B?aHV5eENDV2lXMGIwRzBUL3A4N1lkajlaeWRsVWZLendoRU5sQUZucUV3S3dm?=
 =?utf-8?B?dXJjWkVPb0Z1eFVqYWtOTG94WDh5SklzNlRidEZZa0lkT1VRSTF2MlduMCth?=
 =?utf-8?B?MUVBVFpqWGxoVXZUYmdKcU0yQWViL1RPbEh6ZGV2djdzeEJSaUxmL1FzTXBv?=
 =?utf-8?B?QzUzU2RLRE9QNzY4VHlHcUVnNm83MUJ5czhGcGRnblFDTURDQXU4Y1hhREhN?=
 =?utf-8?B?c0tHaHk1b0w4a1RlV1R4Z2FxMEZaMUZKWjRoVmd2VGRuYS9GMWlGc1E0T3RX?=
 =?utf-8?B?T3V4Z0MrQnFneWhRTDhuekpxZWJQR2pxSEN3OFlZUzZrUktQWWorV1VWOWlR?=
 =?utf-8?B?Unc4NDZZN2Ywd3NPQzdaM0hFbW9VOWZMS0NSY2VWblQ5WndBM2JtS0dEb0pq?=
 =?utf-8?B?WThpUW1LZjlnMzdPZi9uODNoZ2ROK2tMYkoycUZZSzJiZTdtWDhtZUE3d0gz?=
 =?utf-8?B?SmxVSzJLYVBVZ3dJczVFSnY5aXYyTzlBU2RwWGg0TTdncTU3ekxjdE1SK0Jk?=
 =?utf-8?B?N3BiMFA1aGhqTG9nTDNqSGtjZlNpQUZZTWZjK2xnSjhYaFlIM2xhVm1JUmM2?=
 =?utf-8?B?WGVLZDBGWlMrdjJkTUE5S0w0V0JBY2xoTCthMzNhSWkvQy9pN2JwV050UlI0?=
 =?utf-8?B?Y0xhbmxVcVVkOXFOZUxKUFVQclEvTy9pWGRoZERWZVNuNmltVGlPTUFmVENl?=
 =?utf-8?B?Z2FxWWlIaThtYU1Oa2lLTGc0cWJLK3JtN3Y5WHRlZUxMaWlkalNUbzgrNTly?=
 =?utf-8?B?NE5zY1dLSUd1eTY1Ny94amZndUpNZXVjSGRHVW1ZOTc5K2dhY3JqNm1YcjhY?=
 =?utf-8?B?S1l3eWFBWWd6V1FKNVBBdm9teXArajhaektCa1JkOSsvdDVwemRnZE5meW9J?=
 =?utf-8?B?R0RxOGx0emxkWTcrVnhpNCtKdGFjZnE0TDdYZnFkMEVaQmtYWW01TGtwTlpn?=
 =?utf-8?B?cXBOOVBaVE91eHpnYmh5eG9zQUxmWjkvUzdMK1M5Z285MkpadEtPNW9EN2F6?=
 =?utf-8?B?d2VBNXd0UlJmRVZNanJKVG5oUkpRN1NOYmVuNmFQOHh4NDRCRXZ4WkJUTVVi?=
 =?utf-8?B?ME94RUFnc2FDSVZGK2w5QTQwTXcySE9URFQxVVdwZDJLTjM0cHB3NTE3RWZk?=
 =?utf-8?Q?K1VyRUBMcY2ffas2ktWtsuvUP?=
Content-Type: multipart/alternative;
 boundary="_000_SJ0PR11MB5867A2D642318DD63185C9B9D0B82SJ0PR11MB5867namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd74e471-b13e-4287-4846-08dd80a43c9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 07:15:03.6190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x9YDTBJpwBPrwZSAyJs2mopw98xf6FzZTkibe2D3g7nyFMVhfaMj5paNqJGcVEED8g8yBu5zQWUfHTtAj+lc3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8296
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

--_000_SJ0PR11MB5867A2D642318DD63185C9B9D0B82SJ0PR11MB5867namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQpDaGFuZ2VzIGludHJvZHVjZWQgd2l0aCB0aGlzIHBhdGNoIGlzIG5vdCByZWxhdGVkIHRv
IHRoZSBiZWxvdyBQb3NzaWJsZSByZWdyZXNzaW9uIG9yIGZhaWx1cmUuDQpQbGVhc2UgdXBkYXRl
IENCTCBmaWx0ZXJzIGFuZCByZS1yZXBvcnQuDQoNCkJyLA0KTml0aW4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCkZyb206IFBhdGNod29yaw0KU2VudDogVGh1cnNkYXksIEFw
cmlsIDE3LCAyMDI1IDQ6NTggQU0NClRvOiBHb3RlLCBOaXRpbiBSDQpDYzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDog4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBm
b3IgZHJtL2k5MTUvZ3Q6IEFkZCBkZWxheSB0byBsZXQgZW5naW5lIHJlc3VtZXMgcHJvcGVybHkN
Cg0KUGF0Y2ggRGV0YWlscw0KU2VyaWVzOg0KZHJtL2k5MTUvZ3Q6IEFkZCBkZWxheSB0byBsZXQg
ZW5naW5lIHJlc3VtZXMgcHJvcGVybHkNClVSTDoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvMTQ3ODE1Lw0KU3RhdGU6DQpmYWlsdXJlDQpEZXRhaWxzOg0KaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ3ODE1djEvaW5k
ZXguaHRtbA0KQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTY0MjdfZnVsbCAtPiBQ
YXRjaHdvcmtfMTQ3ODE1djFfZnVsbA0KU3VtbWFyeQ0KDQpGQUlMVVJFDQoNClNlcmlvdXMgdW5r
bm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDc4MTV2MV9mdWxsIGFic29sdXRl
bHkgbmVlZCB0byBiZQ0KdmVyaWZpZWQgbWFudWFsbHkuDQoNCklmIHlvdSB0aGluayB0aGUgcmVw
b3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KaW50cm9k
dWNlZCBpbiBQYXRjaHdvcmtfMTQ3ODE1djFfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0
ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0K
dG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxz
ZSBwb3NpdGl2ZXMgaW4gQ0kuDQoNClBhcnRpY2lwYXRpbmcgaG9zdHMgKDEwIC0+IDEwKQ0KDQpO
byBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMNCg0KUG9zc2libGUgbmV3IGlzc3Vlcw0K
DQpIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1
Y2VkIGluIFBhdGNod29ya18xNDc4MTV2MV9mdWxsOg0KDQpJR1QgY2hhbmdlcw0KUG9zc2libGUg
cmVncmVzc2lvbnMNCg0KICAqICAgaWd0QHByaW1lX21tYXBAdGVzdF9hcGVydHVyZV9saW1pdDoN
CiAgICAgKiAgIHNoYXJkLW10bHA6IE5PVFJVTiAtPiBTS0lQPGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NzgxNXYxL3NoYXJkLW10bHAtMi9pZ3RA
cHJpbWVfbW1hcEB0ZXN0X2FwZXJ0dXJlX2xpbWl0Lmh0bWw+ICsxIG90aGVyIHRlc3Qgc2tpcA0K
DQo=

--_000_SJ0PR11MB5867A2D642318DD63185C9B9D0B82SJ0PR11MB5867namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MXB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpIaSw8YnI+DQpDaGFuZ2VzIGludHJvZHVjZWQg
d2l0aCB0aGlzIHBhdGNoIGlzIG5vdCByZWxhdGVkIHRvIHRoZSBiZWxvdyBQb3NzaWJsZSByZWdy
ZXNzaW9uIG9yIGZhaWx1cmUuPGJyPg0KUGxlYXNlIHVwZGF0ZSBDQkwgZmlsdGVycyBhbmQgcmUt
cmVwb3J0LjwvZGl2Pg0KPGRpdiBpZD0iYXBwZW5kb25zZW5kIj48L2Rpdj4NCjxkaXYgY2xhc3M9
ImVsZW1lbnRUb1Byb29mIj48YnI+DQo8L2Rpdj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29m
IiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01T
Rm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAx
MXB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+DQpCciw8YnI+DQpOaXRpbjwvZGl2Pg0KPGRpdiBj
bGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250LWZhbWlseTogQ2FsaWJyaSwgQXJpYWws
IEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAs
IDApOyI+DQo8YnI+DQo8L2Rpdj4NCjxociBzdHlsZT0iZGlzcGxheTogaW5saW5lLWJsb2NrOyB3
aWR0aDogOTglOyI+DQo8ZGl2IGNsYXNzPSJlbGVtZW50VG9Qcm9vZiIgc3R5bGU9ImZvbnQtZmFt
aWx5OiBDYWxpYnJpLCBBcmlhbCwgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDEy
cHQ7IGNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4NCjxiPkZyb206PC9iPiZuYnNwO1BhdGNod29yazwv
ZGl2Pg0KPGRpdiBjbGFzcz0iZWxlbWVudFRvUHJvb2YiIHN0eWxlPSJmb250LWZhbWlseTogQ2Fs
aWJyaSwgQXJpYWwsIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xv
cjogcmdiKDAsIDAsIDApOyI+DQo8Yj5TZW50OjwvYj4mbmJzcDtUaHVyc2RheSwgQXByaWwgMTcs
IDIwMjUgNDo1OCBBTTwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFy
aWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigw
LCAwLCAwKTsiPg0KPGI+VG86PC9iPiZuYnNwO0dvdGUsIE5pdGluIFI8L2Rpdj4NCjxkaXYgY2xh
c3M9ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFsLCBI
ZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsiPg0KPGI+Q2M6PC9iPiZuYnNwO2ludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc8L2Rp
dj4NCjxkaXYgY2xhc3M9ImVsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGli
cmksIEFyaWFsLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6
IHJnYigwLCAwLCAwKTsiPg0KPGI+U3ViamVjdDo8L2I+Jm5ic3A74pyXIGk5MTUuQ0kuRnVsbDog
ZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3Q6IEFkZCBkZWxheSB0byBsZXQgZW5naW5lIHJlc3VtZXMg
cHJvcGVybHkNCjwvZGl2Pg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6IENhbGlicmksIEFyaWFs
LCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAw
LCAwKTsiPg0KPGJyPg0KPC9kaXY+DQo8ZGl2PjxiPlBhdGNoIERldGFpbHM8L2I+PC9kaXY+DQo8
dGFibGU+DQo8dGJvZHk+DQo8dHI+DQo8dGQgc3R5bGU9IndpZHRoOiA2MS4wNzgxcHg7IGhlaWdo
dDogMjYuMzEyNXB4OyBwYWRkaW5nOiAycHQ7Ij4NCjxkaXY+PGI+U2VyaWVzOjwvYj48L2Rpdj4N
CjwvdGQ+DQo8dGQgc3R5bGU9IndpZHRoOiA1MTAuMDYycHg7IGhlaWdodDogMjYuMzEyNXB4OyBw
YWRkaW5nOiAycHQ7Ij4NCjxkaXY+ZHJtL2k5MTUvZ3Q6IEFkZCBkZWxheSB0byBsZXQgZW5naW5l
IHJlc3VtZXMgcHJvcGVybHk8L2Rpdj4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHN0eWxlPSJ3
aWR0aDogNjEuMDc4MXB4OyBoZWlnaHQ6IDI2LjMxMjVweDsgcGFkZGluZzogMnB0OyI+DQo8ZGl2
PjxiPlVSTDo8L2I+PC9kaXY+DQo8L3RkPg0KPHRkIHN0eWxlPSJ3aWR0aDogNTEwLjA2MnB4OyBo
ZWlnaHQ6IDI2LjMxMjVweDsgcGFkZGluZzogMnB0OyI+DQo8ZGl2PjxhIGhyZWY9Imh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ3ODE1LyIgaWQ9Ik9XQTE4NjI4Y2Qx
LWNmOGEtMGVlYy1lOTIyLWVkZjM2ODUyOTdlZCIgY2xhc3M9Ik9XQUF1dG9MaW5rIiBkYXRhLWF1
dGg9Ik5vdEFwcGxpY2FibGUiPmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJp
ZXMvMTQ3ODE1LzwvYT48L2Rpdj4NCjwvdGQ+DQo8L3RyPg0KPHRyPg0KPHRkIHN0eWxlPSJ3aWR0
aDogNjEuMDc4MXB4OyBoZWlnaHQ6IDI2LjMxMjVweDsgcGFkZGluZzogMnB0OyI+DQo8ZGl2Pjxi
PlN0YXRlOjwvYj48L2Rpdj4NCjwvdGQ+DQo8dGQgc3R5bGU9IndpZHRoOiA1MTAuMDYycHg7IGhl
aWdodDogMjYuMzEyNXB4OyBwYWRkaW5nOiAycHQ7Ij4NCjxkaXY+ZmFpbHVyZTwvZGl2Pg0KPC90
ZD4NCjwvdHI+DQo8dHI+DQo8dGQgc3R5bGU9IndpZHRoOiA2MS4wNzgxcHg7IGhlaWdodDogMjYu
MzEyNXB4OyBwYWRkaW5nOiAycHQ7Ij4NCjxkaXY+PGI+RGV0YWlsczo8L2I+PC9kaXY+DQo8L3Rk
Pg0KPHRkIHN0eWxlPSJ3aWR0aDogNTEwLjA2MnB4OyBoZWlnaHQ6IDI2LjMxMjVweDsgcGFkZGlu
ZzogMnB0OyI+DQo8ZGl2PjxhIGhyZWY9Imh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzE0NzgxNXYxL2luZGV4Lmh0bWwiIGlkPSJPV0E5ZjlmMjczMC01
Mjk3LTJkMGEtNDBiNi0zZTY5NmY1NTQyMDMiIGNsYXNzPSJPV0FBdXRvTGluayIgZGF0YS1hdXRo
PSJOb3RBcHBsaWNhYmxlIj5odHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDc4MTV2MS9pbmRleC5odG1sPC9hPjwvZGl2Pg0KPC90ZD4NCjwvdHI+DQo8
L3Rib2R5Pg0KPC90YWJsZT4NCjxoMSBjbGFzcz0iZWxlbWVudFRvUHJvb2YiPkNJIEJ1ZyBMb2cg
LSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE2NDI3X2Z1bGwgLSZndDsgUGF0Y2h3b3JrXzE0NzgxNXYx
X2Z1bGw8L2gxPg0KPGgyPlN1bW1hcnk8L2gyPg0KPHA+PGI+RkFJTFVSRTwvYj48L3A+DQo8cCBj
bGFzcz0iZWxlbWVudFRvUHJvb2YiPlNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRo
IFBhdGNod29ya18xNDc4MTV2MV9mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZTxicj4NCnZlcmlm
aWVkIG1hbnVhbGx5LjwvcD4NCjxwPklmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBo
YXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlczxicj4NCmludHJvZHVjZWQgaW4gUGF0
Y2h3b3JrXzE0NzgxNXYxX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSAoSTkxNS1j
aS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW08YnI+DQp0byBkb2N1
bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNlIHBvc2l0
aXZlcyBpbiBDSS48L3A+DQo8aDI+UGFydGljaXBhdGluZyBob3N0cyAoMTAgLSZndDsgMTApPC9o
Mj4NCjxwPk5vIGNoYW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0czwvcD4NCjxoMj5Qb3NzaWJs
ZSBuZXcgaXNzdWVzPC9oMj4NCjxwIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+SGVyZSBhcmUgdGhl
IHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdv
cmtfMTQ3ODE1djFfZnVsbDo8L3A+DQo8aDM+SUdUIGNoYW5nZXM8L2gzPg0KPGg0PlBvc3NpYmxl
IHJlZ3Jlc3Npb25zPC9oND4NCjx1bD4NCjxsaT5pZ3RAcHJpbWVfbW1hcEB0ZXN0X2FwZXJ0dXJl
X2xpbWl0OjwvbGk+PHVsPg0KPGxpPnNoYXJkLW10bHA6IE5PVFJVTiAtJmd0OyA8YSBocmVmPSJo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDc4MTV2
MS9zaGFyZC1tdGxwLTIvaWd0QHByaW1lX21tYXBAdGVzdF9hcGVydHVyZV9saW1pdC5odG1sIiBp
ZD0iT1dBZmJhMGRlY2UtOWFmOS05MmZmLTE4NTQtNDQ3MzY5NGVhYWU5IiBjbGFzcz0iT1dBQXV0
b0xpbmsiIGRhdGEtYXV0aD0iTm90QXBwbGljYWJsZSI+DQpTS0lQPC9hPiZuYnNwOysxIG90aGVy
IHRlc3Qgc2tpcDwvbGk+PC91bD4NCjwvdWw+DQo8aDIgY2xhc3M9ImVsZW1lbnRUb1Byb29mIj48
YnI+DQo8L2gyPg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_SJ0PR11MB5867A2D642318DD63185C9B9D0B82SJ0PR11MB5867namp_--
