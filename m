Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD266EEE17
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 08:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065CA10E8AB;
	Wed, 26 Apr 2023 06:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2433F10E8AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 06:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682489465; x=1714025465;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ROtZQNmcb6V2zXKfYMVPhqMa8GIIcWwy9duxOa/B1rk=;
 b=MBoSgEgzEcXnuXnEJZ2iLPcFxb/uXXEzB/C0IzOMsPxwDR9QiJhGMY04
 fqJbchVWoMOAmhSYv2lLyGRARgmSVsOAbqXyT5iyBj1oKva5DxVF9Cryv
 DijdMTtm5Ut0TR/gfFypLS4CUes11/PcoiUrYYGgJ1lGg8w7oxBIwUTkw
 CDMJRVkOM2/N9aIHlZ19+9wn1uz/Y/ykhvkrn1vzVy4cDtq3h4/LSnvrm
 p6nRKAJl23fk2uhjTpevP4TVxMaZ0yvmHK2m7EsLoLoTpV7qFRsCbP2gC
 3xauP+hY/NAQXPisdiYAcV997GBL68viBbrcmT2yt6ttRBjzkmALDEDxh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="345764279"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="345764279"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 23:11:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="724309451"
X-IronPort-AV: E=Sophos;i="5.99,227,1677571200"; d="scan'208";a="724309451"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 25 Apr 2023 23:11:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 23:11:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 23:11:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 23:11:03 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 23:11:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1CkSspHI6ZIOAC66385XBBf2kzjP/Q9PKjiTavHRgiKNBbu+CFAQRLTPXwJH+M+W0ARGAVeSyybIEzMa8cD/WpsrPB0BeAV9DROcYXMHT881sd14sP+cBWqFgMlaONyAkqKzM+GyD6ABlgC/bakoFsPeHfLwL2Won+Y5JLta1JpZdNzZbAAMM+NR2ef1uoy2y+dxene0+qB3rrzKUSwAaaThvvpsI/o60bfKP/N2If0jAvEUoWmLrjsSOZr1GB7PKITIYB1m+lfq5orrmerPz/Rqrur5NOmT4PF3NzMNDCm6lzLFH4xpwn6uK2p5glx247+nnq03vnx8NBbYCmaJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9crS4BEAksxdTFPEq/W3A8lZAjCXaRYLgOrQivhOT8Q=;
 b=GT5TY0AeG0LYQnrybKBA9XIRoaPJtwU6kh7RF0hpbgY1g+Sw2PJQlSHI16IhnKu77k+buJOvPxrvmxrLgXuwUVNwrLcnzx/PbG9+c0ymfxubTmKMuLSzE8OYdmmT8IRK5GxC8oowA51dCSrNqDAN+Yh8KWbb5V8cWXyLSt9VvVZl6ozurT47Mqfx6AHuD8O58WhHFoEjkbCcvYMpmT8W0A6VUhHvDkSZdd+dUcEulLyfNI/f8MomdmoKQmbtoAK8YoReX1bNbeo9g7EM5kkAVmZSeNa6NhJfP048vYcVmMVX8LkBiJHWC3nj8IwAU5VdQ+g4achf22sraH4dvjTmGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4797.namprd11.prod.outlook.com (2603:10b6:a03:2d4::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Wed, 26 Apr
 2023 06:10:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%9]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 06:10:51 +0000
Message-ID: <0c62c979-9949-fead-1d78-f4bf1cb14bc8@intel.com>
Date: Wed, 26 Apr 2023 11:40:41 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-14-ankit.k.nautiyal@intel.com>
 <ZEZ+Z5AaeX8XtpJa@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZEZ+Z5AaeX8XtpJa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4797:EE_
X-MS-Office365-Filtering-Correlation-Id: d2c7b682-6422-42ac-e05e-08db461cfc5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iPkozU2I1oMvxp/GDODQo5PUg9ttXotmPYTh0NMOlDxkYNaDt5pxLKCkWUAuPP9Y1ENvHBlKpqNf+OgTsFIdqtMR3AXpQbpRxsM62xSDGTiwWU6h7PeqmmygSPdMdlq24/YN3LG32HQziRAVIqU/Gc7x8owe1b6kVk2ZgNm4hoQV0zO70D+2C/iDETZkVv0LICMyo7NkIXTE/pykXLLbFV5M6j0yVZB9ie5oEiA+PDmBRBMfA94wXR4S7sYKDdIhVJNDFES621dLvN0mvetnu3+f96uwTz8txJdWjg0a04xiX/cQtbMDDnQBLc6hDxBtnHugDph09Up8dx8WwqUvKBcnE9dToKVrSyLiEk13W9Fjt/73DTkXCeG3d5g2N4+Lxs2CeZIQvI3PfqJSrv4o7ISHRZXSao0YIJefJ7bANhznq4AZviXFCy/1J+dB5VErC5B6OgmxlD0SKEuTlWkrtV3jplz7cECNRcxDsTxZ8BKchTLMiFNyhr5ISTBdZQGiJREd1K63gniP29ycl0fFrd6GKcWPLPEXFE1bdHf5HWO/on5cn0KWhAbejjHcyP32PQ1mPht7DubFB+VDBxjKi2JoyTpjLvjFOvIVO0aIaZQHd+YPPRUe8etojEHGX3NmrkuNgwyejag14drQq+4hyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(39860400002)(136003)(451199021)(478600001)(31696002)(55236004)(86362001)(36756003)(186003)(6486002)(53546011)(26005)(6506007)(4326008)(6916009)(66556008)(82960400001)(316002)(6666004)(66476007)(6512007)(83380400001)(66946007)(2906002)(30864003)(41300700001)(8676002)(38100700002)(31686004)(5660300002)(8936002)(66574015)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2RGTCthcUplZDZXV3lRQUcxVHFWQXZVUVhzYXdUaTFlRDFhM1puemlvU0E2?=
 =?utf-8?B?c1liYmVrT01iM05oQkdrbmd3c3Nwek5LY2pvSUo3T21hSzFjc2ltbzUxSEs0?=
 =?utf-8?B?UHJaQTlZSWZXbGYrZjhOOWxjaEFvcTBGU0VrMFBZMnl5ZjhmV3pxeGpSb2lF?=
 =?utf-8?B?S1hpajRWTHYvSzNDak8vUEdqY2NGbVdER1ArQlA5bVRVL2JiRWQ3UFRaOWdC?=
 =?utf-8?B?NW9XakxwU3NuQjB3QXFkenIzTGR4SU52R2V5NTlORDlzNWNVZ3p4VXAya2Rs?=
 =?utf-8?B?QUFrS0N5cUxOQmFlbUhjb3dab3ZQcGp3T0k4UmtYQUNHMVltUVNVdTRKRDhV?=
 =?utf-8?B?YkNENE1WVDBaUVcyNklmUGZlUnNVNnhiT3ZxWjl3ZktxeUZtWjFhQTVDZ2Zv?=
 =?utf-8?B?ZFNlWnN2RHNSeXNUN1RHQ29ldXV2Q1NFem5tNkRYUVlWczBTbDhhZmtuNXJj?=
 =?utf-8?B?Z05vOGpsNWNRMVoxMitJcDdVa2krYjNsb1BFWWVOc2RqNFZFbnptSU96cDFN?=
 =?utf-8?B?aldXZHJPcEpDaFREbkRLWGptdkR5WVhMTzVKQnpPcWt4L215WXdHeWswbVda?=
 =?utf-8?B?VmFBUmh5NytvNm42aVUzRFJOdkhHSjFvNWpKaWg3cFVmTHlLR3kxSTZrTER4?=
 =?utf-8?B?RXIxaVRya3lUU3BuS05lSitkYVo4SnFFRkJrY3RJR2FVdE9xekFpQXNsTkVw?=
 =?utf-8?B?VFI2Q0ZlZmg2ZnhuZmhOLzdBUkZjdzh1U3dCM3VwZ2lZaUJOeElDc2NyOThy?=
 =?utf-8?B?SCtqZkhybjZGaUZaRWxjU1I1emlsTGlDdFJNNmZ1cU5SQ2pVWDRwOHhPaGli?=
 =?utf-8?B?aE01dExEYVBEOFJURlR0ODNrazQ4S3kwUWZQZEZQYzZ5elo2YnhWWEdsWFNG?=
 =?utf-8?B?U1lFc1A4YXcrazlaWEFaYjNJaW1NYmc0T3QxWXI2NzF1bWRTVzFtdjhLQlh4?=
 =?utf-8?B?ejNEay90SkNiY1I5UTZjaGVuNy80OERIV0xXRnRpaS9SaVlxSnMwYkNwL0Zy?=
 =?utf-8?B?bjRHT2RmT0ZZVW5vSUJqMFFNb3AxSVdpTWduU2ZUQi9MZFB5RmJrQTVmU0J3?=
 =?utf-8?B?czFHSXNLaFhjcGRLS3JuaWFMejBYTFVramp6WlFVS011ZTVBNXBhaU5tWE5V?=
 =?utf-8?B?MjhVZ1BUaXI3SE1ydGtTaFdYNnNkd0VFSVc5aFg2UUdsTjR5Rzc2M1BFa1Mx?=
 =?utf-8?B?TGQvQ2RYSlIvLytkeDRQVTFCQVR5MmM1enpZWi80K2JtM2RtMkw1ZDd6ajh0?=
 =?utf-8?B?UW00LzlrRUxVV0ZEZ2dOWURnQWNHdG5ORDE5eVpBSUJ0Sy83K3gwbzVGV3dR?=
 =?utf-8?B?bmtEY3JEZGpTUWxpbndjZ2h5WkZpNGUrK1Y2UnJyTEN1d0lyZVJoNGJIaU9T?=
 =?utf-8?B?eXVXbDFKRTFyQ3ZqeGxOc0NPUW1lbnR1ZkxDYVc0YkhpWXJSSDFjbmM5ekxU?=
 =?utf-8?B?TzBRRk1SZjU0TEtCeU9lYmtIWEZoUGpOdTVybTFtN3U2MUw4THFNM3VQd05Y?=
 =?utf-8?B?SUR2NkNFVS9qQTJTSTVUSnEzMXZYZkNZZUFvVjg3WkJ3WWNEYXQ1MGpvbUQ5?=
 =?utf-8?B?UjRJNkpuRmtVd3VyVnRpOUZER1MrNDUybjFMcU9oVnNraVJFRUh2cXl6T0FI?=
 =?utf-8?B?Vzdub2VoaW4rbFBpVEZhMllvOXUzeW1BQ0VuVmprZUJ0WDk2ejZETUE3OS9B?=
 =?utf-8?B?TU9IWmVsYXZjbnFiU1haU1RnZnRZRFpGamdUMUtqVnh0VytNODZIRW5JQlFo?=
 =?utf-8?B?K0dPaklicXZnSDUwYklhSFhaWGxGS2hVamhMc1lsdWliRnIrNzEyRjRla1lW?=
 =?utf-8?B?TFlxNWxjWFI1WnlpOUNTWE0vTVYxbDJkc1ZCMnArajljZm5QSk1DamczVzFZ?=
 =?utf-8?B?d2lreWJBYU16MHR1MVhsK09mTGswYWJWSmZwOEgxMlM5anhPV3V0aDBpOGZT?=
 =?utf-8?B?L0xUcDJta2sxcUx1dEdOWGJoa2NrbjNsVEsyaWZ6ZGIrcGRPcW9lRXkwVmR3?=
 =?utf-8?B?NDgzMEF2ZTZzYUx0b3BlaVZ0RDlQUGVIeUNEY0dEUmVQL0NMdDNtV0I2RUJM?=
 =?utf-8?B?bDEyMUZKL3NuTzNSMVdxSllWU0lKT2IwL0Z4c0JETjU2S1ZMTkNidEpmeWVX?=
 =?utf-8?B?Q2trQTJqcE9kSHZBUVZzNUdEMWw5NkdCc0FyZ2pmTUdHV2RlbTFPVVpmWHpW?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c7b682-6422-42ac-e05e-08db461cfc5b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 06:10:51.3968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YOckWHMHFD+kYd7wv6Gh6yiOUlyhd0luZ4nFZV8qpJv2lghYygteO2GAansUkf3WfU1U00y2PqHyMvwXaUVVJptjK1LAae8UxY+TAzsGaBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4797
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/dp: Use consistent name for
 link bpp and compressed bpp
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/24/2023 6:34 PM, Ville Syrjälä wrote:
> On Fri, Mar 31, 2023 at 03:46:13PM +0530, Ankit Nautiyal wrote:
>> Currently there are many places where we use output_bpp for link bpp and
>> compressed bpp.
>> Lets use consistent naming:
>> output_bpp : The intermediate value taking into account the
>> output_format chroma subsampling.
>> compressed_bpp : target bpp for the DSC encoder.
>> link_bpp : final bpp used in the link.
>>
>> For 444 sampling without DSC:
>> link_bpp = output_bpp = pipe_bpp
>>
>> For 420 sampling without DSC:
>> output_bpp = pipe_bpp / 2
>> link_bpp = output_bpp
>>
>> For 444 sampling with DSC:
>> output_bpp = pipe_bpp
>> link_bpp = compressed_bpp, computed with output_bpp (i.e. pipe_bpp in
>> this case)
>>
>> For 420 sampling with DSC:
>> output_bpp = pipe_bpp/2
>> link_bpp = compressed_bpp, computed with output_bpp
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 84 ++++++++++-----------
>>   drivers/gpu/drm/i915/display/intel_dp.h     | 14 ++--
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++---
>>   3 files changed, 60 insertions(+), 60 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 63f3f6ff2cad..22b98653d539 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -710,13 +710,13 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>>   	return bits_per_pixel;
>>   }
>>   
>> -u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>> -				u32 link_clock, u32 lane_count,
>> -				u32 mode_clock, u32 mode_hdisplay,
>> -				bool bigjoiner,
>> -				enum intel_output_format output_format,
>> -				u32 pipe_bpp,
>> -				u32 timeslots)
>> +u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>> +					u32 link_clock, u32 lane_count,
>> +					u32 mode_clock, u32 mode_hdisplay,
>> +					bool bigjoiner,
>> +					enum intel_output_format output_format,
>> +					u32 pipe_bpp,
>> +					u32 timeslots)
>>   {
>>   	u32 bits_per_pixel, max_bpp_small_joiner_ram;
>>   
>> @@ -1118,7 +1118,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   	int target_clock = mode->clock;
>>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>>   	int max_dotclk = dev_priv->max_dotclk_freq;
>> -	u16 dsc_max_output_bpp = 0;
>> +	u16 dsc_max_compressed_bpp = 0;
>>   	u8 dsc_slice_count = 0;
>>   	enum drm_mode_status status;
>>   	bool dsc = false, bigjoiner = false;
>> @@ -1173,21 +1173,21 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   		 * integer value since we support only integer values of bpp.
>>   		 */
>>   		if (intel_dp_is_edp(intel_dp)) {
>> -			dsc_max_output_bpp =
>> +			dsc_max_compressed_bpp =
>>   				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
> Renaming that as well would be nice, as a separate patch.

Agreed. Perhaps drm_dp_dsc_sink_compressed_bpp for both dp/edp.

>
>>   			dsc_slice_count =
>>   				drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>>   								true);
>>   		} else if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
>> -			dsc_max_output_bpp =
>> -				intel_dp_dsc_get_output_bpp(dev_priv,
>> -							    max_link_clock,
>> -							    max_lanes,
>> -							    target_clock,
>> -							    mode->hdisplay,
>> -							    bigjoiner,
>> -							    output_format,
>> -							    pipe_bpp, 64) >> 4;
>> +			dsc_max_compressed_bpp =
>> +				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
>> +								    max_link_clock,
>> +								    max_lanes,
>> +								    target_clock,
>> +								    mode->hdisplay,
>> +								    bigjoiner,
>> +								    output_format,
>> +								    pipe_bpp, 64) >> 4;
>>   			dsc_slice_count =
>>   				intel_dp_dsc_get_slice_count(intel_dp,
>>   							     target_clock,
>> @@ -1195,7 +1195,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   							     bigjoiner);
>>   		}
>>   
>> -		dsc = dsc_max_output_bpp && dsc_slice_count;
>> +		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>   	}
>>   
>>   	/*
>> @@ -1477,9 +1477,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   	int mode_rate, link_rate, link_avail;
>>   
>>   	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
>> -		int output_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
>> +		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
>>   
>> -		mode_rate = intel_dp_link_required(clock, output_bpp);
>> +		mode_rate = intel_dp_link_required(clock, link_bpp);
>>   
>>   		for (i = 0; i < intel_dp->num_common_rates; i++) {
>>   			link_rate = intel_dp_common_rate(intel_dp, i);
>> @@ -1728,21 +1728,21 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
>>   							true);
>>   	} else {
>> -		u16 dsc_max_output_bpp = 0;
>> +		u16 dsc_max_compressed_bpp = 0;
>>   		u8 dsc_dp_slice_count;
>>   
>>   		if (compute_pipe_bpp) {
>> -			dsc_max_output_bpp =
>> -				intel_dp_dsc_get_output_bpp(dev_priv,
>> -							    pipe_config->port_clock,
>> -							    pipe_config->lane_count,
>> -							    adjusted_mode->crtc_clock,
>> -							    adjusted_mode->crtc_hdisplay,
>> -							    pipe_config->bigjoiner_pipes,
>> -							    pipe_config->output_format,
>> -							    pipe_bpp,
>> -							    timeslots);
>> -			if (!dsc_max_output_bpp) {
>> +			dsc_max_compressed_bpp =
>> +				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
>> +								    pipe_config->port_clock,
>> +								    pipe_config->lane_count,
>> +								    adjusted_mode->crtc_clock,
>> +								    adjusted_mode->crtc_hdisplay,
>> +								    pipe_config->bigjoiner_pipes,
>> +								    pipe_config->output_format,
>> +								    pipe_bpp,
>> +								    timeslots);
>> +			if (!dsc_max_compressed_bpp) {
>>   				drm_dbg_kms(&dev_priv->drm,
>>   					    "Compressed BPP not supported\n");
>>   				return -EINVAL;
>> @@ -1767,7 +1767,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   		 */
>>   		if (compute_pipe_bpp) {
>>   			pipe_config->dsc.compressed_bpp = min_t(u16,
>> -								dsc_max_output_bpp >> 4,
>> +								dsc_max_compressed_bpp >> 4,
>>   								pipe_config->pipe_bpp);
> Should that be min(max_compressed_bpp>>4, output_bpp) ?

Hmm i think the idea here is that the pixel data after compression 
should be min than the pixel data before compression.

With sub-sampling the effective pixel data is less than that without 
sub-sampling, so here output_bpp should be the right thing.

Regards,

Ankit

>
> The rest makes sense
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   		}
>>   		pipe_config->dsc.slice_count = dsc_dp_slice_count;
>> @@ -2143,7 +2143,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
>>   static void
>>   intel_dp_drrs_compute_config(struct intel_connector *connector,
>>   			     struct intel_crtc_state *pipe_config,
>> -			     int output_bpp)
>> +			     int link_bpp)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>   	const struct drm_display_mode *downclock_mode =
>> @@ -2168,7 +2168,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
>>   	if (pipe_config->splitter.enable)
>>   		pixel_clock /= pipe_config->splitter.link_count;
>>   
>> -	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
>> +	intel_link_compute_m_n(link_bpp, pipe_config->lane_count, pixel_clock,
>>   			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
>>   			       pipe_config->fec_enable);
>>   
>> @@ -2265,7 +2265,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>   	const struct drm_display_mode *fixed_mode;
>>   	struct intel_connector *connector = intel_dp->attached_connector;
>> -	int ret = 0, output_bpp;
>> +	int ret = 0, link_bpp;
>>   
>>   	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
>>   		pipe_config->has_pch_encoder = true;
>> @@ -2315,10 +2315,10 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   		intel_dp_limited_color_range(pipe_config, conn_state);
>>   
>>   	if (pipe_config->dsc.compression_enable)
>> -		output_bpp = pipe_config->dsc.compressed_bpp;
>> +		link_bpp = pipe_config->dsc.compressed_bpp;
>>   	else
>> -		output_bpp = intel_dp_output_bpp(pipe_config->output_format,
>> -						 pipe_config->pipe_bpp);
>> +		link_bpp = intel_dp_output_bpp(pipe_config->output_format,
>> +					       pipe_config->pipe_bpp);
>>   
>>   	if (intel_dp->mso_link_count) {
>>   		int n = intel_dp->mso_link_count;
>> @@ -2342,7 +2342,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   
>>   	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>>   
>> -	intel_link_compute_m_n(output_bpp,
>> +	intel_link_compute_m_n(link_bpp,
>>   			       pipe_config->lane_count,
>>   			       adjusted_mode->crtc_clock,
>>   			       pipe_config->port_clock,
>> @@ -2358,7 +2358,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>>   
>>   	intel_vrr_compute_config(pipe_config, conn_state);
>>   	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
>> -	intel_dp_drrs_compute_config(connector, pipe_config, output_bpp);
>> +	intel_dp_drrs_compute_config(connector, pipe_config, link_bpp);
>>   	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>>   	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 856172bfa13e..42b98546c140 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -103,13 +103,13 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>>   		       unsigned int type);
>>   bool intel_digital_port_connected(struct intel_encoder *encoder);
>>   int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>> -u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>> -				u32 link_clock, u32 lane_count,
>> -				u32 mode_clock, u32 mode_hdisplay,
>> -				bool bigjoiner,
>> -				enum intel_output_format output_format,
>> -				u32 pipe_bpp,
>> -				u32 timeslots);
>> +u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>> +					u32 link_clock, u32 lane_count,
>> +					u32 mode_clock, u32 mode_hdisplay,
>> +					bool bigjoiner,
>> +					enum intel_output_format output_format,
>> +					u32 pipe_bpp,
>> +					u32 timeslots);
>>   u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>   				int mode_clock, int mode_hdisplay,
>>   				bool bigjoiner);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index fec3f310fc9b..7b91c6c9c286 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -869,7 +869,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>>   	int ret;
>>   	bool dsc = false, bigjoiner = false;
>> -	u16 dsc_max_output_bpp = 0;
>> +	u16 dsc_max_compressed_bpp = 0;
>>   	u8 dsc_slice_count = 0;
>>   	int target_clock = mode->clock;
>>   
>> @@ -923,15 +923,15 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>>   
>>   		if (drm_dp_sink_supports_fec(intel_dp->fec_capable)) {
>> -			dsc_max_output_bpp =
>> -				intel_dp_dsc_get_output_bpp(dev_priv,
>> -							    max_link_clock,
>> -							    max_lanes,
>> -							    target_clock,
>> -							    mode->hdisplay,
>> -							    bigjoiner,
>> -							    INTEL_OUTPUT_FORMAT_RGB,
>> -							    pipe_bpp, 64) >> 4;
>> +			dsc_max_compressed_bpp =
>> +				intel_dp_dsc_get_max_compressed_bpp(dev_priv,
>> +								    max_link_clock,
>> +								    max_lanes,
>> +								    target_clock,
>> +								    mode->hdisplay,
>> +								    bigjoiner,
>> +								    INTEL_OUTPUT_FORMAT_RGB,
>> +								    pipe_bpp, 64) >> 4;
>>   			dsc_slice_count =
>>   				intel_dp_dsc_get_slice_count(intel_dp,
>>   							     target_clock,
>> @@ -939,7 +939,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   							     bigjoiner);
>>   		}
>>   
>> -		dsc = dsc_max_output_bpp && dsc_slice_count;
>> +		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>   	}
>>   
>>   	/*
>> -- 
>> 2.25.1
