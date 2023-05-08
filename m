Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 166B36FB632
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 20:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88AB410E10F;
	Mon,  8 May 2023 18:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B310B10E10F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 18:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683569322; x=1715105322;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=1jf6EI16/ZjcZICOhPpFFOWpwlzbWpsXYbE//m94EXU=;
 b=c70WJBX3b1E3ULqfoLFA+yBxs3LoULx+WZvnbMd2Zjg+BkDD470eStFo
 iF/wI90k+RLjvLgPTmLrEKFFx8wU5f3mpbuG540LIEoMDReVJ3aRfOd7G
 g4FltZ1YKcVthyA7H5zSYJelaRwowLyD4wYypyrFwAtzh46u2u6diD8Ja
 YXr4fIJGSBmeCnqrNKqkRb5lgiLgHKvzuyJ26PqiuxJWN8smI1dFHt/FD
 AjFbelY9qK1pz0q18BJRqJHKvFc+HLxASItG/uMadsw8Zgf6iOg9yH9Qj
 RS1730rzpa+zkDFyGorOrlod0eRZyRzmXIn9xT23bS/oZMWmk+GKpXyb7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="349751255"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="349751255"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 11:08:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="698607289"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="698607289"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 08 May 2023 11:08:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 11:08:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 11:08:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 11:08:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eRrA9zBajcnFy2z6WGz5plblmcSuiPBHz863UYVTPOxOYtolCXoCUt2uacDaNMCh2KOeR3d9rhjtqoOmYFHErJ9Rk0RSQI289eZn046diiGVSs73TvcE46HLEzw2KMQfOQz3v/OeC/EhEvKneQS10JSq30c68qeWHzOWbd0NltJ4JcvOKpdTbGY7elYwh0LDIqlesfVfmXQgpol0iQeL698CxAKtJ2t2Z9wn6ujCFFkgV7PjNa1g5C4zm8BQ3Uz1LKq7cFoLDIRMExVipQR/qXhnbb8rh/KIwTCD1qfSPxgYZd7elyrILLHsoLc7dzbogiD4UdyJ8iOCHvX1NgR65Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a06eXa0UEk7AH7wGde2PW1aPakbarX5W40Zb1SZfMhU=;
 b=itXoke3QdAEsU6xU9XRd2AFq1QpNAvUt7zgxn8lQk9QX6MRJKBl/XU9Zn+FPavpNWHT1kVR8kA689qBquRszYMhpfNgai+NRsK+dksWzJmTA8C/7afDK/JwKaR+Prm2xS4K6p/pyu7mYDLtNW17y1pAYI08dN5Dw45DMUsAXl32Avmo4qeouHLMjtNspi17N3vvcp/Aek6CTYjB6Jx+pm9tqdIB7eEeQoMpSpvENZ3wN2VjFlIavMBNfq+51hiB/mmAt0I5qLxj+dKot05iaalU6PAY9SUzbAxcrKj9L3w1d5BaiDy9xMNK0IzS/1iLEp31FfqEk3pTOzweJ7mCbHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32; Mon, 8 May 2023 18:08:03 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 18:08:03 +0000
Date: Mon, 8 May 2023 11:08:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFk6gCD+kE2cpLbA@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY5PR17CA0026.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::39) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS7PR11MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: b0ad2191-1332-4d5c-9a7c-08db4fef2a61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /7423P8IpRIH6yQckI22ysBqWSfUiSZe955TXgVeE7taEi2cI5BGgYZmy3NP/H2XkJLeU+IhBt7WiLWvEK2oCrUaFaDoOGUkxFW1fde8YemikSLvmG8ZLQDwBLVL0bisdFwKcuCW4Emojq4qW31GZzyRQrenqAHOqp6UqplC3Dmr8EPyMFFS16kV+8Mf+pH7JQbMjtqJ53HAlt3VDi76fQ3xXL7JQfD8hI96q84N6yVUARNzGuKExh0uZeDK84zLRYruoSRPxxQVDDxOL5ZvAtyXmbFY19DcGnbH4tVQoZIYyb6ExTNtzCeC/NSDGQnvwbGrXjMgM1Bz2tZWBdb2fl/sLCP5T7Yo50VssqJ1g4LS7nloU+jPp2lbTp+NgeymLtSox/689b9/UUPVEfgsk4LTTmOtO4BHNN7x5G461MAZ3C7c07K430bH1HXSv/G55IBz6c8bgJKgNNq+BYYOvFPeUH2+gNmv3Aui+DlFh6iAvnREsTscncMqTtCie8xO4wgd3SB2J9Qabqj40YLyaLTCEN0F1mtgOixsX5DdUZ3gPWhsV84FXeDhtK0UU3tyf7vVF8U/Yq5dqo3frp1BCTRF7XglgcZNTm/T0Q/tP6M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199021)(41300700001)(82960400001)(38100700002)(66476007)(66556008)(66946007)(6636002)(5660300002)(110136005)(86362001)(8936002)(316002)(8676002)(2906002)(478600001)(6486002)(186003)(6506007)(6512007)(26005)(83380400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW5nSHdJQ216UEtlblF2bkl4SzQ2R3ZSWjI2SUswWVdUVnp0VHdYZENncVp6?=
 =?utf-8?B?ekdDdVdrdDZzM1NNdEdDcVhTOWE4VVlTWVZQbk9VaXJZSSs4SDlSaVgvb3VX?=
 =?utf-8?B?cGwvdVhPb2JrRGtDL1lHRklaNXlzVy9TSnRzY3lIWVl4emxZNVhaTnBWRGpa?=
 =?utf-8?B?ZFNWZnE5Tk1McVFQaU9aT3JmQ3RTWnVpa1lBem14b082a2dHaHhoYlNqaHJH?=
 =?utf-8?B?blcwbk96dHpBUlVmL3hqKy91Smh2S0xMN1F5aGRtOUpmc3J2UDFXYmFyd0Ex?=
 =?utf-8?B?RWFSRDl0d0lhSWtYMTg4UUNMYVhkdHBMTzVWeUR2dU4wNFVFZjhTZEkzMUNC?=
 =?utf-8?B?YmY2bDRZMmNLM1NVM1J5UVNlY2EwNWVJY0FoZGNQT3VnTlNHWGdwNU56dm80?=
 =?utf-8?B?WEQrbmtmQmVLemRDWm40a2hLT0xtbDM4b0N2cTRaU2RDa2dENVBaWnRjL0w4?=
 =?utf-8?B?TlNXRGd3OEtlOEE5ZTc3N0E0UTc4emxUMlRXUU9MOW5ScWk5Z1lxWEVhWDdm?=
 =?utf-8?B?T3M0ZHlibFZHcW4rZC9zUkUxUWVheEEzbUErM1l5ZnNnT0pROVpwQnBhanR4?=
 =?utf-8?B?WTdPU2hOOWloQ09aQkFJTGx1djVtVlNnYlV5aTZIbTloU2k2S0ZqYWExN0NJ?=
 =?utf-8?B?cFVsTERNTjAxamZjTEpaRU9CYUZMWXJmUkZnZXVJeXpENjNYbEQ0K29yeVFQ?=
 =?utf-8?B?aDNZZGc0cTVNbXZISnZ2SmFycWZRczhrUUE3QlJFQzJsWWV6MkcvYXlXUTdC?=
 =?utf-8?B?QU14S056WmNGNGVqeHgyWG9zYysvcUZwN1ZKZWp5S3FqUzlqbWsyV3RWMzBr?=
 =?utf-8?B?aG9HMzhIU284OTBkNUJ1MWhUNHQyZ041dkFzK3ZKTDRqTHVsUGdNVjEwc1Ji?=
 =?utf-8?B?Njd3NjdHMTg2elJyNUh6QzlUNi9veExrL3V5b2kzMHQ1UWsyOXVqZ0ZPVFB4?=
 =?utf-8?B?Qy9FQ2VmK05nTmJFZW5zRkZKOFRBVnA2WW1YZjdrK1FrMmxlWUVHMDlBMUJS?=
 =?utf-8?B?ZDViSFVTeHNnc0pOOFBNVnVmSmcwMkFQZUJWUDFqWWRwc0phVGJrVThzNGp2?=
 =?utf-8?B?TTFlZ21KSS9ORS8vZ20zNEU1K1R0MmpmN21rVk1zYUJZNzI0ZVVINnJJUlRF?=
 =?utf-8?B?OWV6a1kxVFB4VDFRTVVjV25RdXN6c1pmd1hpMTc5UEdKZm5aOFdyNGJFM1lT?=
 =?utf-8?B?aElJNEpyazhKRkN0Ukg4Yi9WL0FRRFMraVVzSk4yb242SThyMTZUOVpoSjgy?=
 =?utf-8?B?SG1YZGpNL1dWc1JWVWlxbkF1WTd4WmN0STR0bEx2RkZYTm53ZGI2MTJkc0Zz?=
 =?utf-8?B?UFJ0RStmMWVVVWF5ejJ4bHhzQlVKOFlwOVUvcVhUM1lHa1lkTjhNTEsrZXUz?=
 =?utf-8?B?bFlla0QyNWp4STZHS1VjY3ZVdldPdjlmQjRzenFSTjVhb2RPWXpsZTNQQktZ?=
 =?utf-8?B?RDdJbGJHb0t6cXRVNS9tbFY5Tjc1OGFwSEcyQUVCR1JlNGhEWHhLZWVDTzdj?=
 =?utf-8?B?S2w4emk2dGY3TkpadjFDemNBS2diREF2ZjJaekY3WVlXQUFHVlBKVS8weG5k?=
 =?utf-8?B?bzBWaTZkOVFCOGJZWVgxS25VUFlCVE5vQXdnT0o3Zm9LeFR1eDAxYTZ5b0V4?=
 =?utf-8?B?RTNKODBIaVdRY3N4UEIwM01KRWlFVlhQNlpyQjhBWmF2NWhsd0Uram93SUV3?=
 =?utf-8?B?VCt6ak03QlZwc2ZXdFJZZ1JYOGcrVGNETDNFcjRlMm1JdXpMMWtyZDhFeDY4?=
 =?utf-8?B?MHBqbjI5Yk9uVDlZWVBaRlNmOFQ2Z3FwYUtUNWxWdzcwZldNN1poU3gyekVz?=
 =?utf-8?B?WXFGZnpoSVl0eEdSZjVsOENMNXlyME9vOG5aVVRRNDVnNGtEZEZqSE9scU1j?=
 =?utf-8?B?YTMwS2dMV3k3dEg2aUg2YWpmZVY3SWlBWnhwQ0psY092ODcxbkhoN1JGNE5O?=
 =?utf-8?B?bUxrSkxlbWJrdStrOTFMaGxwc001aEtVU3ZZZnNGbFRWSVU5R2xuczRzK0o5?=
 =?utf-8?B?eC9GREh5UEhiZ2NETy96ZFI1eGUxaGYvbW9KNktEZURFK21DdzlySmFrOEZa?=
 =?utf-8?B?MkJpL2l2VWEwUDRYWVpiTllXWmwwT3NqKzlYeEdKZmZGRTRnaTRWenh6UVlz?=
 =?utf-8?B?S2RNMGpKVEFtRzcyNmp4aGxDV3ZqSmpQTElUQVMvaXRBTHh6ZnoraU9SN1NN?=
 =?utf-8?Q?+zum4IYGY08IEiJKOPVQXYw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ad2191-1332-4d5c-9a7c-08db4fef2a61
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 18:08:03.1709 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mOTrbEjD4DsokJosRNMt1m34Bv/W28etxooiii2lSy3iqKdvGYHvIiXi+SsOzDWEFbfcqoED+4D7td/0zy30Ix43rCsjJrmltGAic/aBG4k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/pmu: Export counters from all
 tiles
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

On Fri, May 05, 2023 at 05:58:16PM -0700, Umesh Nerlige Ramappa wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Start exporting frequency and RC6 counters from all tiles.
>
>Existing counters keep their names and config values and new one use the
>namespace added in the previous patch, with the "-gtN" added to their
>names.
>
>Interrupts counter is an odd one off. Because it is the global device
>counters (not only GT) we choose not to add per tile versions for now.

UMD specific changes link needed here as well. With that:

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pmu.c | 87 ++++++++++++++++++++++-----------
> 1 file changed, 59 insertions(+), 28 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 12b2f3169abf..284e5c5b97bb 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -546,8 +546,9 @@ config_status(struct drm_i915_private *i915, u64 config)
> 	struct intel_gt *gt = to_gt(i915);
>
> 	unsigned int gt_id = config_gt_id(config);
>+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>
>-	if (gt_id)
>+	if (gt_id > max_gt_id)
> 		return -ENOENT;
>
> 	switch (config_counter(config)) {
>@@ -561,6 +562,8 @@ config_status(struct drm_i915_private *i915, u64 config)
> 			return -ENODEV;
> 		break;
> 	case I915_PMU_INTERRUPTS:
>+		if (gt_id)
>+			return -ENOENT;
> 		break;
> 	case I915_PMU_RC6_RESIDENCY:
> 		if (!gt->rc6.supported)
>@@ -930,11 +933,20 @@ static const struct attribute_group i915_pmu_cpumask_attr_group = {
> 	.attrs = i915_cpumask_attrs,
> };
>
>-#define __event(__config, __name, __unit) \
>+#define __event(__counter, __name, __unit) \
> { \
>-	.config = (__config), \
>+	.counter = (__counter), \
> 	.name = (__name), \
> 	.unit = (__unit), \
>+	.global = false, \
>+}
>+
>+#define __global_event(__counter, __name, __unit) \
>+{ \
>+	.counter = (__counter), \
>+	.name = (__name), \
>+	.unit = (__unit), \
>+	.global = true, \
> }
>
> #define __engine_event(__sample, __name) \
>@@ -973,15 +985,16 @@ create_event_attributes(struct i915_pmu *pmu)
> {
> 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
> 	static const struct {
>-		u64 config;
>+		unsigned int counter;
> 		const char *name;
> 		const char *unit;
>+		bool global;
> 	} events[] = {
>-		__event(I915_PMU_ACTUAL_FREQUENCY, "actual-frequency", "M"),
>-		__event(I915_PMU_REQUESTED_FREQUENCY, "requested-frequency", "M"),
>-		__event(I915_PMU_INTERRUPTS, "interrupts", NULL),
>-		__event(I915_PMU_RC6_RESIDENCY, "rc6-residency", "ns"),
>-		__event(I915_PMU_SOFTWARE_GT_AWAKE_TIME, "software-gt-awake-time", "ns"),
>+		__event(0, "actual-frequency", "M"),
>+		__event(1, "requested-frequency", "M"),
>+		__global_event(2, "interrupts", NULL),
>+		__event(3, "rc6-residency", "ns"),
>+		__event(4, "software-gt-awake-time", "ns"),
> 	};
> 	static const struct {
> 		enum drm_i915_pmu_engine_sample sample;
>@@ -996,12 +1009,17 @@ create_event_attributes(struct i915_pmu *pmu)
> 	struct i915_ext_attribute *i915_attr = NULL, *i915_iter;
> 	struct attribute **attr = NULL, **attr_iter;
> 	struct intel_engine_cs *engine;
>-	unsigned int i;
>+	struct intel_gt *gt;
>+	unsigned int i, j;
>
> 	/* Count how many counters we will be exposing. */
>-	for (i = 0; i < ARRAY_SIZE(events); i++) {
>-		if (!config_status(i915, events[i].config))
>-			count++;
>+	for_each_gt(gt, i915, j) {
>+		for (i = 0; i < ARRAY_SIZE(events); i++) {
>+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>+
>+			if (!config_status(i915, config))
>+				count++;
>+		}
> 	}
>
> 	for_each_uabi_engine(engine, i915) {
>@@ -1031,26 +1049,39 @@ create_event_attributes(struct i915_pmu *pmu)
> 	attr_iter = attr;
>
> 	/* Initialize supported non-engine counters. */
>-	for (i = 0; i < ARRAY_SIZE(events); i++) {
>-		char *str;
>-
>-		if (config_status(i915, events[i].config))
>-			continue;
>-
>-		str = kstrdup(events[i].name, GFP_KERNEL);
>-		if (!str)
>-			goto err;
>+	for_each_gt(gt, i915, j) {
>+		for (i = 0; i < ARRAY_SIZE(events); i++) {
>+			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>+			char *str;
>
>-		*attr_iter++ = &i915_iter->attr.attr;
>-		i915_iter = add_i915_attr(i915_iter, str, events[i].config);
>+			if (config_status(i915, config))
>+				continue;
>
>-		if (events[i].unit) {
>-			str = kasprintf(GFP_KERNEL, "%s.unit", events[i].name);
>+			if (events[i].global || !HAS_EXTRA_GT_LIST(i915))
>+				str = kstrdup(events[i].name, GFP_KERNEL);
>+			else
>+				str = kasprintf(GFP_KERNEL, "%s-gt%u",
>+						events[i].name, j);
> 			if (!str)
> 				goto err;
>
>-			*attr_iter++ = &pmu_iter->attr.attr;
>-			pmu_iter = add_pmu_attr(pmu_iter, str, events[i].unit);
>+			*attr_iter++ = &i915_iter->attr.attr;
>+			i915_iter = add_i915_attr(i915_iter, str, config);
>+
>+			if (events[i].unit) {
>+				if (events[i].global || !HAS_EXTRA_GT_LIST(i915))
>+					str = kasprintf(GFP_KERNEL, "%s.unit",
>+							events[i].name);
>+				else
>+					str = kasprintf(GFP_KERNEL, "%s-gt%u.unit",
>+							events[i].name, j);
>+				if (!str)
>+					goto err;
>+
>+				*attr_iter++ = &pmu_iter->attr.attr;
>+				pmu_iter = add_pmu_attr(pmu_iter, str,
>+							events[i].unit);
>+			}
> 		}
> 	}
>
>-- 
>2.36.1
>
