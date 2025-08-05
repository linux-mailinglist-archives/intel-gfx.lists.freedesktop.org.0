Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7953FB1AE37
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 08:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0278C10E5E1;
	Tue,  5 Aug 2025 06:27:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YpBkfL/k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D169810E5DD;
 Tue,  5 Aug 2025 06:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754375276; x=1785911276;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7bxOWl0xXF/X6wR4uWD3X3cOnAuLRJMSg6oYP8XrOyk=;
 b=YpBkfL/k6byRhTQKnuo8bQ57C1voxySimZIXiAJVeY06uwUfesFscfX8
 ZnUjGi9vaP3GklOxqzqrgkm5YDZyF8Rzt59HqVBK8Nfm2Rmz+buMCaegz
 irjZEVN2no0EzqusTMgxX//s1Bn3Y4VG87IozZ7LKFUhUHFC2KwuRZwrl
 hvgcJ9Cle6X7bpfQ3RxtpexQuHKmDu2shWTtVGXmQnRbcj1+QV0aJ3cSk
 j4wMyk4Ek/exSwIbP3+0SdiHiqcKm6Srsua0N1BsMUsC9tJnuN/l49CYM
 jQP9XrvErVX0DysWdbbBA2xZhmB3akjyIuWm4uBJD6K7g5iyVo5Vvf9r9 g==;
X-CSE-ConnectionGUID: gd8WPB+pSOu9HelSOBviQA==
X-CSE-MsgGUID: HspZxZthR4irSOlv2tnJJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="79210839"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="79210839"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 23:27:56 -0700
X-CSE-ConnectionGUID: t52eqNGdR2CgLNObIJLmsg==
X-CSE-MsgGUID: g4/90dBZSvqU4Sp9V880ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="168555055"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 23:27:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 23:27:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 23:27:54 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.45)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 4 Aug 2025 23:27:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZtBiIENgR7eh7HcKsGeLds6cnqBMkr7zRzFu6h0teRpemHcMr+1M7YSzDmYPrb6p3qh8UrOvNa/1wYsFUsuUer3oQHgHKMoF4rqUefT/8fC0wSD532PTNlWNYlh5Z5U64/924j3bSeWNHW5s1hpVZLRaVSVQh6JUEkBPKE8oQZq5zkaCJrPd4ACqh1aiPJ+xY5zKk+ln/wbd//LV/AsLJAAcWJ1hz071pkLuBQaZfmMgJSR/UHgRqopE0bl4IyODdSU6yD7rQGFV4Cx64bJHwqZQIgIo/PwBhBUtiQ1nZilxqbuZUxeTwjiv1Iags8PmWUsyKmOebFlPrgen8Juc3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZahdDEahyT5fJNfL6lg26+zCiHBjCxXHto8hIKEZvUo=;
 b=KbTkMuabi9NphNxt5R/ueAdi12ECwd7k/gFh7TsjaUbIpXgdvFWKaRrO9OFyhO9IvknJeKR9Bsv2gcfkY/9Gu9Q/BCIsQ9g6+XiYIyhxVQtE3hWB68aMFQGJ93Vw1aBLj4Gv6Q0Kf0kEEcMa5mPEBqGZRjHSyD2uSzy0queVmR1N6WgYNDWv5TXwmDJtQSMWZZFSvSeTj86NxJjjSzKcZvJjGHbGxlG2T3PPpwNzZ8YZSOswppdJFReVMtUFndpfmApG7OXDtsvY++d4CkNJeNVvx1a4PKqONAzHD2+ZackCzowgjT84AyRj+T407BmUi+W8OG0Zp8utrJdWRtcyyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7089.namprd11.prod.outlook.com (2603:10b6:806:298::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.22; Tue, 5 Aug
 2025 06:27:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 06:27:51 +0000
Message-ID: <c8b29417-b10a-4b51-b439-4204e114e710@intel.com>
Date: Tue, 5 Aug 2025 11:57:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/15] drm/i915/psr: Add function to compute max link-wake
 latency
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
 <20250804132441.990441-8-ankit.k.nautiyal@intel.com>
 <274c7d61358d9355708971d66c444d4662851f4d@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <274c7d61358d9355708971d66c444d4662851f4d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7089:EE_
X-MS-Office365-Filtering-Correlation-Id: a1ccf39d-92d6-479b-a8e0-08ddd3e93437
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEFKTmJCMUdyOUw1YWJuUk15RUdLUlhoeUpKMC9DZGFXeWJvekhUaWk2ajNJ?=
 =?utf-8?B?WnBDZzFaM2VTMDdOWGJYMk5oaHB0ODl2YjdYS3Y0VzZ6ZW1NdXBVUzRmaFJB?=
 =?utf-8?B?TXR3YVRpb3J3dDBiaUJlYVpsMXhtQ1djeHdjZEVLb0lFYjg3MmFlSHZqQmw1?=
 =?utf-8?B?SmhLd1ptZ3N0R1gvWm93VEdtbnZ4WHc2SVNKR2owUXFBRjVwNEV6OTMrZFl0?=
 =?utf-8?B?Mmswam4xOGhFQ2RlK1lNSHdvRVNjK2ZaM1RqSklwVDAyLy84VE5BYzFBYUVI?=
 =?utf-8?B?clluM0EvVUpKSWg2ZGg3RXl6S3k5T005Ykw5QXZRaHlXSGZZZTc1YnRBQjlO?=
 =?utf-8?B?U2s1c2txMW9abW5QbFEvSHZBY3luYTRtaE0zODM1RFhpZmYzNkp5ck9mcmtF?=
 =?utf-8?B?TkRCR2R1ZURGeWFobE9VdFdCMEErZng4ZDJDREsxS1c5eTVERjNHNmJySmhy?=
 =?utf-8?B?Z2dyak5VVGJSUGd6elFCU25qNDdYc2tRK0ljWTVPWWx2UDNnVzZ5R3kxVVRw?=
 =?utf-8?B?YWwwWEJOaU9RcU9LWk5qT3VKMG4rNVNXN21GL3V2akhTMXVSTDFnOG84Ri9t?=
 =?utf-8?B?NVdtTVA5QmNzNjlTRTh2RTh3RWhFZWtzUlZJSk8zS2h2WlU0WXY5VDdxWG1P?=
 =?utf-8?B?MG9ac0tmWXRCaERHMmZmVjFtMCtCZC9vdEhnTlFpRHV3WXBqYVYzWUI2aU5E?=
 =?utf-8?B?dnVqUUx2RmhDdlR6eEx2cHVadzVFV1pFQUEvMHVualY0OWs0c3hBVEdhUDFV?=
 =?utf-8?B?YnZYcTN0OEQraUxUNmpKeG5RaUlJSGJDMktnc0ZQK1FQdkJhZmU0UmpKV1RR?=
 =?utf-8?B?bWZXcjJXLzc2YjYzdW11amRoWWNGTUVnRkRrNVZORGMwc2RaTitvaGMrcElC?=
 =?utf-8?B?NDYwQko5bEU5Rk5JZG1TVTBLM3BzVU9uTkdXMW9PUDVLR1E4ZnFLQ3MvaHFU?=
 =?utf-8?B?L1BvM0dOV2h2bHhWNllZb2R2K3B3WkswZVhBakhhQ0VaRTZMVWtyNFk1SElM?=
 =?utf-8?B?OWlEcHcxQVpLQ3NzNUN2ek9Wc1JPd2ZtbnlLN0doU2RSZG14VldEdmh0RXlJ?=
 =?utf-8?B?WTh5aHVTOEpiRi9JQ0dOL3RNRVFEL0FFZUpmODZRTTBCTTlHZTlOWEVRUWd4?=
 =?utf-8?B?aWlMWTQ4cnFSL3BLSzdLYzl6Vmc1SlJDRTJHVWtMNGNYbmNiekhSVUU1R1o1?=
 =?utf-8?B?WHZQTmFuMzhOZ014cGsva3NQOElvaWVIWFpxNVMrcFI5cU1jUCtVRStHY1lF?=
 =?utf-8?B?a1VTbkVlaVFENHRFMFE5c0p5a2U0TE1oWTZmM2dvTG4zSFVXL3JsSkVzQ1N2?=
 =?utf-8?B?N3h4cXBaMExzazM3NkhxNWZCd0RWOXZWbkFmMDZ1RFZ0enNGUURSQko0S3lM?=
 =?utf-8?B?aW9XTG96Y0tIblVJZVozRWZjVmdwYTArazR1ZUw4RmQyZEt4K0VOczduc04v?=
 =?utf-8?B?eXFnM3hDMWU5RFY2Ryt6THYrV2ZaL091OGorUlM5OGtubkFLMDJOaTNtU05v?=
 =?utf-8?B?Rkd6VHNrcWRTOXZ5WGZVVzUwVnZTb0xneVhsT2w5QkZBZlRycGR5SUdDN0Jy?=
 =?utf-8?B?TEZLOHZxVnZ0cGVNa2M4TzlRNmgyY3VlKzA0eHArbzBaOHBHam42YnRMVlRX?=
 =?utf-8?B?RXZSMVN0M0ZoVms5V0gzTTNRY3hQUnNsL21SQ3drakk0cmVyRnFxT1ZMeGt0?=
 =?utf-8?B?cDBnM2dYa2plSDZpREkyVnFacDVZd0x2cVFQUVoydUEyejF2VHhlT2NLaW11?=
 =?utf-8?B?bjhkWXRnOWRJZHh0QVRKUDhWM2tBRXpnS3VnZEtReUdEQlFKY2Yxcm5mWStD?=
 =?utf-8?B?aFJlWHh6TzBWMzdWOUxkdGpyRnlHRDExa1JKaDczcUdXU1VhMHhQelM3a09L?=
 =?utf-8?B?TGdRZmF0aks1aVF3Y0JXN0M0ZFEwV0c4cEpZdXp2QSs4aEZjV01lZ1ozUnNM?=
 =?utf-8?Q?TvEVKgh1c7Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWgyUWRNWTEwY0xNYVp5VjdweFZXQ3FtTjZSTEloSTJvMC85QitlRXRqa1FM?=
 =?utf-8?B?YzJuNXNxbi9qUHdJODl6WnVSeGlleVp3MkNJbk9neThnVUFzREkvaFNWN3l6?=
 =?utf-8?B?WHE1eUNYUHNjNmN3c0JScHQxU2drUE9ZL0FiNWFRd0h6eFFqN253VzJabTVB?=
 =?utf-8?B?cVVDOVg4M1luVktaWHZsaTNLVDNJQmZMMUZtTk1uKzhRL3NOOFpuV2h5OFdl?=
 =?utf-8?B?WUoxelR5eUJyQUpHUUhWK3doaGE1UlU2Y3J0ZGlURkduZXNhaWtId0FIQUl6?=
 =?utf-8?B?YkhNK1l5K2NGeVVnMVE0UU5oVW5FMDJHZDE4VytNN0FCZGlRQk1acHB1dnBJ?=
 =?utf-8?B?MXlwMDdtRzZzSVBxQ3pBZ29CZUtnYTAzR3BPTTZUam80cW1kQy93aGZvOVlw?=
 =?utf-8?B?eWZSSHhtOTM0SmtzNUcvZU95c01JVU5OeGxleTdsZTl2QWxKcVFNakJ1YXpP?=
 =?utf-8?B?dThNejl5NmhyRFVFY0RZcDgzdWp2Mm1mR0FCRjBaellzK3RqUCtMeWtVTGpL?=
 =?utf-8?B?Tzd1by9IdTc0K0lTVWJuMzBlS3cyZzVBWTFINkV4K2xIUldseXNaZnVvaU40?=
 =?utf-8?B?eEF5bDlDcFYzdmhtTWdteFhWRUZnVDdETFlFbzdMZjd1TW5rbUNSY1BPQS9i?=
 =?utf-8?B?MzY3dEVaTVluZHI2L2ZwVVQyckZrM0ZIOFE2YmwrRUE5MytSZ2FKbDVWTHQw?=
 =?utf-8?B?elZ0Z0laM2V6YmVJdmhBUlYxeTNHdFhuZ25BcjJsYW5yenpZRVplekhhUDBo?=
 =?utf-8?B?S3FrekpvNExkQmQ4VDRYUitja0hhQVZoeWREVm1xYVpuTTRxRlBVSlFkbXNO?=
 =?utf-8?B?bkhGNnU2YysxclUvU2FDQnEzSGE1OUlLQ29US3pDU0o2TmJwUE9ieTJPTlZ2?=
 =?utf-8?B?bVdYT2J6RExPRW9rZVU0cFFSVGxVaU0vY0NLYmVNY2dKWFdGWmZQTkg2S2Vp?=
 =?utf-8?B?THdFR3Iyd0wzOEhuUXFoeXpFVnpGTEowYXRFZUxFeXI4UnVZYWZuWTZJVWtz?=
 =?utf-8?B?cEdYL2IzaHZlRG5ZWE9sYzdSTitsN2NPTlJJSERkeUNuN2tsYjg4Ym9NTjBS?=
 =?utf-8?B?c3hxZFg1QTlwYnE2WHpHN3VaOVpKZTNYdE9qVlc5bStsR3o5Y1hpMVQ2dXJX?=
 =?utf-8?B?MWk1R0tOSjRuVEZFaFFSOEpqbWRDREN6bUNSQlpJZCtiRnVuNUtvMXpYNmtH?=
 =?utf-8?B?WFV3Y2FMOGRzYjFtVjdDL2N6bmZuZlgxTHBBYVgrMUUxb1FiNzZKR0VKbHg3?=
 =?utf-8?B?bkIyMXNrekJBUDhRWFdsa1I5YzBtQ1ZqQWJ1cGpaUHk2TFBIeEdEUTdVQ1M5?=
 =?utf-8?B?Q2kycWNnVzNmZFpzRVlpcExmWGJEWVNhUzRyaFVYOUsvOWtoR1lOTkRIOHVD?=
 =?utf-8?B?NTFvelp3dUNUZkhOMHh4QUlpclhhTjBaZGhhQ2x2S1kraHcxelQwUUZzYUxx?=
 =?utf-8?B?SFZqM1AwQjZ1N3d2eW01Z0k4VzQ2aTRPOHhPdUdRbS9ocHJkUzBzeEwvN2cr?=
 =?utf-8?B?TkUvQ2gxUHl0aXk1THMxeHh2K2RxWkJGbU11dTNQWCtSY1VCR05zVllGK3h3?=
 =?utf-8?B?M2p3K002NXpqN2QrRCtJZ3A5OG51aG9MSVVQQ205dHZSdllRb3pXaU1IbXV2?=
 =?utf-8?B?VGFSRlEwT01OdnZrbnpWSmkzU0IxTVVOWjlPZTJtWG1IaEttdldJRytZVjk2?=
 =?utf-8?B?V1lrTUtnM0JUODZTdzRCS2NySXBjYmFWWlZGS0xsemZLdzdYQVRFaXFkY2pC?=
 =?utf-8?B?cTdKQlBrcHRnZS9vN2FYZWxEbHhMWEtGQ1kzZy9uMm5rQnFQUHFYNFU2cFYr?=
 =?utf-8?B?a2RnUURtZjNYbHZBWDJ2UUcvbXo3eUNsUm15eWtvNG5OMmx5RGJzdTRGSVhu?=
 =?utf-8?B?cytaa2VyVUowak5Hb3JEWHNQZk8waFlHK283ZFlFMjMxT20rbnhIdmtBNFYx?=
 =?utf-8?B?TCsrU3cvcGxSL0FlYWk2RGNSMDJUaUxhZ1o2bVVXNU5KTWxCb1FmSHltcXJ3?=
 =?utf-8?B?V1kyZEJiTDFKdUxEaDNGMG0vVytLMGtyejlNQU1DQ1lHd0VLVlF3NTI1bFhh?=
 =?utf-8?B?a3A2bkl0cnJkd1VWVDBacmxiaVREaEFjeWp0a1JGWnBtN3g1eGpQMEFoUDBS?=
 =?utf-8?B?ZzVqQ0czWVhuR0JSbTFuM1R3cThnNzhVOWVMS1FiT1QxdkUrTHhwSTFlWXJx?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1ccf39d-92d6-479b-a8e0-08ddd3e93437
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 06:27:51.7105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zISyeL3QXrJpLvM42joeFWZl22D8ldW91WsYXYv1x/PImwEHtynC9bxU1Uat10b1cqOcOo5U+VKnkDXIOgizGiX7Hj9LbrexuNjWCjANK/c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7089
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


On 8/5/2025 2:24 AM, Jani Nikula wrote:
> On Mon, 04 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Introduce a helper to compute the max link wake latency when using
>> Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.
>>
>> This will be used to compute the minimum guardband so that the link wake
>> latencies are accounted and these features work smoothly for higher
>> refresh rate panels.
>>
>> Bspec: 70151, 71477
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 64 ++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_psr.h |  3 ++
>>   2 files changed, 67 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 6bd3454bb00e..6cdaff3ccc9f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -33,6 +33,7 @@
>>   #include "intel_atomic.h"
>>   #include "intel_crtc.h"
>>   #include "intel_cursor_regs.h"
>> +#include "intel_cx0_phy.h"
>>   #include "intel_ddi.h"
>>   #include "intel_de.h"
>>   #include "intel_display_irq.h"
>> @@ -4249,3 +4250,66 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>>   {
>>   	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
>>   }
>> +
>> +static
>> +int intel_psr_compute_aux_wake_latency(struct intel_dp *intel_dp,
>> +				       struct intel_crtc_state *crtc_state)
>> +{
>> +#define TFW_EXIT_LATENCY_MS		20000
>> +#define FAST_WAKE_LATENCY_MS		12000 /* Preamble: 8us; PHY wake: 4us */
>> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> +	int aux_wake_latency_us;
>> +	int io_buffer_wake_ms;
>> +
>> +	io_buffer_wake_ms = intel_encoder_is_c10phy(encoder) ? 9790 : 14790;
>> +
>> +	aux_wake_latency_us =
>> +		DIV_ROUND_UP(io_buffer_wake_ms + TFW_EXIT_LATENCY_MS + FAST_WAKE_LATENCY_MS, 1000);
> See https://lore.kernel.org/r/eeda84457c813151a3459a46a91946b4fbbb9e44@intel.com

Oops! I think I have messed up msecs and usecs in the calculations.

I have realized, part of these calculations are already there in 
functions in intel_alpm.c which can be used here.

I will correct this and rework on the patch.

Thanks Jani, for pointing this out.

Regards,

Ankit


>
>> +
>> +	return aux_wake_latency_us;
>> +}
>> +
>> +static
>> +int intel_psr_compute_auxless_latency(struct intel_crtc_state *crtc_state)
>> +{
>> +#define PHY_ESTABLISHMENT_PERIOD_MS	50000
>> +#define LFPS_PERIOD_MS			800
>> +#define SILENCE_MAX_MS			180
>> +	int linkrate_mhz = crtc_state->port_clock / 1000;
>> +	int clock_data_switch_ms;
>> +	int auxless_latency_us;
>> +	int time_ml_phy_lock_ms;
>> +	int num_ml_phy_lock;
>> +	/*
>> +	 * TPS4 length = 252
>> +	 * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
>> +	 * Number ML_PHY_LOCK = ( 7 + CEILING(6.5us / tML_PHY_LOCK ) + 1)
>> +	 * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
>> +	 * tCDS term  = 2 * t2
>> +	 * =>tCDS_term  = 2 * (7 * (252 * (10 /linkrate))+6.5)
>> +	 */
>> +	time_ml_phy_lock_ms = (1000 * 252 * 10) / linkrate_mhz;
>> +	num_ml_phy_lock = 7 + DIV_ROUND_UP(6500 * 1000, time_ml_phy_lock_ms) / 1000 + 1;
>> +	clock_data_switch_ms = 2 * time_ml_phy_lock_ms * num_ml_phy_lock;
>> +
>> +	auxless_latency_us = (LFPS_PERIOD_MS  + SILENCE_MAX_MS + PHY_ESTABLISHMENT_PERIOD_MS +
>> +			      clock_data_switch_ms) / 1000;
>> +
>> +	return auxless_latency_us;
>> +}
>> +
>> +int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
>> +					    struct intel_crtc_state *crtc_state,
>> +					    bool assume_all_enabled)
>> +{
>> +	int aux_wake_latency = 0;
>> +	int auxless_latency = 0;
>> +
>> +	if (assume_all_enabled || crtc_state->has_sel_update)
>> +		auxless_latency = intel_psr_compute_aux_wake_latency(intel_dp, crtc_state);
>> +
>> +	if (assume_all_enabled || crtc_state->has_panel_replay)
>> +		aux_wake_latency = intel_psr_compute_auxless_latency(crtc_state);
>> +
>> +	return max(auxless_latency, aux_wake_latency);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
>> index 9b061a22361f..c58d29620b49 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -81,5 +81,8 @@ void intel_psr_debugfs_register(struct intel_display *display);
>>   bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
>>   bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>>   				   const struct intel_crtc_state *crtc_state);
>> +int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
>> +					    struct intel_crtc_state *crtc_state,
>> +					    bool assume_all_enabled);
>>   
>>   #endif /* __INTEL_PSR_H__ */
