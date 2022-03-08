Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBC54D21D8
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 20:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4659E10E495;
	Tue,  8 Mar 2022 19:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C70F110E495
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 19:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646768840; x=1678304840;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dbj3uULNq3ASyNE5qrPJS+Do8D6kj0WoTRIVKlGWAsc=;
 b=lSCFcbgPZO3bQ5Poys1LG18oBLP89FcAD2GU0KQvLJ7DQyEfg6ZzyCgY
 ypd7h+eBjWd1bYlGm+Ox4NpLDWd5zMn9Ce/Lwf9/Fo3btEIDxdr0bgWsw
 0AkLhBZFhPW6H9S/gFg1SW4GURKiF7GBEN/ivGSBIyBeqEhBa0PFGGilB
 xpQOzG71Qv+A5jYe1P1VmzU6BzqgoDSbo3TI3CR7pHk4sHdD2sXBZaGj0
 VhBYaa6YV2fOnOn1+u0yq1f9RVGmktRFCsLAJ8kHZz5MedywPcHL9u6HV
 ZQRQ+HsgLF2ACnEGecftdRDjjpBUCTyyCCqZNKQjbjnds/uoyhxhuhqsR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="341226660"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="341226660"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 11:47:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="641884154"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 08 Mar 2022 11:47:20 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 11:47:19 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 8 Mar 2022 11:47:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 8 Mar 2022 11:47:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 8 Mar 2022 11:47:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CyV7+TsmdKWSTIsmngRBo2FdwFFzMtF+LMPvReZwvLRNIUlj4g7mDDNe/TyZS0ZbmtFbwwzZILQqp2Fe4hnhGNMUErwhDsHhmOr2T5cJ2TC85U2XaXnpDWotglxdVsmuoYx3tFRsCP4m8G8ATEdQhKBTz8WnGPiSKRGNF10sYJx29M7P2lsydvWUgOk3dFnTh7SeZdfS44NwODGoIfVPnz1KG7r504NYxG+YcWGTXBT22qxxXGEZle6rgvEizoWNadQ4HjMD5qACIme1/PQXdodYX9NTgia37QEUTzQYfjtIDMMn8d5Wlmyovn+cjB6E3Pqs2bOkiwKRzMo0FNE/tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P0rg0TotJGxETJklylw1ncAgKO7G87FhMyXLtBjhQeQ=;
 b=CgLF5X3adyFxQr59E4GkRioBYK2MObXNS/EkKztYvUFpD8pACk33intSPLkurXnMTZvMuh5e8lHV2dgEwwObNSG6DU/d69D7SypUM9mNuqRMiNqXKJ6ygWkxRTj100pGhZ2Vmk3LKn3gFlMa7jYCb3FfG9XzlOMMcL+wA2yLZSgiXJLfQCJ3acG6IY+LltH/q7RQYQkIBJLuhcuMvlEgpKBsREoHd51f1RiNfNrZWjyAqvdvUnbHHP6fyvGJOMyc/Fk+bOGsr8wvJTfZmdOYm2dzPlqcnsUY0SbBm8Qs1sgbHROf3ZxHYmlHecRQSCeECrQ7dlngfQw56iZ2KL92WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 CY4PR11MB1445.namprd11.prod.outlook.com (2603:10b6:910:7::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.15; Tue, 8 Mar 2022 19:47:17 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::46d:4904:af57:729f]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::46d:4904:af57:729f%2]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 19:47:17 +0000
Message-ID: <dc58f444-12f6-6a33-1be7-f0fa004d4b93@intel.com>
Date: Tue, 8 Mar 2022 11:47:13 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220226062732.747531-1-alan.previn.teres.alexis@intel.com>
 <20220226062732.747531-2-alan.previn.teres.alexis@intel.com>
 <c4976a17-1254-c893-6501-e6fa6620a855@intel.com>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <c4976a17-1254-c893-6501-e6fa6620a855@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0191.namprd05.prod.outlook.com
 (2603:10b6:a03:330::16) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 57e92974-e01f-41e7-f85c-08da013c736d
X-MS-TrafficTypeDiagnostic: CY4PR11MB1445:EE_
X-Microsoft-Antispam-PRVS: <CY4PR11MB144595E8579C48BA108DA7D08A099@CY4PR11MB1445.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sICeyk+Jo5TwKasa0gv/KU2pBIdf6RACVzSLhp4qr0RBZCNaC2FgMU/7y9s6IQamD7XLgGWsq3Gh6ALSEABw31eiMbAJBWXDM5he5fiIzDjTlVoAu9XmXmqvHFRMAoPQYIb95SLGGRJGveLuIDD3GH2f1WT9VqWIBS+ZoRHfftOcG+AgBKjDIpyloom+pS11/HjXRfZNfirg6sgsGq7uVejAWyiw6qwurqbdXR5PQU7+BoBaWZKaesSA8+aSj0lAoMeex7uIDxxybNixdJyAUTucy4q1Gi+FIPe5ACUkU55SLE45F7yruiMBN5VPl1XeFtpo8E1YrU0xztYwJv6O4TZEoN6fzz/PXbk/Wcxcc3RbbwHU/iRhrjdF1PxnJ05810PiFvX7urJi1be7lvgDX0ImXfrUxwHizcwovungBMQDJ4YisPZls2+EfYgEuPTJlccoEdBGJe9G2bclZF3+FV8f2YdTUL+Pc3Qilmr8E2klE2+aStUzkuGHSqux67zgTgn92FJXElFrWEwXoX0v8lMFfAJ370Q5Su+zrt7k2SxEr1Rr9q7MKAsaCIdJ/2ekkwrTZ32GzsKQFDvlPe0e0XxRiCoL52kKik0+V/0Y5S3VQF7/QXrl95bxnhrj/BuwLoxhFOQYpr1irWYxQJJkAJvtgZoadFfLkGM9jBg2XY0/DL9vSwK/W8FC8Y7EzaLDg8emsKnbrtDKOqSxFcw125rXnc6EoOrCuS9jeVTfLtbmDKD3Xx+mwRsfy62L5wGy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(66556008)(66476007)(6486002)(82960400001)(66946007)(6506007)(38100700002)(6512007)(8676002)(2616005)(31686004)(83380400001)(186003)(508600001)(36756003)(26005)(31696002)(6666004)(5660300002)(8936002)(86362001)(2906002)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1pxMmxkMGFoeHlUQi9jcWV3Unpwakw1bzdKcllLQ3hpYkt3NUs5K01EaDBp?=
 =?utf-8?B?bHZTOHZUY0grVklOMWx5a3dJbm10aDZUNmRqYzVXdTM5RWh3NDdMdSs0TGpD?=
 =?utf-8?B?djJpVjFxQlI0R1Q3emROVTZlL3ZwbUpIVWlyM3lFd21XOVlkOWxPeTNhWnh1?=
 =?utf-8?B?WndMaVBFd21MYjFLYlhaaTFLQllzWW13dU1HeVpwQW1heFBhaVBFa2pTSWxx?=
 =?utf-8?B?ejFFWk5KN2ExZDlOMFBBcTlqSFlzMFpKcUVac3ZwVkZYOTFmV2hlYVRYa3Nv?=
 =?utf-8?B?aWlzUlFxU1NWalZ4U1Y0bmM1Mk1PWVVRbHBxdDVjQThrdGxJSGxSL0dwOVEx?=
 =?utf-8?B?TGw0QUVnd2xvUGkwUDJ6STZWNTh5czZBcGJuME9vWEY0RTc5dENwSFpkU0Fr?=
 =?utf-8?B?NjZaZ0pOZy9BZHdKQW5uZEk0NE5DcEpQdWNUaUJFM2NWTVd5MmVEMXk1YmpC?=
 =?utf-8?B?MDRibEIwdkdJYk9CTW9lNzFIMlZvVTExVEovUlB4TDVZOGhCaXhFQ2ZPMlB1?=
 =?utf-8?B?cE12Q0lOL0RIbFJHc1doRS9jbEJiUkxmbXdsZkRYdyswZ1VrTlUzaCtLalk2?=
 =?utf-8?B?dktkNVVJTExmODI0YVpBYkNMZFJDWUh4SVZWUUVFNnVrVWtLS1RQU3R5Vk93?=
 =?utf-8?B?VHJsUjE0M1dOTmtneWJBZnZWWUp6ckJBOForVmdwOVVNRTFoVlVucUpwdFRT?=
 =?utf-8?B?ZFZ2Y2diZFpvMmRrbFBBckl5SVp0cVRjRWZLNUhzWGEzdDZPczYxeFQvQXZL?=
 =?utf-8?B?SHhNZ0xidkRMd1UxSmVYNks3OERsU21wOHBuQWNFZVZ1Z1MzOFhpOXhobXhK?=
 =?utf-8?B?akhFTzJjY1RGVUtpakJBWHFmeEljVEFGVkJUYlJzdGhSbEhZdjg1VUl2TTVR?=
 =?utf-8?B?SUJqTkcrVmo1aExXMjZiTGl1d1VwQTIzZDZUVDB2djFYM2tQZkp6RlhVNVNN?=
 =?utf-8?B?bXBMT1JKSWsxRWpyVGNkeFdnZzRvZlJpVVVPSUlOWjdzbUxpK2g4ZTFwNlpl?=
 =?utf-8?B?MXRJdXNzN2pqcDlvOFB4NFV0M2FsNmdEUElvc29LRG1zMWpEV0J4Y0ttS3gy?=
 =?utf-8?B?dktyVWlZZE83OCtFWVFWL2pOOWpOSC9vQ25KdjFvcFJDWXI4TlN5U3o1Vk8y?=
 =?utf-8?B?QXR4WmtzVjdPMUtWVzdlZVpPUTMzeXkxMWxTaHgzdlovR0svcWtpYnVZQVZ2?=
 =?utf-8?B?REd0SjRHVnFmV0plaHpQRXR5c2FlV0FISXBzc2xRQjRTUGthR1V3VEpRRHRw?=
 =?utf-8?B?bHZJN2gycVZCSW44d2NQcWV1a1RFS25MSFlHblZqN0VXakJKY1Q5SXdOTE5J?=
 =?utf-8?B?S0hCRUpGNnFGbmdEZUoyek5rN2k4QnhjK2NybUZNeG9YcjRnc1RGcWtCRHlP?=
 =?utf-8?B?YlhaTC92MWlCT0dGNWR0aTVzdnZDUUpBS2lxMUovVjBDM2FWS2JXQnNMTGhs?=
 =?utf-8?B?MWJJaVZqVnZCc0lScHFSK1VOb0V3MTlwdHhXaVl0TEFYSHNmT1R5RDFLVFV3?=
 =?utf-8?B?NDE4Q09vTUpRZWwyMUZYaG90T3lXVTRSZ3RURExETS9ESmZOT1Z4VEl1ZG5U?=
 =?utf-8?B?bExadHJhbTJPQWtQR2NET2NCc1Z0ckVIcDFUMlRQV0tVSTIxOGVnWHdVb1FJ?=
 =?utf-8?B?aGg3VTQwQUE3TVdjZGI3Y09kaE1HQm13SWxESm1yUDVQdHZ1YmRJelBPK0JS?=
 =?utf-8?B?a3J6L00yQ0JGN3VCVDlJd3lORWdwUDZ1SzUzV1JmbFVORGlnNFNmbis0K0N3?=
 =?utf-8?B?ZUJuVU91VzN6b0Y1c0xYZHdCWkZLTDRuZ04yYWcrOTlZR3U2dmJIeWxFU3BV?=
 =?utf-8?B?SnpONWt1VFk1MmxKY2VpdzFnNmNLbjdjZ1pOVlFCVE5RTnR1V0F2aFd5enIr?=
 =?utf-8?B?KzZkTHEyQlU5Q0RJaE9qWUxHZzlzdjhNTlZLWGxHZjUwT0QxaWI3VFZRVUVE?=
 =?utf-8?B?RGc4bmN6REdlSGNlTExhT3UzNGRmTjBzQnpVWmE0UHNHbW96SlZaK3R3SVBm?=
 =?utf-8?B?b1pNaXFDVkFtZnUvWDhjL01Iblp5NGw4U24zbkREbUo5bWtmVExSay9ScWo5?=
 =?utf-8?B?NTZHUW9lZUtvSTRkQ1VYUlk2MmpiSjBIMU1YNEdkTFZjdVpOQ09BYWZmRENT?=
 =?utf-8?B?UlpURUJZNnlxTWhlaXRaMnJ5czBpWjFTWHlIUytybHJyVHlNYzFwTHczQjRj?=
 =?utf-8?B?WVpqZVhLdnhsa2ZQQTcwejIvWThRbXVadkxkQTZMdUlCNW9JVldWUDNrRlZr?=
 =?utf-8?B?aFZSbGwxUG5waUFDaFFLYXliODBONjlFWE9uUmZmNy9wUVlWc1VXQUYwdkJv?=
 =?utf-8?B?VzNzUGdlbnNLRHJnek91WHg0OC95c3ljaWFUd3JJMllSRUpkdjVLZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57e92974-e01f-41e7-f85c-08da013c736d
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 19:47:17.4786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e5/t8SFWv7MnkkyDlKWpvB3MYcp41fyJVbFmCIEieBsNVDdB2g5GkJSG9kQNJE+F+MhxyOUoBctsstJwRUvFAqgpDafpM2I80hSTDlk+sSvo+En6dGkAyeRHZ1mHCmC3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1445
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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


On 3/1/2022 1:37 PM, John Harrison wrote:
> On 2/25/2022 22:27, Alan Previn wrote:
>> ...
>> This fixes a kernel page fault can happen when
>> multiple tests are running concurrently in a loop
>> and one is producing engine resets and consuming
>> the i915 error_state dump while the other is
>> forcing full GT resets. (takes a while to trigger).
> Does need a fixes tag given that it is fixing a bug in an earlier 
> patch. Especially when it is a kernel BUG.
> E.g.:
> 13:23> dim fixes 0e39037b31655
> Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
>
okay, will add that.

diff --git a/drivers/gpu/drm/i915/i915_sysfs.c 
b/drivers/gpu/drm/i915/i915_sysfs.c
>> index a4d1759375b9..c40e51298066 100644
>> --- a/drivers/gpu/drm/i915/i915_sysfs.c
>> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
>> @@ -432,7 +432,7 @@ static ssize_t error_state_read(struct file 
>> *filp, struct kobject *kobj,
>>       struct device *kdev = kobj_to_dev(kobj);
>>       struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>>       struct i915_gpu_coredump *gpu;
>> -    ssize_t ret;
>> +    ssize_t ret = 0;
>>         gpu = i915_first_error_state(i915);
>>       if (IS_ERR(gpu)) {
>> @@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file 
>> *filp, struct kobject *kobj,
>>           const char *str = "No error state collected\n";
>>           size_t len = strlen(str);
>>   -        ret = min_t(size_t, count, len - off);
>> -        memcpy(buf, str + off, ret);
>> +        if (off < len) {
>> +            ret = min_t(size_t, count, len - off);
>> +            memcpy(buf, str + off, ret);
>> +        }
> So the problem is that the error dump disappeared while it was being 
> read? That seems like it cause more problems than just this 
> out-of-range access. E.g. what if the dump was freed and a new one 
> created? The entity doing the partial reads would end up with half of 
> one dump and half of the next.
>
> I think we should at least add a FIXME comment to the code that fast 
> recycling dumps could cause inconsistent sysfs reads.
>
> I guess you could do something like add a unique id to the gpu 
> coredump structure. Then, when a partial sysfs read occurs starting at 
> zero (i.e. a new read), take a note of the id somewhere (e.g. inside 
> the i915 structure). When the next non-zero read comes in, compare the 
> save id with the current coredump's id and return an error if there is 
> a mis-match.
>
> Not sure if this would be viewed as an important enough problem to be 
> worth fixing. I'd be happy with just a FIXME comment for now.
For now I shall add a FIXME additional checks might impact IGT's that 
currently dump and check the error state. I would assume with that 
additional check in kernel, we would need to return a specific error 
value like -ENODATA or -ENOLINK and handle it accordingly in the igt.
>
> I would also change the test to be 'if (off)' rather than 'if (off < 
> len)'. Technically, the user could have read the first 10 bytes of a 
> coredump and then gets "tate collected\n" as the remainder, for 
> example. If we ensure that 'off' is zero then we know that this is a 
> fresh read from scratch.
>
> John.
>
I'm a little confused, did u mean: in the case we dont have a gpu-state 
to report, and then the user offset is zero (i.e. "if (!off)" ) then we 
copy the string vs if we dont have a gpu-state to report and the 
user-offset is non-zero, then we return an error (like the -ENOLINK?). 
If thats what you meant, then it does mean we are assuming that (in the 
case we dont have a gpu-state) the user will never come in with a 
first-time-read where the user's buffer size of less than the string 
length and be expected continue to read the rest of the string-length. 
This i guess is okay since even 6 chars are enough to say "No err".  :)
>>       }
>>         return ret;
>
