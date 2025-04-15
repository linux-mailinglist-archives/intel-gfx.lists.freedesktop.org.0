Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C76A8956E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 09:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E741E10E0DF;
	Tue, 15 Apr 2025 07:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I6870750";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9141D10E0DF;
 Tue, 15 Apr 2025 07:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744703065; x=1776239065;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DsoTk/1FmOTib9zFfDKHwhotD4rHdwazeGGUD5x8Bi4=;
 b=I6870750XFHYx1VqFe/X+Y0wH3LPnGVjAlhDD51FFlRz/txE4g+SOfis
 O5oV9FNO6HITH70Z/sPoGq7eQ/6bich+6vHT/Vik/EuFjHRmBOo5n4FFk
 qYlwoOvLUEql6FpiHfX/H4MjCrN//47rh2QiS12fd6K2gl+D0jGnqKuoJ
 dXavzs6+2wVg65KKrvrXGKeh5M9cKCSZwnCgmmuoJMlHZ3/xmqwM8Sdeo
 Vt2VYalk7H/meGkVO7C6SdPXZ0cGvCT0mSVe4WLirKRwHVxPUmaP8+m3l
 uo8YwLwe3QN2gtFZIWRnrj/OFoA/DeLMDDzlapawYql5OA4RUkP2o6Vyi w==;
X-CSE-ConnectionGUID: 0TTCE7iwQS+yDRXtkd3BaQ==
X-CSE-MsgGUID: HNiSNnDQRdaZ+9vRCejjDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="56376805"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="56376805"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 00:44:24 -0700
X-CSE-ConnectionGUID: roupqHdcTR6x80lhoozw3Q==
X-CSE-MsgGUID: 2rHkc69MTY+EsmUcoC/Zng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="129890649"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 00:44:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 00:44:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 00:44:23 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 00:44:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ctuboRhU1nfGuYNBTK4T3SuNsGtTYW9lyJZ/opO0ibn5ho2Q+JMVN7KiHRx+78byHZ1Mls95XIhAoTIqq/QwkwkAu3zeV3g3/ogdVGFvB41HpXlfg7dKJL2Zzc6b7NQoBRZDK3L/wavCVkCFKhTSRxHDK2NVSq8uSGP/YOaQdKN6Pzi3pkVKSvSwG89DZMwVptlIRdDsGqtlQdtHr86r8/btMbcWTNTosaPdFCb9nk0Gig+kqS3xwQJfhydlbQIE64HZ/sOxKQJ86ho8TT0UqBjZ3Qz6WwZ0b4q1KexAAcpHBFwhT5HyLFEoSBNiaaErf/wd3RBESofL8lO0rTSNCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EUEUDcvSK8LheOAbohlmBYWn5z4ZZ+z1u6CwCDCcNZw=;
 b=eKUsUYdGRUTFjBNlQTNBmX6B+cXMQ1GVLACLc0jhP/3PYLPWDA4PYNs1ijseZub1WPdDQRJaGz4wkh422GyRAmFoPm3PGEGoQJOhdWZblX3tKWLSMoqlwBM5bKk8brVIziC+mIW28N2GRt3pmu65Myu0QH8CxnUu+1iq7odpYTN1Fn/Wb1+zIR/I/2D5W8eZZL3WX+eMhwb0WJs6KfeHFlo/QcpqX0xk2ySBRyvMS+Audh+Xy6PRx5x3qOLcrJoh32uFAIPL0pLTPGJo89vDWDpP5MomJ0lH3L3bRPiOFXrby4Bht+SyLy/Elp6pjCOQ53NHqRLTkFux/VuO0/kTrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Tue, 15 Apr
 2025 07:44:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8632.030; Tue, 15 Apr 2025
 07:44:05 +0000
Message-ID: <6f700d4c-eebe-4e48-8a7d-f71f01f281fe@intel.com>
Date: Tue, 15 Apr 2025 13:13:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: Add macro for checking 3 DSC engines
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <suraj.kandpal@intel.com>, <stable@vger.kernel.org>
References: <20250414024256.2782702-2-ankit.k.nautiyal@intel.com>
 <20250414085701.2802374-1-ankit.k.nautiyal@intel.com>
 <87y0w1sxlb.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87y0w1sxlb.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0005.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 86cb30d4-23b1-44da-ea50-08dd7bf14c66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d3phUWFzekdkWUNFMkJkZjlCbmhoNk9GSmNRT2p6Yk5pcnQ4aW5qcEtxMENo?=
 =?utf-8?B?VlpTVTQ5aU1wbE11SFZLNCtIZDU3Q2RiRi9QeVBQOW9aMlBUZHJpdG1BVzZk?=
 =?utf-8?B?ZkRsMjNCbzlITFlkSVlkOGo1S3hRQkRuU2VCUkJja1ZoV04xcDl5TEFGL053?=
 =?utf-8?B?bmRMb3pTZDJtMmtTaGM0QTFBdDQvRUc4cFVxUDdETGJWSkR3R3p5Q3hydnV2?=
 =?utf-8?B?R2YyMmZselRqSzRuUTBZdEFqNml6a2tsanUvMkppZlJRZjg4cTJmMkdmK1Rz?=
 =?utf-8?B?dkhwT3N6dG1sOGVkNE0xQWF4YnVGYjRNZ1kvRXYrcUw5R2JMYnBiYnZTYitx?=
 =?utf-8?B?QjNna0RPeDlmblA1M0t6RzdVcEtqbzFqald4U0NaKzBWYy9tdFFybGRDK253?=
 =?utf-8?B?U2c4WnE3Q01ZUStJQXRmSnBZSnBZU0ZJendEcDlOQ0RMaGJRZy82ckJNVk5I?=
 =?utf-8?B?akU5UEM5RDZpYnlQbGtNc1BkNXJFT2UxUytmVks0aVN3TXZvNEk5RzIrYldK?=
 =?utf-8?B?UUtPZVphMmUzQ3ZwRWZZYS93Y1d6cGFmcnFqdE5RSjlUMVYxSlQxSHNpUEV4?=
 =?utf-8?B?TVhvK0NvQnd4RGVmcXdpV1dNWVQvby9sME1TTGlUd0hUTHBJeTdKL2RlcnFU?=
 =?utf-8?B?bXdGUlh6UVU5TmtvcEc1MzJReVRRNDdocmZwL3FnSTJrdG1zNHVjZFRsaEZu?=
 =?utf-8?B?cFRndzFsWHFOTUJkWXBCY1YrWC9YZlFtZkhveXczLzNuUGt6VVRUVEszYnZE?=
 =?utf-8?B?SyttZVM1WjAxcElQYVM0TDY1ODFnOUYxTkZjM0Z1eXBJakZqNnlLQSthd1do?=
 =?utf-8?B?MkcvTkZ2SGRlN3M3VlZEckdoQk9YMStEMGZzck82dWlCSFY5bHFoSktSdWNN?=
 =?utf-8?B?MUtVTjVLbU5IbTlBNitycldndDBpazY0QTJmKzZ5WjdUNVExNWlMK29yaXBz?=
 =?utf-8?B?dW5tSnJtVkcwNytEaE9Xcm53Q2tNMXpFNU5jeXUwdzhTUVJkenBWUk1mS2I4?=
 =?utf-8?B?eXNHUWpoVU9VYW1pSzhOZjdYS01zN1hER1F1Vjl3L05vMmpuUE1kcXo3aTVQ?=
 =?utf-8?B?Q0txakNkR3VYZTAvVStyYmltOGlwWHhwQ2NOQjBWUU5iZkdQSDdxN1FpMDlS?=
 =?utf-8?B?cWtqL2NxdDJyMGxkcktnWmhBRWVBNGpCcnlienNldTJ3NkMzYmVDKy9nSUth?=
 =?utf-8?B?Ym1OQ0EyRDE3VVNQbzFkUzlxcC9PWU1PbWtEMmtSWU1SZ2Z4Wkt2RGZKNENz?=
 =?utf-8?B?VGxuNEJyb1lva01uZ0RmcktvVnVUVEtiWjlSQUNIcVBUdVBIb09zS2ZhTHNn?=
 =?utf-8?B?NllxdmVkcm03dk5ZNE5rL2lDNTJBbWNhRi85ZHk0Y0l5U2ltMTAwMEZqQWd5?=
 =?utf-8?B?M082RVZoUWd0WWtIK1Q4UXdpS3NBL3p6Z2wxM1ZhNitZbGV4Z1AxQTlEMnEy?=
 =?utf-8?B?cXdKUWZMa3pXZkp6QTBnV2Z4LzJHNlZhSzlzeTQ1dFpGSmRjVTJiZVFDY2VE?=
 =?utf-8?B?YmdKTm9PaElyUmtZU2NobEhsTW9IdXBLVVFITFpDdlJSVHlsOE0ybk9qVk1V?=
 =?utf-8?B?V0doSWRydkY0ZzFSNzlHbDZXZS9ISlhha3Z0aTlGeE43RWtJSUp3R2UrQnRL?=
 =?utf-8?B?dVY0enlzWXBiaDZYc29icjc5dXJ0dnJPOU5ZVVpRUEMyTnZ3WktHZnhWL0gy?=
 =?utf-8?B?UnRyVzYyNUdyN2RYL0lWNzFFZjdYQzRnVERjcmJPbnUxUEZ5TWMzT1lRRDBV?=
 =?utf-8?B?K082RndzcTBvNDlIc3FCRytnbFZxUXJHcUtmRmdXM3ZkcnJmK3EzZUdmMEx4?=
 =?utf-8?B?V1RlazYrQUwzSG1NR3VpS0RlcDJsOWd6TTg1eG1TZjhhQURRbndJWlRpajYw?=
 =?utf-8?B?YnhiL3VseldnT2pvclpjY3dzSjVtMDI0ekpRby9YWTRWeXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkMvbE1aOXpMK2I3NzNpQ1Bia0ZEMUZxOFVaR0hZWEd1RHBlbkx5UWRXMU1a?=
 =?utf-8?B?ZGxVR3ovYmVIVEtBaDhsaC95eE9idDlEUTZXVmpreFJJSHRqV3l0VGxNUFVy?=
 =?utf-8?B?Z1ZWc0MvN0ZQSytQUWErRjh5UTErY2UvYmRVd283SXJEenYzSCtRZHE4THdC?=
 =?utf-8?B?WitueGJXaEo3RzRtVGJiSENUckIzbWpVbTVUZVdUL0tFV2I0dHcxTlRIaTBz?=
 =?utf-8?B?enR4NUVmKzVveng1UjdFeWVCMXM4ZW9peVpIOCs3a0dlUE5RbjRnUjlEMjV5?=
 =?utf-8?B?MlNQTFo2YXZYWVF2T0JqU1o4VUhPakY1elNKUkVrU1YwZFllVjZHdW1DK3pZ?=
 =?utf-8?B?OTBmVWNKZEwwYThKNEhIczJHWnlqSkxiTGlKZi9uY21ydlNpMkZQR016M1Fu?=
 =?utf-8?B?ZTRwTzBkcGJZa050TUhFR2pqQThPYXhXQlhYcldGemdPRTZzMit2cmlwQjRK?=
 =?utf-8?B?Z1c5L1NEUmJqRjE3cW8yM0lzOERwQitMMnlVaGNtSXBDUGNVN21kay9iOG8v?=
 =?utf-8?B?eHpqeGdXR0VNaUZhTnpQME90Nlk4SnRTT0laU20rU3pGd1NQN1JhdG9LQnZM?=
 =?utf-8?B?UkJwdEs5UUFSbDh2UjMyTmFWTnhwaGlZcXZWRjJzUkZoUDdNV0hmNmRiZ09K?=
 =?utf-8?B?b2dlc1IwdkRnaTJPWkxVNTFWeEN0R3NpZWo3MUlXY0pOekFLOFBBY25MOUtP?=
 =?utf-8?B?T1FZQTI5bTZnblVCS3UvQWZpUSt1dUxXY2FqM2cyN3ZnWEc0Mm5qK2JpbHFO?=
 =?utf-8?B?Qnc2eTVJNHRxYXRtMzNKWmJXRVFLbmFTMnB6WjkrNnF6MEVRMUszQnFwVVNU?=
 =?utf-8?B?SS9xSGhxS0g3ODFaLzU1cU9hZGxLRU5DTzVtTHFsTmpiTk1DREFpa0wva3RU?=
 =?utf-8?B?aitTeVF2TGUvNGRyWGJ3dzE3WGZlQXBuR2lUVEFQR1RTdzROd283ZURhTXQ3?=
 =?utf-8?B?RmtJQTgrMkZVV3FYYmJMUFl1dnZveFV0WnZ1dnFsclRFM3cxMUNhb2JiR1hC?=
 =?utf-8?B?dnNhTnYvUllqT3IyMWZFWFdMN2dsald0Q01VK3BSK0hKeTVLNTBTcXNQeS9R?=
 =?utf-8?B?L1NmU29pQnBPTnRKQU9UUUg0ZVNCZ3U5NVNBaFRveVpXanpKUHFDaU90MGlv?=
 =?utf-8?B?c2FISFdXTjhVL3YyL3F0VzNodTZwc2NsTkZxS0doQ3JyMVI3VkVxdWFpekYw?=
 =?utf-8?B?TVV4L3B4OHdDbWNkaUF6N1djRlp6aytTUlZRUURDWkZpWjlvTGlhTnFjbHpK?=
 =?utf-8?B?ekdlelZlNkhhbTVQcWgxSkJJVDVJWi9qUlRFVkZXUUV0dEQrRWIvbUFhUHly?=
 =?utf-8?B?YkJBZFl2SDNhVXAvYndBMmgvYVJBRFFFdjlmVVJBSUhwek4reWUrUTFRaGl0?=
 =?utf-8?B?MGpIWVNoNUwwaDI4b3FySU80ZUFEbzgzT0xybWtwRUowNWhZakVHdE04Sm5Z?=
 =?utf-8?B?cmZHLytZSTQ1aEVHREFRK2lhNkpyUW5GdDJCQVFlbmxrWkxDcG43RVBGbi94?=
 =?utf-8?B?TjlnZjR2R1FZcndiRXlFV0Y5T0lpYVZLQkZiU21zaGd4YXlianNIdnI0eWEy?=
 =?utf-8?B?V21KNk5tUEdhdC9FKytyR3VaMmUzdERPaU5oK3JFaHJvTU1wbU5sSmhaN3k1?=
 =?utf-8?B?ZW1QeWI5UjZ3eE9mRnp5NjNjUHJWOThQSVo1VlNPSkZqQnFlYjNyVlQ4bGd5?=
 =?utf-8?B?L05ZL2M1SXVoQ0tvb1R5TFNTNGErZkRrQ3pQbU5NWEEvNFpiSkwwYTJ0dmpZ?=
 =?utf-8?B?clNGMXlWNTlhUlRIM0xLN2RCdTdJem1CaXBXQml5U2JuNFpnMXJMQkd1anNN?=
 =?utf-8?B?eWJWdEMwTVhLZ3JxTmdsYk5NdURwMzNzVGE0SUNlaVVzeUFIcW96Y1hDb2lM?=
 =?utf-8?B?cEFjQ0hOMml3dm1JTnRHRUVJSGhHY21QMGpVcEJaTTVodEp5V3IrTEFIOUNo?=
 =?utf-8?B?V2VLb0lVS0hpWW1BMEoxamk1UnYyQ3cxTUI3U01FcS9UaU0rU0pFcXE0MFZh?=
 =?utf-8?B?Z3d5clVNU0ZianNuRUlmQi9RKzJDZnJkMURzNUxHT0F1ZnQ3WDRMbW82ODdy?=
 =?utf-8?B?SzlVMlZJTzNSbWYzOVp2SFk4YjdsTzVMcUoyckVVeUxUL1FYdGNObVM3OWZW?=
 =?utf-8?B?QmRNMExMVHJUQS8xYmNaUjBMNVMxQU1xVjBpaDBQNUd2ZE1mdjBsaTlOWDhk?=
 =?utf-8?B?ZHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86cb30d4-23b1-44da-ea50-08dd7bf14c66
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 07:44:05.6811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AOXcK7BbhVFsSDd2VGXZ0Zoz92YrfRs3v+D/CEu71uzsZC+/SqMVzdZF9XO69QTA3A7F5/GVzijefWXo4fbpVwMpB6BD/1SaISIwXc+WEfo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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


On 4/15/2025 12:47 PM, Jani Nikula wrote:
> On Mon, 14 Apr 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> 3 DSC engines per pipe is currently supported only for BMG.
>> Add a macro to check whether a platform supports 3 DSC engines per pipe.
> Nitpick, feels like a macro returning the number of DSC engines per pipe
> would be more generic. Like, would you also add HAS_DSC_2ENGINES() and
> HAS_DSC_4ENGINES() if you needed to know that? But I guess we can go
> with what you have for the immediate fix.

Yeah NUM_DSC_ENGINES seem better. I was under an impression that newer 
platforms would have 3 DSC engines, which was incorrect, so specific 
case for 3 engines made sense at that time.

If there is any further change, I guess returning number of DSC engines 
as you have suggested is the way to go.

>
> However, adding the tiniest macro and its only user in separate patches,
> for something that needs to be backported to stable, seems like erring
> on the side of splitting up patches too much.

Noted. I agree it could have been just one fix with the macro and the 
usage in same patch.

I have already pushed to drm-intel-next :(. But will keep that in mind.

Thanks Jani for the guidance, thanks Suraj for reviews.


Regards,

Ankit

>
> BR,
> Jani.
>
>
>> v2:Fix Typo in macro argument. (Suraj).
>> Added fixes tag.
>>
>> Bspec: 50175
>> Fixes: be7f5fcdf4a0 ("drm/i915/dp: Enable 3 DSC engines for 12 slices")
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Cc: <stable@vger.kernel.org> # v6.14+
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 368b0d3417c2..87c666792c0d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -163,6 +163,7 @@ struct intel_display_platforms {
>>   #define HAS_DP_MST(__display)		(DISPLAY_INFO(__display)->has_dp_mst)
>>   #define HAS_DSB(__display)		(DISPLAY_INFO(__display)->has_dsb)
>>   #define HAS_DSC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dsc)
>> +#define HAS_DSC_3ENGINES(__display)	(DISPLAY_VERx100(__display) == 1401 && HAS_DSC(__display))
>>   #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
>>   #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>>   #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
