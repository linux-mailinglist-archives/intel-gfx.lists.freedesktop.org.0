Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8A4AC4748
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 06:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0098010E029;
	Tue, 27 May 2025 04:49:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XshTN+m8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620B910E029;
 Tue, 27 May 2025 04:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748321346; x=1779857346;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iig03sqrKZuALCTILf/2CSSI7jYecxNDVbEBnRncNs4=;
 b=XshTN+m84KD1KAbCkCiz8T2nzxQF6jdnUoZOsN6DGNqsLWkRSZF2Npfa
 y5F9dxm1f3K6AkkbXkPtQXktZeVUyTTvo4/rtipKgqqsMPnUU3swjRCPb
 neP+Z81JTxZfIA/rPvdRey3mj97AkN4Igg17y4JP8/Ml5qOYdlWbCBcSc
 sQ5SMd0Jz9HzbwSmRYsB3Cw8G7dBq2cYOT0LRSz2XvPKOm2EPOXIz7AXp
 /FEXWAQyIVl9oBJSx67B++4GzOTgu8mmUyVT5r+rmAjByyLuP7dBaGwI3
 GWWyvsANsCU6e1PFGrFLKO+d4I+xxKPGGzjAPPjW8ExTQLT2dczu6UQa9 g==;
X-CSE-ConnectionGUID: DZX7Bb17QUO+10VYVgM6Nw==
X-CSE-MsgGUID: SIE6UKNiQIK7vwlvgUBfpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="53950934"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="53950934"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 21:49:06 -0700
X-CSE-ConnectionGUID: nbzNxiUvQcS3/aH8kmDX+g==
X-CSE-MsgGUID: XaBHhrPLTcmHuaiX1GY1OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="147653713"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 21:49:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 26 May 2025 21:49:05 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 26 May 2025 21:49:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.74)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 26 May 2025 21:49:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h3ImCe/z8C2qzXcObqDZFCfoIa8OgvCs1K4ySKCe4Z5oYCjWk+Ei+S1xgW7jc+FoqyMylv7g2HfYxBH912z2d/6KpzQGL1EX2ycBvEE5yt61ukj2IAPy34qrUE2U884i/0W4fbT8g1RCJlCbqOHlI5NpSdrPe5b7Ujlkxb8nvLE9d6SCY/Gfgh3dDn1nMbB7c/Pk8jbzOiGFa8TFyXG/m6Y9b7cNxbAtaZRm7E4OGKgdZ0Rcu+/DGlEMHikG7Orz3RFMUckVCj0vOUjz1DM0kRvjinkrFGSUrF2daaqvpBAuB2iurA+PZ+2E5NF9wXzEy9LLFsfVnhUIzm877xC74A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2GZ6sgKqeFLbJpFcPFIenw3vA7l73gcsbaC1KCDpvHk=;
 b=tJ3sJ+fwPejUrI56stj+mIENnBDI19DoKSc40ZHlldid/OYflyDxRfGdsLHhhlUt5gqdJJYeYn52f2kLtJNMPgBHvrWx706R+Y1nirVs1p+YNXfMkMRQaOjrjGVxjTUnCcMOy1e7cO6tp7jhxz/H5Uq4Ps+vKvdNhrk67QbeEzOCjyDTHIJTevce3fTvobgmY2TiHSV3kMidGI/B5YbCq9LqW9c6cLLKhtHT7tgbPVAfyHINTe4z2oolTfY7bRmScjWY+/aVoJvpL+XesyjY3SvHDWsZ/3/onO8S+cTa9X/+IWmUWSsveibN3eFHNPWQI5YRJsXsc/hhWwrvexnPtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7471.namprd11.prod.outlook.com (2603:10b6:510:28a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Tue, 27 May
 2025 04:48:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.025; Tue, 27 May 2025
 04:48:49 +0000
Message-ID: <513ccbae-a5bf-4e90-807f-855d9973041d@intel.com>
Date: Tue, 27 May 2025 10:18:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_snps_hdmi_pll.c overflow
 issues
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250513083803.2596286-1-dibin.moolakadan.subrahmanian@intel.com>
 <20250513083803.2596286-3-dibin.moolakadan.subrahmanian@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250513083803.2596286-3-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0094.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7471:EE_
X-MS-Office365-Filtering-Correlation-Id: dbc795eb-b500-4b3b-3eca-08dd9cd9c5b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WG4vM1plcDRnNmVmTzRrK0NpS0plVHZWZmIwbVJPTU5tLzFxekxaQmFiV05z?=
 =?utf-8?B?eVYvNTZtQ2UzRmYyTGpnaElRUW1KT3dxUWZkeGIvT0VzR0h3WnJUNHBWNmJ6?=
 =?utf-8?B?TE5sUXNDYzhoZ0s2RzQ2a3hpWThQbmsvS1hsVEc4bnBkMVU0Wkd3NWROcFR6?=
 =?utf-8?B?TDRuWkdDQjIzaHpYd1doaDMrYW5vRkpoZ2Z1V2NjVms5dGVrakJXNTBPS1RR?=
 =?utf-8?B?bE5hSzNHSkFKVmlxZndzSzd0UVhXSTVCQ3JTbmhsdk9lM0lna0NUcHBpcnd4?=
 =?utf-8?B?a0lOZ3JqVXdKd1NtRVdPZkZZVFlsZi9lUzF3TXZOSVpUcVZsZGlzZXJjTEtY?=
 =?utf-8?B?NlZGOXJFMzUyTHpJUEV3TDFiVXo3bVh1bkFZK3BrS0Z2akgwck1FNnRjdStB?=
 =?utf-8?B?ZHNYWGtrcm1tQzdpWllycXBtbzl4YVY2UDJTSnZjWlpLdDFaNytZV2RnTWtD?=
 =?utf-8?B?QnFQVEZrTWI5Rm1Bc21Xazl1VTRDblBmUjZGT2pNN3pkSVVqdUdBanZONVhJ?=
 =?utf-8?B?STlzTzhSY1FNQkFoL2QreHJLR0Z2UjBPR0NiS2pFYXQ0R2t3aUM3TVpsQWU0?=
 =?utf-8?B?bUJqTHM0Y0IyYTF1anFXcHJVZVVYOEpiRXExRmE0dHU5eFdLRlc3d0Q0TXZI?=
 =?utf-8?B?ak5rWFJMYVk3Z1dsVVdBUDBTUE9OazZaVkVuQkZGNVI4NjFLak1HZEQzUGVU?=
 =?utf-8?B?dU1FQTdaRHBmWkxVcjQybFNReU1HdVlEaG8vamtIK2hwTXpFNGlTS2w3NlBa?=
 =?utf-8?B?RHM1eUliRU16QjZmdlZlSkRvcXJJSklKelk1b0JtbHJoSWxBZndqUFMxUmhU?=
 =?utf-8?B?ZnVvSlBtbDRPcVZnYWdKRVZVbHBBalRNNHdadGZwMnFTcVN3REJYZFdyWHRt?=
 =?utf-8?B?SnlWSUY1SEc2eENoSkF3azIvQmNMZWVXUExuVHJxbWowbHBpMWF5bDh3RUJF?=
 =?utf-8?B?NG9wUFp3d05yakdGSW9uQ0RMNnlvQzAwaVJLZlIxMkNHWTk3b3ducFB2OGw3?=
 =?utf-8?B?Z0IwZjJRaDZPdDc4ZUVUck1YRmpjQ1l3QnVvR0puYUR6eTVhS0hsNVpnSHZD?=
 =?utf-8?B?QURScmxnNS9NNVBldXlBMmVILzQ0RFFGVlNzVDFyU1VrdUVUU3dZd1p5TExO?=
 =?utf-8?B?QUZ6OHlRcnpRVHhHRmVEMzNkK01EZkJhRGt4OUg3MzFuVzZBNkc2dEhvSFAr?=
 =?utf-8?B?U1d6d0srT01GVFg3Q2M1dWNHSldlMmxRc2w3VDlPdXAwVFBlSklaNENzSi9G?=
 =?utf-8?B?VUdDQXVzUzlxSFJJN3k1WG9nRnIxQzNzeHcxWVM4RW5Fa0N5Rk9QcGQ2dGhN?=
 =?utf-8?B?TWVLblQ4UU1uM3pyYS9ZZXpKVmRoajRYOFJNaWlnclkvdzVnZjE5YXptZTY3?=
 =?utf-8?B?YitkODB3a29VMDhZVWZuL1VZdlNZYlVXUE1OcGkyRnBVYVdRaE1MZy8vMGRr?=
 =?utf-8?B?VDFjRE1JSFpiOG1VcElWUjQxU1YwN0FPOG00SVhMMlFhQTRlT2kxRWV2eXhN?=
 =?utf-8?B?UmtZZ3JuZ3V0Zmo0WnVsTHJjMEZkU2VRU2xwRGNLQ01uNUZFa0JacmJXSnFO?=
 =?utf-8?B?OVRmRWxIZ3ZZOEdFcnFXOXU1d2xibmx1VEtoRUI0VEtyR1EzNmZsZ08wT0pk?=
 =?utf-8?B?WVJVcFN3emU5aFBUblk5RDZVYm1pSG9jaFlIZFR3VWpuT09ib0ozQlAzd1I2?=
 =?utf-8?B?bWtzS3p4TjRvamhLOWE3YmlySzQ3Rkp2Y1QxVk1Xbi90RE9RWk5ROVpnbnYr?=
 =?utf-8?B?RE9LV0wvSS9GQW5tM2JuamJpMWZjVmZORFpKSWNRUDgvemF0ck9oRVh1ZEtT?=
 =?utf-8?B?czlFaEdtanIrWHJZOGtaOUlSbFJEVXl4ZldCbFdlTTRObU5oS1lYN0NIVHNE?=
 =?utf-8?B?eTFoNGtyUkoyb2FPUXM4RG9BWkdCSC9kOVQ3bW5vTHRFU0JScnB4b255N3dv?=
 =?utf-8?Q?TG4+0TsRiDI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmFZK3BMc0pzc1BlNm9yNzFMQys4TU9WZ05JT2lNSzc1ZUExU1dUYk9qbjlK?=
 =?utf-8?B?cnlPbk1VL3hoQ0ZISzVkT2U2YnowOW90SmVjNk9NTys1NkZDZ09EdU04YkZ2?=
 =?utf-8?B?dG9tNHg4Mno3SnlZOVgwUFhXOUs2eTdwRUpJMlM3c01SZTVwaE9Bc2ZibVYx?=
 =?utf-8?B?b1c0VkRkQkIzOHZleGNERk5tT2xqWDR2SFZnSmszanFTMUl5Vit0WXUyUDBj?=
 =?utf-8?B?TkJGTlJPbHN1eDNicDg5Qy9iNVBmc1YyaWZpUFZoK1p6a0dxWmsvb3F6Vkpl?=
 =?utf-8?B?LzVpVXR4QjJ4V2phYStDMUdwS3ZTY0IzS21pc1hVNjc0UTA5Vlg3Qk56U1Rt?=
 =?utf-8?B?MEQvT1hSWmtDUzhjb0dtMkVjaHhDd0U4bWZoMkc4MDNsRjREUjlLY2JDa3pn?=
 =?utf-8?B?ZzE0WGhWeUVHNmxTaGV3MmlWWVdTd2prb0tKQ2QvM3gyc3B4SHFWVXM3bk14?=
 =?utf-8?B?clF6emt5MHAyL1lIcHpHUUV1aEZrK2drV2lJMU4xTmkyRlIzbmh0alJ0RWlN?=
 =?utf-8?B?L25wV2xjWUdpbTU5Z1VldUJoQUMvTFRpN3B6d1llZVJPSGdEZWp5V3lvWDlW?=
 =?utf-8?B?NXczTm8wU1FaUC9ZRDZVcFhiN21wZENYSDlGT3BqTXhZNlN1Y1Y4SnFTS1hO?=
 =?utf-8?B?aFE3WXBPZkRmUjlubTZVNzU3WFhMN1U1a085dCtXMlBiYVA1bHZYNFo4OE8y?=
 =?utf-8?B?bFdNS2tnYjU1TFUzdjZNSmhLSzBnQmxVSVdCQ0pJVFV2VjYxU0J2N0o5OXZ0?=
 =?utf-8?B?UytFeUpCc21BS21EQUZrVk13MHhIS0lnekRXaEtLMENBWjNObzdIQ2hKUmM0?=
 =?utf-8?B?OFVDdHB0OERUMkMzWXE2T1FrMk5Dd01rQzZFaE90WHZicE1Qb2YrRXdvMEJ2?=
 =?utf-8?B?ZUxmTXZmaEMzMDBvNmpzc2RCMmRyRnVJQlNYd3RVd2pHM3B3aVFSKy9RaWlI?=
 =?utf-8?B?cVJ2RnM5YWVUT3ErTFgyT0pDUHJOcmxpT041cll6NmtHY3ZiYWtjVVAxT0hE?=
 =?utf-8?B?eWptcWd1UGQxL3RSVGF2aWZLQ3VEcldNVklYVDRrZnZyN3I2NmVrVG1QNGhX?=
 =?utf-8?B?VXk5OVR5WDJJNUxGYWdJNWFveGRncUZUb2xiY25yWk5iTTFGc0psenZ0TGk1?=
 =?utf-8?B?bXIrVTIySjBqUXFySkM0NWphK0dlKzJvRC8rbFU2ZVJNY2RDblNuTjNVQkw4?=
 =?utf-8?B?VEtTeS9uYmRoQVdBNGZNaWRLKzBqWThWd0RXMXhqZm9CU0hzRS90RTM5SkEw?=
 =?utf-8?B?M2RaZ0JFd0pDSXZhSHpqd25jcTU2RG9BSFNLZWMvYWwvWnlBaVdndnFHMUNn?=
 =?utf-8?B?REg3NERiTzhRa1JqVW9Xa29ST0x6OXNyNTNUMG9uYWhXK21KSzBiMjZXZWRS?=
 =?utf-8?B?U0lERWZvRWRsN3J2cVprTXB3S3Z2Y1REd05pNStuTW9DYWNLSHA3cXRZSktB?=
 =?utf-8?B?TVNTaHpHMHBLN1djUjAwM0pIUGFlWDk3dnJIMFFDMURlendadmNSVnk2YnVp?=
 =?utf-8?B?MVh6SWRFYy9nbDNjTkswR3FuMkNwUFhWZGh4TVVrSmZmNzc1Qk1oTzVxK2k2?=
 =?utf-8?B?RTZjSzVPTXBhbjNOSnZONEh1UUJjMENMNkQxMEFyaW83T0J5WlQ3OTVoUEJL?=
 =?utf-8?B?ZVNMK1Q0UUVJL2lYYzJhL29VZW1pSlJodGtxNmVRbkNjN28zRHIwNWppVlp2?=
 =?utf-8?B?N0pCbzVFb3ZwODVkdlhzNUVvNXEvbUpQWFY2a21oRUJLRG40alkxaytXOHdP?=
 =?utf-8?B?a0VvWllaYmxoRHgvd2NHL0JjZVRRZUNNRW03ZmpaOS9HU05yWGE3NHN6NWM1?=
 =?utf-8?B?bEJWcDBzejhjWWlPbGp0VlNneVQzcUh5NTFMQmhkZmZUaGEveUxzQU9tSDlO?=
 =?utf-8?B?OGxmQWFtWk15bEkxV042N3R1b3NjYXJKUXR1TTVNMWN2QUVXdG11VENlRkZw?=
 =?utf-8?B?cTFiSGFiQ0I1MTVuV2UveXBjaExzRnlZaFR5TElpUmo1bWVGSnNOZUFCMVNG?=
 =?utf-8?B?T1BnSGdsNDBzcUpjOEJOZVNlNktKc29mWkJuYkJhTysvOWM1OXJ6cGVMV1Uz?=
 =?utf-8?B?MTM5bzZRNFhiSUs0KzVMSzNQcTV5dklvdzM0alpkeG1LRWl2ZjVTVkpQdnBv?=
 =?utf-8?B?L0pkbWhUNG51MTBHRzMvYlMwUXFVYnZWQ3czbFVMQ3ZNK1NITkJzVnByVW9q?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbc795eb-b500-4b3b-3eca-08dd9cd9c5b7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 04:48:49.7094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K8mfXaGynXzx1Vqsft8KiuZ7qFuAwig2CXDOsno2SpvEGhTa3DBrMZ2mpIcBUrRFp64/3/pBZuy+c0bIGnQ9iQSBsc0tRAjhUVW92T/2rAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7471
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


On 5/13/2025 2:08 PM, Dibin Moolakadan Subrahmanian wrote:
> intel_snps_hdmi_pll.c calls do_div  function from DIV_ROUND_UP_ULL

I think you can remove the file name from subject and commit message.


> and DIV_ROUND_DOWN_ULL macros. do_div  expects the arg2 type to be u32.
> On higher data rate arg2 exceeds u32 and ends up in wrong pll
> configuration.
>
> So change do_div calls to div64_base64 calls where ever arg2 exceeds u32.

Add fixes tag:

Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI 
PLL algorithm for DG2")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>


With the above changes this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index 41c6c111af1d..74bb3bedf30f 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -41,9 +41,9 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
>   {
>   	s64 dydx;
>   
> -	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
> +	dydx = DIV64_U64_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
>   
> -	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
> +	return (y1 + DIV64_U64_ROUND_UP(dydx * (x - x1), 100000));
>   }
>   
>   static void get_ana_cp_int_prop(u64 vco_clk,
> @@ -115,16 +115,16 @@ static void get_ana_cp_int_prop(u64 vco_clk,
>   								      CURVE0_MULTIPLIER));
>   
>   	scaled_interpolated_sqrt =
> -			int_sqrt(DIV_ROUND_UP_ULL(interpolated_product, vco_div_refclk_float) *
> +			int_sqrt(DIV64_U64_ROUND_UP(interpolated_product, vco_div_refclk_float) *
>   			DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
>   
>   	/* Scale vco_div_refclk for ana_cp_int */
>   	scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float, 1000000);
> -	adjusted_vco_clk2 = 1460281 * DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
> +	adjusted_vco_clk2 = 1460281 * DIV64_U64_ROUND_UP(scaled_interpolated_sqrt *
>   						       scaled_vco_div_refclk2,
>   						       curve_1_interpolated);
>   
> -	*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2, curve_2_scaled2);
> +	*ana_cp_prop = DIV64_U64_ROUND_UP(adjusted_vco_clk2, curve_2_scaled2);
>   	*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
>   }
>   
> @@ -165,10 +165,10 @@ static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
>   	/* Select appropriate v2i point */
>   	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
>   		mpll_ana_v2i = 2;
> -		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
> +		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
>   	} else {
>   		mpll_ana_v2i = 3;
> -		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
> +		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
>   	}
>   	vco_clk = (datarate << tx_clk_div) >> 1;
>   
