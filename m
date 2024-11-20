Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E99D41D6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 19:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8B010E094;
	Wed, 20 Nov 2024 18:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktgSJIy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CEA110E094
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 18:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732126182; x=1763662182;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cQ9nyqvMoivimRkZez+Dcm1d0tReBUhkvmNh10E3tPs=;
 b=ktgSJIy0VSIEX0YcNGA+qeNx6wUWnPRt1zom/Iw3VCwXX6GIrODAxPMt
 f+Yzx5l46hcWozI1vLMdQz43A2I10+HSUXCOCgaebckzgXtuBT5Swng+E
 mjlT5n5zM+tmQBu7lmLRvhgqdLLjL+mdB5IBC6NURWjZzRlLSSWQRtdy1
 7nhJPWLGBbIdvGkTmE/fyQbN8rtb3srcX6n4sjSrCPuAeDsNFwqUQKZD1
 mI7WApNwT++u2F9+YUBrGat7HmLuEZXfnvohj65Vi/Q2LEOjwWHXKcjbr
 yT/NRD5kUXU5zECoj4b91pHcJDTdYZRD9udHSo9ewVWpsR9yIN9lnp+sH A==;
X-CSE-ConnectionGUID: M+3eSSLzTqe6E76orOYgDg==
X-CSE-MsgGUID: 73V/htQzQIWbds/aVaoyzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="43587149"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="43587149"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 10:08:48 -0800
X-CSE-ConnectionGUID: HTZ5CtR3RvqEihDlXVQZHQ==
X-CSE-MsgGUID: NlAA/ZD0TZOdA4t/DStZeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="89983707"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 10:08:48 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 10:08:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 10:08:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 10:08:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZzGYmSEZ52aqIy7mlzR7Z/I+KKcQ8lKF72yTy0AAJT7EIxFUuT1+sCxlceoae04VvZKm4T8kREhNbRKFpNqrBnG7YtwF3FrdKgDLUDtteTd4E5YOtNV36jnQI8B/7aiOVkDGPcXt2GuO+clvlaOK9IO9MXcBU5JncfTHQZAZUlcC33+MhIIFAVQqr6iKrIghur8WfLYBW1qF/Ysht2196VE6RNbRa8khHoFpC3KwOx81c8HZphlXYivcpVXo6f73PuG7gTiNvS1gD6LMfljrgQeP/z/lBHrg+1wkSR6bj2s43i7L+vdiNhypgfZXXVl11L1nZcNSadD6ipJe4435TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CpLcZR3I6H1OPO54UUMPQ1fMHOOoGXECHhdeEmo3nwQ=;
 b=RZzXAlNF+4eOr/dfX0rB9Mx/uVlGVGG7hp972lkhhR51LBeoFznLrktMErh5VbzsEhPCLnNC+zD/+Ixr5aL2PqN29eiZWUB7fBYJt5j2FrEIoVpLTc52RtjEIvdkLYEMof5Lq1rQjQBWvMhPCNbLh+DNE1W/okvNhYpfEbXOA6Xa3Qg0GLpbsGT7G9mHwMaEVHxoajl/vokvbMXKQCerAUIjrhewUSDoUAjE1aSdXfkBWlN93KdpHHvXPMQRmZOxVLaTDmoNpp0q0hjS4PRLxC1YfGqfcFO68ivgIf3BmiLY0yikt0M/FNIjq+hiubwwK7RIH1QxRaKJP5tBMtO+CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by DS0PR11MB7972.namprd11.prod.outlook.com (2603:10b6:8:124::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Wed, 20 Nov
 2024 18:08:42 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 18:08:42 +0000
Message-ID: <ffedbbf9-6841-4440-ae9d-2afd12cc6c5c@intel.com>
Date: Wed, 20 Nov 2024 23:38:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
To: "Nilawar, Badal" <badal.nilawar@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Poosa, Karthik" <karthik.poosa@intel.com>, "Pottumuttu, Sai Teja"
 <sai.teja.pottumuttu@intel.com>
References: <20241113095004.2441052-1-sk.anirban@intel.com>
 <1c2f4bf1-daa8-43bd-8870-304b2d7989e6@intel.com>
 <CY5PR11MB6211197718B2E2C6AD71C87A95212@CY5PR11MB6211.namprd11.prod.outlook.com>
 <4cb8acc9-eb46-45cc-8f1b-08ce8de3d969@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <4cb8acc9-eb46-45cc-8f1b-08ce8de3d969@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::12) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|DS0PR11MB7972:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fe0e84c-7c18-45d7-e7ec-08dd098e5de7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djk4VXNrMVdwcitWUzZ1dENlQUgvK3B6MlYzK3RnT2lBY1piTU1rMThZR3FJ?=
 =?utf-8?B?OVFsR3hJMEcreVN2L0FvcUdydzFWU2p4QmZycldmMHJrenN5VGlGRFByWFBi?=
 =?utf-8?B?U3NhYzM4Z1I2MXliYjVMWnVtVHFmejNqQzJvTmVYY2V4TndIeVJKOGtMVnNX?=
 =?utf-8?B?YitjcGEvNGJEWXFYQ1J4Y05BamxoZ1I0M0p0Mm1kUXZJakVoNFo2Qm9sMllV?=
 =?utf-8?B?M3hlMVJzVTlibnlUeWxBNitkNUtoZDMwVi9zQ2NieWkzOElZc3NDa2tEMTZH?=
 =?utf-8?B?dlhyTjJ1K0FUK0t6Z1dHenRHZTFSWEFEK1hWbXl4WUZSMW5vKzVjak5ZcVRl?=
 =?utf-8?B?Qitvb2ZxdVNCZTBrQUhQUHlFdkQyVGVVdGdrQ3ZDSS9YNzMrMlE5R3lwWE9N?=
 =?utf-8?B?QkpFdDFZaHdWOE9CS002dVhZODV3eUgyRUluQ0tjQ0w1cWcwaTRnT2Vya2NQ?=
 =?utf-8?B?K3JidlUrSE1MNjlvc0JDOTlnV2pYZDV5NVJyMXozeXdRNVRMcmZ5SHF1b2RJ?=
 =?utf-8?B?c2lWdmRLeFF6Vm4wYnFLZzJ4a05Ca3ZtSUlMNWNnVndHRmFyUUhaWWJveVpS?=
 =?utf-8?B?ZThPOXRCZW4zSlF0VjdZWXNqaWNVWjkybDNvN3ZTY2xsbUNFZ0NuZHpwVzE4?=
 =?utf-8?B?ZzFVRWxscWkzZVNiaTZEdU9SSEoxT2o2RGtJUHQ5RkszUU0wamwrNWd6R3J1?=
 =?utf-8?B?L3Ftc09nK2JBY2pnanJYdFNTRXp5aEQwLzZSQ2JlVlA0ZDEwbTB6SHlidE5I?=
 =?utf-8?B?aDlvdmE1WjQ5RmxqYmx0YU10Z3hxNEZXa0RJTytOalQzQ3pPSVR0YklxVVpy?=
 =?utf-8?B?WElQSUJYRGUyVkM1Nmdyc2szTE5TTXFVR0lTbnhvWkpXWkNaVkFjS3p5OXlR?=
 =?utf-8?B?OW15c2h4YlAySXBwQ0NSeTRzdDdjcE5mTEFyS0liTTJSQXphV3JWRTYxa3hM?=
 =?utf-8?B?TCtDOG9FeUs5TEp3VVlQTC9JdThJSXVLMzFwTlR5L1dlNGN5UTc0MEdPUkdM?=
 =?utf-8?B?SmZHNDZLVkZwVFdFa1YrSmZkL3RORGNiMzBHdDlBWkRrTjZZQk83MjE3YkJl?=
 =?utf-8?B?NWhPcHM4ZFFVYzB0UEE5UGprb3kwbU5Jd3hJTnhHWUdIZjhVdkEvRVpsVUF3?=
 =?utf-8?B?b09UL00yYUMxWWVRc0p3SWdaV0NRR2hTODdiWnp5cTBaZHpPcTJjN25YVTFi?=
 =?utf-8?B?d3BOYkxaRHpCR3JlbFFNOCtPSDZBSnprTUlTZEtkcy9CM09McThKRStzZ0g3?=
 =?utf-8?B?R3pwd2tMRkhuZDh5YjN0L2NabFRuMkx4Mkl5VG8va3NtdzMwRjZEZU9FMVE0?=
 =?utf-8?B?OCtEZUpmNlpRUldNNUVnb2NFamlXaUZYY0VMS1JVcWoyV2FZa1VqTVR6Mks0?=
 =?utf-8?B?ZXJCZVVqNGhwM01nMjk1eWZqUE56VUoyTWs3L3V0b0ZNR3hHTy8rVlJtS25r?=
 =?utf-8?B?eFBOZFF2S0t4N1JOMFFkMjZpZVhrMkhtYXpHK1AxZzNiTXdmeHFoaFlTcDgv?=
 =?utf-8?B?b0wyS2YrRTE2emtjMCtJaUZuR3BtamJzYkZiWURPT1NJdGNZc3ozRFlmcHFr?=
 =?utf-8?B?OGdxb0g3cS83ZElQSWZkUFVmNkNaUkZUVWJTMGtycTlGTHExZW9vOGY1UW9h?=
 =?utf-8?B?dGlCdEkvV1NjbWxhREFRR2w2K2FVK3ZJdlhOZTFwUVRZQlIrV21JbjZGbU1o?=
 =?utf-8?B?RlY0TXJvbUVscm9ndSs3NXRVWENnMEhab1dHQkI5dTBKVXN1bDF6bWRFbnRT?=
 =?utf-8?Q?cPtr3QCx2HPzNOEsdAcBkMm2XwPZOHk8cMJoNmu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkJpSFErVDJGMkc1ek5qTzh2Y0tNUWtBRXNFRjlGRjRBSlBocGM0NEpyWGt0?=
 =?utf-8?B?a2Z2dGRjZGlFcVpMZThIbzk4YzRhWVJhOTduNEZsNVk0bG1FclFsUk1URVhm?=
 =?utf-8?B?cnFoMFhrOUNZTG5SNWgwL2RLV041R0J0ZG9SMnhlRm5LWWFPM2IvZFdWSng3?=
 =?utf-8?B?YzNrd1FJTENVVG5ieGUwbU1mcURQVnNIQjloQ0ZXNks5UE5TVE1oMjVTdG1v?=
 =?utf-8?B?YStmWURpcFdKUmNLcFNtTVBOcnlYYzhSS0d0NWNsRzBOcUZEL1kwdVZQM2oz?=
 =?utf-8?B?c2tzaDAya08vQW9VWGxZN1NvOHQ2Q1kySUFTeWZmbmFJREF5bHA5aFFUOWlT?=
 =?utf-8?B?U0xPdGZsaHY5Y3lHV0EwSmlCNmYrRFMxeXRrT0lFQm5wVkhWNHRMWi9HenJF?=
 =?utf-8?B?eVZoYnRvMXBueUtxRWNaNXN5VHN2b2NpNTA1VmRPNDRtbmFCa3FYTDk0TkRG?=
 =?utf-8?B?cGRZcDJ5MUtma1hITXRoSHd0Zmw3VTJMUkJ2TU9obkR5a0ZZQ3JlaTRyMzkv?=
 =?utf-8?B?UmxiOHErZjVKSmFRcU8yemgwN1dtejl0Z2RQZmZFSkVLQU5ybjRlb3ljWkJ0?=
 =?utf-8?B?a0FFOUxZbm1qS1lQektpdndVNVBCRGMzVzAxSWUxQVdvTDFwWlgwQjAzTE9E?=
 =?utf-8?B?aDlIck9JV2JHZVg1NURTajFNVGlBRVZuNm9vbk1CcndMM0xsR0l0RVNocERG?=
 =?utf-8?B?QnlDNVZwS01ReHJwS01Vd05vbktnSDN6UHNTMEdsWlBucWpPQmw0Z0FXT3BW?=
 =?utf-8?B?SnV0VUdPNENRbkRHVWVHUDg0cWlqZ2FicDF0bDNUdDl1MHg1L1F1OURCSVl0?=
 =?utf-8?B?N2xNbTRONHJSZDJySmZnVzY5cmNOK2dSd1ZnL1hucks5TWdCNFRXK0RtdnU4?=
 =?utf-8?B?bjd0dlU5S2NnQjYyMTFiT3pYbmd3V3d3Zk9YMUNjaHN4NUZ4SVVFSTAycmRj?=
 =?utf-8?B?ZXlZbzhmVE03TkNFVE91UGswdWtMTlVsN243VzRsY010NTNZOWEwMjJsZWlE?=
 =?utf-8?B?aUJqNUR6MkVTSHNOczBnWnNLaFErS1lzdzkyTnhNNnFMT2lBSi94dHpuNzJz?=
 =?utf-8?B?RlJick1XdXZMUW51U0FkbWlMcmtOUEpSWWUvdXFRaFZ6VDF4dE12dnF3UHB1?=
 =?utf-8?B?WlNGQUE4akp5VTZ5dkowOGM0dnMvMHMrZWFUelpUL1phVGFrbXRaT1p3c3hO?=
 =?utf-8?B?blR1b2Nqc3ljdU1GajFTYjVpUDZLanRyUTNuSmhkZXJEeWNnbDF3WTFCdERy?=
 =?utf-8?B?dmVkQkdqNjhiK3VxQy92ZUJOQzdrN2ROSFpCQWZSUEZBV01GSEQ4MnFDb1Bi?=
 =?utf-8?B?M2pqQkhXb0ZWQWhqUWlUbjZsKzY5MFpqT2hleVJQZ2Z6OTVsdTZGVjc0dmw1?=
 =?utf-8?B?VUVkYXl4c1M2bnJqVHYxUW4ycHpiRzBxT29ha2RpZXFVemM1M1UxRGZFRXFp?=
 =?utf-8?B?b2lYclFwVFpxTzNGSVF2OCtVS3psWVFSV3AvakVOenp3NWQ0MDh0cjBCOVR3?=
 =?utf-8?B?ZWJ2eFh0K3NsMmZXRUs5YSt0dVd4VGx6RGZyZmtpdXhSd29PZmFua3A4MXNX?=
 =?utf-8?B?MW9Oc0g2SytFcWViQ1I4L0NPSXNGUzVJM0dtTGhKMnUrL2dTNHB3VlBkVmh3?=
 =?utf-8?B?YzMxL2N1ZzkzSDc3bzlWUnE1UWVhaUhlZld2V3drYVdUdjJTc1RjcGdJM2tR?=
 =?utf-8?B?eExXYTRKTEFESHBJQlRKL1k4UXgvV0FQM01jU2Z3RTNxWVdyWGo4TUxObkdW?=
 =?utf-8?B?SHhsVXJ4ZGlkTlVJRFp6amR0a1lpNm85Nk9COGdPZDhCdDN1cFZNOWxONWFx?=
 =?utf-8?B?VWtYeTE4YVBjbk9Md0dTYS9mSlh3UVV1RlMxM1UzWW10SEJGS0ZnSEpRY1RS?=
 =?utf-8?B?bDV5ZWg2djFwVmRIWXg3WFo4Wjl6Qi9EMDdsS1FVVUJxWUFRUDJjMHB4R2Vs?=
 =?utf-8?B?ZkZROGVhQS95cy83THNsZWhjQ1JobEZEY1d2S1FYbklRMDV6ekdubHowV0dV?=
 =?utf-8?B?Nk1zbjEvd3QvQ1JUSlh0K0F2Vm9jaG4yM1NjQjdiaGE5NmxZYmlHbWVkL1l1?=
 =?utf-8?B?d3c5V1FXRWxNeStiOVhMdWE1WWZRYXVETHVxZ0xZVjFZTzBsT0lGcVFSRzJV?=
 =?utf-8?Q?Ti0DI3pIH1RqH36cc497DYK7J?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fe0e84c-7c18-45d7-e7ec-08dd098e5de7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 18:08:42.6968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gJF9GfS7uzMECl+W9cTYGJr4XndAp9gKPHHcBBj4JofqCgLDaDu1GvBFnz4eMrpJgVrufCwedSVqkxJ2m75X3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7972
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




On 20-11-2024 20:20, Nilawar, Badal wrote:
>
>
> On 20-11-2024 16:00, Gupta, Anshuman wrote:
>>
>>
>>> -----Original Message-----
>>> From: Nilawar, Badal <badal.nilawar@intel.com>
>>> Sent: Wednesday, November 20, 2024 1:44 PM
>>> To: Anirban, Sk <sk.anirban@intel.com>; intel-gfx@lists.freedesktop.org
>>> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Poosa, Karthik
>>> <karthik.poosa@intel.com>; Pottumuttu, Sai Teja
>>> <sai.teja.pottumuttu@intel.com>
>>> Subject: Re: [PATCH v6] drm/i915/selftests: Implement frequency 
>>> logging for
>>> energy reading validation
>>>
>>>
>>>
>>> On 13-11-2024 15:20, Sk Anirban wrote:
>>>> Introduce RC6 & RC0 frequency logging mechanism to ensure accurate
>>>> energy readings aimed at addressing GPU energy leaks and power
>>>> measurement failures.
>>>> This enhancement will help ensure the accuracy of energy readings.
>>>>
>>>> v2:
>>>>     - Improved commit message.
>>>> v3:
>>>>     - Used pr_err log to display frequency (Anshuman)
>>>>     - Sorted headers alphabetically (Sai Teja)
>>>> v4:
>>>>     - Improved commit message.
>>>>     - Fix pr_err log (Sai Teja)
>>>> v5:
>>>>     - Add error & debug logging for RC0 power and frequency checks
>>>> (Anshuman)
>>>> v6:
>>>>     - Modify debug logging for RC0 power and frequency checks (Sai
>>>> Teja)
>>>>
>>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>>> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/gt/selftest_rc6.c | 15 +++++++++++++--
>>>>    1 file changed, 13 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>>> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>>> index 1aa1446c8fb0..a8776f88d6a1 100644
>>>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>>> @@ -8,6 +8,7 @@
>>>>    #include "intel_gpu_commands.h"
>>>>    #include "intel_gt_requests.h"
>>>>    #include "intel_ring.h"
>>>> +#include "intel_rps.h"
>>>>    #include "selftest_rc6.h"
>>>>
>>>>    #include "selftests/i915_random.h"
>>>> @@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
>>>>        ktime_t dt;
>>>>        u64 res[2];
>>>>        int err = 0;
>>>> +    u32 rc0_freq = 0;
>>>> +    u32 rc6_freq = 0;
>>>> +    struct intel_rps *rps = &gt->rps;
>>>>
>>>>        /*
>>>>         * Our claim is that we can "encourage" the GPU to enter rc6 
>>>> at will.
>>>> @@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
>>>>        rc0_power = librapl_energy_uJ() - rc0_power;
>>>>        dt = ktime_sub(ktime_get(), dt);
>>>>        res[1] = rc6_residency(rc6);
>>>> +    rc0_freq = intel_rps_read_actual_frequency(rps);
>>>>        if ((res[1] - res[0]) >> 10) {
>>>>            pr_err("RC6 residency increased by %lldus while disabled 
>>>> for
>>> 1000ms!\n",
>>>>                   (res[1] - res[0]) >> 10);
>>>> @@ -77,7 +82,11 @@ int live_rc6_manual(void *arg)
>>>>            rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>>>>                          ktime_to_ns(dt));
>>>>            if (!rc0_power) {
>>>> -            pr_err("No power measured while in RC0\n");
>>>> +            if (rc0_freq)
>>>> +                pr_err("No power measured while in RC0!
>>> GPU Freq: %u in RC0\n",
>>>> +                       rc0_freq);
>> If rc0 frequency is there then, this has to be pr_dbg, otherwise what 
>> is the purpose of this patch.
>
> I too didn't understand purpose of this. How this going to help for 
> accurate energy readings.
in case of rc0 power is 0 , I just want to confirm whether the freq is 
available there or not ? Also it is defined as pr_err because there is 
no point of validate rc0 power below if no power is being measured.
>
>>>> +            else
>>>> +                pr_err("No power and freq measured while in
>>> RC0\n");
>>>>                err = -EINVAL;
>>>>                goto out_unlock;
>>>>            }
>>>> @@ -91,6 +100,7 @@ int live_rc6_manual(void *arg)
>>>>        dt = ktime_get();
>>>>        rc6_power = librapl_energy_uJ();
>>>>        msleep(100);
>>>> +    rc6_freq = intel_rps_read_actual_frequency(rps);
>>>
>>> I think intention of reading frequency here is to know if device was 
>>> not in RC6
>>> when there is failure. But for the platforms below gen12 reading act 
>>> frequency
>>> will cause gt wake as GEN6_RPSTAT reg requires forcewake.
>>> To avoid wake when device is in RC6 read actual frequency without 
>>> applying
>>> forcewake.
>> If reading act_freq will wake the device, How to read frequency 
>> without forcewake then ?
>
> Use this api intel_rps_read_actual_frequency_fw to read freq without 
> forcewake.
>
> Regards,
> Badal
>
>>
>> Thanks,
>> Anshuaman
>>>
>>> Additionally add delay, may be delay of 1 seconds after re-enabling RC6
>>> manually and forcewake flush.
yeah, I can use that to read the actual freq but there is already a 
check involved just to cross verify whether the system has entered RC6 
or not.
>>>
>>> Regards,
>>> Badal
Thanks,
Anirban
>>>
>>>>        rc6_power = librapl_energy_uJ() - rc6_power;
>>>>        dt = ktime_sub(ktime_get(), dt);
>>>>        res[1] = rc6_residency(rc6);
>>>> @@ -108,7 +118,8 @@ int live_rc6_manual(void *arg)
>>>>            pr_info("GPU consumed %llduW in RC0 and %llduW in
>>> RC6\n",
>>>>                rc0_power, rc6_power);
>>>>            if (2 * rc6_power > rc0_power) {
>>>> -            pr_err("GPU leaked energy while in RC6!\n");
>>>> +            pr_err("GPU leaked energy while in RC6! GPU Freq:
>>> %u in RC6 and %u in RC0\n",
>>>> +                   rc6_freq, rc0_freq);
>>>>                err = -EINVAL;
>>>>                goto out_unlock;
>>>>            }
>>
>

