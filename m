Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA3B6FB631
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 20:08:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6D9810E066;
	Mon,  8 May 2023 18:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B5A910E066
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 18:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683569278; x=1715105278;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=nz2mFjQ+csvIYFfaJHb11b002z/zVBloMyiAQbT3jFc=;
 b=nBJCkbWTUMP/WngaaaZ4X4BaU5+unJpLuOkG9hI9+pe+ilPJqZQbNlGr
 KRMDrrf9yTsjWcqBVlXvijYM0STAsUGAMKH9sYlMD7W48zh4Pkay0Dh8k
 rDiYNbeYvJhuenHy1Q9bgoblRpTKvUMEm3KSQMp8hDxpphbTBaecZTH4F
 7hhJukmgAyz+rJBr2HENXQicwM/VkPH6AUr7MH+4XUHcBMT9uYDtivTt3
 vAcL7yPA1itnJ98dlCHYBOSiJjukGwqZM1JxXUh6B/Nk1cczgGNdoy5rI
 rPrnx9aHOc8jSmA34GRWg1M5hg0gh5mGiUunZEofh8BRWUxkqSgmt/1Z7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="436039958"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="436039958"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 11:07:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="944951670"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="944951670"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 08 May 2023 11:07:24 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 11:07:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 11:07:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 11:07:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ds3yBXjsh1zDKrlmdXriGfKmgw4ObKYOLb/nccIH5EHxhR0oGFQS79l+UmbaWGAAbV2maJt239vPFP4QxjX4esMj+aNgXPv5mr7O4gGPt/XkIFn3iBazOtU27YIvGLg6WY1vXLPAslUDzrYgbD/4TPpHf2jbdjkDy7WrQ5fTfG3CiIawlSsytKP62ud0wcNIkvb7NGdsjBP+JXZ5h+hQwNQCk5xuhuclD+2tRixTo+MZbuvz90sc0nFB5VsxTd4WoeWv9i0dZj4pPO3Ewf3gvviFhwazGNLSuNtmXWHF5kJ42lr0FS7GVAT3AOxWrl2apaP21CxH9cE4lQW7EP7/9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ea5+thRy3fqr5g3F8ZIZwVlm1YV+V1tbueVBv0hkKeU=;
 b=oNoX615V5gBFXonabZVEmvzNXwe3oo3fP4cIGyezMkTSZhn12LzroOZcvFSTKgwC7a4uG2Sj5rv7CxY1b/7JsvXVfIqNc85QVPmIbVjR0Wxtw2JkmnMKPqaxUrlakQyDNtA35ztIpW18BgOpv/FkzhQ449vA0UskF0QA/QKL23Pd0v4RTGPx3WxHd5NP/ABIEQzvrt6LGUyoHUJ2E5oB6Y7fOG2qavn67Hb+MpV31XJqg9Yjz7UfafHh5a+gTornLpKeouJVLwm7AdwopFDVEsSgYuoH7dTSCPMP/QZMgNZVTJAW+ewTJvatBU2J3mf1nhp0L2Neq8auBWYk98FucA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.32; Mon, 8 May 2023 18:07:21 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 18:07:20 +0000
Date: Mon, 8 May 2023 11:07:18 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFk6Vmb5X4CYtGoI@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-6-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230506005816.1891043-6-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BY5PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::25) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DS7PR11MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: d0a0b05d-6fb1-47e3-e97a-08db4fef1105
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 85GYVYrtfgYhfwE7+f4IQE9QVMcBmZrr0NQSqEt2S9eZF3REmDk2ehpONHK7emoEAQY6AKBk3Ao5+R53pop3RbHifXAfKYPHDcK7oHoBJ3CHIx7Ja8I6lY7wZXEzZm8/Xkz6j5tV6z6bUMVWsmsJ66LEFcvsGRadMKvpgFrBnRbg0XRJEYTGl5rNg2V67KTL6kM11vq5NoXyK0VUAsO1xDC2wyL4Vso1yM5k3O4GuPCnZtVlqEOalMepNG3KXT2MKn1AX6WowFQZ0zXjZ9SLfExETZQw+/fv33TYdfZJxWWnhYo03DEW7ZdhDiK38Bir9VW8txAPI9OZ3DLj9JCHq891XVZ1P7Y3MPkKuNIL5c+do+9fc0RZtN9Oqrfn16EQmV7ACuqksWO9pmh9hfyUAdU3t/45mdiUVHx1uVvyHEkBxkWki8Fbdf0aX7kaUQxX4rb1GOQYkBqlvWBzc28a2VVWwCrPtj+FpgZoPDC4wICLbYKSaYW//yijKRMn321tmhz989RWThO2I/lISjYfUT1aZlCKZvp2WSru4I9dgLJ+L32upbwIR3MnfB7wiaFC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199021)(41300700001)(82960400001)(38100700002)(66476007)(66556008)(66946007)(6636002)(5660300002)(30864003)(110136005)(86362001)(8936002)(316002)(8676002)(2906002)(478600001)(6486002)(186003)(6506007)(6512007)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHdzNnJ6M1VqYm5taUw3Y3daZGVYSFRKSklPSTBBVWFkRm1vaEYvMXRCR1J6?=
 =?utf-8?B?ODVnUE5uVHJsSzFIK0NDRXh3SlhySmc3eis2ZWpaNWNLQk1pWHpld3h3ZXdh?=
 =?utf-8?B?QThRaXZaY05qNXlxUHI5ekxqTEwwcVE0Y1pmd2YzZHFsTjZYeWFMYXBmM0FM?=
 =?utf-8?B?NXpDcTJRT1kxZ29uTmdwMG0xdkorcDQ3dDk1c3lhZUY1ZUROT0ZCUnFqemZR?=
 =?utf-8?B?cHRmaXRJUGhObDhWOUUvQTZmSkRvNXZmelo0SGtNakRtdjBXR2NUdlluOTRP?=
 =?utf-8?B?ZEJqK2V4WnhlZzBaTFJzTko2VlBUKzUxb1JpcVdadWZNSFJ5VTVKcDZ6b1ZK?=
 =?utf-8?B?NUZsU3Y5VnR1Ui9RQ014aDlNWUlKeXV3cjF4VzhNQ2hSQ3hnOVErU1VJdnVR?=
 =?utf-8?B?SVR1dTJJc3Z4S3hWc2UvYURRYjIyR1F5eUl2dmVVaW5lcXJzdVpVLytQRmJK?=
 =?utf-8?B?MVErU28yWitMQ0s5bS92QndUNmJnQlB2K1Q4bS9wUWhzdHFSUlBVZnhzNGtx?=
 =?utf-8?B?THk0M28zbzRLV21GYkJOVW5sQTRxZkFIUjlEcERtSm9iQ2ZCeVoyRmJQcXdQ?=
 =?utf-8?B?VGtvZEM1QitrR1hQdVNYcWhjU0oxQlIrODZGdk1XTXdkMkFLYlU0UlVMQjVT?=
 =?utf-8?B?QktySGVOMVZuM05YNnFRVVNjQXQ0L2xkbTNCejBvcHVDdHg1YUtWTndNd0pT?=
 =?utf-8?B?SW0zVlNOMU1iSXpGeE9jZlh4Nk1CcGhZVjhkbCtYMmRtUzdLRi9pZmRuaE1N?=
 =?utf-8?B?MW9qdkpTTlIwaCs5SnV5Y3E3YlNDblpGb09sMDhFMVU4akZpTXFZSjdCeE9Y?=
 =?utf-8?B?V1ZOei9RVXZYUDNPdWVDSnFWVndkSGlQRzdsSm4rdUVDb2RxQUJUZnVyMGJx?=
 =?utf-8?B?VFNkR3ozcElyaUhUbjl2UG0wMEo0Z2dadlFpek5UM29GYkp1SkoySzVqTGtN?=
 =?utf-8?B?VE13MCtjd0w3VzlPZmFIeUZhaFMzNjdxdmpHRWtRTVlLcjRIMUdzZ0trVnlv?=
 =?utf-8?B?NXhvU2xTUDhERlJpbzEwa25QNGtjdTFiTEwvcGJJdzh6MGhPalJ5UXNYbVRO?=
 =?utf-8?B?OW9GOGxvWEtwbUdXSkdoUjlUMFFGalNkQ05LTVp5cEFyQVJjNXNQakVlZ3Uv?=
 =?utf-8?B?alNYUUFsSFgwOStJMUZrS3hEa2hMTDlZdVYwU2pkK2p5OFdrcW43Z3ozVERC?=
 =?utf-8?B?UVJIaXRrR1lNai9hZXJxOVRYWU03TnUySnJoUHpiTHQ0YUNuZUtiUkRaaHNO?=
 =?utf-8?B?c3JGTk5FRmFXb09tNFhsNTNra3JiSE9ZMzRvVmFJLzBvNThianY0RXBDV0lZ?=
 =?utf-8?B?NTBjOHFTK2l5OXdCZ09TYjVNRVZSK0NKSHNGM2t0bWJSV1V3T0Uvekp3Q1hX?=
 =?utf-8?B?ZGlOdlNlWTFKOTFEcVlSNFhDd0VvNUZ2RkJuZ2EzWkxFTzdPWmVFQVV5TXZI?=
 =?utf-8?B?cUNOZUs1VExRRmgyNERiYVV5YStpTFgwOEZLNGpKeHp3blBOU1NWZVF2QWpI?=
 =?utf-8?B?R2R4cUNMbmlScTVybmtXQmJ0SFZ4WC9OSWprYTQ3WHhNZE1ERmVEamkrVk03?=
 =?utf-8?B?Y0NRZUxjWmUrTzEwdXNBUHd2NWsxbnB0SmFmL0k5MFJjSEg4WUhUUVpPUzlx?=
 =?utf-8?B?SEhlRk8wMCtXWEFUT3pnSW5yS3dtV0Zzd2JqMmdIOU5MMStKWmxPRHRTRmUw?=
 =?utf-8?B?VTFVdTVVREk3dGNTOEdZeHV4elJlUUhSRG4yZXZRaEJ3dWRobllBV2cyTXBn?=
 =?utf-8?B?ZEZXWCtWYkZ4MkF0NHpDU1J1MS94KzdyemV2aU9YbU9GK0d3REFLMkdWOFFQ?=
 =?utf-8?B?UFh1NFRtOWszdlVpRFdFM3dMaDlvWnd2bjc0ZjRzOTFMVGxqMVRlUTZRamVO?=
 =?utf-8?B?SHFJWlRjNEo2QWJDcHRrYytvTkRBUFBadVJJcFdFOVRGbzlGbUZ1ZUJXdEg0?=
 =?utf-8?B?VzBBNDE4Mk1VcWNXa1Q3TW1lWFJRc0tEUlZJcWU2NVlmT1dhbVBDQlI1OUlB?=
 =?utf-8?B?aEU1YjNwRkZLMXk0WXZvZVRoTlQyQW1pWWJSbW9uKzJJTW1oTENqcUwza09z?=
 =?utf-8?B?SDBFaS8wSWpmVmpxTGp1c2QycE42Nm1mZmRQUzh3aVBuVlFIQyt0Zm1WRUF5?=
 =?utf-8?B?ZFh6a0pRVnJwQ2JDLzFhTzNWNmtsT1BVQXJhaEF4bU5FODE1ZVBIZUU5NGJQ?=
 =?utf-8?Q?yJpHQ4iKjUxh2IJiqlqGAic=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a0b05d-6fb1-47e3-e97a-08db4fef1105
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 18:07:20.6528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pt5eGge3QaRH4ZijF2B27yF38DQgShrWYsV6qE/ZdmSyE18e1+zCRTh57CaIcqKPBAHBWZ8XuGllevrroBmrrd1UQFxF4tK4wcKlkwVWptM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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

On Fri, May 05, 2023 at 05:58:15PM -0700, Umesh Nerlige Ramappa wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Reserve some bits in the counter config namespace which will carry the
>tile id and prepare the code to handle this.
>
>No per tile counters have been added yet.
>
>v2:
>- Fix checkpatch issues
>- Use 4 bits for gt id in non-engine counters. Drop FIXME.
>- Set MAX GTs to 4. Drop FIXME.

I touched this one, so cannot review it. Also a reminder to myself to 
add the UMD changes (intel_gpu_top) link here.

Umesh

>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pmu.c | 150 +++++++++++++++++++++++---------
> drivers/gpu/drm/i915/i915_pmu.h |   9 +-
> include/uapi/drm/i915_drm.h     |  17 +++-
> 3 files changed, 129 insertions(+), 47 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index 669a42e44082..12b2f3169abf 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -56,11 +56,21 @@ static bool is_engine_config(u64 config)
> 	return config < __I915_PMU_OTHER(0);
> }
>
>+static unsigned int config_gt_id(const u64 config)
>+{
>+	return config >> __I915_PMU_GT_SHIFT;
>+}
>+
>+static u64 config_counter(const u64 config)
>+{
>+	return config & ~(~0ULL << __I915_PMU_GT_SHIFT);
>+}
>+
> static unsigned int other_bit(const u64 config)
> {
> 	unsigned int val;
>
>-	switch (config) {
>+	switch (config_counter(config)) {
> 	case I915_PMU_ACTUAL_FREQUENCY:
> 		val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
> 		break;
>@@ -78,15 +88,20 @@ static unsigned int other_bit(const u64 config)
> 		return -1;
> 	}
>
>-	return I915_ENGINE_SAMPLE_COUNT + val;
>+	return I915_ENGINE_SAMPLE_COUNT +
>+	       config_gt_id(config) * __I915_PMU_TRACKED_EVENT_COUNT +
>+	       val;
> }
>
> static unsigned int config_bit(const u64 config)
> {
>-	if (is_engine_config(config))
>+	if (is_engine_config(config)) {
>+		GEM_BUG_ON(config_gt_id(config));
>+
> 		return engine_config_sample(config);
>-	else
>+	} else {
> 		return other_bit(config);
>+	}
> }
>
> static u64 config_mask(u64 config)
>@@ -104,6 +119,18 @@ static unsigned int event_bit(struct perf_event *event)
> 	return config_bit(event->attr.config);
> }
>
>+static u64 frequency_enabled_mask(void)
>+{
>+	unsigned int i;
>+	u64 mask = 0;
>+
>+	for (i = 0; i < I915_PMU_MAX_GTS; i++)
>+		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>+			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>+
>+	return mask;
>+}
>+
> static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
> {
> 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>@@ -120,9 +147,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
> 	 * Mask out all the ones which do not need the timer, or in
> 	 * other words keep all the ones that could need the timer.
> 	 */
>-	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>-		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>-		  ENGINE_SAMPLE_MASK;
>+	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>
> 	/*
> 	 * When the GPU is idle per-engine counters do not need to be
>@@ -164,9 +189,37 @@ static inline s64 ktime_since_raw(const ktime_t kt)
> 	return ktime_to_ns(ktime_sub(ktime_get_raw(), kt));
> }
>
>+static unsigned int
>+__sample_idx(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>+{
>+	unsigned int idx = gt_id * __I915_NUM_PMU_SAMPLERS + sample;
>+
>+	GEM_BUG_ON(idx >= ARRAY_SIZE(pmu->sample));
>+
>+	return idx;
>+}
>+
>+static u64 read_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample)
>+{
>+	return pmu->sample[__sample_idx(pmu, gt_id, sample)].cur;
>+}
>+
>+static void
>+store_sample(struct i915_pmu *pmu, unsigned int gt_id, int sample, u64 val)
>+{
>+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur = val;
>+}
>+
>+static void
>+add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val, u32 mul)
>+{
>+	pmu->sample[__sample_idx(pmu, gt_id, sample)].cur += mul_u32_u32(val, mul);
>+}
>+
> static u64 get_rc6(struct intel_gt *gt)
> {
> 	struct drm_i915_private *i915 = gt->i915;
>+	const unsigned int gt_id = gt->info.id;
> 	struct i915_pmu *pmu = &i915->pmu;
> 	unsigned long flags;
> 	bool awake = false;
>@@ -181,7 +234,7 @@ static u64 get_rc6(struct intel_gt *gt)
> 	spin_lock_irqsave(&pmu->lock, flags);
>
> 	if (awake) {
>-		pmu->sample[__I915_SAMPLE_RC6].cur = val;
>+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
> 	} else {
> 		/*
> 		 * We think we are runtime suspended.
>@@ -190,14 +243,14 @@ static u64 get_rc6(struct intel_gt *gt)
> 		 * on top of the last known real value, as the approximated RC6
> 		 * counter value.
> 		 */
>-		val = ktime_since_raw(pmu->sleep_last);
>-		val += pmu->sample[__I915_SAMPLE_RC6].cur;
>+		val = ktime_since_raw(pmu->sleep_last[gt_id]);
>+		val += read_sample(pmu, gt_id, __I915_SAMPLE_RC6);
> 	}
>
>-	if (val < pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur)
>-		val = pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur;
>+	if (val < read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED))
>+		val = read_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED);
> 	else
>-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = val;
>+		store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED, val);
>
> 	spin_unlock_irqrestore(&pmu->lock, flags);
>
>@@ -207,13 +260,20 @@ static u64 get_rc6(struct intel_gt *gt)
> static void init_rc6(struct i915_pmu *pmu)
> {
> 	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>-	intel_wakeref_t wakeref;
>+	struct intel_gt *gt;
>+	unsigned int i;
>+
>+	for_each_gt(gt, i915, i) {
>+		intel_wakeref_t wakeref;
>
>-	with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref) {
>-		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
>-		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
>-					pmu->sample[__I915_SAMPLE_RC6].cur;
>-		pmu->sleep_last = ktime_get_raw();
>+		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>+			u64 val = __get_rc6(gt);
>+
>+			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>+			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>+				     val);
>+			pmu->sleep_last[i] = ktime_get_raw();
>+		}
> 	}
> }
>
>@@ -221,8 +281,8 @@ static void park_rc6(struct intel_gt *gt)
> {
> 	struct i915_pmu *pmu = &gt->i915->pmu;
>
>-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
>-	pmu->sleep_last = ktime_get_raw();
>+	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
>+	pmu->sleep_last[gt->info.id] = ktime_get_raw();
> }
>
> static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>@@ -362,34 +422,30 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
> 	}
> }
>
>-static void
>-add_sample_mult(struct i915_pmu_sample *sample, u32 val, u32 mul)
>-{
>-	sample->cur += mul_u32_u32(val, mul);
>-}
>-
>-static bool frequency_sampling_enabled(struct i915_pmu *pmu)
>+static bool
>+frequency_sampling_enabled(struct i915_pmu *pmu, unsigned int gt)
> {
> 	return pmu->enable &
>-	       (config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>-		config_mask(I915_PMU_REQUESTED_FREQUENCY));
>+	       (config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt)) |
>+		config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt)));
> }
>
> static void
> frequency_sample(struct intel_gt *gt, unsigned int period_ns)
> {
> 	struct drm_i915_private *i915 = gt->i915;
>+	const unsigned int gt_id = gt->info.id;
> 	struct i915_pmu *pmu = &i915->pmu;
> 	struct intel_rps *rps = &gt->rps;
>
>-	if (!frequency_sampling_enabled(pmu))
>+	if (!frequency_sampling_enabled(pmu, gt_id))
> 		return;
>
> 	/* Report 0/0 (actual/requested) frequency while parked. */
> 	if (!intel_gt_pm_get_if_awake(gt))
> 		return;
>
>-	if (pmu->enable & config_mask(I915_PMU_ACTUAL_FREQUENCY)) {
>+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
> 		u32 val;
>
> 		/*
>@@ -405,12 +461,12 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
> 		if (!val)
> 			val = intel_gpu_freq(rps, rps->cur_freq);
>
>-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_ACT],
>+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_ACT,
> 				val, period_ns / 1000);
> 	}
>
>-	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
>-		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
>+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
>+		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
> 				intel_rps_get_requested_frequency(rps),
> 				period_ns / 1000);
> 	}
>@@ -447,9 +503,7 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
> 			continue;
>
> 		engines_sample(gt, period_ns);
>-
>-		if (i == 0) /* FIXME */
>-			frequency_sample(gt, period_ns);
>+		frequency_sample(gt, period_ns);
> 	}
>
> 	hrtimer_forward(hrtimer, now, ns_to_ktime(PERIOD));
>@@ -491,7 +545,12 @@ config_status(struct drm_i915_private *i915, u64 config)
> {
> 	struct intel_gt *gt = to_gt(i915);
>
>-	switch (config) {
>+	unsigned int gt_id = config_gt_id(config);
>+
>+	if (gt_id)
>+		return -ENOENT;
>+
>+	switch (config_counter(config)) {
> 	case I915_PMU_ACTUAL_FREQUENCY:
> 		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> 			/* Requires a mutex for sampling! */
>@@ -599,22 +658,27 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
> 			val = engine->pmu.sample[sample].cur;
> 		}
> 	} else {
>-		switch (event->attr.config) {
>+		const unsigned int gt_id = config_gt_id(event->attr.config);
>+		const u64 config = config_counter(event->attr.config);
>+
>+		switch (config) {
> 		case I915_PMU_ACTUAL_FREQUENCY:
> 			val =
>-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_ACT].cur,
>+			   div_u64(read_sample(pmu, gt_id,
>+					       __I915_SAMPLE_FREQ_ACT),
> 				   USEC_PER_SEC /* to MHz */);
> 			break;
> 		case I915_PMU_REQUESTED_FREQUENCY:
> 			val =
>-			   div_u64(pmu->sample[__I915_SAMPLE_FREQ_REQ].cur,
>+			   div_u64(read_sample(pmu, gt_id,
>+					       __I915_SAMPLE_FREQ_REQ),
> 				   USEC_PER_SEC /* to MHz */);
> 			break;
> 		case I915_PMU_INTERRUPTS:
> 			val = READ_ONCE(pmu->irq_count);
> 			break;
> 		case I915_PMU_RC6_RESIDENCY:
>-			val = get_rc6(to_gt(i915));
>+			val = get_rc6(i915->gt[gt_id]);
> 			break;
> 		case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
> 			val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>index 3a811266ac6a..d47846f21ddf 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.h
>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>@@ -38,13 +38,16 @@ enum {
> 	__I915_NUM_PMU_SAMPLERS
> };
>
>+#define I915_PMU_MAX_GTS (4)
>+
> /*
>  * How many different events we track in the global PMU mask.
>  *
>  * It is also used to know to needed number of event reference counters.
>  */
> #define I915_PMU_MASK_BITS \
>-	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
>+	(I915_ENGINE_SAMPLE_COUNT + \
>+	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
>
> #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>
>@@ -124,11 +127,11 @@ struct i915_pmu {
> 	 * Only global counters are held here, while the per-engine ones are in
> 	 * struct intel_engine_cs.
> 	 */
>-	struct i915_pmu_sample sample[__I915_NUM_PMU_SAMPLERS];
>+	struct i915_pmu_sample sample[I915_PMU_MAX_GTS * __I915_NUM_PMU_SAMPLERS];
> 	/**
> 	 * @sleep_last: Last time GT parked for RC6 estimation.
> 	 */
>-	ktime_t sleep_last;
>+	ktime_t sleep_last[I915_PMU_MAX_GTS];
> 	/**
> 	 * @irq_count: Number of interrupts
> 	 *
>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>index dba7c5a5b25e..d5ac1fdeb2b1 100644
>--- a/include/uapi/drm/i915_drm.h
>+++ b/include/uapi/drm/i915_drm.h
>@@ -280,7 +280,16 @@ enum drm_i915_pmu_engine_sample {
> #define I915_PMU_ENGINE_SEMA(class, instance) \
> 	__I915_PMU_ENGINE(class, instance, I915_SAMPLE_SEMA)
>
>-#define __I915_PMU_OTHER(x) (__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x))
>+/*
>+ * Top 4 bits of every non-engine counter are GT id.
>+ */
>+#define __I915_PMU_GT_SHIFT (60)
>+
>+#define ___I915_PMU_OTHER(gt, x) \
>+	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
>+	((__u64)(gt) << __I915_PMU_GT_SHIFT))
>+
>+#define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
>
> #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
> #define I915_PMU_REQUESTED_FREQUENCY	__I915_PMU_OTHER(1)
>@@ -290,6 +299,12 @@ enum drm_i915_pmu_engine_sample {
>
> #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>
>+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
>+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
>+#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
>+#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
>+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
>+
> /* Each region is a minimum of 16k, and there are at most 255 of them.
>  */
> #define I915_NR_TEX_REGIONS 255	/* table size 2k - maximum due to use
>-- 
>2.36.1
>
