Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F018FA23084
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C1B10E99D;
	Thu, 30 Jan 2025 14:38:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FHtKyC+s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 554A510E99D;
 Thu, 30 Jan 2025 14:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738247914; x=1769783914;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3cMUV43fFlxYzn50RX5OQS3O1axwrqW/8T7idgenv7M=;
 b=FHtKyC+s4dkMaLlv6RfX8OI3YLXAf2ze6giVzRfMupx5rWd6v8Uf0imc
 Vw3knB+ESZOkFksWxFRYI3IT9pjy2rtZUUceLmwUqmE7M85Vb6BPZrPct
 cfXBu48YgpfhZBPeBQ8FNS49h7Tk4Lq5sWTtv21l4Lvvr2Sda4sdZ64S3
 x5+2K8gQsCW2skEhQjsg/64RpA1bUUVEmbBfSALxsg9Mt/8knUIN7g+Fj
 +R1x0xLPanfL9KDMM9BMChwPorLaUR4lt4V5RWDUBfYzGyfqM9FG9IRzU
 J/uprZ5dXjXatEbNNO5i56J0mfqTuLojoMlgHIvp7+IgWagjnMcyhNd6B g==;
X-CSE-ConnectionGUID: Y/OdXDtCSk2+P2gvko5xmA==
X-CSE-MsgGUID: NyKoKxCCRomsKI0X/QnouQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="56218209"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="56218209"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:38:10 -0800
X-CSE-ConnectionGUID: N1+qUBz1S7CUfbmq3BLejA==
X-CSE-MsgGUID: 37b173q6S2KZZBfMqf4ASw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109483317"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 06:38:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 06:38:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 06:38:09 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 06:38:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QGmKNKYXiG8F9267ip12BJemIodHj0bCM9kGqVhsN1BlMo2EnEJ8TjluZkIVPwDsczPe5/j5H0/odVzpknbl42IZKIfqStpfLrBhAfVxo6lyYuT1eR5KFLBcWaMA051mxm9/jXc4uAgpfD1C7zAK2l7izOxmVctIXJpSjf8bCEkery8K/VZd1fWLxZIyK0L1uclHkwp/OnrLvY4W2Zj7sKpzuFJIYnIKBZwGJn0Y0r7TybHZvs+YJIzgqyxCYEufhgl6V4ntFwav2DLUWMoBwzAdvVnZcvZl27PzAhgZwGXfnvjmPoC+esmQeSNBEHQz0PxGWkyDrwxUTMQSiarvpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EDKu7JZFb6wV0Inq9RPkK3ImWfA2xdiMwEVuW7Of35I=;
 b=DqC17PS8fLDOZ2xggtygowDxwZ2rVyd03zliiXU2uOnhGse9ep5yICpAFNN/DSP9fW2wfkyLCLuiUH+k+/ayxbMa2H3sMCFK+DtjtxQQOuU06vK8A3vnx3gLUHvNGiFKHA7orge3yC1kSj/lbyWXu6QRCqLawJ9gaoZemvmSE2mLJAxnTNKi6on+QBPHTSvnP30TFGKhbjf7YEf7DffzF1h46UYcGMXfAV6/r2ZiZM7LgG/gW3GrF94PHhIHca5/O6tAGlhtLPoHB9+PUbKcyxKfdBwHnHTXn/2v0ebxNnEcpeUPtiPDJGO90HQss71Dr7Pd72TdXb+Ok3yP71Fw9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7476.namprd11.prod.outlook.com (2603:10b6:a03:4c4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Thu, 30 Jan
 2025 14:37:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 14:37:40 +0000
Message-ID: <5b1506ae-b42e-4e40-8290-be183d18b412@intel.com>
Date: Thu, 30 Jan 2025 20:07:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/6] Add AS_SDP to fastset
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>
References: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250130051609.1796524-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7476:EE_
X-MS-Office365-Filtering-Correlation-Id: 3547d36f-8d14-43de-719d-08dd413ba5c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?elpWa3A2WXdKc01VZE9DUmhhYm8zTkZUd2loVmFRRVBaNGdqMlc5UzgzL3hI?=
 =?utf-8?B?cy9oQ2twYldsY2RTd1FmSVl1QlloVUJTZmR6RVVXVWxrRlp4aXkzQTNVQ3RW?=
 =?utf-8?B?L2pTQ0xHVVdDazU4Zmp2Q1V4Y050dzVUZDNZTFZ0cEhGV2ViQmhlcWtBa2Ev?=
 =?utf-8?B?RUJINUU5V3JZeExUZFhCUklIUk1IOU93bzRPckdSOU1VTFhzVkFTZnBub2Nv?=
 =?utf-8?B?QS8zQ1NGK0U4MEdONk9nbmNCcHRIZmRHWFVpcTlnOHlLT2diajFDNGV5MUFl?=
 =?utf-8?B?b2lUdVR4VE5TYVQrbnl3Z3kzMGVMOVhvQkpZa2srWm12czdrSFVmNGlhRnJI?=
 =?utf-8?B?UHBqTWdOb05uS3hhZzd4ZmU0RS85VWJic1h0NExNeTRlb3c2SnJCZ2hVL2p4?=
 =?utf-8?B?dUwzTzdlQ1NWRjJpUGgwM285cC9RU2Qva1FnaEtnRWR3bG9YVDNMRGRHZVdy?=
 =?utf-8?B?OUVLNkJMQ0FyUldSNlBKaUcyQTFkUThPM01zQTRnTHVReUZRbThYWUo3d0E2?=
 =?utf-8?B?Slo4TDk0WjR5clpQRDNWcHZ4Q0JmSkNDcFRIZmZJbEZVSGxvZHdNaEtpKzBC?=
 =?utf-8?B?OEJ3WDBUODBGTmVCVjJvZnpHSXorQmRvSzQxNSs3TXA2Yk0wRk1MTWovVGtM?=
 =?utf-8?B?dkw0N3FOWlZFTWE0WGQ1THZLenR0U2xFcmd5YldoQ0F2L1NKL2YvRzJGNDJQ?=
 =?utf-8?B?MUFURFcxUW9XbEN2b25yUlRKc0phTmN5U2lvNzFaQ2JNekJIelB1bFBDM2p3?=
 =?utf-8?B?NjVwK2R2elJEM2I2Y25SWm5tQjZsWWo5a253UUFEWEd6UUY2T3UyZXAyaDdC?=
 =?utf-8?B?bC9Sek5KTisrZjkydFpVMFBCWG01Z3I0QXdYMFB0Q0hraXNlUGltV1ZPaWJs?=
 =?utf-8?B?bzJZY0dBdHdabnkrL2pSOU5wdVBqdVlqRGV3eDUxZ3g0YkZSRDQxeDVOWkFw?=
 =?utf-8?B?RTRjUHpQc29oWktvOGt0ZkdOQzZSVlc3MG5uSndNQk9JWGxLNHIwNGx3ckN3?=
 =?utf-8?B?Nlh5QVZhOU9kcU1PbXdjdnM0Y1BsMi9PUk1ndmxHcWRCSnl3YnhlRVFGVE1y?=
 =?utf-8?B?bkZUNDhKQjFJZDR0L05JeXIwUytDR1d3Z3VpTzhUWXg5UWJUV1Q4TDZyWWpq?=
 =?utf-8?B?U21hNjFIOXpNN0xDRC8vUllmaGZpa1pVUkp1ZWJWWlZ3UlNpYXJEdUYzWHZo?=
 =?utf-8?B?SWtnRjRiU2tYSHZNMHYrRkFkRmltZkxEcDl6VW1kWHU3dnNxSjNBVmRGaEVz?=
 =?utf-8?B?QThmWEtKMytRUVdRUGxqM3V6RG1JWGR2cW93U2pPUWM5YkJ6eWdYSE8yRDJu?=
 =?utf-8?B?KzN6Mk9XNzc3RW5HeHpmL2p1L0tqcHpzaVloUllaVjNXYzJqQ0s2dTN2eWkv?=
 =?utf-8?B?QjFVdHFkZk1lcmxsSDNESUF1L2Z4MmJEejA1SkJIclA5bm9jMjllVU9RMVpz?=
 =?utf-8?B?NzQ5Ynd3MWpBbnJkSVlxZ3pRcUFoeVEzR2dlaTNYQVlOREIvOVpSdE4zV3NV?=
 =?utf-8?B?bG1TREU0VThQeHhjcHUvYko1N1JtaSs4ODFDL3E2OTY2ckM2WW9LbjQ4aUxI?=
 =?utf-8?B?eFEzNC9tdTd2dDNCQ1R2NEdxamwranMxM0w0UWtab3dZK0UvRVp4ZTQrSzlY?=
 =?utf-8?B?eGFSd2lhRitYcnJCVlo0MW9XalgwMW9Uek9jZEpOVmlIeGM3R0RZSzhOOG5r?=
 =?utf-8?B?WHdmb3NpZ2lMOS9XT0ZMdDlMbkNITGRXSmRtbllWalRhVHpyV1FMaElqSC82?=
 =?utf-8?B?WFZaRnN0SkQweGFMNHA4MUVDcGNtLzdIdG5FODFzNExIRlpXejdVUlpLeGVJ?=
 =?utf-8?B?ZVpKNThGWnZvcTdNeFFTMHk5SkV6MDM5eGVrUzVPTXhDbUNReVg2empoNEhC?=
 =?utf-8?Q?0nGbt1jzfSAq3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUVzRGFTQ2JoQ3B4cFZrSExaMWg5U09MSCtEd1RsakdTbVc5NjJVWHlRL2ZY?=
 =?utf-8?B?TDU3MXk5MWp0RWx0N0VRaXRWQnU1N0VPa2wyOWxpc2IramxqTDBwRnBVMmVF?=
 =?utf-8?B?djNmMlZzQ3hXU0RsbW1RMVZMdnNQY0VKR3F6dG52clVrY3k4ZUVYN3VRMk1o?=
 =?utf-8?B?UWF1c2lsNmR0b1BxNFlSSTcyVGcxWFRyZnBPYXNCS280ckMxMkVoNzNIM0xv?=
 =?utf-8?B?VFhOYkFzRy9aM21hSEFycUlpZys3MVYrb3RRcXg3YnVraVJzY292dXFVTzFD?=
 =?utf-8?B?L3dwVVhKbXdYQlRyQXY1Snc2RytsdHZyT1VPN2M0OFpCMHo0UnZiUEVwald3?=
 =?utf-8?B?bndWSkpscHJJdjV1YUlMc2ZIWFJZVUZzN05Ld2xBZmx2cVY0aHU2YlFZeENL?=
 =?utf-8?B?aS9VMDBoZHpwUkJUZzd3LzZkZ2VUcE9BU1QvKzBrK0lrZWRIaHN6NGh3aFlz?=
 =?utf-8?B?cWFjNm4ydlVWRzNjNDd1UXp0OS9vU3NpTjl6WWhzOEZyUFI5SmZQTzBqSlp4?=
 =?utf-8?B?c1VoY3NrSDlLa3dzdW1jSmVUdERSNk01VVg5WHRRQUtoWUJHWW5kQjMxbEdZ?=
 =?utf-8?B?SnBiemhjeUpCRFVJQ1AxekhEdVpveEdrZjlZajRPMVRUeEpxZWRhbXBzV2Qz?=
 =?utf-8?B?emkwY3VIckhlM2hUV0VCalVzNzh0Q1dPdmx0ZC9aclZFUjRkejRiVnRta1U4?=
 =?utf-8?B?QThVdDAxc3g5T3ordmxBY2M2WnB3OHdBZFpuUW5EMDg1QVlubVlJNWE1Tmxz?=
 =?utf-8?B?N1JQQnJHVXVkYm82ZGRmNVlsdEh4aDZzRVJNMGg5OE1MV0padlk1b0Fqd1Ft?=
 =?utf-8?B?L1VwMnVlYXdoNlE3Q2xDUU9ZRjJMN0RuSGpWTGF5ZjJrejhCRVdxVG9LOFZy?=
 =?utf-8?B?VStlOXlPdjhuMG9DcGtLWmZUUDcyUStrWUJqK1NXYm1qZTBXVy9mWXZvQzhW?=
 =?utf-8?B?alhJY012NDU0aml6T1JBc1hnTUlhcE4yS3hKcnJjN2xhSC9TZzdENHBsZ0Np?=
 =?utf-8?B?cFFtS1dBMjk2bWsrd0R3UGxsQ3VucHhTelBYRmxGL3ZMRGJFRFFOSldmekdB?=
 =?utf-8?B?U0o3VnFOaEtBSlJTMUNjb1JjMisvcnkwT3NlUlhzK0RRKzhDTmhrVjNNaUlh?=
 =?utf-8?B?L2pFUHlHblNhUWg2ZjZYSytPRlVZWnVBS0pxbVRQbGlDaWE4dTRsQUF3QWR4?=
 =?utf-8?B?REhHUFhrbXBtdzFvSjNrSUQwTlkvODc3OEgwMER0TlRyaDlLaWlQdFJLank1?=
 =?utf-8?B?NmdLbXc5OUxyZTNIL2t2MnFBVkJYeFBJMEJYdlBVOFpPVVRrUEhTMW8rSWpk?=
 =?utf-8?B?ZktwRTBER0k3UTlQZlVuelF4YkxPcVBBNk14TXdPMlRkTkJIbExNcWRKK0ly?=
 =?utf-8?B?N3VUUXc5OWdqSXNISUwxaXFPSmhLWWVxZ2MxZjV4eWpWSElTdll3WjE2N0la?=
 =?utf-8?B?dUFaRnVjT0p1WWVYY0pNMU5abkhZV0l6cEt1M2czRFQ3TEhHN0hXT0pIeDRO?=
 =?utf-8?B?azZmdTJpM0ZScW1BTkVlWGcxUVFkUjJSR0ZFUFA0OHRRb1E3V05YdDJDckRo?=
 =?utf-8?B?MkVvelBCMHk0WlJERFR3MGFGZlEvOGpEeE9TMXhEVy9QM2lxUTYzRmQzbDJP?=
 =?utf-8?B?SFRUOGVSVFFPQzF2UnF4OHZ0L0szSGo2YXZBTC84d0I2QWlMUG5SWWxUeDll?=
 =?utf-8?B?YktvQXNsaUp6RjRXU2J3ckpqUHA0NDJPTmtsZVQ1d2k1K1laSk13eHRqeVZM?=
 =?utf-8?B?YUZ6dEwvbzJzbktZU0t1N1ZjdjA2NnZiWjBrTHJnd1p5bVhaenNWOXBLbWFy?=
 =?utf-8?B?SkgxSmhEcDdyQXZVd3phcVZCYTl2Ny96TDRiZGE2a3NvYmFFSmYzZFlSZ2tH?=
 =?utf-8?B?Nk1lWVA1Q2wra3Z0V3Riem56UGNhVDZvc3B3cTYzeE1BNlVwVWNWZThDT0sz?=
 =?utf-8?B?UCt6SE9laElYL1NPakduWG00dG1ScnJRUlNtbjQzclIvN2RjM3hmRVRKbCto?=
 =?utf-8?B?bTkrQlZqZ0ZxWTl5YzFiR2VOTXhOaFRTc2hvakNTbEtITzJZRUZSZm02UVFl?=
 =?utf-8?B?NThrNVlCRGE0Wi9kdll0R2lQUmJva05mekx5Q202bHZjcGhTTmVrL1QrRGNx?=
 =?utf-8?B?ZXZ5K1d0UXZUNHZVS2lxZit2dVhZOWJ3alg4RmJBMU5JK1BWbng1cFkzbGV3?=
 =?utf-8?B?U2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3547d36f-8d14-43de-719d-08dd413ba5c7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 14:37:40.0971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZkPaaDr7j0LSr8hD1ezsdegVQtJsAj82C3LyX4mgLjaXhFCn1sc/EZurCp/IsCWEahgwqRt+vYaTcyGl4OpOOu0/4tSmdBgyiYUtY/DdWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7476
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


On 1/30/2025 10:46 AM, Mitul Golani wrote:
> vrr enable disable should happen with fastset, where
> adptive sync SDP should not block it to full modeset.
>
> Ankit Nautiyal (1):
>    drm/i915/dp: fix the Adaptive sync Operation mode for SDP
>
> Mitul Golani (5):
>    drm/i915/vrr: Add crtc_state dump for vrr.vsync params
>    drm/i915/vrr: Compute vrr.vsync_{start, end} during full modeset
>    drm/i915/dp: Compute as_sdp.vtotal based on vrr timings
>    drm/i915/dp: Compute as_sdp based on if vrr possible
>    drm/i915/display: Move as sdp params change to fastset


Thanks for the patches and reviews. Pushed to drm-intel-next.

Regards,

Ankit

>
>   .../drm/i915/display/intel_crtc_state_dump.c  |  5 ++--
>   drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
>   drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++---
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 25 ++++++++-----------
>   4 files changed, 19 insertions(+), 24 deletions(-)
>
