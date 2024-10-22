Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B22D79A9807
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 06:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E87C10E1C8;
	Tue, 22 Oct 2024 04:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BW+DW8qT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4382610E1C8;
 Tue, 22 Oct 2024 04:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729572674; x=1761108674;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wMDq4kym2t2U4nXBgtHGgFgQ8DlYWEQ3NuYqI7tfvXQ=;
 b=BW+DW8qTN+NJwM2LBQZeOEfMfTyf84tLJRxCAYt3uhmgFo62q4dUEHKm
 Lj6ImnjZ9ahBjJfli3oOvQhaYcUkb+8QPEJWI5G9tB8LjSGEDha4qujzO
 QWvAfPm+1qqX7NLAbroqjAB3Xo+EISYJRQ+CLRZqR2KwgXLRigj8Fusl4
 YyOWwHXLiPHKB9uqBJdST1rTT1+q+gyacSoEJgsSepPG1Ua4Jn/tanw+z
 SiCF78sGtUKADc0+qYCuiAPhtk2NYgIOf7u5Xj9se/i7hL+QwRaN1+Kao
 Dmkfde1ovgQSGLdDltE8+vFUsdzi7lix1yogKK2m+qETprWPOJH7hR0d4 A==;
X-CSE-ConnectionGUID: RJyUwIVnRAC4yYFp5YtXiA==
X-CSE-MsgGUID: +IQqrbafTnC/K7gmmkyYkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51625894"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51625894"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 21:51:14 -0700
X-CSE-ConnectionGUID: dOA0t9WMQ8egNgbuldbEog==
X-CSE-MsgGUID: /XCg63E+S+mJE0ij9eaP0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79669459"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 21:51:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 21:51:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 21:51:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 21:51:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DHjnpfC9WTkkaQfx6IvJwc7TcbrR+JtE7x+hqtlofQTK8SNePMpfYFqbVNiTXgch7UAm6Dn00ewQl5Oc1xEYzKkd+1E3XUD3d/g1NMkH79IuE/82XX7BJoV46ktn40WlsRCHxZFroau5X2Hv7jfABp3YGvHplscewLkmkU32rp8k4UC5Kovz3sSGgn1MXTdWzyKC3M0WUlxEaDv8GJ1oQ7SKPQox57wHf2zFcoC88YvEcX8PyyrKuewkCW9Kq9GSKUJJcZVDdyQonPTzhfxdsnQIV2DPkd93nC2Aw25kVIhsbjCSLkGapNUSI+oxnOAMSiduVSHxu1oGlkcKFwJi/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ShpVm8uFMW/ebu9QOPoq9jpCybTvg1wHN5SLC10JizY=;
 b=Cwonw1HX5VyLgrCGl3OcFSFlNbWAkt6Jk9GHVb7b1Yp5pgg+IQufXZ5eFbkl+j0O3MluXHtqgO7JoHn5UJUnHwx2KhFigamO7jUfgE5NQnCEP5PvufdOffmgYUA8NnuPzOFU7BCkNXAiYjc9174PzYrQWddPqgkCDFHx3cyjJL1stM7CbfuRoPhixClf7VMBguEdqNssLstgiXbKKVkip+NDSQKZHN3cL+h25lWP5+ZXwZZFU2lJEjEB8Bxf96dIcgkADR0djDmwJ8CXGraRrn9CB3gdHSmBlcLCCB5Ilg0MdxDICkOk7avGe6mYuo41lDCX1bRnOfU+oyWxldxdZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH7PR11MB6401.namprd11.prod.outlook.com (2603:10b6:510:1fb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 04:51:11 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%5]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 04:51:11 +0000
Message-ID: <67532863-4022-4409-b78e-66cf7a96e349@intel.com>
Date: Tue, 22 Oct 2024 10:21:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitter
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, Jani Nikula <jani.nikula@linux.intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-3-ankit.k.nautiyal@intel.com>
 <87wmi1y66a.fsf@intel.com> <b51c1a22-304e-4b9d-aeff-666c2956838b@intel.com>
Content-Language: en-US
In-Reply-To: <b51c1a22-304e-4b9d-aeff-666c2956838b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0088.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::13) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH7PR11MB6401:EE_
X-MS-Office365-Filtering-Correlation-Id: e130f8a9-5112-47b4-ca42-08dcf2552605
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N25mc2hFcnEwK0dOT0h6WkNGUjZITEZQbnorYVBNQlRCT3VxbHdNZndrMDhj?=
 =?utf-8?B?N3JNT1BWWCtWTUVNbEpZelFXdm1VN3NFcmVRK295b2N1aE91YXRwQkl6NnVW?=
 =?utf-8?B?OVlMTVU3OFVBelluS1h4dytqR3pPTkIrNVpNZUdkcTdqaGszUGpIb1M5OHow?=
 =?utf-8?B?eU1Yb1ZRY2pzOEtjTkxpVjlnVkQ2aS9LdHIzSUtYM2d2MG9VZEk5aW1WNVFS?=
 =?utf-8?B?U0lFUnhNQ2tQMW03SHFSd21Td3FUK2REU09La3JZaEtPTjFKRVRTYjMxcDRt?=
 =?utf-8?B?RjJZdStpc3pONjVFQ2JIS3I4cE0zMFlzVm1BNU1mMlFaSGVJYlpxbTE2b0dY?=
 =?utf-8?B?a1VTSzQ3RDJrUzA3WTNyeW5oTkN0b1dwcXlSSU1pL2lZY0d3S1FsaE04RGs5?=
 =?utf-8?B?cjdZbXpyQkZiT3Zkemx5MmdUVjI3bmhLZ3UwcytmRzJoMFJTdy96cTFFSGFF?=
 =?utf-8?B?cXc5dC81ZHp4ZHd3ZHhlc1RFYXgwWEt1Y3ZtZktZb0FMbW9JRDBic3pNcmhx?=
 =?utf-8?B?bThKeElNa0lZL1E4ODMySlkzY25Na05ic3JpdUdZcVJaNCtNOHBMbk94VGJP?=
 =?utf-8?B?eUdPYm1KNjJ1VTVNc0tiVXZUNkVsb0xjb20zU2NMRmJEenBIZVBZaWJ2bHMx?=
 =?utf-8?B?bzVJOXpFNnlUQmxEVTIvbzIxeU42bFhIQVJDdFJBOUdEQnA5VkVGOU1MOXJC?=
 =?utf-8?B?WXIwdXQwc2xITitvQTFLdWNPMXpzNVh4cUZKYkJzNzBaVHd4dU1QNkdORnpI?=
 =?utf-8?B?U2tXUXVoRnFwcTBVa0RpOUhad2xMSkUyL2FzOTcwU1EwYStNLzVkaWF6MkMv?=
 =?utf-8?B?OE1ycmFwZXp2bnpjejdDZ0dxV2tvYWtzaFFIM29IV2JFb3NNQ0R6cDhmQjNM?=
 =?utf-8?B?WUxvTjhSejB1dEJCSDZhQy9hZEExdkwwSUkxdDE1V1FRTlNCOUMyZEZvcGVl?=
 =?utf-8?B?MHJNS3B4M1k1M1p2bCtYSGhtZjJRODgzWDNsUklINXBzaTZWdjRLZWhnTHlS?=
 =?utf-8?B?WkVxaVR5QmFuZFI3SEk4dXAwZ3k5L3BZaG51dUJqWXp1ai83WXJsWjRHc2Rw?=
 =?utf-8?B?K1ZmbnlNejNxV0xIdmVubE9Vbnh5UTZaeldwTlNWZVJxOGtEK3NCbEVXWUdI?=
 =?utf-8?B?Z3hCV1BYOCs2K1pheUZ1dzBZaGhtSURBYkNSU0lNai9HMXdrNUhxNkdYM2Nl?=
 =?utf-8?B?TGZKSmtpOHVLc0xHQ3NqUjFhODFnb2h5WWN6NGthaVJ5emZYcmdpVmxJZnlM?=
 =?utf-8?B?NTJobE1Ia2Y2aFlxT0JXeVpjenVqK1ZRSVQ5ZWV5OEFJcTRMemxrY2wwVFBi?=
 =?utf-8?B?YTA5T0lLTzFJUUxNSTZLL2pCdGE2NDZndmhGNGkxdjlFVitoeFpkOUJMNW5l?=
 =?utf-8?B?WGF3WndtYit2S0QzZ1hkYWozcmpvaG8xbk5UbEFJZldFK1NMTFV5SzM0dUJJ?=
 =?utf-8?B?ak02bUZxL2pPRHlRRjZjdlorb3RxRUNOcVdldVp0OEw4UllrakMrSi9ZK1FN?=
 =?utf-8?B?S1BNQ1o5Y2Uzcm1yaklrcEh4SVgzbFNTdXoyK0oza3RFVzBwQ1c1bHpkVlM3?=
 =?utf-8?B?Sml0WFNYOXlIL3FNZWRIdGsvb0tHYUkvMW5FT1d6aWR2alhiOEMvcjMrQjdM?=
 =?utf-8?B?VHZIelhhamoxeUUwUi9lNXpqT0VCYVMrVWU3azBKclRlcmdiUE82UE9BVU5t?=
 =?utf-8?B?aEdhNFVIT3NlWGRqWUUyY1JpRjAyUlViSmduL1Y1YmRSU0lHOElwQVNCYk9m?=
 =?utf-8?Q?L3dk5/8xgWIr+V21kQ9pR7YyUm3trLRVQe+GgVb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUs3RUhEd3dKTmxwMXpuUENyaHl1MXNnWkYzNDQzdUg3REhyQkVndERkNFls?=
 =?utf-8?B?YUFGbTZtNFFKemc4NHRwbU9FN1c2Z0VpUVpTc3h0TnRpUHc3Vi9wQ1BhdXhr?=
 =?utf-8?B?YUdKS0Q2QXJDWEZTRkVVeVpYV2ZTSUYzdE9YU1c2dDUxVnR3dXZuM0IxaE9t?=
 =?utf-8?B?M3NBREZWeGVSOFdrVFI5ZWdFU0t1OHhtVnFwMk84NnROM1A1N3BoVTVqdW1G?=
 =?utf-8?B?eFR4M1FiT0REVEtseVZ1MHlxT01DMTBRS2FuUzNqVmNIWnpaQkdXVlU5OEZn?=
 =?utf-8?B?NGlMOW4zWmx0UFhzYjhFYStBa1NlVDZaSnJOQ3o2bjduSHRPZUJNS2V6d3F4?=
 =?utf-8?B?UjY2Z0lhdDVxNG5XdjU5cHhGQWgxSHAwSmpFWklJVTdGWEwyUlZkZmpOUnp4?=
 =?utf-8?B?QXY0dEV5VWNaTm9mVlFTdFdadFRvbGFQZGFsOVg1d2QrQitIbmVxbzBRRldl?=
 =?utf-8?B?dWxhZGE5OGh6MjF2blMxelFqazRsVjZzcTlqNkYwR1hnbS9XZjJEMXQ1aW1a?=
 =?utf-8?B?WVZkUElNblVlb3JGQjgyYnVBUDRmdlMzc0dqOWRkdjd4SVZFdngzcjU1RWd6?=
 =?utf-8?B?M1BSZ1pEalFmWStyWnliV0VsS1FES00rczJTQ1ArT2RHRGphZGMzUlJXWGtu?=
 =?utf-8?B?d280K1htekt2d0N6ek5iOTJxdFlqZVByY1pKemhMYmwvb2pSYzY2S05pRUV2?=
 =?utf-8?B?ME9JeWZlSWlCTld2SkpsYXpCNUlHZ2NzUFduL0QybndrVlc4blc4THNrUEVY?=
 =?utf-8?B?cXVod01rZTFZQzl5b00wbmJCWWF0eFB6OHBHSFdRQithYi9jNzlibzFmK0Q4?=
 =?utf-8?B?RER4NWNSUmN1eGdkT0NqYzBIZkZHUjhBMkhRdWF0TmhHcm14TGh1MFp0Nmth?=
 =?utf-8?B?R2V6U0J6OWx3T21TYjJpVnV6bUxIWm1OTzJWZmZqUWtsS2RnbE5RemhqZVV2?=
 =?utf-8?B?UkpzRjhNK0NJM1M0aHUwSlhZcit3KzZvYmxTZmcxRlorWmlwV3pKY2ZQbUs5?=
 =?utf-8?B?Z0ZNRFFvRmN1eE1pNDF3dzBnNXl0NWN6R0U5Q1M2eXR0SEdtS3dSRTdVQjVY?=
 =?utf-8?B?STQ1VEhuRnlYRGREN05HSkJkMHF6RUU2ZGl5M0MxNk5xM2pIb3hmT2wzc0o1?=
 =?utf-8?B?TU4zZjZpRDRHT0FKVG9Qang0Rk00OVlnMHB1d1Y4VUdISkJlbjBzUFFCN3gz?=
 =?utf-8?B?K3UrWFg0SjlWcGxEVmFwSkNISTAxLzBLRlpaTXhXekxodTgvK1pMMG96eHRJ?=
 =?utf-8?B?Z0M1dGUydldCTXZ6KzJwMmxaMW5OU2ozakVSMkdScUw0aW5jMThmSGVnckVT?=
 =?utf-8?B?RDRNZzExUXVTa3V5ZEgvUENuYzdMTHRNUENsemwzcWJwSTJMdVNjMUVQZTNp?=
 =?utf-8?B?RUVsenV6MWltYytYRzRoS0RHNS80L2lybXA0cW40R3dLYWpyZnJNakJyVGI0?=
 =?utf-8?B?eFdqZnVrWE5FaFZIaS9peEl2VnhyRkczeUhPN3J6aVUwajFmTDJHT3pZYWtD?=
 =?utf-8?B?UTFNSlBXcnRGOVBJZ2pTODkxSHpUWnNqajFLQmo2UkxrTlRXWjdMVnRuTE5D?=
 =?utf-8?B?UGpoeTg2VFAxVFprOXZRTFdIM0hoK0c1MW9oVmNpaXVhWER2cy9naE94NUVp?=
 =?utf-8?B?cG90MC90MEdoalVZR2tSN2I0NnZuZmVSMzJFTHEyVE1wd3M3L05tN0ZzYVFl?=
 =?utf-8?B?NnM3REE4WHRhZjlXcUd3T0lyUnVWQndFb0FKQmlBeEdlWml6Ky9vTURRZk1p?=
 =?utf-8?B?MmhwV3MweTJNeFpYT3FCNW91MGJjc1ppMFpQSmsyY2hJMWdQaGdDLzhQbTZy?=
 =?utf-8?B?NFlTY3BKSGVvVzJ4YkIvQlpTTHhtMTVReVNaRzI3cXRra3M4TDNQRzdabTRn?=
 =?utf-8?B?UmRQdmpzLy9LMXV4ZUdYYUN1cU5QY3VML1JweHdqL2dpekRseld0Zk5UVk8v?=
 =?utf-8?B?bWdOZ1ZRaFNFTGdTeWs3YzMxRHhyMU1kUW1ySlFEbDlkS3NjNWorQk9PZWdJ?=
 =?utf-8?B?bk9xZ1BiUktZZWtENUtNbFlXWFcrVWoyRmlDL2xkRmNJRGFaN3Zyd2VoOXoy?=
 =?utf-8?B?cmROamlCeVVnNzNWOWhCcWxxaVlNbno0aFNrVTdyYzRpUFQ1ckZ5MzFBUkt2?=
 =?utf-8?B?ZklzZE9Oc3UrZEZ1NTYramo5a2xUbUZldCtRWDJlY3NBS0lzQTNsVmpnN0lI?=
 =?utf-8?B?S3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e130f8a9-5112-47b4-ca42-08dcf2552605
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 04:51:10.7522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qRyukcJisGfv2Ws7/zhMNzafIpNy0M5V9rPwsbqnjtuw/CfsljOGtnv97rH1tqdAfY5cvv+egz18KQAcRxrop4V5jL9Ob84CU0nYtSMhDwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6401
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


On 10/22/2024 9:23 AM, Nautiyal, Ankit K wrote:
>
> On 10/21/2024 6:16 PM, Jani Nikula wrote:
>> On Mon, 21 Oct 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> At the moment dsc_split represents that dsc splitter is used or not.
>>> With 3 DSC engines, the splitter can split into two streams or three
>>> streams. Make the member dsc_split as int and set that to 2 when dsc
>>> splitter splits to 2 stream.
>> Maybe also name it accordingly? "dsc split" sounds like a boolean, not
>> like an int.
>>
>> Moreover, when you change the meaning of a member, it's often good code
>> hygiene to rename the member to catch any incorrect uses and to ensure
>> you changed them all.
>
> Noted. Will change the name accordingly.
>
>>
>>> v2: Avoid new enum for dsc split. (Suraj)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>>   .../drm/i915/display/intel_display_types.h    |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 20 
>>> ++++++++++++++-----
>>>   5 files changed, 19 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c 
>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> index 87a27d91d15d..553e75cf118c 100644
>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>> @@ -1595,7 +1595,7 @@ static int gen11_dsi_dsc_compute_config(struct 
>>> intel_encoder *encoder,
>>>         /* FIXME: split only when necessary */
>>>       if (crtc_state->dsc.slice_count > 1)
>>> -        crtc_state->dsc.dsc_split = true;
>>> +        crtc_state->dsc.dsc_split = 2;
>>>         /* FIXME: initialize from VBT */
>>>       vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index ef1436146325..9e2f0fd0558f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct 
>>> intel_crtc_state *current_config,
>>>       PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>>>         PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
>>> -    PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
>>> +    PIPE_CONF_CHECK_I(dsc.dsc_split);
>>>       PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>>>         PIPE_CONF_CHECK_BOOL(splitter.enable);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h 
>>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> index 2bb1fa64da2f..58f510909f4d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>>>       /* Display Stream compression state */
>>>       struct {
>>>           bool compression_enable;
>>> -        bool dsc_split;
>>> +        int dsc_split;
>>>           /* Compressed Bpp in U6.4 format (first 4 bits for 
>>> fractional part) */
>>>           u16 compressed_bpp_x16;
>>>           u8 slice_count;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 286b272aa98c..c1867c883b73 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -2409,7 +2409,7 @@ int intel_dp_dsc_compute_config(struct 
>>> intel_dp *intel_dp,
>>>        * then we need to use 2 VDSC instances.
>>>        */
>>>       if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count 
>>> > 1)
>>> -        pipe_config->dsc.dsc_split = true;
>>> +        pipe_config->dsc.dsc_split = 2;
>>>         ret = intel_dp_dsc_compute_params(connector, pipe_config);
>>>       if (ret < 0) {
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c 
>>> b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> index 40525f5c4c42..3bce13c21756 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>> @@ -379,7 +379,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, 
>>> enum transcoder cpu_transcoder)
>>>     static int intel_dsc_get_vdsc_per_pipe(const struct 
>>> intel_crtc_state *crtc_state)
>>>   {
>>> -    return crtc_state->dsc.dsc_split ? 2 : 1;
>>> +    switch (crtc_state->dsc.dsc_split) {
>>> +    case 2:
>>> +        return 2;
>>> +    case 0:
>>> +    default:
>>> +        break;
>>> +    }
>>> +    return 1;
>> Seems overly complicated.
>>
>>>   }
>>>     int intel_dsc_get_num_vdsc_instances(const struct 
>>> intel_crtc_state *crtc_state)
>>> @@ -976,8 +983,11 @@ void intel_dsc_get_config(struct 
>>> intel_crtc_state *crtc_state)
>>>       if (!crtc_state->dsc.compression_enable)
>>>           goto out;
>>>   -    crtc_state->dsc.dsc_split = (dss_ctl2 & 
>>> RIGHT_BRANCH_VDSC_ENABLE) &&
>>> -        (dss_ctl1 & JOINER_ENABLE);
>>> +    if ((dss_ctl1 & JOINER_ENABLE) &&
>>> +        (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
>> The extra parens are unnecessary.
>>
>>> +        crtc_state->dsc.dsc_split = 2;
>>> +    else
>>> +        crtc_state->dsc.dsc_split = 0;
>>>         intel_dsc_get_pps_config(crtc_state);
>>>   out:
>>> @@ -988,10 +998,10 @@ static void intel_vdsc_dump_state(struct 
>>> drm_printer *p, int indent,
>>>                     const struct intel_crtc_state *crtc_state)
>>>   {
>>>       drm_printf_indent(p, indent,
>>> -              "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: 
>>> %d, split: %s\n",
>>> +              "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: 
>>> %d, split: %d\n",
>> So what does the reader think when they see "split: 1" in the logs?
>> Split enabled?
>
> I was meaning to capture the DSC split state as originally intended, 
> and extend it to have splitting to 3, 2, or None.
>
> With that we can never have split: 1, but can have either 3, 2, or 0.
>
> I realize, split:0 is a bit ambiguous, so I am thinking about:
>
> -change the dsc_split to dsc_streams: to capture number of DSC streams 
> per pipe, instead of DSC splitter operation.
>
> -dsc_streams can be 1, 2 and extended to 3.
>
> -Splitter state will then be implicit, 1 DSC Stream => No Splitter, 2 
> DSC Streams => Splitter used to split 2 DSC streams and so on.
>
> With that, deriving number of DSC engine will also be straight forward 
> (avoiding the switch case above).

Suraj,

You were actually pointing to the same thing in last version, sorry to 
misunderstand you. I did remove the complicated enum but some how missed 
this.

Will change this as you had originally suggested.

Thanks & Regards,

Ankit

>
>
> Thanks & Regards,
>
> Ankit
>
>
>
>>
>>> FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
>>>                 crtc_state->dsc.slice_count,
>>> -              str_yes_no(crtc_state->dsc.dsc_split));
>>> +              crtc_state->dsc.dsc_split);
>>>   }
>>>     void intel_vdsc_state_dump(struct drm_printer *p, int indent,
