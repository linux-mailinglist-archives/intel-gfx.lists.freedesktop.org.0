Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C849045CD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 22:33:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1A110E004;
	Tue, 11 Jun 2024 20:33:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="djVcoqQS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92B210E744;
 Tue, 11 Jun 2024 20:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718137995; x=1749673995;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mrwP6YTj8rLKjMugCQlGlXJ/FJuqocqI9jR8tuMUWyk=;
 b=djVcoqQSMPZ0MUOz5K1hIY5hMsgXdSgkQPPHOwn9FJv0UzYw50ZsCngS
 kccIXBKJuGqXEJMXgOjeWeVJxND+TChnj1TQCKoegC7Y6LNi1R0M/cwHm
 RdIfuytsLczcx9zL84oHDdTGi5OTR0ZJu1qZIHIJIHBlzDgiO2TnVCbkN
 xkH7RLYoVvvMOnbvW4LZF6uLbosXZCxfrG+NHARe3SMqqIGC1RZxJAJlM
 3qfbgWBYZuhvuz3lNjruOG/a+IqMXqOY2cMly52QcH5731GYsENUstBLo
 rHpseFlRuzYL5HsstKissQPczshBT0L+a2Y1xShEs7f9ap3/jtOl7/z9B g==;
X-CSE-ConnectionGUID: SAKbQ779Sduo33PQ4v3vHQ==
X-CSE-MsgGUID: eIwBtvgpRK6tmcPE6XgiFA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="14747511"
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="14747511"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 13:33:13 -0700
X-CSE-ConnectionGUID: vrHT/Qi/S/S1PJT0PjCdXA==
X-CSE-MsgGUID: QtEU14FXRB6ZRHOF98E4Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="40266779"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 13:33:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 13:33:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 13:33:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 13:33:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 13:33:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oNvZyB6n4oZc0TCbwbqTjLq+ggTvAQVcaeaxVlWEsH3YDS15a9nKD0i4jqsIQuGTj+T/YHjeLVKXvWoELxDFyt6OEaYXr04tnOjfbcTo2/kQg28Qk8Uyvy91GMNMJkY/JMJNTamjHwTzQXIN4Wd2ijceoua8W6XR5B7JFrBGHQpFd8HavvdmJQ7hiMPndQrgV2TWJtDDXiGQcoW/VvZBOLWTtISejDrkl1H5ylyZ1rXr6C+w0dgK4qmhgsURcX4Esm5+3bPWZAS/7IEuMLg0AXwH1uq4QzElSJU1hMWy+rKJ3gi1MxMLhZGDRgsc40/Yji5BxFYJTEJMAxw2lfgnkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A9Hf/oHVjYCW0T8PZ4HV/Xu3nGpcqr7mhYdAAtQ93ag=;
 b=lEVSPuZSqxXKmaqFee+PuFlFNJ+M1hL+qi14WR6CiABlIgD9Gu78+ya5iCIE4Lr5pMOFl5FbRj4Z0eXJSpE+gW9tlpYW4GvS7AY9QMuCG1xrS+layB8/FKGPD8BN/l5A51+sDWbGBFI/KXESaObemTA0VjxHM0AaIFI0SELIC8p+xyoVkftqI5qH4aCDLuA5BD/h/kBhuNFjXUvn0EC/Y0w6/FQHehQdwjUu8jEcDbhqyZW4mOxeYJVpgg+aokymh30uYxVO2sqyt1UVEBrprHb/lntfygthHvGopVLkJYFcZB+lbiFCrbXLqIKgQHO+1k+/KjtK+zzFX3hlu/yf3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by CH3PR11MB7817.namprd11.prod.outlook.com (2603:10b6:610:123::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Tue, 11 Jun
 2024 20:33:03 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%4]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 20:33:03 +0000
Message-ID: <2d9b0d82-3e2f-478a-bc7b-b6e589c70b38@intel.com>
Date: Tue, 11 Jun 2024 13:32:57 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC 0/7] Promote GuC ABI headers to shared location
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Matthew
 Brost <matthew.brost@intel.com>, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::10) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|CH3PR11MB7817:EE_
X-MS-Office365-Filtering-Correlation-Id: ff9dfdc9-fd43-4ee1-cc03-08dc8a55b175
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzBUajdmb1ZvQkZMVmYxQWZLVy93dG1MVlVvc0Z1eU9FaEdqdVBBdWJzbGN3?=
 =?utf-8?B?YW1VVUNVWGpTZmVaZ3IzTVhSN0dCZlBUVmd1dFZIV0FmYzlKaVB3VEJ4SlZN?=
 =?utf-8?B?K1lpWmsyd3I1RmRKS01LRWErMDlXOWtsM1h6QlF0Mm9wQ1MyanBZalRRSHpU?=
 =?utf-8?B?YXZaWG5IcEphb3J0K1R2Q3NNNWFiUmpxL2VqOHdEQ3BjN0JPbkRwRWdFYUVh?=
 =?utf-8?B?MkJmRVhYWWZNNjVLL0VUVXNORzRGZ3E4dmp4di80dHpMRWpqOGR0MkJwVVJ4?=
 =?utf-8?B?dGYwOUJDWko3RHpoVFRYY2ZVaHhtQ0ZjWFhuQlBVdG5mSjIxbGpnWEVIL0NU?=
 =?utf-8?B?d2p2alMxYzNmNUF6N3JkOTBDUUpwTGpXZlpleUtyc3dqMHN0NmdxTFRvUlhs?=
 =?utf-8?B?K21OUjBhL3FCU1dFT1ZSaFRmVitTclhLcEZmVTVtc0s5TytDNG9hSUw0OWZm?=
 =?utf-8?B?WCtIVEFjNDA3YUFtbUtsdGV4cllPSlk5aGdpNTVqQkI0R0cxNTJUREVnMS9K?=
 =?utf-8?B?R2RZblVqSm5Kd3kzVDVjc3RxZ29zeWZlQVJKQ0piQ3J6Zm1naGM5WDVES09h?=
 =?utf-8?B?Rk1qUEd1VGdlM3g5NFVjQjZXRXRiRnhuU2RqZkNCZUpBbnRCWisxUDhCQkli?=
 =?utf-8?B?Y1FKNGxwdTJzTzlPeWdTZnhkLzdrOWNVakZRRTk4UVM4R0owM08ycW1Ka2ZK?=
 =?utf-8?B?S2pHTE9xbko2R3dieEFKRUFIY3A0Vm9XSHlCNjNQZHNSRmtWYkJyaGx4QXo0?=
 =?utf-8?B?NWVmRVROSzgybUZSZmdCcWVJYTM2clJ1cXh4U3VncTdUNXFFbktacWpJMDNs?=
 =?utf-8?B?b2hubHQxQzN2UG9odjdUTWpYUEo4SXNXTzZSTzVrOG8ycWo0cDRxR0ZXSTh1?=
 =?utf-8?B?ZFRTdWpSK1BQN1JMU0pkVzREQTVLUWlWM09YRXZESXpWSlI2aUVrR0E5aHRv?=
 =?utf-8?B?blZpdXJ2azRwK2R1Z1RGRnBXU29VcmNnWlJzZTQ2d3JWajRYdWliVDZBWndv?=
 =?utf-8?B?Y2lrdWZWZ3hLQjEyVnVqemFDUlFIWjJWekUwT0ZPcUZsdG1hOWJ0TWZJWHhk?=
 =?utf-8?B?YTBhclJtRnRWQ1Qzd3VVV1ZhNmZFTlBHVWp5U0czTUMzZHZPSUtpMTVWZXo4?=
 =?utf-8?B?M0NHVC9SWGk3VHJzRXdqbytsTk4zTTlqZTQ4UTI0c2Q1a2dWblJoUGFnZUJs?=
 =?utf-8?B?RXd4SG9zME9WbDlaRTU4eDBlQllKYVNibmRscHU3VTNwNkJjWkcxMEZzMEsv?=
 =?utf-8?B?dzZSTWFPMEU1MmJlVU01RFBpTHhJUGFNLzUzOUp6Q1JHS3JqK050OEx2RWtn?=
 =?utf-8?B?RzNxYlN3RFdUTytWUWhOZTdaclNhS2NzemY5QU9iZ0d6a28yUHQxN2VhZkcx?=
 =?utf-8?B?aTI4dUdvaHplaG5SOWcycVAzeldLMVpKNUVYV1Jpa1N5THRTYVcyQWJTeWpy?=
 =?utf-8?B?U0hkL1pVYTUreTNOVGF1OUR0K05OS0VGN3ZCc3BYS1VGenlYVUFZdnBXU3BI?=
 =?utf-8?B?WHBLRFF1QXRYRVQvVkd2akRmQ09vV1pkNEUvb0NQVGYwVmc4QjZDTVV2TlZE?=
 =?utf-8?B?bjAwUjdGekZCeVJ6ZkdJWGdqK3I0RGZKRnpmZXNJVklIb2ZCTEdkd3RCU0d1?=
 =?utf-8?B?REdsR2hob3ZXNmU0Z1E3TUErRXRzNW90WGpJS1NucTlHL205WmJKMmdNYldT?=
 =?utf-8?B?NEc5ZDJRd2JtS0dybEZVQkJjeWt2SFdvaXpJTThFZHNnQ1RyMEpiekhmSnl2?=
 =?utf-8?Q?5NcMmyqJ9lbSLGNO7/64/vnh7D5qnYPAdprIP/Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emxYNG9BemJuMW85L3dDc0hXbzdUM0xyOFE4Q21KMkQwTDZFOHlNWXlLa1VW?=
 =?utf-8?B?MzlkQWZTTUlPMml5Q1lSVlZxeXR1NkR5YjBEanpJbFZKd3NLODZ6Z3djNmFE?=
 =?utf-8?B?MjJ5VWlDRU5yZm9FZmRrU2lkejlWaDZBVUU0Mjd2RFI3eGYzWnpSZW5YZFV6?=
 =?utf-8?B?NUlUY2dqcmE5MVovM0ZzQkNKVW5WTTFlU3RLTE9pb2NFU2hpRlhQWklBbUpD?=
 =?utf-8?B?aUhDREZQUk8vRVZSN2ZRVCtVTG05MndFT2R6a1RlcDVmY0VaQ1A4bHE3OVlI?=
 =?utf-8?B?TjQzVjljWkZybFJsM1o1VUF4YWhabjhJYWJkQ2lRS1Z2TEhQTDNRcHVEc05p?=
 =?utf-8?B?cGpPQ1duWlB5Z3IyUm8zWnhKM2FaME8zMnlxRDlrc3FnSncxMzdsZk1qMmth?=
 =?utf-8?B?bDB4MW9wUitoMTVCZ3JDMHpqbTg5Vy9WbGthL2FpdnFHakk3Y1U4QVVoem9j?=
 =?utf-8?B?OGt3elc4N21BdnpZbWMwMCtIdksreVhFeGNYUG1wbzYwMW16MHJyYlVmaFNn?=
 =?utf-8?B?dkx0N3JFazVKL3Z4VndHOVBRcEVtdFVGdERGajhlVlhyR2t5ZWtDUjdUMG5n?=
 =?utf-8?B?SDAwbDJpK1o2SUVJL09ianA5MXFOUjZZWmxnVW9WNnhzMFdrbnlveTlMSUQr?=
 =?utf-8?B?cWxPa3VISFpJTGZJeHhGMVJ0ckpibTJjWmZhWjYzNmdOc28wQkd6QnoyOXVj?=
 =?utf-8?B?QTBhWGRuM09salp4N2o1eWd2REhNc0IwY3ZCdjNtQXVkUjZ3MDBVdVRKSjFG?=
 =?utf-8?B?MmtnSU1YbDk5c0Vna2dTMGNzQk5QaDQvcGFxRTZxSTYzUVdkdmlNL2h1ekpx?=
 =?utf-8?B?OThJeWpwT2w3aDBIZi9SR3RLZCtuT014NmptZ1l3c0JiUTBSVmxBL0RGdHpn?=
 =?utf-8?B?L0VLNjVlYkxxVXlsYy9OaFhkNXN3NnhjV28veTZ3RjBOdCtuOXZMQi9Kejdt?=
 =?utf-8?B?MEc5WFF6OG1WTXlndkhoRXRSbFFoQWJXQTZpcVhST041QW85eFR4ZXVJUkNL?=
 =?utf-8?B?dzQ2d3hQbXJLWW9XZi90cEZLZnNYVUprb29sa1YwYW10YXVwaDJvV05XckhE?=
 =?utf-8?B?dGdnZ1d1bnZvU1Q4SVRYOWtNRUFUbHFqa1JCWXc4SEdkcm9vTHJsVUl3d3hy?=
 =?utf-8?B?VSt5cDdBSS9EZEZwUm1iRElibXJjWHdwRy9uMjBoN1QxVXNpUHQ1U3VIcXpt?=
 =?utf-8?B?eDB3U2lpOUROVElOWTArZXVyMTNsR1IzVTNQZ2kzTnBMWmNid21uc3d4RWpT?=
 =?utf-8?B?ZGN5QkJlZXhWelJWMmQxaTE5S2JYWFRrNisxbVZzZ0tEL3FZZnpVNDBSUlJG?=
 =?utf-8?B?bFlaUGlKcXI3Z1lMZnpEd01seWVZeks4U2hncmNzeDI2c1l5VGNDWmd2YkZR?=
 =?utf-8?B?aFM1RWs0RzlWbWdXMS9MT2dwR2g1MDdMbXFGM0pjQ1ZpQVdxNk1RMStLTXdP?=
 =?utf-8?B?bGsyWVJtWFhkQ3hUUWthVHlKYnhiRGprVW1rN1ptQm44dXNUT01Bb0VyZVQr?=
 =?utf-8?B?Mk1tOHROU0Z0eUtKWHhKaXN3dkZtbE0xcHVyWmcrcWk2Nml0c2FGMHlRRTdn?=
 =?utf-8?B?WThHeXZoVVE5WW54Mmc1L3VPVzdocjVhTElhdUVqcGlBMFZnTGhISG9LL3dX?=
 =?utf-8?B?bVcwMmRuTFoyQmFscGt1ZlYrdWpWVHRrOXlqUTZHTjZ4RUIzR29lMURadUxu?=
 =?utf-8?B?dG5ZcDVDMkZ6MW1vVmpmMzZXQUsweWZ6MmhZYnVoaHVUVVIwQVBadE1MQWdD?=
 =?utf-8?B?YVRCTjlIY2lNaDVEZzNHZWd5U3V0cE5iZjQ0N0V2Z2V5cngyRUIvalE5Mk0y?=
 =?utf-8?B?VEJnV24zYUNiWFBWd0NrK2E2R1ZESXErLzcvR29tbXlpNSszMks5dUdIMW1I?=
 =?utf-8?B?Zkg3QndZeTlTb2FCT0VoRjNYdWtZUGN4am9ORG1BR0c5bk45VG13MUE4UnZZ?=
 =?utf-8?B?NG41eVZQRXJha0xRV3FVZldqOE04RmxXMkp0ZWwzTzV2dlh6c1VLcE9oMEpx?=
 =?utf-8?B?VFRZM1ZUNS9ZWjJyV2xqY2NVZjJCTER0YjB3OGZ5MUF3dUM0Q29FMVhBM3JC?=
 =?utf-8?B?S1UwbUo0NFVDNmJaS29RU2swQU42NEt0NmNQYmJYR2lGM3dta0M0QjJSR0lj?=
 =?utf-8?B?U2wzQm15d1N6cXBQZXFVT01wU3JyOFIxSUluNjVvN2g0Wm1QZHhueWI0SGxB?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff9dfdc9-fd43-4ee1-cc03-08dc8a55b175
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 20:33:03.5552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: urX9mCwB0qVBOqMDxBVLAT22jFMjNye4xuM7RdAevgcnHiqnQZmiufKmz9CYkiMk6b0rMNcW2ybFN2m9WyVys4tmUGBN+M9F7Zm7sv9yLJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7817
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

On 6/11/2024 07:30, Michal Wajdeczko wrote:
> There are many GuC ABI definitions named in the same way by the i915
> and Xe drivers, preventing proper generation of the documentation.
>
> Promote GuC ABI definitions to shared location that can be used by
> both drivers and can be included in documentation.
I still very strongly feel that this is the wrong place for such 
documentation. We do not document any of the hardware registers in the 
driver, nor the MI_ instructions, etc. Why is this any different? The 
GuC ABI is not under the control of the Linux kernel driver, either i915 
or Xe. It is effectively a hardware interface no different to any other 
hardware interface. It is already fully documented by the owners of that 
interface. Rather than just copying random chunks of that documentation 
into the kernel driver, we should just be publishing the official 
document itself. Same as we do for the rest of the hardware.

John.


>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
>
> Michal Wajdeczko (7):
>    drm/xe/guc: Promote GuC ABI headers to shared location
>    Documentation/gpu: Separate GuC ABI section
>    Documentation/gpu: Switch to shared GuC ABI definitions
>    drm/intel/guc: Update CTB communication ABI
>    drm/intel/guc: Add new KLV definitions
>    drm/i915: Use shared GuC ABI definitions
>    drm/xe: Promote SR-IOV GuC ABI definitions to shared location
>
>   Documentation/gpu/drivers.rst                 |   1 +
>   Documentation/gpu/guc.rst                     |  23 ++
>   Documentation/gpu/i915.rst                    |   9 -
>   drivers/gpu/drm/i915/Makefile                 |   5 +
>   .../gt/uc/abi/guc_communication_ctb_abi.h     | 170 -----------
>   .../gt/uc/abi/guc_communication_mmio_abi.h    |  49 ----
>   drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 112 --------
>   .../gpu/drm/i915/gt/uc/abi/guc_messages_abi.h | 264 ------------------
>   .../guc}/abi/guc_actions_sriov_abi.h          |   0
>   .../guc}/abi/guc_communication_ctb_abi.h      |   2 +
>   .../guc}/abi/guc_communication_mmio_abi.h     |   0
>   .../drm/{xe => intel/guc}/abi/guc_klvs_abi.h  |  18 +-
>   .../{xe => intel/guc}/abi/guc_messages_abi.h  |   0
>   .../guc}/abi/guc_relay_actions_abi.h          |   0
>   .../guc}/abi/guc_relay_communication_abi.h    |   0
>   drivers/gpu/drm/xe/Makefile                   |   5 +
>   16 files changed, 49 insertions(+), 609 deletions(-)
>   create mode 100644 Documentation/gpu/guc.rst
>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_mmio_abi.h
>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
>   delete mode 100644 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_actions_sriov_abi.h (100%)
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_ctb_abi.h (98%)
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_mmio_abi.h (100%)
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (97%)
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_actions_abi.h (100%)
>   rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_relay_communication_abi.h (100%)
>

