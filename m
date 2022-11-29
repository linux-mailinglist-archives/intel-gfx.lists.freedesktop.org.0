Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 694FC63BEB8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 12:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A1610E266;
	Tue, 29 Nov 2022 11:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841CE10E266
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 11:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669720607; x=1701256607;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4PVnWnVZ2gukBMribG5beBZH18Xhhv/sepXXwsqhHKE=;
 b=UgtMy6IoFx6KaxBSrhIadhMqgbMtGndD7He9DvrhjUREZRnvuvC+RfNT
 VSvOmd4hZevAvle9qLOk4gHUmBzR5T8PUIIY+ZDKRlibTXWY/FHiip9b5
 z++vKbDjXum/qAYA7YOhhCwgq7Ap5+0HOE0VP2tAePKm6S4hUGyuP+HWk
 Z7BJnubzXJXsXRJPNJukSirEjXGcwzOxyEL+XDbo9fKArh/ohNlVYnXlt
 OPNQmF8ZYNZSV8nBr17+redjnJpwXJYhSMYgB6jU68G8K8OjwKDayV5rw
 pZfBtIaryemyffo9VBIdNWjH6QcZ/+RR4ZIFckxijixogEFv71vbL8ixi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="401374264"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="401374264"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 03:16:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="768395660"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="768395660"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 29 Nov 2022 03:16:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 03:16:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 03:16:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 03:16:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 03:16:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KWU+XIWGkI4l3dg9ZKeIh+rAaD8A/3b9AsElnIeeI70qOULa+hE2Y9l8V2pJZB71C/MVzsci6c271nfBQY1TfLLVWQ5SF0HZbLii6v2bgfyEWcAsJkYuTkM1z0sZOU4xF0JhhrlRYGO7z5QjO7OmwI+jH/rOwOwPV9GcUHCmZBKCBplRFfYco75y/7wqPswiDEspp9VzqAjWr8s4KAqXjlBzPzRshTdogDlHtik1fWzBDIUJfxQJ3sNyVxjTU/PxVBSTqW3VkIwuqVYx4Pgajf/BfbixoQ2gKH5ysI6xiyGLGTkkjZTfrJevOV5ZKbfOnJir1WurlE3lo5z1We+g0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZIiw6WzU0pkukBnB/86aU+S2NR/nLWAZ1YBMizsiNeg=;
 b=lyugln1B2nRkeXxL2B5K2Hws4T/rQiOSI/52xP9vEqZhYJeCoMDY8CwzmjcEt6hquhC1VymGYu06oqYfoArq/pJyB7UNg4L4abEgNx7Uh/rbJT/f8JJKX/liuseg/CsM16Q9L6ErgWE8Yf07s8corXTQQAwr9izz++2h3wcnZA0GeLC+80VniRKRXsx6DXHdHIwkJydHtlG69JA9231AYutGO1CeEkbFVJiGkSVRxv1HJUSyfPVablm60uoYgwF6NydreWp5R089SzdbMSelDg4mtfqNQyfJzx9pSrC7DPNjTvbOxTrtS9JKk1uOfsNlXfRLxhrgxtkB8GIGEuRu2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by CO6PR11MB5619.namprd11.prod.outlook.com (2603:10b6:5:358::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 11:16:43 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd%8]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 11:16:43 +0000
Message-ID: <31004d50-1504-cd75-a15c-b2f2c61f0bd1@intel.com>
Date: Tue, 29 Nov 2022 16:46:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <6cb639bfc8e0eddb3fece1b058e8ab6444f98fb2.1669629369.git.aravind.iddamsetty@intel.com>
 <20221128201933.5aifg3cyrkda3l4m@ldmartin-desk2.lan>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <20221128201933.5aifg3cyrkda3l4m@ldmartin-desk2.lan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::9) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|CO6PR11MB5619:EE_
X-MS-Office365-Filtering-Correlation-Id: a416c8f3-4b9d-46e9-6d60-08dad1fb31d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uV1g9exXFldhArmSuEe7s8BJHuaASsS+JBY0UW1U2U+QIrZ4cA1xYG+RKagmSAdbsZr6EX/f5NaCBpSpIWhPNm9PE7bu5S0aqOuyVu7lIPEb9/LLaLkPTnfQyQ14NE3apbe8+60vUGia7LGYk9rqBEYm5nChgpXiuKMYmSq9afWqYeoHOiTJtV0F/FqQZe3nbwcZ1c6k0BmWaSGSCpmJtRsrL5YHlaMu85Gp9At8VmnyZ4M/imO0M19F8/s2cPxKP8RWNHI5uxhHDcg/SaJYqHaDfqCFfWqqW9UnXXWocvoisH6R6GVgXaiws/eYeJKoxFpl+V3GOfp19trc6LaJ0gwvseevYHIa285qPJLD7asvIPzSKu+51c6Cud58+c3X2/cfm9QBmROEdGA/YbZ4sQ9FRP2dvdHbQAvrxyFF9Tgcgt1eho+qi3evR6+jQvQJIXAVryR6kSbKClZmZQ6J9jnwilHWiIs6KY9MfhLCngZF672XcaPXf8ardVIRTS4ngQLJurv/ubm09oybyELBV9ECQJ1dudh+LgHVnRiEgsY+JAp9GmU+7Xac6xQqs0e4zxwdW5+enAMsWZ5k3JSpLOhfq4tA60YCuNPdMnqJqyr9ael+0Sh5a4RNL2gmYBk9SM3dsAJm6Xy4kqlqU05UwoE365tqZtyEoLSAUWD25VmbQGFWdTVGZsrCxMbIXhtzm6PLCCYVatmxODnRroqYnC2AznEZpdGirWk3OFmqlLg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(376002)(136003)(396003)(366004)(451199015)(55236004)(478600001)(31686004)(6486002)(2906002)(53546011)(83380400001)(6666004)(66946007)(37006003)(6636002)(54906003)(38100700002)(5660300002)(8676002)(36756003)(66556008)(8936002)(6862004)(6506007)(2616005)(4326008)(41300700001)(66476007)(31696002)(82960400001)(86362001)(26005)(316002)(6512007)(186003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dzRrRTgzVHZYb2xRR0NhOUc3OWE1bkRvNlhkU0UzYjkxc2MyekpQcU5RREJj?=
 =?utf-8?B?ZjRTWlJkQnRnUDdFUEJvdEh3MVlsQmxTdDFGR3NOa0Q5dDdEb01DQ01YVG1z?=
 =?utf-8?B?YmFZaEwwMytMRVRtdWdGZ3hmdThJVldUMm5xajVTUzI2WVpiaWhTNFJlY1J0?=
 =?utf-8?B?dUtuck5XNGE3WHd3UmV4VFpRdE4rVUlxU0ZoZDZMcXl4MnVwbWhTQ2YyVkhX?=
 =?utf-8?B?WXhHcHVvclUzSGRnWVBkRk1MbjYxR2NQNnMvZWtiTkFrK0NUU2RmNUNnejlm?=
 =?utf-8?B?L291RS8rWi9hdFhUYUJraFJaSmVuVVdjOUt2TVd5YVVGRVZaaFRWNzlnQnk4?=
 =?utf-8?B?M2JWUENYZkFWaXNMSHpkR3ViSEF6WFpqTVhsZUpvN05JOFVETFpJNmhubHAy?=
 =?utf-8?B?ZnNuK2ZyMFB4OUc5YkU3QkNMdXgvT09SYTJWZkh1QjNLUkdGTXIrRmZOR1li?=
 =?utf-8?B?MDAwOWM5ZVpwckZLTXRyS0JEbFdKQ2U5QXZiTmN1MndTeVRnanlsNzhJUDJu?=
 =?utf-8?B?ZFhjUm1NYytjdlVUVmoxNXJKOUsvZ1phOHRpY3FWOFZJbU1nUm4rbVM3dVdH?=
 =?utf-8?B?cDRjc0ZZUVBBVmt0WktxUlQ5ZU93cXNPTHJSa2JSRWhOSURMU0xRSll6dHV4?=
 =?utf-8?B?T1lzL2IvVHE5aGRJVkZGQXVDUm9lMk14YW9ZNGhGcFNSTFpWOWUweVZmeFYw?=
 =?utf-8?B?RktaeHRoVnZteDQ5T0laTkZnV2JLb2xVZXluUTBDdE50MDNDV3BJaG9NRnJU?=
 =?utf-8?B?aE9PeEtsY3U5MU8zallGOE5yUEl5WTRKNjBLMkR0Mmk5T1dMRXBXcHY3R0xt?=
 =?utf-8?B?UFJ1ME1heUp2ZkQ2RGRmUDJ0eWZlbDRweEdCdllrczRZTGxxS3k1c2pRcVJv?=
 =?utf-8?B?RWxBRlljcEFPREx4aTdSeEJTV2pzdFhUSzduY0NXbTlkMzBjRnl3Z2VONFhL?=
 =?utf-8?B?UFNrUEdCNk5mV0NQb045d24yTkFOdlBXZUlWbGdMMmtNeHk2WkMyYkhLRDdy?=
 =?utf-8?B?dEI0UTc2enR4Z2hpVEtMRUR1cWdJazQ3Nk9UU2J6dTFIQU96cE1waWV5ODRj?=
 =?utf-8?B?d1QwcCtNVlFFaXZNeHV5U1BSQ3UwU0xrNE1ySk9IOEpTU3docEtrVUFZOXJT?=
 =?utf-8?B?UjJ3YVhXSFZVZ0ZBNlZSdE5IeGNxQTViaFZlcGxFUkN6MUZHVzZIOENZakRz?=
 =?utf-8?B?Tk93Q2pVcG8wN3N4Qk11KzU1cllVWHROQmtTZWNwYms3M0xMWWVhcU1yN3dl?=
 =?utf-8?B?cmJWQTFXOFl6TnpyQWt0OWp1VFc1RlhCU0t4ZGlPQWFXNC92eGFycGFhZTUv?=
 =?utf-8?B?akZxNWR2RUVkY25XR2l3T2xFT0J0UDZ1YnBMWThLaVB4Yk9PcWFIZDd6bFN4?=
 =?utf-8?B?akZiZkZJODBYVG9JeWszTUJjTkZndG1DYWE1R0FmeGpxNXZTK3JOdzNqZkxh?=
 =?utf-8?B?VVdwQWxQbTdITFhOTFFDT3VoWlhjOFc5dnMxcnd0U1hUUnAwaDByYU5Fclly?=
 =?utf-8?B?TkNkN1FpeWNsaEhNdnhLSUk2RFZ4NUlPSXlOTFlWakRvcEdDZFVXYUNmOFcw?=
 =?utf-8?B?UVpIL1oxNkdWalNnS2pBNCt3RWpreUl2TkJ3aFhBdmk4QkE0WnRXclgwWFJO?=
 =?utf-8?B?RlBtMGZFdE5FbHVpVlQ5d2JjclZWT0lsbTBGNTlmZ282RzZPYnhSY0xEUnVn?=
 =?utf-8?B?dWNOYWE5b2htWWc5VjVVYXdZazV0OUYzNVoxQXhCTXJTYjkvekc5ZlBZdTU2?=
 =?utf-8?B?Skg0dk5ZK2RhbEExeHY5aVJKQmFydDBnZ2hWNXg1OUMzZXZuV1pQeHcweWJv?=
 =?utf-8?B?WGMvZlJpY0JERmFuV3lFcGd2UmNqYXBkR2xCOFE3MUZxQ1FDR2pNWHNwRTgv?=
 =?utf-8?B?UU54WWdVN1hvUVRGL3BISGFrN0NtRWVLZnFLc3drbTJrYVdmcHFUQmFvUUpv?=
 =?utf-8?B?RjR0ek1nRkZsdmtLNUhVdTE5aW9obE9PL09zU3JiVUVQT3JQSjMxSUJVaXg5?=
 =?utf-8?B?bElrK2tIVkdoUjJucUJyUlMrMzdmak5aZGxJUDVjRXNsNzQ0N1VNZG1zQWxy?=
 =?utf-8?B?UWwzbTRRMUpoZVl2ZEVDOFBOR05sQ2RHbU5ZWDVudWl0S3hVb25jNXN6Tll0?=
 =?utf-8?B?bE1hZTI5OG1tbWlsdUJqT1R1N3ZkMk1wZVQ4enJobEJOaDJMSHZNMGF2YzJ1?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a416c8f3-4b9d-46e9-6d60-08dad1fb31d1
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 11:16:43.2288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YtFVUlnx49CPxSLq+XXoLY3OADK7y6WvsXk7+YHsd1tZdRzHoEyN/EtNygd2H37pUkcWFgyrboxp4wpO1TYBAcXydfpWensqQJfNGYmpHn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5619
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/mtl/UAPI: Disable SET_CACHING
 IOCTL for MTL+
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com, daniel@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 29-11-2022 01:49, Lucas De Marchi wrote:
> On Mon, Nov 28, 2022 at 03:43:52PM +0530, Aravind Iddamsetty wrote:
>> From: Pallavi Mishra <pallavi.mishra@intel.com>
>>
>> Caching mode for an object shall be selected via upcoming VM_BIND
>> interface.
> 
> last I've heard there was no plan to support this through VM_BIND. Did
> anything change?  Otherwise this needs a better explanation recorded in
> the cover letter.
sorry it was a confusion on my part, after discussing with Joonas i
understood we want to drop support for get/set caching ioctls on all
future platforms on the similar lines of the below commit.

Thanks,
Aravind.
> 
> According to e7737b67ab46 ("drm/i915/uapi: reject caching ioctls for
> discrete")
> it seems it was already planned to extend this to all platforms.
> 
> +Daniel, +Matt Auld
> 
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>
>> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>> drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>> 1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> index d44a152ce680..aebbfe186143 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> @@ -332,6 +332,9 @@ int i915_gem_set_caching_ioctl(struct drm_device
>> *dev, void *data,
>>     if (IS_DGFX(i915))
>>         return -ENODEV;
>>
>> +    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>> +        return -EOPNOTSUPP;
> 
> Why a different return? Should this be treated similar to the IS_DGFX()
> case above? It seems we are also missing an equivalent change in
> i915_gem_get_caching_ioctl().
> 
> include/uapi/drm/i915_drm.h also needs to be updated with documentation
> about this behavior. See the commit mentioned above.
> 
> Lucas De Marchi
> 
> 
> 
>> +
>>     switch (args->caching) {
>>     case I915_CACHING_NONE:
>>         level = I915_CACHE_NONE;
>> -- 
>> 2.25.1
>>
