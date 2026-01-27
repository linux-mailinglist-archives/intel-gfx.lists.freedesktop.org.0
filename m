Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id prLhH/NNeGk4pQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:32:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D091C901E5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 06:32:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E17DB10E27D;
	Tue, 27 Jan 2026 05:32:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0KntY6y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DAF410E27D;
 Tue, 27 Jan 2026 05:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769491952; x=1801027952;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Ot3EK9210tIb6ygkDidoox8NzQPuvWcIduAozNH8op4=;
 b=V0KntY6yp5jPElcKFPMjMLNvMwzaOZKh+6ML/H649s93dLKe0dpyE+AD
 HK6TADY8N8WxnFnLDtdYVmTchXwCoAS8Vxm3l/S7JYs5UOWOVcZaLOIPT
 yaqICH9S6V7xhzab0Qz/jx+FG0vnIhv5Q24f1HVkEWvrlgzkwuUUW7Fmh
 O8BROirQEPwOWP4Bvwlok3037w2ylYqLMe63H1STi2b1Y9i8Rjlz9nAlu
 d37RdAfzYITqfYa8bkTeXcVpKiXAAiNt7NyjUzxXLsdOHXhTTb81hKf/+
 i+8gxtCVgszx1rQUtolSgCv2ZMKDHwYJkzbvogpvT6ZNwTi3MbiOI1OvT w==;
X-CSE-ConnectionGUID: Wcwg2zdqSNWfLfb/eNHilg==
X-CSE-MsgGUID: DqDDfrObSwyJdb4ykR02pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="88256608"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="88256608"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:32:32 -0800
X-CSE-ConnectionGUID: IjQf3e1KSOOide3W/LWkUA==
X-CSE-MsgGUID: gwL0VdMEQFO50aODAXsmDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207000149"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 21:32:32 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:32:30 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 21:32:30 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 21:32:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SAIWTs33KQaEKFBV9TyfbqkeXbJhGDLo5WKsHE9tcpswWc08FpjZERxxlyMSfXRsKmYojZMxPpcnrhID+x2s4pPGLnF1J8L/0PW6jmW0gQYh0oloejXJgVtqkwuohYww/FL4pUjvEA/1LNqBdfB7rKQLssDq2vRlepQLobShKivnLduJqQjHDETk+7v0CpRYPqxAuuyt5QsV/PLLL/Q0tO2tZVzkzvpuQjmlSefmD2KhtotPp5oJ3kUdK6rKiqB1/n3TgdNhwGQ87Cqx9x8JgPZ2gzcTMEM1kZi1dyIcL4EziwgdoXQMRnXLQ/Ek2xKzBi06eGfrjYFQQuisfoEPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jTVXn5kMey250siffs7xx+/qXSZnqLLOVT0OkzwQKTo=;
 b=m3LrGYjEyL0VMSp9DLdTT7LFJJvsjEM00B0/kyY5seS8HJ7QNXkIOzJxXfkehPEzRyJEzdfP3i/R5o02mx6ukNUQXxOSM5AC7wItaALlbXIW8I43ndwhVFFbLSJ9Ow527b3KrS7ILw7JtBDlgFQrM2dKLb3jDfX7K8qKKzq7vSuPezHH40NhAnbQnU6odNiFePuc7hNuBPFQBb/Mve+evoKmCbqn4CLnjcqJBySk+S5O4jIdh1lJVc4a+O5n8yqaHheVJt8uMFGqsNVjsqsuToYUBvw/EHuJlJat9gz4L0FGGAD6Yh0YiClAPwo2ERbTnvfmbJ3FpdDgy0aAp+hbIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4602.namprd11.prod.outlook.com (2603:10b6:303:52::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 05:32:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Tue, 27 Jan 2026
 05:32:27 +0000
Message-ID: <5aac75f2-3414-4b8f-86ac-f80f332b23a3@intel.com>
Date: Tue, 27 Jan 2026 11:02:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 05/10] drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit
 for LunarLake and onwards
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260126075959.925413-1-jouni.hogander@intel.com>
 <20260126075959.925413-6-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260126075959.925413-6-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0092.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4602:EE_
X-MS-Office365-Filtering-Correlation-Id: 471c6d49-4017-447c-42ec-08de5d65755c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkVWNm5XYTFzeGp4cHEzWkRSbVJTZDkrM3Z0K1RuNW9tN003L1JYdDZpWDY4?=
 =?utf-8?B?SXMvOHR0bCtERjYxM2c5VmZhTHhBZ2E0NS9yMGNidzVUZFNUSkVYVTNSTHJG?=
 =?utf-8?B?STFYNXhpS3FSSTN6VWFoYTNTNzZ6RHh5Tm1HQ2lJSEk2WEYxcVdoUHlMTWVL?=
 =?utf-8?B?VUE0TGIzRkt5TXU0NUNVS1I5UUxnVFl3S0wzWDNwZnVlQzc5Umg3UVlTK1R5?=
 =?utf-8?B?OWRDa2dORVVreGllZnNqRTh0UktmK2ZJNTM3NzdVYnY1eDNxcmc1OXRmOUkx?=
 =?utf-8?B?TjZSSlh5Mjc3MzgybGNlKzdPbzVjcFRvSjcvc2NHWncxOGU4eE9iWWd4NVJE?=
 =?utf-8?B?dW1oelJLS25FS0F3K1o2c1FRQlo1ellsaFZJOFhHREVHcW1XTGZ6MDhLZVVO?=
 =?utf-8?B?djJURTFCVDkwdGQzVDQwZXhWZkE4K2QwSkxpQ1M1OTlFS2I2UDUreGdES1lF?=
 =?utf-8?B?T1VTWDRiVUNoL1lMUU84T1pUYUJIcHpHRlVDcVRHSXU3S2ptalJKRDUycHV2?=
 =?utf-8?B?UmFPTTZaTXlXOEg4R2VMZTFRZnBLS1ZSQzV5ZjNreXJYa0EvZ2JIdVdiWDNu?=
 =?utf-8?B?bVNQdnJhQ1FKUnQ0RGlRSlFTT3p2TVh4Ynl3TUNDSXlraFU3eUhYUXE1TE9o?=
 =?utf-8?B?WWNFWWFFVU42bkV0dGJQdGNRcU1XbVAyWEs2ZXVwOEtrWFZQQm9YS0ZWc0Ra?=
 =?utf-8?B?eHRleUd5cjA0ckFPejR0Z3NPSzlNMUptN1V1RFY3MWFoaG9aWXV1bWFseE1t?=
 =?utf-8?B?YzJncnphbXN3bjZTMlpMU041ZjN2L2VkS0Q1Sy9SYXF4aXJNUVV3WHVyNmUy?=
 =?utf-8?B?cTJTUjNPUEhZaVRVb3BLQ2VmOFJnZ3N0S25XU3pNUEdSc1ZicXFIODVJNlNG?=
 =?utf-8?B?aVJKZ2UyVVV2Y1kzY1grcHNMRlZLUHdUczFMamJzU3pwT1hrT0FSQVFpcXg0?=
 =?utf-8?B?Rk1hNXNmUGtBL3lSMHNiYk9GZEYzODNSTHNSbzZYdkhheGMyMjMzTWU4V3Fq?=
 =?utf-8?B?OHdCRmh5MFNIK1Y5c2cyeGc2UERUTEUrcDZkbUk1OG43QW5zUllJN1hWVGFD?=
 =?utf-8?B?NGJtMVFNM25wNUJsWnd2bWdIZmtKaytVS1BqL1FLMjRVZVF4QzdTL0t5b25W?=
 =?utf-8?B?ZmVvKzVFd0VLZ0dLaFcyeVlnNEpBc0szV0VXNUtvNjJ0MjJvOVIvTW9YR1ZB?=
 =?utf-8?B?a2V5bVM1b2w4M3RLc0FlVUErSFNocEUrSVVlME5PSjF4SVpkalAyNnhqODhm?=
 =?utf-8?B?NHpQTUE5V1NjZ2VxL3A1bC9FOGVoMHpPbFZRRmdYbkRXN1lOekhUVVc5U3ZZ?=
 =?utf-8?B?dDRHZkNxRnMvR2loZm5UdCtaVG9PQzFnSGlYRjlnQzZIS25ScE0xNWM5MnA2?=
 =?utf-8?B?eXVUT24wOVZJSkxhdWtJUFk5M0FraUcxNTJManE2U0ZrS09xTXpIeDVmZTd2?=
 =?utf-8?B?OUtNTVRQRmJkc3BPK1NBdERXb2I0ZkdheXFPS1VpOG9vT3pCYlVuQnlEa3pC?=
 =?utf-8?B?TGtDR2ZTbnA0WUttanFJTk14VDlBa0JtOTBzdCtKT2I1Ynl4ZUdPcnorZmRP?=
 =?utf-8?B?ajVUSkwrVTdzWGJsOWxQcjdmQlFVTjd5Wk5ZamVtRkZjYWJHcUxjckFIVHN4?=
 =?utf-8?B?dmJ5aVcwY2RkaWo2a2F5Y1NUSTZjMzhGOEUyb0E3SE5MdnZrRThEMWJXZHpH?=
 =?utf-8?B?VjJpUGpvWE5vcDVjRnhkTmIvL3lIUGdFc1Y0dDA3U3N0d2VjTTduYUh2VDNI?=
 =?utf-8?B?TkJGZExsL1pGVk9ldWZ0M0kxQUhRNlFVYTRpOWpzVy96TWEvNlhrcy9JM0xv?=
 =?utf-8?B?ZytWNUllenY0UzlFN01lVTZZOWIwL0llOUxxQXlXWE81TFJXWVd5Szd3RHM1?=
 =?utf-8?B?ZGtTOXoySmZFSHhoaDk3TVY2bk0vQWJwRHJoVTk1Q0o2Q1ZldmRjMktzaUpW?=
 =?utf-8?B?TVBidFZvY3ZPRXo4dldCeXdVTGJCRTVwdUpibXZ0MXhCbU9vcHhVM3U5Ukx6?=
 =?utf-8?B?bzFZTzNqQWIxUks3R05BRXRKdnc4ZVd4bUFkdHpCOEdhZkIrNDNCVFMzV2Nm?=
 =?utf-8?B?MmxvL1BFdlZPT1k4cW9VazFFV0xnWkcxcU1PZGZmZTVmNCtSZWhxS2dFd1o0?=
 =?utf-8?Q?0j3k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0hGME5ETzQ5QVFPSnArVlZLdDhqVFV3Vk1wd3h3L1RlUm5YQWE3cklpUzRs?=
 =?utf-8?B?VkdpYnoxRXc4OVk3VTN3VGJIempMV3NIcFY5cDNtWVgyUyt6dFRsTHpPeWNr?=
 =?utf-8?B?LzV4aHhSR3p2TzExNHBTMm5Cb20xbkJQQ3BHVExkeS9jbWdiajV4MHNuTW0x?=
 =?utf-8?B?dGVBUnZrUU9WSU9hVmVhQ2ZqWldLUUN2TGNxdUpDWmRIS3BSbC9Ha3cyMFBI?=
 =?utf-8?B?OGdJTmZsZEFiZFJJUmNoUGxqckM2Mmt3SGFkWlJhTkNGbFJWQTZoMXY1SDM0?=
 =?utf-8?B?SmhteTdEOWwrMjBPSldRcGloWWlUeUVMT3g1TC81WSsyTHdtWFAyN21YNUhl?=
 =?utf-8?B?WU9qT1NrUVJSbzRKS0RTbytuWXFCMW53TTNuVDVtOHlaVU9walErSWhsK3hO?=
 =?utf-8?B?OGZaV2ZFeTJrb2V6NTd0anVFbzI3YUdLUDRGcjYyMVBJQXc3NE9nYVFhQTZX?=
 =?utf-8?B?TXFOUmFZR1AxS3lmYkVwazJ6ODVxcFJFY2FnbUdKQWhoS3owVmtXajNQd1ky?=
 =?utf-8?B?ZXlPR3ZMbEg0aVZiU3U2UmlqOVJrbFNpZjR5WHJzMHpQYUdBNzU0TVoyQXNZ?=
 =?utf-8?B?TElxcGF4OXE0WUYybml5dVZtNnZZRTNYTW5MVFdhVTZLNDhtSjFPRTB1RDBk?=
 =?utf-8?B?UFJLQ1UvY3R1SjRXL28vb1k4RFBPMFI2d1ZBQ2JvR3JxOVcvcW5pMXNHRTJM?=
 =?utf-8?B?RTF4VGpVQmo0ZXNHZitMUi9VeWtCOUZxNDVxRUNVVjBPWUExN0p0WXJYTFlX?=
 =?utf-8?B?VXR5YUJJQmJUdmhvMno5aklKN2gzdUxWTFZUVHhzN2dQMHZpdXd5YVFlVWpw?=
 =?utf-8?B?R1lyektZbGdlUUt0Q0FDcmlBK2x2YlJxSDduUkdEcjhNcncyRzlQcWJ0T2NS?=
 =?utf-8?B?OGZnbUV1Tm8vR0d6cmIwOWV4cVVpY09IeU9PcGVQOURTaGRWQkEzMXhEaGlD?=
 =?utf-8?B?aGFtb3BiY2ovWFcxNkllVUFLOWRSNmhuUlJWWHVUbEl0clo2RVFKTEVyS0Mv?=
 =?utf-8?B?NkRVa2h2eGNXbW9wdWF1QUxLOFJpYmgzTDZtM1NIU1IxM0lUMFpWbUdEL043?=
 =?utf-8?B?K1RDc1JaemcwQTRhZmxCYWJkMUpMTTNmaWtHWXczazBCcUcxUWM1ZmpaNmZP?=
 =?utf-8?B?cU1RZDlyRmFlaWZFWVNSakZTdTdHSTVTcFNUZExwNVlxL2NLbkpFTnJKM3Ar?=
 =?utf-8?B?MVpXVnZWanpqeVp3M21zV0FEMUtrdElaZ3U5bXcyeFhBMjNoQUFXTmxDclRE?=
 =?utf-8?B?bnJUT3VEYzlBdE4xNXI0QldVdWlpOTdXTStxaDVaSW9CU3h0azBQdGxHMjdY?=
 =?utf-8?B?OGhNVXlkYzRSUDdDRzhOcHVpZCttOGdybHBjcytpNkRkOTdSckRjNFhPTXNy?=
 =?utf-8?B?SlBKc3o2eHhLRTRVSEZucytORm92OWNXS2Yzb2lRaDUwT2l0aURxUGxHbkZV?=
 =?utf-8?B?bU5QNnkxRUVRY0N5NlBsQmxkRzk4QUFpRW5jVjgyemM3Z2JCczJoZzFsdTdi?=
 =?utf-8?B?US9QRGQ1dndUOUhLR1pPc1IxbGh0UENzVHFza0tCNitHWk41ZUo5TUpRWWlM?=
 =?utf-8?B?MVRubmt4TmQxOEpwOVpZVlpQazN5MHZMeTJpc1NnRmpXN0YvSTNtZmhCR0RD?=
 =?utf-8?B?ekVGTjhuTitzdk5yUnZuTUZGWWU1N3RXaCtTZk96dVNJdk94dnU3OGI0VDJU?=
 =?utf-8?B?OXJOZm50NE1KcktRWm0xZGVVaGphZm8xT2xHdkd0N05GYzFUSGZDbG96MnNp?=
 =?utf-8?B?S3J5MHBMblJ4YnBHeFhwT2hjMTA0UU5WVjNWeE5ma0dEZHBJUmU3aDhUZkpX?=
 =?utf-8?B?QThUQnBGUEdQL005Y01aWnhyOFZlSXJHdEkycXFvMkpob0tSMURQWkhsSWFh?=
 =?utf-8?B?TXJnQlJKQlF3dFZhS1JmYlgyQituWUFwaHp4MjdYT1lLcVJZSG1rVHYyRlIz?=
 =?utf-8?B?MkhvSTFHU05MUDdCTVU4TUJsRjZ3KzZXR2hKL3BZVmpFcGptY3RSWDJPNXlx?=
 =?utf-8?B?NHNpNEd6SkRMKzliU3QwRVF6SHQ3ODB2OTM3SmtqK3BCa1JYdkFIZjEvc3NJ?=
 =?utf-8?B?NVh3YkdPNHdweWMwQzBxZkVmVFJlUGNOMmJMcDlhSXFJc0V2RTR5SXlQVzJt?=
 =?utf-8?B?MFZzWFc2aTRPaVN4RTA2KzYxMnpmbnROMFpkcWlrMDhPckMxUlo1TnlKLzdl?=
 =?utf-8?B?TVhwOGF0Z2FjenpkdmRjYVRPbnZPUitJbHVsQWVjQlRnK01XZFVnZ1JvMGQ1?=
 =?utf-8?B?ajl4cThlbkdDb1Y4VWFWN0duekxwMEZUWU1rRDVaZDZFYVQzSnVHdEZ4RkIx?=
 =?utf-8?B?eHpnbXJzdUNkd0VTN3k4bG5RcEFMekJaNURSZlNaSWtHQ0ZSZ1JCV3kxMnB1?=
 =?utf-8?Q?hrLhuPRPSe0fyVnY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 471c6d49-4017-447c-42ec-08de5d65755c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 05:32:27.8534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lIUxOgi0FwMVUMV0TBOnMB8yKzUA7XW2HTROfC1rSxGFWszKNZt2AYFSnBBa/hxsDpjukYzk6lB/IMiczMjdYwKtPoKFU5reinFUTV3A/EU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4602
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D091C901E5
X-Rspamd-Action: no action


On 1/26/2026 1:29 PM, Jouni Högander wrote:
> On LunarLake we are using TRANS_PUSH mechanism to trigger "Frame Change"
> event. This way we have more control on when PSR HW is woken up. I.e. not
> every display register write is triggering sending update. This allows us
> setting DSB_SKIP_WAITS_EN chicken bit as well.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++----
>   1 file changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 91060e2a5762..3f083211a7ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -17,6 +17,7 @@
>   #include "intel_dsb.h"
>   #include "intel_dsb_buffer.h"
>   #include "intel_dsb_regs.h"
> +#include "intel_psr.h"
>   #include "intel_vblank.h"
>   #include "intel_vrr.h"
>   #include "skl_watermark.h"
> @@ -166,18 +167,24 @@ static int dsb_scanline_to_hw(struct intel_atomic_state *state,
>    * definitely do not want to skip vblank wait. We also have concern what comes
>    * to skipping vblank evasion. I.e. arming registers are latched before we have
>    * managed writing them. Due to these reasons we are not setting
> - * DSB_SKIP_WAITS_EN.
> + * DSB_SKIP_WAITS_EN except when using TRANS_PUSH mechanism to trigger
> + * "frame change" event.
>    */
>   static u32 dsb_chicken(struct intel_atomic_state *state,
>   		       struct intel_crtc *crtc)
>   {
> +	const struct intel_crtc_state *new_crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	u32 chicken = intel_psr_use_trans_push(new_crtc_state) ?
> +		DSB_SKIP_WAITS_EN : 0;
> +
>   	if (pre_commit_is_vrr_active(state, crtc))
> -		return DSB_CTRL_WAIT_SAFE_WINDOW |
> +		chicken |= DSB_CTRL_WAIT_SAFE_WINDOW |
>   			DSB_CTRL_NO_WAIT_VBLANK |
>   			DSB_INST_WAIT_SAFE_WINDOW |
>   			DSB_INST_NO_WAIT_VBLANK;
> -	else
> -		return 0;
> +
> +	return chicken;
>   }
>   
>   static bool assert_dsb_has_room(struct intel_dsb *dsb)
