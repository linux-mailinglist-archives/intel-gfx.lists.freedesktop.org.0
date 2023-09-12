Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A3879D48A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:14:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB2B10E431;
	Tue, 12 Sep 2023 15:14:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97F8A10E431;
 Tue, 12 Sep 2023 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694531662; x=1726067662;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fPR3fBUV1Qt3OWdjBS76BXNHPZMo4GkKQAkWad5ATF8=;
 b=P+tLSfwOJepCjRrFYqeZsdEKPH1FKb0tamTX0urx+knSUNJzvRkGoncc
 ig2LEUwGtgIbNGpCrYdAirLqaI6BAE+xyh2ILMoX34PaFjHdfq/TfX0XV
 cJli/Y3EAnE8NvxRu/zZ640NQaMqfztG2+1baMcEQQfl/siVsHoUdnddW
 iJZZq0tKeINCECJpDYvDzRoYWOeiJGRwP7bAccEboVa2NqqWdlcWGqbaH
 7ZkUaz/MgDHbZWH8nyKg5AXotIVMffTf67QER5TINLG5eiKosVmF6Q638
 EcsbnPWZRXqAH2Fs5ZA8+Vg4chH77D/XYGghkQ9d5omTooMJoYv9BOhdU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="363437640"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="363437640"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:14:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="743756168"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743756168"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:14:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:14:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:14:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:14:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8n3B5FCHu0KQ2hZAkLyCla8B+aMcIG9u3HBU57Uhc7oljQbqS0Ezy0tXYoXAMmh8cJGuRbWh/EnNOIT3YK2Orlm78eF4rN91tTApNK8pgAz9otNcg3AQ0i7K+6rFomCgRNBDkl3TFyhrHVApUyKStDwE80AxxRx37g0XjVXAz6IUTYIX2VxJEkMMiCB19zEtKehbT8tvkpcMk6R2G/oJJBu5Jopi73V/29VInGm66nj6PwTVw2TmaCB1xg7eyo/ayduqUj7UXu6AWTNqFY67iuJ8J+b0I046JoG/NxR5vY1PAW5rCz62+jBFx4FSyooc7dbcn2UPNnfm8BgTJQ3kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QJ1soSJfxp+x/p37i8NlGMZhREGR90ruZybC4NjFUw0=;
 b=BPjMM95Rszl8IH4fhq344aF1rfExMsErLL9NxASmXMQeMMHsoJXpNGPOc2YnS/hXeB2B0giBuEKBH3RMoUYrAot3CoHLHQKPeT2iuImeEb40X5nrpJXlvvfs8dg5MGBIBCIXhEEvaQY9jZ4wf7J5I2YnXmBcqFFPVqYeI3Kr5s1V/rYCyDL+s+4QNlNC22p8/RswDPoE6lD7+DSuzUPQfaXuO6ce5/G3QPj1O/JC5uHqOvCbSa7f03NcwY0TjJfI+VG2aj2HvkjswJQV9dES5totTxEW9vTx+ia7cjjDEQOdk6ZF15fVE3YcuHVeGvHVV6lVOU7HfthuFRcI8KVpgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SN7PR11MB7602.namprd11.prod.outlook.com (2603:10b6:806:348::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Tue, 12 Sep
 2023 15:14:19 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:14:19 +0000
Date: Tue, 12 Sep 2023 08:14:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912151416.GH2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-3-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-3-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR01CA0059.prod.exchangelabs.com (2603:10b6:a03:94::36)
 To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SN7PR11MB7602:EE_
X-MS-Office365-Filtering-Correlation-Id: b5cf9ada-1057-4f04-eaa6-08dbb3a2eff1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tfnny5YPX8lDGPuPuFgM0QhJZUM1dWB/RlNVbTfYmBgyTPSQMhliaiS3+QcnVo3vr3zFT/Cc89a+lCxMmVFH5p/ejWvnimZ4vAox0axMMs3t3E8544uCgjoiFhDMzeaLZuul8R0cqAiZUMoXC9PnpEy4g3RCMTaFxloihL2qmyvvtkJVH5bqK99bG1QMEVrrZozFDB1N+9hmdgMEzcvbc8hzleq02y37IQEzEXguL4cXMp7EMT+8FXnrxSY00gY7K+QHPGsGbeeQtV+715/FJQlkb9b54jYaridpB0nPZBdIo0IXW3w7d1BlvsD3vrU3MNP2BGMCxHyHWf0mRJX9vKsnOscgQIXfvVpDf+a8wqWgZF7vh8hColPamrA5BfHkPDQBxiuxfW5hBIPkLVW+moOTqkpOFhayOr06cdrH8l4CnBj3B8p0jVX1VLR8i/l/C048xbd7MoWzrS7TUZ1lq+VCOrmyC9RFKJ+i4MfNo8gAuhWI4+KQbCuKAYTayLP23udn0L5pmb4Y26HMk2BJGGANF352SQ4aZRXb0BmKH8QZZ24Aub5trQJavhgivgth
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(346002)(136003)(366004)(451199024)(1800799009)(186009)(6512007)(82960400001)(6506007)(86362001)(6666004)(107886003)(38100700002)(1076003)(26005)(6486002)(5660300002)(8676002)(4326008)(450100002)(478600001)(33656002)(6862004)(41300700001)(66476007)(6636002)(66556008)(66946007)(2906002)(8936002)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7GHMiV+j7Ed2nKPX+5IAtotil6VaU5jYiDp5itsII35jUtPETgpsYx92gO50?=
 =?us-ascii?Q?fnR2J7MzzsbdJWAFdgRiMfPsfXnUwcjfn0ynVbXfHm5WJD+osQAO4/6FZp7O?=
 =?us-ascii?Q?u0ICXwm+HPrt50C1VmbcP9qVpMQx7PoZeZU2owDwukkxJDCozwH110l7WXqw?=
 =?us-ascii?Q?vrx3HKvSmTV35KHEwd8QaWeReAxcSCWEeCwYstvYU9VXxr+JpOFA5Ahq1bpE?=
 =?us-ascii?Q?pv5iCU0Ddbyo7yaeqRxDNMinLNGGRrfb6LRnEivC8jMu007etEqfBKCrEOhA?=
 =?us-ascii?Q?06VBF9y0jLLoKqU62n+yeKmISS1FjnuagK18zL1fxmM+87F2P38q8EoRB4pq?=
 =?us-ascii?Q?RCJJRdX0GPaTr6hBvxdqn+G12AqvOaU6pa7rRgOU4N7eHj/qEYYlwz/HDYLw?=
 =?us-ascii?Q?OeP31GbV1hqnfQKhw2jBhxqqMp/Bbkzf3h5SnImutvVXBvqjtrXIpbOsEtGe?=
 =?us-ascii?Q?BUFL2dpm3ZhcuRGZh4SagQXBNRGbIjK36U0fLSjDNqm9Nw/rC+ZDe/05kpTE?=
 =?us-ascii?Q?K760UmgSfz/1+XUbb/XLW92YhgI3a4G9HwUMTfRKTzwJIdSzEQttLTVnUucc?=
 =?us-ascii?Q?0P463QDHe5uxGJCYgLH6TecEZbb2T7t6S/zQ3GyCuXzyqfZjQY4uUXyAJBay?=
 =?us-ascii?Q?/+NuQARiElU2gNps9Y8oxzGdRj51mC7iTYjgeJZfGimKMVaTgH/KSfQ0TSqP?=
 =?us-ascii?Q?6QIRG/E1mejgO3lXc3xKqcYWKeVBycT1NB8VzpDvd+xLV4LFBMy48UM4qIlH?=
 =?us-ascii?Q?00qgB6UTs+yhSOtdxy94X8O+iUUt1d/O8LAWYK8ZWP3ijsLLI5xaa7cNbJNe?=
 =?us-ascii?Q?VfbiAJVI1VzoVDcj560eJ8TtzQ66Ihk3i3ShK5tx4IxIq7eMk1F6/YS6xLIY?=
 =?us-ascii?Q?x8dG8CPkcStCbtegCrr33idqlfuiXdOa9QEnYuRC4bKRrHnnGMUxVEQHqFqk?=
 =?us-ascii?Q?qlXuao6H4lltQHyXLWxwoa+dcLw4093LPkFpNKtQJC6suJNAClHbdhIo36c9?=
 =?us-ascii?Q?lsErcxUB4cawzwlHur6w+W8aY5zlg4IiGQHJFuzebdk1jIiTWuZVwId+B1L0?=
 =?us-ascii?Q?0jagDGdukn9EQcptdFX3fSJh3IRtqGYetksQTwSKaQmCbiaZf0SDDaXsL1GB?=
 =?us-ascii?Q?JNJfizNBDumjmXtiYC3+Yae/g3DAizHi+LiLeFHAPl4wuvru2fAuYlxTQrcy?=
 =?us-ascii?Q?HSKTz6XBuznknrwqOtV7cPNXvhv4FoiMkfemcCkZBZZLtBnVs494pJW4aob+?=
 =?us-ascii?Q?a0O7jK/Vko8pqKlEilc8m6kVHnsp2jQ8PLWJAoyJWvAaobftDxIkg/9vjnO1?=
 =?us-ascii?Q?j3bZsaULWXaAgqAEWvId4R3qH5KV9dRYK2iuJc7KLwFWg8CsgGIaAZg68sHy?=
 =?us-ascii?Q?NYAMUr0Z8HJp48o9UqNy5IfKhrlFgsWPUEIFwug/4iXQ39wmRItHTItUivQE?=
 =?us-ascii?Q?4NcZ5TGIdLrjYlcDSZFTCF+UviY1fg3JKz3KQ1lLfZL4rvZAiZNKy2DOS7IC?=
 =?us-ascii?Q?zJ1rRZcLJHvzj4zYhD5OJyPGQ9ZtYcO2GGnkX1PTmbmK5H4HSvZ+LWZG7fvK?=
 =?us-ascii?Q?kr9qFq70OwSWuR3q54qerQC066bqs7/cw5mDgJHe2i7m1Okc5El/cwPHXSL3?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5cf9ada-1057-4f04-eaa6-08dbb3a2eff1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:14:19.6566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WryzpVaWRi7CjqkcZ7pTs0DKiutykEwG/lNiZ9dYZ3ky+VHLekOEwaVkXVGgCnXFmARJSoGspTliKPiuxP6fQQlsHPvJSBGjEYJJtSNq3cY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7602
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 02/29] drm/i915/lnl: Add display
 definitions
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 09:48:10PM -0700, Lucas De Marchi wrote:
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Add Lunar Lake platform definitions for i915 display. The support for
> LNL will be added to the xe driver, with i915 only driving the display
> side. Xe2 display is derived from the Xe_LPD+ IP; additional feature
> deltas will be introduced in subsequent patches, so here it's just
> adding a separate xe2_lpd_display struct.
> 
> v2: Use a LPDP_FEATURES macro (Matt Roper)
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index ddd938bfe7d9..c915c53068c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -760,6 +760,10 @@ static const struct intel_display_device_info xe_lpdp_display = {
>  	XE_LPDP_FEATURES,
>  };
>  
> +static const struct intel_display_device_info xe2_lpd_display = {
> +	XE_LPDP_FEATURES,
> +};
> +
>  /*
>   * Separate detection for no display cases to keep the display id array simple.
>   *
> @@ -839,6 +843,7 @@ static const struct {
>  	const struct intel_display_device_info *display;
>  } gmdid_display_map[] = {
>  	{ 14,  0, &xe_lpdp_display },
> +	{ 20,  0, &xe2_lpd_display },
>  };
>  
>  static const struct intel_display_device_info *
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
