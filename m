Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E6DAAD655
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 08:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659A510E74D;
	Wed,  7 May 2025 06:41:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kxiAJ7yp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C572510E74E;
 Wed,  7 May 2025 06:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746600087; x=1778136087;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qZtuYh82saAvrLkGUdx2mOz521wGQQkVNb2GpBDikH0=;
 b=kxiAJ7yp6XqquTb3wM0vF42mLaHRw6/PSCxCtrY09GhY4ngDm3wK6Mx7
 /wcNIxKDHWSsibpeps/SdRdJL1KLc05wBC85sGat9D47MWdln4C3eYvMY
 bdUm6cwbJBQtPdUXMk7shv3TP952KeSe4d2sOHZKQh7u/S8kTil/DmKGr
 EbRfemtpRbwko2jajmp7s1HD3K3mWnGYqinEZyP4vmRmyT3D4rV0b7YSp
 w/WtYMZbLXtG3UH4LGlRe+gz3t+q/ZmLawZF8k0k0n09XaJXg02Zs9NxA
 RIyYw1ewV1xUr6pe4FluAsHo6l6xjd3olN/mf2c0HagCQWafqvkg/x8tS w==;
X-CSE-ConnectionGUID: XWfWfAO5SdyOf6Bqakic/A==
X-CSE-MsgGUID: 0QRgjOCKTG6pu7obVvKDjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="58967635"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="58967635"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 23:41:13 -0700
X-CSE-ConnectionGUID: UxGnrzZZTN2s66W+UBDfrA==
X-CSE-MsgGUID: a4IGR64bRcS55SJ3jI+gnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136260253"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 23:41:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 23:41:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 23:41:01 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 23:41:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=roHwuYq91g7ap5t7u8a4Ce383k2xPZD9HZ9MIisYM1EI5GVNFRF8BPbnJc769wk9FQY2LzAcBhKBMHYyTp2aeudSGOMmgX3RSfpLhHm6FpB5afI4ZvVUd3vPACWBEWV+zHU2QyK/Go9WxU0cuLpB6JPhS7o2d4x+kOJP2OmIinmaxEUv/iPjEOLifmEbgfvQ+oZ6zzB3bXxbHoOIHYIaXDZPBTL2CV3frkvB8h5KWcGTVRd80nzskzjxjRJHfr2ECSH/dg1e/ZyNXETGvAXsOO2BsiepBbYgVvKuCnPZINGqIMbUYU9uQ+fk7T1VXSCeNvWF1cT+i7BJZzYepL58sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCIT5IbUl278oPV9NHbNvepXyejRygS3OalEQCdija0=;
 b=xdeDWMFVBZo4PG7gO1r80DJn/0Zi1jdQz7xhoswctHoNCi/JYHWXGjh82Gr01j9achnPxQ1eJPDWPSJ5B1O/TbqMp7pCxjirxcBQQPQEJHV/YV8LLhv8qy7ZNBVbrwIsHix6fN3BAU7CI4RcO9R5JYj2aqyZSStHY0+WbJosM8rXWuS7GgXIAmfMwOQjYdNz8siQAPdxDfLu6JjZAB6M85JVh+5VTcScKsQVyUFBn0aNxCGQl3dCU6n8XAW21EAGu2aJNJ0tMDqVg0xsc5PeYOs4EQpTpzKg6o82Aioo7sYLwx8bK85IQDV1Xx7y5U6vAZ2mFqZlhwfa6XkAaKOTOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6148.namprd11.prod.outlook.com (2603:10b6:208:3ec::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Wed, 7 May
 2025 06:40:38 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 06:40:38 +0000
Message-ID: <83b445a7-5cc9-4964-be0d-540ba6aeb376@intel.com>
Date: Wed, 7 May 2025 12:10:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/17] drm/i915/display: Add pipe dmc registers and
 bits for DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250506145517.4129419-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0008.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6148:EE_
X-MS-Office365-Filtering-Correlation-Id: ad86b8e9-2b12-4f24-c770-08dd8d32142b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TkJkL0F0Q1l6OHlHMzdzZGI0K2p6VnV1RXlLdXdLY1k3b0NGOXJ5MlU5S2wx?=
 =?utf-8?B?eXhMUHArRnY4OXpxblBNRkV2K2w0aXlWRXZQcjV6d3NwUnh4QWE2OENDZFBR?=
 =?utf-8?B?NndEeDBRUGlFM2F4dnZNeU9maGo3ZjdnM01TNk85T0NWaHUzZEp3dzRvQUM3?=
 =?utf-8?B?dFRSNmtFbUV3aGZJa25TV1R2blZQMUVFdnZSSXR0NWEzTVQzeFY3eXp6dE84?=
 =?utf-8?B?cHlIMjRmck1ObXkxbDVIZXovb2RsZzR4a3pDVC9IU0xza2NmVzFhdysweURn?=
 =?utf-8?B?NDBHKzArUVVHNVNZZGdMeDN3MndrUWpDSHNRekEwMXRzQmZ1TEJOU3FreExs?=
 =?utf-8?B?YkhOcWpzZTM1TGxHdkp1Skd5MGg2Z3ZidHRVUnNXWUMyQThJZGk5NWJaY3B6?=
 =?utf-8?B?Y2IyMW1XTG0rVU83SzY4WERURHRoQmVYaHM3MHNGSURDeVg3NmJNbGpBVHJK?=
 =?utf-8?B?RVZJQ2ZjanFnRS82QU83c094WVV0WWFMYlB4OUxVVy95bUF5UnV2VlZFOE4z?=
 =?utf-8?B?Mzg5TjRkYkQ3SVFucDF3emE4U3ZhK1RPNkxsN0ZPaGIxVkNjSkJzMW81V2ZM?=
 =?utf-8?B?ZWpNNmdNWnFNOFczcW05ZnR3ZUczRkM2aXJXNDMvUG1wNERsdStGcVNNQUZD?=
 =?utf-8?B?azAzV2dBd2JWc3k3MkoyUE9ITDdGbmg1b1B1Wno3cUlrRDhZaXB3THNSZW1z?=
 =?utf-8?B?RGwyb2ZVck12S2x0TVowOW5UcG5iT0oyMXNUeHZHZTR3Nmk1aEthUkJxOXRt?=
 =?utf-8?B?Nyt2dVJ4N2diUTQrZzlLNWZDNWxqNjhzTzdaYUVyclZTUlNBNVNnOFlLUTJx?=
 =?utf-8?B?eUoybk5FOEtTQmpHQXlIMzFva1l1QjhnNkZTR2xYOTYva3VBWUZPTWIyeVB0?=
 =?utf-8?B?cVpkdDJwQ3EyQ3hIdFFSeHhOSmljcTBCMVZXREEybldsSnJOZUpmZkZhYlNT?=
 =?utf-8?B?Ky9KQ1NOVHZ4TnFlWWswUGhTMFc4b1ZHQWtiakpEZ2ljTnNpM29nNEdUeW5S?=
 =?utf-8?B?MnlIUEZMNUplQzl3d3p1MGNTa3VtZXF6OENFNkRuTWdxNE00d1lGbGM2bHA4?=
 =?utf-8?B?cHYwcTNNb0dvNGRTelJDVHM1cEZUN2o3SjM2S1RtdEtEeVkzNGwvd2V5UkxV?=
 =?utf-8?B?ZnlPcm5nN0pRbmxoaXlZQWd5bi85MURXYklvcDRETWc5VWpRd2hPRzFDWStu?=
 =?utf-8?B?WGdjSmI3UzU2ZWprM2dTZzUzKzc3d2pOYmdIVXB6TjRzaDJJOVVhcGhacEdV?=
 =?utf-8?B?QlNkaTFxNHhERy9MbFVXOEdvR2JPeWdpbGI3M0JhaWdxaEh6eGwxNlpRS1No?=
 =?utf-8?B?V0Y4NDNuZHJVRWNYZnViblJsWitzVFVpMlhDaFozb3BZSFRKMEVDTXdvMElB?=
 =?utf-8?B?MTMyWXNrOUdibjVObjVGRnhCVkJFVnFmSjFFS05mR3NkbVA2V0thdVBPLzg3?=
 =?utf-8?B?NUpFcWZnenRkaFVBNE9HU3VpOWJLTjM5VnA3WnRTczBneTBMMWNnc2RKNkxl?=
 =?utf-8?B?cGxMaWYvZk5lMUQ3UkJZbWFCWjhlbjgvdGw3cnRoaHNmSWZsQm1SQlNwR3VF?=
 =?utf-8?B?ODdXZ3pWTEUrcUhNOHQ3aGJxV2pSeWh6OW1XeDBMZGJrVHFZU1JVRUFhdTR6?=
 =?utf-8?B?Sk0wQlROUTV5bGdlNFBCQm5lbmlUbUdqY1dHT2Qwc3huYW9YQVpkNlQ4Z2Ji?=
 =?utf-8?B?cFpxellXNHVSZTArRXQ4VHN0Und0UHpFc21DdlVQMWZFZmthdFR0eklwWk9t?=
 =?utf-8?B?WFhvRzhLRjVOMkk5U01kS3RLVkYwUTZUMDNDSzdENDdUK294TnU3RWlPWWg1?=
 =?utf-8?B?SEdTNXg1a0Z5SitWcE9VWlNQYkk1YzdoVVJMbFA1RThYeGtscDdydTdkNi9F?=
 =?utf-8?B?UVc0bHB2N1NVTVFySThtZXRnSGRZb1R6OW03ZzdTemZqd2t6M1FMZWxoRVE1?=
 =?utf-8?Q?yXHsxD4VOiI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWdMNGU0SncyWkVQdENiMHJjSTljNkg3QnlLK1JEUmJmODUydk0zbVVuRjVM?=
 =?utf-8?B?K1BqeXpmQ3VFSitoNFMzU0Exd0l5VWVDbHdzNWpIRkdheUxlMGlSdUk2Y1NW?=
 =?utf-8?B?VkdYdzI1MG90SFlCUGlBZkJjVmRNMjdNejljN1NYRkdEU2NBNmU5VUpKUWJX?=
 =?utf-8?B?bU1WUngzS3F4U2h6UzNYWW80Z1VET1NlMjNEeVdZUjlCVnNHM2ZGOXNtV1Nk?=
 =?utf-8?B?Z0lkVGpnUXpWcTI1eEJvclJLUWNCUnlPbi93L3pCSmJRY3U3UEhmdGdDOXEv?=
 =?utf-8?B?eHRiMjd4STk0dU50Z0daeDhUWWFzbllLaGdrV0FIL1lQeXhEU0JzWnpiQTVz?=
 =?utf-8?B?NkEveHcrYWxPR2E5SzYzTEtjQjJML3NnejErVWd4Z3U1ekU3bVo2RXlHbUtX?=
 =?utf-8?B?TGdjWGNES2RrOWFQNXZVbFBZbnhUdkN3ZVVCNzBnaUQ0NTdLaXozQWp4eld5?=
 =?utf-8?B?Tm10TVZaWTFNWXN4RWduaStHMklsam5zZmRoVm5NYWVOMUJxQk5NSzUzRW5J?=
 =?utf-8?B?VWNMaHZNZklwakJrcUY2d3FYeUR5bjNqZFg2cmo1MFYzRVczZnlBdE8vQVdw?=
 =?utf-8?B?bjMwY3ptcms2MnRtL3A4VGxhQXJ4bWJPWTcxblRRQy9qUFRSK2RMZW01cFJV?=
 =?utf-8?B?OEV1a0U4YWp3azM3djFzaE45c0V6Q1lsaDNGV2taQnEzVy9hWDdoc05QRmZk?=
 =?utf-8?B?MW5PQlFMcTZoaU9vc2RkVU5VS2gzbzRJaGRMaHNwdGZtSWtPZkNFaGpnQWRx?=
 =?utf-8?B?UDk0aE9ZVjFOWWdYQitDK2JtYmF0elJoWmZQcTdkOHBJN1ZhQ0I5ai9kZU1s?=
 =?utf-8?B?SjlrTDMzSjNjVTVLQitkL0pLSnBtdkw0LzBROFg0NG1rT2V5cWM5c2FQYm5v?=
 =?utf-8?B?ank3WEJabGtha3ZUZGRUNmIzM2Q5STJxMDNXOWJ6amhULytocXZoRTlpZDk4?=
 =?utf-8?B?a1E3L29KSnVJUDlBUnkyemZoOC9ra05sTmZZRUlWZHFYbVdDbXFaZjNKQnc4?=
 =?utf-8?B?T3hNZVoxZy9yS3JiWU0vR2NKMWFRLzdwYlUyY0FjeG9rbXdIMjFUd0RxUFNF?=
 =?utf-8?B?dFJTZ0hZVHBNSDl4T3VsMDdnU2V1SGZVWFQ3L29QNVQzTmJ3TlV1ajRkcDF1?=
 =?utf-8?B?VUUrOUdVTjFFYWNIQUhwS0haOGtYMmNha0h6TWtuK1V4Rm9jNEdRd1VoZXFv?=
 =?utf-8?B?V2w4SUIwV2YyQ2FVc1prZ1QzaXBqaVorZ2NGZWsyTzFnZUpzK2Z2ZTMyT3RV?=
 =?utf-8?B?SXoraWtpZFA2Zy9HT3VqVFdreFFXaFpldmpUdjZYZllDeVFqV2I5SEVXTkhP?=
 =?utf-8?B?TWRCODFjZ1pLS3ZaYlBSZllsR1J3a2xPOEV6TS9waSthZGcwZ251V0c2SW1D?=
 =?utf-8?B?MWQwa0xmQ0VzQzlGNmtKRXdDVnl5V2h3QStORFVKNE55ZmJLZ1ltZkxUa0cw?=
 =?utf-8?B?TjhyMFJTbVgyYUl2emVjNFR0VEpUSWZZN2o5U1phRzJWeGEzVUpyWmRkcSti?=
 =?utf-8?B?V0RDaUZLY0hGTFpyS3l6b1YrejFQaTU0TlB1M3lzSzN2Z3pDeU0rUHl1YUxy?=
 =?utf-8?B?MHhBeUVESmk1Y2xrMFlnd3VMOURzMEpiRHFQeWFEeUNaU1dzRndvaSthSngv?=
 =?utf-8?B?VzJFS1dpOUk4MVI2T1V0b0tLM1Q5eUliKzREUmgrYTlycGg3dmlFUm9MRW9W?=
 =?utf-8?B?ZXdsTVRlQnVMLzArZ2VqUi9UaFVsTVdxVC9FWjFla3NDOG04UUpBQTBkazc3?=
 =?utf-8?B?ZmxPM2JJYkZUMlEzV0IreTdpUmNaU2Vhcmx4NUNBUXBnTE5uaFR6bVlYZm02?=
 =?utf-8?B?SXRRQXA5YW5nWWttREpQd3hUSDJPTW9qVXFRUVk1L1czWGJ2S2wzdmFUL3pV?=
 =?utf-8?B?WWtJc1NDeFp5Y1ZQeVNIekNEVVpEOW9vUW9QcEZzNHhVMVNSd2QyeDhKVmEw?=
 =?utf-8?B?VEkxQmJnUVFPa0JUejFCMmd3Yk90bStYTHZWWHloTXhXbCtJNXVYeXhKWmpW?=
 =?utf-8?B?M1ZOQ2FXVnZKQkxha3dMRXpFdkR1M0RGNzFIY3N4K2lYQWJwWk1nTHBobWJN?=
 =?utf-8?B?Mm93eDZ4T3BnTTVmZEZoK1htaVJmQnhnZVY4OS9jWHYvS0E1MzZENzhvdElV?=
 =?utf-8?B?cEtHR3kzVUdkbFZ1QTJQRTg4QWRIc3NReVJYUmNQOVdxb2p2YllVaVBwbDg5?=
 =?utf-8?B?ekE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad86b8e9-2b12-4f24-c770-08dd8d32142b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 06:40:38.6884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JthsAgcW4r3cD7OlhKDAq5kRMNlTKUNl6Dq3jw1rNYtJ5Mok2uMmNY59AvQsRSogjhtCPQHNlOHo68T0HJuChm4J04uKevS/ytYLDKC+XgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6148
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


On 5/6/2025 8:25 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add pipe dmc registers and  access bits for DC Balance params
> configuration and enablement.
>
> --v2:
> - Separate register definitions for transcoder and
> pipe dmc. (Ankit)
> - Use MMIO pipe macros instead of transcoder ones. (Ankit)
> - Remove dev_priv use. (Jani, Nikula)
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 46 +++++++++++++++++++
>   1 file changed, 46 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index e16ea3f16ed8..7c4bffce4cf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -117,4 +117,50 @@
>   #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
>   #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5F1A0
> +#define _PIPEDMC_DCB_CTL_B			0x5F5A0

As per i915_reg.h documentation: Use lower case in hexadecimal values

Though it seems we are not following this very closely, but lets follow 
documentation for the new registers.

With above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
> +							   _PIPEDMC_DCB_CTL_B)
> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5F1BC
> +#define _PIPEDMC_DCB_VBLANK_B			0x5F5BC
> +#define PIPEDMC_DCB_VBLANK(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A,\
> +							   _PIPEDMC_DCB_VBLANK_B)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5F1B8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5F5B8
> +#define PIPEDMC_DCB_SLOPE(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A,\
> +							   _PIPEDMC_DCB_SLOPE_B)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5F1B4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5F5B4
> +#define PIPEDMC_DCB_GUARDBAND(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A,\
> +							   _PIPEDMC_DCB_GUARDBAND_B)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A		0x5F1AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_B		0x5F5AC
> +#define PIPEDMC_DCB_MAX_INCREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A,\
> +							   _PIPEDMC_DCB_MAX_INCREASE_B)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A		0x5F1B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B		0x5F5B0
> +#define PIPEDMC_DCB_MAX_DECREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A,\
> +							   _PIPEDMC_DCB_MAX_DECREASE_B)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5F1A4
> +#define _PIPEDMC_DCB_VMIN_B			0x5F5A4
> +#define PIPEDMC_DCB_VMIN(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A,\
> +							   _PIPEDMC_DCB_VMIN_B)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5F1A8
> +#define _PIPEDMC_DCB_VMAX_B			0x5F5A8
> +#define PIPEDMC_DCB_VMAX(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A,\
> +							   _PIPEDMC_DCB_VMAX_B)
> +
> +#define _PIPEDMC_DCB_DEBUG_A			0x5f1c0
> +#define _PIPEDMC_DCB_DEBUG_B			0x5f5c0
> +#define PIPEDMC_DCB_DEBUG(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_DCB_DEBUG_A,\
> +							   _PIPEDMC_DCB_DEBUG_B)
> +
>   #endif /* __INTEL_DMC_REGS_H__ */
