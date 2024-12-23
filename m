Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8F29FABD7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2024 10:09:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B527E10E03C;
	Mon, 23 Dec 2024 09:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PYtiEIjN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBEFF10E009;
 Mon, 23 Dec 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734944963; x=1766480963;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aFC4Wu81i0+bA38QoakwUlx5y9Z5b4u7vs0Nwnh5OjI=;
 b=PYtiEIjNbxypp7pmbc3ibUTZ0t+O9KdVuSGTww2xUqAZlIUgBxvaKUnj
 csRXGSMP40tXHR9WJ63RlwCoNek/Z3tIkegMH6TQYD0QZdinzA/ImhvGQ
 jdGqkQxq0vENBV7K/85nMU8chlw9DGDyAV0W+EM6y8VweX1/aWvh9qixT
 OWcHfIlACAODbBmLdCBlWYBIdACMByrZJHoGWZTU4aTmvZefoN0P5OBSE
 gIDzupA1ncJWkYpW46m4rZdXuAJyPf+Y0sLh+Mb+eL7La6xSvIXC5zW1m
 HHDxK4x916TCAwKk50WXrsYHTFzljyJ0ioUWqzqBt4O+leoizqat1KOj/ Q==;
X-CSE-ConnectionGUID: rPZOWuXLRHOlunupEL/dEQ==
X-CSE-MsgGUID: JOJxrZAPQs+UVQrltvGffQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11294"; a="52933562"
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="52933562"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2024 01:09:22 -0800
X-CSE-ConnectionGUID: 95Gjkw0bQL6Lb331XUyFFQ==
X-CSE-MsgGUID: ALP/WD2cQoOTtpganM3MVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,256,1728975600"; d="scan'208";a="104016740"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Dec 2024 01:09:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 23 Dec 2024 01:09:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 23 Dec 2024 01:09:22 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 23 Dec 2024 01:09:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lH9w+fFukO+2OtHoDIbNN63vv3vjGtl2YfFsg2/s0Q396YuvU05TN44gRVrjGYkDgJzyre9DfXIHybuI8y6NFSvhItqKNqkk23hvaylWMJCqrchvcZA8WzORhAqtSiwxijcNq8yA9TIbqvQ4MbdMJ3BWmgjEGwe31Wnb5ofzv6T08m1dVEVKjMQdcRH6sZlR/BlXatBECjDmF4R3P/MeXXqkvrS4MRcahLvsTHsWMJcr3m8CmLZ7EpzUJGss6wavhjKfVbBr+DTMzxkT0OprhnXnJFJQoQgXUG2jcm4/C1lgdnfTk4jSmZw4pfqdeGlujpaA+ngjz8GoD+x7sFO7vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+r3hP4B/okONgpWT5MrlbjslzOjuCxiPrQNASCmpc1k=;
 b=XdwwcMpyZP4H7SPJWGSx7+Vq/vPOlby+I2KCHjeVcepxz1x9UdDFL3tCzD+2+DsAgoNm+rNITC73Nrc7Q1Q6MRkuvnkuUut3N6jWhB1U60XkWYYpDrgvqTl+vrywLgXmPUWe+3EPDWK0xWuROujyWa6KbHQxcQ5l52X7ZKIMfyKKAwJOpipTsFfn6GOMmH991Fg0mRHQktn20OL2pOYlo4KrPJXyrF1DZgIahPIMXVE8mdaWDBQjs0PiOnxGfK/r+hKMwlJZ5dCzLljXrfhZfRaFPeuhAUw1Uh3wYLetlX34Ov4fXiyLdi1OATNGvGIeH3gs1BHw8jRyLVSZP47opA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5787.namprd11.prod.outlook.com (2603:10b6:303:192::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.20; Mon, 23 Dec
 2024 09:09:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8272.005; Mon, 23 Dec 2024
 09:09:15 +0000
Message-ID: <43d6dbbd-5b5e-422c-bf1d-e3b7550fa011@intel.com>
Date: Mon, 23 Dec 2024 14:39:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v2 3/6] drm/i915/scaler: Use crtc_state to setup plane or
 pipe scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241217180710.1048355-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241217180710.1048355-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5787:EE_
X-MS-Office365-Filtering-Correlation-Id: 491d8483-ce36-4de8-d0cd-08dd23317923
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEVXSVBGKzQzMzd1c1czSlowS2VWT0lKbmxQcGJqYm1MR1gyMHNpUjlGeE16?=
 =?utf-8?B?ckJjNHBEUmo0a3RxOTdmLy96TUVGNndtLzMrb1FhdTJZUDQ2K2ZkQ1Y4NWVW?=
 =?utf-8?B?Mk52VVhHWXVla3hEZUVJSXBLaUt6MTJDcHlvbnluNW5LQ3Q3aGR2dm9HVVl3?=
 =?utf-8?B?UTZvakd0N2JjalVvaDhHYmRISkVtaWlpbTVHdTFMcVZuVWhjSThOT1BhbTMw?=
 =?utf-8?B?a0RVZzhxVUZDdTlvZVZ3YjBiNVZ6UXBkZG1YQ2xHakgySFdkb2FqMUp3MzhM?=
 =?utf-8?B?WUVwMUxvODdWZGJ1bW44d1R1NjFob1NDUFZwa29Cbm9nV3M0NDBUOVZIUjFN?=
 =?utf-8?B?N213QktPcFlweVhnUFpjcCswVnVMZ3FUcFlqaVhjTmtYaUVlZFZqZlRjUWZk?=
 =?utf-8?B?UWpZYU4xTUN0Z2J4Skk4dmszTitPQXBYbkp3VVppbzVvUWh5WDFHeXFEZ2lo?=
 =?utf-8?B?S1JJREZXUjd3MDZrLytrSEdydjMrbGFvT2VRd0wwZi9Id3I2MGNNZE5SOE1o?=
 =?utf-8?B?ZEpVbU1abnJaMGt4cmFRWVFta3lkZkRsb2ZpWXVMMWdoK0V4TXN2ODdVRGxE?=
 =?utf-8?B?VE1aWHVBM1VRMVNtcEkwVjBsQzg4ejBKUzVLZlVJc0xaUFlRVHd6SHdyemth?=
 =?utf-8?B?YzhpUGV1czBZY0NSSmczSzh2YjJ0Vm9mSWUwU1hRcmRacVo3dXB1YkNZK3Rj?=
 =?utf-8?B?eFhuaE8ybm5IUHNsQnRiZ1ZlYm9lOXFoS3dEVjRmenVlc3o1ZDhwdmZpVVdw?=
 =?utf-8?B?czc4eXBQdGlhMElqYjFuRWNyTUJPUVFhSnZXL3dhY1RjbFZmVWhWdk5NRTZv?=
 =?utf-8?B?dUVBQit5QjFKOXZvMVpVSmJUNWxUOEhkK0FUODRlU1ZBeERmNFFrdGlWMXgy?=
 =?utf-8?B?QUY3cWFsZUttOWx4dkJmOXV3dFFlV2lvbXFRRkFha1ZScHNnNldsNjczeG15?=
 =?utf-8?B?QVVQMzJwQkgzYTRVUm9FTE9tQmdvNFRuc2dmRHFKT3RJWHdkMFB6UXB3SEtZ?=
 =?utf-8?B?NTFEanpwNEF6QjBZdktRU3FmQjNydVhiaXlRZFJFakh2eUFBL3VjSS9rc1di?=
 =?utf-8?B?UHVYU3F3bzdyT2F0eTM5OElOZTk4UDd3R014dHJhU1MzbWZ3dVk0ZlhielIz?=
 =?utf-8?B?WFFhYkVEMmpqWTFlRTVJWlJrOEc0YmxNT29MTXpyb2piUjFhWHc0TzZUZjFj?=
 =?utf-8?B?TWtBUi9wWDVTRTZyR2I4OW1QRHEvYWE1L3lXMjdlSzRiZzJRc3ZTMUhISGF1?=
 =?utf-8?B?cXpacng1TnRialVkU2lCcEpvRmVkNkZKSGhJMWZHaCt2VmJIQjFYODRPY0Nw?=
 =?utf-8?B?Y2JTeTl3OFM0aUxNbkZyK3BlRFo0MWtxTVY5WjZZZ0taN1FRSFFGYUhZMk55?=
 =?utf-8?B?dEovQ3FDamtQL25vTDdBNVBydGc4ZXEwUW45NExEcWNqU3lScURBQlpQdkFJ?=
 =?utf-8?B?bnVqNTUzbjFNajdMSlNwWjFRQ0NUQUFNdGppMGcvZVdRWUtFWmtORERwWkVk?=
 =?utf-8?B?UlRyUktTekM0Z3BmekMyeHN6NkI5Z0Z4MmlFOStoUTM3eXZCZWMvd055QTJI?=
 =?utf-8?B?UVdMdGcxQ0JTU0dSNHRweTVWWk4yWkdVVzhwN0dabHJDVm1FNGJUamJ4dkVn?=
 =?utf-8?B?TUlMZTVzVVh5N3l4MHVJRVkzZ3lPNUg2b3RyNzF6ZGpveWFuZGd2S3FNZlpm?=
 =?utf-8?B?VS9Eb3oyU0hoa0syZzNUNDluaVBBOVJEVDFVaGdaMjlCdEpuY1lpYjE4NjMw?=
 =?utf-8?B?N1FNMEtIckFFcUZiSG1wTzRtN3YrdTh6MnR2VTRUdzE4SEJqeThqYkpTcFpR?=
 =?utf-8?B?NStUSmV1YVdaWVZ6S0xyNTZmbjV2YVNvTHdFQUp6MXJlNzB4K2pmQXZOOWFl?=
 =?utf-8?Q?vIlnNFAWhbjBx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0NmTEs3eDJYNFM1VUtXaTVSeDl6M2FBZXg0MUtGWUlWbi96WjVob3Q3OG5y?=
 =?utf-8?B?Skg1eEdZZlYzeFh6ankvY2FyQmtPVnM4eldRcjBqem96czdET3FFRkFQSERH?=
 =?utf-8?B?cHYrMWlnREpVOXJEMGJ0YjdKZjFaVlJNOWNsT2hvVHFtZGphb0xRUHZQNEJk?=
 =?utf-8?B?akpGRHEzeGFlbzUwekRzdGx6VS8xWTJ4NkQwWCtuc1FoZ0JxbjRiZnJJWGRH?=
 =?utf-8?B?V21TTW5qeXhvOXZzZkhTNzJSdk5pZTVlQ0U2U1Q3QzhoeWxSQ3ZNVFArZ1JO?=
 =?utf-8?B?WnRtZDRWNkxVQ3U1WEpkMkp3eUtsbXdWSEdQdGN1SkQ2ekR0VEpxeHJJaWFa?=
 =?utf-8?B?bkNhNTBhTWlObndZWG5XM0VINFZZOFBzU3ZvNXFHWEcyVzZ1T2hVMzFOOFBt?=
 =?utf-8?B?bFp3SFl1UGQ4VEhVelppZGRSd05pZGZMZk9oSnZ1TXRiOWIzSGV4WkQ5YnpJ?=
 =?utf-8?B?Rjc2bzYrWGZxMEhCRmF5VDAyLy9IcjhhVXlmUCsyY01UNEJjYnVVN29EbnlG?=
 =?utf-8?B?b0Y4ZWNZRTBZR3RBZDhKT01uL0RKQlF5bDNTY01GcVZKWUlEeHNLRnV2RDBD?=
 =?utf-8?B?RXpBYmErcU44N1hrY1FETS9TRjNMcXlzZU0yQWNsRTVnbEZuV2laUGZOWVQ1?=
 =?utf-8?B?MitiYWxtaFYzRlI4NDJndE95eWt5dXRuNVFEeGZzN3lYQUlwZFR3azJoQVRn?=
 =?utf-8?B?MzY4VzBibFhQZm1ER1NFZGV6amU2NzcrSTB3QzBweE8wOCtYSHIzaHVWYkll?=
 =?utf-8?B?aDIvcGg0Vm8yeENiRmd6bkVUL0NNSFlYakJJeENUazVsaHhYdFFVYzljcG9s?=
 =?utf-8?B?TGJxNHlsUGYweFpQUTRtZFFSZ2ExbVMreUxwYng0SDJBeGJQT1Y0VWVZMkRK?=
 =?utf-8?B?QlBLRHFVaDROM0NRSjZFelpBS2VYZE5HTHM0Z214c3c4ZkJPMHJCcmNZaEpK?=
 =?utf-8?B?M09yREw3MFBtMUdOV0l3eUdoNkVBNUFUNko0MmNEK3hUSWlYWi9DdzZBR0ZX?=
 =?utf-8?B?OTVVTmFGVFk5UTVGcFNwOStrS1ZmbnZzWEtrNWVWZlVLeWZqSENaUUVXTEVl?=
 =?utf-8?B?REhzUGF0U1B2MFJqMjMzTHkzT3hSMEZXY1FoZExhSVRmR1c4RFNNbzRjWEg4?=
 =?utf-8?B?cmx4K0xrVzltM3ZkY09FUDdMU0h1V04yTHhPZGVDcktSSEtDRmlrQWNUbnlw?=
 =?utf-8?B?VVJkVGFHckJaY2RBek9heG9seXYrOVpXVEJYNnY1eFBIQ2N4YUpheFpDRDRq?=
 =?utf-8?B?Y3FjeGxCZ20vN3ZWSXVXS1pUM0ZIQnpIMUZ5WDBCMVN0a3Y2K25ETzhFL3Zz?=
 =?utf-8?B?SFBEa2NCQ2pMcDNjc1BPY3ZmZzNxUURPL0hEUUNlcDBEMlVzamgwZzh3SGJP?=
 =?utf-8?B?M3o3N2hIUmk2dUE4Q0tKMVA3OFJuUjZ0NXZaZTlKYlA4WEFDK2lIYTN4UWFi?=
 =?utf-8?B?TXRxUzYyNDRQbnMwWEZJVnlRNlZMdU96NTlvSGJtUG1HdUtIVFpwM2hCajhn?=
 =?utf-8?B?TkZkK0dzRTI1YmpUY1hUQU5pb2Q1dXA5bjZtVmVrLy9QcUtVa2dKeXhNd0Rr?=
 =?utf-8?B?L2ZvTlBHamc3SVB6MWdoSlZUV0ZMNDByeHBTNmhvYWU4RHloRUoxVXovVnhE?=
 =?utf-8?B?YWNxZldTSjdhK3NIcm03U25SdUdlY3pSTEcrMXFUN2FCZlhJbXdkU1NJYTIr?=
 =?utf-8?B?MFM0MTNKMUNBRWZ4bzZDRXA1a2tPY2hpSHJqbG9yajF2UGdmM0FpbEo0UkVy?=
 =?utf-8?B?Y3h2NzZXRDhRQkIwa1o1MGFKZzhKeXVQMzNaUGFHVi9FNTlBSitwOFRGQkY3?=
 =?utf-8?B?SEpsSDJEMSs1TGVnaVFGbGFBeGNId1lUa2VqYWEvaVhQbXpVazhOQkwyNVQ2?=
 =?utf-8?B?VnkyTTd6TXAvbnl2bktuRjM4UG43SHU2RXNLd01XckdqS3V5eUlON2NmMFQ1?=
 =?utf-8?B?TjhVUjA2bFBsY2xibDZrN3hMZ2JxMlVFY2xYQTB1RDByRC9pSGFPVVJpTy9J?=
 =?utf-8?B?d2ZXWTZuK1hBN3VoSFk3OVB0WWtNbzJPZFpTRHlPblMzTGdXWlN3VnlhdkJs?=
 =?utf-8?B?VUMzZUxjV2Fvc3kvcU1mNGFjdSt4a1YzWUlMbkF3dVdCTkw3bmdBMGtWRTkr?=
 =?utf-8?B?YXlXSWdYQlNaQ0cxa3pRUUNHTmJDUnRSdHY3eXZ0Q3MyRUw1WVJWQ2phNmZC?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 491d8483-ce36-4de8-d0cd-08dd23317923
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2024 09:09:15.2824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QZINd+B/lwKvJZZQ1nHW94g/qpJlCzq9re7uwgeXu9XDKNgWhBR9y2ccvIXja/yohEO8UatFGfVmzIrELEtl80UeGmD/+AkiO3l0l3KZtBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5787
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


On 12/17/2024 11:37 PM, Mitul Golani wrote:
> Parse crtc_state to intel_atomic_setup_scaler, this will help to

I think you mean 'pass' here.

Regards,

Ankit

> check if pch_pfit enabled or not and also will be useful to parse
> scaler_state with the same.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index e113c6ba4de7..1c65b53b45f0 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -308,13 +308,15 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
>   	return -1;
>   }
>   
> -static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
> +static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   				     int num_scalers_need, struct intel_crtc *crtc,
>   				     const char *name, int idx,
>   				     struct intel_plane_state *plane_state,
>   				     int *scaler_id)
>   {
>   	struct intel_display *display = to_intel_display(crtc);
> +	struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 mode;
>   
> @@ -444,7 +446,7 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
>   	struct intel_crtc_scaler_state *scaler_state =
>   		&crtc_state->scaler_state;
>   
> -	return intel_atomic_setup_scaler(scaler_state,
> +	return intel_atomic_setup_scaler(crtc_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "CRTC", crtc->base.base.id,
>   					 NULL, &scaler_state->scaler_id);
> @@ -479,7 +481,7 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
>   	if (IS_ERR(plane_state))
>   		return PTR_ERR(plane_state);
>   
> -	return intel_atomic_setup_scaler(scaler_state,
> +	return intel_atomic_setup_scaler(crtc_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "PLANE", plane->base.base.id,
>   					 plane_state, &plane_state->scaler_id);
