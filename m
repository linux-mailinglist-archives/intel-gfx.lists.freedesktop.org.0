Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D89F9CDA6C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 09:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2AB10E12F;
	Fri, 15 Nov 2024 08:25:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jP/cdG+f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0FC10E117;
 Fri, 15 Nov 2024 08:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731659132; x=1763195132;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U/WzXHksq2hutt1FZSqCJ7XWpijdMsPdpHaftFqxxH4=;
 b=jP/cdG+fUb+w/BxAaOrMCUKIkuVcXNjJWEfdi4dAQ3lEE0FvWSd17gVZ
 dH/wuZ0jXQ1Zr1PJimx1H2NGA4Lt8iQ4DUd56pMAhYpRg91kQqgafYsFX
 my2KMH18TKw01R4gifvzwcdJ3/OVXGvAF9GdMKcmxx86yOkVA6yCA6dCy
 AL/t4i/IeW92ec9qrD5jCzWCKs7LgYbO3uNZcS1i4PRzQlFaQzieCPGxw
 axpJVPLXyMPkW/SiBLwIoYa+k1DcS9yth1b++BNXIBP8rbd2295FgkiiG
 FwL1O/2lMeShBJ32I6wjITaLICJz6mgpSrGzy9+3HljwK0mB6gPG/9oFL w==;
X-CSE-ConnectionGUID: /LdBFc9vRluCgx0ht4vJQg==
X-CSE-MsgGUID: pQQResyGRoeXX0iinhIUUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="19267127"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="19267127"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 00:25:31 -0800
X-CSE-ConnectionGUID: D0IRcDkNT1yavMk+LxvW0A==
X-CSE-MsgGUID: pODnqwXTTEG1DKDN3+lw5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="119425530"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 00:25:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 00:25:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 00:25:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 00:25:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rWn5Cdl0EAbc0F4/OmXgItE6klO1kmOVPo9cSXXe6ioJT9iCGIUD5NPBn6nE7PjhLcORfryTJgbXZySB5EphVtf+C8As4frecV10SmvtXZNAEfLdUQyc+WVcwsqLplvGHwEfAEH+W7dx8dnH7qQXnVToTgYKDRqbH1WX7wKSt6GJL8WBUcuT0bbMiCj1hDjYmol1Uklz0OB/EERMTBwKjpkU1APoAu8V/WcA/W6wF+hhwo5Scq1oWi9Lby3FdNlGCgcQK4k3QRbB3sgVgN8m+oVAP0a2CZP+8+aRldY4VJjXTuOz1HS6upSGtCAMlGQaveaPpBll9oHjMsqm/O6x0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tz8Tqih03mBF6uupHIJUW+MkGOOCO1NFTPzrEndORbA=;
 b=MGKqEcfoSCE3dDHf0+J9KKfShCwJoqKpJG8mjEuKlSbdeiUNnFEnS0ZXbqET87u8jS5eKXiX7Gs+dfV0MOlvIbh497CFzCT50bVRsbeYBy/g+nHuYmy1SkRLru9faxawqE73h92OPte4nPH+b+vnTRK6DUHaF8rGdu3Dsh0MUVGIeqF7y3khSXWRh5epRzB8+OJxXr+dBmJOGoOhM3YjqOCKwHYKyifxJYXJkG0XIkGpGaKac/TuJw48cxjNMySkH7LU0/NNsWJ/SAoy0hoots6LbWYWftAZtXrAzIZ4ZBOUsAG2oKWrTe1Pkd6f0KGz//3pXLPpnNJViw5ze7yzOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6483.namprd11.prod.outlook.com (2603:10b6:208:3be::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 08:25:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.013; Fri, 15 Nov 2024
 08:25:26 +0000
Message-ID: <b233f3b7-a8d7-459a-b248-391146dfcb13@intel.com>
Date: Fri, 15 Nov 2024 13:55:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] drm/i915/dp: Refactor pipe_bpp limits with dsc
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@linux.intel.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-6-ankit.k.nautiyal@intel.com>
 <ZxEA9KDEWys913p5@ideak-desk.fi.intel.com>
 <712c03fe-90c9-4a76-a3bf-c4402f8ea6fb@intel.com>
Content-Language: en-US
In-Reply-To: <712c03fe-90c9-4a76-a3bf-c4402f8ea6fb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PEPF0000017B.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::46) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6483:EE_
X-MS-Office365-Filtering-Correlation-Id: 70a5f43f-5d2b-4c23-e966-08dd054f0e65
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWNzQVZkaUpDZlBxcEJEeFBFSVlXZVUyTC9qRmZpTFUvY0pPLzM5S1JRN24v?=
 =?utf-8?B?YjZ6aG54S3hwcm13RlV2bkU3MXlOenZQN0Fmc0R1bllNZHdVSk80SWk5Qitk?=
 =?utf-8?B?QTB1K2dGait1TWRiOWpqTC9ZSjh2MGRzb0tGOFFCNHh0QzQvOVlCVStOTmls?=
 =?utf-8?B?OHB2WDFOdVo0SmxueWpyc2tsQjIvUFROMml5SlJzRVJpWFNVUXgwMmZBKzlO?=
 =?utf-8?B?eS9rWTREUkNqSjFtaTRhYTNZNjMxNnd6Z05DM1c1NGRxUW1SOG5Hcm5GWHg5?=
 =?utf-8?B?S1djdTFHMjVzcUxicTNjQi9iUU5SUFdEakxpWStQT3o5aGpYRW5tZHdGNHF5?=
 =?utf-8?B?cUtTYWo0MjVqU3p0dXhTTTFmOUxlY21NU0VwamE5dWZGZFZmbFkyMmxROHRn?=
 =?utf-8?B?UzJESEI4THVZRnhtNG9wc2l1Sm8yd2U0Um01ZmNUUkx4cldENDJHRlJGejRI?=
 =?utf-8?B?KzNjQSsvZ0c1aGZWaVRvdXZrcEd0Z3grTERwVmFPa0dLd3RMbll6RnBlYUUw?=
 =?utf-8?B?eDNlTWsyVVgvbjVYYzNsb0RZYnUwL2Yza2RONkljSm5lUDluS29XSG5ydWZV?=
 =?utf-8?B?enU3SUx3Y1JwVnd2VDVUWEQzdDdycEcvSlFHZEt5WGFKaGYyN3RRcWNtd0FQ?=
 =?utf-8?B?TkxFd2VoUGNaQmw5TjZ5d29ram5pd2lhS2tjaTB6anBXaUZ1cXgwMW1IWGhI?=
 =?utf-8?B?ajliUXNjVWZCekYxTE1HWWg4Y2Q5SFVmVHdTNklDZk0wekRmTzdkY3hMRk1O?=
 =?utf-8?B?MDhacDlSWFFRRlp0eWNOK2lUTG9vcHdmYXZvYVl2RUl0QzNCeSt5Zlo4WWxR?=
 =?utf-8?B?Vkk5WkdYaEFLQlZpQjBNK1RhTDFVSHJZMkVKNzJkRFRQNFpCWEhUN3hlblBZ?=
 =?utf-8?B?SnUrUUF4bmVKbFhnam9Cdjl0Z1kwQ0xybHZUZFFka0NTRUtIa2tUWVBlVlNT?=
 =?utf-8?B?bDhCQlR5Z2Z5UUJCWWtvMlB0NXVCcHRMMUpmRFludTI5UlBJU2k2S2prRnJT?=
 =?utf-8?B?MDc3YURIY1p6SVJMQXJidlczbUk5SjhOWVBNdjBucFRnQUVxdGQzdXZwdVVR?=
 =?utf-8?B?cGNhQTBubnBaRUtScHZsTlU2c21SSFhTcUdXWXZSSjhhY2NSNmY4cGJPOGxR?=
 =?utf-8?B?OWZzMmdaSVpPaFYrdWUwbDRwM3lQZEwrRlpyMlkzSlJHUDlGVlBjdTRkV0ll?=
 =?utf-8?B?TXJhZ0ViWDBWdzVjc0hsZWVrU092enVHYXllRHgrb0k0YXZMV0M3WXA4NDU1?=
 =?utf-8?B?OWxsRkFYTjc3cU5ZcWZWV2ZtMERlOWlqdEhSVVI4alM0Nldtb2lwcEdpdkVw?=
 =?utf-8?B?SWxpMVZTYnRyaWpOY3pSKzA5blRuNjhRZFJhbkhEc0d6dVhPR01tTU10dVFV?=
 =?utf-8?B?SmhGOXUxSGx3T2M5cjRkZnJmMnVKWUpqbFlwSnNOa25ER2trbThtbUF2MFNN?=
 =?utf-8?B?S1czZ3N6MS9DT2I0K1ErZ0tDaVVGTEd2Z004dCtrQ2ErczlsYkRlWlF5VWRW?=
 =?utf-8?B?d1pzME9EbFlreVpFT2loclU3eW5mRlZlejMvRi9wZ0h3SlV6SFoyUWQvclND?=
 =?utf-8?B?SklmU25PbVRuNlVwcVh6ZjM5NWQyUXIzYXUxelhjYUpSYkkvQjUwc0tsb3JF?=
 =?utf-8?B?VFFNdGVlYVRUUExBSng4clN0UUk1aVp6eWcvV2M1bXcva3VMVzEwWFI1M0xX?=
 =?utf-8?Q?U4JMrbs/AAiBbM0hhwWl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YjdzY0Zobk9HcThZSWl5ZGdjVzZUR2toRFdWMXBBVGU0S083N0JvZkJGWjdW?=
 =?utf-8?B?QVJSZi9Sd21uemVCRE9pbXVrSk9iNU9LQWFmNDU3eC9TYjVyK0VybXhuOS94?=
 =?utf-8?B?R1NrVklORFlkWHhjU3R1RFh3d05iYVpDRS96YitUMTVRVFMzSkJXdndscUJN?=
 =?utf-8?B?YjM0L1VPcUsrSncrRWhjM0lMUjFQTks4S1JhOHFEVEoyODI1T2JSM1BxdnFM?=
 =?utf-8?B?K0d0Vnc5Qng5UVBtdWNNZ2xTYTVPSjBHNHJ6SnJOTDJDUmQybXVkaUQ1aXFy?=
 =?utf-8?B?Sm85WHJ4UHlJLzUvT2ZaVURqelc0UUZDSlhNZVc3SXVobmdEbDdGMDYvci9J?=
 =?utf-8?B?aGVkaG5vdFVXbi9ZNEdHTEJDZDdaOFRKSStxWlVQZU56Z1JSanJwQU84TGlv?=
 =?utf-8?B?Yi8yV3RQTlpPTDgwVFVDYjR2TzZmNjFBeFc4VEw0dFlJRzFabVViM0R4Z1la?=
 =?utf-8?B?YlJrbktkWlRNM1hjc1B5K0hlcFovMUMwL2Q2eG1YbVZYalpiMzZqekRwNlNF?=
 =?utf-8?B?aXlhUXNmT2hzY3NoTG9Udmg4enZDK0NrSWxvODZpc0pBLzhhRGFFenpkVk1Q?=
 =?utf-8?B?UVVKN1dlNFVkd2hua0dsaDVMZkg0bExJb2lnV3NJY3E5OTNGcWUxUFRuTTBa?=
 =?utf-8?B?aVpKNllBUnZXeXIvNU5tbVZ0M0R1M29LNGFySHB3SEcrL0paaXlkeHArSFdv?=
 =?utf-8?B?cVc0NjZuK0ZxdWZ0VkZ3a1lyTzBKaU8rTjR2U3Zad2ZhbHJZb1REbEhQWFBs?=
 =?utf-8?B?OW5VRC9kTitwbTcvTjllQTBrclkwYjRYVmhtMlJJNW9RUmJtT0R0ZDF4OXhB?=
 =?utf-8?B?alRZUmVoeGRWWm1NUzdoK3hWU2pDMFlhNnBpT0VSZ3J5QkVjRWR0U2JoNExW?=
 =?utf-8?B?K05VMy9iVnF4K0NvMFMxTGp6WGFISDRVbjJuays4NVBUSS9YallyY296cHFl?=
 =?utf-8?B?SXBBcDAzeUJHdVFXaWkxc2l4aVIwWDJ4c3ZoQmNEc3hwSzNKWTJBN01FRnFl?=
 =?utf-8?B?V0oyUDVoYkdwTGs4R1F0TndVdDdCNitFdU1qQ3phOVhqYlQwNWNWRDdsUHM2?=
 =?utf-8?B?QmVhYTQyMHBLajRvRWo2bEpSUW5wNnQ1NEhwZGZ5OXZlb1FlVFRpeit1TS9D?=
 =?utf-8?B?eE1FRUlYRTVBNUp6TFBlbW5FcFp4aE9vOElodmNITlM1dS9kSDN2WFFJdEtj?=
 =?utf-8?B?aEhmcHpIQWpSUjcvQ1hXT1lFZDlyN2M5dlJaVk55VDA4ZGdhYnFhVzY4czBn?=
 =?utf-8?B?Q1RWeXZ4Yjcwd01HREJFVXhvR29BYzBILzV6T0tEOG01Z2MvM3RDdFRuUkhn?=
 =?utf-8?B?VGcvMVpic1hFMlR3VnJOTHJadmUwQmJzeWpHWFJQT2NjbEtDM3BZU0JpK3E5?=
 =?utf-8?B?TStxZjFuUWVNODVVTVhHNnJpSWdKczQvRzVpcEUrNUdDcnNCd0IyY0NFenNn?=
 =?utf-8?B?Z3FtTnNuTmZSQlM3bDczNHA1M0RNMmp2TlZYMEp6NjR2ZTd5ZUhiU3FqMTV1?=
 =?utf-8?B?TnRQSzhQc25IWFFYQUxGaklYQTAyQUhwVDdjNlh0UzYwMko0dm1nNlM5cVpR?=
 =?utf-8?B?WjNNM2tmNVZTajBxeXVDLy9mdVJBYzJRZTRUa2N3UW04cndxWnhyYjVhZVRu?=
 =?utf-8?B?ZzhKZHBkM1F6V2Y2bmUwM2IyUnRuUHViUFlid3Q3Z0tvZmlMaURaWUhPVmZD?=
 =?utf-8?B?RDJxTmNsdFdYdkR6Q2krYlpVSytNdmZJOXpFSGpkbS9hcnR0MHphdzgvRTBY?=
 =?utf-8?B?THNzQ0dET21PNmRwOHIreUlUMkdlOXREZEIyV1EwSnJBZHFSSDZVZzZBVFNR?=
 =?utf-8?B?WFgvOGpuSUxlZ2FUdHplMzY1ZkJ3ckRDWE1yRzFRcnJNTU5yVmtPQytVRnVm?=
 =?utf-8?B?c0xBaWtDekFiVkNZb3VhV2o0dlZ3UVhkV04rNk9zQ0cwSFhVNmFnbU96RGlI?=
 =?utf-8?B?Z3FxQnozTktrVHQzbE9mUGZRVDJVc1N5eUhWVDlZR0NBN1lNaGhFdG9CMnVS?=
 =?utf-8?B?Z0l2VmdxM0xzM2RCVUZVbi9FeUxYSUJwWERWZDJrRGNBSUxqRUpPei9GSk8x?=
 =?utf-8?B?eFpQNGU3U21wUnVyWmtoSDN0ZkthNlJYWTdibnU3UTQvT0pCdVEwdnMxcTha?=
 =?utf-8?B?UTdSSk9qS1EyeElWemRJc1hFUm40cTJwQzMvZjlqVUxwQis1T0NyMnEzQlFj?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70a5f43f-5d2b-4c23-e966-08dd054f0e65
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 08:25:26.1941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dLs4ctnmAKmxX1LgAuT2hd/DMTZiRsXOQwat/M3ZFVxBek0tr8e/CQO9REPe1UPYIKn4DEiYuxAzZ2Be2sGEOT/d9hpAQ0uSAbyY9TA5v6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6483
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


On 11/15/2024 1:43 PM, Nautiyal, Ankit K wrote:
>
> On 10/17/2024 5:50 PM, Imre Deak wrote:
>> On Thu, Oct 03, 2024 at 04:13:41PM +0530, Ankit Nautiyal wrote:
>>> With DSC there are additional limits for pipe_bpp. Currently these are
>>> scattered in different places.
>>> Instead set the limits->pipe.max/min_bpp in one place and use them
>>> wherever required.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 43 
>>> ++++++++++---------------
>>>   1 file changed, 17 insertions(+), 26 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 46f3b680afe9..55ee438a4fec 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -2166,21 +2166,11 @@ int intel_dp_dsc_min_src_input_bpc(struct 
>>> intel_display *display)
>>>   }
>>>     static
>>> -bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
>>> -                struct link_config_limits *limits,
>>> +bool is_dsc_pipe_bpp_sufficient(struct link_config_limits *limits,
>>>                   int pipe_bpp)
>>>   {
>>> -    struct intel_display *display = to_intel_display(&i915->drm);
>>> -    int dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
>>> -
>>> -    dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>>> -    dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
>>> -
>>> -    dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>>> -    dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>>> -
>>> -    return pipe_bpp >= dsc_min_pipe_bpp &&
>>> -           pipe_bpp <= dsc_max_pipe_bpp;
>>> +    return pipe_bpp >= limits->pipe.min_bpp &&
>>> +           pipe_bpp <= limits->pipe.max_bpp;
>>>   }
>>>     static
>>> @@ -2195,7 +2185,7 @@ int intel_dp_force_dsc_pipe_bpp(struct 
>>> intel_dp *intel_dp,
>>>         forced_bpp = intel_dp->force_dsc_bpc * 3;
>>>   -    if (is_dsc_pipe_bpp_sufficient(i915, limits, forced_bpp)) {
>>> +    if (is_dsc_pipe_bpp_sufficient(limits, forced_bpp)) {
>>>           drm_dbg_kms(&i915->drm, "Input DSC BPC forced to %d\n", 
>>> intel_dp->force_dsc_bpc);
>>>           return forced_bpp;
>>>       }
>>> @@ -2212,11 +2202,10 @@ static int 
>>> intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>>                        struct link_config_limits *limits,
>>>                        int timeslots)
>>>   {
>>> -    struct intel_display *display = to_intel_display(intel_dp);
>>>       const struct intel_connector *connector =
>>>           to_intel_connector(conn_state->connector);
>>> -    int dsc_max_bpc, dsc_max_bpp;
>>> -    int dsc_min_bpc, dsc_min_bpp;
>>> +    int dsc_max_bpp;
>>> +    int dsc_min_bpp;
>>>       u8 dsc_bpc[3] = {};
>>>       int forced_bpp, pipe_bpp;
>>>       int num_bpc, i, ret;
>>> @@ -2232,14 +2221,8 @@ static int 
>>> intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>>           }
>>>       }
>>>   -    dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>>> -    if (!dsc_max_bpc)
>>> -        return -EINVAL;
>>> -
>>> -    dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
>>> -
>>> -    dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
>>> -    dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
>>> +    dsc_max_bpp = limits->pipe.max_bpp;
>>> +    dsc_min_bpp = limits->pipe.min_bpp;
>>>         /*
>>>        * Get the maximum DSC bpc that will be supported by any valid
>>> @@ -2284,7 +2267,7 @@ static int 
>>> intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>>>             /* For eDP use max bpp that can be supported with DSC. */
>>>           pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, max_bpc);
>>> -        if (!is_dsc_pipe_bpp_sufficient(i915, limits, pipe_bpp)) {
>>> +        if (!is_dsc_pipe_bpp_sufficient(limits, pipe_bpp)) {
>>>               drm_dbg_kms(&i915->drm,
>>>                       "Computed BPC is not in DSC BPC limits\n");
>>>               return -EINVAL;
>>> @@ -2502,6 +2485,14 @@ intel_dp_compute_config_limits(struct 
>>> intel_dp *intel_dp,
>>>       limits->pipe.min_bpp = 
>>> intel_dp_min_bpp(crtc_state->output_format);
>>>       limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
>>>                                respect_downstream_limits);
>>> +    if (dsc) {
>>> +        struct intel_display *display = to_intel_display(intel_dp);
>>> +        int dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(display);
>>> +        int dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
>>> +
>>> +        limits->pipe.max_bpp = min(limits->pipe.max_bpp, 
>>> dsc_max_bpc * 3);
>>> +        limits->pipe.min_bpp = max(limits->pipe.min_bpp, 
>>> dsc_min_bpc * 3);
>>> +    }
>> Then intel_dp_mst_compute_config_limits() would also need to do the
>> same.
>
> The function mst_stream_compute_config_limits() is calling this 
> function, so that should be covered.

Scratch that. You are right, I got confused with other function.

This is needed in mst as well, I will add the change in next version.

Thanks for pointing this out.

Regards,

Ankit

>
> Regards,
>
> Ankit
>
>
>>
>>>         if (intel_dp->use_max_params) {
>>>           /*
>>> -- 
>>> 2.45.2
>>>
