Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD892A00922
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 13:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A63310E0AB;
	Fri,  3 Jan 2025 12:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SNRmT3yb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C191110E0A5
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735906657; x=1767442657;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yiky9azs4J60vLxmnx9tBcNCYtQi2O1Fe1CAGyel6nM=;
 b=SNRmT3ybWKE8yojBnNodwVUUKGPoDVdT6N1vfD6vKNgXukdL7IuzvJUD
 fpJ3hpyJMz4elD+Wg0wstYz0mZm4bxybvebFOgwxi1Lugi9sRZqBGj+FA
 nfaBAZd/cV5b/Ew0KtE0dcDFeu1I6kv7g7xL1qONwWAkn2lJS1SCl0D98
 fiYjwXRprz2Ej74X2f5SDJUnde3426j8mIR5lTEzpPkZrK5gu6cqKYl4N
 C/YjMxVWm6qf7aseDI+HPmSt0Cz/bxVnHO/qplZcPh9XzwSwsJTjCOXHm
 dkE5mWI/CB1QutkQ8LZagnaP2B3G/cj5sfx3Ad29uRUNs61kDrt0ZJ/gV w==;
X-CSE-ConnectionGUID: E5KOadxASGWU7fnZqbSnVg==
X-CSE-MsgGUID: ssrvnBRYTVqXrppEFo+SXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="36033685"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="36033685"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 04:17:37 -0800
X-CSE-ConnectionGUID: RGpIbql3TFeYDlFRuN+dbA==
X-CSE-MsgGUID: aFh8yrKIRKeUy4PgGWybXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101856742"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 04:17:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 04:17:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 04:17:36 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 04:17:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jmBqanq1YYtYLgggLuoMI64TKm4uM0x7e4QJ5VXjilNxNal9ulPgYke7zVk7ffWkT8yNn2BQPkMA2/U3PI7BtlG6G1e/ivIwBgxpVRFMDg1QUzI98HbifzWSy+UScqKpqHahbmnGMEF6Rhq0t7zCeCIEhriuA8v4IZKlhfQPW+KLc4Tnd/FoZyun/gxiVysSj2lSmS/BM701quwIYN66EPO/T8jvVeKCMRn9KLK3Hab4A0EfnBtf2fHKtULbco7LmlzYXmHIXgNWNtGgiXXfDoR7zqSXRt5KvLTP+tL153Vw2qFhGubUcZncqCny3INcDF7tiStLXtKKdWzJpbgyMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iqbqtexZGvomMY5PCckB7cUe5CzVffifizrLtNJRS/w=;
 b=BYck8TwsKzZULkLWRoX/0A3edsB6z1ZAFbkePT2lhk+0FYHTDEwqYm26Ns6JSad6QqIxKkGmol87JS4PRILgWexxVgMu8aw+oMParTm1QRqiZy2UraNVnUmN/6sR3Ja305kloVUU381wHpab++mELJisAC0nfAwCazspZJ8uzyK3Hf1EAODelcv6FtSlxUzjwMJoD+ythwnNGI9rZ6Tt7b1zsOzuYcwlrLUFAUQ8lXhEQsB3ihzEaLW9pAcH1jAtD3DWa1nxQXiAon3FzpH37YlHYTk+FCo2LCa4j2Xpi16TEqFfktoCEcwj3IWMY9vwI0hr74pFlZcKEz6Sa0hD8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 12:17:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 12:17:29 +0000
Message-ID: <f91df974-3ab1-427e-9b8c-2cff6a1b3a67@intel.com>
Date: Fri, 3 Jan 2025 17:47:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/18] drm/i915/dsb: Add support for triggering VRR push
 with DSB
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-18-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-18-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0110.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5076:EE_
X-MS-Office365-Filtering-Correlation-Id: 15aa704e-ebac-40eb-1f61-08dd2bf09778
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjlDa3NQZWdYMUxqbnFHaG9NYmdCekJZK3JZb2RrallCRnJwN0owbUdrTXFE?=
 =?utf-8?B?YjVySTZPOU1HaWxCVjloQzc3dHRvVXo3VitJTU9ORVBUVmYrUm1iRWRaQlRM?=
 =?utf-8?B?eko1eVBURUluZE12VVRlQ2xMZnRqYTdoUDBMVFhHK3VINWtHVzE0SFZjRzN0?=
 =?utf-8?B?VWFFd2FUN2lueWVtRlRTbEtZUXFmZFN4N1lkVUFiUmo5N0c2SjZWR0JnRGxv?=
 =?utf-8?B?dkVSeFJSMjd4di92b091aHFsa3RIOGlpcGsrTjhlai9LcXFJOHJsWXp6QXRs?=
 =?utf-8?B?QTZUZXN3cjgzRXBYT0RsL3o2cndDWGNBejAraTdtTHdheDRja3VJTnlleGxn?=
 =?utf-8?B?ZUs3dUpzQkMrSkw0RGkwejgxNlhLTG9YYWpYY20yNGNnWm43TGQ5VC9icDJQ?=
 =?utf-8?B?WmQwZ3F1QkY3SC9COHBqOVFkeUM4K2dBZGhCZldXT1JXR0xsUWVLbnNrSFFm?=
 =?utf-8?B?TFVLekV2VnEvTEVUOUV4UmJoanhGUmRmcW5iNVNkdHFXWXcrZzkvcFZKYXBX?=
 =?utf-8?B?K3BYRjVQMFJRb0p3a1FKWnJTTXE3TnJ5M2xOMFI5N0xTSTRwTVZoUXFKRlUw?=
 =?utf-8?B?bVFHZDBSbzhjZXZzeTZ4MUdwTk9lR0hKTFAwdm5oeDhjcjg2bUtXY2FHQmho?=
 =?utf-8?B?MUVsWmdoTUxEMGs5TkJaNnUydnI0eWxHN285SU4zVG8rUUxPK1lsM1ZZNFVj?=
 =?utf-8?B?b05yWmZyZU9zMnFabjJYeHF1d3BOQkVSdmhrNHVWY0xSQlZyWjExY2Y0S1Fx?=
 =?utf-8?B?Wk1hbnRSSFVodUZJVFR3MGRIMEVCdEF5SGUzaS9lRDJMTkYzbjc5SEE2MXlk?=
 =?utf-8?B?VmdPNmtRTWM1ZFp5UVU3cThkSTRvNnloQ3MzODlCbllyTFVhWWFIVFcxTDI1?=
 =?utf-8?B?YVFITVg2dVQ3c25WVVkvcmV0V0dMRWhoaWphdndYSXJDRitXN2d4c3dVbXhv?=
 =?utf-8?B?bWhZM2hZNld6bkVJZlNYRlZxV0tKVk4xNk0vOFZ4YTVsckxML3FSVUU5NUxI?=
 =?utf-8?B?MUdUbnBzdFVUZjJvYi9IVzNiSUFGN3NtbjhzZVhKZGRnbGw5cHBGUEFuRTJN?=
 =?utf-8?B?MHB1Qy95MytHbXBJbkZxNlpsbkZLcklhMEl1TXZzN0REdEhkOVlITWRmNDRW?=
 =?utf-8?B?NHR5RG1CYmJkNy9NYUEwVlFCa0cyMVh5V0Y4YlowOU4vWi9PS2YyZzgyZkc1?=
 =?utf-8?B?ckkvQ1hzOXhiWW5JcWR1T0h2ZW9yWEUyU2JFQnZOTVlqV3ZEL2hDU3FQaVJy?=
 =?utf-8?B?a1hyOElZajYzaXVPYkRRV1F4VDBwTkJLNTBMWUsrN29XQTNudFBwSTFuUUli?=
 =?utf-8?B?QVdRdlNWVHh3aytRNkJpVWJDb3JOd2h6UWE4dktLcGN1N3JkZStPSzVmTnlG?=
 =?utf-8?B?WVM0ekNPb3llYW96eEVMdnltS3pxWFVObFdLM29hbkQ0YjMvTkNrQlhnaXVz?=
 =?utf-8?B?YmE0OVhYUThMNkRURkJVRVBpSHRIbUhESEY4TkxLeUFHTE42WjJCY1VNc3Rk?=
 =?utf-8?B?KzdHaC9ONWJ0dEtnY2Fna2w3S0F3WGVTRVJKaVl3VWo3cVdhRGMrRUttWEhu?=
 =?utf-8?B?M2o4Wmx1MnprMURWSE9xVU1scEUvUVFhcFMvV3ovSHVWZWZMK2tYZWNoVklH?=
 =?utf-8?B?Qi9MVUNlZ3pHQnFhSUxrRWNHZFhoa2x1SXMwMnQ0bTZrS2VhQmdPOE1aM2lp?=
 =?utf-8?B?UC9CUS82c0FwR0FmTlZ1UTBsdURDQ0FiSFhaL2I0b3ZibzdxOXVqS0RDOEho?=
 =?utf-8?B?d2ZUY1NWRXVVWEhJdzBxRTZjc252ZzV4eTZ1M3BQSHkvbmdnSnQwRGNjSnFu?=
 =?utf-8?B?VjJkb1JiVXlzaFN5SDdVUVBZbVhDM2dkU2IzK2QwemF0MXNWSmFhZStRV0ZQ?=
 =?utf-8?Q?BKYKp9FAnI4JS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmpxYjVEQmZVaWQ3clVqUlFnWE5MVkRZTklrRTVzMy9WMEZ0dGo1azlsVTZm?=
 =?utf-8?B?Q1o3cE1xS3ZydEh2R0ZaV0RLM3pLVDJib0FpcEkraWNlZlhHNE5WQzkxTHJu?=
 =?utf-8?B?dFAwbnljTDIwUTBiRk5tdHZNdGJhYXFwdE9NSk5xd1NkRWlhY2l1Zk1WM0VX?=
 =?utf-8?B?cVNTZlFhYkdjV0NxSHRBQ0hKYTh4UGt0Y05saHFOODdtazRFVDh5WVJOeWZN?=
 =?utf-8?B?eFpuYi9vcUw3dllhOUhkUm5zRllYbDRPaVVOdWxWK2dnbGZQd3JOWkJvUDR2?=
 =?utf-8?B?YmMyUytqMUR4dmd5VGRTdEhlSSs0Y3ZVaUIrK2daNjlLOU5tbUFjSzVjWnU0?=
 =?utf-8?B?Q3d1bCtvNDgxeHNCRlYrRFI2dy83RXR0M2QyeHo3bHozQVJPWkZMNXBlUXor?=
 =?utf-8?B?VW83ZVJQeDNaMXdNalNkK0hUaWZRNEF0dWNZRnh2QnkxeTdNcDhySXdhR1RM?=
 =?utf-8?B?dnRad3JpUTh3S2krR1RtMkdPZCtIa1V0THYzVEc0T1RRMVBGUi9MUGdZcTlw?=
 =?utf-8?B?eU9uRUMvM3A3NnRlY1NvVmtTVnVNbFJMOGVsdmZEclRHeVR4TWFLTUIrU3lJ?=
 =?utf-8?B?SExjZGZsc0Mza3VSNlIvMUUxbjRQck5NQ0R6VDBld3gvMU84akxVdXVJRFhy?=
 =?utf-8?B?Y24wMG5aZkwzbnNMZ0c5Q083NEtjTGdBTkdCZzFLYmJkRGpRaGE5VzVtRTYy?=
 =?utf-8?B?YU9YUENZMFNsN1N1SHlzanpjNVk0S2JwQ2tiRENnNFc1ajhiNDVwSnRRa0NW?=
 =?utf-8?B?MzVwL0U2b1VNSytsZ3NTSk5vTjNRU3dNRGMvZ2ovN2tTMWdNbS9LbFJtd0Q0?=
 =?utf-8?B?OENJYWtUMnU0b0t3Y1lIdlpMbzQ3eDBIM2UwbkljQU1SbDRROVFlYWs2Sm5j?=
 =?utf-8?B?NG80VGJ1bStmeVlETU5jQ1JoS2JBZk1Vb1lvTjZYajc0Z2hDTkx6S1ladnpO?=
 =?utf-8?B?Y0NPVXNSeTZIOWN3RFpIanFBVWVUUHNBdzZHSGJ6SDBuekdha3huam0wZkhN?=
 =?utf-8?B?Q1F5cjh4WG5DSFRUNEpTK0VFZk03V1orQVZHYjd0bG1Ibjc3TmZNSFdZWnhW?=
 =?utf-8?B?MWp5dlhlQm5FN2g2MUN2WTQ5RTV4dUwvOFZhYTJMNkhQaWd4dCt0MUQ4T0Iw?=
 =?utf-8?B?cUVFbWhWamc1RzNXL1lvOHQvQ1h0UnlDemFkR0FCaktYd044dTU0U0c4djdW?=
 =?utf-8?B?cjBBRkg5OVRrUmZxNTFISnRSbkRpakc0cERmMjc5S1Yvd1pNV1hpamhsYXNl?=
 =?utf-8?B?L0lRZTEreUM3aWNROGQ5V092Zm1kai9ha1BRWU1iWjNoMjgwWi9rNGNrV2Jl?=
 =?utf-8?B?YWtyQ29jV2diUXhMdERuWmt1VHBpT2d6Q0p2VjdFeTQzTnUraHEwV2VWSGx5?=
 =?utf-8?B?K1RhdU55L0N0SCt6RFB2MVN1citCaDRtRDA4T1dzTXNOeUhVa1pLVk9aQjA4?=
 =?utf-8?B?bU5HS1lkNnVMb2FWazVXOTVEcmFwSXBINWQxbTNUaVRURi9QUW1Kc1BJbGJy?=
 =?utf-8?B?ZTR5d1FMc1NpZit0NnVwTUhIeXprVG9wbTQyVEtuRW14dzZtcCtwN2gxcVVa?=
 =?utf-8?B?VUE0dnk1U2Q3dElmbFZDQ0Z5am91VTAyWUhHTnNKeWdmOVFJTmQ0MGZoVHVO?=
 =?utf-8?B?Y3FtVldBUlZMQ3NraCt3S0VReUwwbFlKN3p6dkVTV2I5T2sxRGp0b2MzMDNB?=
 =?utf-8?B?U3BlNC9HdnZQOElBMHlyOE43eDdFM1FjVy9WMlBNVlFrVW5Bdi94QUtnNXho?=
 =?utf-8?B?cTNKRmtzSXltMWU2UXNVUERpZnhLN1FBYktnRUF4SU12eDFveWFKYWZuVEUy?=
 =?utf-8?B?ampQTVFjQm5mazNkY2hkVXYxYzRhbitTUUhIOVdKNlRHUDl4V09IVXEzejh3?=
 =?utf-8?B?djVQQkdpQUxDQml0dW5Nd0tzQ0tyY1ZDRUxnSjcxVkErN1Yrb3ZhV0ZXbHlK?=
 =?utf-8?B?Z3d3SVNHSjNaaHk4U0dwNC9UM2J3anhwWS96TWRXMjBUSzFRR2JQamFRRXBp?=
 =?utf-8?B?RHQ3cWZLR3F0NnR6TXA4ZFJmdzl6Q3ZscHlaelhqc0c2RXI5NUVFT1YxbHdC?=
 =?utf-8?B?enlkNWtsd0ZyK2loQktjdWU3dUpFeTVJM1VJSHhKMXRUUDZ3Z3RLR1dQeTg5?=
 =?utf-8?B?cWdkeEJJcCtqTVZMeUE5NVR3SmZDbmpJZlBxaVA3aHJGRmJ0Kzl6dmYyZXpQ?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15aa704e-ebac-40eb-1f61-08dd2bf09778
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 12:17:29.6124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iLM0CTvSXZv1Xck6AduA6hRVu6IoqIlToqm+qwh8sySW/t2+IOKuKGkja9kW5KcshtYEWpUUu/K/gmWEdixGcrZtftFwIY8nC8Y/AqflIfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We have at least two options for how to do the
> TRANS_PUSH_SEND + commit completion signalling
> with the DSB:
>
> Option A)
>   1. trigger TRANS_PUSH_SEND
>   2. wait for "safe window"
>   3. signal the interrupt
>
> In this cases step 2 should not do anything if we were already
> between vmin and vmax decision boundaries. Otherwise we'll wait
> until the next start of the vblank period.
>
> Option B)
>   1. wait for "safe window"
>   2. trigger TRANS_PUSH_SEND
>   3. signal the interrupt
>
> This option is perhaps a bit less racy, but if we do somehow
> screw up and the wait is a nop but the push gets deferred
> until the next frame then we'll end up completing the commit
> a frame too early.
>
> So for now I'm leaning towards option A since losing the race
> won't have any drastic consequences. To deal with the race we
> can give the DSB a bit more time to start step 2 before the
> hardware has started the vblank termination properly. Often
> times it seems to be fast enough to make it in time even without
> any extra vblank delay (the push is issued somewhere within a
> scanline and it latches on the next scanline).

Makes sense. LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 22b5eacda0f0..4b3199dcbe7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2630,6 +2630,14 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>   	if (intel_crtc_needs_wa_14015401596(crtc_state))
>   		vblank_delay = max(vblank_delay, 1);
>   
> +	/*
> +	 * Add a minimal vblank delay to make sure the push
> +	 * doesn't doesn't race with the "wait for safe
> +	 * window" we use for frame completion with DSB.
> +	 */
> +	if (HAS_VRR(display))
> +		vblank_delay = max(vblank_delay, 1);
> +
>   	return vblank_delay;
>   }
>   
> @@ -7725,6 +7733,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
>   					     state, crtc);
>   
> +		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> +
>   		if (!new_crtc_state->dsb_color_vblank) {
>   			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
