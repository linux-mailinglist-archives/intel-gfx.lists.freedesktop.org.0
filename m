Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159A29B23D9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 05:26:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90AD10E32A;
	Mon, 28 Oct 2024 04:26:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f1K7ld5N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E264110E328;
 Mon, 28 Oct 2024 04:26:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730089597; x=1761625597;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0iw1dmjSs1rZaupTyEqSVd2mkXC/GAqYfEqj2mUY64I=;
 b=f1K7ld5NlKN2rJsIp/sKfS7ub3mBx3fv3PkOU2BFhSG6Hly70JwxBadU
 MnKaL33Ah+ZI959hd0siOiKKRpfvY4sL5O8DiP135zELww72fSEL4b1ZD
 moUAYOl9FUuE7qzj/hvu9lsZLkj0HiOiT8c3Tuw23P7eWrPS9dmdIjMc9
 0h0Kf18eu68ElrFypLghjcLPbY5hO9iXxhZ061bBfB/GXlOaIM4IUrq4k
 YPcWane8Z/Jzw8suqpNCdpdq+4sytYTxgsbEAq2tzCUniqN7TlOi7K5qL
 SYoQqjHYAFVytoq7/y6gKLDxE2DHhZRrqu1MlIXFc5TitsUnDPDeQclO2 A==;
X-CSE-ConnectionGUID: fSz+ZrIYTZ2euNVaQ71CZw==
X-CSE-MsgGUID: gBrw+7reTKm4PlL2OBmz4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52231765"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52231765"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 21:26:36 -0700
X-CSE-ConnectionGUID: l0kXkQfJSv+JxTqYRq4ZuA==
X-CSE-MsgGUID: e2ALkJtZToa74/KN8lRuBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="118957389"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 21:26:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 21:26:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 21:26:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 21:26:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y4mze0cExtlPv/dDiotcFbeJ9fzdvwiAQHSwMFzDu+1+ApiOeaxfS11dBC0i9lRzkDp4jkXVzSpWx8ItD8C+r1Fwne7FHj0xF4qlUb/Zg6EY+bACYF+kZ63Tfx/xw2Xfi22c0Ybb7l9h5sEuwftTyb9nbTdhWoU8o1AGtJb77ki3tgmN/1/qwjxsBY4ZNqEIC8dAa1erPwEe7Wjws/17zpYKWF3+00yXnZ3QxsQDrvmb1apRi35RmskeG7ld18kxBc+wPmmqzb/d/TbXg9dmHDfQBifIbyGacvGk0sBZuV7829iembXI1sbJslWjwvxqna4w2o1r22sXXcBRiJUvCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IHFtwVdR4zaYPwJIgNv7E5zHjb3zTFKyWqlYGUo0vgc=;
 b=FYrWdLlYWTF6T4l3+ptslpAt69UXY2rSADO5LpqhP5WBvFqKlVaT7d0EzTiajspQiWF/e5BldsOW9eoqqk/aEJlBXh7wYfVkRL2OQSdL43oaV39uMtRdKLAIPmof21DCCu0BkSG+Thuv1Qq6oeRSu0x86M00kFcbQkZ1wOHHgNTBzxcK0349oH90mACm30Peapt3SfdQU/yk/CmKpbMyoLNozHqguS+QCY8rRUsc1xRK8An4yiKTbwsYrHszhbjoL76PI1pCbwv0kUhVCPPGeaPghtEXYWar3tQ9Tx/+8fGSvnlTiLseX656H7NGGQj5sm48vIYSv9QM0RwGgNF4sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Mon, 28 Oct
 2024 04:26:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 04:26:33 +0000
Message-ID: <7f4cc92b-29c2-445b-bc27-990b290189bf@intel.com>
Date: Mon, 28 Oct 2024 09:56:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/i915/display: Prepare for dsc 3 stream splitter
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>
References: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
 <20241027134557.862036-3-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20241027134557.862036-3-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0083.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d2660ba-9423-432f-a0b8-08dcf708b3a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjFZdW9Uc3F2Tnl2UU12dmxUczlrQUllTitabkJpUGNPNHg2VXA2SUpTaGpD?=
 =?utf-8?B?RG8va0VPemdYVktMRittdjJ5SHdabThPVEc3bWxtc3dhZm5keTErM3d0MEly?=
 =?utf-8?B?eWZaSE5TdCtFQXhBRU5leTcxdEozMTBvdEZzK2E4VjJoY3ZNYno3Y3dJbzNK?=
 =?utf-8?B?dGRUUFhPcGYrejAraHJEWVlpR1g3WnN4NW9lNVNIUytLak5ZM3BQeU9qRlB3?=
 =?utf-8?B?UFRudTkzMzk4NG5GR25XVnJtWWhQaFBwc1dySlphb0w5dTVyM3FsU0xkWENj?=
 =?utf-8?B?NnFWUkdDYVpNNEZZWThDU2FrNmZ6YjltV280WTBJZlFOTTRxSDI4ejd3c2ds?=
 =?utf-8?B?RVRlOWV0WWttc0xmQXZMQkliR1dhVHJJRkszWVFkdkpZeEM3bnlnVFJpNWRl?=
 =?utf-8?B?TWtSYUdoRUduRUpaRm5YTWg3K0tVOEpDV29NMTlzaHNGdkFlN1BsWGpQUVR2?=
 =?utf-8?B?RjJSa0RoT1pkVWhFZHJGRHZBRm5pSlNxSDNkc0FlR3IxQjQ3SzV0OTdDTlZ2?=
 =?utf-8?B?N1NDUUdxM21pWXA4UCt4Q0k5RmpucTlmaTFGYTJ0aHpNZ2xMK0Z0RUlGek1R?=
 =?utf-8?B?dmdUQ2pyK0pxbWNHT0xvdzZ1SllJYWkyZDJxV0JTMXcrbUxTaXdQK056bGJY?=
 =?utf-8?B?ckhNby9mRzFEYmpQRUdKbkprZHFXK01rN1BCY1JIMEhpRjNaZ0RqWDRGWVpZ?=
 =?utf-8?B?SVMwL0hBcWJ0VUxIdXhXSVovNk5xdFNrQkZuZFg1QmRWNDhEaTdYUG5neXZH?=
 =?utf-8?B?YUlFMVFsSWxvMEVDTUhIVzhkbXhTaUFGOUhFems0UzdNVlpER0RVV2RPMlZh?=
 =?utf-8?B?TytNbzVMU3ZmaExKNXh2b1RRVXlna29rN3dUOHlidXVWS21VdTNPVHRQTWlt?=
 =?utf-8?B?bE9TbStoRjFZREFUZEY3cC9hQ2d4dFE1ZVdDbUx3L04zZFJ0UWhzUjljeWtl?=
 =?utf-8?B?UEVUb3hZQ0FSNW5GbHdUbUc0elF2S3dxdXdySFI4UDFyNkhydmFGTDZnNktq?=
 =?utf-8?B?dFlOY2RiakE2RW9FSkh5NEtXSW1oMk14eHVvLzhGbGtXVVB3d2d0emhLWTNJ?=
 =?utf-8?B?WGZCeFBZSmRzRW1HMGh1R0RnbHp1ZExDOFRpdFlXcHZlaDdxSVpTcGJabkhs?=
 =?utf-8?B?dklMMFkvR0RCV2JYYnFRR0ZON2hIY3gzRGtENnJlamQwK2pGOXlQWDd2dFRt?=
 =?utf-8?B?SWZjTmUwbkRRMXdUOE1hazNhSjkwekFqOHNuaExoNGowdGlWQ2FtWEI0dy9M?=
 =?utf-8?B?TFNoTkRiUTg3a2U0Smg2ekV5THM5RWNYUWt2UDIvdlJKdHRIbEgzNTFEQ21m?=
 =?utf-8?B?Zkc4eUdiWllOdzAwY0NGTHlJYXpCOE9rNGp2VThNTUd2Sm5sZEhaM3htdXBw?=
 =?utf-8?B?eWRYOWVaem1rbHBuNzgrclRYdjVIK1ozL1liS0w4U3IyaHkrOXBrb0pSaDJG?=
 =?utf-8?B?dDVOd3lNdHFOR0Nmd3VlNXRNMlRJZUkyOWtXU1BtTm5oakYxTVJ1dnlSZDdt?=
 =?utf-8?B?T09wWFlFRHFSanA0QWcvYVd0djBCSE0rSE9PU0UrbmxKdUNLNVlDSThtSk0x?=
 =?utf-8?B?Mm5KWTNNSUpTWFA2SUZ4T0tmcWN1NHJ3UTZENjV1NUFqY1R4Q3JIS2ZrcGIy?=
 =?utf-8?B?Zm5xc1ZPYzduY1JrVmFuM1EzZ0lhZW5Kc3dkNnJuaHArdzBTdVA1TmVuckNZ?=
 =?utf-8?B?d0dHUEZ5d21MZDF4blgvWFhPaDZ1eTB4bzRVTE5wcU1DUGlaeHJlV1g5S0hx?=
 =?utf-8?Q?lpV8CeX35dBmAi8zNP0hoWNIs/jDX5r7veZVovk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkljQzhDWTJjVGF0VkVGQWxWRmhmNlJmbmwySENNbk1lMy9CT0RWaTRhK3d4?=
 =?utf-8?B?Y3djaEZNZXFsSE5lYzBKalFzb3VvMERlYXdIbnJVc2xKMjNWRDh1b04vWkRT?=
 =?utf-8?B?dHBTQVdLaWlFTHFmTXN6TU5zMWtmcXFpczRKeThRZHFZVzJKd0hWalhDOC91?=
 =?utf-8?B?VjAzNjR4ZCtPNG5GdlJhQk84QWhoVU5ZeVhGa3l4Y2JZSjFaK29ibnNKaTA0?=
 =?utf-8?B?TnNhMksyWGkzN1BBM1BIU3JOd20wam00Y0E3Q1c1LzBhQStja2lTcjNVR3Rv?=
 =?utf-8?B?a3RqcjYvMGxZVnZYUWNmTUs2dlZiaDVZeUo4YytMbGpHZ09McVFmMS9BRGxX?=
 =?utf-8?B?aWFXTEg3Tm50eGNncXpKN1RmVVlTKzYyRmZ0Rmx0dk9pcVcycEovZ3FBV3RI?=
 =?utf-8?B?c2krOGlGUlNGandhQm5lRGpoYkVCdUhQVkJycjhEbVFhck4xeGEyWWxZWWFK?=
 =?utf-8?B?TUtXOUNaT0VLS25wMkxhT0hLMzVzeEdDQjdSVWVUOERKVEc1eFY5M29naStj?=
 =?utf-8?B?VEtUR2FucThSMzN3bUVpajhQaW9HNHMxNWV3QTBmb3pOVW9qYjI3RXBNSnFP?=
 =?utf-8?B?ZFJsdWN2b1plaERaVDBHVjVrTTJZei9BazJtVmdVa3BVOTZ3UER5SlFmWjNs?=
 =?utf-8?B?RUhaSWY3UE10VnltK3FtbDFjVWkxUUNzRGZRbFdXN3pac0VSVGpjTENZSUJD?=
 =?utf-8?B?Y0dIRXFTcE5tYnVHcFhQNVpndUpaekgwRDUzakdSU0dzTHB5amxIbmxubkpZ?=
 =?utf-8?B?bDBLMmFRd1NXVGdPM3MwQjJFY2Z5TDh3SC96M0FSS1NHbGdMbDFBSmRxWkVR?=
 =?utf-8?B?NEYzcmMxUnRVditpVHpHTERBeGpNSVQ2NS93MkVzR1dpMGsrcFhJSnVRTW5O?=
 =?utf-8?B?MkJjQlBsRHcrbS9HVUdrQTh3R01JcVNtcEQ1OHdyalBRWWNFbkFTQWxFMTV5?=
 =?utf-8?B?TlREMDFIems3T0RQWjY2UkhOL3c4QzY3NkNHUGpNdi9OMkZ0bGtDcHdSZGVo?=
 =?utf-8?B?MUNMc0hER3BObmEvbGI4RlhjeVJ3NEJiTk90YUdBbzdIclZIajJGRzdiOGdX?=
 =?utf-8?B?K0puSjZqdEJYOWxJZklIaDltL1RjSXF4QkJ4ZTNmWFZNamEyei9scjJZT0VR?=
 =?utf-8?B?ckNUSDhXQjRha052N0VTUTFPYk10eUNNZlNUWXcxcWZZTldiVENjN0E3Q20y?=
 =?utf-8?B?eWtteGhjYnBrZmdYVFBsM1pySnFydHFIWVVjQmg3SWtXNDJvUW01eEVCOHRF?=
 =?utf-8?B?ZHA5Q1dpZjRiT054NllYejdoTkZTSGRtd1dHTFg1UjB6cTQ4WkNJK0JWd3h1?=
 =?utf-8?B?UEZWQWkxUytxNFNMNy9nYmIxNEdhbDZPYnBNUTZZUmNJbUF2VWM4alpzT0JT?=
 =?utf-8?B?eTVtNVQ5KzhVWDRDN05VQlVxKzZ4blYvOThnOGdGdXdhYjhWVm56QVZJT1d5?=
 =?utf-8?B?NUdsRUVDZkx5dlVQYzVDQ2I5dlBwaFJyQUxxOFFCOXU3NFNiL3lOTXVudGpz?=
 =?utf-8?B?LzRTNkNMbVFCcVAvdXRCWGUxcC93RnU0Y0Q0cW9Oc0MzQnJ4eDkwcThiRHVN?=
 =?utf-8?B?dFpjelI3RHhVSitySjNTYTNmcExkL1JhT0hMb2dxQi9rSTZnaXRad1F4NUtB?=
 =?utf-8?B?WktQZHNES3oxOFd3dEd3MmNRT0xCUklrSm9DV1NuNWFGcTBYY1IvcGdBZmtF?=
 =?utf-8?B?bHFUUXZDSG5WMHBKdFFqTjdnWmZzNUE5SmdZRDB2Unc1b2p6TjYrWTc4S0Yr?=
 =?utf-8?B?blpib2k5N0ppVTVuQXFJbndIUHZpR3RaVGtmRzNUZkRxMmttU1ROSUQrVysv?=
 =?utf-8?B?Wk8yMkdoSDF6MVhFYWdYV0lLL3NwZnRJYjVDM3JpRFYyOGRyU3BoSVg1aE1B?=
 =?utf-8?B?N21JdC9WRkVMdFA2Yk10NzF6cnRxbFVrN21VdG83ZWhONXBuZGpMVlc0bGVE?=
 =?utf-8?B?UG1HVERZcThzaGFERWlXYnpTODY3OTdRdUMwcCt1eDFJNWxUdXEwOXlBMWFC?=
 =?utf-8?B?RXV4Sm9BYitmVCtKU3NNM3BhSlRDOEJIL1pOYTZmUlR2TkRqWnNyMkRDdldu?=
 =?utf-8?B?N0Jsa1oyT3d3aHZUS3JPM2lOMnV1Tmo5a2NzanBKZEYyR3BrdURZdmphV2kz?=
 =?utf-8?B?TjZhMldkSXFJQ2I4T3E0YWIwS0NGZW42V0xnakd4R0xWVjBkc2FadXFPbmFZ?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d2660ba-9423-432f-a0b8-08dcf708b3a4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 04:26:32.9517 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2h8EiQLTvO94lkP15ffOQXerUGg3YWb2gZ7OEtPYPI47SjZ8dOmKS2z1QvxC2aq7aNx8gn3RDHr2S30I3BJzxy/OI7ZRPICJJD2ErNUWUtA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
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


On 10/27/2024 7:15 PM, Ankit Nautiyal wrote:
> At the moment dsc_split represents whether the dsc splitter is used
> or not. With 3 DSC engines, the splitter can split into two streams
> or three streams.
>
> Instead of representing the splitter's state, it is more effective to
> represent the number of DSC streams per pipe.
>
> Replace the `dsc.dsc_split` member with `dsc.num_streams` to indicate the
> number of DSC streams used per pipe. This change will implicitly
> convey the splitter's operation mode.
>
> v2: Avoid new enum for dsc split. (Suraj)
> v3:
> -Replace dsc_split with num_stream. (Suraj)
> -Avoid extra parentheses. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/icl_dsi.c           |  4 +++-
>   drivers/gpu/drm/i915/display/intel_display.c     |  2 +-
>   .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
>   drivers/gpu/drm/i915/display/intel_dp.c          |  4 +++-
>   drivers/gpu/drm/i915/display/intel_vdsc.c        | 16 +++++++++++-----
>   5 files changed, 19 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 115d79c80b9a..b01dfbeb314b 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1596,7 +1596,9 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>   
>   	/* FIXME: split only when necessary */
>   	if (crtc_state->dsc.slice_count > 1)
> -		crtc_state->dsc.dsc_split = true;
> +		crtc_state->dsc.num_streams = 2;
> +	else
> +		crtc_state->dsc.num_streams = 1;
>   
>   	/* FIXME: initialize from VBT */
>   	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..3dfff0a8c386 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>   
>   	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
> +	PIPE_CONF_CHECK_I(dsc.num_streams);
>   	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>   
>   	PIPE_CONF_CHECK_BOOL(splitter.enable);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2bb1fa64da2f..5611a4dd6a6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>   	/* Display Stream compression state */
>   	struct {
>   		bool compression_enable;
> -		bool dsc_split;
> +		int num_streams;
>   		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
>   		u16 compressed_bpp_x16;
>   		u8 slice_count;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index bd9f37e1a13f..dbb1d75c0576 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2410,7 +2410,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   	 * then we need to use 2 VDSC instances.
>   	 */
>   	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
> -		pipe_config->dsc.dsc_split = true;
> +		pipe_config->dsc.num_streams = 2;
> +	else
> +		pipe_config->dsc.num_streams = 1;
>   
>   	ret = intel_dp_dsc_compute_params(connector, pipe_config);
>   	if (ret < 0) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 40525f5c4c42..afc40d180dec 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -379,7 +379,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   
>   static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
>   {
> -	return crtc_state->dsc.dsc_split ? 2 : 1;
> +	return crtc_state->dsc.num_streams;
>   }
>   
>   int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
> @@ -976,8 +976,14 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	if (!crtc_state->dsc.compression_enable)
>   		goto out;
>   
> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
> -		(dss_ctl1 & JOINER_ENABLE);
> +	if (dss_ctl1 & JOINER_ENABLE) {
> +		if (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE)
> +			crtc_state->dsc.num_streams = 2;
> +		else
> +			crtc_state->dsc.num_streams = 1;
> +	} else {
> +		crtc_state->dsc.num_streams = 0;

I realized that this is a mistake, num_streams cannot be 0 when 
dsc.compression_enable is set.

Will correct this to num_streams = 1, and simplify the if-else block.

Regards,

Ankit


> +	}
>   
>   	intel_dsc_get_pps_config(crtc_state);
>   out:
> @@ -988,10 +994,10 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
>   				  const struct intel_crtc_state *crtc_state)
>   {
>   	drm_printf_indent(p, indent,
> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
>   			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
>   			  crtc_state->dsc.slice_count,
> -			  str_yes_no(crtc_state->dsc.dsc_split));
> +			  crtc_state->dsc.num_streams);
>   }
>   
>   void intel_vdsc_state_dump(struct drm_printer *p, int indent,
