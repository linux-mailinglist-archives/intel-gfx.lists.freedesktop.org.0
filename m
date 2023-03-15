Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D87366BBDAF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 20:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39C3510EBE9;
	Wed, 15 Mar 2023 19:56:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A4CB10EBCA;
 Wed, 15 Mar 2023 19:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678910184; x=1710446184;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TkR2PaicOI5h9fFASgGADG9eF/3pc3j0ozRL+QVkj7w=;
 b=GP3DP1TBGG872V/vstqUSN0KD2NcG7JhOlr5m2iwEMuIJvUzT+P/ZGFE
 mY5dyuZifcJrmq8fwNuJqUXidr12U2i4qJts+EyOxJXFyVQH24LbhVune
 2BrAd+sIZjwBA4qNE39COcaIt0VU4gD25CCqZ4Fq0FEHE7LqbbD8gW49M
 afuPASnF+38U4lJTEoUPZVcQw6K2a8M3tgd2O4DUEQXKtCbERLqXdlFGB
 oFb8isPXF+eGflPDgt7I1CGlYcY6I/9y+Gm4Q0i2aofuF9HPl/nF2ZLNr
 4pzrOizZ+7pghBj7dk4aN91dhk9KAKrpiN5OVxVWwCzT77niqgLvcV3q/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="318203546"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="318203546"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 12:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="1008951548"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="1008951548"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Mar 2023 12:56:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 12:56:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 12:56:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 12:56:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 12:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EhlKZcW5P8J3kgPj8jWNuriM1hKyntum+mEyEJhToXlzIWJvGD2rqh5VlH5TLgF8+eERVDb6/GqZT4Qoo3WHuk3+Uddq9pjYoSir/k3PNMpu2yDjtQ1AySI4dnGGdoVCzPAmzB9pZRVkecZaSNIBZS4q41n0EAuAVl/y8/gqhMsnRh1Iyl5aQPxDwJXMlpTq/Kh/IF4fWs0OHXMJmW6Ss/9LIfHMUVQ+MBHFOq0Vxs8PdzWL00fDR/dwq4LyN6v+rUDYM2HORGTPcR/Jf35/KZWhI5A1/cyHTHxlVto+gNuKW7hjFTsyDPL5+CijAR5akzivA1ou4evevpDgCqFLBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IpXqrcLaFKAyRj5tbvuUXCP2BGUGNeufdrLekXX91Bc=;
 b=CCWBQVx6UpRb43YqgDylz6jHTWfByVtWGUZ66+nO6plVoH4LRCS6Z2v/gPinhieTokdbX/IxYxFDgQrC6+cS6FHULXRAi2uRaT3q4onHjt9T56Az+UoLWKPO423foQx5jjC7r2u4W83YJXUQgCTdG10R0ZeRe+DOig3/jnC47v9eMiEoaZumqU3zSsTAwQpA4145gNe5t3IecaptUxqIoRtrDzDWjqkEp7qLZ1M3PIpoKnhKB+PwYGlE0zMtdCnG13BVLZ+gVckcS+NejgPKkcCpwxmcB1XglJ5PT6yjAWHHh7SnEcKYC3fSaFQYcRoQYHSdJ82ITYFp6fHPevfrtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH0PR11MB4838.namprd11.prod.outlook.com (2603:10b6:510:40::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.26; Wed, 15 Mar 2023 19:56:09 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.024; Wed, 15 Mar 2023
 19:56:09 +0000
Date: Wed, 15 Mar 2023 12:56:07 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZBIi1269Dm/++c9t@orsosgc001.jf.intel.com>
References: <20230314121740.1195358-1-tvrtko.ursulin@linux.intel.com>
 <ZBC8GxZjeR5+bHOm@orsosgc001.jf.intel.com>
 <6f83991b-e4d6-b573-9e1c-074f2c612ff7@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6f83991b-e4d6-b573-9e1c-074f2c612ff7@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0181.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::6) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH0PR11MB4838:EE_
X-MS-Office365-Filtering-Correlation-Id: ea34f920-464c-4454-9f29-08db258f522c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N7pBjJOWnRyZdf6VGGtTp/Vqfe6b4wI2t3ZoKjy3rHDoMr6/TlJrAO4SrxqiY3cyXCICqi4R7QVPVbZL9b1Lh8LVvM9VxJywbHuMJQf7GJfvrAj2ehLC+e+zei2oZnRh/49LACNv7owqJpc0dCLufKFehdqfwLkx0EpR7L4Dmu7Iy2fX1FFk72nNWBzdDlkKt5fGLUdY2sZ6Ud1S/AvQ2L+MkQBO5WVveTPCjJ7jN4L8C5m6x1A4UHWXf/O9S9WQOaDOZ5tOaN7Z7wD2cawl9IZD6Yjfkb505tJFRyN1HLY8hrktGrf/aBKnh5n9+bXep390IPhtp84vCRFETR3pBcnoNQRxZFtsOAF5Gzv5t5c5SYxxxJnLOaA904DotkW4CAEtt925OZBigfLv0f9z6b6GbEQsH8BBq6Hj4HjClXTe0KEkXjZya3VQz4WX8BkJcYOxR4/qRilc6qVynhyfkwNiZvJ/5tIkjBsLieZ9MSVE/mOZrgPUIo4CN1NKQ6QJYUua+G5RIfukZJfDRxv7AdkS0vCsUQqm64ZIuyge51pwvQhenm6iE6g2wEREXAmpygh4mfTRDPzmg3/hP7oJgqiBCX9GPMl8jBW42QihVxEIG7EJv6V22oQuJLD9AGHnBMLx6kOA42jVdXMBlCWS2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(39860400002)(346002)(376002)(396003)(451199018)(38100700002)(316002)(82960400001)(86362001)(6512007)(186003)(83380400001)(6506007)(26005)(5660300002)(6486002)(2906002)(478600001)(8676002)(6916009)(66556008)(4326008)(41300700001)(8936002)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlUwVXJnd0NoMlVVU0x5N2hTWUZkUmhNaklBUmRuRENnZUI1Z05yalQ4MnNz?=
 =?utf-8?B?bzh2Ry9tTy96Nlhjdk1EazAyQmk3Y2VPOE1HV0xrT1ZBMExwUGlkUldaeFBp?=
 =?utf-8?B?TDA2NzlSbFRVVFVkSXpwTWgyTWw0RGtXQXA4TFUwMEFHMHl1TitIMXhXSVFK?=
 =?utf-8?B?aFhhL1FNdTFvYXdOc2ZQbzNJTFRuR3NHUVpVNEVSQ05vNXl6VUNVelFtenNz?=
 =?utf-8?B?Z0VmVXVVOVUxcVVPTXR6d1IxL0g2TXBCY3Jsek5iU1VqQW8xbFNjZUQveTlZ?=
 =?utf-8?B?UCtDSjNSSjQxZHE4Wm93c29ISjZsb0FWcEwxdEVoNzlhc29lQ3I0NnFxRkpO?=
 =?utf-8?B?VzUvSTN4K1lnMm5xZXJPN2lNM2dWUFJSOUhLNEI2SURiZlBsREhNdHZOaEQ0?=
 =?utf-8?B?c0ZIMmpFNkI0L3V1WlNnYTFWQmVPMEpVaGZTUGhIclVYLzN3UldiNUZTanU3?=
 =?utf-8?B?STVxVGdRZTF5L2ltZmNsR0puUmJZVTd2RCtQVkxQRXoyZ21GaS9CREN4Vno4?=
 =?utf-8?B?eWxJdGtOQnhzcmI0Q2t4eVV3QXRLcE5CL3dJYVVqc1BpTk5leTFjV3BxR2gr?=
 =?utf-8?B?WHJFRTUyOG1FTGNKZmg4T3N5NjJGb0dOV1lpeUxPYUFuYjlyZTdlTloxN1M0?=
 =?utf-8?B?a1BjTm1qeTZ6ZldVQUE3RWg5aDRIVi9uYU8yS09qRjlpaDNsRjVEbmo2cFUy?=
 =?utf-8?B?dm1mUjhrU2FZNVhRR3B1dk5XUlpTazc3bHFDNHZIT3ZIbHNYYzlMYnMrNllq?=
 =?utf-8?B?bG1iWVlKd3Z6aS96SVg0ZnR1ZkZZSkVoMXpxdTByaXk2bE9MTWN0RTU4WGFa?=
 =?utf-8?B?eTU3MHFmQ0U2MHdCZjFQV0RGa1BnN3EzVEdOSXZJWVh2VmVaN1R1MW83UGx5?=
 =?utf-8?B?bGg5ZDQrYnpUUWprQzhZR1FVc0pRencyWUVUY2Q1aGNaQkR5TEorSHlSNXhq?=
 =?utf-8?B?VFd0ZURzcTBzK2ErTHJKRE9UQjMwMzNKbGNLclhBNHJwaTNtRzZWOXZYZUM3?=
 =?utf-8?B?dTlWVzZWYnhzSnd6Y2lqSnZLQ2FRa215MjkvZHZuTjcwMFYxRVdscDh6eXVl?=
 =?utf-8?B?YVRFRFR0aTF5ZkRJMjNnTmJHNllHZkhHdVVQN0dyUFVEa0Uwa3cwa242eFda?=
 =?utf-8?B?QjJ4K3F4SUhrTlJnWDZZVnY4U2k5c003aFVucFRWc09WMFRvNHgrU1BubmFM?=
 =?utf-8?B?MTZLaXQ5YW5OK2ZMNVdkSkJYYytOUDNRdncvUVJHeEFpajBNODRWTmFmaUwr?=
 =?utf-8?B?Q1AwRlo5Ylh3RjdIWk9xT1hLRUxaa2RQeE8yNzJJcHR6dWVhZWd5cTdheTZS?=
 =?utf-8?B?UGt1VlMxeUJ4cXUxUWNlTkg0cXI4bm13am1FWVVhaldMa2I1N2tJb2VyMFMv?=
 =?utf-8?B?QllybFAwSUtXcEV6MUhvN21FbVAvUXVUdXJHVExVTlMxUDcyV3cvbHl5cm5Y?=
 =?utf-8?B?QnZwS20ydkxxTUs2YThSM0tFVTNEdmx6RmFScWhBMkJiQ3VuTW0wOElVdVF2?=
 =?utf-8?B?NHlRaWphbGRCRHFuZG5vT3lPNDFiNXp4YXh5OXhxcHJ0VzFZSm93ZVdwTU8w?=
 =?utf-8?B?T2Jva1JaS3N1ZDhob3QyQ2JnUzRTMGlCd1hSN0JseVpvYmlnYnQrd2VLdm5y?=
 =?utf-8?B?dExXSFdsajE0Q21BMG05UStMWFRaS1NiUy93bnhFa3dYQnc4emtRVU1sOUJk?=
 =?utf-8?B?Uy93eGxtM0pjaWNYRTVtUkd2NHRVL1hCdnhNK3Q5NDFHMFR5ZWRsdEd6SGJE?=
 =?utf-8?B?RUNTSW9HbmpzTkc1S3EwQ0svZlBNM1dMdDh0WG9aR0szMDJHYWh0VE1VQkZp?=
 =?utf-8?B?bkMxeUUyZGVML1B3R0d2VTZ4TkhYK2RRdFE0OUhKd0pQczRwc3dVZnNjbE1w?=
 =?utf-8?B?MHNsZnZqUW1qMkdRZi96Ymw2MDZFVFMvdmVqbFVTUlRQS1JTRmFxaUtIVVNG?=
 =?utf-8?B?MXJWWXN5cmRLWlNzMDB0c2p2cE03dFMzTmQ4ZzVxWU9CYXdpa0ZLcnk2UDBG?=
 =?utf-8?B?bTR0UGtiMnBCVnc2TDgxV1JWNWgxVVRSV2ZUZlREeXZ0WEZ1eGN3UVVMcnJ6?=
 =?utf-8?B?b3JjMERJZUs5YUNWdGhLREZiZmNDRmZuYXpzcW5BV2ZjMUZpdGMvRVV2QjQy?=
 =?utf-8?B?NnRGaTJxK0RzNVFHc2VXU3BleHR5RjIxZEtScHh6Y3BPSW56cU9PY0pwQXJu?=
 =?utf-8?Q?qaCwpmiI5ab5dXd721f/4Uo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea34f920-464c-4454-9f29-08db258f522c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 19:56:09.4139 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +4Fiq/7mq1pJjceJTjWIz35L/iO9Vw6w0oSHc1HBcfmyRVvDqbJUUMeeT9bPcli1nAZr6UASoeTauKSXcMDFMHbPF7xOPh5QXi2HYv1hLrU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4838
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Use actual period when
 calculating client busyness
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 15, 2023 at 09:20:49AM +0000, Tvrtko Ursulin wrote:
>
>Hi Umesh,
>
>On 14/03/2023 18:25, Umesh Nerlige Ramappa wrote:
>>lgtm,
>>
>>Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>
>Thanks - I had one second thought though. See below please.
>
>>On Tue, Mar 14, 2023 at 12:17:40PM +0000, Tvrtko Ursulin wrote:
>>>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>>On a slow machine, or with many processes and/or file descriptors to
>>>parse, the period of the scanning loop can drift significantly from the
>>>assumed value. This results in artificially inflated client busyness
>>>percentages.
>>>
>>>To alleviate the issue take some real timestamps and use actual elapsed
>>>time when calculating relative busyness.
>>>
>>>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>---
>>>tools/intel_gpu_top.c | 39 ++++++++++++++++++++++++++++++++++++++-
>>>1 file changed, 38 insertions(+), 1 deletion(-)
>>>
>>>diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>>index e13e35b71f4b..af4b350da8e4 100644
>>>--- a/tools/intel_gpu_top.c
>>>+++ b/tools/intel_gpu_top.c
>>>@@ -43,6 +43,7 @@
>>>#include <sys/types.h>
>>>#include <unistd.h>
>>>#include <termios.h>
>>>+#include <time.h>
>>>#include <sys/sysmacros.h>
>>>
>>>#include "igt_perf.h"
>>>@@ -2524,6 +2525,38 @@ static void show_help_screen(void)
>>>"\n");
>>>}
>>>
>>>+static int gettime(struct timespec *ts)
>>>+{
>>>+    memset(ts, 0, sizeof(*ts));
>>>+
>>>+#ifdef CLOCK_MONOTONIC_RAW
>>>+    if (!clock_gettime(CLOCK_MONOTONIC_RAW, ts))
>>>+        return 0;
>>>+#endif
>>>+#ifdef CLOCK_MONOTONIC_COARSE
>>>+    if (!clock_gettime(CLOCK_MONOTONIC_COARSE, ts))
>>>+        return 0;
>>>+#endif
>
>So I copied this (with some edits) from igt_core.c but I think I 
>should actually remove the CLOCK_MONOTONIC_COARSE option. The usage in 
>intel_gpu_top is not performance sensitive and tick granularity 
>actually defeats to point of this patch.
>
>Okay to keep the r-b if I remove it?

Sure, okay to keep the R-b.

Regards,
Umesh
>
>Regards,
>
>Tvrtko
>
>>>+
>>>+    return clock_gettime(CLOCK_MONOTONIC, ts);
>>>+}
>>>+
>>>+static unsigned long elapsed_us(struct timespec *prev, unsigned 
>>>int period_us)
>>>+{
>>>+    unsigned long elapsed;
>>>+    struct timespec now;
>>>+
>>>+    if (gettime(&now))
>>>+        return period_us;
>>>+
>>>+    elapsed = ((now.tv_nsec - prev->tv_nsec) / 1000 +
>>>+               (unsigned long)USEC_PER_SEC * (now.tv_sec - 
>>>prev->tv_sec));
>>>+
>>>+    *prev = now;
>>>+
>>>+    return elapsed;
>>>+}
>>>+
>>>int main(int argc, char **argv)
>>>{
>>>    unsigned int period_us = DEFAULT_PERIOD_MS * 1000;
>>>@@ -2537,6 +2570,7 @@ int main(int argc, char **argv)
>>>    char *pmu_device, *opt_device = NULL;
>>>    struct igt_device_card card;
>>>    char *codename = NULL;
>>>+    struct timespec ts;
>>>
>>>    /* Parse options */
>>>    while ((ch = getopt(argc, argv, "o:s:d:pcJLlh")) != -1) {
>>>@@ -2690,6 +2724,7 @@ int main(int argc, char **argv)
>>>
>>>    pmu_sample(engines);
>>>    scan_clients(clients, false);
>>>+    gettime(&ts);
>>>    codename = igt_device_get_pretty_name(&card, false);
>>>
>>>    if (output_mode == JSON)
>>>@@ -2698,6 +2733,7 @@ int main(int argc, char **argv)
>>>    while (!stop_top) {
>>>        struct clients *disp_clients;
>>>        bool consumed = false;
>>>+        unsigned int scan_us;
>>>        int j, lines = 0;
>>>        struct winsize ws;
>>>        struct client *c;
>>>@@ -2720,6 +2756,7 @@ int main(int argc, char **argv)
>>>        t = (double)(engines->ts.cur - engines->ts.prev) / 1e9;
>>>
>>>        disp_clients = scan_clients(clients, true);
>>>+        scan_us = elapsed_us(&ts, period_us);
>>>
>>>        if (stop_top)
>>>            break;
>>>@@ -2757,7 +2794,7 @@ int main(int argc, char **argv)
>>>
>>>                    lines = print_client(c, engines, t,
>>>                                 lines, con_w,
>>>-                                 con_h, period_us,
>>>+                                 con_h, scan_us,
>>>                                 &class_w);
>>>                }
>>>
>>>-- 
>>>2.37.2
>>>
