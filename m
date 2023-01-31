Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 961276823C0
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 06:21:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796CB10E31F;
	Tue, 31 Jan 2023 05:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C034A10E31F
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 05:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675142489; x=1706678489;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jBk+CPW0G0xr4WXI0nFjK5KQ/EPVw0SaGsDtVJUe9CY=;
 b=i4gZ+kKzVHV/ERrIUEsR2bJr5F0T+BjoWXjLhy3nazsPrgK9WOJ422+I
 1Ve6z6AVQJaPfDgE54kOecMqow2yCZgJWCI9gIuDaGh7Q1xnUjn8EiHf9
 RUuGO0cX0phDkYHNLtOplFftIHykvc5Bo9DWimk6CTlxuA6P49TwxrPNg
 PT0JP1KjF5aHK8zUXUKExsyL1wY5e/MbVNvO5C9kiy1+3c1NrJ7HKgGEi
 Mj1nn8umvyFThlizLSAjXEcnrNnrRGHGfVlrNLTRFT0juur0sfxIFwvcU
 mtg4LKHoYhUKqEKMNzCCOrhZumUHns2N9PPLBxjS2WNHGf2KUkQcGz10+ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="413971018"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="413971018"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 21:21:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="772820223"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="772820223"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2023 21:21:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 21:21:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 21:21:28 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 21:21:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 21:21:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h27L+KIa3nisKQJ+tZgxuf+Vh91PGXAHkFiUvAijc9OEs3MJIxISrQ5Pg2L+3l4PICo6FWxhwWEJfOWR1smzS2I+vHAVx63cKdoBlVRm20SjcQJzIBCu4vVoQKG92nnpHWKf47K7WulYvcg854Tt53cOBgI3tdjhUvlZfs0RoB8QeNkCwvsRTOkt0YNv6aYD2aPpDkya4DkAACkhUeBmjgynhu1/udTJU9MV6nmn/WWCOA99Swed0Ky45GAMXahbAXE8ndqiEgssiNffzaYhFLKByTcAQh4sxa8+39pPupRTZ9X37UaRqHwDESgF7QJT6eRL3vtQFJloJ4SffKZrKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JhWRR2wk/fzE6/EPZ6zjGRBV/ruH6Qg2h4e+pyk4XaY=;
 b=ZbZw5jca4FbFj9JnwcVgLWE8DTav/pGKqJIR2opJsNAGTDAMTCmvalBfi3ItArX/kyUfEHhPpL3D9U11iA4zi3q6mEtlDrHlM3zXJ00CtUN7JfK3IajlKVloJIlxTE+qGfXLW/5k22D2wf1/f4kSz82r9y1LROq61vfgdoondtKjx+Kgajlz2uowQt7K4m+FynJXKGcDgxthCOTnjREQpXXHUaMQkjobXvat8CcY/0i7S37twrN0/Xx6YO9y4VMT/eOXSgI1/XHvouC2I/39VN+r7NdTrdw6wUsSDly7ap3cjsyFX5qsAvrb3Sb4CDD0jX+Q00m6UI3go4O2b6shwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SN7PR11MB7589.namprd11.prod.outlook.com (2603:10b6:806:34a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Tue, 31 Jan
 2023 05:21:25 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::77d6:fd42:98f4:b4ab]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::77d6:fd42:98f4:b4ab%9]) with mapi id 15.20.6043.038; Tue, 31 Jan 2023
 05:21:25 +0000
Message-ID: <fd3ba561-0b9a-65df-e08d-321c5f01471f@intel.com>
Date: Tue, 31 Jan 2023 10:51:15 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230124094224.2714023-1-suraj.kandpal@intel.com>
 <20230124094224.2714023-7-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230124094224.2714023-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::10) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SN7PR11MB7589:EE_
X-MS-Office365-Filtering-Correlation-Id: 28abf90a-e908-46fc-700c-08db034aff55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aSMgrqJ2MRXBOYg78hoJUOGs4Xj6mx8IWe7egDg5Xnmcxx6X/PcaA2kHR/FYdTGEFNOMiCKeGpOEuBX5+qvsTPPF80xQUFqiEI93FnPl9RcA7ldkwDhaBmh0w/QKL3Hx+p78c4QI+CMSF4IGXQakFHCKoy4mgQON8s4sg7MqxC3GQvDZsFVzSCiw0KVMhDbHQXGSjeuNAtv0lR9njbLCFqVoH+PDuiW02ADCXJl2QuwVNaN75FCxOdbEMyZmwkaC+rmKOfHSTELfp8mghz5MgR+cAY3rxZxzrgIEVaCQZBc20SqYnudzf2ofqLbUVtqjExsvI+y0/imouzGH3EixDlVEt+HWlyGrirONOGrZOymNIK7QGfZ7VVilk/YMUPUxwa0xHuJBlSKHFs1tcX+PSpYtRGTFpiBt4jo/eBFyIT/X8IZpaIGaN7bXFiOa+u1KLP5b93iGMsv4FTCrD6d4AFlXjZvTqtAQWym/tQdq5kftXVti4UFchDgCatqSOJdfvRIX0lg9CtO415qoOYvfV9dyMhsBu24zRTP7M/PZL4r5a57GhZKM+PSVle/9aZnirnSCMNopzsWkj8Pxf9lfEHKFBd5S756zvObJoeIyYGbHkPiBMUq3pysohqx8JBWjgxSIwbjv51NJG22XaCjWwcbndXHcDPFT00Vzru+lxW9Sm+B9kzOoLkiQlRinv1VTvVMRHEpMaY3pB4b3JQFO5XJ0JNdYI8TlgQgRKiCIRdXmjKsRz8lK51mvqbazf0bEDsGYjkOq/eyz1gNnRubb0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199018)(41300700001)(38100700002)(82960400001)(86362001)(30864003)(8936002)(54906003)(2616005)(316002)(31696002)(5660300002)(36756003)(2906002)(83380400001)(53546011)(55236004)(6506007)(6486002)(6512007)(478600001)(186003)(6666004)(107886003)(26005)(4326008)(31686004)(66556008)(8676002)(66476007)(66946007)(43740500002)(45980500001)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUN3WTFZL3oydG9uSEZVN1VHN04wNzd3ZXkzdEVKSHhLbXk0VjhHaWd1OCtk?=
 =?utf-8?B?cjFSd3pRWTVpM28zb2dkaHJyMVlCdkcvN3NYVjZ6QVA3djIycGdrRTRITUdY?=
 =?utf-8?B?L3FlTFMrTElSdHE4TXg1VGh6TjVGUEtHRHZZenVmU2h3UUtpbkozcVBqamVY?=
 =?utf-8?B?ZWJpMW84RXNJVEluMllXQ0RrRzhaaG9IRW1vM2hwMWxVRHp5eEhaUFRpdXI3?=
 =?utf-8?B?eU9aZW51c1c1VEkxVU1qZzZRT1d3Q05tWm1ac2xlOURBSWhFTzF0emlrM1hL?=
 =?utf-8?B?Y051aGtqejgrSG9nOUNKUmhRaEFjRC91VGxUWjUzRWJ3aWJIdVBIMGlBMUVH?=
 =?utf-8?B?WUcvUlNZMmw1TmtBdGErU25udjNwc2UrczlLZGdVTnFGcEtmT0lqZXBrMGtO?=
 =?utf-8?B?M3diQjljQ3ExOEVJakhpTUF2eHZtWTdhbkVYUlNiZXN0eDcxekdtTmpzeWJY?=
 =?utf-8?B?ZHk5bjVqYUtldXdsR256TkNacEQ1WWNJODU0bm52MmtOWWh5bngvV2pXUXBo?=
 =?utf-8?B?THhjOVVScmtrZ3dXMWRzRnpqaG1MTzNUQnU2NHNCWU8rUUpPaGJuamYxN3FD?=
 =?utf-8?B?Z0luTUhRNXV0SU9UNEt3a0tycnUrd3BZb09qQnNOZ2NDSmFEVTExVzUyRXR0?=
 =?utf-8?B?TVprVWFqaHVsSFI0QlNvT1g4R2M5c0tRUlZaYy9SU1gvUjdhajJqWldmQlRR?=
 =?utf-8?B?YlNMMG9ndXE5bUxtSnVKK1RzSndEUHdYdlFSa0s4aFRjbTRJV2lYN3gzUTly?=
 =?utf-8?B?OUtvdTY2N09MM2VlZmduOFQ4Vm9uVE5JaE1QbVJPbk5PVFlvN3diZDdEbWpp?=
 =?utf-8?B?ZEVmMnR0RGZ6ZWdtS0hrdUo1YmZjTm83VWFpQjVSWEdtdzNqK3BtZmJFU1Zi?=
 =?utf-8?B?RWxsWXM0RjhWdjZGSldYZWptbUhEcjRqL2tRSzU2L3hUYUtsZTU0bnBnSkdX?=
 =?utf-8?B?Smxya3V2MTVQb3FtN1VlZHlyVnRMdDl1YjRXQjdNUGx0dHpkaEFva3BuN0Q3?=
 =?utf-8?B?N2M0dTk3a2tweWNvOWtjVjBEaDNhWEJKZW9YOXZpRFlFdnArSjNsaGNWTkdr?=
 =?utf-8?B?UTJZby9TMmFIZnl1amJJdWFwMHVGWmw5WXBFc2prNzBmenRLMkU3QnMzL2tT?=
 =?utf-8?B?bVkwM1dDanozb3oxa0VUZExIaDg1WkRtS0NPdEprTXowaFN1UTJhZFlJcURT?=
 =?utf-8?B?eW5ET3VnMkZkTEFtNVo0MFlON2VVcXRmZXU1Q0xZR051MXJYcE5Md0ZTVCsw?=
 =?utf-8?B?dElCU2RyTFhhQWZmaE9yU2pIZDZJUTNpdVV1UkJRcW9uMXBNYjhQVThnUDZ3?=
 =?utf-8?B?c1RDZEs5UkdsVjkwcDh3QzhYSm5Fb0JVOFRXdVNBUGh2SFJkVHBIYVJ1bUt2?=
 =?utf-8?B?ZW9NeDFLQVVkOXNUMmVMSmx5WTRyMFI0YXlYZjJIVGdUWmRiNUtJNS9MUnUy?=
 =?utf-8?B?U25qRTBFTGVhVHUwY1VPeFVkQTVpZmZHam5ZT21zS0tBdWQ3dWsyMzRYQ2hR?=
 =?utf-8?B?aHBSclBPTXJlaTE3K2tCbEJGdG1lTTRzMTVFenRJMVJTeFB1dEdyVkU1NlJq?=
 =?utf-8?B?S0hUVjZ5N0ZHei9rRkVpK01tNXZiblZMenFjQm1hUmMrMjNCRzBoL295Vmwz?=
 =?utf-8?B?T0V2ZStyVzBseWJMWVlrcFhSZDdBUHM4RHEzRzNKazdQZndzSzRNN2dUQ013?=
 =?utf-8?B?bEk4SkZ5Y3d6QklwdVMvS1ZoWjhaVUpwelJ5SnlNR1hOaklPd2FTRStGS3VZ?=
 =?utf-8?B?amd2OFJuZ1kwcFBzM0ZkUHpPSkZuNENvdXUwZnFKaElMRjJPUDRzajEyVEdH?=
 =?utf-8?B?a2ZtTHM0RFpiOS92cXNVREltK2NTZVlMbE1uYjRlVk5lcURTWXNUOVpIVW1K?=
 =?utf-8?B?VDJQWUpXKzgxRkV3MXJPa3VId0tEUjZ2RUxISlBaN0JQL3MvM29tcXc0RW84?=
 =?utf-8?B?Vmd4NUh2TXdHU1psRm5WakVRMmtSa0cvMGJXbjVsVVE3blNOSXdFZjRPNXU4?=
 =?utf-8?B?V0I1THI4RHNTblFsK21jc0xKYzZBNDBVS2ZNejdOSHlnTjNicjl4K3BlQ29V?=
 =?utf-8?B?NGxSdkZBQkxQNVYzVExud0VnZHZ5bm5IbGwyYjNzVWoxYzcySkoxL0lqYlNW?=
 =?utf-8?B?QXVXd0FlVTJ6MVBHSWRPeExzTVJkRlFlUVFuY0RCWFBsUnEvNWhES2UycUxK?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28abf90a-e908-46fc-700c-08db034aff55
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2023 05:21:25.3226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G8Qw7aOtC+8G0G5+emsB1HpbDce7R1jLsB0r0XxfgpxMBt2ny6qOGJ7G0lHt9gQInWXvORkAz3ecmT9sMhqyf6vBSZwGVOici5hO+aK3+Y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 6/6] drm/i915/mtl: Add HDCP GSC interface
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Suraj,

Minor suggestions inline.

Otherwise patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


On 1/24/2023 3:12 PM, Suraj Kandpal wrote:
> MTL uses GSC command streamer i.e gsc cs to send HDCP/PXP commands
> to GSC f/w. It requires to keep hdcp display driver
> agnostic to content protection f/w (ME/GSC fw) in the form of
> i915_hdcp_fw_ops generic ops.
>
> Adding HDCP GSC CS interface by leveraging the i915_hdcp_fw_ops generic
> ops instead of I915_HDCP_COMPONENT as integral part of i915.
>
> Adding checks to see if GSC is loaded and proxy is setup
>
> --v6
> -dont change the license date in same patch series [Jani]
> -fix the license year {Jani]
>
> --v8
> -remove stale comment [Ankit]
> -get headers in alphabetical order [Ankit]
> -fix hdcp2_supported check [Ankit]
>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c     |  31 +-
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 631 +++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |   3 +
>   3 files changed, 657 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c578fcc34bfd..ddae476e4371 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -204,13 +204,20 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> +	struct intel_gt *gt = dev_priv->media_gt;
> +	struct intel_gsc_uc *gsc = &gt->uc.gsc;
>   	bool capable = false;
>   
>   	/* I915 support for HDCP2.2 */
>   	if (!hdcp->hdcp2_supported)
>   		return false;
>   
> -	/* MEI interface is solid */
> +	/* If MTL+ make sure gsc is loaded and proxy is setup */
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		if (!intel_uc_fw_is_running(&gsc->fw))
> +			return false;
> +
> +	/* MEI/GSC interface is solid depending on which is used */
>   	mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>   	if (!dev_priv->display.hdcp.comp_added ||  !dev_priv->display.hdcp.master) {
>   		mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> @@ -1974,7 +1981,7 @@ static int _intel_hdcp2_enable(struct intel_connector *connector)
>   		    connector->base.name, connector->base.base.id,
>   		    hdcp->content_type);
>   
> -	if (DISPLAY_VER(i915) >= 14) {
> +	if (intel_hdcp_gsc_cs_required(i915)) {
>   		hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
>   
>   		if (!hdcp_message)
> @@ -2035,7 +2042,7 @@ _intel_hdcp2_disable(struct intel_connector *connector, bool hdcp2_link_recovery
>   	if (hdcp2_deauthenticate_port(connector) < 0)
>   		drm_dbg_kms(&i915->drm, "Port deauth failed.\n");
>   
> -	if (DISPLAY_VER(i915) >= 14)
> +	if (intel_hdcp_gsc_cs_required(i915))
>   		intel_hdcp_gsc_free_message(i915);
>   
>   	connector->hdcp.hdcp2_encrypted = false;
> @@ -2255,6 +2262,9 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>   
>   static bool is_hdcp2_supported(struct drm_i915_private *dev_priv)
>   {
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		return true;
> +
>   	if (!IS_ENABLED(CONFIG_INTEL_MEI_HDCP))
>   		return false;
>   
> @@ -2276,10 +2286,14 @@ void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
>   
>   	dev_priv->display.hdcp.comp_added = true;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
> -	ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> -				  I915_COMPONENT_HDCP);
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		ret = intel_hdcp_gsc_init(dev_priv);
> +	else
> +		ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_ops,
> +					  I915_COMPONENT_HDCP);
> +
>   	if (ret < 0) {
> -		drm_dbg_kms(&dev_priv->drm, "Failed at component add(%d)\n",
> +		drm_dbg_kms(&dev_priv->drm, "Failed at fw component add(%d)\n",
>   			    ret);
>   		mutex_lock(&dev_priv->display.hdcp.comp_mutex);
>   		dev_priv->display.hdcp.comp_added = false;
> @@ -2506,7 +2520,10 @@ void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
>   	dev_priv->display.hdcp.comp_added = false;
>   	mutex_unlock(&dev_priv->display.hdcp.comp_mutex);
>   
> -	component_del(dev_priv->drm.dev, &i915_hdcp_ops);
> +	if (intel_hdcp_gsc_cs_required(dev_priv))
> +		intel_hdcp_gsc_fini(dev_priv);
> +	else
> +		component_del(dev_priv->drm.dev, &i915_hdcp_ops);
>   }
>   
>   void intel_hdcp_cleanup(struct intel_connector *connector)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 8da4faf9b10c..fb6042684014 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -3,12 +3,640 @@
>    * Copyright 2023, Intel Corporation.
>    */
>   
> +#include <drm/i915_hdcp_interface.h>
> +
>   #include "display/intel_hdcp_gsc.h"
>   #include "gem/i915_gem_region.h"
>   #include "gt/uc/intel_gsc_uc_heci_cmd_submit.h"
>   #include "i915_drv.h"
>   #include "i915_utils.h"
>   
> +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) >= 14;
> +}
> +
> +static int
> +gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *data,
> +			  struct hdcp2_ake_init *ake_data)
> +{
> +	struct wired_cmd_initiate_hdcp2_session_in session_init_in = { { 0 } };
> +	struct wired_cmd_initiate_hdcp2_session_out
> +						session_init_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ake_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");

Generally we do not use Full stop at the end of logs, so lets drop it, 
to be consistent with other logs.

Same in other similar places below.


> +		return -ENODEV;
> +	}
> +
> +	session_init_in.header.api_version = HDCP_API_VERSION;
> +	session_init_in.header.command_id = WIRED_INITIATE_HDCP2_SESSION;
> +	session_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	session_init_in.header.buffer_len =
> +				WIRED_CMD_BUF_LEN_INITIATE_HDCP2_SESSION_IN;
> +
> +	session_init_in.port.integrated_port_type = data->port_type;
> +	session_init_in.port.physical_port = (u8)data->hdcp_ddi;
> +	session_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +	session_init_in.protocol = data->protocol;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_init_in,
> +				       sizeof(session_init_in),
> +				       (u8 *)&session_init_out,
> +				       sizeof(session_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_INITIATE_HDCP2_SESSION,
> +			    session_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ake_data->msg_id = HDCP_2_2_AKE_INIT;
> +	ake_data->tx_caps = session_init_out.tx_caps;
> +	memcpy(ake_data->r_tx, session_init_out.r_tx, HDCP_2_2_RTX_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_receiver_cert_prepare_km(struct device *dev,
> +					 struct hdcp_port_data *data,
> +					 struct hdcp2_ake_send_cert *rx_cert,
> +					 bool *km_stored,
> +					 struct hdcp2_ake_no_stored_km
> +								*ek_pub_km,
> +					 size_t *msg_sz)
> +{
> +	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in = { { 0 } };
> +	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	verify_rxcert_in.header.api_version = HDCP_API_VERSION;
> +	verify_rxcert_in.header.command_id = WIRED_VERIFY_RECEIVER_CERT;
> +	verify_rxcert_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_rxcert_in.header.buffer_len =
> +				WIRED_CMD_BUF_LEN_VERIFY_RECEIVER_CERT_IN;
> +
> +	verify_rxcert_in.port.integrated_port_type = data->port_type;
> +	verify_rxcert_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_rxcert_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	verify_rxcert_in.cert_rx = rx_cert->cert_rx;
> +	memcpy(verify_rxcert_in.r_rx, &rx_cert->r_rx, HDCP_2_2_RRX_LEN);
> +	memcpy(verify_rxcert_in.rx_caps, rx_cert->rx_caps, HDCP_2_2_RXCAPS_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_rxcert_in,
> +				       sizeof(verify_rxcert_in),
> +				       (u8 *)&verify_rxcert_out,
> +				       sizeof(verify_rxcert_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed: %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_rxcert_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_VERIFY_RECEIVER_CERT,
> +			    verify_rxcert_out.header.status);
> +		return -EIO;
> +	}
> +
> +	*km_stored = !!verify_rxcert_out.km_stored;
> +	if (verify_rxcert_out.km_stored) {
> +		ek_pub_km->msg_id = HDCP_2_2_AKE_STORED_KM;
> +		*msg_sz = sizeof(struct hdcp2_ake_stored_km);
> +	} else {
> +		ek_pub_km->msg_id = HDCP_2_2_AKE_NO_STORED_KM;
> +		*msg_sz = sizeof(struct hdcp2_ake_no_stored_km);
> +	}
> +
> +	memcpy(ek_pub_km->e_kpub_km, &verify_rxcert_out.ekm_buff,
> +	       sizeof(verify_rxcert_out.ekm_buff));
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_hprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_ake_send_hprime *rx_hprime)
> +{
> +	struct wired_cmd_ake_send_hprime_in send_hprime_in = { { 0 } };
> +	struct wired_cmd_ake_send_hprime_out send_hprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_hprime)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	send_hprime_in.header.api_version = HDCP_API_VERSION;
> +	send_hprime_in.header.command_id = WIRED_AKE_SEND_HPRIME;
> +	send_hprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	send_hprime_in.header.buffer_len = WIRED_CMD_BUF_LEN_AKE_SEND_HPRIME_IN;
> +
> +	send_hprime_in.port.integrated_port_type = data->port_type;
> +	send_hprime_in.port.physical_port = (u8)data->hdcp_ddi;
> +	send_hprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(send_hprime_in.h_prime, rx_hprime->h_prime,
> +	       HDCP_2_2_H_PRIME_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&send_hprime_in,
> +				       sizeof(send_hprime_in),
> +				       (u8 *)&send_hprime_out,
> +				       sizeof(send_hprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (send_hprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_HPRIME, send_hprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_store_pairing_info(struct device *dev, struct hdcp_port_data *data,
> +			    struct hdcp2_ake_send_pairing_info *pairing_info)
> +{
> +	struct wired_cmd_ake_send_pairing_info_in pairing_info_in = { { 0 } };
> +	struct wired_cmd_ake_send_pairing_info_out pairing_info_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !pairing_info)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	pairing_info_in.header.api_version = HDCP_API_VERSION;
> +	pairing_info_in.header.command_id = WIRED_AKE_SEND_PAIRING_INFO;
> +	pairing_info_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	pairing_info_in.header.buffer_len =
> +					WIRED_CMD_BUF_LEN_SEND_PAIRING_INFO_IN;
> +
> +	pairing_info_in.port.integrated_port_type = data->port_type;
> +	pairing_info_in.port.physical_port = (u8)data->hdcp_ddi;
> +	pairing_info_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(pairing_info_in.e_kh_km, pairing_info->e_kh_km,
> +	       HDCP_2_2_E_KH_KM_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&pairing_info_in,
> +				       sizeof(pairing_info_in),
> +				       (u8 *)&pairing_info_out,
> +				       sizeof(pairing_info_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (pairing_info_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. Status: 0x%X\n",
> +			    WIRED_AKE_SEND_PAIRING_INFO,
> +			    pairing_info_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_initiate_locality_check(struct device *dev,
> +				 struct hdcp_port_data *data,
> +				 struct hdcp2_lc_init *lc_init_data)
> +{
> +	struct wired_cmd_init_locality_check_in lc_init_in = { { 0 } };
> +	struct wired_cmd_init_locality_check_out lc_init_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !lc_init_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	lc_init_in.header.api_version = HDCP_API_VERSION;
> +	lc_init_in.header.command_id = WIRED_INIT_LOCALITY_CHECK;
> +	lc_init_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	lc_init_in.header.buffer_len = WIRED_CMD_BUF_LEN_INIT_LOCALITY_CHECK_IN;
> +
> +	lc_init_in.port.integrated_port_type = data->port_type;
> +	lc_init_in.port.physical_port = (u8)data->hdcp_ddi;
> +	lc_init_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&lc_init_in, sizeof(lc_init_in),
> +				       (u8 *)&lc_init_out, sizeof(lc_init_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (lc_init_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X Failed. status: 0x%X\n",
> +			    WIRED_INIT_LOCALITY_CHECK, lc_init_out.header.status);
> +		return -EIO;
> +	}
> +
> +	lc_init_data->msg_id = HDCP_2_2_LC_INIT;
> +	memcpy(lc_init_data->r_n, lc_init_out.r_n, HDCP_2_2_RN_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_verify_lprime(struct device *dev, struct hdcp_port_data *data,
> +		       struct hdcp2_lc_send_lprime *rx_lprime)
> +{
> +	struct wired_cmd_validate_locality_in verify_lprime_in = { { 0 } };
> +	struct wired_cmd_validate_locality_out verify_lprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !rx_lprime)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	verify_lprime_in.header.api_version = HDCP_API_VERSION;
> +	verify_lprime_in.header.command_id = WIRED_VALIDATE_LOCALITY;
> +	verify_lprime_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_lprime_in.header.buffer_len =
> +					WIRED_CMD_BUF_LEN_VALIDATE_LOCALITY_IN;
> +
> +	verify_lprime_in.port.integrated_port_type = data->port_type;
> +	verify_lprime_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_lprime_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(verify_lprime_in.l_prime, rx_lprime->l_prime,
> +	       HDCP_2_2_L_PRIME_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_lprime_in,
> +				       sizeof(verify_lprime_in),
> +				       (u8 *)&verify_lprime_out,
> +				       sizeof(verify_lprime_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_lprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VALIDATE_LOCALITY,
> +			    verify_lprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_get_session_key(struct device *dev,
> +				    struct hdcp_port_data *data,
> +				    struct hdcp2_ske_send_eks *ske_data)
> +{
> +	struct wired_cmd_get_session_key_in get_skey_in = { { 0 } };
> +	struct wired_cmd_get_session_key_out get_skey_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data || !ske_data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	get_skey_in.header.api_version = HDCP_API_VERSION;
> +	get_skey_in.header.command_id = WIRED_GET_SESSION_KEY;
> +	get_skey_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	get_skey_in.header.buffer_len = WIRED_CMD_BUF_LEN_GET_SESSION_KEY_IN;
> +
> +	get_skey_in.port.integrated_port_type = data->port_type;
> +	get_skey_in.port.physical_port = (u8)data->hdcp_ddi;
> +	get_skey_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&get_skey_in, sizeof(get_skey_in),
> +				       (u8 *)&get_skey_out, sizeof(get_skey_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (get_skey_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_GET_SESSION_KEY, get_skey_out.header.status);
> +		return -EIO;
> +	}
> +
> +	ske_data->msg_id = HDCP_2_2_SKE_SEND_EKS;
> +	memcpy(ske_data->e_dkey_ks, get_skey_out.e_dkey_ks,
> +	       HDCP_2_2_E_DKEY_KS_LEN);
> +	memcpy(ske_data->riv, get_skey_out.r_iv, HDCP_2_2_RIV_LEN);
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_repeater_check_flow_prepare_ack(struct device *dev,
> +					 struct hdcp_port_data *data,
> +					 struct hdcp2_rep_send_receiverid_list
> +							*rep_topology,
> +					 struct hdcp2_rep_send_ack
> +							*rep_send_ack)
> +{
> +	struct wired_cmd_verify_repeater_in verify_repeater_in = { { 0 } };
> +	struct wired_cmd_verify_repeater_out verify_repeater_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !rep_topology || !rep_send_ack || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	verify_repeater_in.header.api_version = HDCP_API_VERSION;
> +	verify_repeater_in.header.command_id = WIRED_VERIFY_REPEATER;
> +	verify_repeater_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_repeater_in.header.buffer_len =
> +					WIRED_CMD_BUF_LEN_VERIFY_REPEATER_IN;
> +
> +	verify_repeater_in.port.integrated_port_type = data->port_type;
> +	verify_repeater_in.port.physical_port = (u8)data->hdcp_ddi;
> +	verify_repeater_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(verify_repeater_in.rx_info, rep_topology->rx_info,
> +	       HDCP_2_2_RXINFO_LEN);
> +	memcpy(verify_repeater_in.seq_num_v, rep_topology->seq_num_v,
> +	       HDCP_2_2_SEQ_NUM_LEN);
> +	memcpy(verify_repeater_in.v_prime, rep_topology->v_prime,
> +	       HDCP_2_2_V_PRIME_HALF_LEN);
> +	memcpy(verify_repeater_in.receiver_ids, rep_topology->receiver_ids,
> +	       HDCP_2_2_RECEIVER_IDS_MAX_LEN);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&verify_repeater_in,
> +				       sizeof(verify_repeater_in),
> +				       (u8 *)&verify_repeater_out,
> +				       sizeof(verify_repeater_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_repeater_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_VERIFY_REPEATER,
> +			    verify_repeater_out.header.status);
> +		return -EIO;
> +	}
> +
> +	memcpy(rep_send_ack->v, verify_repeater_out.v,
> +	       HDCP_2_2_V_PRIME_HALF_LEN);
> +	rep_send_ack->msg_id = HDCP_2_2_REP_SEND_ACK;
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_verify_mprime(struct device *dev,
> +				  struct hdcp_port_data *data,
> +				  struct hdcp2_rep_stream_ready *stream_ready)
> +{
> +	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
> +	struct wired_cmd_repeater_auth_stream_req_out
> +					verify_mprime_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +	size_t cmd_size;
> +
> +	if (!dev || !stream_ready || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	cmd_size = struct_size(verify_mprime_in, streams, data->k);
> +	if (cmd_size == SIZE_MAX)
> +		return -EINVAL;
> +
> +	verify_mprime_in = kzalloc(cmd_size, GFP_KERNEL);
> +	if (!verify_mprime_in)
> +		return -ENOMEM;
> +
> +	verify_mprime_in->header.api_version = HDCP_API_VERSION;
> +	verify_mprime_in->header.command_id = WIRED_REPEATER_AUTH_STREAM_REQ;
> +	verify_mprime_in->header.status = FW_HDCP_STATUS_SUCCESS;
> +	verify_mprime_in->header.buffer_len = cmd_size  - sizeof(verify_mprime_in->header);
> +
> +	verify_mprime_in->port.integrated_port_type = data->port_type;
> +	verify_mprime_in->port.physical_port = (u8)data->hdcp_ddi;
> +	verify_mprime_in->port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	memcpy(verify_mprime_in->m_prime, stream_ready->m_prime, HDCP_2_2_MPRIME_LEN);
> +	drm_hdcp_cpu_to_be24(verify_mprime_in->seq_num_m, data->seq_num_m);
> +
> +	memcpy(verify_mprime_in->streams, data->streams,
> +	       array_size(data->k, sizeof(*data->streams)));
> +
> +	verify_mprime_in->k = cpu_to_be16(data->k);
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)verify_mprime_in, cmd_size,
> +				       (u8 *)&verify_mprime_out,
> +				       sizeof(verify_mprime_out));
> +	kfree(verify_mprime_in);
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (verify_mprime_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_REPEATER_AUTH_STREAM_REQ,
> +			    verify_mprime_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int gsc_hdcp_enable_authentication(struct device *dev,
> +					  struct hdcp_port_data *data)
> +{
> +	struct wired_cmd_enable_auth_in enable_auth_in = { { 0 } };
> +	struct wired_cmd_enable_auth_out enable_auth_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	enable_auth_in.header.api_version = HDCP_API_VERSION;
> +	enable_auth_in.header.command_id = WIRED_ENABLE_AUTH;
> +	enable_auth_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	enable_auth_in.header.buffer_len = WIRED_CMD_BUF_LEN_ENABLE_AUTH_IN;
> +
> +	enable_auth_in.port.integrated_port_type = data->port_type;
> +	enable_auth_in.port.physical_port = (u8)data->hdcp_ddi;
> +	enable_auth_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +	enable_auth_in.stream_type = data->streams[0].stream_type;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&enable_auth_in,
> +				       sizeof(enable_auth_in),
> +				       (u8 *)&enable_auth_out,
> +				       sizeof(enable_auth_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (enable_auth_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "FW cmd 0x%08X failed. status: 0x%X\n",
> +			    WIRED_ENABLE_AUTH, enable_auth_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +gsc_hdcp_close_session(struct device *dev, struct hdcp_port_data *data)
> +{
> +	struct wired_cmd_close_session_in session_close_in = { { 0 } };
> +	struct wired_cmd_close_session_out session_close_out = { { 0 } };
> +	struct drm_i915_private *i915;
> +	ssize_t byte;
> +
> +	if (!dev || !data)
> +		return -EINVAL;
> +
> +	i915 = kdev_to_i915(dev);
> +	if (!i915) {
> +		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
> +		return -ENODEV;
> +	}
> +
> +	session_close_in.header.api_version = HDCP_API_VERSION;
> +	session_close_in.header.command_id = WIRED_CLOSE_SESSION;
> +	session_close_in.header.status = FW_HDCP_STATUS_SUCCESS;
> +	session_close_in.header.buffer_len =
> +				WIRED_CMD_BUF_LEN_CLOSE_SESSION_IN;
> +
> +	session_close_in.port.integrated_port_type = data->port_type;
> +	session_close_in.port.physical_port = (u8)data->hdcp_ddi;
> +	session_close_in.port.attached_transcoder = (u8)data->hdcp_transcoder;
> +
> +	byte = intel_hdcp_gsc_msg_send(i915, (u8 *)&session_close_in,
> +				       sizeof(session_close_in),
> +				       (u8 *)&session_close_out,
> +				       sizeof(session_close_out));
> +	if (byte < 0) {
> +		drm_dbg_kms(&i915->drm, "intel_hdcp_gsc_msg_send failed. %zd\n", byte);
> +		return byte;
> +	}
> +
> +	if (session_close_out.header.status != FW_HDCP_STATUS_SUCCESS) {
> +		drm_dbg_kms(&i915->drm, "Session Close Failed. status: 0x%X\n",
> +			    session_close_out.header.status);
> +		return -EIO;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct i915_hdcp_ops gsc_hdcp_ops = {
> +	.initiate_hdcp2_session = gsc_hdcp_initiate_session,
> +	.verify_receiver_cert_prepare_km =
> +				gsc_hdcp_verify_receiver_cert_prepare_km,
> +	.verify_hprime = gsc_hdcp_verify_hprime,
> +	.store_pairing_info = gsc_hdcp_store_pairing_info,
> +	.initiate_locality_check = gsc_hdcp_initiate_locality_check,
> +	.verify_lprime = gsc_hdcp_verify_lprime,
> +	.get_session_key = gsc_hdcp_get_session_key,
> +	.repeater_check_flow_prepare_ack =
> +				gsc_hdcp_repeater_check_flow_prepare_ack,
> +	.verify_mprime = gsc_hdcp_verify_mprime,
> +	.enable_hdcp_authentication = gsc_hdcp_enable_authentication,
> +	.close_hdcp_session = gsc_hdcp_close_session,
> +};
> +
> +int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> +{
> +	struct i915_hdcp_master *data;
> +
> +	data = kzalloc(sizeof(struct i915_hdcp_master), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&i915->display.hdcp.comp_mutex);
> +	i915->display.hdcp.master = data;
> +	i915->display.hdcp.master->hdcp_dev = i915->drm.dev;
> +	i915->display.hdcp.master->ops = &gsc_hdcp_ops;
> +	mutex_unlock(&i915->display.hdcp.comp_mutex);
> +
> +	return 0;
> +}
> +
> +int intel_hdcp_gsc_fini(struct drm_i915_private *i915)
> +{
> +	kfree(i915->display.hdcp.master);
> +	return 0;

I think we can do away with return type here.

Regards,

Ankit


> +}
> +
>   /*This function helps allocate memory for the command that we will send to gsc cs */
>   int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   				      struct intel_hdcp_gsc_message *hdcp_message)
> @@ -120,7 +748,8 @@ static int intel_gsc_send_sync(struct drm_i915_private *i915,
>    * will follow
>    */
>   ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> -				size_t msg_in_len, u8 *msg_out, size_t msg_out_len)
> +				size_t msg_in_len, u8 *msg_out,
> +				size_t msg_out_len)
>   {
>   	struct intel_gt *gt = i915->media_gt;
>   	struct intel_gsc_mtl_header *header;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 8352b31a7e4a..af29baf1d558 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -20,8 +20,11 @@ struct intel_hdcp_gsc_message {
>   int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   				      struct intel_hdcp_gsc_message *hdcp_message);
>   void intel_hdcp_gsc_free_message(struct drm_i915_private *i915);
> +bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
>   ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   				size_t msg_in_len, u8 *msg_out,
>   				size_t msg_out_len);
> +int intel_hdcp_gsc_init(struct drm_i915_private *i915);
> +int intel_hdcp_gsc_fini(struct drm_i915_private *i915);
>   
>   #endif /* __INTEL_HDCP_GCS_H__ */
