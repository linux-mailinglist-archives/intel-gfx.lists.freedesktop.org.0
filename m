Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38207B111C6
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 21:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48CCB10E221;
	Thu, 24 Jul 2025 19:31:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eJjT8iUg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B6E10E221
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 19:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753385493; x=1784921493;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=lGw0CRSuSJnptOUXCQouXXgzXUWxDh9L0HCZaNeswtA=;
 b=eJjT8iUgUwUmU8a4+4JLlzDHd8Y8MUdDugBLCEhw4IAD3MxlpjvhEapK
 MGSibuSKxtJjhSsk30X0FC8fkWc4kdaxnZFbF36UCaeWQOo4sd2QpnXI1
 5zzZ1WHx9/uALWLi3Xte2FNIw1IYm3qhjMLG1LXPAM2VgpNiO7g7qK3G9
 VRuoEZSJ2xcKgpqB6IDtUsqDu8nAOrICVjNKrHT0ExDZFRkhf4+t/Z/pt
 99bWOhY6RiqqRkd8LK+7L6AFD3m49GOVBQl1gP55DchAcyB/OU2ogbvcV
 wOw+kvfDVp30zdiYKHMTLCotjVzTeQZzs1lEG8c5X9dn/3ismA0gYeiR4 Q==;
X-CSE-ConnectionGUID: xN+mTpVdQHuEql31tl4yBw==
X-CSE-MsgGUID: WSeSUVNXTFilCttKbKt2MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="81157802"
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="81157802"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 12:31:32 -0700
X-CSE-ConnectionGUID: 5yFAG9u+QNW6IxhNZ/cfBA==
X-CSE-MsgGUID: 5rnudHikRLid+um/X9CiRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,337,1744095600"; d="scan'208";a="159724394"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2025 12:31:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 12:31:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 24 Jul 2025 12:31:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.77) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 24 Jul 2025 12:30:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OeFKdclN8iQEriaNjoQc9hLznejDFku46ikprtg8xasQNJ0x1UTIz5FMXGts3GVvteGP2vLtcfwTNxt1PgsN1fz1Mo1KPmp6FNVb8EOsCztpjALQ9D9Kc9qF/6yJosyrGmOeFnpBIERsf6xgKHJa04wOHGGKsDEWV+MpYVgk5PuHzDa/IXT6QFTaJAn2RoO60On4Pq8iBq4UNicKbz+OZykeEo4fqGur90pqgEUuKACI2Lav9bRofErhYOkCq7W/1pQ379Sl1iCIeWwz10TFX/VaZnm1/jHMOXVNA+9OPgBIRaSh254PLTteCrrnoE9WgvBickM4TrF8ZaFKkFOepQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HwUbnBqPhM0S6SadjeOlJCzWK3ZukVctkHUFowTKPyQ=;
 b=HE9UCF8XgjQxiorGIO4MOyWe5yzmN2amcgEbRsysy7O9EvOJWM9DbIbGW4rKulI2+jZNeFHOXbjC5Ik73jf3V8prd3rw26eJE5sLICpf2voQMDPbtGa8AvIY3uUh7RoljHpj+Nb8Bt+NkaqKOqw7CJNraIU0rrd2EJRWMZWb0j2/hDJwBGohai2TrSs5rGfWTdAFsSROTD4ecWW+WwaI6mq9VlIHa71QWvNR2c8nbOXRgtEMycsWBu6Y22rkXmle0/r07mYPiuOrdKuvEXWgQlgS3XfpzP36ovflP8QWu6gnUulQyPY3mpIH53/T93upsX/YvAmFbFoQLeUls1zL1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5977.namprd11.prod.outlook.com (2603:10b6:208:384::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Thu, 24 Jul
 2025 19:29:56 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Thu, 24 Jul 2025
 19:29:56 +0000
Date: Thu, 24 Jul 2025 22:29:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ruben Wauters <rubenru09@aol.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug
 builds
Message-ID: <aIKJq1spwgBWgxbn@ideak-desk>
References: <20250724090237.92040-1-imre.deak@intel.com>
 <aIJey5rLh_lBaEtu@intel.com>
 <954507fb83b5f83c7b8fb609fa84d0c7d8455fff.camel@aol.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <954507fb83b5f83c7b8fb609fa84d0c7d8455fff.camel@aol.com>
X-ClientProxiedBy: DU6P191CA0069.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53e::22) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5977:EE_
X-MS-Office365-Filtering-Correlation-Id: b516b4be-47f1-4879-d6cc-08ddcae8787d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0p1MEsyVlJ3ODZoTFBuZ0hpTWdObWVoc1N5VUUxQ0M3WGovUVcwNWJqMVJH?=
 =?utf-8?B?MTl1NXVnOFdMcUN2YTg2U0VMaDZnYWs3UXh0RVh6OUJOMFgvN0hTLzZoUE1T?=
 =?utf-8?B?SDV5OWR3N0lKanNsekVoekNyN3RKbFZDdDJhUVZmRWNHNUhqQUlhTHVhYjNY?=
 =?utf-8?B?VW5uTUpwSWUvdGkwNm1SOVpxZU5DZ2djNG9ZclNDczV1ZlpBV1pvV0I0bllW?=
 =?utf-8?B?R0d0WkViK2hNMzFSalFMeUFqOE5rN0ltOUo1Nk9SQUY2blZzSGRVdWlTTzl5?=
 =?utf-8?B?Q1F2eUZyWnpRZzFpTTJCaFA5bXFKdVA5a3o2YWlhekliUjZzMGlkNmlJRlRy?=
 =?utf-8?B?NEc0ckFUVVJnQm5GbUY3T0FrRTlvKzAyeURPUjV0aGVDVk92WVJLZ0IzSHo0?=
 =?utf-8?B?S1dwUExhenFURUtPOWYwWEVSekhvMDY2NGs4czUzN2VRdjFzRzEzY2NIbUZV?=
 =?utf-8?B?dC83UWYyYUJEMm01cEI4TUpqSzNDdWNRSjhLZ2dBalRuQ2hwc0dKVFlXc1Fm?=
 =?utf-8?B?TlJBREdpUW93NitHSlZyNG9VMnRNNWhzcCtQKzg3alFlKzlRbkx1MWZUMlhZ?=
 =?utf-8?B?RHNPdVM1bzNLMlVFZXFFRWR0cnA5ZW0wcjczd1VIRytmVGthQ21IRCtITE1Q?=
 =?utf-8?B?cmlNcHZwTE1iampTcEdlMndpaldzQ1NoNi9wbHZ4Y05SZTZDVk5mbUVSTHVz?=
 =?utf-8?B?NGxQVldhS0tHc3JtcmNIL0lsTS93dWJuYlZnLzlHWVF1K3ZpVDRia1g5YklU?=
 =?utf-8?B?cWJJNUkxMlhxWXFTTzRnZDAraHlFZ3YxNnoyQmM1TFRpSHZxT25FYlFCSi80?=
 =?utf-8?B?MmIrbC9VZEROaXhRNTlhQXhoVDBmTzl0Y1RzYnF4NmdQMHRRNUFsMmY5MVdy?=
 =?utf-8?B?NGhhTUxzbHQ3eHVJZHVZY045RWZCMjdEMXVENHBXWnFXZkxwRTVOdHpQMmtp?=
 =?utf-8?B?bVNwYW5EUEN3QzhQdG9FUTlyb3RPb0xjczFjVmpJaW9YcjI4THRCOWpWbXRr?=
 =?utf-8?B?RWZkZHVGK0dYLzNKZ1FIUDVma2JTWFR4d0RwMXBMcDZyaTJ4S0FqYXhPSVlu?=
 =?utf-8?B?bEl2L2NsTFh0T2p5WDJvb3RrTktmMkhxRTdES1E4MmRYZThCVFM1cXFUNktY?=
 =?utf-8?B?ZVp6RXRFSVpzMHBKRERHV0FFWDRMYldiME1MQkdFVkxHck5FbGFCYmY2VkM4?=
 =?utf-8?B?TDhqM0ZpbXEvVURRaEVLeS85VDlwTnNWYml4OFRZczVxMWtGWUgzZjRuaFU3?=
 =?utf-8?B?TDlESER6c1prQ281QURPT3ovNmlOK01NemVoSTdhZlkyM3JrUXplTVB6V29L?=
 =?utf-8?B?b2t3MnErcjE4aHNTMmRIcFlvODhtT2lkVnFjdVdQRVJOZ3Qra29IdTZvcUhO?=
 =?utf-8?B?TmdIV0RDK0Z5UU5ZVUZDMHV2ZlVaOFduSG9BeXlZVm92N0gyQ3ZQRnllcjla?=
 =?utf-8?B?UHVwdW00R1gyVzE5ekFRSDNKeGF6UGdGTXFtQ2ZSaWhDcDA3RjJwenl2cjJF?=
 =?utf-8?B?bk1EL05XNllQSmo2OTZaTS9zN0o1R09kaWZmd1M0Q2JINzBYZlJJc01KOEt3?=
 =?utf-8?B?bjk5WGF5UWxYRy9XL011aFd6Q0NFL2ptckNVNTBYY29QZlAzblJhR25zYms3?=
 =?utf-8?B?WElTQkdLNmYvNSthMzYzOGVjemFOcEVzN1VCbDBaUjZTb3BSYzR3eHlsYXk4?=
 =?utf-8?B?cUZlV2EydFFESTFnTjdFQlhYL250RUlMaHRyTnViOE43S2tIUUZWMVVFZjcz?=
 =?utf-8?B?OThaYStMZ3d2djBPN0l4d3IveHRVRDk2RmFCOHlHdnZjSjZzemxXVmp6NGly?=
 =?utf-8?B?VmlVai9mOTNKNmk3VTBndS9Vak5xYnRGMWZPL3pub0QrTkRqaDRxeURxLzA1?=
 =?utf-8?B?OVhDaU81SndoRHFDaU5tQ2l5aVRsT3hpcnYvREYzWFI3cTRDc1dLbHRIbTB3?=
 =?utf-8?Q?TL252SzS82I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTdOdW5IT0hka1FIMnJhSVhjWVZSSys3TlFoemREcGxUTGVvMXVPNmQ4MjlC?=
 =?utf-8?B?WUQ4QjBnQ1M3VklVdXYwTFBIMHErdjUxUFZZVGJvNThLZkJvMGJVZUhSMkdC?=
 =?utf-8?B?bk1vdkRReDFsaWZCOVIyazhVdjhsbFlJM1lDTmJpWnE0N01Ba3FVTlpaNXhp?=
 =?utf-8?B?RHBMeDNEV2NnS1M1N0RLb2ZEWVdVYzNFMHNJTmw1NDRFeHVwUU0vRFNMdkFx?=
 =?utf-8?B?NzVpZ1Rxd05xdWxZd2pGekkySWtreVBSM0Z5OHUvZ1hEcGFCdW1MMGZCZjhk?=
 =?utf-8?B?MC9PSkY4c09NVllFcDF2TzVJdnJHRCtRSmFiZjE4QUQrQ0lVL2NGWFBrMzNU?=
 =?utf-8?B?TEc3VWNZZE4yVmMreXZtTmZBbDZ6cDV3RUgxdjRzNXNoUDRGWVVxYVNhOHFl?=
 =?utf-8?B?ZCtqdFhpS1pGNTlrZXRZNmZveTMzZVNGcXgvbGRLV3BkbzVhL20yMUFvdnJk?=
 =?utf-8?B?OUozL1pHZy9uS1Z0cXFKdk9sVFdQZHFKMnp2ZWQ0R0JWZEtHakJYNW1yTTlX?=
 =?utf-8?B?emcvaTU0eGtHb2VPd09XUngrUWk5THdFUVgzcXM2T1ZrN01pVEFyNEVBZUNh?=
 =?utf-8?B?UmNHakdCYkkyM2pJZ0ZFaXhaRDFIcFRYa1NYZzB2cXloTUhnaTVZem9pWCsv?=
 =?utf-8?B?Q29iN0FpYkMwQ2hNMkxXcVRPUHJ3OXVlY2ZCSXUxK2ZCMEh1S1gyS2drdFZ0?=
 =?utf-8?B?SncyMTUrQk0wb3MzcGUyaG9UNEhTWmlJVWRVL2t0cld6TWtFS0phK2hjTWhS?=
 =?utf-8?B?RG9PdkcrSlZMMHA1NnBiSUtUZ3gyVEVaeWdhQ0s2R3M3WmUyc084VXNnMGFY?=
 =?utf-8?B?emZUUFRyR2M5QjJab3Y3VjJwTDV6Zks3eVpqSWUrRytTdXNiUzRBMHFEOUZs?=
 =?utf-8?B?OWU1T3RyWGdQam9VdDJodVFNdmpHT1E3aENxeFM5WnBNRzFhakNPaTdHZVlp?=
 =?utf-8?B?R004ZWZiaU5HK3paNzdpSnZ5dUZKTitxNVEyNitxSGl5RXBSbSt5Y1ZPZExR?=
 =?utf-8?B?amFwamRNQnVVMmszeTRYQ2JRWUthVVJwYkljZk5LMEhDSlRyd2F6TmxrcHhO?=
 =?utf-8?B?WWNkWmMxMWIzRkd2cnBqemQ4WTNRMHFzbXI1czUyZUVsai9aTzNvZHFoNmwx?=
 =?utf-8?B?d3FhQnRReXd6MVZXU1B3Y3VXc1lZM2FPcXN1bHhoK051YXY3M1c0SnV4VE52?=
 =?utf-8?B?Q09SaDJER2JoazFLRnVqUzZyQVVTRTdndVpqWWNvU2tZbldSUVRTSVZnckZK?=
 =?utf-8?B?YVlTcUVuVEdzdkxQVWl4N0l2YVJZNENEY1hRaERBbUNSSnp4TkhWdTFtd293?=
 =?utf-8?B?eUJ1WFhLTzRjZzVnTFJlQnE1eGkrTkdtSFNGSG9RaXQwRjEzUjlRQ3RrUHVG?=
 =?utf-8?B?S2ZrcWVBd2k4azM4SHhZMnB0MEFvOHA5ZURRQk94KzlMOGtuWSs1dXhsMHl0?=
 =?utf-8?B?d0FQbWp4czhCdU9Idld6Qy9Ub2xCd0VJUFRoSTlhOThFcVVsaGdVVTNiaVN1?=
 =?utf-8?B?YkIreExXL2ZabDZQNVZ6dmpqWDlJRFQ1U3BnL3lzVjdkNzFHSzl0c2xMQm91?=
 =?utf-8?B?Nzk2bmRxeXZkYkpKRG9Ebkhwa0ZhYVgzMi81dTJrYjJJN2hkc2JGcXJHSnhm?=
 =?utf-8?B?ZXAyTG9YQk5zNG9YeDk3TkRKTXYzdkVPVWUzR0FUU1FaL215b1pGd1l0YTdR?=
 =?utf-8?B?MEhnSzBNbk1sMktkT2hDSDZVWFRWc3NIeGVWTHQvK2R4VURRRlZkRmhsaHRG?=
 =?utf-8?B?SFlRUWdQcytBNEVLem4vd0NkUE5FdDBKb1hRM3dmNXBqYmJsSVlKeWNjbzFE?=
 =?utf-8?B?VlZGQzkyYjRZYnFYM2VCODRUcGZKVFMvV0Y4OUsxNFVVM0JVWTRYU2FkZFNk?=
 =?utf-8?B?L2x4bW83VzhQeUh6Z2FLTVV3emc4VForQlFvVmVhWDlGdkRBUlpDeFNpNFBy?=
 =?utf-8?B?QUllZFgvWXhRSWRraFpVWVBBbWl6dFVMTCsrcmVFWjBmbkFrZFE3b0ZrN2dK?=
 =?utf-8?B?NnRSci8xSzZnbEh3b1hWMk1MVFdVaVpXQjBpY3JhK0JaYUlXV2NWUnhEQndI?=
 =?utf-8?B?N0FsK3JiTlFJRmRTT0VLTmhaUzhkVmI1RXpXanU2T3lIelk2KzJUUmt1ME1N?=
 =?utf-8?B?UTdkbW94SUczR3c4VHVxN3NJTk4xWkkvSHU0L3llbzU0Y2hhYWFWUktwT0FC?=
 =?utf-8?Q?SrDHMdxpq5LuK8LC4PR/1ZbKaUCqiNgpsy12rDLoA6A4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b516b4be-47f1-4879-d6cc-08ddcae8787d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2025 19:29:56.0402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4GvO0F5Mt+4amCnFd2W+XDOXcmKuU2//TIL5nP0ZoxJQ/u+25IFGBP1YvbsSvUaBtIefRbALRSzYw0D6tj2PfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5977
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 24, 2025 at 05:31:28PM +0100, Ruben Wauters wrote:
> On Thu, 2025-07-24 at 12:26 -0400, Rodrigo Vivi wrote:
> > On Thu, Jul 24, 2025 at 12:02:37PM +0300, Imre Deak wrote:
> > > Selecting an option which depends on other options only works if
> > > the
> > > dependencies are guaranteed to be selected (as these dependencies
> > > will
> > > not be automatically selected). CONFIG_DRM_KUNIT_TEST depends on
> > > DRM,
> > > MMU and KUNIT the first two of which are guaranteed to be selected
> > > for
> > > i915, but the last one is not. Hence, selecting
> > > CONFIG_DRM_KUNIT_TEST in
> > > i915 debug builds may result in CONFIG_DRM_KUNIT_TEST being
> > > selected
> > > without the CONFIG_KUNIT dependency being selected. This causes at
> > > least
> > > the following compile error:
> > > 
> my bad, I guess I fundamentally misunderstood how the Kconfig system
> worked, and assumed that if you selected one all the dependencies were
> automatically selected. I guess this passed me by in testing cause I
> already had CONFIG_KUNIT selected and didn't think to de-select it,
> apologies.

IME, it's easy to get the Kconfig dependency semantics wrong. Unless I
get it wrong, 'depends on' will never select the options listed after
it, it only determines if its parent option is visible during manual
selection (and similarly if it's valid to select the same parent option
from an other option automatically with 'select'). Maybe 'depends on' is
a misnomer and 'visible if' or 'available if' would better describe its
purpose.

> > > drivers/gpu/drm/tests/drm_bridge_test.c: In function
> > > ‘drm_test_bridge_alloc_init’:
> > > drivers/gpu/drm/tests/drm_bridge_test.c:449:21: error: implicit
> > > declaration of function ‘kunit_device_register’; did you mean
> > > ‘root_device_register’? [-Werror=implicit-function-declaration]
> > >   449 |         priv->dev = kunit_device_register(test, "drm-
> > > bridge-dev");
> > > 
> > > Fix the above by selecting CONFIG_DRM_KUNIT_TEST only if
> > > CONFIG_KUNIT is
> > > also selected.
> > 
> > Perhaps DRM_KUNIT_TEST should select CONFIG_KUNIT ?!
> 
> This was how I thoguht it already functioned, I guess not? I'm not sure
> if that's intentional or not but I guess it is a problem regardless
> > 
> > But well, let's fix our own mess on our side. I'm sorry for missing
> > this detail. :/
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > > 
> > > Fixes: 17133255a322 ("drm/i915: replace DRM_DEBUG_SELFTEST with
> > > DRM_KUNIT_TEST")
> > > Cc: Ruben Wauters <rubenru09@aol.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Kconfig.debug | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/Kconfig.debug
> > > b/drivers/gpu/drm/i915/Kconfig.debug
> > > index b15b1cecb3aad..3562a02ef7adc 100644
> > > --- a/drivers/gpu/drm/i915/Kconfig.debug
> > > +++ b/drivers/gpu/drm/i915/Kconfig.debug
> > > @@ -50,7 +50,7 @@ config DRM_I915_DEBUG
> > >  	select DRM_VGEM # used by igt/prime_vgem (dmabuf interop
> > > checks)
> > >  	select DRM_DEBUG_MM if DRM=y
> > >  	select DRM_EXPORT_FOR_TESTS if m
> > > -	select DRM_KUNIT_TEST
> > > +	select DRM_KUNIT_TEST if KUNIT
> > >  	select DMABUF_SELFTESTS
> > >  	select SW_SYNC # signaling validation framework
> > > (igt/syncobj*)
> > >  	select DRM_I915_WERROR
> > > -- 
> > > 2.49.1
> 
> Ruben Wauters
