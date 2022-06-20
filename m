Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A46A5520DE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 17:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F3B210E035;
	Mon, 20 Jun 2022 15:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2075.outbound.protection.outlook.com [40.107.237.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE3D10E035
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 15:28:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RFXzReErgg6yqVUOybTGhmWBhgTH7f+ftN6SrLZMNLjUGm3RLFr4tmFy2UObe8w5wv0gQUgju60EVSd1Ksqs1OTK94iAQby7RzPTIhWZ0kx6AAWCzU4DG1ssSQNNCbUIS8k9JZqnF0xIDQEE1RpEVVotiNf6dEPtyWmPH6fIrRGXrmQ3yvDwAknAlHTTIDWqBhYMPwIcK8DvoavnDtRCmDZ7Bo5cbsNss5kAtiFgI9Kpq9GbGpC8iAbfYMxHMvX8S/DkTI7Rz+Yx6Z4ieA65NojfNYesjOzxk4QncCQebMbNmxgQCYPy80tJOWbLDSMkpPxL65H1PHsdpxJmIksl6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P4VztCuHini3EDEEBcnLgbDgVttZUuutP2Z19rqYzkY=;
 b=d2/UdzbuJf2WCGTtsn7rw2seql4aeTCXr4HRpdfotqXw4iThgea+haRtwCjxOKbCiFAcLqP8o/BzDGW3bsWNdMGIQ13srkvQ3Z3cKx/fJ2pieNYP/o+MvPnFWe7gfWS7TDCPYJq7ic5b+iwdP8aAjx53uYXcqZd9RSG8f/b3QuqalvrGHA7fOMvNABC28exgsx2rh/+K95S7+9rN1I/8wFDTES3gX40VyyT3mCzvVqb5ts7poweGvdf+s7Z/Zsp0zwUkDs6StWQelSQdJiFDUge8o64mV7BRMIWik2py/79/s43W1xPBYxPRtOoayver+NRO9uWh1lpJgagmxO0LLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P4VztCuHini3EDEEBcnLgbDgVttZUuutP2Z19rqYzkY=;
 b=syqXZcGT1l/ZSw37m3+xM95U2y1NUC4aH0qtb8OWTy1ThMznlJixgkFPvNh3btGBojMI8gHXyxkl0V69u1vKUWfxdBowUzUMWtTR821elYm7FbvA7L/2qVSRXDK38nYD2l2bVbC868qUV63dipU4itwagiIaPMGXyZ5JCMFJVXw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by MW3PR12MB4492.namprd12.prod.outlook.com (2603:10b6:303:57::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.16; Mon, 20 Jun
 2022 15:28:31 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::e0fd:45cf:c701:2731%6]) with mapi id 15.20.5353.021; Mon, 20 Jun 2022
 15:28:30 +0000
Message-ID: <27e6f4ec-0906-0d57-af9b-ebde534b68b3@amd.com>
Date: Mon, 20 Jun 2022 17:28:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Thomas Voegtle <tv@lio96.de>
References: <0249066a-2e95-c21d-d16a-fba08c633c0b@lio96.de>
 <f1a52ddc-5aad-cc76-282e-93206ae43477@amd.com>
 <70395b22-1857-2a25-1472-17ce3df22607@lio96.de>
 <6cd161d2-5caa-65c8-6b86-5992cc15d1af@amd.com>
 <957926e6-2462-4c42-b57f-9cfbd9fe7024@lio96.de>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <957926e6-2462-4c42-b57f-9cfbd9fe7024@lio96.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AM6PR0502CA0054.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::31) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 635de086-8742-4452-33b0-08da52d187b3
X-MS-TrafficTypeDiagnostic: MW3PR12MB4492:EE_
X-Microsoft-Antispam-PRVS: <MW3PR12MB4492B4A624A2B4B43B76B5F683B09@MW3PR12MB4492.namprd12.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gsFN0BXtklD4KlgKzRMqmD2WMkAVBjYNOuKcWeZTgpBCBoy9JXzfzjnUkRuo1YlNdHGuOzUqIOkSnF1CYplzyQU8hRMvYBgmIr6LlDzSEm1aCW6vEdCh3QF65YzgvwNAbcu3xhyXbKdYcUQ5SZebOb4ajiDQ6WQk+5jmAflaKpj4RAf3gqFHjie8RDOxPxf/wHea8i2iZgR2dc+/NWfqCsObZsnagENzLupkIMwza1uEaPtlmCNMLYOA1mP4uKYBfCrGyVpdkolS31LyZTRJawOeJL/sIsCq9DRpjUYJivAWNKz489FzRTczC8XWVmiMkPX+GWNWaIZpG6CDoAcPtPOgUwno+dnmk8P8HYZwq6kYMHncMRk7GsHFBndWvfeLSXyS19URP4vEces0kJW5Vefi/DMeoGle8cxVLAq2IS31nN6UOQzED7BdQK5RHuSNmqrFbsP0Sy554vnPMeirWpzAU7kq9K7GkbCfETfAsc2TQ7AxrfpEXLnwTL7GpwvqSEMMvq7ohna8PCCxyILxfvW2PA5nYmbSusAVt/B018yqlf3quRuHO4IZoEv9FHuhXGDe4Yn58zWIWg9SfBBpdf5gCPPMRuNIDDgd3DZhexdsdMQjog1JLSWhY5bui6YyDQsGxJZevWZR8s51/cNxBzipvTcMbDoAqLPryL+Ct9jUi6m9uJSOO6gl+GrFsuP0EooM8dInsyyo7UrWEtJJ5GrDd1SAXX0/KSOvrryGaJaMz/wJY+k5/KeVyussRJCJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR12MB3587.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(4326008)(6916009)(66946007)(8676002)(6486002)(66556008)(45080400002)(478600001)(66476007)(186003)(31696002)(966005)(86362001)(6666004)(2906002)(2616005)(316002)(6506007)(38100700002)(6512007)(5660300002)(54906003)(8936002)(36756003)(31686004)(66574015)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TklxNko1b3ZnVmNETzVRMVBuRnRjT2xZRlVjRmFabkUxdG9RWEpJWGd0Ym43?=
 =?utf-8?B?aFFtNDRBTVR6elNST01nNHo1ZW5QTUFWRDhWL08rSlFGY1RsbDhTek8vR2NU?=
 =?utf-8?B?OW5sN2lUYnVENHlIZTR0eWVVa3c4MDFtbU5mZS9UTkdubW1xRnRPYnFWM1or?=
 =?utf-8?B?WkE1ZEpmMExBR3RRVXBCNktrVWpvdlQ5bDgzY2x0Tkl4bjRzK1o3RDVrVCtY?=
 =?utf-8?B?NGhiVmZWSjNTNEIxNG4vQlNicFF6NnJsaitZQ0hTUW1KQlBRcGliSHVtVTk3?=
 =?utf-8?B?eTNLakJjenRFalRuMXRIakxhQTkvQWFUU0FaaWxCR09VWEZHYVVQaUxHWVc5?=
 =?utf-8?B?ai84dGZ3STUyQng0NEpmbFdyZ1hTc3ltUmlQOFVTbFg4SUpxaXVSb3MxSDhu?=
 =?utf-8?B?YVpSRENJN2p1NHduNjQvQ29GaHo3WlliL0hFeUFLRE52dnJ2ZlI4SVA5c0hM?=
 =?utf-8?B?ckN0Q2xDaGIyTFYyTkovSm5kVk9Qc3phRkwzN284R2UyL05jK3RVaTZFancx?=
 =?utf-8?B?ZUJrWnZFRk8vMjVZK2ZEMU45MjBMQXl1TmJBUXU5SGxib09CR1hLMjduUzI4?=
 =?utf-8?B?QkNnU1haWUwrRDVGd0wrQ1QvU0V4cHZVOUNMQ1lOKzc0TnhaOEVVUG9kRjc2?=
 =?utf-8?B?KzdaOUNTV0ZUT0pZK1BZcGViKy9obWN1b2tSS0g1b1RZbTU4U2JpbFJxckV6?=
 =?utf-8?B?TmtwSko3SkwzaStlYnh0d3ZFbEJjWDZ2a1VPRGNQRmdveXhXQ0F5ZFJjcGda?=
 =?utf-8?B?MVdqZm8rK2YzYXJ0TnpnL0RVMHNWdGEyNWhXUGovWWVCQnpMTTZScytxODdK?=
 =?utf-8?B?SE4vMThtejJ1VFBMaVFqRC9aNDRZaUNkZXJsQmY2cjJMNm00bk1yRzErNTli?=
 =?utf-8?B?UkcwQVNwZDJuT2hkV1ZxVk5PU2x0VUZlS0wrYVBGRjR4blNLODA3U2ptZElY?=
 =?utf-8?B?WG9iVjJEU0VnMVh2TTE4alBQUFJBOHdiT2hyYTN2aVRwVXFYVzVsMlM3MWln?=
 =?utf-8?B?WnhHQnZBMlVPMExHZFkwTlZVc2dKeTh0NlAxWHFnVE44TVlDSHovNHMvNk5H?=
 =?utf-8?B?aVJyaEgwdTlnNWIvMTJPMUJIS1pHenA3TTlRM2Jmb3NSZmJFbDhYcTU2YXBP?=
 =?utf-8?B?NUJpM0Vac3JiVjVSMXdNZkNYZnpNTjJZeGRCMUNVemVpVlZ5Q3MvWjFGcEgy?=
 =?utf-8?B?ZjQreHJKZEJ2MDJvQmplVUZiOERDejFUUGZzUmpMWUlqUlhlNWxVaFFHano3?=
 =?utf-8?B?UVlDZDROUjZGamRwOC9yaU94VTl3dXNiZ29JbUhOS2lWNGN5RDZVRE1jQU02?=
 =?utf-8?B?K1ZVM1NnL2g3MzFjMUxQMkRRbko4dTFoa1hhSlVXVWZyc1puQW5UQ1QvcW50?=
 =?utf-8?B?alRwaXBNWUpMc0w0VloyS0IyMUhaUzNnSFRGNU9IZ2svclJacWtuYTMxNlJv?=
 =?utf-8?B?eVVuTnExaCs4cGI0b1ZJNEt0cmk3a0VSZm1La3ZSNmI3YnRLZHBtb3k5Rmcy?=
 =?utf-8?B?WjdudUpWY21nUUQvVENEZDRtK0NaWGl2RnA4YW5qTkw2aVJhUDZJRTZMT2Vp?=
 =?utf-8?B?dC9VM09HQnVjZEdsMVY2VDlCSVZxV0dzb1JoT09SNTBzZkplQVdiclMxQTV0?=
 =?utf-8?B?T2dKYUYvejJ2MTRxVVdhRWorWnpaLzZIR29yVmFWR0Y0RHNqNEMrWW1VU3BI?=
 =?utf-8?B?TjkyenllK2g1NlBlS3BsOHNYNEN4ZEZmQ0wzVnZPQ0NZWWw5ZVRmSkxLdnJN?=
 =?utf-8?B?K3NSNjVXa2VrbzcrT05jVjV6SUdvMUd6eHM0d2MrZVF2dEJRZ3gxY2h3dEVR?=
 =?utf-8?B?b0MrOFE4c3ltNFpLZ3h4TWNGYVJsOG5rbEEzbnNyN3dPUDJHbE0rbU1tYnpC?=
 =?utf-8?B?NVBFdzAwcy9GYitibUZ2bXBCY0lNQ0VYNXlLeWducXNZSnB1UkRnS1AxNllp?=
 =?utf-8?B?eWRyYUg4QWpRNXFHZFZsVkdJck1uZ1o1aXp5VnRmVDB5Vlc3QjduUFhXUHVt?=
 =?utf-8?B?NVJWUkoyTDNnNSsxSG1VRE1FZkRFK04yRWtYc0VFdDQ2L1ZxV0ZmSGxHeFVy?=
 =?utf-8?B?UG8zU1BIQWVKcVlLZGhNR2dzMkRFeXRPTmVGaUt4VEx2MWVNeTM1Sm9jcFhC?=
 =?utf-8?B?ZDIwd0M2Y2ZtV2pIbnlwdUNtcExrbjdvMWlkV0ZLL0VWR2ZrTmhZZlFKR1Bk?=
 =?utf-8?B?UXRUZDFvZkxGU1BueExUV3VXTDlseDExRmlGVmsrVXhpbFpzMEorODlBSWFv?=
 =?utf-8?B?MVlrRC8yL0tQdWNDNWt3dFJzN3VvQkZGY2cvOTJpVThRdHltcm9mN09ldUNF?=
 =?utf-8?B?VktOaHlHN1d6b3BQc3pFbElNcEtlQ0lkZ1MyZ0kvUXo0WFJBejl4dnVDRk1a?=
 =?utf-8?Q?7Bfif9wfjaGftvT9WDjRlI6jm3FyxxOooTdgKXQ2gQbH7?=
X-MS-Exchange-AntiSpam-MessageData-1: kWdosGGYAbR8Ww==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 635de086-8742-4452-33b0-08da52d187b3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2022 15:28:30.9188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LkiHsgjYhjK4xmE8G0CYpOTyU6VjmwgoxhlKEpI6r+wZQxYuRjILm+YqrjZN8Xi1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR12MB4492
Subject: Re: [Intel-gfx] Performance drop using deinterlace_vaapi on 5.19-rcX
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Thomas,

Am 20.06.22 um 16:31 schrieb Thomas Voegtle:
> On Mon, 20 Jun 2022, Christian König wrote:
>
>> Am 20.06.22 um 13:40 schrieb Thomas Voegtle:
>>>  On Mon, 20 Jun 2022, Christian König wrote:
>>>
>>>>  Hi Thomas,
>>>>
>>>>  [moving vger to bcc]
>>>>
>>>>  mhm, sounds like something isn't running in parallel any more.
>>>>
>>>>  We usually don't test the multimedia engines for this but we do test
>>>>  gfx+compute, so I'm really wondering what goes wrong here.
>>>>
>>>>  Could you run some tests for me? Additional to that I'm going to 
>>>> raise
>>>>  that issue with our multimedia guys later today.
>>>
>>>  Yes, I can run some tests for you. Which tests?
>>
>> Try this as root:
>>
>> echo 1 > 
>> /sys/kernel/debug/tracing/events/dma_fence/dma_fence_init/enable
>> echo 1 > 
>> /sys/kernel/debug/tracing/events/dma_fence/dma_fence_signaled/enable
>> cat /sys/kernel/debug/tracing/trace_pipe > trace.log
>>
>> Then start the encoding in another shell, after it completed cancel 
>> the cat with cntr+c and save the log file.
>>
>> Do this one with the old kernel and once with the new one.
>
>
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2F32h.de%2Ftv%2F5.18.0-i5-trace.log.bz2&amp;data=05%7C01%7Cchristian.koenig%40amd.com%7C41a052960a4d4f7dd38e08da52c99097%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637913323382588469%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=xv8vLUuBq37sBFcGxdua%2FnNQ51BiN1USn30ehP8bys0%3D&amp;reserved=0
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2F32h.de%2Ftv%2F5.19.0-rc3-i5-trace.log.bz2&amp;data=05%7C01%7Cchristian.koenig%40amd.com%7C41a052960a4d4f7dd38e08da52c99097%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637913323382588469%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&amp;sdata=xuBVrQMQ%2FDK3Gv1qN%2FntJ9NjXOZxD6XVkmDCWfG4K44%3D&amp;reserved=0
>
>
> I hope I have done this correctly.
> All necessary tracing things switched on?

Yeah, that looks like what I wanted to see.

>
> I want to add that this is a headless machine. No monitor connected.
>

I've just realized that you aren't even using any AMD GPU for 
transcoding, so I have no idea why removing the AMD specific workaround 
can cause a performance problem for i915.

It must be somehow related to i915 now adding some additional 
synchronization in between submissions.

Adding the Intel mailing list, maybe somebody has a better idea.

Regards,
Christian.
