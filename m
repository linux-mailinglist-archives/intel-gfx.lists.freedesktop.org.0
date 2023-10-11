Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6F77C58FC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 18:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8CD10E51D;
	Wed, 11 Oct 2023 16:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C0EB10E51D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697041020; x=1728577020;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vBB15XCUdU0PtQ49QPXp++sNIMZfSlNGQ2DaOH6CdF8=;
 b=eAfNw3ThyVPOm6MQK0Jd6qjzSQpcfxQtQZ9Y5mqAwsKWH0UUUIoN6krQ
 EOg/THzaBEc9qqHmWHAo81ncMz3Nk5fib3wRv4SSnBRlHbYE59Bm6kqu5
 DHIrmqFT1IKnA1AhkeYmgWoC8+NMRoc2X9JjP61DqTJv3vaclgNR+JS4k
 yiEFcr47pmNLj+7H9dkC5Z0ilFKqFflcQJkfZ8quOl1smJ4lfG0UE3Q7u
 ZJvx8f03YAP9sMdPcQ0kVLUnV2FE8k4e3VdlO7aQ1ymHP2eueuVdQJFnR
 cS69n0AFEF8vrMKnC0rcFPbb1VHSuTLdo2gVC4+gr6rw0hXDkoGxsWmSQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="451196294"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="451196294"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="877738080"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="877738080"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 09:14:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 09:14:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 09:14:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 09:14:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 09:14:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioYHFRSPZO9hgslASZfG1UJF5z4xeXhjlpbcSySk95MarWpSVHQxJ1Y88JHulCe4rO681H8TJ3IQvWSVomZrxMmI3U6ue1Q4mCnaq9YrPGBNJtG6IMHvUL53QTp4M7gAHx/zShnzCNbVvxn2TS2ZPmmGL1u9sldSkfintU86mzQpBxtL9BNJrX4OVFDZNkIixFtSNEEBi2+gfxbveMXbRGB78ccX4USW9P2Kff59wTijjz586f7uBfQnR9arftcfQIsfn8wjXtj4GV2AVJoalh2/2g/SxMG1ZOmphm7M38rhGgBNLE8huytfBlLC8uzKcxVQfeId5aYquMtsFZHHTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SxgT0cJTLZb6ij7LdpoEXu+Jfq2agdGICNw7u71BQGQ=;
 b=OTj+HirvgekGgKkQ94bopuqkJgNVxpmVqsSTgnFPccmbKLqcyEvXeEBn0f5cjjtPClxs/R3sriTxyudzhnIx4yoU46xtz3edwcDchQAn2A4LulfgAAAngaQ1wHlZAM+Vu693VaweNJ6kkEsNHLqs9TL4eoOqVSg3xl8Wo7eMk/CWNt2MOXi2A7HUt0a3Muj93uyTzAd/puTyQxJsxx0WqX/Aqx/nRWsNvobQgPEHTkIjRglzurWeXP7Wz24lZ+QC/EWMDUEcFHHEdIY6IoDKga4i40A4BEk+v9vI12PCu80UF6eEsQOxkhbqNOXggU1xHoX/Xe0x2spA8t8+Imr8Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW5PR11MB5810.namprd11.prod.outlook.com (2603:10b6:303:192::22)
 by SA1PR11MB6758.namprd11.prod.outlook.com (2603:10b6:806:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Wed, 11 Oct
 2023 16:14:10 +0000
Received: from MW5PR11MB5810.namprd11.prod.outlook.com
 ([fe80::c79d:298b:c747:6d65]) by MW5PR11MB5810.namprd11.prod.outlook.com
 ([fe80::c79d:298b:c747:6d65%5]) with mapi id 15.20.6838.040; Wed, 11 Oct 2023
 16:14:10 +0000
Message-ID: <ddb6d76b-829e-5c81-5459-61774ee79b1a@intel.com>
Date: Wed, 11 Oct 2023 18:14:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <27bf7758-61e0-2587-1800-5aa4be42fffe@intel.com>
 <SJ1PR11MB6129C8B2AFEDD2399227698DB9CEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <a85feb59-e5fb-99b2-7b5e-4838a3add9b0@intel.com>
 <SJ1PR11MB6129F78B98D448AF1D05EC07B9CCA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
In-Reply-To: <SJ1PR11MB6129F78B98D448AF1D05EC07B9CCA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2P251CA0029.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::31) To MW5PR11MB5810.namprd11.prod.outlook.com
 (2603:10b6:303:192::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR11MB5810:EE_|SA1PR11MB6758:EE_
X-MS-Office365-Filtering-Correlation-Id: 1850e919-0170-429d-a882-08dbca751a3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bR/zjBjB77F/r0wSfQb5Gqtp1p9uu9OkYM9BnGP1QuTo9R4L8K5K9xXGNepK+wWzd4s3sKde5q4lwMQm4IZo6+WdBgsPkbSQTfRSN/fBwP8woJpEFLcJgm0Q4aGhoRDIDOj9I0Od9owdfKckhHzC2htgwrsK48OZjOVmtUVqyNAbxC4TlOB+8qzDRW6Hh42PqH/+RTucwUxk0uqhPfUpEJuJv1K52cJ554+2/au6yZ7kz0CNDmi0oJCkDwyAYA1SdPGLI11FJzXw7rMSppTiBQVt0xAsudoS2CIkHEor2cL9aRP5chXJGph6WA0WQCEJU8uFGK4CCV6W21I6MRRkrkz1xTQ20YkITIXo6A97yoRUUkhs5eNpv5pki876/xI4RfLBjLRjZWeBH3V3HNBLhQ/M1GibIU+tScdI/YA8AtQaxpav6CDpM18zuXR3ULbjZgpkLbmkExJwn4G7FOH+MENzkcltiBCb0rPB+/e60+ZTX5b2QuxmFRhRfxnKCdNJ4jbcM92nxBe2fUYGm/hV2dk5TAJEsSd9D/hzIzVQhF5GH8yvS67lK0Q8vBMzTgjqOVuYOFMpJUCwrcepONQdxi8uua1/bth2Rou2n1HJeF1gYwtNR5hd5evYG8+B+0hQF5sIhAyB19v8z/ha27YcUo7GHH/gz8NTODvn0+p9J0M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5810.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(6512007)(53546011)(6666004)(6506007)(26005)(36756003)(107886003)(84970400001)(478600001)(6486002)(966005)(45080400002)(2616005)(66946007)(3480700007)(31686004)(83380400001)(37006003)(66476007)(66556008)(6636002)(316002)(54906003)(38100700002)(41300700001)(8936002)(8676002)(6862004)(4326008)(5660300002)(2906002)(86362001)(82960400001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFJTeXM2N3prWWw1Nm5BajRzMzNOU2N0VCtFK241ZlJDdnVLTmhzYmVGdDc0?=
 =?utf-8?B?Z0lINkFxR1pjRGhxZzBiSTRXSGlVTnlyNGp0TWVzVDRadlhxVnZlN1VOSW1D?=
 =?utf-8?B?cForQkI0L2ZtMXQ2TW02b2R1ZjgwbTlCdWIyVzIyNjQ1Vk80c1hXRWduZVkr?=
 =?utf-8?B?T2xGTHlFdDVJTVBmZDN6OGJyckdtaEtza3NoN2QwMVcrZGI3UHp6aUhTa2dv?=
 =?utf-8?B?RGtOQThETVBJWDRjZ2JIOG52Z0ZpMWswQS92eTlvK2pIRy9sWDduNUdEVzZX?=
 =?utf-8?B?UHFxeVUyTlhrcnh3MWExSHpkUVJuV3BsbWI4aE93ZUFIdWdHcmVGZVBGd2w2?=
 =?utf-8?B?ODY2VU5aRndyamVQL0NDQ05mSHdtd2JOWGtQUDJUWExIWGM4V2ppeXVkY0ZJ?=
 =?utf-8?B?ZC9TdHZTN2dOMEZSbGZQeElDNWphMzVYdStoenlvZWQ2MzlhWXV5WUpuWGZT?=
 =?utf-8?B?ajJHV3pJeHFlVVdvNHBkcHBwRXhnMWlkc3Y4WjZFL0JsWktJc1FudWExY2lu?=
 =?utf-8?B?aHZ0UlBvWXhHcS9RWkVicjJuUS9BN0ZTejJpcWZUZDJzOEhlU2tlS09zVFFD?=
 =?utf-8?B?UlA4NHgvWXhRSHRWLy9OVTIwSm9pdlFFd3VoK1NueHhtNzhtNStDMnRmQXBu?=
 =?utf-8?B?RjZFeDlPc1pzKzJCckFwYzRmUWVEWXBTSVM5SmhjQWJOajkvQUtnQnloZFp0?=
 =?utf-8?B?YXU2bnJudTdDd2dCYlNkelVqaG9mSWRTTGJGcmM1UWxQUHo4TUM1QUViZjhq?=
 =?utf-8?B?b0xXT3ptbC96T3Rxbi91aVRRazJsOCtsTGJIZ202bi82ZGJuLytWUksyeStK?=
 =?utf-8?B?SDk3UG0rYkkzSlZQbTNFeHZHd2FQVGJtaEprbG5ZNlA2WmpVVEdZWG9zaHJP?=
 =?utf-8?B?NUlURUMyREROM3prMkd6TTg1MjRzejg2M3pJa3BtVm5CSkl1cldhb0lBSXZa?=
 =?utf-8?B?RE1VVlJSaHV3cFhaelVxdjR2dlpMR1NGODM3L1ozY05DQ29FUXV2TTJ5Rml0?=
 =?utf-8?B?NWFnRTVoL3BvN1JMUTFoZDVhV28rb3JUcDhJYTNON2QyeTJmVzZUbHA2L2Zx?=
 =?utf-8?B?anU3V3VDSEZxd2hLSm4xUlFiT042YUFQWE9mVzE2L2liWE43dWo0My9QR0ow?=
 =?utf-8?B?VHZNTmRGZzMzYkczVXZ2bXRJVVRISjVyRlFqUFFtZVFHRlR5bEJ4WWdWOUw4?=
 =?utf-8?B?TGRuWWRlMitoL3pMWW1ka0pESThsLzJMTktNN0EzUENZOGFMRnM4RDlORTV0?=
 =?utf-8?B?OGxHanFSbGFKRVJ6YnRXMDJzYk5ZaHpLZVlITy9lMHNEOThRdUt5citaaUJ3?=
 =?utf-8?B?R25JNExKc3BCaFNoOG1MNUw1WGd2alN3alZRaUl1SVhQV3VzREl1TEZUL0x2?=
 =?utf-8?B?bm92cTFkVVRhMDZhUVM2SExDdHp1Q2JhYjdhOS9Jb2RXR0NmSzBwbXc4MnZ6?=
 =?utf-8?B?TlpwT25qSnFsRVRROVBBKzR0Y3VPeGlHeHVja01QcDVJSStZd0pCUTFmSlFD?=
 =?utf-8?B?YkJmUFhINmlJUDQ2NWhVRXFBbkpRYmI3bDBlUXd6MFhwWXZNUUZyWWRvellX?=
 =?utf-8?B?VER2Q21uM2MxVkZ2aURPQ3FLZTVGWkRIL2RrYm5KenZ0YXU4NFR3Wk00RFJw?=
 =?utf-8?B?ZUpIVXlQZ0daWXR3V050blpQeUxpRll1RGNiUlQrSUdHT0NacGdwemFUdGxz?=
 =?utf-8?B?dytodU9tdzhLbXZMR3ZvLzZaVmdWcGZwOStLYmJJY1FpVkVRdHM5dVdDSjJI?=
 =?utf-8?B?RHZkMjdDRWJNNjVuRlRkdW5ZRWI2K3crbkl6Wlo3MmtQbXFrbWNpdWZkcGFy?=
 =?utf-8?B?YlZaYUpGK0RpWWRYRzM5MmJiWFB0dTBTVlBYYzI0djlHQXBZdXBDbUhneEJ0?=
 =?utf-8?B?QVBzWXRpZlc4WGRtNlFUdldaaEJpbUp0MHlqWUd3L1daSllRT1poNWJ4YnFu?=
 =?utf-8?B?K0ZBdmxGbGdEcGl4RGFzOG1qMUl1LytHVXRUeGxsNlo1SXJrdDlwdkpmeFBO?=
 =?utf-8?B?TEZYZnBHSkxlUUV2YURUNTNvR1hLYXNraVVmVkQ5RWZibVYxbVJUMUcvT1Nt?=
 =?utf-8?B?MXV2QVMvQVJSVTVoWnMramJNektkQ2pUcXd0eWJ2R2NCTWRlMnpFTjlPclg1?=
 =?utf-8?B?YlZJVEx0ZGFQdHFmdS81ejhCVGZRNk9heFRmWXVpU2dHbUI5RlBHRGJZZmtV?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1850e919-0170-429d-a882-08dbca751a3f
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5810.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 16:14:10.5433 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BHzcsuTziChLa+Klc5cW6Rv8N2CEotaAjCZeM+cQ+15bDcb8cYzmeGeCGev1q3dwzvF73fN8NXtPfrDlBdz04VAGC63NJCaN34FcSiJWMcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6758
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression in linux-next
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/11/2023 6:00 AM, Borah, Chaitanya Kumar wrote:
> Hello Rafael,
>
>> -----Original Message-----
>> From: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
>> Sent: Tuesday, October 10, 2023 12:54 AM
>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>
>> Subject: Re: Regression in linux-next
>>
>> Hi,
>>
>> On 10/9/2023 7:10 AM, Borah, Chaitanya Kumar wrote:
>>> Hello Rafael
>>>
>>>> Thanks for the report, I think that this is a lockdep assertion failing.
>>>> If that is correct, it should be straightforward to fix.
>>>> I'll take care of this early next week.
>>>> Thanks!
>>> Thank you for your response.  Please let us know when a fix is available.
>> It should be fixed in linux-next from today, by this commit:
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-
>> pm.git/commit/?h=linux-
>> next&id=b44444027ce7714f309e96b804b7fb088a40d708
>>
>> Thanks!
> Thanks a lot for the fix. This seems to have fixed the issue in most of the machines but we are still seeing a similar problem in few of the machines.

Thanks for reporting this!


> This has a different call stack but seems to be from the same thermal subsystem. Full logs in [1]
>
> <4>[    4.392015] WARNING: CPU: 1 PID: 306 at drivers/thermal/thermal_trip.c:178 thermal_zone_trip_id+0x61/0x70
> <4>[    4.392022] Modules linked in: x86_pkg_temp_thermal coretemp kvm_intel mei_pxp mei_hdcp wmi_bmof kvm e1000e irqbypass crct10dif_pclmul video ptp crc32_pclmul ghash_clmulni_intel i2c_i801 mei_me pps_core mei i2c_smbus wmi
> <4>[    4.392057] CPU: 1 PID: 306 Comm: thermald Not tainted 6.6.0-rc5-next-20231010-next-20231010-gc0a6edb636cb+ #1
> <4>[    4.392061] Hardware name: System manufacturer System Product Name/Z170M-PLUS, BIOS 3610 03/29/2018
> <4>[    4.392063] RIP: 0010:thermal_zone_trip_id+0x61/0x70
> <4>[    4.392066] Code: 74 0c 83 c0 01 39 c8 75 f0 b8 c3 ff ff ff 5b 5d c3 cc cc cc cc 48 8d bf f0 05 00 00 be ff ff ff ff e8 63 a4 2d 00 85 c0 75 b5 <0f> 0b eb b1 66 2e 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90
> <4>[    4.392069] RSP: 0018:ffffc9000156bda8 EFLAGS: 00010246
> <4>[    4.392073] RAX: 0000000000000000 RBX: ffff888103828ae8 RCX: 0000000000000001
> <4>[    4.392075] RDX: 0000000080000000 RSI: ffffffff823de5ab RDI: ffffffff823fdfba
> <4>[    4.392078] RBP: ffff888103a88800 R08: ffff888103828ae8 R09: 0000000000000001
> <4>[    4.392080] R10: 0000000000000001 R11: ffff88811494d3c0 R12: ffff888103a88818
> <4>[    4.392082] R13: ffff8881108bfa00 R14: ffff888103794408 R15: 0000000000000001
> <4>[    4.392084] FS:  00007f1f0d6d28c0(0000) GS:ffff88822e680000(0000) knlGS:0000000000000000
> <4>[    4.392087] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4>[    4.392089] CR2: 000055857c50b750 CR3: 0000000111efa005 CR4: 00000000003706f0
> <4>[    4.392091] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> <4>[    4.392093] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> <4>[    4.392095] Call Trace:
> <4>[    4.392097]  <TASK>
> <4>[    4.392100]  ? __warn+0x7f/0x170
> <4>[    4.392104]  ? thermal_zone_trip_id+0x61/0x70
> <4>[    4.392109]  ? report_bug+0x1f8/0x200
> <4>[    4.392116]  ? handle_bug+0x3c/0x70
> <4>[    4.392119]  ? exc_invalid_op+0x18/0x70
> <4>[    4.392123]  ? asm_exc_invalid_op+0x1a/0x20
> <4>[    4.392133]  ? thermal_zone_trip_id+0x61/0x70
> <4>[    4.392137]  ? thermal_zone_trip_id+0x5d/0x70
> <4>[    4.392141]  trip_point_show+0x18/0x40
> <4>[    4.392145]  dev_attr_show+0x15/0x60
> <4>[    4.392149]  sysfs_kf_seq_show+0xb5/0x100
> <4>[    4.392154]  seq_read_iter+0x111/0x450
> <4>[    4.392158]  ? check_object+0x133/0x320
> <4>[    4.392164]  vfs_read+0x20d/0x300
> <4>[    4.392175]  ksys_read+0x64/0xe0
> <4>[    4.392180]  do_syscall_64+0x3c/0x90
> <4>[    4.392183]  entry_SYSCALL_64_after_hwframe+0x6e/0xd8
> <4>[    4.392187] RIP: 0033:0x7f1f0e193392
>
> Can you please check what could be the reason for this issue?

Well, one more unuseful lockdep assertion has been added recently to the 
thermal core, sorry about that.

This commit

https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=linux-next&id=108ffd12be24ba1d74b3314df8db32a0a6d55ba5

that will be merged into linux-next tomorrow if all goes well, should 
address this.

Thanks!


> [1] https://intel-gfx-ci.01.org/tree/linux-next/next-20231010/fi-kbl-guc/boot0.txt
>
> Regards
>
> Chaitanya
>
>
>
>
>>
>>> From: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
>>> Sent: Saturday, October 7, 2023 2:01 AM
>>> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>>> Cc: intel-gfx@lists.freedesktop.org; Kurmi, Suresh Kumar
>>> <suresh.kumar.kurmi@intel.com>; Saarinen, Jani
>>> <jani.saarinen@intel.com>
>>> Subject: Re: Regression in linux-next
>>>
>>> Hi,
>>> On 10/5/2023 5:58 PM, Borah, Chaitanya Kumar wrote:
>>> Hello Rafael,
>>>
>>> Hope you are doing well. I am Chaitanya from the linux graphics team in
>> Intel.
>>> This mail is regarding a regression we are seeing in our CI runs[1] on linux-
>> next repository.
>>> Thanks for the report, I think that this is a lockdep assertion failing.
>>> If that is correct, it should be straightforward to fix.
>>> I'll take care of this early next week.
>>> Thanks!
>>>
>>> On next-20231003 [2], we are seeing the following error
>>>
>>> ``````````````````````````````````````````````````````````````````````
>>> ````````` <4>[   14.093075] ------------[ cut here ]------------ <4>[
>>> 14.097664] WARNING: CPU: 0 PID: 1 at drivers/thermal/thermal_trip.c:18
>>> for_each_thermal_trip+0x83/0x90 <4>[   14.106977] Modules linked in:
>>> <4>[   14.110017] CPU: 0 PID: 1 Comm: swapper/0 Tainted: G        W
>>> 6.6.0-rc4-next-20231003-next-20231003-gc9f2baaa18b5+ #1 <4>[
>>> 14.121305] Hardware name: Intel Corporation Meteor Lake Client
>>> Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS
>>> MTLPFWI1.R00.3323.D89.2309110529 09/11/2023 <4>[   14.134478] RIP:
>>> 0010:for_each_thermal_trip+0x83/0x90
>>> <4>[   14.139496] Code: 5c 41 5d c3 cc cc cc cc 5b 31 c0 5d 41 5c 41
>>> 5d c3 cc cc cc cc 48 8d bf f0 05 00 00 be ff ff ff ff e8 21 a2 2d 00
>>> 85 c0 75 9a <0f> 0b eb 96 66 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90
>>> 90 90 90
>>>
>>> Details log can be found in [3].
>>>
>>> After bisecting the tree, the following patch [4] seems to be causing the
>> regression.
>>> commit d5ea889246b112e228433a5f27f57af90ca0c1fb
>>> Author: Rafael J. Wysocki mailto:rafael.j.wysocki@intel.com
>>> Date:   Thu Sep 21 20:02:59 2023 +0200
>>>
>>>       ACPI: thermal: Do not use trip indices for cooling device binding
>>>
>>>       Rearrange the ACPI thermal driver's callback functions used for
>>> cooling
>>>       device binding and unbinding, acpi_thermal_bind_cooling_device()
>>> and
>>>       acpi_thermal_unbind_cooling_device(), respectively, so that they
>>> use trip
>>>       pointers instead of trip indices which is more straightforward
>>> and allows
>>>       the driver to become independent of the ordering of trips in the
>>> thermal
>>>       zone structure.
>>>
>>>       The general functionality is not expected to be changed.
>>>
>>>       Signed-off-by: Rafael J. Wysocki
>>> mailto:rafael.j.wysocki@intel.com
>>>       Reviewed-by: Daniel Lezcano mailto:daniel.lezcano@linaro.org
>>>
>>> We also verified by moving the head of the tree to the previous commit.
>>>
>>> Could you please check why this patch causes the regression and if we can
>> find a solution for it soon?
>>> [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
>>> [2]
>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co
>>> mmit/?h=next-20231003 [3]
>>> https://intel-gfx-ci.01.org/tree/linux-next/next-20231003/bat-mtlp-6/b
>>> oot0.txt [4]
>>> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co
>>> mmit/?h=next-20231003&id=d5ea889246b112e228433a5f27f57af90ca0c1fb
