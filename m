Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA09A243BC
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 21:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B7CA10E202;
	Fri, 31 Jan 2025 20:16:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTa1MUxQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A14A10E1FE;
 Fri, 31 Jan 2025 20:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738354615; x=1769890615;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=MLNMzkINgh7GrCbvYhqPa2FUhUpqvJs4ei940bGA0YE=;
 b=MTa1MUxQ0uLGU1YNLju0LXskx2oYXRjSzfntmx/8nJf/TUJned3C78YG
 UTC+fZNXgTJ+ixgKsPTEo4szLsDIqSBIfrEGJl1OG5zeNJMckft0YoFlF
 LbfJgV7VW5LVkU8tp+9FOYBbWgMVIJYLsjH9zDN6c1qgPTTBSqNtEwUt/
 c2aNk8O5+KOLH23+fu0EE64s1mrqugd9jK0vqLXn7tXsym52Lenj5aPkT
 B/g0B98S9LHzg7+E9mC0u0dnb7xPlRSaawKPdvREyZOSI5xtsUsc9dIee
 GBuqeJ/hV3rZMKwQvkuzALMemutGcD8SIPEFYT3fkBippUytA/T72uLQW g==;
X-CSE-ConnectionGUID: U2NH+ImLQmqgHoK6hkEuuA==
X-CSE-MsgGUID: Q78+832RTeuda8A7njjirQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="56359972"
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="56359972"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 12:16:55 -0800
X-CSE-ConnectionGUID: PyHkORcSTdy7uWD3eiY+Yw==
X-CSE-MsgGUID: WWeuRUt8S4OgGeFo1jS1Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="109657390"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 12:16:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 12:16:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 12:16:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 12:16:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UaskqYY+AiZjVgzrHLC3yRXS9VkduGCEZE3BFdmW0RXcMyRPFerex7scnAkGhugajqqyl3TEuOmRK0l+jcISPid/grdShVp8qszFsZhHpbIrKQZLWI7HO79iG2aATLX8TJ7BJsSgBnorG6ricc0ljgs0Nf890him1IAaxoYFg7h+/Wdg4GFdhm7hN7YdVT0GXpkwuyXmdIDsZPYMI2CvRr+IRNTMJwwuf6G9lSOQf5Unhewe+rNx5H+El3GbLrl7M3JgZG7rgNsdf0TnbKyV2USAppowp70jm/aTJBcOt/D9MC27edplZDT/ByjL93xXfuD2HQr0ulxQqwhyqNYQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MLNMzkINgh7GrCbvYhqPa2FUhUpqvJs4ei940bGA0YE=;
 b=AuYysFgf5ZHCc6MiInioUv3J1nje5O+t+/qf85ThrpBkwiSga8KRCjhrTBGDdRZXDNpnMf3ikIepjldmKGlSy7feXeYOr3haGO2H0oPyN/3F4iaGTsNOKtAfgtfRuHh03R1Tws8ihNO70f1GK6YhnPpUlJ9RaIo1jauijmRYFKOMFts49tc/GqVbfccVY9kendw5jRPI5nx8PL7V29Z5nP5/HzjVdgDO6DzBihViQSjBjQhQ8NsDJh1HM0vFAtK7+l45X4WcjRzBgnavY5IwThJGoprSamiYwOZKNtZH0yW0hBqNNx09ApHi2sZr2v3meZ08x8NhTke2EAOMUprRog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7822.namprd11.prod.outlook.com (2603:10b6:208:3f2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.17; Fri, 31 Jan
 2025 20:16:36 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.017; Fri, 31 Jan 2025
 20:16:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <l4ga4qidhl6d3fwknxtq2f6j5lcjf3thgeklehn7o7sjnstqe6@lscjymo6oaqh>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <l4ga4qidhl6d3fwknxtq2f6j5lcjf3thgeklehn7o7sjnstqe6@lscjymo6oaqh>
Subject: Re: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Date: Fri, 31 Jan 2025 17:16:29 -0300
Message-ID: <173835458986.77773.13912562984988802225@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0312.namprd03.prod.outlook.com
 (2603:10b6:303:dd::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7822:EE_
X-MS-Office365-Filtering-Correlation-Id: b4c17f0f-03a5-4847-deea-08dd4234299e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dm1MN1I0RVNOZFp1YlBVb2dIY0FzN0ZJbTJwdmRwRUZmYkx4eUxZeU4ySXl0?=
 =?utf-8?B?ZUZ2SEZKcjVUbDQ1b1U2c0R2SlpNWGhzaTA0ZTVrK3R3MXhuME5sM3FsM1Rs?=
 =?utf-8?B?S2dTN2pkL3lwS2J1RDJnZ21xOFhiL1RxWmZUSGpGOXRpMkJNeUVWeTBmeHpr?=
 =?utf-8?B?eVJXaWluSStIRFh3T2loZHljVnBZSTdWak8rVXFHVDVQOS9CMGJxTjBEYWRD?=
 =?utf-8?B?SjN1MFJKUGRlaUpiU1R0VkhxUUJ6VjMwWERNcTEvdXhZcm8zaWVtZUZmSmxJ?=
 =?utf-8?B?Ti90aHBVcmtsVEpIVE1vdW1qeU9RRTFqSnZobFhKZHptalE1aUtBdUs4OFpO?=
 =?utf-8?B?L3dHaXA2UlpUTW5lZENqKy9SK0s2QmtBUUxsdFlZSXMzRnNQTFdXY3U2YmpI?=
 =?utf-8?B?VjBiRG5sbC8yZEl2WWVYL0JZcklhR0prOXNHejdSemZ1WWI0VktMWDVDbTFx?=
 =?utf-8?B?NXQ3SVpTYkQzRTJTSTRmWTJxUUkwbndTUkhFQWt2ak1FTUdCQnR3WlJjcVVx?=
 =?utf-8?B?M2djWGQwWGZaQUIyQTlOMWRaMTR6eG44aWUweko3ZzAyZ0Z5ajBDZUwyczdT?=
 =?utf-8?B?OWg0RlJKcHVqaERwdlBYQkV3NXdXUFhnNHpCSGNvRjBOMEhVc3FuY1RzaXdJ?=
 =?utf-8?B?RXhicW95Y05iK1l0ZElrNEIxUkt6enZ5QmhReEZET1pkR1RScEduNkErU1I5?=
 =?utf-8?B?S2N1M0VncFd2ZFRra0xPVzVMemE4d2orRzZleHVLSGpDa3h5ajdJWDN3V2Nq?=
 =?utf-8?B?WTBZRzE3RlRjMWR0S1pwYldldWxjb1hPVVE5S0haL2tkTVFFbGZPdnE2aFFZ?=
 =?utf-8?B?aXVRazdGVjlVbThNRGIwYkVNeHZJRGR5Z1ViS1B5eUw4aCtCRkk2NXhmMDhZ?=
 =?utf-8?B?Ky9DeHZybGFDL3VTcXZjRExUOGFrdWp0RGZKWEdHR1lKUVhBcDVqb01FZHdQ?=
 =?utf-8?B?Q3B0SXlLbVBkd0I0eTJNNDFVKzQ0OS9KZ3NvYlVjV3hQbVZyMkY4aSsyemJz?=
 =?utf-8?B?blhaRWRVbXlKZXhhNmtlbTNZNzJpR0N6enlONS9JZXBDb0ZmRVp3MW5Tdkxl?=
 =?utf-8?B?cjYvNkdFbU91NHFKZW5CYjc4bHdsNC9WYU5KMjRJYVBDSjVvVjJEanlXK1pw?=
 =?utf-8?B?U1RRUUFyN1Q5SUN0S290MXVCRFMvTmhsK1IxelhCVGpPVkVmeGFOOFhWY29r?=
 =?utf-8?B?VENiakswZTlLbE9LR0Iyc1R6cWtERDhMSTRjSmZycHZKQytSNHFhYnVEdUJI?=
 =?utf-8?B?SytHYlo1REpEM25oSm5xMFF4RUtSR0JwQ3hhSkVwUDFadExuS3hZbjFvNk16?=
 =?utf-8?B?NGdmV1FkMW5oMk1uR0pTcm4yZ2lIZjhFVkEvRHVITCtOdXU1OEdmNHJiK3Nm?=
 =?utf-8?B?N3lkUGN6ekJzT014ZERZVWR5MWVrVlZDaERoczFvc29SUUUra3VkcGFhZG5E?=
 =?utf-8?B?dkJuNksvMmR4WEtSb2tHWU9wM3ZBMG52aFpTY3FxeVFGN2NGRFhXL2l3TXVL?=
 =?utf-8?B?S1FDdmxmaDdiaGNjUnlPNUs3dkdvVkpkWU15L1dWK0JBVklMeXI4eTMzOHo3?=
 =?utf-8?B?bXhoOXJMNjEwNlRLZVlzWTR3cEVrSXBVSkNva3FPVnVLdWRKdFluWDl0NlFz?=
 =?utf-8?B?aTVrUENKWmVDTnlCVlhPT29yMm9hS0kwaW5IM3F6YjF2Ynl1MzZKdTF4WmNx?=
 =?utf-8?Q?kLGYTwv/5JRmFTRr3ZJO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXEzM3ZIMllWcitUbjdMWjNjU2lYUWdQS0RXTTR1K0RDQUFJR3MveEpub2RJ?=
 =?utf-8?B?eU5FbFdoNHViZXpwSzFIOFE3ZkNLS0wxNTU4eGpMWExLeE92QzBGTXlvaStn?=
 =?utf-8?B?bG1OSnlpSDBjbFRrMW9oY3MrTEZ3RFQvYkl5VnlaQkRWcVEvNzJEaGZyNkRW?=
 =?utf-8?B?WWhiaWQzVXh4aGU0VlMrcDRhcEZpbWlnVGhCYm81dlF3MnNQbWprSFBuWEJQ?=
 =?utf-8?B?Q3pCQm5lS2Rzb01uTzdkbVZHd1dQNHZnNnFuWWl3QU5OZXVoRHhETnhvWEx6?=
 =?utf-8?B?bUF0bEFVdSt5ZVpCU3B1b3BFNVBUbGFWbVYzY1RsT09ZMU5JZWh0MVY4dW9p?=
 =?utf-8?B?dDFZcjZ4ZlErNUFERUk3Sm5QMGZXcnh3SkdBR1VhZDA3cDlxSXhNZXl2WmxM?=
 =?utf-8?B?Zys4ZkIwWVorcUVPQ3dhYnFsamRIQmFrR085bnlhZHhralJMcGYyeXM3eDRl?=
 =?utf-8?B?T0lNYXZvbGZwdklmZVdjM2VKazQ2VWY4cFd6VEtsSElweHFpamtuN0k4N2or?=
 =?utf-8?B?VTA2WGhwQXE5TmR4cWlRaENXekc0Q2Z2VTdSTnA5c2R2NWp4NUc2RkFnKzVW?=
 =?utf-8?B?S3ZnN0NkbXdhcytxQ3hXbU04VVBJbzhRYzZiNkVzcWZrNXc4RW9BZWZuZTg2?=
 =?utf-8?B?Y0d3L0l4dEFmZWFQL3dQVG1DalIvQm9YTks2cExzenZMbGJQQitEems5MWlp?=
 =?utf-8?B?ZmF4RlhyOEhQdFlLajcvb2ZBb09HLzdCVzVlWkRnNTZNSVdvUmJxdnRUZ0g2?=
 =?utf-8?B?NXU3VDNMNkVzc2tmei8xMUUxTnRtZHIxTk9tcm5tUFZOQVllNFFod21XMDdH?=
 =?utf-8?B?Q1BVRmRjclhqb3NhSEtxMVovVTRpbGFHZFpIem8xTGJiRkNTZTd0Y2s5U1cx?=
 =?utf-8?B?MHV5NWRUaWpxajRNWFBuS2dObWFGYU1GSXJ6N0VMME9ic3V4Y3RFSVVpMHhS?=
 =?utf-8?B?Q2pPMmRJWG9CWllZR1RRdElnMHhLUlFEcjFOVFN1U2VCWDhuVEM2VGtUZWNh?=
 =?utf-8?B?UlFyNGhoT1E4R1MxRXEwOWx1N0pqVmlON29ZRWhDTFI5c1FQQnBYK3NqQ3JY?=
 =?utf-8?B?c3FUOGJOSzdQRGM5VmRCaGdvS3J3OE5PWE9TRTh6dElIbks0eDJjVHk0UWhY?=
 =?utf-8?B?RmN3S21HVStyZzNkbkhaS25ZaWVLanphRG9rZzJpdkp3MGVNNkVmeDNOeThW?=
 =?utf-8?B?UFM4cGJHTE5uV2tIYzFjQXdLZm84cDFkUTYvbWZncElCdWF5c25xQ09KOHdm?=
 =?utf-8?B?cWVjdEtmZTQwRzFQZWN1ZGVLYVVDZ3NZL21SNjM1dkhEV21veWp0cnU0VFVw?=
 =?utf-8?B?SWpzc0U0ai8xbnRyUnBKalJQN3BjbzhobGo1OWZvQ3M3Wm1hVm1WcWxxNndS?=
 =?utf-8?B?VmFJckdTWURGMUp5dXpsdXR6TFMzWlh3ZG9oOVdGM1A2ejBoeCtabU8rSWt1?=
 =?utf-8?B?cDJkcHRvYlVEMlBYdVZsc25VMkc3OGlzWE9jR1VkeHZaWXhwYnVBaGZZRGdW?=
 =?utf-8?B?NG82TDhzYlZFOGpIdUV5N0FmSWEvRURBS2NRNzNESGNFV3RldjFyalRQRTVQ?=
 =?utf-8?B?cC91eEtubHlibzFxY29WYWtRVURkSnN2SDJzQldYNlUxQ2k0V0pWUWJQL3Fo?=
 =?utf-8?B?SmZGMStLNStRQ3ZSajd6MHI5bEpUclovY2d4TStTbkt5QkZ1UTBaMDFHVm82?=
 =?utf-8?B?aXBBYlNNQUhJRlMvMnFzcXN0TkRWUGhMY3dVYkEwOGNWcUZlaHBTTFhBaGtR?=
 =?utf-8?B?QUM2SGdPYVc0cEdZR2hYODFDdGJjTGdsZzl6c3JSVzI0bzM3c3d5aGdWaDlM?=
 =?utf-8?B?ekUxRGsyV0ErVXBmUWpHUjE3TkdsR0RrZUtKMFlRVmVIOHFGVmFJR24vSW05?=
 =?utf-8?B?cG83clJUWXNDNWRVVlNsZHg2bGVrZ2o4dHl4Ymg1T1ZuM3F5UC9PS201ZlJx?=
 =?utf-8?B?R2h4WHRPTTRHcTdpeCtDYmMxWU96aDF3UENYUHd5UG8vVTl1eENabU5NQkVX?=
 =?utf-8?B?bC9weC84TTdoL2VhRkkwSU41NEEvSDV2OEtyb1FyVXJzbVpoNHV0SG9ncVJS?=
 =?utf-8?B?TGEzbHljUHdCemhucEZ1NzBtZXBWWnR0ZHdpcU9lRGVuVGc1Vjh5NWVHZE9h?=
 =?utf-8?B?WURKRnFMb253U1RsZnB6UWlKZ2o4NkpBYVN5T0w4SW16eVFaUXZNYU1wSlhh?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4c17f0f-03a5-4847-deea-08dd4234299e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 20:16:36.1834 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 84rF+gkWa6tFtWTu9A2vQ9h7mlZNDnpYhe3KdEVfxhe1BugHzk8WpU8vl+8xp7hHgdUcMACzmUhstawr25K7Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7822
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

Quoting Krzysztof Karas (2025-01-30 11:18:28-03:00)
>Hi Gustavo,
>
>[...]
>> Let's remove that check, since it is unnecessary and causes the
>> inconsistency illustrated above.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>
>Would you add:
>Fixes: c01e78a96e12 ("drm/i915/dmc_wl: Sanitize enable_dmc_wl according to=
 hardware support")?

I believe the above commit should not be a "fixes" candidate, the check
for intel_dmc_has_payload() was already there when that commit was
applied.

Also, do we need a "Fixes:" tag here? There only platform where the DMC
Wakelock mechanism is enabled by default is PTL, which is still under
force_probe protection.

--
Gustavo Sousa

>
>after that LGTM:
>Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
>
>Krzysztof
