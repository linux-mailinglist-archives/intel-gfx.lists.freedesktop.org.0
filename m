Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC9BB83D4D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 11:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E9510E6B6;
	Thu, 18 Sep 2025 09:41:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Teo8DXoo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EEFA10E0EE;
 Thu, 18 Sep 2025 09:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758188465; x=1789724465;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WuIf/ZL7e143SZG0dszTMD4EnF8IW3Y7Ux7qffHsM0U=;
 b=Teo8DXoo7JsXJofgU/9AwFtzimnlsyOEfsiz6OXG6FjU0XgHakm3MxN8
 GNG+xd2wxX/QsOA5FmmvNb6TtwvfTi6R7cVFFcZIs3RQlsWgNTskK0DKr
 qI+v3Qb3tfpTisPrSwbtYc+pisUP/r417ShfbDgPUDdbpx9/AG4Z2chqG
 6rtroleIebRn87lYthasTDj0QFJkENBuTmCUOutAHoHSaTCEdGTICkwJU
 BB+Ho4qUKIXuqffF4EHKlYIIMe73YetdBuxG5rcN3PKJpydabohjO/65j
 Er69SlT6DURhudpdrA4i3gNm5kPz8QVOxxd4Vkj5NfPvY0euBcmfaB5Z8 g==;
X-CSE-ConnectionGUID: HjL7sPgTQOaH0bBe+UMK6A==
X-CSE-MsgGUID: UKeDd6s9TECykCYweGZyyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="60444413"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="60444413"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:41:04 -0700
X-CSE-ConnectionGUID: xkTgoGh4RT+ZfzFpjfyZsg==
X-CSE-MsgGUID: JqGaGyjMSaGIkBwtYjsqcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="175938861"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 02:41:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:41:03 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 02:41:03 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 02:41:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U4R/dtHUYsgOItzRynyw8OdhUARY+7bZEIDpfaWFwoIRO+PSrdYb3pRc/mgYhIMhRYHl+IQ5a6Dt51bt3tCOOrIXsnH6qaEnT6V75Iig833jKHxSU2aOzbOc6r3S8Jw5K9iC2IGHSi6PqE+REywearPWXACO6Uf5UFAJwCArmlMuRwol3mUmIPplIF8/JXkrd/jN4TtkE5Zgs77g5ZN/VlV6mu1D/mXACuSbhK8eNFaCh9pBQLjVICzGUDItHYniPuCMwvXY/ufPiDYIBjAoTPY/1BDAALN24HUei6maIrNVrN2l0A4rSaCRIY+Kg4H3zJ5mMzRh2jpSY9PbjQkwgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NbXjL6JLGmVJ+jEviwPww2kM4GiboILEu0Jk2xxYGE=;
 b=LFvAwQ18qmmpiwfeXu3i/p3JK9LE/RBmOGNpJPfHBaUrJlplqLTrn0DgsMv1otfVkC4JYxVXNDynLYh6dKoOcpTM3e7S1uwMGqwqKAVkW4XIKPjQqW72gJ7CNAjhGeEXa0PQjHO4UK61U9HB6nDD+FFq36WQggz0WighJ6qrygieadr/pL3KSz0mi0AxxaH8bzbvCdY6CVd4LXRD3mOylB2Wnb+rXlpCuv13QM2HtCDSkWrskisbhtzEOS8JLLzO0ylu0UX90S3Nz1ZyRBuivzDiEyKvyOV9kz+GhPn8tIaRHLppr8YVzaxuapHgE0oID8BPYGvBTGM7KpIyMPTyrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Thu, 18 Sep
 2025 09:40:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Thu, 18 Sep 2025
 09:40:51 +0000
Message-ID: <f29b404d-e052-446a-b74e-62a7d99cdf00@intel.com>
Date: Thu, 18 Sep 2025 15:10:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/vrr: Readout framestart_delay earlier
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250917203446.14374-1-ville.syrjala@linux.intel.com>
 <20250917203446.14374-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250917203446.14374-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0154.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c9557ac-14cb-4a09-bc65-08ddf6977427
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDhBT3h2V3A5cUdBMHdKbUpoMTI2NTJVTVEvWG01Q3JWeC8yTHJKWGg5RG1z?=
 =?utf-8?B?SU51bmV3MVhRdUpFRjc4ckJuTDRVSitJVjEyYW04Wm85bU5lWGppUUkwcGwx?=
 =?utf-8?B?VUlVWUVEMkNEdmtGZTd4a1BBbUsvNENRWmdFUHV4OHdyVm4wQ2VZMW4xVFVs?=
 =?utf-8?B?ZjNnWG52b2NPVTgxNTB0aEF3aW5abk0xaGRLcW0yRmFvc3lIQnJGZ2lETlN0?=
 =?utf-8?B?Q1M3ZHIzY21scHNxQzdlWU1obFlnc1FuMThSckRXdjM3ck40U1o4b29nYTIy?=
 =?utf-8?B?UGdKdU82anA3MFdXUStTVTZ3aEIyc2hhZldST2kzcGNCNEs2LzBLcFRCVkw4?=
 =?utf-8?B?aXZFVlQrQWMyZ25WV3NUN1hNN1dFYlVoeE9Ua3haaS9oMFgzNjlUdTJkSkp0?=
 =?utf-8?B?QjhyVGR2TnhZamdqYXZpVVN1WWkxa2VMR0ttSi9LWEN2OHFXd29McXFDNnhi?=
 =?utf-8?B?RG54RGFtSzQzSHc4WTYwUDh3Z2Y5TjNhSTh3eGxkMENhNUJQWU5nUnJwMHJN?=
 =?utf-8?B?TjlJcWVyTUFUcGl5RlArTnlySEtzaU8wQlpNdWN3MWltM2I1TS9NcFQyQTJm?=
 =?utf-8?B?azlyaGkySHBRRXZxL1pqRnBndTlLeHVkelhoNG9rdWZXTTNkaWhnUlVhRG5W?=
 =?utf-8?B?Wm04aDJOd0JESVRTeXo0elpsT0IzLzRLUlUxdGs2UmFmUjFHV0tjVk9RYVNO?=
 =?utf-8?B?RDlacUkyWmowbms1dFN2ME94VG5xUVV6cEw0ODhiTTJ5c2tPQTdyMXI1OVV6?=
 =?utf-8?B?VVg5bGdPNmhSRTJCcUJlSVZ5M1RidHBMR1pLV1FrR3RjaUlwSU1HeVNYWEFS?=
 =?utf-8?B?VzN4M3E3bElpKzhTYnNzN0RaYWZsa0VXZDJ2MnFVOW8xTzl1RDJrQXBiMGI4?=
 =?utf-8?B?SGR6dFhmZERRL29YVTR0UVFPUzkyNkdBeXdjZDJEdEtzRHhsQ2V6Z0R2QlJM?=
 =?utf-8?B?QnJySVdIMStLRzJCRXZheEs4RXYrZ1U5S21mSDFkQ0ZpNE9TcGFvUW5KUGdB?=
 =?utf-8?B?Nm5CdW4xZmR6MUljN2RRSUJ6MmVBTm55M2RmUHcvd1lHSVZ6NGFvNGlPYmhL?=
 =?utf-8?B?YlZVS0UxRzN5NFZvVUdKcGhPV2FxMWxONE5lM2JGdFpWZmc2eUx2ZjJjcW5y?=
 =?utf-8?B?WEpNZG1qSEZPS1d5RDRzVURWNld5NW9tSGx0QXdGVnFxM2xtaUFrc1ZaSGJV?=
 =?utf-8?B?VzJHa3NCd2lwQWkrTTFENEIyZDVxdmRlUTNrY0VWL041UXpQMGROSXV1SEJh?=
 =?utf-8?B?S0VGdjhocnVWVUplQjdVaEw4bDhURHpGOXFaS3kzTXp4OVpUN2lDT015Mng3?=
 =?utf-8?B?NmdRQUgvRkdKYnZXek45RFYzM1V0dUNOZ0dpVTJRN0JsU0ZsbklKMU90akVN?=
 =?utf-8?B?YzFCcW9mRnpQQjQ2dW5IV2pFcCtwZWZaZi9iOHdJazZUS08rRXpTUHpDVzNV?=
 =?utf-8?B?ak1CaytZOEorWVQydnN3M3YzWjFab2NuMFhaRW43TVpvWThyWG11ZENoL1VP?=
 =?utf-8?B?TzN4UUhmU2hhV1Y4KzFRR2VCd01nOFZKblVrUEdYL1JHQzVoSUNYdjFJN2RV?=
 =?utf-8?B?Z2ZwNmN3TVA0VVJacVlKKytnMjNGUUFyU2pRQm1sYnNhL1NUVDU0clhyWGpO?=
 =?utf-8?B?dEdJUEY0UXlBV2g5L0V3Z2Nwamx2S1BtMG9Ra1VDQXhWM0ZJYU1mNUQyRlYx?=
 =?utf-8?B?MlkrZVYwSTF1QWJNSTh1WmJOMVFwOU9GZHJQWlFoNXcvMlNqMzQzZ0pya3dM?=
 =?utf-8?B?NFVma0lsZ09kVno0a2ZmTlUwV01ubVY5WGxvekdENDNHZVNvN2c2MEQ2VFVZ?=
 =?utf-8?B?c0FrSXBhSHVUQjhpVm9XR20wcVp6MndyUi9Jb2prRXFYeUxxNC9VbWI4M0lX?=
 =?utf-8?B?OFgvTE1LWFllbHdFbng1QkRqeWNDcE1sS2dJZmVBTEw4bjgwS1dIcm9rMmFZ?=
 =?utf-8?Q?g7ut55OnBuI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STBIZDUyRXJ0dlFCZXI3ZTBlOGRJVVdSNjhoTUtEdmtTN1F0Y3BIY3NtYWV0?=
 =?utf-8?B?WHRsVkN5aDJndGhJWE1wYWdtRUN1bUpyM1JtVGFvYS9qdVRzU1hrc3Rrb1Zs?=
 =?utf-8?B?bWZLWVh1K1VxRVhBV21TczNwUDY4YlpnZC9hTGlVRTU1blZHUmdGaE9ydWFl?=
 =?utf-8?B?akNwWXZlS3VLQXVXbU50REwvS0lXV1IybmJsdHlnV3pxRlR4YmJnaEFSSWNi?=
 =?utf-8?B?L0NFQU9JTXM1Zm1laUs4eU1oTTV0Z29WVnhONkwzcDkyM09Gc0FGOUxSWTk2?=
 =?utf-8?B?SDBmbFdZN3FVTW1icEoyczkyUmF3dWlVdkxSRG1rU0xndmZRUWIvZytjcVM1?=
 =?utf-8?B?bE5NdkYySXpQaHEvKzNyTUQ1OGdUMUZZNHJFbmF1WE5zWjJ2Y0pzQ2VQK2dU?=
 =?utf-8?B?MFQxUkRIMzNwSFQvTXdOV1Q0aDFIVkFHd29CcU9mbkhhZ1JOR1FrYmppYTV5?=
 =?utf-8?B?bndlMnRZbVhGRkJnYlR4Sm1MN2xpYXVvNFZYbFQzNnNwTlRzZGdTR2lzZjFy?=
 =?utf-8?B?eElza1dzVFRCaUI0aHZVMTJTOUw2NmdjSHNrelRzUkFnZjBCclJXRkU0aGV0?=
 =?utf-8?B?TmlwQXFXUXRYbjVDVDJNRXMrVlgxR3ljRkV1cHRhUU03YlN0WEhCR2UrTDRm?=
 =?utf-8?B?WVdjZjBuZzJTb0E1em5sdTJ2eUJsMjV4WG5aM04zOEhkTWk1TlFlUkZnMEFG?=
 =?utf-8?B?Vjg2dHhTaUY4MTlxeE1Na0pwekpqRmFGQjVDdDhUSW1QcGxOU3JOczBISzRY?=
 =?utf-8?B?b2dxa1FVM0hTelNiRWpubHE2TEh3V0tjR0ZyZVRPa0kvcUVSd2twbEdZcU01?=
 =?utf-8?B?eVoveHhoeGVNUUZwWEtUUGZrOHA3L3FySmhmT2N3UTJQa3huRElKdXAvZnk4?=
 =?utf-8?B?c1ZsUFFGMnlRRk9FKzVTblFCbVNoQmpKeit5NVFuUlZoaFRMazg2L1lUNmFD?=
 =?utf-8?B?TW9rUW0wN3AwT3ZkdGQveCtDMkVvazFITTU2M0ErZXBWamtjbzJGbFJZbXJi?=
 =?utf-8?B?dExYZlZ3dWgzQVlVcm43NUxEVmFZUGRTd1F2T1pGSjRsdWsyZ3ZLRnJrWFVJ?=
 =?utf-8?B?Um8wQ2xxcm9NM2tzMnpidkt1WGVWZEt6bWRUS0lGS29GVUg4aWcvemFuaEJU?=
 =?utf-8?B?MmcrbkNHdFZ6WG50Y0UrVzg4b0sxV0VqM2tDbzdTQTZmTXVKeVJJRjlZYnZL?=
 =?utf-8?B?bXdpZWpTMW5INUVrd3diVXBUMzU4Qnh4Nk03VUxjRUkrZmhLTkUxVTNZNHZ0?=
 =?utf-8?B?dDMwaWhiQTY2YURQWXFWSExMY0pSbVRaUWpHUVdzYVVmR3BBNFVpUXlQYWZS?=
 =?utf-8?B?emsyUnZQSEJwa2g2dU05ZExIZVhLd2VvUDRqQml6OW9rWCtuM2xobSt4T1h4?=
 =?utf-8?B?bWhQK0J3NkNmOENnT3l6V0xwVStURVJ6aVV6QlcrWWdDRlZEZk1sME8vcjBH?=
 =?utf-8?B?UlUwR1NYMzFsYnFvUE01NzlPS3hiajhYRFVJeGhLelZEU3pVVFZVSzdEMWp5?=
 =?utf-8?B?clMyd1R1TVlRbUt5dWVqcExQd3NhUTRuTzluUVJ0SEpxZHJLdTc0WHROS1Fv?=
 =?utf-8?B?ZGh3YjBCUVdKVGVVRWk2VEFCd0NwZ2VGYmV5Q0tEVWVKb2pZWjM4aEpmSkl6?=
 =?utf-8?B?TkQ2SGI3QTdyejZkRmJndHcvVUNYeUFHSHBvWnRwZDhnazZETkg5ZWEzQ0VZ?=
 =?utf-8?B?WlhhUTdGdHd5SkZDK0lOS0NXLytGWWh3M0dURFFXSXNraFcrNnRPcDQ5L2hG?=
 =?utf-8?B?eDJETXlweWtVWHJFUEdROVNka2JWRUhndGZjWnZISjVrelNmcFFXd2lVZ0cz?=
 =?utf-8?B?WmtvUS9YWElHdHdCRTVKVEwwckVxK0wxNVNqb3VtSE4xL0FBOXIxZ2ZYVU5E?=
 =?utf-8?B?c3VuWlAzcithL0F4MmNma0E4THI5RE5ZNklERHpBM09BZTRvcVpETGpYUWM0?=
 =?utf-8?B?UmRjUlkyb0poT3Jqa1NSeVEwbGFoZWZVY1pseEZCYVMxeWhMU2hDZWhKK2ZY?=
 =?utf-8?B?WXBFcjhObURMQVFBY1NEOEd2a1NKL1ZMVU1XeURjMjZmSUFsWmhvNmkzZVdt?=
 =?utf-8?B?ZmtjSDJtcWhwa0RpdVdTNU5OVzJNYk54Rm9YQ0t3ZElVeTZMNkVQKzk4QXhO?=
 =?utf-8?B?QUtEa05IWExSR2dVdUZUalM0a1BRcDhxYmxUcHA0c252SDdmQ0owVmN6Ti9I?=
 =?utf-8?B?K2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c9557ac-14cb-4a09-bc65-08ddf6977427
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 09:40:50.9557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0wW/RAOd33H6Nd2FtxEUOt4En0dFeBBmaSTS8ZlHz/QQMbtj12uSa/V/egEI7JeswaXVlQPWzAPCgEvQZaO4ToG3raNFDHRR2EUKdJOAjR4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
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


On 9/18/2025 2:04 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> In order to pretend that ICL/TGL VRR hardware has a similar guardband
> as on ADL+ we'll need access to framestart_delay already during
> intel_vrr_get_config(). Hoist the framestart_delay to an earlier point
> to make that possible.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 18 +++++++++---------
>   1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a743d1339550..c7d85fd38890 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3891,6 +3891,15 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   	intel_joiner_get_config(pipe_config);
>   	intel_dsc_get_config(pipe_config);
>   
> +	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> +		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
> +
> +		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
> +	} else {
> +		/* no idea if this is correct */
> +		pipe_config->framestart_delay = 1;
> +	}
> +
>   	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>   	    DISPLAY_VER(display) >= 11)
>   		intel_get_transcoder_timings(crtc, pipe_config);
> @@ -3942,15 +3951,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>   		pipe_config->pixel_multiplier = 1;
>   	}
>   
> -	if (!transcoder_is_dsi(pipe_config->cpu_transcoder)) {
> -		tmp = intel_de_read(display, CHICKEN_TRANS(display, pipe_config->cpu_transcoder));
> -
> -		pipe_config->framestart_delay = REG_FIELD_GET(HSW_FRAME_START_DELAY_MASK, tmp) + 1;
> -	} else {
> -		/* no idea if this is correct */
> -		pipe_config->framestart_delay = 1;
> -	}
> -
>   out:
>   	intel_display_power_put_all_in_set(display, &crtc->hw_readout_power_domains);
>   
