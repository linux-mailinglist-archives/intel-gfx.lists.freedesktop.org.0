Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAqbAeFlnWlgPQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 09:48:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 635ED183F83
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 09:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B621310E511;
	Tue, 24 Feb 2026 08:48:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BmrJEwPK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28FE10E50D;
 Tue, 24 Feb 2026 08:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771922909; x=1803458909;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=WiBmnrc/6ipLxncz/JfRCxxfLQ0Z+aAGemJPAYXa9YM=;
 b=BmrJEwPKMosIPbWohXwr11BImN9o0fAkAegMaqorqBOdWNtyFEpn1a+q
 fi5ToHjCa0wn+DOQP/9KJY3eHpzHisv+zvqrV68qL31r3DDECthLn5VwW
 c2SVQ03GJZN/9rVok2z+Q3rB/GgOCDqHhyw2z0iwL+4AQn1iSQxKqHBtF
 /D+gXVfKHZ0bhJNtm63ZVsFuVzkj4DKcZyKV67gqDWro7yhBB7nYbOPed
 +hhgun/clkC4YHgmsnoknqW0OQ4v2PqSdw9nKoWy1WhLm6Cpdiqzb0aPr
 aG3nYEItpUNZBucrXSVP2RLqu8PYmQ3nmryS7gaANGjzUsN+H6LsG2uXa g==;
X-CSE-ConnectionGUID: c9SXH0LISPqT8ivwJdgHTA==
X-CSE-MsgGUID: 59E9KnfsREKfMha36OJnxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72808371"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208,217";a="72808371"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:48:29 -0800
X-CSE-ConnectionGUID: 6BdjNXeWR96d0x7y17Mn9Q==
X-CSE-MsgGUID: dJb0SuHBRi21P7bMJ9u+eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
 d="scan'208,217";a="215692642"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 00:48:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 00:48:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 00:48:28 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.31)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 00:48:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wy66an8QgNeyuJByCDNTAVqh/jjKDVZMyoNwC19Tr//mdUgQOzv5zGxf2+rVEqEpwBR56w8MPMvTUkEqzDbEU0AfpqPHfDzLKSht4A4/RopegMe6xGGkw0fHAmHzgjgpjN1QrKYuAklJfZ6KLCoftLIrhRWogdZqaUyy0jQbgTEkuK9oYjOYzS87HK14kPcKmaUgLb+PH7YM8yqaMjmO+6RtG646oY0opM6au5/X6y2h+HF7JIIG57VdWbFTfYXZ674Fph59+aVhHswNABd7Zvav8K8RKcSvI2Piatn6RvUWIaWYXY9nfmh0gGdBeMToWO5tDNzrNOd15cGDdw1FXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ddfr3/49IgJWwl2hRlVPsYRPreLPbYAuDycmeE87TDM=;
 b=rF9+n/SSUJFP090JlUADuJj/pUArBDrIaaeVjbI5CPNSsAYuNEZGURE/9Wbc3pw+Iu/q5XgKTZu4HN26h7CUbffPpWv/tec4qJ0CdrzhvSjRRLmpq7Y+fLd7i8GVgVMUSttsFZ9v31PgRTxhlZ2GVcBVvuLL2ugq2QEFQQUSIRR+hYyOUybqhqEWa8cB5CvbyN2mhMedZcJygKWHCefzHW0Mi2V64Zs3Yn/8h0gp/ETKTi9UN5nkPLR3bvev/lfIk+CaLJB+fTYCWYbpvi8rj1YhATS72edKGUsaTar9lBU7ULnuCGvunwLi1Cr2cjUajdDlEX7zFpNrQOL3BzRlkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB6379.namprd11.prod.outlook.com (2603:10b6:510:1f9::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 24 Feb
 2026 08:48:25 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 08:48:25 +0000
Content-Type: multipart/alternative;
 boundary="------------0mT0m4QRqRMzDl7H0iYVEdvh"
Message-ID: <bb1065a8-b394-4b93-b229-881bc9af9068@intel.com>
Date: Tue, 24 Feb 2026 14:18:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: On DPCD init/caps wake the DPRx
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <suraj.kandpal@intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <aZcj08k5dG4lxRNE@intel.com> <2f2a155d-3b2c-4cf9-b8cd-8116fe84f85a@intel.com>
 <aZfQzqdS0koZQVwg@intel.com> <04797a87-79f5-445d-9dd8-4a798292156f@intel.com>
 <aZ1gMHl2OC1tFiMd@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aZ1gMHl2OC1tFiMd@intel.com>
X-ClientProxiedBy: MA5P287CA0032.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::10) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH7PR11MB6379:EE_
X-MS-Office365-Filtering-Correlation-Id: fc376fec-4b49-45e5-7eb1-08de738178c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|13003099007|8096899003; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXNrbFhGMmErSzFZZGVPS0dBUENGZjNmcWFCZ2Q2d0wrMXAxL2JDdEFBQjU5?=
 =?utf-8?B?Wm13NisrbklzblBqUEpkR2FMMFhiaSs2MXhEMTZRMU5iQmRaQ1lramNyU2xh?=
 =?utf-8?B?YjJVUFV6enU3R0huS0hCRC9NVDlnU0RIeGxHY3NkekJCNWpuQWNGaC9WVFdH?=
 =?utf-8?B?aUJVNEJYckNmc0tFSXFDQWQvamdTQnl2anVPeHhmTlVGMC8relhJdm41THR4?=
 =?utf-8?B?SGREc1VuM1RpMVF6cEs2bFo3ZVZBaXRkejYyS3NQeEVpdSsxa2JVd3ZSUTQ2?=
 =?utf-8?B?ampJNlVTbFZjbjZtSy9OU3dQY1QvMVBQYXp4WTBLdUhETEFnakd5ajhKVGx0?=
 =?utf-8?B?OXBmL3JWbDVQckVSZHEraGRkbU1kbGpGdGp4T3hIRFhLSDViRm04QmN6RnJr?=
 =?utf-8?B?amZVelRjWGFjV0RvaHRGL0g3R3VKVWM1TTZkdExmWlJoVVl1U09vcXl5YXZq?=
 =?utf-8?B?Z1V0U1BCYkhYYXhKdEt3T29UK0VKOHloaUFueSsvZXkxSDVVdFpnNTlQYW10?=
 =?utf-8?B?U0J4V2dsU3d0ZGpRR3ZOTHNGVjMwWU1JNzBoQm5xbklIVkowbWVzcWU4VGZV?=
 =?utf-8?B?R1Q4VUZuQjM0WXJwNFRpZ2lGQkxidG9GbzdLcDF5ME55TUEweWVxUGxHM3hQ?=
 =?utf-8?B?bTlvTWdKN2FUbnlBNGNyaXFPekFBU1hJSEJUbGRxdnVLbkU0RDl0OWNORXpk?=
 =?utf-8?B?SUVNWjlucUhRQXdjY0lEUUFBRHRCZHl4clhPS29Hd1RPU1ZSTE1sQWxuVnZm?=
 =?utf-8?B?TUVqNEQyMFBNSUFWeUsraU5CQzRzbkNWclJNSGFpQ1IzSzlzUVdFdzJ0N2Yr?=
 =?utf-8?B?K3BrblZkUTBSOElTUHJVQ24wTkx5RzdYVFRWUitweHlZa1NFWnY3cFIrdjZa?=
 =?utf-8?B?Ti9HeEhRNTBWbnNHbE1VZXRCdUZpaXNIcGFoUm43OGhmSVZRUk9SeVJESDl1?=
 =?utf-8?B?ZHhRcTZxM3gyaVVkZHVtMGM4SDB6amZXN1NtVDh3UkwrWVdDdHNuRURLeVNx?=
 =?utf-8?B?T1F4Wmpva2hjNHhnemtPaHVWUnZpOTlxK0phQnNBNlBhRjVsaFhyR1o3SXBv?=
 =?utf-8?B?dnBQV0NISzc4RlBGWUFDM0NFV0FaUnRwQy82cHRTQmZoWHR2R3Z2ODJ1OUx4?=
 =?utf-8?B?bk14RCtQTEVJdVVSbkhCVGdFekFSUFR3OE1CcW5odHc5QnhiVStIY3dySWtT?=
 =?utf-8?B?dEsvZ2FOSVcrS014V0k4TTlrTUE3cGplVXVhZW85YUJmUW5QVGZMRjhZNVI2?=
 =?utf-8?B?VEtKZnFKREJaWXczUFdRWU9QZ2FMN2NNOTdZM253SUVaemNFU0gwTXpBdGxr?=
 =?utf-8?B?U3JpUE9mVExtUE5ubWVsa0k3SHdJZDVWQW4vSzRsd096ZUN3M0hmTXIvbnU0?=
 =?utf-8?B?ZHBQWjM2NTFucHovQkd0OWVtL200ZlRoVklxL1pJNE83MzJ2M0wrNW1SZEox?=
 =?utf-8?B?a3BnaXJkMGkyTWFhYkdXd2x2cFkwckttV3lPMitzNUN4bGJtWG0wN0ViUXQ1?=
 =?utf-8?B?NkhxdUNlMXlySUdJTVR2bjJ6OHViUnZBRXFNUWJKYTlDODdjUEExS3hyZ1Ex?=
 =?utf-8?B?VmhtWDloUkdUTnRVZCt5eVkxamJtbCtWbytnNFJmRm5HNFg5Qk1GUS9yZVRO?=
 =?utf-8?B?K1ZnTVNtUTR4TmwxVnRmVUp5Ync5NHhXUTVmNVdRT216NUZlNUhzQ1p0eDNw?=
 =?utf-8?B?MUE3WHhBK1BkY3d5WWxLWTRYQUxVRUVSQkdaaDNZU0IvOFcrVFRBdzFTcnRW?=
 =?utf-8?B?czlrTFZrTlVER216RWd3NjF0RWVhV3c4OHFGZ09ML3dkTWw5RWxwcTVnM3dN?=
 =?utf-8?B?L3pYeDdQcEp2eGR1RUd3ZyszOEpGNHZVNEhlQlVvOTZ1UmR1cEFYZitwbHpV?=
 =?utf-8?B?emovdEE5Z0VkV0VIYVc4a2p4aFVWdERpemR6UTFBQWZlSjhVdjZoNndvTkJY?=
 =?utf-8?B?azJ0OGhBbzJuMnQzd3NIY3NZNHBzdEVvV0pMZW90ditScjRkeUZSd01iTlc2?=
 =?utf-8?B?SXlEcU9oTjkydWJpSzdFV1M4WHp6bEs0c25VaERlbWdLUXVMUUNjQ0Q5andU?=
 =?utf-8?B?bE1GVzVOdGEzbjZ4TkYxNmx1aEFqMzRMMmR5bHppS1lGQ08xZGdjay9RNDFs?=
 =?utf-8?Q?9ANw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(13003099007)(8096899003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTJ2eEp6R1BYYWg3NVZPV2llQmVMRHlEY01yMTUvdDIrcTE5dWttUDhBcU9u?=
 =?utf-8?B?Y2Q4RUEybGVtKzg0dHdzeVNFTTc5eDY5dEV0MnZ3M2xrbHpKeTNzNEdWeWlt?=
 =?utf-8?B?YnlJL3d3a2N3WmdiRmk5SjJiRS9Id1VLVFBGYWE2aGdyUnl2Sk5HakdTbVFp?=
 =?utf-8?B?Q1hzU04zYlFKRXdrU2JUMGhqOUJvN01pN2h4UVFIU203NlQxc0NmOXA4Y2hp?=
 =?utf-8?B?MGNoY3ZQMElLVkpESXNVQVpkbkVOc2dGZjhGL0NYY0w5cnpKMkVudXdRNDBy?=
 =?utf-8?B?TjZBV09ubndqL1BsTHBGTG0yNHczeCtmRFd2YTNoaUl4SVdQWFg5Q2JOMURD?=
 =?utf-8?B?V29sYTc5M0phNlp6dEM2RkphRmpDZEtWVStvTHkwb0NZME1RNk9GdWFRS1ZD?=
 =?utf-8?B?L2xZRzA5NXY5Ty82UXJobkx1Tnd1YWhYcnNHMmIrUnpjbGgycU9RY3hiSVQ1?=
 =?utf-8?B?dFVWeGFFTnVLeU0wdi9FWmZVUU9lWDNJaURWTzArWitpUzhDSW1HdStoWWxE?=
 =?utf-8?B?RlNIS0kybTU0a2RadzZQd2dmdWFZYzhmUG5vWVpYSUE2UjhqK2Y5MW1YS3FW?=
 =?utf-8?B?cWVPaE50dEN0YlF5dkF5eHV6WUVrZWtGL0VTbHVIMWh2SDh3WDljQjc4eDNo?=
 =?utf-8?B?bEJCT1JaTUFsQVV4WDh0bXRsZ2xLY3JRaDRxejB5UWg0Tm9QczlTTUZLbWEw?=
 =?utf-8?B?U1h2Y291blBueDBXOGk1dGpqaEtUaXMzempHNzhJRW1VNENlR0M1YVRUM2gx?=
 =?utf-8?B?OHdmaGQ5TTBGdU1pUVZrenBPblV2bm5SMnBtUng3Q0xYTG81L2VaMEFIcnRq?=
 =?utf-8?B?ZERDd2JOTE5VRVZpN2NTLzdIR0t5ek9jeXF1b3l1blhWS3JyQmlnaXBVdTZO?=
 =?utf-8?B?QzVUYU5Sbkd6NkRTUGt3VGk3c2RtSy81T0JONmJYWU9qbUxkKzdoR3hiNWNt?=
 =?utf-8?B?K2ZCNVlkRGZtT243VlN5MHdqRnV3b2RrMkhsK2x5Q09vYXdhc1lYVWNlbURO?=
 =?utf-8?B?OGZORGowcUFXTEFVeGFxaFFWUEYwOUpHT0hBaWtsRnZDcnhoTGZGTnV0bkh3?=
 =?utf-8?B?MGhGVXBPZ2V6ejgwUmhxSTZnQ2M1MkU5bjVpUk81Y3NTK05GMDhHMEt0bGM0?=
 =?utf-8?B?WGd3a2kySlk2Qld2SkxHWFRGcmRTdjV2cE1BNk9kOHgxRzhiejFwNmQ4QXdh?=
 =?utf-8?B?dnQzOGtMcllEa1BLZDhUbjRVdGNMeWtOS3RndVFRenY4aWM1TElwWFZsT0lV?=
 =?utf-8?B?Q3AzTk1xMUsyU1JMWEs0MmYzWTgvbWx4VGt1RXNFWTNEdU1mQmxVRHZqaG44?=
 =?utf-8?B?Y2VnUTRheWpzcVZuT1FlcWpxdmZWbzdqSVg3L0ZvVjM4YjZ2QmtMRE90OXA4?=
 =?utf-8?B?NjRPZEdyRkc3S2tPNVBZb1FSNHBKcUpsMmtUeW9ycVA0aTA4NFo4QVhMV2Ra?=
 =?utf-8?B?bE5UcVczUEU5WGgyelRMTGhpY1l3R3JLU3NtdVRsUFpJcnY5WXFaaWZ2c0pl?=
 =?utf-8?B?NmI2Y0xFRThkVU5oZHN6czRsNU01Q3h6K0h1cXZvb3JPaVlHSmFVZWFEMTRK?=
 =?utf-8?B?UDYxVTVqMENzVVh4WU9KWXVvRWRSSEZ3WkkyMEliQlVNQ3I4enM1UFhWTTFP?=
 =?utf-8?B?Nnp0THlsTWhYTllmRmhrQW1GWW1ncEtEYjA2d3M0SUE1L1hNNGVTazRkY3pO?=
 =?utf-8?B?aysyNDU3bDR6Z0NuK29FaDFZdko4NThMV2RseERpZzJRWXdRRFhGUG9wbUVz?=
 =?utf-8?B?dThuaWlhd1FhZ1Z3ZEpUcXR5Q3FpU0JYU3FqekNTeitYT284OURMTTlPcjJq?=
 =?utf-8?B?d3REMzRaNEpSK3FKUDlQcjlEMGcwQ1N6NUx4eVpPYVcwRkNHb0p2bVd4Z3Zx?=
 =?utf-8?B?S0NTdW5WUVVrYkNhYlhqb2FjM0ovWDdTVFFEVFB6dm9ZNkR4bTNyeGFWWG5H?=
 =?utf-8?B?QlpWNjdyQ1dqQzFYVjU1MUFrTGZWNFVBc05SZkRRWjA0aE1PZkFqVmpMaWlt?=
 =?utf-8?B?THBHYi93R1ZCclBJRUJtT2ttb2dhUVhtQjk0dEZGRW9JNm4rRnBnRkFsM1Zm?=
 =?utf-8?B?ZCtnMmQ2UnhnenRHcm9wcWFSQVliTEh1cHlFZ3pZT1Z3ai9YeTJSZWhJOUJp?=
 =?utf-8?B?UXRVSzFIMGJCZWtvK2xsMDBXeDNXUCs1RkkzTHFBc3F3VitPeEpic2o3U2No?=
 =?utf-8?B?aklwd3JYVTVSdGNrK0xTSm1xNnBIcHZMbGszelptZnNlWXY1Y3RiRHlqNG9V?=
 =?utf-8?B?OHNOZ1VkRm9SQTNGZUl5Q0dsRUtvY3YrY1kyek1oYUMxcnBuMWFJcUo0NzRH?=
 =?utf-8?B?SEwza0MxcHBDdGFwa2dVNUFhZXpvVlhXVVYwcXY4UmpEL0NQRjNrQXJFRm1v?=
 =?utf-8?Q?KEIHYXJX6VcHO8ms=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc376fec-4b49-45e5-7eb1-08de738178c6
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 08:48:25.1209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +rFeSwqeUqBK/6sQ055GBraSbblL/vSkccifpSGKTUlhuf/aJzgQyVaHRWL2nBWfISLBdc6MMXp/U8ZmMEohlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6379
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.776];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 635ED183F83
X-Rspamd-Action: no action

--------------0mT0m4QRqRMzDl7H0iYVEdvh
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 24-02-2026 13:54, Ville Syrjälä wrote:
> On Fri, Feb 20, 2026 at 10:31:10AM +0530, Murthy, Arun R wrote:
>> On 20-02-2026 08:41, Ville Syrjälä wrote:
>>> On Thu, Feb 19, 2026 at 08:42:49PM +0530, Murthy, Arun R wrote:
>>>> On 19-02-2026 20:23, Ville Syrjälä wrote:
>>>>> On Thu, Feb 19, 2026 at 03:13:26PM +0530, Arun R Murthy wrote:
>>>>>> Before reading the DPCD caps for eDP wake the sink device and for DP
>>>>>> after reading the lttpr caps and before reading the dpcd caps wake up
>>>>>> the sink device.
>>>>> Why?
>>>> Just to ensure that sink is awake.
>>>> On eDP init, as part of reading the DPCD caps during the AUX transaction
>>>> its sometimes observed that the AUX tx fails with timeout. In those
>>>> scenarios even if the retry is increased to 1000 AUX tx will not
>>>> succeed. May be that sink is in sleep or unknown state.
>>>> Spec DP2.1 sec 2.11.7.1.5.8 says if there is a NO REPLY for AUX tx this
>>>> can be due to illegal cmd or sink in low power state.
>>> That section is specifically about i2c-over-aux.
>>>
>>> Generally we have retries and appropriate timeouts to deal with AUX
>>> having to wake up from low power state.
>> We have tried this for 1000 times and didnt work.
> Tried it where/when/what? I still have no idea what you're trying to
> solve here.
The issue is https://issues.redhat.com/browse/RHEL-120913 In aux_xfer 
function intel_dp_aux_wait_done times out and fails. The retry count is 
5. eDP is plugged in and powered-up, so should respond.

We tried to increase the retry count to 1000, even that didnt help, 
issue is still reproduced. The solution to this issue is what we are 
trying to fix in this issue, explained below.

Thanks and Regards, Arun R Murthy -------------------

>> This leaves a question as to why not replying even after 1000 trials.
>> Answer might be the command/request is wrong for which sink is not able
>> to understand. But its not the case.
>> So the other thinking is "is the sink in low power mode" ?
>> In link training sections of the spec it says before starting link
>> training ensure that sink is up and provides steps to wake the sink device.
>> Example: Section 3.5.2.16
> We already do that (intel_dp_set_power()). Though even then we seem
> to doing the OUI DPCD stuff before the D3->D0 transition. So that still
> assumes that any random DPCD accesses work while in D3. Why we do it in
> that order I have no idea.
>
>>> Although, I suppose we might consider switching to D0 for eg. duration
>>> of the detection to make sure none of the AUX transactions there take
>>> too long. That *might* make things a bit faster (but we'd need actual
>>> numbers to show that). And once we're done we should switch back to D3
>>> to save power.
>> I am doing that in the patch. I switch to D0 and then immediately switch
>> to D3_AUX_ON state.
> D3_AUX_ON isn't even a thing in the older DP versions.
>
>> The reason for reading DP_SET_POWER in a loop is the spec says that DPTX
>> should try for atleast 3 times as DPRX is waking from power saving state
>> which takes 1ms.
>> Section 2.3.5 explains the DPRX AUX_CH state and says that DPRX shall
>> avoid not issuing a reply when waking from a power saving state.
>> This section also explains the DPRX AUX_CH state on RESET. Usually this
>> is the state on power on, and in the issue that we are referring to can
>> also be co-related to this state as its during the kernel boot/driver
>> probe.
>>>    Perhaps we could then also use a larger timeout just for
>>> the DP_SET_POWER AUX accesses,
>> spec mention on this time as 1ms, to allow sink to exit low power mode
>> or AUX_CH Receiver is monitoring differential signals (sec 2.3.1.2)
>>> and all other AUX accesses could assume
>>> that the thing is awake and use a smaller timeout. Although the LTTPR
>>> mess probably means we can't actually reduce the timeouts :/
>>>
>>> Another slight snag in the current way of doing things is that IIRC
>>> we never put a device into D3 after the initial detection, unless we
>>> actually turned the main link on and off again. That's also something
>>> that could get fixed by always putting the device into D3 after
>>> detection. But to do that stuff safely we'd need some way to make sure
>>> nothing else (eg. the main link) requires the D0 at that time. So some
>>> kind of D0 vs. D3 reference counting scheme might be needed.
>>>
>>> I did consider implementing something like that years ago, but dealing
>>> with the reference counting seemed too messy at the time. And since I
>>> never implemented it I never measured it either. Perhaps things are a
>>> bit cleaner these days to make that easier. Dunno.
>>>
>>>> So in this patch we are trying to wake the sink device.
>>> Still the same question remains: Why? What *exactly* is the problem
>>> you're trying to solve here?
>> The problem we are trying to solve is that the AUX_CH Requested is not
>> succeeding even after sending multiple AUX requests and fails to get a
>> response from the AUX_CH Replier.
>> Increasing the retry count to a large value (1000) is also not helping.
>>
>> In order to solve this went through the spec in detail, able to get some
>> information scattered over multiple sections leaving us to a thinking
>> that may be AUX_CH Replier in low power state. Also in link training
>> section(3.5.2.16) it says source should wake the sink before starting
>> link training.
>>
>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>>
>>>> Thanks and Regards,
>>>> Arun R Murthy
>>>> -------------------
>>>>
>>>>>> Closes:https://issues.redhat.com/browse/RHEL-120913
>>>>>> Signed-off-by: Arun R Murthy<arun.r.murthy@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++++++
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>>>>>     .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>>>>>     3 files changed, 45 insertions(+)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> index 454e6144ee4e..2fbb947e6cc8 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> @@ -4705,6 +4705,45 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>>>>     	intel_edp_set_data_override_rates(intel_dp);
>>>>>>     }
>>>>>>     
>>>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>>>>>> +{
>>>>>> +	u8 value = 0;
>>>>>> +	int ret = 0, try = 0;
>>>>>> +
>>>>>> +	intel_dp_dpcd_set_probe(intel_dp, false);
>>>>>> +
>>>>>> +	/*
>>>>>> +	 * Wake the sink device
>>>>>> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
>>>>>> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>>>>>> +	 */
>>>>>> +	while (try < 10 && ret < 0) {
>>>>>> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
>>>>>> +		/*
>>>>>> +		 * If sink is in D3 then it may not respond to the AUX tx so
>>>>>> +		 * wake it up to D3_AUX_ON state
>>>>>> +		 */
>>>>>> +		if (value == DP_SET_POWER_D3) {
>>>>>> +			/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
>>>>>> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>>>> +					   DP_SET_POWER_D0);
>>>>>> +			fsleep(1000);
>>>>>> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>>>> +					   DP_SET_POWER_D3_AUX_ON);
>>>>>> +			break;
>>>>>> +		} else if ((value == DP_SET_POWER_D0) ||
>>>>>> +			   (value == DP_SET_POWER_D3_AUX_ON)) {
>>>>>> +			/* if in D0 or D3_AUX_ON exit */
>>>>>> +			break;
>>>>>> +		}
>>>>>> +		/* Sink in D0 or even if read fails a minimum of 1ms is required to wake and respond */
>>>>>> +		fsleep(1000);
>>>>>> +		try++;
>>>>>> +	}
>>>>>> +
>>>>>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>>>>>> +}
>>>>>> +
>>>>>>     static bool
>>>>>>     intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>>>>>     {
>>>>>> @@ -4713,6 +4752,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>>>>>     	/* this function is meant to be called only once */
>>>>>>     	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>>>>>     
>>>>>> +	intel_dp_wake_sink(intel_dp);
>>>>>> +
>>>>>>     	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>>>>>     		return false;
>>>>>>     
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> index b0bbd5981f57..3f16077c0cc7 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>>>>>     bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>>>>     				     int hdisplay,
>>>>>>     				     int num_joined_pipes);
>>>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>>>>>     
>>>>>>     #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>>>>>     	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>>>> index 54c585c59b90..cbb712ea9f60 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>>>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>>>>>     		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>>>>>     	}
>>>>>>     
>>>>>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>>>>>> +	intel_dp_wake_sink(intel_dp);
>>>>>> +
>>>>>>     	/*
>>>>>>     	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>>>>>     	 * it here.
>>>>>> -- 
>>>>>> 2.25.1
--------------0mT0m4QRqRMzDl7H0iYVEdvh
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 24-02-2026 13:54, Ville Syrjälä
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:aZ1gMHl2OC1tFiMd@intel.com">
      <pre wrap="" class="moz-quote-pre">On Fri, Feb 20, 2026 at 10:31:10AM +0530, Murthy, Arun R wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
On 20-02-2026 08:41, Ville Syrjälä wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">On Thu, Feb 19, 2026 at 08:42:49PM +0530, Murthy, Arun R wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">On 19-02-2026 20:23, Ville Syrjälä wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="" class="moz-quote-pre">On Thu, Feb 19, 2026 at 03:13:26PM +0530, Arun R Murthy wrote:
</pre>
              <blockquote type="cite">
                <pre wrap="" class="moz-quote-pre">Before reading the DPCD caps for eDP wake the sink device and for DP
after reading the lttpr caps and before reading the dpcd caps wake up
the sink device.
</pre>
              </blockquote>
              <pre wrap="" class="moz-quote-pre">Why?
</pre>
            </blockquote>
            <pre wrap="" class="moz-quote-pre">Just to ensure that sink is awake.
On eDP init, as part of reading the DPCD caps during the AUX transaction
its sometimes observed that the AUX tx fails with timeout. In those
scenarios even if the retry is increased to 1000 AUX tx will not
succeed. May be that sink is in sleep or unknown state.
Spec DP2.1 sec 2.11.7.1.5.8 says if there is a NO REPLY for AUX tx this
can be due to illegal cmd or sink in low power state.
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">That section is specifically about i2c-over-aux.

Generally we have retries and appropriate timeouts to deal with AUX
having to wake up from low power state.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">We have tried this for 1000 times and didnt work.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Tried it where/when/what? I still have no idea what you're trying to
solve here.
</pre>
    </blockquote>
    The issue is&nbsp;<span style="white-space: pre-wrap"><a class="moz-txt-link-freetext" href="https://issues.redhat.com/browse/RHEL-120913">https://issues.redhat.com/browse/RHEL-120913</a>
In aux_xfer function intel_dp_aux_wait_done times out and fails. The retry count is 5.
eDP is plugged in and powered-up, so should respond.
</span>
    <p><span style="white-space: pre-wrap">We tried to increase the retry count to 1000, even that didnt help, issue is still reproduced.

The solution to this issue is what we are trying to fix in this issue, explained below.</span></p>
    <p><span style="white-space: pre-wrap">Thanks and Regards,
Arun R Murthy
-------------------</span></p>
    <blockquote type="cite" cite="mid:aZ1gMHl2OC1tFiMd@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">This leaves a question as to why not replying even after 1000 trials. 
Answer might be the command/request is wrong for which sink is not able 
to understand. But its not the case.
So the other thinking is &quot;is the sink in low power mode&quot; ?
In link training sections of the spec it says before starting link 
training ensure that sink is up and provides steps to wake the sink device.
Example: Section 3.5.2.16
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
We already do that (intel_dp_set_power()). Though even then we seem
to doing the OUI DPCD stuff before the D3-&gt;D0 transition. So that still
assumes that any random DPCD accesses work while in D3. Why we do it in
that order I have no idea.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">Although, I suppose we might consider switching to D0 for eg. duration
of the detection to make sure none of the AUX transactions there take
too long. That *might* make things a bit faster (but we'd need actual
numbers to show that). And once we're done we should switch back to D3
to save power.
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">I am doing that in the patch. I switch to D0 and then immediately switch 
to D3_AUX_ON state.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
D3_AUX_ON isn't even a thing in the older DP versions.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">The reason for reading DP_SET_POWER in a loop is the spec says that DPTX 
should try for atleast 3 times as DPRX is waking from power saving state 
which takes 1ms.
Section 2.3.5 explains the DPRX AUX_CH state and says that DPRX shall 
avoid not issuing a reply when waking from a power saving state.
This section also explains the DPRX AUX_CH state on RESET. Usually this 
is the state on power on, and in the issue that we are referring to can 
also be co-related to this state as its during the kernel boot/driver 
probe.
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">  Perhaps we could then also use a larger timeout just for
the DP_SET_POWER AUX accesses,
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">spec mention on this time as 1ms, to allow sink to exit low power mode 
or AUX_CH Receiver is monitoring differential signals (sec 2.3.1.2)
</pre>
        <blockquote type="cite">
          <pre wrap="" class="moz-quote-pre">and all other AUX accesses could assume
that the thing is awake and use a smaller timeout. Although the LTTPR
mess probably means we can't actually reduce the timeouts :/

Another slight snag in the current way of doing things is that IIRC
we never put a device into D3 after the initial detection, unless we
actually turned the main link on and off again. That's also something
that could get fixed by always putting the device into D3 after
detection. But to do that stuff safely we'd need some way to make sure
nothing else (eg. the main link) requires the D0 at that time. So some
kind of D0 vs. D3 reference counting scheme might be needed.

I did consider implementing something like that years ago, but dealing
with the reference counting seemed too messy at the time. And since I
never implemented it I never measured it either. Perhaps things are a
bit cleaner these days to make that easier. Dunno.

</pre>
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">So in this patch we are trying to wake the sink device.
</pre>
          </blockquote>
          <pre wrap="" class="moz-quote-pre">Still the same question remains: Why? What *exactly* is the problem
you're trying to solve here?
</pre>
        </blockquote>
        <pre wrap="" class="moz-quote-pre">The problem we are trying to solve is that the AUX_CH Requested is not 
succeeding even after sending multiple AUX requests and fails to get a 
response from the AUX_CH Replier.
Increasing the retry count to a large value (1000) is also not helping.

In order to solve this went&nbsp;through the spec in detail, able to get some 
information scattered over multiple sections leaving us to a thinking 
that may be AUX_CH Replier in low power state. Also in link training 
section(3.5.2.16) it says source should wake the sink before starting 
link training.

Thanks and Regards,
Arun R Murthy
-------------------

</pre>
        <blockquote type="cite">
          <blockquote type="cite">
            <pre wrap="" class="moz-quote-pre">Thanks and Regards,
Arun R Murthy
-------------------

</pre>
            <blockquote type="cite">
              <blockquote type="cite">
                <pre wrap="" class="moz-quote-pre">Closes: <a class="moz-txt-link-freetext" href="https://issues.redhat.com/browse/RHEL-120913">https://issues.redhat.com/browse/RHEL-120913</a>
Signed-off-by: Arun R Murthy <a class="moz-txt-link-rfc2396E" href="mailto:arun.r.murthy@intel.com">&lt;arun.r.murthy@intel.com&gt;</a>
---
   drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++++++
   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
   .../drm/i915/display/intel_dp_link_training.c |  3 ++
   3 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 454e6144ee4e..2fbb947e6cc8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4705,6 +4705,45 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
   	intel_edp_set_data_override_rates(intel_dp);
   }
   
+void intel_dp_wake_sink(struct intel_dp *intel_dp)
+{
+	u8 value = 0;
+	int ret = 0, try = 0;
+
+	intel_dp_dpcd_set_probe(intel_dp, false);
+
+	/*
+	 * Wake the sink device
+	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
+	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
+	 */
+	while (try &lt; 10 &amp;&amp; ret &lt; 0) {
+		ret = drm_dp_dpcd_readb(&amp;intel_dp-&gt;aux, DP_SET_POWER, &amp;value);
+		/*
+		 * If sink is in D3 then it may not respond to the AUX tx so
+		 * wake it up to D3_AUX_ON state
+		 */
+		if (value == DP_SET_POWER_D3) {
+			/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
+			drm_dp_dpcd_writeb(&amp;intel_dp-&gt;aux, DP_SET_POWER,
+					   DP_SET_POWER_D0);
+			fsleep(1000);
+			drm_dp_dpcd_writeb(&amp;intel_dp-&gt;aux, DP_SET_POWER,
+					   DP_SET_POWER_D3_AUX_ON);
+			break;
+		} else if ((value == DP_SET_POWER_D0) ||
+			   (value == DP_SET_POWER_D3_AUX_ON)) {
+			/* if in D0 or D3_AUX_ON exit */
+			break;
+		}
+		/* Sink in D0 or even if read fails a minimum of 1ms is required to wake and respond */
+		fsleep(1000);
+		try++;
+	}
+
+	intel_dp_dpcd_set_probe(intel_dp, true);
+}
+
   static bool
   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
   {
@@ -4713,6 +4752,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
   	/* this function is meant to be called only once */
   	drm_WARN_ON(display-&gt;drm, intel_dp-&gt;dpcd[DP_DPCD_REV] != 0);
   
+	intel_dp_wake_sink(intel_dp);
+
   	if (drm_dp_read_dpcd_caps(&amp;intel_dp-&gt;aux, intel_dp-&gt;dpcd) != 0)
   		return false;
   
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index b0bbd5981f57..3f16077c0cc7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
   bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
   				     int hdisplay,
   				     int num_joined_pipes);
+void intel_dp_wake_sink(struct intel_dp *intel_dp);
   
   #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) &lt;= (I915_MAX_PIPES); (__num_joined_pipes)++) \
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 54c585c59b90..cbb712ea9f60 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
   		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
   	}
   
+	/* After reading LTTPR wake up the sink before reading DPRX caps */
+	intel_dp_wake_sink(intel_dp);
+
   	/*
   	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
   	 * it here.
-- 
2.25.1
</pre>
              </blockquote>
            </blockquote>
          </blockquote>
        </blockquote>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------0mT0m4QRqRMzDl7H0iYVEdvh--
