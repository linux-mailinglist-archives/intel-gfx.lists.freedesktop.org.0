Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D029D0A9E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 09:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 316B710E32D;
	Mon, 18 Nov 2024 08:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bm4xnmxi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC5D10E32D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 08:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731917279; x=1763453279;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0PmPv4qGhUCf2YITjqnODUkKfB8G2yOFR964z/T94PM=;
 b=Bm4xnmxi6gEgxVyYhP1njq6Zyix8OSVYA3YHu596LgT1tqvXxeEzE+0k
 vo1LrSVNQ4eNzIaBu8Iix6SwXEcrMlC0DOknIq/DLzFIwoJAlKhL8VvnG
 /VaeMmvPBW4Jiq7C27ATosT1Vf4kjLZcE2To3zux5PYY/hAGMlZW4SMTN
 NQM8DtirWRbGZUcGXx3MY1Rx4xsLm7fVyL2bWHoScHf0mLdtg56RaNwfR
 xFiMkPWfnAj7aJyqNKkWpHSNMwAZXM5wldjXQTtD8zcfbAoeHmska1I7a
 lF9Ojnu3gz8yKCwDYpTKU750uNoccGkV663uhUuWAMNFhE6tbu5W/Iqt5 w==;
X-CSE-ConnectionGUID: aWwyCJ5iQVqf0R7t+We18w==
X-CSE-MsgGUID: q/i9lzIwSbqeW89q1JGe7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="32097272"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="32097272"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 00:07:59 -0800
X-CSE-ConnectionGUID: fA6WIMoRRiWjxnEFWrtqNg==
X-CSE-MsgGUID: cqbxFR2gRr+8vlNF/ax1rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="93223087"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Nov 2024 00:07:58 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 18 Nov 2024 00:07:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 18 Nov 2024 00:07:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 18 Nov 2024 00:07:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MswOKaTbWEq+bUxZWshCdcXIEAcIyS+VyRctcPtTM52taC3ox2+DCeaBK8tffh8snONsbH6scx3dy3m62wBG+29qetZtFCQqgttJq6qKgWjRok2+EhY0JVAtcTVLb/JLqGmmcIKr0nzN27y/x+AcXoXxdzIxulCyZcZ/1dTIBVj2ktZRHPGC4rE/imqr2C0LNwFwhn2jqw4LJNqfqRU70SmWMre35Rsg03rYMgWhXvFXV6vpuLlksBpEFxDua00NIEXuq6iEnGfdZFTu+8c7kG4bmZvazP4glwVVpbPTOKA6v8K+an+KHQpnfctu47Kr/iCuFSoKO7aePV5Il27aUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1ktXRemp3w40vQxedFkHTqxJcOKACGekfAGdesIINQ=;
 b=E4V0Qk560sn6h6qqhpQJG9ng2MOqV7fjKU20anKjH/MCIzGl6CqujhVKK75oUpOOrn+uWZCAV6rCcPuW1eklJKZc5jEWcxihSzg/fecK/CvmW2pOxZn5cTMg/xpAFzr8K/m5D5Tv9PpxHWryZUPXy9mnrkgwZxvNwPmqxmubJSKcRoYxFRuYCGkuuc2FUdCwEFJ8G6PR7bAVgP+RVxj1r94efcTRcoOFTHOsnXBzNn7tAlvUtzsL2p61Q1Ijs/gd0Nhun/A0pkmQT0KYXZJWRsK22ocT1B7vuEZ9g5MnRuJsAQYo0H6AYLc2qqCMv+xS60/rIcgOXjoEIne1PQNGEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5209.namprd11.prod.outlook.com (2603:10b6:806:110::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Mon, 18 Nov
 2024 08:07:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 08:07:53 +0000
Message-ID: <bb09d2f8-d1a3-4c34-8a38-f59088f5a299@intel.com>
Date: Mon, 18 Nov 2024 13:37:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] drm/i915/dp: Compute as_sdp based on if vrr
 possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241021105100.2861830-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0140.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5209:EE_
X-MS-Office365-Filtering-Correlation-Id: 50dfdd46-2a05-4e03-fbcd-08dd07a81a29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWNmSnptSm9xQ01aM1p6M0RQVE9ITUlWTDhud01XL1gvTmFvU2g2UUQ4OVU1?=
 =?utf-8?B?ejJjYnVSclNBQThmR3B6Y3RSZHQrOThXeFZ3YlplTElzeENwbDNYcFdCUm1l?=
 =?utf-8?B?OHdHVDJ1Yms2Q29NU1BubDQxQ2pPbWhCNFdBTEI1aTRRaWpyK0wrMjU3VUpy?=
 =?utf-8?B?Y3JCcndRTWVESUsrY0FhRjVidDNIZmd4Tkp5aW0wZndQM09NNExOYkRUR1Q5?=
 =?utf-8?B?eVRoRkNON1kzWG9wNXl5NXRGM2RZSGRCQzNMSW80eWxUWGVMUXZEOWRoVE1q?=
 =?utf-8?B?OThRdWdHOFpZL1lGQjJVbi91ZmZUMUFzckJTdUNFbDk1YTVySFoxSjZ3N2lZ?=
 =?utf-8?B?Y3ZxdFRNcEh5QWoxb0pWSDVZVGRNdW12MmowVndQcmZjODRBNk82R3Iwd0l0?=
 =?utf-8?B?eUNjeFZpZGIvaXlCQkpuTlZQTTI1ZTdkOThpYlpRY1VGNXZqWnNTbVJKKzg3?=
 =?utf-8?B?WDFCUkRhcldmWVkxMkxkR3ZYTi8xSHROazRLUHhSanZkUllBbXJMYitJcjFW?=
 =?utf-8?B?NWZLL1UzZjRDdjhONGFqdjR2WEFtRXR5NDNxaHhqUXRKSS9NQ1M2ZlJNWGl3?=
 =?utf-8?B?TkdqY3pkNVB5YktXNlRBRjZqdm5QQ3lFQmJuNWU5N1NqZEFCRmlyTTJlVTVP?=
 =?utf-8?B?THZLSWxKSExsTUYrUUFpZnlPdG9oSk5JaFBSbXBiTXhkK2pNZmQxRC84OHZk?=
 =?utf-8?B?aGErQzk5RGRpMmIrTnlFS3plVjMxWDZzd0dvMkVlMERwSyt3NllkZzJTSWFO?=
 =?utf-8?B?OElKeHQ4bjdEWnVGQnM5R1BYbnNBeHAwMmtkRnJjSFBDSFVIOG5ZMEk0L2hk?=
 =?utf-8?B?dmx4S1lFQndKa253SEk0Sk1pTis5V2NkS3lCY2E0UkNSM0RWK3owYjhxb3VG?=
 =?utf-8?B?ZGQzRmM2NWw3M0RLeHU4QUlXblZOS3owQ0xlaHRlS3MxRmNGWUJXZU5VV1JP?=
 =?utf-8?B?c25ycHdnSVRoRkZFTlJrL0ZqbGJ1LzVWMHFQL2lTUm5HR0xrMnI4SW9oMDhX?=
 =?utf-8?B?ZmpYRUJ0MkFOWUNnV29sTW1INFcyaHUxWTJqSjlKRHR3OCtBbzBKQlZrWnNw?=
 =?utf-8?B?cHg1cHJ2RVl0MmFseVJFem93UjZYMFcxeU5NcWtVTHRjOG1kM0JWdE1NWVhU?=
 =?utf-8?B?SzllYnUyYnNHTk9EbUNIRWpnbGR0WnRPd3lrQkRaalFhYU9GZE9HTSt1dkZx?=
 =?utf-8?B?T3BHSWVvRWpxaElFZTNXTC9od2l5M2ZDUzNRZEE5TTZCdFJjTzQ5dThqenVu?=
 =?utf-8?B?Vm5nTGp6cmoyNHZFTExWTjZpejRSZitXV1FPVjhtbTRRYUhNSmtIOXk0aDZy?=
 =?utf-8?B?WUEzSXdwNkJrQkJjVmNqS2NOd1BtTG1zWnBlNGZCQkZ4RjQyQ3pmZjh1bExa?=
 =?utf-8?B?RDY5UGI0eVErTlNxTVNzQ3UwNjdYejY1ampwRW4vL3B4b3JVOXlib0RrUEo4?=
 =?utf-8?B?b1ZOSEgvNTlBbWpLTUlZVTFQdDJZdFA2d0ZYL0ptL2dVdnh0WUs5ZkJTT0g3?=
 =?utf-8?B?b1BWRDNRTlhveEsyK3BlZTR1WkFxQUI1cHE5RGhGQUtCbVIyMzR1ZEFURDV2?=
 =?utf-8?B?WnI2VVJUcHljNndPZ1lVdTJuay84L09GYVBVa0EvVjNxRXgvM0EzRFhLSXhz?=
 =?utf-8?B?TGYwaExXOWs3VUt4Y0VUM1RiSWFuakZKTmMrc21TeVdlcFZtUTBWQnZ0RFJ4?=
 =?utf-8?B?WWFWbmo2N01tVHFSa1NVMmRMVmdCcjZGYnZDMmRMMVdFYXdPeFNGQmxVcm5w?=
 =?utf-8?Q?fzIT5FaANc2ogpxhpmtXRJ4uykDglQxUQN8/Ia5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGw2RjROaVJuYVpyZW9pd3JlSjYvbEpBNVBQTFFnNys5OEdGeTBMOUczY3BW?=
 =?utf-8?B?cU5XWGJBZSttOFQwNy9jTkdPaDQzN2RsWUZuWDJlcjRCb1JaZmJocjc3RVVI?=
 =?utf-8?B?d1FTL291UER2aElhSTkwYld3dWFnOWR4ekZGdW9mWmNoQ2pwbURUeVJBRDRX?=
 =?utf-8?B?RUs5RFBHY2dnWTVETzZwMytuL2xORWxLUzZXbnRhbVJVd1puV0VENnp1eXlV?=
 =?utf-8?B?SktiZDI1UnJJSUtOUWpCZGhKQldSL1FETEIwYWQvb0EwbVpINGZuOU9lYit5?=
 =?utf-8?B?dThEZUpvRy8ySno0bWttQ2k1NkRUSEcvQUMvZGdWQ2xvZldYZUUyd2FDRUty?=
 =?utf-8?B?NmVPY2M0c0RxaG9BTjg2SFQzRkN1Q20rZnQrcnZPUjBxdnFFVXFFVFZEY29p?=
 =?utf-8?B?ZjJja2wwMWMvcEUxWXR5R2RqSWNDUHRaQWMxRFBScHB2MGp0cG05VDNHZjZu?=
 =?utf-8?B?OHhTb2k0dDVWOGJyUk9kc3B3RjNrcGw3VEJ1WkdERHdHeHNVdkszTEZnZ25J?=
 =?utf-8?B?eFdaRTR3eFpBZGk5a2FCZ0lDMHZMRGlsTEgxN0xpSDd0eGZmbVJkZkRmK2tM?=
 =?utf-8?B?TVM0a1orKzgwNGJ1Y1ZVU25LeENJTWJ2dmNOWDRzWkc3U2RDaE1uMEJvNTdx?=
 =?utf-8?B?eVdxOEc0WXNqNFRNTXBDeGg0emRSSUd0UHFQbTlNRG9MN3FaMGh5TlN1QmlI?=
 =?utf-8?B?NFl5MVhxNEdpVEZwRDBDSVFJY01HdDR2Y3pVMys1VUJFSThQSC82WVlQZmw1?=
 =?utf-8?B?VmlmYmd5dnkyNGg0SExBRDBQZXNSU0FlMmpKY0ZnRzNhYUVyYmM1a3FUZUU2?=
 =?utf-8?B?QlcvUThTMGVlRW5HUmcrWnZjOEc2L1BYNGcyNElRYTFVM2sxWkxjL3JzODVJ?=
 =?utf-8?B?WXNXU2x6Qkk2cTNIR1RkZEV0K1pBODlhWmIvZGJadWtWUGhBaU1Ddyt3UmFM?=
 =?utf-8?B?dUJKcklNNGhuUUFVZlo1SUFoejRSWWh4V2RkbEdyeWpUZ3RRaFlDZHIrbUp1?=
 =?utf-8?B?ZFVJZlpjYkNSanc5NTVJSE4zc1U5VlcvVW4vQUNvclhQdFA0aWYrUTA0b3hB?=
 =?utf-8?B?S09BTGZ3LzZrdHBMTzhMcEl0WU1oWG9jTlFjdkNRbExmd2orYXUrMThrQ2N3?=
 =?utf-8?B?ZHdhcysrVjMvNzdOM3JGck1vYTltMDNFdkV3aFh6SUJvcVBEU1ZBaWZwcVVl?=
 =?utf-8?B?ZGo1eFVjZzk0V0duOEQ5dEc0bjlweVdUZnNtY3RwYkJmV3BtaGFJalF5NGho?=
 =?utf-8?B?bGx0MTBZbUVzTG5INFlWMVBDcVYycjJsRWZXVkJ1UkRkWUlCWkpEWFJQLzlQ?=
 =?utf-8?B?dGhDb1ZTUHd4ajk5VVVYLzM5b3k4R3htREZaaTVGdnBFajlTZmYvcUZ3V20r?=
 =?utf-8?B?eVJkM3pWdDRwb0ppcE1zOTVNREc3ZkNsbkxkK0w3TVRTUWFJUjZJQ0JDNTNY?=
 =?utf-8?B?WXdmSHJWVkk5NUVaSkY4bE1Bck1kUU53dXROaUhGKzNUekcvWE5lcXFNeDRa?=
 =?utf-8?B?Wjl0WHIwMWdrNTJmRUxmT3A3ejNkT2pGZ3BSM3ludjJkSTMvWWhaUWhmQjFr?=
 =?utf-8?B?U1QvaWhtYkh0RjJJQXg5SENPcmpjcTNkWHp0VDdLRXNPdTZKUGlHd29SczZk?=
 =?utf-8?B?YlBFZ21IL1YwYWx4bzc2aTQzL3F1Wm91OERnM2Q4bTZXVUFuLysrR1ExNmxM?=
 =?utf-8?B?TXVvZWJoTVNqSFlTNnByRWpuZXFKa1Zoc05nL0cyaFBwQnRHd2ZlV2hjdXM2?=
 =?utf-8?B?cDhTZzNzTE82VnhOekFMY3NuckU2cU9CTXhKZzBOcG9uZHZNcUZ5T3lzamdY?=
 =?utf-8?B?TmlXZHlNM0ZabmcyeVRJeTQzY1BINHI3VUdpZ1c5TTVETGRGdW1UQ1JiUG1s?=
 =?utf-8?B?U0RBUE9hRy9wNjM5dko5QUE4NDg2VW9JVVp0Y2pOVUlnWVF4UFFNeld2RGhK?=
 =?utf-8?B?VUNDUDczcVNGVEpzMlJwRTFzUlBEOFdCdVRPWk4zSUFOUllPWWF5N3BKSmdE?=
 =?utf-8?B?UEszL0hHL3NnZUdLQmhWWUMzM3ViYUpCU1ZpbHJBVEVrdFZpVDQrQThLM01m?=
 =?utf-8?B?OUNTbnhwTjNVTEl4OTdiMEc1UGFvTm1vVzNqMEI5dmRYQVdNZVc4b1B6ODVK?=
 =?utf-8?B?Z2hmTzFqS2wyTlo3OWZySVd4SzZ5Ny9wV0JtOG9Qd2RidEJtVVV5QlQwTVhn?=
 =?utf-8?B?THc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50dfdd46-2a05-4e03-fbcd-08dd07a81a29
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 08:07:53.2363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XJcKM/Ozq2nUMnPO/0teH9JaY576bK0L3p06XcY7l4Eb6Q7jMYwmu0htim3/5Hc5wDZqS0HzOnZ8X1Dq9jNkV/gl/HNiG9NcetTqt2LjVU4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5209
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


On 10/21/2024 4:21 PM, Mitul Golani wrote:
> Adaptive sync sdp param computation, specifically minimum vtotal is
> blocking vrr enable and disable fastset requirements in certain scenario
> i.e. during null modeset, this minimum vtotal we can configure during
> full modeset as well when sink is having vrr support, where it doesn't
> need dependency on vrr.enable status and can also match vrr
> enable/disable fastset requirement.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b1f68fff524d..0fefe6f16257 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2769,7 +2769,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> +	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)
>   		return;
>   
>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> @@ -2786,7 +2786,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   		as_sdp->target_rr_divider = true;
>   	} else {
>   		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
> -		as_sdp->vtotal = adjusted_mode->vtotal;
> +		as_sdp->vtotal = crtc_state->vrr.vmin + 1;

Yes vrr vmin should be correct thing here for DB1 and DB2, but we do not 
need to add 1 here.

Also, this should be a separate patch.

Regards,

Ankit

>   		as_sdp->target_rr = 0;
>   	}
>   }
