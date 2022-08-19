Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 149B0599EC5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 17:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3637210F0C1;
	Fri, 19 Aug 2022 15:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D96310F0C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 15:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660923979; x=1692459979;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IYG/QcSie/Blq+c+hKf0azGsl1XlzIbB5fB4pnEX5tA=;
 b=MSOVjCKr/avbYn0QkOVdiAQAOTyaAbCbS1SdzaSY6rc5kry+lm8ScQgA
 Hu+JEEy4CuYkMHAOMQJxmuTMQPqiiazcxuNokAUHe/5rPoSDJBuEptAZh
 jG+Cl1dY8GQF5Dbz+309SGA49ZJSzMAIcUJg/D61gmCE4aV8tefV//Igi
 dp9IUHx3SGEatSE1ISWWQEDjCmo9OiWBDr3craN1FT8av3e5pfLy3UszD
 7YQTv4xX4wtz8mdsfkSs2yeoCoPs1X19WddHHRiz4tFQw/6MmhQPycSle
 bBVjgOqexlx37PpdltP9hkse1ZlDMSPwrgMnQXTsD9reJqWXEJDWWV93f Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10444"; a="357021909"
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="357021909"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 08:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,248,1654585200"; d="scan'208";a="558987844"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 19 Aug 2022 08:46:18 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 08:46:18 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 08:46:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 08:46:18 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 08:46:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WvBi3TyeSyGZAHC37rxZ4yypW5kKPIQOMhADAxoTDqEuQPI0Hh+lSqEKplgFh9zy5mE4csVeKT23UBdC488bsmwrfIcrkkIwqzalHPg2UNUpc6YEMqWRNalX8WdIIOCR3GV+p2nL1ZtH2vYtom0tGzZkFU/48ozEJYL4fq9LTGXAznFXgR0q/bzRt6Vcvfel3zfJG5AeQa15hXY65LI+yOmIrRrcBQx/+QTDeovkU+zYree1rvRa5+Aq07SC/kY+8l73onXrteUWrRMA1q1AyCTK1sRk52/XrMJL7pW7Fvbr/CrIwSeDJdw5MFt3jGobzkd7cBg/cgtwot7eOREcpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SoIHvpEayhkaNn5d6fGKSJeQPwQSx0QpkfBaTAi/uCs=;
 b=f0jNDFHpXS+zMWXZbIqqWnnlMdiMHV0W0jEY17fdIWE9o3OKyltEWMzIDoqCX4OE6lWSeQIu7TriSMS2kq1d0EZWTHUhL68hi4l1yQKXPs+WHr1hV0J0aAoz6uvahOA1J/z2FrZT7bh5mrmN7/sC69uUeiKnGMhLDwjQWjki0i5eidvjkRw+cUAupB/6cSwvP3EV4QKVmRtNd0R916zFhcwhYKs47hxwGmhqDZKExFFuTR2Xj5SEZLYBkEMgfrouIWAld1+DpEq5qhhhtuK89/o9qDLNojX1Rxwu6MCnLNGPFYlUnbk3sBOHvImOJvLkUV4knmX0k59brqyxLB7gwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3653.namprd11.prod.outlook.com (2603:10b6:a03:f7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Fri, 19 Aug
 2022 15:46:15 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Fri, 19 Aug 2022
 15:46:15 +0000
Message-ID: <0c101646-cd51-7a39-6f44-67f34aca2770@intel.com>
Date: Fri, 19 Aug 2022 08:46:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Matthew Auld <matthew.auld@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220819123904.913750-1-matthew.auld@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220819123904.913750-1-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0071.namprd02.prod.outlook.com
 (2603:10b6:a03:54::48) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b095a338-717a-4dd3-6964-08da81f9f32f
X-MS-TrafficTypeDiagnostic: BYAPR11MB3653:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ReN2lYff6lGXQ1yTIkpBEoUr431hfB+VeKlSGiqJtKH+p1li2zROT8yw1izzGimAdnO2YbzNAcldveuq4HZtvuEJEAGR2IXzdXAECtJEzau+92RFjU6dvCRxas1bpKtVVz7PIyROG5f6dR5PdaAMJazmcSGnLNbYKs+xDMD6XcHZhPjRsNKd2OpoNlJL0nT4FhpYJ1cLtOjVd54V+HTehbbHukPfFIJHTl/PBr+eIVAf3cV54K6SUbSjs5W6riSqNy1HfNN2oGWWzmdZK8+vJmcKobjUVckoGmukTPnZdFDYOZlI0QIo4mf7YnQeSPiTyUGO1NI9Bp40mD2Y/gPuJDAUc4q55iAZhYzLIF/w9FnGaANLTb8qkLHs6Sc7mgYUwRE40k9hArDj+H/nZ998gR8c7wxyAZ9YEhE3FFgw9I3JIf6WMWClsXT4W4aY/u4D0GOLKDLdde9vG7pwMDcMk+m+uymN9YeHtbwgc4ROXhfMw1ptP7SUgr9FUF1TCmhYli9r8WEb5LBhRBW4GLbh7hrqQdzrC7xb5gaf9mrDHPBXCjpBialFx23iHRUzxYXnMtLVR6Cog42ohsmOjYIcO4anVlQVde1vz385zwvuF9WyDwOihSAWDkzHEFikOg1K4UiRcS4iFC6sGuo3jy04sStlrN/ZzROrSJO27bmCS1l4uRQdZWX1AqoAqAEQD7FPnLRevASkdSmyExswq+LWvIV/El4hcRPqJ1Lx+aYEZwYzCvUkF50hUNtFfRDYPOxhKsGoCqEUxANQkqNBst1lmd8ASzbFcJpBe8kEx/WqgnFw/6raSHCmtzcuN9Bz1lTZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(396003)(376002)(39860400002)(366004)(30864003)(41300700001)(8936002)(5660300002)(107886003)(31696002)(2616005)(53546011)(2906002)(6506007)(86362001)(6512007)(186003)(26005)(82960400001)(38100700002)(83380400001)(66476007)(66556008)(8676002)(54906003)(4326008)(36756003)(31686004)(478600001)(316002)(66946007)(6486002)(966005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWZpak9mRTN6ZzQyMndyWSt5dDA0WkFNNkhNK1hiTjd1clA1VGhTZmVCOW9I?=
 =?utf-8?B?MmZNc2VhZGdMcys0V0xuQnNGRUxlYU14dXpCaHROYUZIeC9tTzRNZFE2RUQy?=
 =?utf-8?B?QVFGc0lBM2FON2VIZlRDSDBIQ0t3MkszcFI0QTk3MEV6UDdmR0FGdXcvc2Vr?=
 =?utf-8?B?eFR2YzlITVRzYjVkQkw0STVSYjVYVlRpK0dBNW10LzgvV1lWVFhyQTQ3MTFx?=
 =?utf-8?B?dXZ0bmFZM0dMNkFpNXJkSXA3REFOU3o3amVyQmhIRkozZHFKZFpVVVpCYysw?=
 =?utf-8?B?amJjRVBKeEhtOGZOS0VDcCtUVXFxSDFlV0IwQmY3Si81cHVjUWpnQmZUR2NX?=
 =?utf-8?B?SnMzOTM3NTRlNmwwTm5HY0hUU2gyL29Wdm1WNnB0UmlZVGJvbk1iL2pNWExp?=
 =?utf-8?B?TlJycFhYYUxQem5WUjJRSUVKVExWK0g0ZkhqZ3NlRUg4RklyOHUreEVjM1dJ?=
 =?utf-8?B?SFp0OFRLRVpJQzNFd0svQTEwMGFwME5od0ZyRXBEbHQ5d09wOW41NVM3eGZI?=
 =?utf-8?B?ZXdKOHVGRVFLWHBicVkvaUZWSXNhdWlNdklEOEZYMVVmWUQya0ViV1N0VEpr?=
 =?utf-8?B?SFhVc0dMR0NRdFpLU1dweVROWUtkUThINkcyL1FQQzNvbWlHM09ESGIvUS83?=
 =?utf-8?B?eHZPTm5LNlFPMUhFUE8xYmpDeUlIczZJdzJZZG5RWXhLVDJrN1daWnU5U0xt?=
 =?utf-8?B?NFFmV3laZmluVldkcVhDK3d2Rkt6K1c4bTdYakNDU2ZUY2ZZUzRhRzJaaUxt?=
 =?utf-8?B?cW1qU1lsZHpmV3lsYjVLTTZzSUQ3enhQMDZlSFFsMTUxeE1PWk5wV20rSEwx?=
 =?utf-8?B?RzFLN2VMc1plUUFMemJ0a1VaRHk0ME50cFV6cUJRYXJQVk5aUGZ0K2Exbi9W?=
 =?utf-8?B?dmRRUk1GeFo4MGJiMEIyanVGZ3ZnMlZ1dnZJNTZOaHZQbGxrWnFiRUZia3JH?=
 =?utf-8?B?RjdiZDBub3ZsYUZpUVRpQVU4dlE5ejdwMDhSSDQzWXU1amlrNnpmTEkvbjlL?=
 =?utf-8?B?WmJXbkZLWk9ra3BTcXlvYXdTZTZHbTlyS2NOallFWFhMWXRnNm9oelRuQW9S?=
 =?utf-8?B?aVFpQU95NjJBY2xHVUZ0aHhLbjJ0c0ZVWCtNaG5rTDduTXQvNzlXQUQ3Z2FS?=
 =?utf-8?B?WlRGTDdLN29mT21xSTVmYnFkSEhBYXNVVVdFSmx3SEdJRjl3RUR0NVhGdGg0?=
 =?utf-8?B?Zmh6NVlpaW04UTIxK282aHdReVNxajBqUWUxdk5pTGZkdDJ0RUt0VnFrYUlO?=
 =?utf-8?B?ZmlKaGY2WFd0NnJ5V0pqTWxuYlhqR21FazBodWlraitLY0VJcnhzSUliNjBm?=
 =?utf-8?B?cko3OHV3bGEwL1hpYU5Sb0hlMEFiaHZ5ODlkVGVIYXBpbC8wakFkYnVxai9w?=
 =?utf-8?B?M0VhQkxMWTMzTTBaVkFYclJLeHVISzBaMGlDL2dOeGZQVEppcHRLdnB3dzh0?=
 =?utf-8?B?em9QQ2doQ0M1djhpelQ2OUtDbTdVRjlqQ2dTaHp2T1RGdzFLUmsyZU9nK0V6?=
 =?utf-8?B?OUdBQThQamJLdDhpS2lNOEh2RU5YREY3TGZ0NU51WFdERy9Eb05yaTF0VnR2?=
 =?utf-8?B?R0ZYRE9FTTF3T1JVdzlhZktMdkRQQVpCNEc5bHVXb3JsOTg0ays0RWpzWVFN?=
 =?utf-8?B?SzlIdDdMV2h5bllMNXgvb0dGYVRndXFlZmhHT2JjYTIyRi8zaXFSQzZzRWhu?=
 =?utf-8?B?TVlBVjlqZHZYRWJnMzdqRmJ2YmlYZ3dBbS93WlpzTTFYK2dHVmoyM3JRQUhN?=
 =?utf-8?B?WDlIeGpMd3BIcUpRSWJ5cVlXUkZrY2l4Qk5HdVRwOCtOaHdyenFoYWhIeXV3?=
 =?utf-8?B?d3dmTm54ejZCTmdIekdmRmZPWkptc0plcHRuaiszcUpoUURxeDhEVlU0cjd2?=
 =?utf-8?B?a0dTNysra090dGlxelBHTjl5UFBPYmdCWlpxUXFkMU5pMXJEQTV0YlBDOTNQ?=
 =?utf-8?B?Tk1WbVFPdStCM0pzdE10ZEVKUWRUZTVoT2F5UHp6Q0xIUGp4Z0RwSTNGdUJx?=
 =?utf-8?B?RERzVit1emg1QTduNVk5VjNTcHRla2k2b1V2Y3RaY0RHY1ZzRzlQakp3NVVu?=
 =?utf-8?B?Z0E4N293NG1JN3BYcDloRTBkWVhObUFoRXBzUkl5ZzRYQzhSNkNjUkZPYlYy?=
 =?utf-8?B?eDhDcytiajcxUS9KSEp5Qjk4WmlKMC9RYnRKbi9sOVgwWHBqMXUwbHc0eWVR?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b095a338-717a-4dd3-6964-08da81f9f32f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2022 15:46:15.4406 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A+8XeVJQtQBNfWYI8H8WKKg6fPNG6NzfPrJtyJub9PlG6Ep7O4UE48WshgjgkVYcSuejVyax/y8oQXXytK4/gWszkbKkN2opbxcy/F0XFSE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3653
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero"
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/19/2022 05:39, Matthew Auld wrote:
> This reverts commit 6a079903847cce1dd06345127d2a32f26d2cd9c6.
>
> Everything in CI using GuC is now timing out[1], and killing the machine
> with this change (perhaps a deadlock?). CI was recently on fire due to
> some changes coming in from -rc1, so likely the pre-merge CI results for
> this series were invalid? For now just revert, unless GuC experts
> already have a fix in mind.
>
> [1] https://intel-gfx-ci.01.org/tree/drm-tip/index.html?
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

Given that CI was claiming a pass for the original patch set, no we 
don't have a fix in mind. It is most frustrating when CI says all green 
if the entire universe is so broken that no tests were even running :(.

John.


> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
>   drivers/gpu/drm/i915/gt/intel_context.h       |   8 -
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   7 -
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  17 +-
>   .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  60 -------
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 154 +++---------------
>   drivers/gpu/drm/i915/i915_selftest.h          |   2 -
>   7 files changed, 27 insertions(+), 223 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index df7fd1b019ec..dabdfe09f5e5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1454,7 +1454,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   		int err;
>   
>   		/* serialises with execbuf */
> -		intel_context_close(ce);
> +		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
>   		if (!intel_context_pin_if_active(ce))
>   			continue;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index f96420f0b5bb..8e2d70630c49 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -276,14 +276,6 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
>   	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
>   }
>   
> -static inline void intel_context_close(struct intel_context *ce)
> -{
> -	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> -
> -	if (ce->ops->close)
> -		ce->ops->close(ce);
> -}
> -
>   static inline bool intel_context_is_closed(const struct intel_context *ce)
>   {
>   	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 86ac84e2edb9..04eacae1aca5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -43,8 +43,6 @@ struct intel_context_ops {
>   	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>   		       unsigned int preempt_timeout_ms);
>   
> -	void (*close)(struct intel_context *ce);
> -
>   	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
>   	int (*pin)(struct intel_context *ce, void *vaddr);
>   	void (*unpin)(struct intel_context *ce);
> @@ -210,11 +208,6 @@ struct intel_context {
>   		 * each priority bucket
>   		 */
>   		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
> -		/**
> -		 * @sched_disable_delay: worker to disable scheduling on this
> -		 * context
> -		 */
> -		struct delayed_work sched_disable_delay;
>   	} guc_state;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 944b549b8797..804133df1ac9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -112,10 +112,6 @@ struct intel_guc {
>   		 * refs
>   		 */
>   		struct list_head guc_id_list;
> -		/**
> -		 * @guc_ids_in_use: Number single-lrc guc_ids in use
> -		 */
> -		u16 guc_ids_in_use;
>   		/**
>   		 * @destroyed_contexts: list of contexts waiting to be destroyed
>   		 * (deregistered with the GuC)
> @@ -136,16 +132,6 @@ struct intel_guc {
>   		 * @reset_fail_mask: mask of engines that failed to reset
>   		 */
>   		intel_engine_mask_t reset_fail_mask;
> -		/**
> -		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
> -		 * contexts
> -		 */
> -		u64 sched_disable_delay_ms;
> -		/**
> -		 * @sched_disable_gucid_threshold: threshold of min remaining available
> -		 * guc_ids before we start bypassing the schedule disable delay
> -		 */
> -		int sched_disable_gucid_threshold;
>   	} submission_state;
>   
>   	/**
> @@ -475,10 +461,9 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc);
>   void intel_guc_submission_cancel_requests(struct intel_guc *guc);
>   
>   void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
> -void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   void intel_guc_write_barrier(struct intel_guc *guc);
>   
> -int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc);
> +void intel_guc_dump_time_info(struct intel_guc *guc, struct drm_printer *p);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> index c91b150bb7ac..25f09a420561 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> @@ -71,72 +71,12 @@ static bool intel_eval_slpc_support(void *data)
>   	return intel_guc_slpc_is_used(guc);
>   }
>   
> -static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
> -{
> -	struct intel_guc *guc = data;
> -
> -	if (!intel_guc_submission_is_used(guc))
> -		return -ENODEV;
> -
> -	*val = guc->submission_state.sched_disable_delay_ms;
> -
> -	return 0;
> -}
> -
> -static int guc_sched_disable_delay_ms_set(void *data, u64 val)
> -{
> -	struct intel_guc *guc = data;
> -
> -	if (!intel_guc_submission_is_used(guc))
> -		return -ENODEV;
> -
> -	guc->submission_state.sched_disable_delay_ms = val;
> -
> -	return 0;
> -}
> -DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_delay_ms_fops,
> -			guc_sched_disable_delay_ms_get,
> -			guc_sched_disable_delay_ms_set, "%lld\n");
> -
> -static int guc_sched_disable_gucid_threshold_get(void *data, u64 *val)
> -{
> -	struct intel_guc *guc = data;
> -
> -	if (!intel_guc_submission_is_used(guc))
> -		return -ENODEV;
> -
> -	*val = guc->submission_state.sched_disable_gucid_threshold;
> -	return 0;
> -}
> -
> -static int guc_sched_disable_gucid_threshold_set(void *data, u64 val)
> -{
> -	struct intel_guc *guc = data;
> -
> -	if (!intel_guc_submission_is_used(guc))
> -		return -ENODEV;
> -
> -	if (val > intel_guc_sched_disable_gucid_threshold_max(guc))
> -		guc->submission_state.sched_disable_gucid_threshold =
> -			intel_guc_sched_disable_gucid_threshold_max(guc);
> -	else
> -		guc->submission_state.sched_disable_gucid_threshold = val;
> -
> -	return 0;
> -}
> -DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
> -			guc_sched_disable_gucid_threshold_get,
> -			guc_sched_disable_gucid_threshold_set, "%lld\n");
> -
>   void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
>   {
>   	static const struct intel_gt_debugfs_file files[] = {
>   		{ "guc_info", &guc_info_fops, NULL },
>   		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
>   		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
> -		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
> -		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
> -		   NULL },
>   	};
>   
>   	if (!intel_guc_is_supported(guc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index a0cebb4590e9..0d56b615bf78 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -65,13 +65,7 @@
>    * corresponding G2H returns indicating the scheduling disable operation has
>    * completed it is safe to unpin the context. While a disable is in flight it
>    * isn't safe to resubmit the context so a fence is used to stall all future
> - * requests of that context until the G2H is returned. Because this interaction
> - * with the GuC takes a non-zero amount of time we delay the disabling of
> - * scheduling after the pin count goes to zero by a configurable period of time
> - * (see SCHED_DISABLE_DELAY_MS). The thought is this gives the user a window of
> - * time to resubmit something on the context before doing this costly operation.
> - * This delay is only done if the context isn't closed and the guc_id usage is
> - * less than a threshold (see NUM_SCHED_DISABLE_GUC_IDS_THRESHOLD).
> + * requests of that context until the G2H is returned.
>    *
>    * Context deregistration:
>    * Before a context can be destroyed or if we steal its guc_id we must
> @@ -1995,9 +1989,6 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	if (unlikely(ret < 0))
>   		return ret;
>   
> -	if (!intel_context_is_parent(ce))
> -		++guc->submission_state.guc_ids_in_use;
> -
>   	ce->guc_id.id = ret;
>   	return 0;
>   }
> @@ -2007,16 +1998,14 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
>   	if (!context_guc_id_invalid(ce)) {
> -		if (intel_context_is_parent(ce)) {
> +		if (intel_context_is_parent(ce))
>   			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
>   					      ce->guc_id.id,
>   					      order_base_2(ce->parallel.number_children
>   							   + 1));
> -		} else {
> -			--guc->submission_state.guc_ids_in_use;
> +		else
>   			ida_simple_remove(&guc->submission_state.guc_ids,
>   					  ce->guc_id.id);
> -		}
>   		clr_ctx_id_mapping(guc, ce->guc_id.id);
>   		set_context_guc_id_invalid(ce);
>   	}
> @@ -3004,98 +2993,41 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
>   	}
>   }
>   
> -static void guc_context_sched_disable(struct intel_context *ce);
> -
> -static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
> -			     unsigned long flags)
> -	__releases(ce->guc_state.lock)
> +static void guc_context_sched_disable(struct intel_context *ce)
>   {
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	unsigned long flags;
>   	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
>   	intel_wakeref_t wakeref;
> +	u16 guc_id;
>   
> -	lockdep_assert_held(&ce->guc_state.lock);
> -
> -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -
> -	with_intel_runtime_pm(runtime_pm, wakeref)
> -		guc_context_sched_disable(ce);
> -}
> -
> -static bool bypass_sched_disable(struct intel_guc *guc,
> -				 struct intel_context *ce)
> -{
> -	lockdep_assert_held(&ce->guc_state.lock);
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
> -	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
> -	    !ctx_id_mapped(guc, ce->guc_id.id)) {
> -		clr_context_enabled(ce);
> -		return true;
> -	}
> -
> -	return !context_enabled(ce);
> -}
> -
> -static void __delay_sched_disable(struct work_struct *wrk)
> -{
> -	struct intel_context *ce =
> -		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
> -	struct intel_guc *guc = ce_to_guc(ce);
> -	unsigned long flags;
> -
>   	spin_lock_irqsave(&ce->guc_state.lock, flags);
>   
> -	if (bypass_sched_disable(guc, ce)) {
> -		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		intel_context_sched_disable_unpin(ce);
> -	} else {
> -		do_sched_disable(guc, ce, flags);
> -	}
> -}
> -
> -static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
> -{
> -	/*
> -	 * parent contexts are perma-pinned, if we are unpinning do schedule
> -	 * disable immediately.
> -	 */
> -	if (intel_context_is_parent(ce))
> -		return true;
> -
>   	/*
> -	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
> +	 * We have to check if the context has been disabled by another thread,
> +	 * check if submssion has been disabled to seal a race with reset and
> +	 * finally check if any more requests have been committed to the
> +	 * context ensursing that a request doesn't slip through the
> +	 * 'context_pending_disable' fence.
>   	 */
> -	return guc->submission_state.guc_ids_in_use >
> -		guc->submission_state.sched_disable_gucid_threshold;
> -}
> -
> -static void guc_context_sched_disable(struct intel_context *ce)
> -{
> -	struct intel_guc *guc = ce_to_guc(ce);
> -	u64 delay = guc->submission_state.sched_disable_delay_ms;
> -	unsigned long flags;
> -
> -	spin_lock_irqsave(&ce->guc_state.lock, flags);
> -
> -	if (bypass_sched_disable(guc, ce)) {
> -		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		intel_context_sched_disable_unpin(ce);
> -	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
> -		   delay) {
> +	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
> +		     context_has_committed_requests(ce))) {
> +		clr_context_enabled(ce);
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		mod_delayed_work(system_unbound_wq,
> -				 &ce->guc_state.sched_disable_delay,
> -				 msecs_to_jiffies(delay));
> -	} else {
> -		do_sched_disable(guc, ce, flags);
> +		goto unpin;
>   	}
> -}
> +	guc_id = prep_context_pending_disable(ce);
>   
> -static void guc_context_close(struct intel_context *ce)
> -{
> -	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
> -	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> -		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +
> +	with_intel_runtime_pm(runtime_pm, wakeref)
> +		__guc_context_sched_disable(guc, ce, guc_id);
> +
> +	return;
> +unpin:
> +	intel_context_sched_disable_unpin(ce);
>   }
>   
>   static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> @@ -3414,8 +3346,6 @@ static void remove_from_context(struct i915_request *rq)
>   static const struct intel_context_ops guc_context_ops = {
>   	.alloc = guc_context_alloc,
>   
> -	.close = guc_context_close,
> -
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_context_pin,
>   	.unpin = guc_context_unpin,
> @@ -3498,10 +3428,6 @@ static void guc_context_init(struct intel_context *ce)
>   	rcu_read_unlock();
>   
>   	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
> -
> -	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay,
> -			  __delay_sched_disable);
> -
>   	set_bit(CONTEXT_GUC_INIT, &ce->flags);
>   }
>   
> @@ -3539,9 +3465,6 @@ static int guc_request_alloc(struct i915_request *rq)
>   	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
>   		guc_context_init(ce);
>   
> -	if (cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> -		intel_context_sched_disable_unpin(ce);
> -
>   	/*
>   	 * Call pin_guc_id here rather than in the pinning step as with
>   	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
> @@ -3672,8 +3595,6 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>   static const struct intel_context_ops virtual_guc_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> -	.close = guc_context_close,
> -
>   	.pre_pin = guc_virtual_context_pre_pin,
>   	.pin = guc_virtual_context_pin,
>   	.unpin = guc_virtual_context_unpin,
> @@ -3763,8 +3684,6 @@ static void guc_child_context_destroy(struct kref *kref)
>   static const struct intel_context_ops virtual_parent_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> -	.close = guc_context_close,
> -
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_parent_context_pin,
>   	.unpin = guc_parent_context_unpin,
> @@ -4295,26 +4214,6 @@ static bool __guc_submission_selected(struct intel_guc *guc)
>   	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
>   }
>   
> -int intel_guc_sched_disable_gucid_threshold_max(struct intel_guc *guc)
> -{
> -	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
> -}
> -
> -/*
> - * This default value of 33 milisecs (+1 milisec round up) ensures 30fps or higher
> - * workloads are able to enjoy the latency reduction when delaying the schedule-disable
> - * operation. This matches the 30fps game-render + encode (real world) workload this
> - * knob was tested against.
> - */
> -#define SCHED_DISABLE_DELAY_MS	34
> -
> -/*
> - * A threshold of 75% is a reasonable starting point considering that real world apps
> - * generally don't get anywhere near this.
> - */
> -#define NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(__guc) \
> -	(((intel_guc_sched_disable_gucid_threshold_max(guc)) * 3) / 4)
> -
>   void intel_guc_submission_init_early(struct intel_guc *guc)
>   {
>   	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
> @@ -4331,10 +4230,7 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
>   	spin_lock_init(&guc->timestamp.lock);
>   	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
>   
> -	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
>   	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
> -	guc->submission_state.sched_disable_gucid_threshold =
> -		NUM_SCHED_DISABLE_GUCIDS_DEFAULT_THRESHOLD(guc);
>   	guc->submission_supported = __guc_submission_supported(guc);
>   	guc->submission_selected = __guc_submission_selected(guc);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
> index bdf3e22c0a34..f54de0499be7 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -92,14 +92,12 @@ int __i915_subtests(const char *caller,
>   			T, ARRAY_SIZE(T), data)
>   #define i915_live_subtests(T, data) ({ \
>   	typecheck(struct drm_i915_private *, data); \
> -	(data)->gt[0]->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__i915_live_setup, __i915_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \
>   })
>   #define intel_gt_live_subtests(T, data) ({ \
>   	typecheck(struct intel_gt *, data); \
> -	(data)->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__intel_gt_live_setup, __intel_gt_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \

