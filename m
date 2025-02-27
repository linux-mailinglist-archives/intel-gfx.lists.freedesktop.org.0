Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0593AA48A52
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 22:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5049210E111;
	Thu, 27 Feb 2025 21:12:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cyBHucsw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2DCF10E111;
 Thu, 27 Feb 2025 21:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740690775; x=1772226775;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=aHWNa/4p92CkETgdUKQb152jT7bq+QaCGrsgj9hfWJc=;
 b=cyBHucsw/ITedppr4f8Q114imEdbbLbmLByn54MGA5zsX97gUcDGDXy2
 wHsmE6eD8qGVM1c2VGXLODrna8BQcsQJh55E3nf3MzTTiJyvLKlFq1YJH
 4pBoY0fcdyMqiOoR34c5nwhC64418QcVVe/34JNe85VLZsYrhZv/P1rHV
 /eJhJKy9VTigeBJR0X7mTG1J/pLuZsqog8jPbZ/eF7P1K7E5pfzq6MTP4
 ZE0A4OVVnlLuskdL0MYcUtQjqkN2cOiqi5HdQbg/K2SC4r5F06Kha5yjh
 VoeZt9PqqoCEhDvsgyRzgTHyfDCliYbZq5SMRrg1WqNlj/ORPC/8NUlcx A==;
X-CSE-ConnectionGUID: 2DCktJfyR7yqRwVr7pX+CA==
X-CSE-MsgGUID: wJlZKASYRfeOS3IRbvjIcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41629785"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41629785"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 13:12:55 -0800
X-CSE-ConnectionGUID: 8+JEbSpdQU28CcgqRAMDng==
X-CSE-MsgGUID: NZR+bmPNTmufE7HkFBdseg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116942367"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 13:12:49 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 13:12:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 13:12:48 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 13:12:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wnx8GoXGE2xEyArhCU6DRdn0TUq378p99J0b1kPCQraFXfX8qlAx6PHN+l38YGO2YGYhIopSCO3H8ZOLzgiZEglcVp89i8frkQ1pY50C0h3efkPyTe6ABpFs5NCENbR9by8JM4Nl+4M2CNk1lOdddbmwEqufd4TgMjA/sk4GySf+TU9VMBrBGrFV+8FVsEKywUD++rkNbONOmBvdRy5DAxvqrVhXl9hRf9/B24JRnNMgXI8Xb68mV2/4zwLafcuiQHvP8aZkBPzHj+z7M9T3JbL+sRS26jJjLkQTTHfDPovpje1ZUbH907VrNAfLPzXX6WIJhxUFSLMaZAuPakkvaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0cAxXcPMgxkUFgegpm2llRJJKzY6H6x12sJWuJT2i8A=;
 b=qDs7xkcfYEi9bd58rzO8bUtMoKZjMfam2AC+UzTXO2+/8icgkl3o3RE95+0fl3W49bghfEps9Zt2ABfe1NYVH4x+28oQaHJC4OHeZyDpdlzwQpcurMVhNVVOtLhrGybZjV/1+uy3rub6F0zGiQrxK6vUTm01zSligAvWOWdE1ze1GGR1l93yvR1HE2LWqjL9oZvJg1OQIKdw40XSk2VL9mANz41Sn1X8ihZmq+i6Yr/nla6aN7LiJ1hCqgzXD9YSeT3LuWESbkcRPYLcreSddTKKDdCF++SpYdyiWnJF9jR67w9yROAo9o46IB+C5nwcCcCDUwzURyWHcO2bHCibRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6875.namprd11.prod.outlook.com (2603:10b6:806:2a6::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Thu, 27 Feb
 2025 21:12:46 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 21:12:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
References: <20250227-improve-type-safey-power-domain-macros-v3-0-b6eaa00f9c33@intel.com>
Subject: Re: [PATCH v3 0/2] Improve type-safety on POWER_DOMAIN_*() macros
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Thu, 27 Feb 2025 18:12:41 -0300
Message-ID: <174069076162.19033.18196476050088822843@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: SJ0PR03CA0092.namprd03.prod.outlook.com
 (2603:10b6:a03:333::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6875:EE_
X-MS-Office365-Filtering-Correlation-Id: 89d6d552-d0c9-4946-42ca-08dd57737b74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RkxRVjZKUGpldjN1eE92YkZVVW9WcUtWZ3d4dXdJZkVJU3VaMnB3NU14bkla?=
 =?utf-8?B?Zk1xNm1qMFA5bS9kUlFTeDEySnUydHQ4UHFQa1JtOGNoUEpNU2hoK05scDM3?=
 =?utf-8?B?NmtSL01qZkJ3REZ0TzR4cDVnMWYzaHlhalQzMVlUeE5wYTlmN2ovbjQxOUpT?=
 =?utf-8?B?cXBxTjNaQktCNUxEMmNFZmU1OXVRYk1ub21EbGFFdmRhYiszYnhXaS9rUlVC?=
 =?utf-8?B?aDF2SXpHRTd6NUtEUm0zeVNDTlFGeldiVCtQbVZDODF0KzBycEhsUkcwUTY1?=
 =?utf-8?B?V0xvREQ5S09BbGdwbmR5eWg1QTBaZjBoMUtCcjVialIvK0k3aEp1YW9xbC91?=
 =?utf-8?B?N2dwa0RtUzBhWEk4TDl5R25Yd3ZXSzJZbURZWTh5a1BPR0NUUUZ4aEg3cm1D?=
 =?utf-8?B?NUtiSVpIMG5QUUtzREFlSFZrakVxWWVJSW8wSmFTemVzWnJ3dGtzVXE3cExN?=
 =?utf-8?B?bVh1QmttZENYTFh1d3dyNzlMWndvNVZlQ0xYNUhhUk91emdjWHl1dHVhWHVX?=
 =?utf-8?B?ZWxWOHVMazdZaUhHeXhmZDRQS3AyZnlRS0oza3dpUkEwM3lNZ2JwcEFmZGVs?=
 =?utf-8?B?Vm54ZTAydHFBRjBCcVZiVVdQU1p6SmFpZVVVOUtxVDc2aHJZbGdEQlhZQ0Vv?=
 =?utf-8?B?WDBjVmpMZVUxWGdXNlFMREIwMm50RkVHVTVZUzRKRzZwNG93NmFYN2Fiek1W?=
 =?utf-8?B?cVZFK1JDbkUvbXJKMEc0TjI2Uk1jTmlZMU5uNlRDeWdiUEg0ZmdnZ0N2WnFF?=
 =?utf-8?B?a0MvUGhKYVBsWFF3RERRTEVVOFJJVy9uUGx1elo0VXM1cFJMejUxTjVSSzh6?=
 =?utf-8?B?dWoxdXRTN2RTaFN2US9KcEEwT2xZeGV2YWxTNFlhak8vVzUvRktKNHdOREph?=
 =?utf-8?B?UjZRbUI1OHJJV3U2YjNFT0N1QStEbFEra3JMamIzMG83VlF5WnNnbFY0OHI5?=
 =?utf-8?B?ay9CeFArRFp3TDZZNkxwcTZDanBMMWVYSUpJZEV1T0xuZlBWNmVNeW1GUG5r?=
 =?utf-8?B?a01udGVucHZBaFhoa0pSR2pkeGMyTWtZY3o2UHNjaFYzaGVYRlNLRDFiY2RS?=
 =?utf-8?B?SWl5a3hqOGxTQlRaaUxnZG1FQ08wVHhxdVQwMXVzMzVEYm9taEMrVml1T1FX?=
 =?utf-8?B?cGU4bi92RTc2NXpic0JKb2RMaXhSOVQ3eE93VDJZUVpsOUpkeE5EMzJWMk02?=
 =?utf-8?B?a04wQlBDdERKNnB3NEhva1gvdVd4MFB5dUV1Ni9oZFFQbEZPNlF2ZmdmSVl3?=
 =?utf-8?B?L1JvQ25xL3E1bCtJQ0E0dWxYOTZwNjJQczkwZnVBMWhZaUh3dFFoNklJeDlN?=
 =?utf-8?B?bjhiMFUyeExFajA5QzlQMmxlbmhBdzFNSzhuT3dVTVR5WTU0S2lYenpsNG5M?=
 =?utf-8?B?RlNtTXRWUkRVc3U2MGNCMDRmaUFJMiswYmU1eG9qSk53dFlXQzdWcXJyQThu?=
 =?utf-8?B?UVNmRDE2dFoxaXJxMGN4VWVROEVJZDluZXorRXFDTGRPbjRSZlBhNmxNZTFK?=
 =?utf-8?B?b3F2Zi9uKzRqUWxWYkpJQTJJYmpKTTg4ZUJNZFprdkJDRzQyejVRTTU1ZnpV?=
 =?utf-8?B?Z1VKcm5KTHJuYWZFa3F3bEw2dzYxZVBSdHJJNVhycVllWVN0WWZxbXBEWSt6?=
 =?utf-8?B?UVRnMmlqaDBBT2JGeGd4Vnk0L1JscGtMaVFWY0tpSFMxd1BGRkUyRkcza21q?=
 =?utf-8?B?eU8wR2pOSEc5d2NSU2lNNTM2QTh1cVNJbWw1VGIvdkN0N2cwbEFTOGxuZ05M?=
 =?utf-8?B?VklGMkpNc0FCQUNwTkF3aDRPb0dFU1ZTSlp2bWNRZGIydmV2ZGV3ZnpFTU16?=
 =?utf-8?B?UlpNa2JjT1JmeWYxVWxyRjJqai82Y2dRbVhCaXNvRWZIMFQyN2p5M2hnZ3Fz?=
 =?utf-8?Q?R2hHEVm7azJxv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXJWS29NNDNpRXpjTVp0bU44ZWFya0lDUXp3K3licFlzUTBXbWhyYW5KYWlN?=
 =?utf-8?B?UTI0UEpMMjRMbGtxUloxQ2hQZGYvelhwcXNPL2xMUUU3Rm9SckZlQ0JTdFRx?=
 =?utf-8?B?c0NrYWJnb1NONndYYUJEZDNaZnZCRXIyZ1hLeUNBbk5DR0N2MVF3Y3lrZzgw?=
 =?utf-8?B?YWl5cXNqdjNJRlVmWm5OVkRHUXN3eU0xQ25WOURidjZsc3M4SzhkZGhhSkgx?=
 =?utf-8?B?c1hZS0NJQmUzTmV1VCs4WHZBQlF0Ris1T1RZbmwyY1VybWRHb1llZnd5Qzc2?=
 =?utf-8?B?bzViTVh2amdTWitrQkNoUU1mYzFzbTR2SkdXQjk3VWYwRmdRbVJTb1NNc1dG?=
 =?utf-8?B?aTVpdUdMT01hemZubnZjSkQ1aENFUXl5WFpwdzJPZU1sUmZmQVVOMVlUMys3?=
 =?utf-8?B?NVRCMHRXaFc4OERSWVpKQ1YrMTlqeERjMmNYUnRGTjRyM1pocnpoWlQ4TUhE?=
 =?utf-8?B?OVdRenNJb3czOXBZcm1CZkFsVkJEeVdlVjBDY2xNcXFlK2dxaFgxOStvNnNV?=
 =?utf-8?B?cVdhY3ByVTF3cDl2N0xISis5TWNHVUc4bitjaUswRzJWcWE0UHllanlZckRB?=
 =?utf-8?B?VGNsSEpLMTVEM210dndQcEtWTW56UFpSK2lrZUFIbWJYRHhMNEZzQktVcGxo?=
 =?utf-8?B?TitLTUlEYzJtTnVxUG5YOWZUNm52ZTcxZjVCNHBxdXVtMVdEdzZIeDd6SlRL?=
 =?utf-8?B?UkkrZC83YXlrSmh6cXRKUjUrZ0N6cndGbUwwSUdrYU1YVDE0d2YxdFFxZmdp?=
 =?utf-8?B?Y3ZRbUJERkpDaHJuM251L2kvVDA0bUhXVUxSWGh1UWlrSXRuQ0tUNnRmbEFs?=
 =?utf-8?B?QjllWGlvOG1TaFoyS0N3NTU5VlpSa1IrU1NlRS95ellPZ2s5cmZicisxVVla?=
 =?utf-8?B?QW16K1ZDSUhLbEtkVEowRVNsSXQ3czlpRDVSbXBpeGdyazVtazF6MHRUTW05?=
 =?utf-8?B?a253ejRENXNjMkZCSzNZV2tYNVh3ZldBcFc5c1lhd2JEZWtPQ3pDVERqMmRT?=
 =?utf-8?B?S1hERmNQT290WVprbDE5anE0VGlkQm1HVXFHTWZZWU9XTW4wVWgya3h3TlZq?=
 =?utf-8?B?WlNyVlcwSkFycHRiMHJGcGwyZUtVTG1jTTJ1QTZMUEVBL3lxM1J6QUdCQzd0?=
 =?utf-8?B?emlCd2NYZFpYbTQ1clZEWk50VnZRRDN2dkFLZDhwMGJiQ1hua3ZZTWYxN1ZT?=
 =?utf-8?B?ZStzRGJsWXp0NlZYL251RThGZ1U4UEpTV0wxckxzbys0N0xTNEtLVWFTM3N6?=
 =?utf-8?B?TldyYlVBeVd3WHdid3FJRCsxVzNFTGd1aW5wd01idWlPOG5EeG5HY1lDVVNz?=
 =?utf-8?B?ZlNkU0xTUlBDbnp5YTY2azFMV1JXenV1dnZvOU16RHBxckRRTnQ3SHlucnQw?=
 =?utf-8?B?c1VDVUpRZnZOZTdGdTVQWnhCNXQrQkZnTXpLVWFieExqL3ZGR0xveTRObVZT?=
 =?utf-8?B?WDZLcXN4b1pyS29zMXUvaE5wSkVJN2tCTHNBSU45YjY1d3ZHeWdqV1IySVVr?=
 =?utf-8?B?NFVFVURTeGx5QWtnMkxOd1hqVjNxNjhIenNKKzNsTmdjTnZQWVRCTXVOZ2xt?=
 =?utf-8?B?bktQaytTWFdxRFd3QlR6eTZKWmJOUzlsLzNBOVE0LzgxNzNKZGFvOXRjYlRZ?=
 =?utf-8?B?RTNrQW4wNjI1bG8yUFA4Ui9CbkNkSStVWWp6cGJtZENsNGlCcEx6cFMwYWlp?=
 =?utf-8?B?QVhiajdzQVMyTDVhSXQzQ0dNdTljVnQ2TjhMVVVFQnRhMlY3NEhFZmt4V2xM?=
 =?utf-8?B?Yklxei85REcrRGlSaVZFMVNiUWczOVl1S3Bhenh5KzliSTFTeXdIOVpmSU5C?=
 =?utf-8?B?MFlaSzJRdzZudlRBUmRpamxWUE9RbTF1ckljWnlRT2tOR2w0aEV0NC9JVHlw?=
 =?utf-8?B?ZDFNWnM2STg0S2dMbUJSWjJiMzRRYjZLdE8xNzRVazNOMURrYTdQN05VVkF1?=
 =?utf-8?B?TGtiVXRxR2lzSkFZWGxGWUVnNGdNR0pGRTk2d1ZUMjlvSjVrN0E2S0NDaDIy?=
 =?utf-8?B?NGs4TVZBU1JheUVwcUNGL1hEL0swUFB1Z3BjVituWVo0YzdESmhCNkcrRTQz?=
 =?utf-8?B?d3Z5R2hXdFhSd0xYUzFNYWpGN0ZQVnRSTXZoajRwMDRERVY0L0JmSXlSL3Z3?=
 =?utf-8?B?eFprV2xieUk0NDcxMThTRC9DT0ZCYSs0U3NRdWo4d3g5ZTZwU212SHF2b2N0?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89d6d552-d0c9-4946-42ca-08dd57737b74
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 21:12:46.1824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qY5qIVyiB2rEvIMCTFUIptMYT7l1+maSaQ5WSkz8CLflImHa0BAK6nxP78jIAVcuWVAiO00WjRjTcUlJCwknlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6875
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

Whoops... This should've been v4. Let's see how Patchwork and CI will
react.

--
Gustavo Sousa

Quoting Gustavo Sousa (2025-02-27 18:09:11-03:00)
>Fix one issue[1] reported by the kernel test robot and also take this
>opportunity to improve POWER_DOMAIN_*() macros by making them explicitly
>return the expected enum type with patch #2.
>
>I decided to send this new version with patch #3 dropped in order to get
>CI results and merge the already reviewed patches #1 and #2. Patch #3
>from the previous version is still under discussion and will probably be
>respinned as a standalone patch.
>
>[1] https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.=
com/
>
>---
>Gustavo Sousa (2):
>      drm/i915/display: Use explicit base values in POWER_DOMAIN_*() macro=
s
>      drm/i915/display: Make POWER_DOMAIN_*() always result in enum intel_=
display_power_domain
>
> drivers/gpu/drm/i915/display/intel_display_power.h | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>---
>base-commit: 6badede10d92c242241bd7bf59a5488b5eba5aa7
>change-id: 20250227-improve-type-safey-power-domain-macros-8bf2a14f43f9
>
>Best regards,
>--=20
>Gustavo Sousa <gustavo.sousa@intel.com>
>
