Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDB2566999
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF5110E8C3;
	Tue,  5 Jul 2022 11:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8362910E021;
 Tue,  5 Jul 2022 09:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657014612; x=1688550612;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WgHKJi0/9w1GCnAi6YaryTCargxYxu/VVIz782TWkpQ=;
 b=APqEoRruta//RW9IkXsw468Jxiz7eaOZtRdf2P59ZALM+JtUqBUv0itN
 nvwcgqAB9Ypy8Y0CRAMjcukzqtYbPOqfCn+WG2A+ueGyNA4ifGa6gUFiM
 vAagmeU8/hw7aKaiWftCV8zZQ02SybloTMarFIVDVKV521xatSEn5s6mK
 qzAZ5hFm80W+IO4zg7OE0LxUlCHIs+mgIQGw+kYS4dQ6lrrFWsgQqhByC
 YH9b41yGb73esJssq5+yfRUx9//Nf8C0q0t9gudZQqhEYGT6JchFMZBPi
 JRSadF/JJYGYdglZ0WhDqXj7MJQRHh20Wo52+FlCv4lK9C/ZljyS1xk8u g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263733059"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="263733059"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="660488813"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 05 Jul 2022 02:50:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:50:11 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:50:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 02:50:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 02:50:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgBpDN25QiD6w6vGh1K8G112KjV0nYXiqAeLYHoJ44Lg/GQfvb6VEuxmLAfygpvHYOnbloGsEB3HFgLY8B+rxMj4TPNeqMEJSD9LGJ+Lm5YzoQEIrGHOKLoTN/fLdCLn3DDAMIaqWP6oVEawux58nfXGZW7BfWhwdHLfTDYumnljKbu8xPblkMW4rSMWWHDt2omfqd48djEeohqMmROTVB6bS+uRmHSBC1spD5RMGRspODo+Qc82q0gOZlNJMDNSOYm9qW5GPB2CPzy2mOx/2smB3zunALQk4W/ep10tz6LAtSUrFm9eOj38DkQQkf5yTkabwW9hliaVkGC1BUXP3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oMxr602o8o7XuY3klFP2MewvooDxbezjQGhkXLsi++k=;
 b=P07KJdLxiIUUPOsXDQu22privLmFRMAgtBhSz4t8DKSrklFDHHeTKmDW62M8x05MADChXwkWPSdDahbWklFYFeXTcEddHXkgIfSuUmBtL5NFuSYGvIVquXuOg3pux8FKoACpMaYDk5hDT0qf8qtHkRmorvGDVOhq2utgSUfRpi8zjcuJpKDO/eRtQe/OI2dWKytgyO0uEZLXohnfyGhtnzHJqUrR+B4dDpH/tgBiC5lF4rZ5gztX1MBzLEhxwEYzQp6OkE57lEb199/G/I5IzY3gm1SIj105CKoD01epcmgRANFEWE2mXlVuuij9V2mhAL6d6rYlfNmwFWKaEisvPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by PH0PR11MB4805.namprd11.prod.outlook.com (2603:10b6:510:32::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Tue, 5 Jul
 2022 09:50:08 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::f887:8e4a:3a5f:f23d]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::f887:8e4a:3a5f:f23d%5]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 09:50:08 +0000
Message-ID: <9bc05a2b-771c-0d64-00c5-dc6432d2eecc@intel.com>
Date: Tue, 5 Jul 2022 15:19:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
References: <20220628110409.768308-1-arun.r.murthy@intel.com>
 <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
 <DM6PR11MB3177AC16AD97327BCBEA3C39BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
From: Karthik B S <karthik.b.s@intel.com>
In-Reply-To: <DM6PR11MB3177AC16AD97327BCBEA3C39BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::19) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87c28ae8-24bd-433e-5750-08da5e6bbecb
X-MS-TrafficTypeDiagnostic: PH0PR11MB4805:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xL7NDQOyeAVjYKWSsSQG/f5dyGFH5M8c0/El6leJXJsrkgQQ24RnDOnAXb6D64uQ+u1rfRgR9TEFRMw0KvjfQFpaLKQRY9ZkVsqr5KMAIBcY/yUT0bv36I9FGnwEPB0QLz4JpbG+34aJ0Gfosz6dOVmjgGG1gEx4l2LJRRq9yTqibYBFSMT7UzCqqcQl2S3mDvd/qWkOBGbL4lUYSUQxmdoBXp9i5j0n2vKp0BbhF0kgOLYj8hmODiwUFFsmSgdLB6ZLkXDxMJEOdan1RTl5yIBKLztY7rIpeimjBDdRjBcmhtMW5TvcdalddyqIkE5vWauXOb8gsPuBrxX195/Cme0iIWl0MoM28KrrcP8jlbk2Ib/b3hxfNlYhwqvt1ueeo+oT5DTNxLguWOMGaLDS5DO1kAbgfZeabxMvuNdP7jhNfnfjssBoLz3ETziN+u1TET2Mwmc1P/0rn0CLWLQT2yjWEzj5OhxqI81aRSpE53QtEuhgfDOT5PJS/vQyVF7QiS54HzuB1rpr4glpgQDdwcIXXZlMSHG0utD4ZD32BVO+1u5XJPWb3THStVInjL0CVrhYxion58+sGExEmiJ0olCTWMMaRtKwCdwhAZftIw/56wib21VryZAYeC8uzHlnO61HGfHUUgcL7S6ZnBi0RFfVfYL9J2Jm/DOtxIhjNR4nDM25emw7JWLDeoSD43ziV6jG4iUm2pDMl+yrsofZktRZaY1GTHzvSFE4bovCoTJdIPJ1w5jUiwqAgjTqZ8ZvmcqkEfcgnivL/ZRbiC2Sl/15qZF7ewEEeW7n9WTZv6iraQASKF0M+nQayzKZd50SaJ2AJvSnPgTv0v/dHWjDuw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(376002)(346002)(136003)(110136005)(54906003)(86362001)(31696002)(4326008)(82960400001)(5660300002)(8936002)(38100700002)(316002)(8676002)(66476007)(66946007)(66556008)(2906002)(6666004)(6506007)(36756003)(83380400001)(31686004)(53546011)(26005)(186003)(6512007)(41300700001)(2616005)(6486002)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bExlUDUvNUFMNzV5c2gwM202S1BYSnZyaW9Eaks5bGxmN0JtZUp0bUQ5cEI3?=
 =?utf-8?B?N3MrMi9kSFBVSzhSL0pveEhoUjNNdStCSDdZLzZBTlRiTmhiOGx3dVBnS3dr?=
 =?utf-8?B?VTFTZ1hWSVRUakZybjlNaW85NHZTV3BGM1FhaEtoL2x2OHNtVU1JWkEwSVRi?=
 =?utf-8?B?Yk1USFZuL2VjKzVOZUdqVVdRL2hqRW5ZRlFKTWRZcCs1Q3E3NDJRQmpEUFZx?=
 =?utf-8?B?SHhrRXBpdlRWeFZIYmxLbjJhSEw3V2dGMytIYmE1dG1OZ3ZHbVYxVFJhbXlI?=
 =?utf-8?B?RzE2SFBjZnlaT2hQSjgxRkdhUTFZaXhJd0grYjU0MkhzM1lHR2k0NXZrbDY3?=
 =?utf-8?B?alJZK2MveU9Jb1ZFdC8weHplMmdlRzNoenpGaldINnZ0MmExY3pMK1hEVU5J?=
 =?utf-8?B?NWFCZHRiV2xmSFdoVkk1UnRXZlJLYlpVcmxrd0xlU2NxajR6Y2xoa2hYNDVq?=
 =?utf-8?B?cWtjVm5KSDE0Y3ZWeEt3YVFDWWhsbmhJS1VhNHpYUVl0R0pXRVNDS2tsRE1M?=
 =?utf-8?B?alkxL2ZDWm1kbGRpYXRDUXRNZHBxRFQ2NVhQSU8ybFBvdnpWRjMvcWpzbmk4?=
 =?utf-8?B?M2lxb3BBTE53QUtwNDVZYmtnT2FlajRESEJNSGNxY0lHZ3NFWE0wSmVXRFNm?=
 =?utf-8?B?bGZiWktLSTZGcFgzcmx1WU4zZjBQaXNhSVc3L20reWJzQVVhU1lNa0h6Rldt?=
 =?utf-8?B?cjR1Vlp2THRKeU1FeVE5VXpjUmRWbTViUko1MWFma3hBOTQ0NGVWK045Ulcv?=
 =?utf-8?B?a25MTi9QUHRiZ1ZQL1ZTaUVNdDZESHBUY2N2WXJxbGNPNjlWM3Z2ZVgzbEtL?=
 =?utf-8?B?WXZoUnNGc1dZZ3BLZmhML2h0ZkJVc1hWbzNsZkVjdnZNSzg0Rm9PZVdkNnhR?=
 =?utf-8?B?QmxYSjJWb2owelcyOFVBdzJSdWxOaGlpSEkyanJvY3cvdzJHbHcvclNVMDJK?=
 =?utf-8?B?MjFhUXZQazRIZlAwQ3BHUDBNckRENGp1MlNMRE5NeDg3MVlCWEhodWFLNDdN?=
 =?utf-8?B?ZGZIS2FKSEhkYmsxbUhVWVdxcHorZVhVaU9sRm9vdVdUa0lQbjNhOCs4SEV3?=
 =?utf-8?B?cnlOZS9HMm1hU3VUM3g3WTcwUys4N2U1TkNZNFVvREhGaUkxcmxFSWhDaXJa?=
 =?utf-8?B?TTRBYjRIYmxBcEovRGlqZnRzYUtyYWRMYTkwV0FZY3p1VkFkdS9PRFRJSUov?=
 =?utf-8?B?bHh6R0owc0N1YlNGejRVQWU4aGJvbG9CTGtkNkxpUjRoRm5DcFlDQ2pGblJ3?=
 =?utf-8?B?NHRHYVVlS2pFd0EyYkJGVFlqQTkwYlM2dXNSanhvWVlBcGVjcEVUWHBQRFJq?=
 =?utf-8?B?eTFOcFJWVFRESEUzaWJ2T3YxNFhXSHl0VitTYlAwdUpFSGcvYkFDM3lMbmoz?=
 =?utf-8?B?MFlaTENvdGpXS1lYRzBTUzUvZytYOC9BSlZEN0pHTGcyRzdxTHhtYmhJVWox?=
 =?utf-8?B?UE5IbUg5RGIyNlVrVlQ0N0o2ajJsWHpCZVhmS0YwQk4wWnRMMTZudXdLcmNT?=
 =?utf-8?B?TEowNFFnVWxiYnEyblYzRldaOUdPekp1bDhuVG9UTmdQRFByZTdIQ0tRSWcr?=
 =?utf-8?B?Q3dUZVB6WTcyeWVuMDhHVmJHVzlpZVpxWUthb0ZZYVE5SENza2lVNzNRajVo?=
 =?utf-8?B?TFhBcHpmYmEzT2V5Zks2VU54UHd1RWlDU1lwWTVBSjNvbndpdGpzd2FkaXcy?=
 =?utf-8?B?bi9HN0t4aVRGeGlqK3Ezc1k3c3BFRnhhWEhKNnJjd0hSemFLRXduMzdlN2gv?=
 =?utf-8?B?cUVmMUlpMXNyZjVvbysvajd1SEVHMFdJdFpRZlpqaG4yeG1aS3FuczViTFhJ?=
 =?utf-8?B?eFJRRDBYWkJqSjNMUEV6YkJlVlZBclV3OUdvbmRJTithSEhwN1JWem1lM2xN?=
 =?utf-8?B?anR0Y3E1VWRnQU5NeFUxTndRRU1oaEdkaXZ4ZHB4ZHJjTUJMdFBrNUVIdmRy?=
 =?utf-8?B?SWRDZXkvV0dpRG5lY2p4ZUNldnpxVWRiWThvWU41VFhOSVRZZDM1UkRzeklY?=
 =?utf-8?B?ZTNHUFlWSkxnV2E0TVpXR0xsYjBDcnRVcGVsT2JyK3JDdE9TZHFkVFZvYU01?=
 =?utf-8?B?L1JWRGxVcm1COVBrS0o2YzZVUjRXaEJUUDJNMGIwRno2cHJJeklEL3RBdkxZ?=
 =?utf-8?Q?/Tfw7tuL6+R/rUbs8EWQusS0v?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c28ae8-24bd-433e-5750-08da5e6bbecb
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 09:50:08.5292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47k2jCEdaEw8Ax+vOJ+hOYMQ9TxFZbO1U1RurVVGaEX/M8jQsEWYs6hMFk+TYO75r2QedL7NmIaGaonV/vZDVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async
 flip with a dummy flip
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/5/2022 3:08 PM, Murthy, Arun R wrote:
>> On 6/28/2022 4:34 PM, Arun R Murthy wrote:
>>> In oder to trigger the async flip, a dummy flip is required after sync
>>> flip so as to update the watermarks for async in KMD which happens as
>>> part of this dummy flip. Thereafter async memory update will act as a
>>> trigger register.
>>> Capturing the CRC is done after the async flip as async flip at some
>>> times can consume fairly a vblank period time.
>>>
>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>> ---
>>>    tests/i915/kms_big_fb.c | 29 +++++++++++++++++++----------
>>>    1 file changed, 19 insertions(+), 10 deletions(-)
>>>
>>> diff --git a/tests/i915/kms_big_fb.c b/tests/i915/kms_big_fb.c index
>>> d50fde45..6caf3c31 100644
>>> --- a/tests/i915/kms_big_fb.c
>>> +++ b/tests/i915/kms_big_fb.c
>>> @@ -465,7 +465,7 @@ static bool test_pipe(data_t *data)
>>>    static bool
>>>    max_hw_stride_async_flip_test(data_t *data)
>>>    {
>>> -	uint32_t ret, startframe;
>>> +	uint32_t ret, frame;
>>>    	const uint32_t w = data->output->config.default_mode.hdisplay,
>>>    		       h = data->output->config.default_mode.vdisplay;
>>>    	igt_plane_t *primary;
>>> @@ -519,7 +519,19 @@ max_hw_stride_async_flip_test(data_t *data)
>>>
>> DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
>>>    		igt_wait_for_vblank(data->drm_fd, data-
>>> display.pipes[primary->pipe->pipe].crtc_offset);
>>> -		startframe = kmstest_get_vblank(data->drm_fd, data->pipe,
>> 0) + 1;
>>> +		/*
>>> +		 * In older platforms (<= Gen10), async address update bit is
>> double buffered.
>>> +		 * So flip timestamp can be verified only from the second flip.
>>> +		 * The first async flip just enables the async address update.
>>> +		 * In platforms greater than DISPLAY13 the first async flip will
>> be discarded
>>> +		 * in order to change the watermark levels as per the
>> optimization. Hence the
>>> +		 * subsequent async flips will actually do the asynchronous
>> flips.
>>> +		 */
>>> +		ret = drmModePageFlip(data->drm_fd, data->output-
>>> config.crtc->crtc_id,
>>> +						      data->big_fb_flip[i].fb_id,
>>> +
>> DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>>> +		igt_wait_for_vblank(data->drm_fd, data-
>>> display.pipes[primary->pipe->pipe].crtc_offset);
>>> +		frame = kmstest_get_vblank(data->drm_fd, data->pipe, 0) +
>> 1;
>>
>> Hi,
>>
>> Should this be added inside a gen check similar to kms_async_flips?
> Yes sorry missed it!
>
>>>    		for (int j = 0; j < 2; j++) {
>>>    			do {
>>> @@ -528,23 +540,20 @@ max_hw_stride_async_flip_test(data_t *data)
>>>
>> DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>>>    			} while (ret == -EBUSY);
>>>    			igt_assert(ret == 0);
>>> +			igt_pipe_crc_get_for_frame(data->drm_fd, data-
>>> pipe_crc,
>>> +					   frame, &compare_crc);
>>>
>>> +			frame = kmstest_get_vblank(data->drm_fd, data-
>>> pipe, 0) + 1;
>>>    			do {
>>>    				ret = drmModePageFlip(data->drm_fd, data-
>>> output->config.crtc->crtc_id,
>>>    						      data->big_fb.fb_id,
>>>
>> DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>>>    			} while (ret == -EBUSY);
>>>    			igt_assert(ret == 0);
>>> +			igt_pipe_crc_get_for_frame(data->drm_fd, data-
>>> pipe_crc,
>>> +					   frame, &async_crc);
>> We should be moving this IMHO. By waiting for vblank after each async flip
>> to capture CRC, what is the intended result? Seems to be completely
>> changing the existing test logic.
> We are getting the vblank count and based on that getting the crc. Now we know for async flip at
> certain times it can consume a time equivalent to a vblank period. So in those scenarios getting crc
> based on the vblank goes for a toss. Hence capturing the vblank start time stamp at the beginning
> of each flip.

Hi,

But what is the the reference CRC we're expecting? The original logic is 
designed to match on one iteration and mismatch on the next using a 
combination of fb's by using async flips. But with these changes that 
whole logic goes for a toss?

>
>> Also, seems like we are overwriting the CRC captured for j = 0, as comparison
>> is done outside this loop. Is this done on purpose?
> Now with the changing the vblank start frame capture being added before the async flip, CRC can
> be captured outside the loop as well, but makes no sense. To maintain this order moving the CRC
> Capture also after each frame.

The CRC comparison is still outside the loop, so no point capturing 
CRC's if we finally discard it anyway?

Thanks,
Karthik.B.S
> Thanks and Regards,
> Arun R Murthy
> --------------------


