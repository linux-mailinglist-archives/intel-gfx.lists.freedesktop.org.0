Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iObjOSLWd2mFlwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:01:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541528D6C5
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D055110E496;
	Mon, 26 Jan 2026 21:01:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ctgWxitn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7BE410E496;
 Mon, 26 Jan 2026 21:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769461279; x=1800997279;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dUt/kT0zGs5BBQ1iKhi3GBjIgygI3g18Kx5l+YNhB+Y=;
 b=ctgWxitnIGJyKYwLRWMWJY0l1ksniCj9xJDX7QEYYvb3fq5LyMkLj0Oi
 2cauuqtzbbjvU80hDQNAIvfgZ/Mn9xyCQxVaHBGNOb16HqX1biNWQIOPC
 pgjb30ydWK4v/QgLBR3VHMyoIs5JIO0pLd5VEj1LY1nDxLYq+I5IoYJVV
 2vNtAkkLd7zQYuOO8TVHsnmtM4hTaw52vU7sF2ciNOexTchs6fx74Thvn
 wClhghuiF6shcHFWh7iJ7hhLzp6OjC+tPB6uFcIzSXcD3bhuSn/nG96Kx
 vHGrpyDbnLydMaKLvwxqyFtbURYEu1swbSrJjdUecrJk8G2joe65ryuHc Q==;
X-CSE-ConnectionGUID: ku1XtVCtRe2najjOcvdrUA==
X-CSE-MsgGUID: gcZwgcmXTcKHl5krmq92Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="74488132"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="74488132"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:01:18 -0800
X-CSE-ConnectionGUID: FUZqK4/oRzeqOridjlaVHA==
X-CSE-MsgGUID: COpcVSMaSNyKLlEoKFNRYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207584727"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:01:18 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:01:17 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 13:01:17 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:01:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i2k37LtPGS7Wp46dAz73B4stWUoSldI8ERHfi+raYYpWNJicKovSan7XAnV0YQdWrr60atrmAiS8jgYoSvHIjCm0z6Y05mmr8gYaR3ep/TVUxRQh99Plos+D2edDw+ipyxO8oTELBf9p1b0FVj6uNoPkHUu4vcmGtB92cVnpacTm5MHp/Qyrhu5L/854+2XytQnbR2jHeG9Z1czdas5wjqJmFjOLg52ExOvlhWrPTiZ1OqGeIlUatDW+TxxGtWJRCmYaA1KT85I/izMKWqhG1u6RoSvO5vnHn8/Ji9EoeCskdR6neFKBB86aqNllgtiMIes1pg3XHJZVstZp8NlwUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=94mCn70h5uELKrIS9fJVIPtUUZHmbrmkgAx1ieuNdVg=;
 b=dQfD44GhZaPCsb4BdKYgPhGn/C6yERWIUcFDkvAaju+QdM41Dzb+rkHBaeo0sRotgrq6L9/HuTGgMI3NRIIXIAlLJ9QeSQBcFZ+hJr1jy+il0seQqgGmIpCokvYBuOdTznzFsca4mYWP5MHDOUlh306yOFByF2goqqbsxs58JilmboPcJ0oZm7Q4G9qjJKfI198X7dFvVXGwLK7D+CCxcqe+zegIHvLSicodljvxxcAoJnX4fCphV4luf+K4fk1k1cUjOxenCNTGgcur7HlObBgR0oA6058/xhHcn9fvPeoyq2xCDYDcd33STSz2NJ1rhaq9FA9mk2cuMhV+aapSIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by SA3PR11MB9461.namprd11.prod.outlook.com (2603:10b6:806:47f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Mon, 26 Jan
 2026 21:01:15 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 21:01:15 +0000
Message-ID: <4acbd649-3121-4b65-9d47-d9afea7d3034@intel.com>
Date: Mon, 26 Jan 2026 22:01:12 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/5] drm/xe: Make xe_ggtt_node offset relative to
 starting offset
To: Maarten Lankhorst <dev@lankhorst.se>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260126104604.988024-1-dev@lankhorst.se>
 <20260126104604.988024-2-dev@lankhorst.se>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260126104604.988024-2-dev@lankhorst.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0036.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::49) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|SA3PR11MB9461:EE_
X-MS-Office365-Filtering-Correlation-Id: 015145f3-88b2-4ddb-3468-08de5d1e0b69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ek9PbXZsSldRUmo0QWtUU3hUK0NzQmgzR0tBK1VHK3pHc1NwUHBnZHJHZnYy?=
 =?utf-8?B?cHRNdElaRW5LdmVwek5VbHlZWUlJZWEvSjJhZnJnU09QbzIraDhOamZJcENY?=
 =?utf-8?B?WEJUOTE1U0xZYzM2akNKdDJyTGtja211VkhRckNzVVJ2djdjQUtiOExqL0Nk?=
 =?utf-8?B?Zk10RkhMaGdLSGZlOWVqcVZZdFJsWkpHeHAzM0hqMVlsTTc4SVE3Y21OMkNU?=
 =?utf-8?B?cWQ1Tno5dDVXVmJ4U3VxRU0rYy9hckd6MHp3VDN5TlFsWmNIRFF4d29IV3VF?=
 =?utf-8?B?YlE2eW9Pc0drdnYwYnlNU1hvUTFYaWs2SFRuOFY0N2s4ekxXcGhwYis1ZzRF?=
 =?utf-8?B?andQd25rVGVCU1hHVU5La0MvNVA2VU9LWFVabUhaNlNnUzFnaTk0VmFnTkll?=
 =?utf-8?B?TnRQcHdxY2EvOGNmZ1VzaU83UVZMbC83NW90M0tXcXlVdXVYelZzUy8rY3gx?=
 =?utf-8?B?N2RTSTBCd2RFS05pNFVES0l3cnJpRnZycnB6a1ZnbVozYURlNW1CNmlVdlJz?=
 =?utf-8?B?M1VUNzBhV0o1QmxKNmUyeGtaVllKOWl4TTFTT3RXdWZxS0ZEOVBheXJ5amdh?=
 =?utf-8?B?U2E4OXl1aVF6SXBGNzhWSlhYclBvYUR6enk5dTA1OXB1VlMyZlBYN0RVTVdC?=
 =?utf-8?B?MmdkcmlKd21HL2hDa3llQWh4dll5RUhmVFhLbU0wd2Zxcno1OXR5VXFDNUF3?=
 =?utf-8?B?cDhkNXZ2WjJMVXRua0xKMEZwUHV0eXN0KzJnQTJhbjY5NVhjVUxEODJvQW9J?=
 =?utf-8?B?OHNqcWRkUmp0WTVidjJLRmJRVjRqTGQ2eWFnL1oxdy85SVdGcUlKNUVLZm5j?=
 =?utf-8?B?V2I1cVM4Qm5PVXl5UWZCTHMwWXZJbGhjSkxBQzlrNUQ0eUtPUVQxSkRyTCt4?=
 =?utf-8?B?UFI4ZGFFSjA3NXlFMVdmMUxaUDhFOHlyL0hpQjN2QUVobGg0V2RORkxqT09s?=
 =?utf-8?B?NjhrWTg1Wi9veTFKZ2lKQ05MRnRUWFdNMkNicUV6d2VCUTlTaFJJUDZUTDdi?=
 =?utf-8?B?Y1ZIZHoxd3BISG53dW5vd2JHdE11SUlEbHljdDQwU3NjOWpIL1hiRUJxWmlN?=
 =?utf-8?B?cHU4U21aeXo2VmxWYzFtd29keDB5OFlYNjFLblNkYnZUZTBSV2FOa3pFYVlx?=
 =?utf-8?B?TXgxN0ZsS1IyWGcxMytIZFM4YWI5ZUtLYnFkOHYyWURrd3Mzb0hVa3VDcnR6?=
 =?utf-8?B?VkNQaURpQWZFZmNaeEdzQ0htRjRGamVLLytaelZRS2hhemFTU0xrWHpLWUgr?=
 =?utf-8?B?NmR6OVRiMjNkQnJaejZObDc4dFF0TS9wVnJKbTV3UUhrT25WYnhRT2JvdTZn?=
 =?utf-8?B?eVg2NWNvR2V3NEJIUTE5LytoUEpqN3I3ejRUTGRtdnc0UnMwYUw1VGlZRVd0?=
 =?utf-8?B?OXJFOHBwcVl1SE96Nml1ejFURlhDak9NYlFBcVNuTUhmblhmS2MwSmFhOUFv?=
 =?utf-8?B?b0FDSTNIVkVONmZWNW5zNlBPaUtBU1ExdDZsWmZYTU5IMDYvU0oyblo5dVRQ?=
 =?utf-8?B?eUJWajUxbVN5eTd3c2phWmo4Z0FxNG1kVzlKVnFjY2Z6OVpKNXBMYzlQQk1u?=
 =?utf-8?B?eTM0ZmZDWml1VGY1MWwwYnZvdTlMd3VpM2RKd2NuVW93WDY1elpyaTBJMWJI?=
 =?utf-8?B?NWVYK3daL0lrRHNCZ1ZwUk1nQ3JQNVFuM1NOYTBGZzdkay9kNWJaeURrRVA1?=
 =?utf-8?B?TlpVZ2lRNHJrUUVURTBqVTM3aVd4eWJIVmtSK1J5L0tnQ0hvNkJsMFBOTkhB?=
 =?utf-8?B?SDUyL0d3SjVGRmc3eGFwRHQ5V1YwbEJnOWNyZG41Q0hBaVozV3FabFJJQTdC?=
 =?utf-8?B?YVY2ZWh6UndsK3ZoTWRKaDk5L0RvSlYvR2lwTmc3aHhVSWFkdGh5bmE5STYr?=
 =?utf-8?B?MWRIWmU1VGlnNlpqYUVtTkRTbXgzUW05dHNhZGlpWXJLOWdTNGhtaGtVYjFz?=
 =?utf-8?B?dlFBKzczM2J6K0p2cEJmY1FFRE1MZUo5Y2pEZnpvS2NJbUhNc3pZclg0OGpy?=
 =?utf-8?B?UWJDMHkzM2h1a1puNlA2QXdSSXExQzF4Rm1TblAzYTZDZ2NVYzMvZFdFdHB4?=
 =?utf-8?B?YmUrQWFFUGM4WTM1RXFUbDNlTEtKV094SmpKSU9KclYzakorRm1NN1pjZ1Zr?=
 =?utf-8?Q?rMwk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzkrcU5KOGpYMzMyRG1XbERHenVDOFdvemtobWFReTB2ajBBRGQ0QXBJWlpC?=
 =?utf-8?B?WGM0SjZHUjZWNUJaQlpnL2hpZUpIdk1JN0ZIemlOOXJQQUZTVFBtOU51VzF2?=
 =?utf-8?B?K1d1QzJZcFZZS3dXejExQzdJM0hQMnZzRHEyOUFkdGF3TnFPWHJxRnRxN0g5?=
 =?utf-8?B?Tk9wdGZxMWZnYkNwazZMdjJSeEY2S0lpSDFmK1Avc0tvOGZTckFnaVB4OGlX?=
 =?utf-8?B?NllvTHpqWjJyRlhHWGdMVWhDVlBuR2NhN0xML0M2WHQyZG15VnhHdGdrQWlV?=
 =?utf-8?B?V2Y0aWR2SmhIaDVlbk5vQkNnRFJtOExsUFUrTnVTSnloVFFFc01zMmIrcHEz?=
 =?utf-8?B?YjVodnRGZUFaM0xnMzNPMm03THBwNVgrQjJJNHhWS3lEaEFrbEtITVNLajlZ?=
 =?utf-8?B?Z2FWdHdwN1cxaDJPNWVpNlhwOExqaVBHNkpENkFtRi9qOFRBWU8ramEzVjdK?=
 =?utf-8?B?eFdlL1BvbWF4UFQvbTVTOVJ3T01nUGJUYlhuQUJ5WEp6TFovb0VZTWVJVmtL?=
 =?utf-8?B?MkRoN25hSXY2em5ucjd6cWQ1OEQwV0Mwa0JySkdOSmJIcThrTURwUXpyUHZQ?=
 =?utf-8?B?aXJkQjUveUZjeS9Ic2ZSWUhTUnF3VlM0UlFJSERRT0hIbEtzZllHKzF6R0hn?=
 =?utf-8?B?Z2p5aVRqcHRDQXJvem1tQXo4WHRXQlJpNWxkUzhwMXFRNmJXOUIwblFaOTk5?=
 =?utf-8?B?d3lwVzdTeDNuYmdCUEpEQ01xNzNFSEVnL1lSTUhMOEQwdXdWUVlWNTJTV0JH?=
 =?utf-8?B?bGg3S0JQUTJoaWFKNVpNS0wvQ2dmV2dSNGZJNE1iZkhCTFZyWlhpVlNxUlhT?=
 =?utf-8?B?V0p6QnB6T1cxMW5taUZONVkrRjI5S3hzU053ZW16dGdYb1lhSU9mNGtJbkVa?=
 =?utf-8?B?WFBQUjl1azF2UUdWSFlKZWFnMkpuUVhHYzJZQkNhcFFleG9ISDBoUnpDWDds?=
 =?utf-8?B?Q1pRNEtjVGJxWk5MR25nYk1wTTdJbU4xSUpCd1h6UFZXaE5MU0FEdE0xWEtW?=
 =?utf-8?B?MkN2d0NLOGt6aTI4amVXUVVpSGNyRjQ3dXV4ejkxMnppbnVyOXZFOUdTbWdq?=
 =?utf-8?B?Tll1VldSbnVCUkhoREg2M29kZkVaSm1hTWNLQTFOYmVyVFM2b2VHUGN6c1JU?=
 =?utf-8?B?NjFsUWVtaHRvbHBIQ0xESjI1MjVSZmlUcWFyQ3k0SHNEQzl2ZTJlYlJXU0RJ?=
 =?utf-8?B?TnM1UjhaL1M2ZnlhcEhUc0I5bzg0R25SUVdGSHk3QmF5QThRNDNkRjNCblN0?=
 =?utf-8?B?ZVJXL1haS1BQd1NML2Q1SU05M3Y5ZG9qWnY1K1B1d2VKRmhDWFpoSGpCUTRE?=
 =?utf-8?B?TGtvTDFERGlEUngwK2xqaDM1WmkrOExieiszeHdySkozSFRMV2F5cTlaWHdT?=
 =?utf-8?B?aFgxNkQvcXFhUVJEZitVUTgxTDNaWjRieWxhK09kWWZ5aEVha1BzZXRVNmFU?=
 =?utf-8?B?T0Z5VlBQdGJFcmt1eWxqQ3ZaRFFZMDdoZForcWZnK0N1UG1qV1FzcmZNT0I0?=
 =?utf-8?B?NW5Nd0VmWmUzMFJjUDNxbVVYVFNTNW0rVnl3Q0c2d09FWDJXSVhWclhEdmN2?=
 =?utf-8?B?VUR5R3FERmorMU92aFQvWDhjUkVjOXdDM082Y3AwamJtU29JOXovSjQ1RlU0?=
 =?utf-8?B?MFR0cnlMMUI0bFRaTVAwaGpDOG5hWENqeW9lbis2NG96SE5ta3IzOGNqTWZX?=
 =?utf-8?B?d1RUYWtVN3RTL3l4VGoyWVdna3U3RExKd2p3UWZCY2gwTkNsczRCTXRhaGZN?=
 =?utf-8?B?RXNKaGhZajhIL3lKRm82dGlzM3pHZ1NXamM5eVBjdmpBMjJQak1CZ2pkY2NG?=
 =?utf-8?B?ZWRhdVJXQkRqblVUV3piNWlraHEzZHpwVlJET1ZxQmQxVmduR3Bpb3pDdjJC?=
 =?utf-8?B?aWNmcCthZlZSN3A3ZGhTMXNEOGpEZUJnU3cvTnVsbW4zRFNuaW5lb2NyWGtu?=
 =?utf-8?B?bEdDdEEyZTRQaXJIbnhVZzJJQzlwRFkvbUJ5azVqN2h3TThYdnpRRTZ5ZVkx?=
 =?utf-8?B?RTU0TmgyOTZaSWV4MXNTT0I1SzZoUlYyMkl2OXBwWFFJWjk1RzNOaVB4aGVk?=
 =?utf-8?B?M1FHQ1liQzk2dklXbjRxZDlRTThkU3pzNVhnUVhnS0owL0lQSkp1dVkydVhr?=
 =?utf-8?B?T1J0REF2eVl1SmJlb1dkbGVEMFJ3bGdJNDJhejdPeXJhR3kwc0V5UWhvUnpx?=
 =?utf-8?B?cW5aakNRSnV3Ukl2TDFGWnd4NG9yOHdBWWs4ZStNNnVEb04wUXBaWXR2QmEr?=
 =?utf-8?B?dFZxWnJZZFpYREU1QkpyS2ZhTEducmRxV3VGVWYzTmFyNTNLTy9hZGhUUFRU?=
 =?utf-8?B?WnlEMzFlZ0w4d0pMb1QwSkcxdUZZSWdWY29yRjVGZDVSYWZJZ0h0bVo4cUpJ?=
 =?utf-8?Q?SXUkkPqY7YlOkg3o=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 015145f3-88b2-4ddb-3468-08de5d1e0b69
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 21:01:15.7665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AAFrkjvEP8qPKdxJX1E4WtzoBJ8orDs4Wrn7fV7CHlyJfzysNdndTkA7OenrBbHIjrrEDHsJm7fn+VBkuVH40A8tgOLxbLeKo/2VnJDsX+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB9461
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
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 541528D6C5
X-Rspamd-Action: no action



On 1/26/2026 11:46 AM, Maarten Lankhorst wrote:
> Fix all functions that use node->start to use xe_ggtt_node_addr,
> and add ggtt->start to node->start.
> 
> This will make node shifting for SR-IOV VF a one-liner, instead of
> manually changing each GGTT node's base address.
> 
> Also convert some uses of mutex_lock/unlock to mutex guards.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

> ---
> Changes since last version:
> - xe_assert -> xe_tile_assert
> - remove extra null check
> - add guard(mutex) to commit message.
> ---
>  drivers/gpu/drm/xe/xe_ggtt.c | 53 +++++++++++++++++++++---------------
>  1 file changed, 31 insertions(+), 22 deletions(-)
> 
...

> @@ -1033,9 +1043,8 @@ static void xe_ggtt_assign_locked(struct xe_ggtt *ggtt, const struct drm_mm_node
>   */
>  void xe_ggtt_assign(const struct xe_ggtt_node *node, u16 vfid)

btw, we somehow missed to rename this one to xe_ggtt_node_assign(), but we could fix that later

>  {> -	mutex_lock(&node->ggtt->lock);
> -	xe_ggtt_assign_locked(node->ggtt, &node->base, vfid);
> -	mutex_unlock(&node->ggtt->lock);
> +	guard(mutex)(&node->ggtt->lock);
> +	xe_ggtt_assign_locked(node, vfid);
>  }
>  
>  /**
