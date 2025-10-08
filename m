Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDB7BC6240
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 19:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED0610E87B;
	Wed,  8 Oct 2025 17:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bffD9c+1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29DC410E879
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 17:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759944179; x=1791480179;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=r7x0VQpXQRTburMwGqtNXStgm5n7pbI1XpxsOk6ePJY=;
 b=bffD9c+16wOgzeIuZ1XzN17qlg1JbMuenZbCKSupgvM2/MnzCG2xxH+g
 myeMe3wgc2KdUBCJFsRyZILfLWy83wrVkBpajpZw+hgCc1AjJ049Jhclb
 E0igcqMWlIsIve1Jl0pZy703sMPgKMJ2wf8nOR71QC4B7PKaORBYXKByY
 9daYjbvqxocVs3sMXqFa5zYFF6yFdZtovdnA4+dAvTxRWXZ9D5KglLwjG
 KthCH2UZGox9T2fuvcS1kjKF/yUbNQ4I3IrFc4gtcMVQbab208dJGwbRZ
 UvpJV4wWZ3KJLt+nOkk8RaLQVhwQQj+sUC0+XdGv0ObCIACPKMdzn+yXq g==;
X-CSE-ConnectionGUID: 1FlBplBhTLWRV5SM6xlWag==
X-CSE-MsgGUID: sOLjZ4c0QLKPsqddzdXbVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65973272"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65973272"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 10:22:58 -0700
X-CSE-ConnectionGUID: BPNlbGrPQEmZcqYMVOnxLw==
X-CSE-MsgGUID: WHw/DNGzQv26jj/AUgiwfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180904743"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 10:22:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 10:22:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 10:22:57 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 10:22:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UPE4zvkztjfjCYY0ziYW8yk7kUYbt86Hh9/0T6tFMgCxGEy4Y8COAxLSIP73p/gvIM9DRCFehQUBuyevcWuV13N8/XHz+frvI9wNsCrDxWDHYcDAl5QRZ0u+MEQmd5jNQDLWfk6VYSd/9MwVbS0UDCbc+D5Ra0YD4WrqiPKDnhFS/ACvnUiLYCC9xYO7LkuL5289NmqFoVF5Fh+8SScRknR9NLCFrRDgEgLB6cyG4bwlbNp2xLqQpCC4fSB9HBZW4rOPuTIH52kFapgTsWjGI/HMz/ysq5pZQ01bLuueKP3/NTkvwmz81udeZC4veEmejfgmcANLllzwzc/ZJuZ86Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mJKXxOSYEasAQOhZGmmhLqC76/7wCYx6xAX/Kspmg7k=;
 b=zH4276eju23YkDG6UDnW06PY1EUfFdwdgS/o8I3di9jvxee6Lp5jA5J4DODQ9V6Ou+pD0ftO4o04jE0uy48FF5Ag3mKUzYjlk3l0U3amEsNHaEY/n7osN2MnPRPAyRfEfEKvwb+miULj3bF8xtBMGAsRQaw3NkdTkBLNRID+jHJZqAvTjs0jV0DrJ5vlCY60ct+6TZHpyPVVfnn/xvH6LrzuzBb79P69dpDqVHOIlA2IVm6Wymh8e/AsbBZt1akG4rutSNP2Z8nDa5mL0WVGaF9Oc6AtPNv+H8G+9YfEVvfUbZ/labkNLPrdx4eFe7VOe02JYgjjbAbOZyrwX8DzUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by SA1PR11MB7037.namprd11.prod.outlook.com
 (2603:10b6:806:2ba::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 17:22:51 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9137.012; Wed, 8 Oct 2025
 17:22:51 +0000
Date: Wed, 8 Oct 2025 10:22:42 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <rodrigo.vivi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
Message-ID: <aOad4gBFCtuKcbsh@msatwood-mobl>
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
 <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR04CA0304.namprd04.prod.outlook.com
 (2603:10b6:303:82::9) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|SA1PR11MB7037:EE_
X-MS-Office365-Filtering-Correlation-Id: b1255f89-6060-428c-9ead-08de068f4f6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDAxbE1pS1pMaWs1dldCaHZSRmtsREVoUjdlSFRPM0szSW54V3VHdUhMMndY?=
 =?utf-8?B?NWY2RmtEZHRobEVsczVNUytZYVBWOEJXVHRIV0ZrcDQ1aWhxbWg3UEFleGNy?=
 =?utf-8?B?alBHeURDdkV4cTlNZkRvamVGdHRqWGd3emZMNlpmUThoem43RlFoZGJ0azRk?=
 =?utf-8?B?SzM2UDBQSGFjUGVZS05KRkNEbUxpT0EwSW1wYkhWVy93aGJKc1BiMExmbmFq?=
 =?utf-8?B?REhtNDNuQnZVUTFIaHVmdU1WODkrTjE1K1QrUWhGUHp3Sm1XY2Roa3BSa3Rw?=
 =?utf-8?B?VjNLVEtJUGNzTTVlOVYyUlZMNHlJME1ZeTFaSEk0NnVHM09BYVBNM0o4d2xy?=
 =?utf-8?B?S3R5c01ETnBqYmIzZXdnbC9XS2V3ODR3TWZsUlp6eUdDL2xvcU9JbThrQWdp?=
 =?utf-8?B?Mlk3dXRhRDIvWVAyZHdPWlZGUlRjYTlnQVVBSEtqUkVoRmJ3VzhKSjlFcUx0?=
 =?utf-8?B?bEFBd0pnKzVCZGJjR2dUSFVveHYzUXExeXBNeUZ2WnM0dTBpZmxydThlT1Y3?=
 =?utf-8?B?QThqWWFWeEtMWXF5VzM2d0dMcW92YnNISHR6YmhTR3UreS9SRmphK2ZSTUlm?=
 =?utf-8?B?ME4wdkNMRW5mSDRsdGZtaktsSVJ1NisyUUMrVnBST1hqK1o3Qkw2dnF3MGky?=
 =?utf-8?B?ZlNESE1HdEc1MkhpY1Q1WDdvc01jRDVJaGE4RXI3Qjk1M1FNZnlLWW9FbzM0?=
 =?utf-8?B?Tlh6NG96TDcxRk5LVVZxQ2MvTC9DRWxTNkdmRld6Z21IUzV6cUhNS3hxQXpv?=
 =?utf-8?B?ZERxRnBFRVlBRzNFa29pL1YrMWNZRWtJVmR4dFlBRVZYV1VDMnl1d0YrcUJO?=
 =?utf-8?B?YUxYd3hBcDZOaVJkeHVrM3BQSmhVc3lvN3JWWWpKSE55VnB0QnhJcmh6a2Rh?=
 =?utf-8?B?WlZVaExjM3pRdm1rVGRSb0FWVkRXeHBJVFNMc0ROQVBia29mL1dISkdUZmIv?=
 =?utf-8?B?QUd0TWVrMkNVZ2hQMTU3UlE2aU83N3VTRnZmTWlCOXB4QU1ObkpZZnlSTlh3?=
 =?utf-8?B?QS9ZcDdHY0dVZ01pMGRNR0ZMa0hONlBtQnU5enZVOWtIVWlJaHRoampwYUVF?=
 =?utf-8?B?R2UyNUowWG15dFpqWW1nSmIyc1J5dFN1U1lhMTRYZlN1c1hrTXRhOUZEUG8z?=
 =?utf-8?B?ZWNXNFlaZGZLZi9PQ2xQd0o0ZldTTUplTC94b2I3UHY3TFVmUUZlY29lTFZ0?=
 =?utf-8?B?QlhDWlBOb3pMblFJSVZ0U1NXSVFGclh6STBqdzQwOE9vbUk1cG9vWXI5aHJi?=
 =?utf-8?B?Wk5tRWRHcWp6OXltOERsc1BVVHp6UVRVS3ExNEhKTHFOZUs4QnpBbWszZHU3?=
 =?utf-8?B?ODBnb0RaMVlMbTFQTjJvVmxKbXIzQ2pUSjZhR3BKT3dRUkxDTnNWSmkvNTFZ?=
 =?utf-8?B?ZkJzYnhnR1J0c3JKN3lSTjMvTjZhUEJCTjdoYUFkNEMrVUFLeEdoM0xleGU5?=
 =?utf-8?B?Ry9VRmxUOFpubi9MSE1rMVFXM0taSERXdkU1c054a1l5dmkzMzVMdGxvdHhE?=
 =?utf-8?B?UE9LYis5TGlZcmVtZUQ2amFoK0crUVpmYVZldEdORFVuM2NYT2lCRjVrK2R2?=
 =?utf-8?B?NXdCS1ZsR1lPQ0xZUHBBN2pCdW5JZ1pia295UjNwNWdiODMxNjhKL1dMK3dv?=
 =?utf-8?B?aGhTaEdRRC9mL1FCbjlqUzZaWnJiTCtFU1FQWDhVUDgwblhIcWlYODdXT3NE?=
 =?utf-8?B?eDdKWXU3enIwSThmMjA0SlZCUFVObVpIRm5Dc04xUXdzeUZrUkdDU01FR0VG?=
 =?utf-8?B?TjIrZjgxd1NGMVpZZUh3NTdyY0JSdWVXV0xBTy9XQWY4NXYzbzlEMFRsUFQ4?=
 =?utf-8?B?dkJRR2F1RGNyTmZzZjV4cXdwZXJIOUR6ZE12V054UTNkWUVtMzUyWHVpUlVv?=
 =?utf-8?B?bmJLOUh4cmdtQ1VuSGZxNHVzQ2ptRDhteGhERXMvTTFhY3M1b0lSbjVzOERl?=
 =?utf-8?B?U0Uram9zR1JYVDFHRW40eHJZZkNhbURPaWRMRmFWSVcrMGVFMTk1TEw4U2dK?=
 =?utf-8?B?YzVHQTlPVm5nPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUNzTGdqZHNiNGR5UkFVYmFpektPQjdDWTlKdXhlNTdtV0RYWmMvM1N6VEE1?=
 =?utf-8?B?NkJtTGJVbGRjMENHQ1RQNUVrMTJ3a0pCbnZmVlJWSTRKdTNVQWRKRHVaczc1?=
 =?utf-8?B?aU5SaisvVnhaaTgvVFdTMmRxNVJmN2xQck4rQXZlUW5iNi9POGVsbHB3bmh0?=
 =?utf-8?B?Zm5RZko0SEZJYms2UDhpRXBobnBLMGF6cWlRdmdGUGVLbFVnNklkSFU2TXlZ?=
 =?utf-8?B?eG5mUTZrTktOZjdJTytOSy9WdlJGdWVhQ2s1T0UzZjM2VVdtUi9WMGlMbzZv?=
 =?utf-8?B?Y2pvMDN6RGRTU3RRVEl2WGFwaXk5V1lSc2VmZlhjZ1kzWFgzNGNSVEFMaUx0?=
 =?utf-8?B?S3JNTllid2k3bnBTbW1CeXhhTEhxT3pBNGtFazNHQ2dhNXAvb3EvbmFjeWRa?=
 =?utf-8?B?dzVGOTRrM1RWVTd0MzkzRVVHM0FvNWhkOStkWE5mRERGWjlwVHgvRGhmN3M3?=
 =?utf-8?B?MkpTZm5TOE5sNnlnQ2ZkQzQ4RlpiUFdmcWRSTGY3Z20xRUpycHFRNkptRnIr?=
 =?utf-8?B?VDZpeTAxcnduUHRwM250V25qNlJFbWVtd3E1S25pdktNSTl2azh4a3dwU0ZD?=
 =?utf-8?B?b3h5VHdHUktSK0VKR0R0RTVZaWFBL2tvQ2E5MjZ6TXl2d1ZDZUI1RWUzbXk1?=
 =?utf-8?B?VE5CSEs0NWpFZ1l2Sm4wVUNMYnlhVWFwSVhSblVtYVdYVUdqcHRjZHd3eUVq?=
 =?utf-8?B?TDR3TitNZzUyelovM3kwK0N5WVBCMzkwcDNsSllhTEI5MXRqVVRtQjkzTUsx?=
 =?utf-8?B?UXBIczkySlN5U2FhbUY4aWhOeWNHUElKVVZnM2Q3ckswSVpXMDUxd0ltYi9F?=
 =?utf-8?B?ZFd5THRVS1lQUUhSL09PcU1uY3M4T0IyazFnVFkyM0tPcDFiUEJlQ2dZa2tT?=
 =?utf-8?B?ZWdXanZrd3NFYm82SUxwMlI0b0ZpYVhNSXpRQmU3Z21CbENVeWNNWGtaNU1l?=
 =?utf-8?B?b3BTdSsxQkUzb1JyTndzY2RzWC9jOE5FWlZ1UFB5LzB0NVc2UkNKLzdYVnBF?=
 =?utf-8?B?VlNtaXRPSU1iZXZkcEIwaEFJZk1FTW5EMk1zSWlIdEtsUjRZWS9pNDBwNU9G?=
 =?utf-8?B?ZllPU2RBTE13aHpkclBpUFg5QlhVdTJ6bFZkSG5kQVFVNHJLMUdKS2w0Z2Vo?=
 =?utf-8?B?cy93TUMzd0xSbk5ZbnZBcG9kaGFHbW1xMGx6cWkySGw3UGZrQm5CdStQdDJ4?=
 =?utf-8?B?WHNVVmJ4cmtsSW02b0Q2UjhuREFNbWVYQ3VvVEtZckFCV3ZTN09aM1p0VVVL?=
 =?utf-8?B?a0FGMlZVWEFnbkQrYnA1MmZRVzZLcklkRS9oUHlUaUZGc3JsYlBLN3hVRzRk?=
 =?utf-8?B?ZXlTOVdYQUhZM1NIVUVjL2NYcjBoaXkxYjhNaThzdlV3MkV3YzVrb2ltODA3?=
 =?utf-8?B?U1pnRTExNjEzV0wzU0VGbGZtNktBR3hObHVmczdpaVhod2hCMUlUU0VHUGZv?=
 =?utf-8?B?TDVDMHRwTG9jbTVaNFFEcElyeGs0NjNCKy9zU1FIYlpCTHJVVk1FNElHbldp?=
 =?utf-8?B?dzZ4a3BDblFrOEs2dEx3dm5RN1RZVktuRWM5N2R6Y0VYR1k1NTBVUGNMQzJs?=
 =?utf-8?B?Mld0cmJHbDB2REpRbmp2ODlkWnFwVnNMckNxOTY3UkU4YVhxYlNFVFY1NjBR?=
 =?utf-8?B?djFkc0ZmNFQvWEM0ZTQ2ZnVZSjZtM2FGUG1UdStSVUVXaXcybHphak9JN21D?=
 =?utf-8?B?aUhaUVViMW8yTHRFZkpkNGV6cEpvWWNDZXFHODV3cVAvam05OGcwTDlRc3dz?=
 =?utf-8?B?VnIxNnhIa2VqbVB5L3BvbEx6WXdMSS9lcklORHRCblR4OVVmajBlaTVia2NC?=
 =?utf-8?B?L1k0ZUg5amg2TllkRHM2UUovSEIzN2x6OVRBNG9SdVlLRVBBYzVmZWJua0Np?=
 =?utf-8?B?ZWI0R3hmWXQ4K1RFKzBpOGQyMGZEcmdRaHlzQksxMTZnTnFRN0ltM3A0QWxD?=
 =?utf-8?B?WlJnVmMvWmxHME44ajBQVlhNOS9FeUpjUmZnSEwzMkFEWEFzKzgwemtXZlJQ?=
 =?utf-8?B?TFg1M1NoZXpLZE1Ld09EZXRJK3M1cnowUzlYTTFSNGZLMXRpdkpGUElIMm8w?=
 =?utf-8?B?VEhENlNXQS9yZjBseVdtTXoyc0tSY2JtSjAzM3U1TmV5Y0lwL3V1OFFsOFVa?=
 =?utf-8?B?WFZ3T2o5NDczZGlCdXgyNkpKZlh2SHFrZEFIRS9tUVZJT2JaSjJ0TUxNUk9o?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1255f89-6060-428c-9ead-08de068f4f6c
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 17:22:51.7787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L5g1MyfWgW++VeA0FhMeU4UNJ91xciehH0exZNTtP0fv8fVw4MT2yS1jJCCicMvPzbWDf5Nac2MbZnT78H/Mo2Hl0NtX79VpPuccLa9DTSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7037
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

On Wed, Oct 08, 2025 at 09:53:34AM -0700, Matt Roper wrote:
> On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
> > reg_in_range_table is a useful function that is used in multiple places,
> > and will be needed for WA_BB implementation later.
> > 
> > Let's move this function and i915_range struct to its own file, as we are
> > trying to move away from i915_utils files.
> 
> It looks like this is a new revision of this patch from a couple years
> ago, right?
> 
>         https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/
> 
> Even though it's been a long time, it would still be a good idea to
> include a patch changelog so that it's clear what's been changed and
> what review feedback was/wasn't incorporated.
Sorry, I will include it if theres another version
> 
> I'm also wondering if we should be thinking about moving i915 to use
> 'struct regmap_range' and existing functions like regmap_reg_in_ranges()
> rather than maintaining our own i915-specific versions of the logic.
> regmap in general does a bunch of other stuff that isn't relevant to
> i915, but it seems like we might be able to re-use the type definitions
> and basic lookups to avoid reinventing the wheel.
This is doable but just requires a rewrite of the current implementation
as it's not a 1:1 conversion.
> 
> > 
> > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile               |  1 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c |  1 +
> >  drivers/gpu/drm/i915/i915_mmio_range.c      | 18 +++++++++
> >  drivers/gpu/drm/i915/i915_mmio_range.h      | 19 +++++++++
> >  drivers/gpu/drm/i915/i915_perf.c            | 45 ++++++++-------------
> >  drivers/gpu/drm/i915/intel_uncore.c         |  1 +
> >  drivers/gpu/drm/i915/intel_uncore.h         |  6 ---
> >  7 files changed, 57 insertions(+), 34 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
> >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h
> > 
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index 78a45a6681df..e5819c4320bf 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -26,6 +26,7 @@ i915-y += \
> >  	i915_ioctl.o \
> >  	i915_irq.o \
> >  	i915_mitigations.o \
> > +	i915_mmio_range.o \
> >  	i915_module.o \
> >  	i915_params.o \
> >  	i915_pci.o \
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 7d486dfa2fc1..a3c08bde9b2e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -5,6 +5,7 @@
> >  
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > +#include "i915_mmio_range.h"
> >  #include "intel_context.h"
> >  #include "intel_engine_pm.h"
> >  #include "intel_engine_regs.h"
> > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
> > new file mode 100644
> > index 000000000000..c5484b16e28a
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_mmio_range.c
> > @@ -0,0 +1,18 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2025 Intel Corporation
> > + */
> > +
> > +#include "i915_mmio_range.h"
> > +
> > +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table)
> 
> I think some of the feedback about function naming from the previous
> version was overlooked.  If we have a file i915_foo.c, then the general
> expectation is that the non-static function names should be
> i915_foo_*().  In this case, it means that functions you expose here
> should probably start with an "i915_mmio_range_" prefix.  So maybe
> something like "i915_mmio_range_table_contains()" would be a better
> choice.
Ah, the initial feedback I got from Rodrigo was that the original
function name could give the impression a function was more generic then
it actually was. The name I chose her was getting the struct name
(i915_range) into the function name. I can easily change the name
depending on what the community wants. 

MattA
> 
> Our existing code isn't entirely consistent about following this rule
> (especially for i915 which has a lot of historical baggage), but we try
> to follow it when writing new code.
> 
> 
> Matt
> 
> > +{
> > +	while (table->start || table->end) {
> > +		if (addr >= table->start && addr <= table->end)
> > +			return true;
> > +
> > +		table++;
> > +	}
> > +
> > +	return false;
> > +}
> > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.h b/drivers/gpu/drm/i915/i915_mmio_range.h
> > new file mode 100644
> > index 000000000000..c3c477a8a0c1
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_mmio_range.h
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2025 Intel Corporation
> > + */
> > +
> > +#ifndef __I915_MMIO_RANGE_H__
> > +#define __I915_MMIO_RANGE_H__
> > +
> > +#include <linux/types.h>
> > +
> > +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > +struct i915_range {
> > +	u32 start;
> > +	u32 end;
> > +};
> > +
> > +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table);
> > +
> > +#endif /* __I915_MMIO_RANGE_H__ */
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index 1658f1246c6f..b319398d7df1 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -219,6 +219,7 @@
> >  #include "i915_perf.h"
> >  #include "i915_perf_oa_regs.h"
> >  #include "i915_reg.h"
> > +#include "i915_mmio_range.h"
> >  
> >  /* HW requires this to be a power of two, between 128k and 16M, though driver
> >   * is currently generally designed assuming the largest 16M size is used such
> > @@ -4320,18 +4321,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
> >  	return false;
> >  }
> >  
> > -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> > -{
> > -	while (table->start || table->end) {
> > -		if (addr >= table->start && addr <= table->end)
> > -			return true;
> > -
> > -		table++;
> > -	}
> > -
> > -	return false;
> > -}
> > -
> >  #define REG_EQUAL(addr, mmio) \
> >  	((addr) == i915_mmio_reg_offset(mmio))
> >  
> > @@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
> >  
> >  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_b_counters);
> > +	return reg_in_i915_range_table(addr, gen7_oa_b_counters);
> >  }
> >  
> >  static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, gen8_oa_mux_regs);
> > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > +		reg_in_i915_range_table(addr, gen8_oa_mux_regs);
> >  }
> >  
> >  static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, gen8_oa_mux_regs) ||
> > -		reg_in_range_table(addr, gen11_oa_mux_regs);
> > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > +		reg_in_i915_range_table(addr, gen8_oa_mux_regs) ||
> > +		reg_in_i915_range_table(addr, gen11_oa_mux_regs);
> >  }
> >  
> >  static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, hsw_oa_mux_regs);
> > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > +		reg_in_i915_range_table(addr, hsw_oa_mux_regs);
> >  }
> >  
> >  static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, chv_oa_mux_regs);
> > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > +		reg_in_i915_range_table(addr, chv_oa_mux_regs);
> >  }
> >  
> >  static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen12_oa_b_counters);
> > +	return reg_in_i915_range_table(addr, gen12_oa_b_counters);
> >  }
> >  
> >  static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> >  	if (HAS_OAM(perf->i915) &&
> >  	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > -		return reg_in_range_table(addr, mtl_oam_b_counters);
> > +		return reg_in_i915_range_table(addr, mtl_oam_b_counters);
> >  
> >  	return false;
> >  }
> >  
> >  static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, xehp_oa_b_counters) ||
> > -		reg_in_range_table(addr, gen12_oa_b_counters) ||
> > +	return reg_in_i915_range_table(addr, xehp_oa_b_counters) ||
> > +		reg_in_i915_range_table(addr, gen12_oa_b_counters) ||
> >  		mtl_is_valid_oam_b_counter_addr(perf, addr);
> >  }
> >  
> >  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> >  	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > -		return reg_in_range_table(addr, mtl_oa_mux_regs);
> > +		return reg_in_i915_range_table(addr, mtl_oa_mux_regs);
> >  	else
> > -		return reg_in_range_table(addr, gen12_oa_mux_regs);
> > +		return reg_in_i915_range_table(addr, gen12_oa_mux_regs);
> >  }
> >  
> >  static u32 mask_reg_value(u32 reg, u32 val)
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> > index 8cb59f8d1f4c..aea81e41d6dd 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > @@ -35,6 +35,7 @@
> >  #include "i915_reg.h"
> >  #include "i915_vgpu.h"
> >  #include "i915_wait_util.h"
> > +#include "i915_mmio_range.h"
> >  #include "intel_uncore_trace.h"
> >  
> >  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> > index 6048b99b96cb..6df624afab30 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.h
> > +++ b/drivers/gpu/drm/i915/intel_uncore.h
> > @@ -123,12 +123,6 @@ struct intel_forcewake_range {
> >  	enum forcewake_domains domains;
> >  };
> >  
> > -/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > -struct i915_range {
> > -	u32 start;
> > -	u32 end;
> > -};
> > -
> >  struct intel_uncore {
> >  	void __iomem *regs;
> >  
> > -- 
> > 2.51.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
