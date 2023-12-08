Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8572A80AD54
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 20:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C474A10EB04;
	Fri,  8 Dec 2023 19:46:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1483410EB04
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 19:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702064776; x=1733600776;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gNIrg7bFe7aB9XQbG/h9iBBW35hFMBT4XZyRAD05ZJU=;
 b=DHv/3BDgT589K1Xzf7g1FgAm3F1/lTu2NfNzPSw418rdULMrM5yK/KNy
 pSWAr3FIp9aI5QvGRa62j8egZ7+l79HofYw8EjQV2hkyGvFuocnk2PZ4k
 O8O4Euabe7Qk10PWg7IDaWVJKXTMkIxMyn56uEkIr9ySXZtYqmpZx3BAe
 g5YaIkDGMA21FKYYz2D5Gsgw4wNoVxNqS3iRW3SDvdD68lEMBxcp7Idik
 5oLo8y32AviNf0vIWxhACFrXZQ9gib2ou/YyJW5Fa/J1wt/qFQc0zDoKn
 dXi2m3GrnpisZF8Q6ic+kd/Ma1p+7Iys3NzMCG22sigfZpqzK71LEsGSd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="391624043"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="391624043"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 11:46:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="13586384"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 11:46:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 11:46:14 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 11:46:14 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 11:46:14 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 11:46:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c5ltIPL+hCfCLpe9Em2h8UoGOSUpMuQr5UiQObojrNa8UwnwOkoOvc8Gxk11I7zDGLKC7I/lLuVP7bBROPqDXzpRojcS74fbTs4TdYs4eEmzy0axcErdi1MIDmUSZJWxvId8U1VLvqxjDpVN52VBA5P0kd31yr1mjIV4qj0MsIOJT/4oDusZd/zMmnEkSRCohGK4ms8tZh0GkRDpIFiZyqVUFuqkxDA6cBxmaNIjJKVP5P01jzek+zlbiSi2MadTtkKEwd6qXzzgRgHD4Ab1zBnOXOlA84CtTBhrHPA+WFFRVQmKBSYqsDIwvh7SA4vkJnp5dYg/Is1Nzar31mNafA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fF1VDxWvk22yT8tNeXvHNWD2gObKaC7JHB9w6FkxzKM=;
 b=C7MgajZpzg1BOiPkFuzAAgsUUDvlCuKaQTHCclSs9DN5sP69KtjlhDt1o5D/+TT1p3fmZkU06+sS7dlSobokZwnkBT2w6Q9lLNlsn4jJkxtMSkw2xEKCTl3G2/Vlc4YB4w0eQe7w2V+UIYvHx9QG8tfDgqjt4Z+yOtjUf+AG1JKilKYRVkLUmmoDPNpr9FZUviK8yQ63BuY048JdtM7AEZPKGV35MsZbpOGHf6QHRD53oQlzM8DduYeFVbHuoXiwXKQaULs83t/8KpnYiXrFjrRWIi/R7Q/mdYc3gJ9S+2hXH0a+Emuyk05k2d3Z5qq3qf7IOeJsqb54oM/dlM6Ihw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB7062.namprd11.prod.outlook.com (2603:10b6:806:2b3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 19:46:11 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b870:a8ae:c4f1:c39b%4]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 19:46:11 +0000
Date: Fri, 8 Dec 2023 13:46:09 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Print PICA version
Message-ID: <35wpnbz362eaqvjzerjpe6xnnc6xxiu45qsxszibefprj3kuzk@fal6gvwq4kvh>
References: <20231208143137.2402239-1-lucas.demarchi@intel.com>
 <20231208143137.2402239-2-lucas.demarchi@intel.com>
 <20231208180250.GY1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20231208180250.GY1327160@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0105.namprd03.prod.outlook.com
 (2603:10b6:a03:333::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB7062:EE_
X-MS-Office365-Filtering-Correlation-Id: aa4a9ae1-2db9-45ed-454c-08dbf826546f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: q9pHuQpQ/gU452Rk0Up5dgYCEKBhhwnsca6WB3RG4vsUlAKVhag9gfkK3EDzKWvBQBn/1z4H0cSDjVIaJdD1RQRQZ9Gsur0ZPAExkdUdAkOg0dZkMf6Ic6U+qPVgutUyF75HGXk31X3P5j3j/r/cnm4bTo5lfPflw8wKCJtiqRcJM/Ht1oBvSW20fT3eVw0tSb5l4Y+0KiEXG01OyrWjqU5zTWzSTAt68ICuT7vlJn0ptwCXgFEQ9pS0Q2HUyg64erkWNzT9MoE7JXeJfIOrx3ezGzwW7lvfqoMPAFy06Yi8ONWAKgIar5295+xWaEJMC70D2ltqVRuRPjuOM1Lp0poE9yGdVT06IbsSXRaLPPhdvKlX3T4XHD5KyyUVHYiYnDuV5R7U4RJR9RzmJ6y0DA4oqKIKJ/4kEcJilchJK27XLrHFzuGHHUT3nuWMRviPpz17k6OwOAsdJ4zNKdymzH08fTXL6VuQoNbs5vbXy00q/yYJNSnHIbwQjs07RqPlOZTp/kyMCsX8vwGY8ypG5Epe6UvnZ1mC2fps3GccTFJdLA7jciRMjrBX3lDHguFY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(366004)(136003)(346002)(39860400002)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(66946007)(66476007)(66556008)(316002)(38100700002)(8936002)(6486002)(8676002)(26005)(6862004)(4326008)(6506007)(5660300002)(2906002)(83380400001)(6636002)(478600001)(41300700001)(33716001)(82960400001)(86362001)(9686003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?69Azc46FCrriFsU+LRl78giuQSz/7IN+Wm9lLpM4fMW3X9gTjnvd0BlT3ljO?=
 =?us-ascii?Q?BuDan/PoNX9/1Lu4+8D/R6RGVNleGn2y09NVSMPbXSsRCsIYm5SOCKgmTgwA?=
 =?us-ascii?Q?s4KW/saHxCjPAfX+w65PYiqwqtwCRIBr7WB9wOwVk/UXWVpnIy9DLzm7cewS?=
 =?us-ascii?Q?HMQepkp38/NLFemJHABcxorh30qc3znm9CeeoKwI4XhqA9CriM7HsVN8trKP?=
 =?us-ascii?Q?7z3OzD48JNE6KNQebvW8CJ4oI5bqsFsRXNypTZ1fenGzPSOEhPgtORRy4uWj?=
 =?us-ascii?Q?pr3yjaGrBrVqbuxnRkhrnY84a4Mh/lZsBnuxTMkyYDbEvIXzRYVAQz86pj1g?=
 =?us-ascii?Q?qM2J6Zch68ktcM1xXgAZesNg7UxzF0u2Zp0UTqevpDhMsK64HKIoZYCwkdFJ?=
 =?us-ascii?Q?YYI5imCqDDGV1cYW+5YtOi98ATkRd/ezrMbQu751D/2fFDcfaNU2zq6KziXs?=
 =?us-ascii?Q?lVXvzcCeFyBRo47ke7hZJp8iA7i71vBDAUIxWMBy2vnW5gtH7ac+IPtv3ioU?=
 =?us-ascii?Q?8HtfbpTmCDkJdbQCAzHlVIRLDL4DRVU6weSxcZZS+ohDDDpFgzL0kh3al5G5?=
 =?us-ascii?Q?4cW/irs9GYml0qMHdEKNS2AKCM0kXtiCAe/sDDCMd2EUP5q/cmUOS3XQiGhB?=
 =?us-ascii?Q?czcxu2d17wJDNn30LZ8U8hXh+EU+PbPw/azAuiH7Ba44NrN00jg5xa2/k8Vu?=
 =?us-ascii?Q?8ksjCcz0jOqtysXBmzCIk7xPjg7pbxf0x6cUoC2q941p3wKOR/GnXw+ZapQW?=
 =?us-ascii?Q?4zJzuN2wuJAxLV32u4azolvIJAP3VPWceMoxRhQrO9Kxwte1ZZrrr6wh7Tt2?=
 =?us-ascii?Q?VaJqnlNcXYUcm1hKVQeaODgDGUHOAq3JnDEzKIkLBU8gTFqfPstc7/GmQYGn?=
 =?us-ascii?Q?d10B+uYzacMrjzBFbSMmkRzSUCzIXCLgXjTsoUqzJPHVIl14K7cY2naU3hCk?=
 =?us-ascii?Q?kfyopmkB9SyYXq9Th/qBJTQrWr+usV8tw1Q+YKU7eVzOgZ+uakK9J09BWmZP?=
 =?us-ascii?Q?4Bd4dejxVOsGHd5YcVPLu1FPs9q7A2mhR9nucYV1jOtvL+5WuChnFAkZQQCd?=
 =?us-ascii?Q?dtDZfpUl1dLfvySJNLS/xoCzTQOmoLfmDdBNIJwLTbNiLitSwudLrD3uOMtm?=
 =?us-ascii?Q?U8fSucECf/yPk1mPzQa0LQb3Tb3qWlUKxoAkyj6c3w13pBoPd3Jxuz7mj20s?=
 =?us-ascii?Q?XGp0+qT844vGPQRECzHmjvzys/DsQF8Eaq2NoPKEhFKg++sp/Ei1kwb0N4TM?=
 =?us-ascii?Q?Jbh+8DnLzkU2pAW+SWF0SOj3vPLpOcsxl2y7egv78u6ieJ3wBvEcmwIZV3qi?=
 =?us-ascii?Q?ZBtvGNy2BZiL7py1NrSF9aGPA9qBzojIBZJ/HWx+ZEUJ2XWPcEaZLzwMgdZ2?=
 =?us-ascii?Q?lw7HagHGB8RDdqkOiDuBLk3GTlNpFCJsusWDNjCzYgfeuA3xZ6DqoQfjQJ4L?=
 =?us-ascii?Q?7BTu199mNqD7KtPFB1KqHDSzBKA5+RdaSRpwjGaJAw2fy1im8Ssj+cPHnGmh?=
 =?us-ascii?Q?KrtAjL+1PDflPwqz19B96pdJ5ZPGgaJKvA+qS+XQuONxmznR3lw0coEfOSAM?=
 =?us-ascii?Q?FzfEn/EE8NFUE6GYLDg+hFLWBeD30hFaq8+p1r7/g1p1JPYHlFjKxrGUB1Ji?=
 =?us-ascii?Q?MA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa4a9ae1-2db9-45ed-454c-08dbf826546f
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 19:46:11.4261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +FAgPaKPAezmh3ZqDs6xhSrDlt7O/GzJYGBsncFdXex0wO5dTc1m5J5uxVFn8A2kb0/hLtaezU+VkiXAe8XP1wRBUQhsC03xVn1PtsjFZOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7062
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 08, 2023 at 10:02:53AM -0800, Matt Roper wrote:
>On Fri, Dec 08, 2023 at 06:31:37AM -0800, Lucas De Marchi wrote:
>> The PICA_DEVICE_ID follows the same format as other GMD_ID registers
>> (graphics, display and media). Currently the only use for it is
>> informational for developers while checking the differences between
>> machines with the same platform. Print the raw number as there's no need
>> for the driver to check any of the fields.
>>
>> In future this may change, but then the IP version in
>> struct intel_display_runtime_info will need some refactor to allow
>> keeping both the display engine and PICA versions.
>>
>> Lastly, keeping the PICA version around in the display runtime info
>> matches its current use. If that changes in future, then it may need
>> to be moved to the device info.
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
>>  drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
>>  3 files changed, 9 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 5d1084a98b93..d9d1be008e4c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -956,6 +956,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>>  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
>>  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
>>
>> +	if (HAS_GMD_ID(i915))
>> +		display_runtime->pica_id = intel_de_read(i915, PICA_DEVICE_ID);
>> +
>>  	/* This covers both ULT and ULX */
>>  	if (IS_HASWELL_ULT(i915) || IS_BROADWELL_ULT(i915))
>>  		display_runtime->port_mask &= ~BIT(PORT_D);
>> @@ -1124,6 +1127,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
>>  {
>>  	drm_printf(p, "display version: %u.%02u.%02u\n",
>>  		   runtime->ip.ver, runtime->ip.rel, runtime->ip.step);
>> +	if (runtime->pica_id)
>> +		drm_printf(p, "PICA version: %#08x\n", runtime->pica_id);
>
>The actual, expected PICA version number on most (all?) MTL devices will
>be 0.0.  Should we make the condition here HAS_GMD_ID(i915) instead so
>that we print the value whenever we read it?  That will also help us
>notice if the PICA register is incorrectly 0 on LNL or later platforms
>where it should have been non-zero.

it seems intel_display_device_info_print() was specially crafted so we
don't have the i915/xe pointer and instead only operate on the info.
Yeah, we can get back to i915/xe, but I'm not sure about doing that.

What if we initialize it with U32_MAX and check for it here. I think it
would take a long time before that becomes invalid.

Another option is not to bother with the additional message in platforms
without it, and just print it unconditionally, like patch 1 does for the
rel/step.

Thoughts?

Lucas De Marchi

>
>
>Matt
>
>>
>>  #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
>>  	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 79e9f1c3e241..f8a2ada1a4ec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -123,6 +123,8 @@ struct intel_display_runtime_info {
>>
>>  	u8 fbc_mask;
>>
>> +	u32 pica_id;
>> +
>>  	bool has_hdcp;
>>  	bool has_dmc;
>>  	bool has_dsc;
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 27dc903f0553..9d70635508ae 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -6362,6 +6362,8 @@ enum skl_power_gate {
>>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
>>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
>>
>> +#define PICA_DEVICE_ID				_MMIO(0x16fe00)
>> +
>>  #define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
>>  #define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
>>  #define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
