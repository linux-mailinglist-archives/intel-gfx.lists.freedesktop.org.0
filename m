Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37123C47853
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 16:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D8B010E406;
	Mon, 10 Nov 2025 15:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqja2MHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BC9710E406;
 Mon, 10 Nov 2025 15:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762788410; x=1794324410;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5XnXHM2mo8R/RXUFT8hNrAdvfC4SH2gA08VogqdXrvk=;
 b=jqja2MHZ2kfFnwTfaLVyXVbvevJlEQI2sbCQqSUDMLRAqSfmdqT2BO7F
 Gu9yexyU3sCXLlTr/O9rZRLJlnEcL3w/gAfL4p+MuPXFj9yXoeCRAj/No
 R3JuS5JfNkvEUdyaZfebltm8dy8cMQIfQd4nIOtvhOOTjV+6J6ydjZAju
 tWt7KY1NSNrgk0cesRoRPe5j5nm/e1ivPUZD63EXCG1APQ8cIGojyzBm6
 BZ2SbtenQv1T4aqUIiTjgSeF3vNHLRQ8ch9ZDjRQLX4hU74hsZYVRumne
 PPCpBQj7gFtDRHRUfsrcu9r1wxiOCNjVwFiw1vDkPeMz2OvTXajCj09fF g==;
X-CSE-ConnectionGUID: cS+snLv3Tp+T1lylvUJwyg==
X-CSE-MsgGUID: MclewH0rRZebQRKW7My9/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68686035"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="68686035"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 07:26:49 -0800
X-CSE-ConnectionGUID: CzpLwGVmTWyFwr95uig/LQ==
X-CSE-MsgGUID: 0YBdWH5XQtuPbp7D5bT/hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="188653042"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 07:26:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 07:26:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 07:26:48 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.9) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 07:26:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rE1tdJzBhwu4ioC92Bjreac73nhfm3gWH64RAC08hCt1lh5ZQX0gslmonCT36UQ/HMPNoAicsHwGm8nNXM18STCVD97w95+q7WHzeeOCuT+iPe6Yb4yeWzJNbEAllKk93K2oqk/fKzQPlszQbfu4+uktxscAfXqIwOleKni+UJqBBF7nND5B5OMm5o+zTYQhdLNyheysq5cxzKk4RuVRps2hOoSrTkLahvZCePhW1a4TYeXchg5DmjUB/kTY8MaP2VHeavqjvEVuA7TjhpEmTyxQ4lRsIew1mwk/1uL562i63bZJC/5i+f/xtssWL+CIDbeKH+0zYkI0R3SmUZAgFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jaF/ftgDCqx5PGeHjB7fK+GYfKOX/uP+wPbWIBJ0mNg=;
 b=ugTVl36b7LuFKyAJ+YFDH8L/7F5T/Yyv28NckGCvDr+to9z+LpRqLZxFhWMPEdaolQrYnoQdo/ZLWsWpMub69SZeu7EkXFjUBmgYNa4lQM6bCbC0qWMoYwg5I47MXhv/t2FE84T31WpAjp1+lS1mzn2Qcnmxt3gSRMR/8JB43HBmhTsRW6kAjUU9YQV8a94wX651s4EPEtZu5JWVQX8R2eUqcp7TwefbaIcoEWanhKnZXubz85bjXuFNJI3viEBpJEk6r//hi7VqgOU7ivqBlV11QJ0iBl6jwgywptlbBMv9zygd1p3mz5h69IBD2RZJIushGwLa+vqIhWviZJakgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CH2PR11MB8868.namprd11.prod.outlook.com (2603:10b6:610:284::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Mon, 10 Nov
 2025 15:26:43 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 15:26:43 +0000
Message-ID: <602bb5d3-fe1f-47c3-8775-3078d0fc7bc3@intel.com>
Date: Mon, 10 Nov 2025 20:56:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/fbdev: Hold runtime PM ref during fbdev BO
 creation
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>
References: <20251106120313.2670852-1-dibin.moolakadan.subrahmanian@intel.com>
 <c08839f894cefc8f5fa801d4254934b8c4dfbdcb@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <c08839f894cefc8f5fa801d4254934b8c4dfbdcb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0147.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::9) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CH2PR11MB8868:EE_
X-MS-Office365-Filtering-Correlation-Id: 955cb537-e250-4bd5-3442-08de206d8da2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODBkMnRpUnNKTUlUcjB3djYxdTlxNnRlTzUyNllJZ015dnQrMFFjYlVGd1Rr?=
 =?utf-8?B?Sk1weXlsaWhlWXYwb2VYL1RCQzJpUkFuSGFvSUFON0dxRnkyMXZpdjVKeUtE?=
 =?utf-8?B?cnVSOHFCZFVRZGZ5WmVOaGJ4cUZMSGVYSDdTY2tYaDA3cDlnL2dBWk5NQ1FJ?=
 =?utf-8?B?Z1ZFRUs0SUwvT0dndUpIS1hmdC9xb01KbWtzODVqU213c1ZaSUJqRmMzOTdV?=
 =?utf-8?B?NTl2K0JFVU8wbnhrc0lHOTBIU0V4cnV5a1FRcjQ4M0hVZ3JvK3EyaFJjdmhL?=
 =?utf-8?B?ZE9xcG1SM01wVWlJam1wTzJrdlUreWVWYkJGZ3Zob1FjR1JwVUJpd095WHNR?=
 =?utf-8?B?dlhTZjRnNlBjb3FkRjB4b3ZjVmV3enYzbXVFWkc3YVRNK3ovcFQwRjlEeS8x?=
 =?utf-8?B?WXJFOHNmaG5UaWxDVTQ2aGVrRG1Edko1K29JVlNpRG9kSDVFellQVUluK2pv?=
 =?utf-8?B?MXFxcUxsREFQbXhLeE15ZktqV0x5b2FHVkU0SzVnN2J2N1JDSkpucjVpeVox?=
 =?utf-8?B?OW92UnJUcVU5WXpZeUo0STMxRHgrOFVGYk9wc3Y0ZnVHbHh2aHhuUWZPR2xl?=
 =?utf-8?B?OEw2Rjl5ZW10SldJTjBBaU5KREIzVU5MbmF6ZWVUdmN1UUZKY3BaNDdTb1l2?=
 =?utf-8?B?RDRBWVRlWk4rZjJKRGFIQVBIaktKdFpVRE55L1hpZ2puVCtsNzN5TEVsb1Q0?=
 =?utf-8?B?OHFjZDhVYzBnYS9uWXlHYndTbDZkemYzb1Nja0V5anFCd0krUUpKS3RmL0g4?=
 =?utf-8?B?S2twNHR4MnZObGVTMTF3NjZGUWIzbkN3eSswby9BZkV1OUhrZnJ5Y3NZT2dT?=
 =?utf-8?B?MW14QTRXZktnS0RIakM2WWtvaWRCTnlrZTF4eVFBOFNKNnE1SUZmZ1k4NXZk?=
 =?utf-8?B?U0w1amJzRkNYaTdZVFN5UjNjRm9XcEJTb2w2aVNWeURXUTFWakQ5c1dSZ2N6?=
 =?utf-8?B?WStpN2VQQ29jeVdZVTU1QmlDb1ZjWnR2SHVuVlRFLzlUNUM1VGo2SHdCN2RS?=
 =?utf-8?B?ODlWOGhydEdIM0xYM2M1dHQrMm84UzF4K0xLNitJKzR2ZnF6NldOTm9taklO?=
 =?utf-8?B?M2MyZE5nckJWaDRseEUrZ2svd2RDNDVRY3NBaGNmNDY0WlR0MkhPSnJIUk1X?=
 =?utf-8?B?REpGSmpRQTFVU0lHYUo2U3hIc2VjSHZwaHZScGYrTlRCSWtWbWtUT3JRelV1?=
 =?utf-8?B?VDRsTXd0ZmpnRXdqZC9KOVl6aGE3L1pOT253dkRJVzRUejNxVzl5cnY3M1VY?=
 =?utf-8?B?TGJEdHpTSks4Y3YvSXdRWVhKUlV6ZHJWNzQ0K0xqRTJUd21WOVU5bVRLKzl6?=
 =?utf-8?B?TjRaQmlGMU1xTGJNaFNTWVpMd1pVcFduZGx1OWtSVXNKZ0NSc3ZSTHhwdU1O?=
 =?utf-8?B?S3AwbitpTWpLUkhjME90RG5ZK0tjcUlLRkMxbEd2RWZHNFB1RlkweS9WS1U4?=
 =?utf-8?B?eFRHUlR4cWVBZmZTK1RCcEN0RkdWdC9sMG1jeXRMME9UL3hEclY1RFRRc1Fh?=
 =?utf-8?B?SXBMZGVHK1NOb3RIRHdTdTlaanpnN1dld1EvQUFPQVhMSHJlSU1mZzFDcUE0?=
 =?utf-8?B?QlQ2a0NXQVJ6Tnkrb21RUy9TdkpaWU9ySTIxMFBoclEzT1RIRnFsRHRhS25y?=
 =?utf-8?B?dnE3MXhMRlRkZjdWVlpITVo2MC9MMGdEUW5SYXBkbVoxTHpVb0wzL1g2cWYw?=
 =?utf-8?B?dDR0WU9PanJ4Ym5HOU1sa01xL3A0R1dOeGEzNUUxVUZ6elRnVkZlL3lGV01J?=
 =?utf-8?B?bXRmZHRQK3cveE9pNTJlSFdhN1F2N0pMenZORkU4M1Rxd2xQekwvZFIxdUk4?=
 =?utf-8?B?VThDeTBLWnp6eUd6RDlVVitiMi85QldqR1BBeFY3RFZKSkE5OFZ6VkJKRUxu?=
 =?utf-8?B?MGtjL2ZiazhvUnAzNXIyemp0UHZYSGhMMjFMbkdXMC9PM2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmxITkxLSjZLUHVVTEJuUWNpMTIxZ1ZIOGNvcVBRZVBNNWNyQ2FBQWFjam9U?=
 =?utf-8?B?dnZyU3ZuRFdVQVd5UmdiczBlR25zbEdDZ1BpSWhTckt6RmpUMXJJTExrUEN3?=
 =?utf-8?B?ODh3SXlocXZZNGRqMVBUanc2dzBNeE5zZFVRVDNJcDl3MStaQnNSZnFtdGt3?=
 =?utf-8?B?SmtNbkpLL3Y3bTlKZ3FneFVmY21DRm0ydXg4RHJDdjFpKzRWODlBRllpY1Ba?=
 =?utf-8?B?bk9yZEJHaExwS1M4M2NWSWh2WFZ0YVdHMkhQVTA0YmpJZEYyZGVzdHNiTDA0?=
 =?utf-8?B?TjBVc0JycVZJcXhWY21mM0F2VFlUcnUwRDVsN3dtWUhrUC9JSWtMYkZjdDJC?=
 =?utf-8?B?OUwvVmVqY0Q4b1llZStFMTBWQWc1QWwwTDJEVGNWblhFN1F5b0JVWTFZalBK?=
 =?utf-8?B?MDJjNkk5dml6UC9nTHdSd21CbzhsSDNuTTlLU1JlOTVTRktLVFRSWThvVDU5?=
 =?utf-8?B?SlhnVDRWMGZvRDl6dWNaai9lWFNTWENObXhaM0VMeFFoRG0wS0lzbDNpaW42?=
 =?utf-8?B?MGJvdDZyQWlpMG95L3AwQkdNd3VYM3VlQ3k1dkg4RnI1cUlGUU96NGdGTEdI?=
 =?utf-8?B?ejlqSEQ4Z0hkWGZRMVdEQjkvVkFoOE83VkZrZFI0SFljRVhaNTBKY0RVaU5a?=
 =?utf-8?B?MjIySklTenQ2aVc5akVEc2dRckxWTktueHAyc0t0L0svazBMMkhodkwwb0RE?=
 =?utf-8?B?ZTYyMCt2dlMrZ1EvVmN5bWlPTnh4THBXUFlBd2JaaVIvL1NtaDlBL3d1U1h6?=
 =?utf-8?B?OHJFM1BUSkxGb2d4RkdrN2FVZGM3WG4vUkdBOGxKbEVyd2ExTzBySDFOZDV5?=
 =?utf-8?B?UlMzYXZEQW1IQUJWL0MxZHU2NDZmb0RJaHV3VFp5aEwrU1VTNUZIQzdJeTIw?=
 =?utf-8?B?OXBRa09nYnlyVTRtUjRia0t1RTVlVnFYbEVwVUdhMFMzMjJuU3RmS21Lc082?=
 =?utf-8?B?anRDRTFzWC9kbHZpbUNVTGlGeUJWOVpyZTAvaUptcThRL1VHY3dSY0kvUGd4?=
 =?utf-8?B?b0tEeVdaM2I5QytQS21VeW8rOEMyYnl2VWYvSi9Ramx1WmN0VkVJVnBNWHVB?=
 =?utf-8?B?dXRkS2VWWDdRSDNsY3RkRW4xQ3U4cDlHM3BSQ0ZSd1pnNWN0VWp3VzFjM1hP?=
 =?utf-8?B?c2tWS3gxdnBrcXJDZTZnTTB3LzYyOExyMUF2MjhUaGhIL0JVOGFrRmNNclZK?=
 =?utf-8?B?SzdIczVOTDBab2NSc2lVK3RiVm5JcC9SWFlucWVPbUo0VStmYXRXU2NwUFdJ?=
 =?utf-8?B?Q0lUV1ZLWVlFVFJsR3hmYi8yM2c0UjhDNVhPOHV1TmlIcEVtMnJqVjg1Tkdi?=
 =?utf-8?B?TW5jNGhBRFhhcngrOHRkTjYzSVJjRVN1ZkFrVDBHR09OOEpXek52NTBKY0Iy?=
 =?utf-8?B?MklXY3BOdk9DalhCNHZUOUxVY3lYQzdzVGZia2QwK2VkQlczNmRUWnpVc1gx?=
 =?utf-8?B?M2hFQTZvZy9SeVF6YlN3UFlGYlJ6QmJFaWFvRFdxUVFmL2VoSmhBbUFlVTl2?=
 =?utf-8?B?aVc4QWVRQkl0Zk5nb2RKY3poVzk3RjhvbUVrb0RoNEJPRFI0Tk1kb21ZR1Av?=
 =?utf-8?B?S3dXRWRrY1FGUmRDNXFXMnVpRWhZcXFtUC9kVnN0dEgrU2tiS3BUSzh1NWd3?=
 =?utf-8?B?ZU5Yb1RiQ3d1em0rNHhxM0F0dUIrZzR3QWp0ckNkdzk3VDVRRWVKQU01OXlW?=
 =?utf-8?B?N2xDNXQ4cjdOZlBtaVhlSDhZN3VyampHbFNuMDQvMU1DenJGTW03NWlsY3B4?=
 =?utf-8?B?MUZQVHNVVHFYcGZhazl5MkxTYlN5SVVaam5sVkNuWWxUK0c3TE9BVjdaa0hY?=
 =?utf-8?B?VEZQdmhGS25zY1ptZ3lJTTlKTkQzMnYwUGgraGdrZVVyZUpGS3pRVWZvVEVH?=
 =?utf-8?B?OFNqRFJjT3BJdTRSbUNwVjY5a09LdTRrRXhlaUY1dmZGeFFxMFVLVkY2STF2?=
 =?utf-8?B?cWU3WVcveS91M0NHWDBGNWovY3JvWmJLUjJhTWRnbFNOOW95QUU1K1dPWUJp?=
 =?utf-8?B?UE9uTmtLU3RRd2pYNm11cnJoQ2d2eE9KOG1JWHI4SkhhYXRqVmd2WCtsNmxu?=
 =?utf-8?B?aEZ1c20rNWxoYzRtSVVMZk5FRXdkNEwveTJldEJlbGZhTVpOSVNwTTcrUU1u?=
 =?utf-8?B?YzUwRDRXRjUvR0xYWWlCaXRLZkhFMmR1MHdhVktHRGFvTkhEczllRmlodjZL?=
 =?utf-8?Q?FhCCW2sWiqHMgPpOKEq0NlaksSWvt1UmY6TXVvRoO9xw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 955cb537-e250-4bd5-3442-08de206d8da2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 15:26:43.5148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T/pyoyJ+xWrVYhRKjcX9Nt7xyEGVNajAFRNRzHPoulUu7BRRMBnnCQcTfSNYy0i/q3gURmtsPmmzMZaOiyxH06DA0sENIlrxdJSCWUfPHazkXqfKjL6zpbuEw4YI5Bnf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8868
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


On 06-11-2025 19:00, Jani Nikula wrote:
> On Thu, 06 Nov 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> During fbdev probe, the driver allocates and pins a framebuffer
>> BO (via xe_bo_create_pin_map_novm() → xe_ggtt_insert_bo()).
> Might emphasize this is with the xe driver, since the subject prefix
> says i915.
I will  mention xe .
>> Without a runtime PM reference, xe_pm_runtime_get_noresume() warns about
>> missing outer PM protection as below:
>>
>> 	xe 0000:03:00.0: [drm] Missing outer runtime PM protection
>>
>> Acquire a runtime PM reference before framebuffer allocation to ensure
>> xe_ggtt_insert_bo()  executes  under active runtime PM context.
>>
>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6350
>>
> Superfluous newline.
>
> Fixes: ?
As this originates from intel_fbdev_fb_alloc()
which was introduced by commit 44e694958b95395bd1c41508c88c8ca141bf9bd7,
Can I add same commit for Fixes:

Regards,
Dibin
>
> BR,
> Jani.
>
>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fbdev.c | 11 +++++++----
>>   1 file changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index e5449c41cfa1..7173bd1cbffd 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -288,13 +288,18 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>>   		drm_framebuffer_put(&fb->base);
>>   		fb = NULL;
>>   	}
>> +
>> +	wakeref = intel_display_rpm_get(display);
>> +
>>   	if (!fb || drm_WARN_ON(display->drm, !intel_fb_bo(&fb->base))) {
>>   		drm_dbg_kms(display->drm,
>>   			    "no BIOS fb, allocating a new one\n");
>>   
>>   		fb = __intel_fbdev_fb_alloc(display, sizes);
>> -		if (IS_ERR(fb))
>> -			return PTR_ERR(fb);
>> +		if (IS_ERR(fb)) {
>> +			ret = PTR_ERR(fb);
>> +			goto out_unlock;
>> +		}
>>   	} else {
>>   		drm_dbg_kms(display->drm, "re-using BIOS fb\n");
>>   		prealloc = true;
>> @@ -302,8 +307,6 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
>>   		sizes->fb_height = fb->base.height;
>>   	}
>>   
>> -	wakeref = intel_display_rpm_get(display);
>> -
>>   	/* Pin the GGTT vma for our access via info->screen_base.
>>   	 * This also validates that any existing fb inherited from the
>>   	 * BIOS is suitable for own access.
