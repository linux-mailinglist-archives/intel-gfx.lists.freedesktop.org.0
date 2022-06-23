Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E41A557F2F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 18:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6EC10E09E;
	Thu, 23 Jun 2022 16:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A7410E09E
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 15:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655999999; x=1687535999;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ajTQa0/JwbkKQu2DTsuKoOJFDrV/s/Q60WjS9+YGR/Y=;
 b=KQMR+kCKvYZpSsjB8CiBLzCcn7iutcyo8MIK6NpQmFXArcBQsWUXSdqg
 L+IzVD8ECAv/sCPXjDgP+hxfUUv8qvCAW0BGwP2uRWtj84z0ndDcdiI9D
 sDw+NOj9G3Y+e9hmtIIwbw0BOmW4EB9rv5JrR0gReBJK+Win5PR1nwgZG
 lFVfmVtWx+qJJRWNz6uWERawrqOP607Mn8TXuzVER+i2SyBQDGW4c8GP9
 ZnA8NhmKPi7TSuXqGDEDcau/Kvy7tkflOCAWtqeCveMFDUqM5l0SP9sVn
 YKuAQI4G+DwadynpQU+jwmY8IYXex5K0pNHYqSBay7lVsVm0UC+OCp90+ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="281489347"
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="281489347"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 08:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,216,1650956400"; d="scan'208";a="915249804"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jun 2022 08:59:58 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 23 Jun 2022 08:59:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 23 Jun 2022 08:59:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 23 Jun 2022 08:59:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jstCuxhG1J8dPdJAEWA1ccFNxTFHoi9/PQD/8N7y0TTqxxGFkbOePghxcZpGRRSNUB9L1X4mCAJB22ovqalXB8lQw18+yUh1gYaFH79yenJQJ1pbOd1i68+/6ppp4bzoP91Pc9I/2ot3oDYCBSuMOCc7Jc2oa+1W9eiDhYHrzaZSkXUh9lthp6bbBxYkCyt/5Qa/bUF8PhJceLNzJ/xUD724c/rwt5RXL1f1isMn9Gy89RXC5u/fudv3ixfWjxk59uicEV9pP/mvOmeySisiAdzp5E6fVvr+fT2CULKVrd+T4TeWpRKG6jjmbDNBJx8ylHhz335LW2yvYo2mAevwmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NSLqkz20PsaStHypJJo9wHc1R/Y16ewbJv7o+Ffybvw=;
 b=R7tuqIIRZI2yiZswAEnLY9sWPAaIHQXLo8BIN9h71y62YNkNfNms7RFmpEZuQMd7JR9av1GXNOWm8TlVzht5ioeK4UGAjvsU4RMRPDgAWS8KxROA9MN+PI/9bes284wFvPSh0W+q5AJ7W1CX5lo04IlcZwmXq79QdRqCEeL08ndbqaec0D0lpKIuos7pWR90tf78TYyUcaTFPFJcAreK8mzf4SRcGmTW0lGvBy/hIDtFJlRtLW1EGMKfqM2Jpv1waeXlOYR+7D4Ge5ReD1hCSrnnNd6kivWtRxjVrZwcbWB784FH80xPGfFaXTWfEF6KZtABVjU/81gFZIxnZsC6uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2976.namprd11.prod.outlook.com (2603:10b6:805:d5::22)
 by BN6PR11MB1426.namprd11.prod.outlook.com (2603:10b6:405:b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.16; Thu, 23 Jun
 2022 15:59:50 +0000
Received: from SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::c01c:5c23:3bb3:4080]) by SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::c01c:5c23:3bb3:4080%2]) with mapi id 15.20.5373.015; Thu, 23 Jun 2022
 15:59:50 +0000
Message-ID: <8400011f-f37d-8566-0556-e2edf29f60c3@intel.com>
Date: Thu, 23 Jun 2022 17:59:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220617115529.17530-1-nirmoy.das@intel.com>
 <bd0dec62-cc7d-9150-9ef8-e04ffc201901@intel.com>
 <f72726da-0399-e1bf-2560-d84ef2c62b2d@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <f72726da-0399-e1bf-2560-d84ef2c62b2d@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM5PR0602CA0008.eurprd06.prod.outlook.com
 (2603:10a6:203:a3::18) To SN6PR11MB2976.namprd11.prod.outlook.com
 (2603:10b6:805:d5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f09ae6a-91ff-4289-695f-08da55316786
X-MS-TrafficTypeDiagnostic: BN6PR11MB1426:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yC3M97iirjGGrWbFr0ocoMYkn7dKJsd+GBOQ6j3rsgxxVQ0JMixty+dQzDlwIbI5TeE5AHbbGtmkgtpb+qmp8G4Q15DK2N7Wo8BJ8HUi/K8Cm+Nn00vzlU0olEjfVhBglQVPcHjiOrs8jrMtP5myKo0yAR3JpT+zHRXsM/xgHtpd8zcfwvFIGO2INu6ah4djTEt2IN9l+JxlUzlSXpD+B+tOPkL/brZyOUjWEwJpDmdUpIWfBxVWbzgeZrSsDqvtOpI/R2D6zaztTXmA/Tc2rgSwz097vAH6U3dx6PbwCOQWf4dQJKt4tH0CwG9kXSgu3hwwhIEKuR8EB/UT6YlQg3927RiUDFMsXUeEDHnSJYVPeKEOUBhJDX+wSZ0OqSUMkzTbXl4PhWn4U89PoltkHLSj2KSdelan5YfaFgrRrMn3v9ZiP38a0fRCV7H5uUKLyx3LIPTi/+PGgGMvA8uol/Cf0QSEXVOiAXmC+1mjH7W15jKCevEuVxO6ciYCpZwKhYObzMhy0DqE7WSt4oq8z5RY8RzmCb66BjPc6FmvFNnp28V9+TnRgntgaVLUC7q2g/tSI9V3aZV6pGkDO+w93in5pTVT23rFyDsccfopnmnev865mWsafevn+4MVMd5PbFS5QiRDQEnm7aEqlZ1X3F8YI9cf6XeEgbxd6FmPF5bwKa/AZltbaM4o2PaMnTZF+ynpyIKx5gu/TXuB0fGQu3tGo6It0rl9dv/1BvYGWoc4/sGNGAXOKctusTvzjHU6dkc0V08KXKLsrwPwI4v78w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(396003)(346002)(39860400002)(366004)(31696002)(5660300002)(26005)(478600001)(6512007)(86362001)(82960400001)(2616005)(107886003)(966005)(41300700001)(6486002)(6666004)(8936002)(186003)(53546011)(2906002)(83380400001)(8676002)(38100700002)(6506007)(4326008)(316002)(66476007)(66556008)(66946007)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTJDZ1RoMWZjdTFnRUw0R3lzZWg5NWFXU0UrRlNCYzZwcHNTKzZ6VlUzSDhi?=
 =?utf-8?B?SGE0aHB6S2hPRHZ5R0RocjZtSDJmanJQY05PVElDZmF0NzNtRlBkc1BBT25Y?=
 =?utf-8?B?bC9YeTZsaHhPc0gwbkxYQ2QxZis3bEVIdGkvYVhOTnZhWElIdUd6Mzk0ZzRv?=
 =?utf-8?B?aVZ5Rjg0alYvMzhoUTU2MmhGcXdXV3dxZFM2eGpJSjVuVDV4azdiYm5xelJI?=
 =?utf-8?B?d0tDRzl1Ry9LS3lOb25CVUx5akIzTzNxbElBejM0RGdLMlBoQVZWYmRBa3Fo?=
 =?utf-8?B?c0p2WmpJL0tDYkZjTVFhZVFUS2dvRVNMS0owc0VqT0tLaDlYK1JNZHVmTjQ4?=
 =?utf-8?B?WVB5REdwcEkweWU2c2RqbU5wM0ttY210QmRXQ3JZVXgrRFQzT09xSnZ3bWlr?=
 =?utf-8?B?NlU0bTlZMnJpL2dpUEViano5Zml3STBsK201WXpkME1pWXluTzBxdlliVDVz?=
 =?utf-8?B?OGlnZFFxYTZnWDdsSFJzalRZQitiVUJudW5WMmFIcFhXK0ZaUEZsZkRLQ1FH?=
 =?utf-8?B?RDM1ek5ZWHlPdk8ra2MyUzNHUHNVZkpUSys5d3RpVkFVVldsTTkwRHliR2Za?=
 =?utf-8?B?Ym1nU3BzS2ZWNk50TlY1MHRRNFhpSG9IajZRV24vRVZNYzlzMUNEdjRTcEpU?=
 =?utf-8?B?bnAyL2VKSWJ5eWVUSldUUlY1ZzhoRUZPWEdvODh0aGtMSjZSM1JXaXRLY0VP?=
 =?utf-8?B?WDU1MHhhZjVJQWNEWWxDLzZjVjhrKzJwODVMN3lNUWVQNEFJNERRcDBKc3lQ?=
 =?utf-8?B?K1V2bU1iaGdkcVlCcGJNc1pZODRKL2EzSmdqVnVvUkdMcGM0SFFCUjEySnM1?=
 =?utf-8?B?MFhOMmdIV3JWaHF5aXdPU1N5S1Y2T0FieUxoWUpzTU1Iam5QUzliRE1aRU5V?=
 =?utf-8?B?cHZ3bCt1TlZXalg5bzJsSzBWejVCRUwyQmlJTkpyVnlCM3VKUis4ZDQzenpI?=
 =?utf-8?B?OURTUThTNHAyMlEzUVR4RXJuSG9NSDZuK0FXcjRydGFUY1FvYmZvVk11R2JE?=
 =?utf-8?B?YXErNmR5R2dGVjNmRWUwQS9LNktwOGoyS0VCZHgwR3ZuWDRXbUZtTnFqOEUy?=
 =?utf-8?B?ZGROMFR6WWZYZTNHa2owcjM1VEs1UG5rTkYwM1NuM3BvVUFiWjhSRFpiV3Ex?=
 =?utf-8?B?TTVpejV0UDBBNjVhQm9JV21xRGExVDh3VmNPcFd5VGZpUXU5TTU3dVRZcHIr?=
 =?utf-8?B?MFBXdFJGUWRDMnA1SytRb2ZYdUZWMFhFb2VzekErVmM2eHVnc3RodldsSzlG?=
 =?utf-8?B?KzAzSTdvT2hSUXQrTlN6MVBpY25VU0wvQ1JZQU9xYWZ3SzF4UUdKa2RFbUpY?=
 =?utf-8?B?MEMvTTBtOURxODRFK25MaHZGSnlWZ2E3WXIvTlR6bkdYNEsrNCt0NnMwRGJw?=
 =?utf-8?B?VXVEbGRneXhXQnpHNEw2bVk4QWRrdWdtVHQvdkorTllIempKYmFKbDJSSFp4?=
 =?utf-8?B?U0lsck1xaDI0UjdHdTdwSURNdWpWUkJ0NjZpQzdoSEprK1BYRWZqS01qWHd5?=
 =?utf-8?B?c2lnMWlVTUxVR3VrS1JONWsvMWpyYk15WUlqT3dSdWJ5T2RxaVpNNjNUcnE1?=
 =?utf-8?B?c1hRVlNESjh4Qis0T2R1VjFYRDZOWHRaY21jSWtFZ3pJbWJYZjNiVjRCNXR6?=
 =?utf-8?B?QUx6Q2hyMjhFa3RBK1k2bjl2TkNPYmlsbGk1V2J3Z1ZTTGlyV2xEY0x0STFC?=
 =?utf-8?B?T3hTZlRVQWdlL3BwUGtIRURCRlFIcDZ5WXMzdXU0RVozOTJFV282cWUvYVBh?=
 =?utf-8?B?WXZWMzVWT0s4Q3czbXNVb1ZzNWtJZjlISndsODNIcndFYytzOWFNTGo1YnZ1?=
 =?utf-8?B?cjRhVG5ZR3JlR1RxRGIzbUZ4c0xjNFNXUlNOeDlROWptbXNGM0VjT3dkRml4?=
 =?utf-8?B?UXRPNGk0WlV6elJaRC8zcmlpLysxeFIwd0hmcFloV3JnK2Q5S001S3VYZGxq?=
 =?utf-8?B?eTU0VU9TSlVQbnNlSjlEYWU2VVJVVXA5cTYxOWNVYjNNN1VFMG1wWGVhMEFx?=
 =?utf-8?B?UXFwc2FaTmJNQTA1QklYaTZyTXRSMXNqcXF1WEh0Z3UxejNheGlBSHJjTzc3?=
 =?utf-8?B?M21VaE94aVBKSnBhTEk5cEIvbHI3dnd6WFoxSytaT1FSY0hNSVNpeFpUZ0I2?=
 =?utf-8?Q?CcXWJywUEVJrBxf+KQcmdhBrw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f09ae6a-91ff-4289-695f-08da55316786
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 15:59:50.7623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1KaBJYhrpy7Tz6hkSBK3eTuGSHKCpzRsuxIovnbcygR00fLXL63eMq9ziccTh2TBH0PCFZivHaQ+9uCP+algLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a lockdep warning at error
 capture
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
Cc: chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi G.G.

On 6/23/2022 5:31 PM, Gwan-gyeong Mun wrote:
> Commit message and code changes look good to me.
>
> Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
>
> This is a question about the issue mentioned in this patch, not the 
> patch. The tests 
> (igt@gem_ctx_persistence@legacy-engines-hostile@render) mentioned in 
> this issue ( https://gitlab.freedesktop.org/drm/intel/-/issues/5595 ) 
> are dealing with a test that causes gpu reset / hang? Or did the reset 
> happen during the test?


If the test  resets the GPU then APL should hit this. From a quick look 
into the igt, the test seems to me can trigger reset. The issue also 
mentions other tests like igt@i915_hangman@engine-error-state-capture 
which might sounds more reasonable.


Regards,

Nirmoy


>
> br,
> G.G.
>
> On 6/17/22 4:21 PM, Das, Nirmoy wrote:
>> Missed the fdo issue ref:
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5595
>>
>> On 6/17/2022 1:55 PM, Nirmoy Das wrote:
>>> For some platfroms we use stop_machine version of
>>> gen8_ggtt_insert_page/gen8_ggtt_insert_entries to avoid a
>>> concurrent GGTT access bug but this causes a circular locking
>>> dependency warning:
>>>
>>>    Possible unsafe locking scenario:
>>>          CPU0                    CPU1
>>>          ----                    ----
>>>     lock(&ggtt->error_mutex);
>>>                                  lock(dma_fence_map);
>>> lock(&ggtt->error_mutex);
>>>     lock(cpu_hotplug_lock);
>>>
>>> Fix this by calling gen8_ggtt_insert_page/gen8_ggtt_insert_entries
>>> directly at error capture which is concurrent GGTT access safe because
>>> reset path make sure of that.
>>>
>>> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt_gmch.c  | 2 ++
>>>   drivers/gpu/drm/i915/gt/intel_gtt.h      | 9 +++++++++
>>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 5 ++++-
>>>   drivers/gpu/drm/i915/i915_gpu_error.c    | 8 ++++++--
>>>   4 files changed, 21 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c 
>>> b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>> index 18e488672d1b..2260ed576776 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_gmch.c
>>> @@ -629,6 +629,8 @@ int intel_gt_gmch_gen8_probe(struct i915_ggtt 
>>> *ggtt)
>>>       if (intel_vm_no_concurrent_access_wa(i915)) {
>>>           ggtt->vm.insert_entries = bxt_vtd_ggtt_insert_entries__BKL;
>>>           ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>>> +        ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>>> +        ggtt->vm.raw_insert_entries = gen8_ggtt_insert_entries;
>>>           ggtt->vm.bind_async_flags =
>>>               I915_VMA_GLOBAL_BIND | I915_VMA_LOCAL_BIND;
>>>       }
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> index a40d928b3888..f9a1f3d17272 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>>> @@ -306,6 +306,15 @@ struct i915_address_space {
>>>                      struct i915_vma_resource *vma_res,
>>>                      enum i915_cache_level cache_level,
>>>                      u32 flags);
>>> +    void (*raw_insert_page)(struct i915_address_space *vm,
>>> +                dma_addr_t addr,
>>> +                u64 offset,
>>> +                enum i915_cache_level cache_level,
>>> +                u32 flags);
>>> +    void (*raw_insert_entries)(struct i915_address_space *vm,
>>> +                   struct i915_vma_resource *vma_res,
>>> +                   enum i915_cache_level cache_level,
>>> +                   u32 flags);
>>>       void (*cleanup)(struct i915_address_space *vm);
>>>       void (*foreach)(struct i915_address_space *vm,
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c 
>>> b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>>> index d2c5c9367cc4..c06e83872c34 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
>>> @@ -493,7 +493,10 @@ static void uc_fw_bind_ggtt(struct intel_uc_fw 
>>> *uc_fw)
>>>       if (i915_gem_object_is_lmem(obj))
>>>           pte_flags |= PTE_LM;
>>> -    ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, 
>>> pte_flags);
>>> +    if (ggtt->vm.raw_insert_entries)
>>> +        ggtt->vm.raw_insert_entries(&ggtt->vm, dummy, 
>>> I915_CACHE_NONE, pte_flags);
>>> +    else
>>> +        ggtt->vm.insert_entries(&ggtt->vm, dummy, I915_CACHE_NONE, 
>>> pte_flags);
>>>   }
>>>   static void uc_fw_unbind_ggtt(struct intel_uc_fw *uc_fw)
>>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c 
>>> b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> index bff8a111424a..f9b1969ed7ed 100644
>>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>>> @@ -1104,8 +1104,12 @@ i915_vma_coredump_create(const struct 
>>> intel_gt *gt,
>>>           for_each_sgt_daddr(dma, iter, vma_res->bi.pages) {
>>>               mutex_lock(&ggtt->error_mutex);
>>> -            ggtt->vm.insert_page(&ggtt->vm, dma, slot,
>>> -                         I915_CACHE_NONE, 0);
>>> +            if (ggtt->vm.raw_insert_page)
>>> +                ggtt->vm.raw_insert_page(&ggtt->vm, dma, slot,
>>> +                             I915_CACHE_NONE, 0);
>>> +            else
>>> +                ggtt->vm.insert_page(&ggtt->vm, dma, slot,
>>> +                             I915_CACHE_NONE, 0);
>>>               mb();
>>>               s = io_mapping_map_wc(&ggtt->iomap, slot, PAGE_SIZE);
