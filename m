Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D42DAC00DB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 02:00:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA15510E089;
	Thu, 22 May 2025 00:00:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q4PD4aF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB5F10E089
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 00:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747872035; x=1779408035;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rRsPfQNAhscfRgWG1w5ZVrQRFbkOSX/DmcCEFOoebrk=;
 b=Q4PD4aF/1kdlBvqOQQCPpVUzPV/0zMZaNid/6OewRyAck+BaIjaAp7lS
 bqVaDoe9J+oX+CHncdVxJ+OAjEaXgjjdwHc+YbDPxPhf7UN6Tvi5OG3lO
 XpdeZ+Upc7QY+OdWh/3Yjd62AHk9pJwtlYufKVuSX+PUJhF8tA55pWcHv
 dWHiKBEeCtmLfm4BZkwzoFxlEsVPEwyP9uKTSCweQQcGEfj9Ot0u/WS2I
 FvNeJDinKfxxVZi5WmfzMJid1a4lgmImKoid4TYlAencHruQmLoO4sDXx
 QcxFcjPfhAleDe7fTz+FDPrpeqeggFESHiw177XxHmj05iV04FI40UMX1 w==;
X-CSE-ConnectionGUID: bwp5gZNJTV6skAGK+D9iWg==
X-CSE-MsgGUID: asafPKXNQwKxlpW7nqCwzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75273741"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75273741"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 17:00:34 -0700
X-CSE-ConnectionGUID: rm99AEF7QcKiir+ksDKzYg==
X-CSE-MsgGUID: 0EFgpB0zSzW+JEUhU9B9Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="177475031"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 17:00:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 17:00:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 17:00:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 17:00:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GIV/2JWBYpcyRYzjT02nd6h0StvzZC1/IXxpGumt6gequFKVz3HmSuBllfauJPaXK62Piq80Gof+kVnWiukm3e9/Ifou6EyYuXVNf49U5ncO5B+2KA1a05aN+aDUd6PRtvFQs58kOSaFpUs8LMvY1E4TqsCLVZh770PMvnp2k119QOKhE6tdzh9r6tBR/GB9YB+/CQsGBh1at9Nl9kt2P8aGefNI2UmjnckJqrqpjE8g/aFNRuNlNP0JJRhkJ4wK2UcSpLo7jfwKLvR+kt0HlYKGlM5G0A1F1pq/lYl3tOzQDuvrhqjfKZseOcUXyVxtIX1FRhyz8L3zghDiEkGW2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jhr1VTbf/06J7ujdEj/LUsxef1xLa64W+JQu8aT1Was=;
 b=J1/50iXLtGUhRLkIFZBeahN6b9JuKtkM+khaSvOiadhm1lZGr9FUeQHKfSThed0VFsbqn/6aqzLtN+dZz0QXefDwfDwouMHFZ8jMD9Ky7ilV875yB2Xg2gDELUB0EVBRsHR3LDcpQ7UPoRNSoxSm3pGTl+cjGd9Nua9GbzbOIe/ky02t/A0HLXcQ7ZoXOpwSwcS1hvYS05DvRj4+HXEWq+jRyzSrEsUuYvdte1MbsvwxFidjwKAv6qZpDmPBw4Tzud/X6VFaFt1zIMTOEWHyY9hEqJHa9pY7+y8oEGQOkdkUTJCWH/RB08CqQYXDgvHj+8xEFbGASx2UKZpk8tT2lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CH3PR11MB8384.namprd11.prod.outlook.com (2603:10b6:610:176::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Thu, 22 May
 2025 00:00:01 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 00:00:00 +0000
Message-ID: <e157f364-00e2-43d6-98e5-a2ec77d915bc@intel.com>
Date: Wed, 21 May 2025 17:00:00 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Handle race condition where wakeref count
 drops below 0
To: Jesus Narvaez <jesus.narvaez@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Alan Previn <alan.previn.teres.alexis@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>, Mousumi Jana <mousumi.jana@intel.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, Matt Roper <matthew.d.roper@intel.com>
References: <20250515183752.4155523-1-jesus.narvaez@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250515183752.4155523-1-jesus.narvaez@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::42) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CH3PR11MB8384:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f14869c-ba11-4a9f-d0cc-08dd98c39892
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b1RnY1ZtckdkSENWTWlHZzFIQXVnS1pGalByMURRWlE2dEUyZlo4UFVFV0t3?=
 =?utf-8?B?c0RkME54alJvNEtaQVVWc3dsWDN5eE5tQVpjbG9FODI1d2o2WWdXWGFPeVlH?=
 =?utf-8?B?ZWJodHpKTkRucFFkZ1JNZk4vUXNmQWNEWFdSZ05aYm9BZ1F6SCtLcFdITGd4?=
 =?utf-8?B?TTJlT3BqSXFEYTBPOGFFcEtzZ0JwQ1VnRFFOQU8rRnV0WjZVRk9mbFFGWXIy?=
 =?utf-8?B?QURheC9sWFQ0b0FkNlh0clJTN0VMOHRMNmVsMHc1M2pER1dqT1RIQ201QU9y?=
 =?utf-8?B?Qml0WHRKQVJhSlNrN0thUVZoN3lmS01JZ1VIYUp0Uld5dlNwRUI2TGhaTDlU?=
 =?utf-8?B?aWtUYlVLem5ZbStoTlR6YStzbkNyQ0MxaE1wRzFTTEdtaHpTS1U2NHZFdFZB?=
 =?utf-8?B?ZTVnM0pDaVNFbTlDQUJLeWNQRm1sOE5TNXhZckM1N01RRzg3TTFqYS9LSUZQ?=
 =?utf-8?B?Vk5leGpXb2prdit4WlNxV1c5VjRzOWRkbjZHNFVRbjZhN0lOTC9tTUlkVStx?=
 =?utf-8?B?K1M2Nmlxek1FWkgyTkNnZXcrcU5kdTFFTzBuZ2xMSVduZFBnV3o0eXh3Nmcw?=
 =?utf-8?B?eWJ0MG9YdlBjMkFueEs4KzAweHNoaDB5ZWw0Q2M4RlVDbE0xK0thZ3g2M254?=
 =?utf-8?B?cW1HZWpYZW83SFhHUEtTM3l5amVGRGxQNUNwZmN4VnBtQW4zQVE5ejdieWJm?=
 =?utf-8?B?R3M5ZlVZblA0N01USWYwM0wrb2hFN1ptSU14b3d4Ymw5MEk3bGM2QVdHdlB6?=
 =?utf-8?B?VXNZS3hQNVdFZFEzNWxidzB0QVdwbWx6Y0lQOXhjS2N5UndkR1JFTkhad3h6?=
 =?utf-8?B?dU9qTEVvUFBWRTFvUlRCb3ZWaklCZGVQZUlvVTluZGxZVkJESkVGTTd3Tm01?=
 =?utf-8?B?dDRuY1RsRWt4bXN6RW1zYzdrVU5IOXd4L3pxNmVDQ3BXbk8wNjFRRVg2Qmxk?=
 =?utf-8?B?ZjZMSy95SGxZQVF6aTd0RnZPL0VnaXdYYlFIRDlGcjZjT0NJYnd0Z1BhWlVL?=
 =?utf-8?B?TDZFY3lBY0JMS1p0R3RRRVN6MHlxUVUrOUxWSHRvUGl3WlljaFN1aHVEdVcr?=
 =?utf-8?B?UEcrNFc0SllUSmg5WjhEdHhRcUxiWit6ZU9Ra1BUTGJicWI5STV5SlJKY0lv?=
 =?utf-8?B?YkxVL09ZSXY1UzJjOVpLNFBoY2ZGdDZDU29CQ3ZRcFpYNlNYNW9GTit0MnRS?=
 =?utf-8?B?K292YzAzWjQ2bTNBK3BvSk9QbEZqcnVMa3FoekNZV1RYWThlRGc3V2FZM2xa?=
 =?utf-8?B?WldsZHRZYU1UTWhlYUlUUGQrMW5VLzArYWc4SUQ3SUl2cVNxK3R5ZVZQV3Qv?=
 =?utf-8?B?cFRDTFZaQ0ttc0FsWWwzakNLUTEyTGNhUEpTdmRBbmNwOHozTzF4YlRJMEw2?=
 =?utf-8?B?enE1MzJCbkxqVXVwaWhTOVBxam11SGk2U2E0U3JmUGVIUGlrZE0zRjR6SXVE?=
 =?utf-8?B?elBJM3ZaNkRxOEhmTXJ4anlWZWMycnJUY3cwSXdXVUVTZUhUUDFzckxXaDd2?=
 =?utf-8?B?U2VxME1hWGwwVjJWYlNRNnduYVVUWEtONkZKKzdIUnJ0eDgxZFNONDV3WmVX?=
 =?utf-8?B?eFRBV1RaaUwvTE5qaEJGYUZWY1hRR0pBSU1VRUdkZVR3cXZkQzRqRzA0dlVw?=
 =?utf-8?B?Nk9pMDJzV0duTzI3ZVBpZUdRWDNZcHdWMzlDYjZEaTB0bEVtQ2g3UmEzZzJE?=
 =?utf-8?B?Y2xrbWJWOGNjSnEwK0lvVFp4bHB4emFZdmRaZ0VGdXFWTEhpNGRreDJNYUxS?=
 =?utf-8?B?KzlqSHQxb2hoSmFORGpJaUZzbks4aVBHSHljY0tTdytjSTJRT09pSUNnWFUv?=
 =?utf-8?B?ZWs0ZThxdzE4Z2Qvb0Q0cXYrb1RWNE1jUWo5eGxsWjYxVXhyOGI5bW5RaXpm?=
 =?utf-8?B?WTdob1gzd0FIL1hPVmxCVDhrK1dPK0tlOHVScE1zbWlYbTdhUXZxb3g2RCtQ?=
 =?utf-8?Q?Kx6A4AyKsgc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WENnb08yeG5heGtMZGw2WUZXSElhR2pZVHVLaEFXVGRNNjVwWkZDeXFwbGJ2?=
 =?utf-8?B?SmY0OFh1TVpMUEs3Q0FYNEVQTkI2Q09Gd0xMWWZiR1RRN0I0dHVFYUpqT25T?=
 =?utf-8?B?V1c3d2c5akNFZkorY2ZYTTFjb2k1WW9GaXp6NkQ4UGtYb0tqQ2R4ZlJQNm1S?=
 =?utf-8?B?U2Z0aW11QUJ5dUpGM3owZEZmTzdrN29URVo3MlBGQk82TGd0V3JNNmlYMFJh?=
 =?utf-8?B?dXlRRnZDK1BIVDJ6eStWeTBtSGo2UUprOEQyZFNWaXpZanVCUzRkelorYy9F?=
 =?utf-8?B?QUpuaWI3YTc2RkhMWThnR0s5cUVlYWRpY2poZ2x1SEpyendpYjVZbUZiM2E0?=
 =?utf-8?B?bk4yVE5ZS3RNZmd4dytrdXJIWXVZaGl6amZkYlhiV0pqeDNpQ0NBdHZiQmUy?=
 =?utf-8?B?YS9EWHl1V2Y1OTR1Y2pDcUhMTkZKd0k4U2llSmgrSUJPMDQwRUVXT0ZGclhQ?=
 =?utf-8?B?bkVIeno3aTdrdm4rak9SQWU0ZVpZV3FCK3I2b0t5NnBETjVDUmlVZVF2Wm1J?=
 =?utf-8?B?UFh0YkdLaG01SDA0L2dlcmtFL3BuTDQzdFYwTi8rYUdvRGc3TkxIZS9GbFpT?=
 =?utf-8?B?bk5LZHZmSExkMnJRMnpSWU9Jc3pnQnRMVU9iMFo5c0phRjVGZXY2ak1aNE9v?=
 =?utf-8?B?YTBvSEhtSnFOd2xxOEhmWkJuV0pqZUs4Qy9wNEp4VVZiV3VYdkc1dzFRd1dZ?=
 =?utf-8?B?dlVBK3NjYjViY1BTUERybTNHRUF1ZXArbDJETE9xL0lwL3hSaXlWS3AvSjFB?=
 =?utf-8?B?YTR0RWtKRFlGcVpjL2xIZDJlaHc0ekYvRnlVOGpBTklIaWdBREpNbS94cEhm?=
 =?utf-8?B?ZHNycW5RN2JmYWpuSUUyekJxa2pOVTJIYlE3RGh6VENrMDlLNXN6ZFZuQzZO?=
 =?utf-8?B?bi9VQzRNVy9nYVBNV0lDZC9JZ0tBVHI0enZybHh5M3VoS0pLRExtVEdFOEtE?=
 =?utf-8?B?a2JBRitkc0JFWFFrcXBQSDU1ejZUWUh6SkVGUERCcDBadnJCOTlUb0hneWpX?=
 =?utf-8?B?N0FCR2xVYVF0d1F1dmdhaDVHOGtCcTM5U0xMa1g3RTIyNUJZVURsUG5YQ25a?=
 =?utf-8?B?cWJnRTZoT0pkWFE0WXMvc2JJZVcvM3FpS2d4OHlJUXJ2MlZtMjFBZFNqSUhi?=
 =?utf-8?B?aFo3WFBuelEvNEZxQmR6YmRzYWFudmdVYnQvOGxzT2k0dUM3S05HeFlIdVpu?=
 =?utf-8?B?Sm5lNkZCbjRhY2ZNenp2TExDdElZblg0dDJHTzlVcTdhWE9iTUNtQXd6NEQ4?=
 =?utf-8?B?TVhkQVFvV2pnYmgweEJKUVlxTFBmQVNCd0JIZHRMYVJ5NzRrajhSWjhmK3VV?=
 =?utf-8?B?dDB5ZzRTMmxqVVZGVjV6ellPWTk2cGFnL2Q4WisvZ3VIK2htV2dXeC84eERk?=
 =?utf-8?B?YUQ3VHFrY0d6YTBqM216VnBMQUJQV0hyc2FNek01eTJPL2pGVEliMWNHdTZD?=
 =?utf-8?B?WSs4MFVja3JCcVhLdXc5TVFTeXc5SVRKOVZhQjVxZXhUN2ZuejVmYzhmcldq?=
 =?utf-8?B?L1NoNGdjYmgxZjJ4L2FMMGVyWkNZQnN3eEg3Tk5Ncnd3T3BEbnBvdWZqaEJJ?=
 =?utf-8?B?Nm5PaW9VWTd0cE9XMW1Mb3VlcVVRUVRBbGZrem44SzhZa2RKbjBHS2tpYmc3?=
 =?utf-8?B?ekF2M0gyNnV0dUhFMkJ1eDNsLzZEUFZpc1BEOUMxRVdhQytkTnUzWHV3TkFP?=
 =?utf-8?B?Z09jRUpkVDltWGk2OGxPUTMrbm5HVWtkMDI3N2NCZ2RwblBKY3VnOVViT25k?=
 =?utf-8?B?SUdIb25KdURYQ1c2Wld2OEI3UmsxY0ROclNWcEozZGlKV3RMczNBYUNSdnd0?=
 =?utf-8?B?ZnBlSUlob3A1RWc2bU5rMkRDTkVtNGJVZ1dMV1pLK2xoeVo5R00xSGtCMC80?=
 =?utf-8?B?SGhxazdqZHF1NWMrSUwwRjhOcWlwbytlb1N0MHBtbkRVeVRYa2NwbXZWQ0dx?=
 =?utf-8?B?WjFqdkpWY2NuYVd2N2hTQzBEZlRZZ2tBL0tUcWI2cFIvSkJrOWd2Wm1HeWlx?=
 =?utf-8?B?Q1prNkJocTlXc0RvZEtySHN5YWF2d3cvSVo3blFMTERaYVc2WkF1OHU1YWht?=
 =?utf-8?B?Z2lsaW9oWVhkaTNVQXhEejBwbHRSREdwbm0vOFR4ZUZMaU9sVTB2QThWUkIv?=
 =?utf-8?B?VlUxWFQ0NStzdSt4dVI4TmozWG90L1h5c2MwS05JNGJwdUVmMjNNNmYrajdN?=
 =?utf-8?Q?NEBCaic+R90dkVW7wHx2mB8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f14869c-ba11-4a9f-d0cc-08dd98c39892
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 00:00:00.8578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3yoFbF18OnWAhICxlsPDebNxq6vs12wn6i98/2sbDHS4r1iUf4tpYVCrpqRiyman8NKlPcGpoFA9ohLdt00D2GOzlxtX8G95TF2+8LoaxSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8384
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



On 5/15/2025 11:37 AM, Jesus Narvaez wrote:
> There is a rare race condition when preparing for a reset where
> guc_lrc_desc_unpin() could be in the process of deregistering a context
> while a different thread is scrubbing outstanding contexts and it alters
> the context state and does a wakeref put. Then, if there is a failure
> with deregister_context(), a second wakeref put could occur. As a result
> the wakeref count could drop below 0 and fail an INTEL_WAKEREF_BUG_ON()
> check.
>
> Therefore if there is a failure with deregister_context(), undo the
> context state changes and do a wakeref put only if the context was set
> to be destroyed earlier.
>
> Fixes: 2f2cc53b5fe7 ("drm/i915/guc: Close deregister-context race against CT-loss")
> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Mousumi Jana <mousumi.jana@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 +++++++++++-----
>   1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index f8cb7c630d5b..f066c2dd7114 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -3441,20 +3441,26 @@ static inline int guc_lrc_desc_unpin(struct intel_context *ce)
>   
>   	/*
>   	 * GuC is active, lets destroy this context, but at this point we can still be racing
> -	 * with suspend, so we undo everything if the H2G fails in deregister_context so
> -	 * that GuC reset will find this context during clean up.
> +	 * with suspend, so we undo everything if the H2G fails in deregister_context
> +	 * and if the context was scheduled to be destroyed so that GuC reset will
> +	 * find this context during clean up.

Just adding "and if the context was scheduled to be destroyed" to the 
comment is not very clear, because looking at this function it is hard 
to consider that the state might change due to the reset code kicking 
in. This needs to be expanded a bit to explain the race.

Daniele

>   	 */
>   	ret = deregister_context(ce, ce->guc_id.id);
>   	if (ret) {
> +		bool pending_destroyed;
>   		spin_lock_irqsave(&ce->guc_state.lock, flags);
> -		set_context_registered(ce);
> -		clr_context_destroyed(ce);
> +		pending_destroyed = context_destroyed(ce);
> +		if (pending_destroyed) {
> +			set_context_registered(ce);
> +			clr_context_destroyed(ce);
> +		}
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
>   		/*
>   		 * As gt-pm is awake at function entry, intel_wakeref_put_async merely decrements
>   		 * the wakeref immediately but per function spec usage call this after unlock.
>   		 */
> -		intel_wakeref_put_async(&gt->wakeref);
> +		if (pending_destroyed)
> +			intel_wakeref_put_async(&gt->wakeref);
>   	}
>   
>   	return ret;

