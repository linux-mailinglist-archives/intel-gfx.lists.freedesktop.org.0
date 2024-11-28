Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D979DB86E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 14:20:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FDA10E1FA;
	Thu, 28 Nov 2024 13:20:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOR3bdR/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF07710E13B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 13:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732800024; x=1764336024;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ofNqN94xo36/j+IFGJqfV7ceK2O2gLD9uYmc4m7lgOk=;
 b=IOR3bdR/g4jcCbS3fjTSgV9cDW5xcAmnZf8iu6S3140HUmu0WIZOQ8Zk
 YYLhtxD3bBGzsyn+7MTOAYRCHt3TycRCkMvqG/MahAyfcXh4Jo0q+qrWq
 x2yK7tQkmBjWnF8obDlatzoVYIDYEgP/qKCx5jeXcPHtK0Uq7zP5++cDY
 4wXr4tQ6WU4SIT+AYH/GakBmY2jWLyn0fVfpZ3u0fm5hW5p1RRTGhYvJp
 1U+NNzzPNH7lYTyrI9GeA0n2Vd9vQpruH0cPG3+hul/pTjO4Ftiob1/si
 K3UkSd3+2EzAFt91jJzMnQGXQCDOCllThbbZyf+cnUYCxudTliD/A4P31 g==;
X-CSE-ConnectionGUID: SYsMYP4FRpWk5xcS0tNmNw==
X-CSE-MsgGUID: S0x1/EVATaGTPPqNnrTtuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="43701108"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="43701108"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 05:20:23 -0800
X-CSE-ConnectionGUID: ACdPWFR3SDKT4uuPe6nyGA==
X-CSE-MsgGUID: 3FuKdKvrQnuz7yTczbIoNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="93073304"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 05:20:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 05:20:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 05:20:19 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 05:20:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cG9Ed52+C7tEuGFphN00jp3FoA0jDfVZZ1ir9SRlHJ2ApbxExRL2K18sBdA7uPIHoO7ZlMW+Q8oPSWnCbbWxExTM2+Cj5gqP57JxXKirdrC9UYcv4Crqhbdnn30IYFQUUuZW2UMyn/w4SqxRKt5lsodChc70fQkAQ1dgjGNUHBbn4CK+hBF7Q8l9PEUGTViVTq8UCv8DdiXAuzI+f1wkAZ7vRwe1Rx7TGFAXszfVX7fJW8kay3Dxc0aXB1wnsnJXNGNEHcKRzgORUURnXcQXyzUrxrTi36I6Xk0PyByjWFUxCddZAI2i+I2e/ntuuC77+73N9b/G0Kjg2ewJToQ/fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H9eI7rDdwAU3SODRH2x1aYvtB+zSyw3eSWIZWsPeLns=;
 b=v5ohLSiVv8S2CKabR/v7QQoAAhY1PDF0dvclnUoS9WRH+MDD5g6U+wGGE8srwJDfPSnMTp2cHWxljhBDqkQLYMwak9vJnWI4h64SWXwQEfJKXnm4Q7X9q0Ir9nj540gqQL/cmiJV3q5f0GVTtjYHnNezxS/rCnNfLp85qhu8yYYT0ItW12Bzw31Mv5FALbZSZSN3Lq4khcd0YFTz6VUKkQCwx6B1ZyBdgQ83UFtYAMnswGfNklXYQWwre/WlrFZ2F9JrmQVeHyvByDocult7ItCYlce9pZ7VDa0zlZn5hPWgT4XmK1dTn/2HRL+OV9Uc6EdDkugZE7xjsVtItKdd2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MN0PR11MB6206.namprd11.prod.outlook.com (2603:10b6:208:3c6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Thu, 28 Nov
 2024 13:20:16 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 13:20:16 +0000
Date: Thu, 28 Nov 2024 13:20:12 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915: Disable compression tricks on JSL
Message-ID: <xajtsoffytfi3rrkcsodkjiirt3sblrgejp5mnp7w5lh7oiocp@ylfqomqc63gn>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-3-ville.syrjala@linux.intel.com>
 <o3albuqlbexbhczvhi7lnh4klyaccdbo34rbtaj52mp4ox4ecj@kjggr3melenq>
 <Z0hjbLJSjVBQxTxY@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z0hjbLJSjVBQxTxY@intel.com>
X-ClientProxiedBy: FR4P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b9::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MN0PR11MB6206:EE_
X-MS-Office365-Filtering-Correlation-Id: ffce0e2f-2029-4a38-f4f0-08dd0faf660e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjFaTGJqT3VGcWdCdmFlV1FDRTVzZFRVbEpJcXc1Mk5VcXcrdERlZXh6MmZy?=
 =?utf-8?B?V2I3eG9wU1FhNkNCck01YXByVEU4QmNqOUwzbzNPWkZUSlBMNjQ2c3NhU0Qr?=
 =?utf-8?B?M1MzZ05Hc0M3UmFmOXRmVmJMZVNOZVJ4WC9qdlN0VXdsSU8wd2xaV3hxb0Zv?=
 =?utf-8?B?ZlZySEI1dTBWd01kWHkrN3JLMHlmM0JCUmRRVVR0aFk0a25heEtZTEhZYWkz?=
 =?utf-8?B?My9HZmRaa2dFN0NWa2pIY0hmcEtrcjRsWEpxY25lcFdzK3c3NWREZTN0STFU?=
 =?utf-8?B?WWlCeGtVZEdBMjNBRFhPcm5YZXRGd2ZnVHErblBPZklqRjExQTh2Ymt2K3Ra?=
 =?utf-8?B?MGhhdkNuZnVKcVZIOTl3MVdBbyt4TGlpOWxkdEpEYmE2bHpkL3BEWTN5VDhi?=
 =?utf-8?B?bERTRlptRDFRY0RRUGdMYWJ3WHBGQi9Bc2swUmNtN1lEaXgzbkFTREVaOEly?=
 =?utf-8?B?OVdVanlVeTFtU2doeG9EbjhnUSsrZmd2NG1ZSTRwbFJvbHJYcjFLVTZ0Uzlk?=
 =?utf-8?B?WkhGNU1WeFZxdWhNTk5TdkFpQ3RmQTZYREg1anA5VzA1U1l0cjJtNDgwREs4?=
 =?utf-8?B?ZlpZc0hycXBNOEs4SWsrUHlDdTBmZ1ZURDlyWmxSUVpRa21mcEhpQ2RTTWdI?=
 =?utf-8?B?aTNjVGNuc1NHU3hORVU4endEVFJkMGVOTTQ2aHVkMVNCM2E0Y04vWnRLSmFl?=
 =?utf-8?B?V0kyQ0ZkYkNabkkvTXJrRWlySzJiczJpZGRkM2xxWVZiaS9Vb25CWCtxSzlh?=
 =?utf-8?B?bzZ1bk5tbG9NTER1a0xHTU5MMWNvNEhtMkF5S1A4dk9sOHRuYU9aejkrTGZl?=
 =?utf-8?B?NXVTOGo3aDZINHR6YlZyS1c3LytsdFk0Zi9qMXNGQ0xxTEJ4YTdtUVJ3OTBw?=
 =?utf-8?B?aEtEdm5BTUlNdGw3cTdNSFMrRWg2ZGJtcWlOOFJKeHlCT0szRndkN2psWklY?=
 =?utf-8?B?dW0yN3VQUVB0aGsrQTRzWXBVL29IV3Y3bi90bVZwN3NHMFIyTThVS3crNmV6?=
 =?utf-8?B?S3lESkQ4eCtac3dTMVZHSDZNbzN1ZldjSFg3N3NNWCszTGg5OGZVem91YTNL?=
 =?utf-8?B?bWJTdEdFYzM3UEtDZFN4ejNtT3dRdzdodVNCbXdtOGtNK3E3RzdMc3JwS3pF?=
 =?utf-8?B?Wm9mRTNFZDJYVWdiZ0JrWW81U1Y2YUZpNFprMS9MSXdiS1phRGRzLy9rVGFM?=
 =?utf-8?B?OTNZa0FrL3Jlb2JNKzR0N0tYYzZlMjFzWmRNNVRBYkp5c1ZjVTNqa3FZU1dG?=
 =?utf-8?B?a05GcGhvdDc4eEpwRFQwa3hmd3B3eFpDVnMzN2hIYnJKeXJ4ZlRjOFR6RGNF?=
 =?utf-8?B?eGNlZWdjVmhkWlEzVDBvc1pUM3p3UktYZ1hjSUExaDF6SU9iVUxvNUxnQnJQ?=
 =?utf-8?B?OHIyd1QxWVltdXlNZjgwQ29UTG5jek96cEZTaHZ5QkE3LzFPaXE0Wk95OTdK?=
 =?utf-8?B?NHRtQVhSTjYxZnpiK1ZWSU04K0RUTXBHLytSSWlCdC85YWdOZUlRZjY4UjV4?=
 =?utf-8?B?Q3M5RlBCMTV6UHlSZjRwd2ZnT0l0b3ErUnJDTjlFZDR3TTBicEFnUGNoK29s?=
 =?utf-8?B?M2h0Y1UzK0xidkxqT1FRUDJvMjRFdUFMQU56M2hRMmMvNTVMOVRXd2NYaGtt?=
 =?utf-8?B?bkZ2b2ZNTXdYME5VWklRaEtWVzRidnhQeUF3Q2xGU3dyMkxYNUlMLzMyYU1t?=
 =?utf-8?B?djZxb3o0VDRVNFdKb1hMZHNZYjdHTGZGUkl2Wmo5aEpHNEh5YUJvelVtamtN?=
 =?utf-8?Q?6Smq51nDy/0BxZewEQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmtOb0lmUXl2WStEVG9SbkkvWWhIcUZkM2FwVGY2bGhJRDdVcHdWUklXN3JM?=
 =?utf-8?B?bHYza3lha0VYcG9XNEQ4Q25rMlJmWEpibkh0N0JZMmxTLzFpVUkvUmRlbEh0?=
 =?utf-8?B?K3RQVnpaZDBKNDZtVTNyN3kvYTFuQkJBc05Fdi90WWRQdkVJK0dsc2NkdGoy?=
 =?utf-8?B?ZXBFbWxmUU5ITTI4UExCaWx3WDJlU0x1Z1hOalZ4YkcwVExpN1JDVWp4U2Nw?=
 =?utf-8?B?Z0xlZEhxNmFIV01nN1E2MVhuaWw1Q3hHc0t2RzlVL0syQlNrOFdhNE1RQ0tj?=
 =?utf-8?B?OE5zVnNTbk1FRlAwWlpwWkpyTHUvOEh1QVRpMTBGeE1yR0pJV2I1eW1idEcw?=
 =?utf-8?B?aXlDNDhpMmwwNHhsaTF1dkJSdFlFQlJNWjhVUXRzUE94N1M2UWFuc1ljYjFQ?=
 =?utf-8?B?VWwxVEZ3ZzR3VUZLQXRFN0JsUDhmSTI4SkU1WEJINTBnUHMrYkpGNWtNOE1K?=
 =?utf-8?B?anJuZjRzdGppZWtRN2hubDhzM3pjamY4L0lCaG5SUDdNckpFbEVsbDhOL2Zz?=
 =?utf-8?B?aXpBYjFSM0lCNmNMYjB1UHVHaHZFQTl6c3Nnd3REOWVraGViOEJ3MTBuZUdK?=
 =?utf-8?B?UzBXb0Q4Z1ZJTDRJbW9rS01pNzZzQmFOUGJCYTJ0akxPODBPMWxjaEcrTENj?=
 =?utf-8?B?UUNCMXJHL0ZOdk1ud2xCWFJzTEoxRm1XaVlRZnRpWkhGcDhPbXM3eE5jMFpF?=
 =?utf-8?B?a3hhUnFObDhGcFQ5bi9MSEw5K3dhbTloVVVnVCs0MTRPNEtKeHplZDlqbGF0?=
 =?utf-8?B?bUpRRGhTRWtLcGtsTXN2bWk4b3R0NERrQjFSZTJPODNzeVd2aWFwaTcxNXJR?=
 =?utf-8?B?NnhzS1J6ZGY5VTQ5ZDIrakxydklURkFMV2kvLysrTlAzYmo0bTNQSlNYUzE0?=
 =?utf-8?B?aFNWREZsRDN0Y05OU0R3MzNaTnFsNXhhVmtkSnpnUWk3WTNIcHozb2VPWU54?=
 =?utf-8?B?a2ttaENUWVRFcE1VenlCazRFeElUSXlVY0ZnNWZWZ2xoYk9tamNtRExjRi9F?=
 =?utf-8?B?N0VIci9Oa2VsSHFZNFVjZWg0TkxBcWppRnpSVmt5YkFzWmM1TkE5bGhSRnFz?=
 =?utf-8?B?TUdFUUpWTXdWQXhDRkZHSFVOS2xOOFFMWmJZRmdvdGtWUUtOek9SMXcwTWpH?=
 =?utf-8?B?QkdCTnNPZ1ZOdDJNcGxaV2IwaXpLZzhrZ0pTUkt6UTkzKy9BUEgxZjhoS1Ez?=
 =?utf-8?B?cmI3YzhicmZyNVlmUDd6Y09KUVRMREtrQkMyWDhoVEQ5TnMzZ004OE1oaXRo?=
 =?utf-8?B?OGUrRnFUL1ZRWVdncVdnMVI5VVh4WTViQWZBTWcwM3JQVzBZUXJWUkd2Zk53?=
 =?utf-8?B?S1NOUS9rT3RyQVJ3Rk05c216amttaE1yaXBoeHhoNEFmMk5FQjdpa0Z3NTFQ?=
 =?utf-8?B?bmJYL09KN1Y4TXpPUTdqWU5hZTg4YlhPTXZkR1pJRE9IUzk0RUM3YUxheHlx?=
 =?utf-8?B?UmNYRG5lL1k4Q1V3Um9FM0NuaUYzVDZZZDRlWHVQVnVqUVFLejVTWjVBallM?=
 =?utf-8?B?NnJERFZnNHBEbFBqQjdSNmt6aTR5Y3BnWFROR2Q5c0VUUkRXcFB4dlFUTkg0?=
 =?utf-8?B?UWg5UUxBYUdlQ2piN0tWQUlDb045eWZZRzgwZWJMTmFDMktlT2dJVzIxcVBo?=
 =?utf-8?B?K1dTdTBJT0p2Y24xQ2JkZ0RSYUh1ZTF1L01QdHJ3cnUzaVhCMHdMbS9XdUhN?=
 =?utf-8?B?aEZRL2Y1Uy9nQklNQlVxcGlJcnFjRFRuZEVURHNJQU1pSUsxOHF3UXRGNFM2?=
 =?utf-8?B?K1MyTVpyb0QzTkhtdnJNeWhQdllJdGNnaDB6NlNsellzUlV0clBNMHZvWjlM?=
 =?utf-8?B?YnFKQTBWUi8ydnJad2FydkxPTUNCSk1jM0NMSTdHOWVQLzcxR0V5akQyZU5v?=
 =?utf-8?B?eXpXekEram84T0NSdDQwWmVRclBoQ0lsaFd3WjVaTGo2T1hQaTJ5czlPK1hQ?=
 =?utf-8?B?Yi9EWFdqa2VDbDlZcHFTdHRxcVdqQUNvcituc2d5LzNQbEJDbFg2ODVQMmtQ?=
 =?utf-8?B?dFhnUVd6WVVDU1dtRERwTzF1RjR5S01hd0c1eWlCZ0s2dENDREJmMnNOcUdi?=
 =?utf-8?B?U1hzOTRwYVM5QTZiczRhVXl2OFlBVWg2SFlUb3ZSUXY0V3NKbGNYT1ZTUlRq?=
 =?utf-8?B?SFFOKzhmQkhuS2h4cTlRT3M2eXFBUjdxdyt5Vkp0djBGMmJtNE55d2JMeXJG?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffce0e2f-2029-4a38-f4f0-08dd0faf660e
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 13:20:16.4943 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mvm+s50OULC985TkdbX6IOHOxKjf54WsN0xofwzmWZCQQzf984rQ+BQp7TEBTIWPouCONUdrK5G5yQOQz18moVBcZE2e3Me8i/mKbSUfoj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6206
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

On 2024-11-28 at 14:34:52 +0200, Ville Syrjälä wrote:
> On Wed, Nov 27, 2024 at 03:56:27PM +0000, Sebastian Brzezinka wrote:
> > 
> > Hi Ville
> > 
> > I found your patch looking at issue VLK-65591, seems like for some reason
> > cannot apply this workaround on JasperLake and end up with an error: 
> > 
> > ```
> > <3> [463.126159] i915 0000:00:02.0: [drm] ERROR GT0: engine workaround lost on application! (reg[7000]=0x0, relevant bits were 0x0 vs expected 0x8000)
> > 
> > ```
> > 
> > When the workaround is verified, 15th bit is not set. Is it possible that
> > this workaround is not available ? I would be grateful for any tips.
> 
> I suppose it's possible the spec is wrong and the bit doesn't exist, or
> perhaps it's only present on some steppings. Shrug.
> 
> I'm not seeing any problems being reported in CI however, so I'm a bit
> confused where these are happening?
> 
> -- 
> Ville Syrjälä
> Intel

Here is entry from CI bug log:
https://gfx-ci.igk.intel.com/cibuglog-ng/issue/15525?query_key=ee712195d52aee24d7314c241ebbf8a8fd9d7370

This error is only reported when debug is enabled, and even then it doesn't fail the test.
-- 

Best regards,
Sebastian Brzezinka
