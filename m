Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEFE6FB621
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 19:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F7C10E30E;
	Mon,  8 May 2023 17:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0635D10E30B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 17:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683568510; x=1715104510;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=CJ3MPzMoJkICTZYk1LzX5bEWQTHXrcIPZUsdnOEfKOk=;
 b=iDGRrXl1dN9UK7xCiZrdWilWBnRsjxBEACx+rVc0Lk8X77Wz87R9y46C
 oTyjCf4+q0Krf4dmRC6ypRRE/uBfKmDiSt7Bqs779gFtymSAdX1JjzwCB
 5eFLruTlRFeGn+pOeVSpO44EJsooQf3TGATKZqFCeO789BRHk1wnz9PqU
 vgGI9wZWKdi93mh4jFaMKSftc8uYAT13Kv3ahTOuTLN9ujFuXHRMkllqT
 O49wXXtQMr0qQZvZdStPHmbZT2q9J6bCPzSZzoyj1uJn3qcoPx1JDGg7i
 kAFCKOfThsVeFbaaJB/rXKSZWG7DoiUfjR94Nlx+448Brr11DSR/eJebZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="338938799"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="338938799"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 10:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="701507746"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="701507746"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 08 May 2023 10:55:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:55:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 10:55:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 10:55:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 10:55:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MlWGmLLW+x8fDUvG0ZeVFwhvzmPSaQ58zEaISOHIEE2cstU/W3LI60+rVVx+WEgxeYG670BsOrSKsuVu0wITYtdLo2GUVHlV87rNOMSm3YLzbMVEEzFXGQAbislvK2CFlqjYWOacpjjDykABAYkXIAn43wpU1TQQ+0YhQnknp4OQt8CxhCS4DuKhJP9moctpaJfnELKhXJzfDtze9eTardPwrNGs00n8z5mRoDI8Nrh6HM/zFVroYsz1OqHLvuktLMT+wiJO27R8HGGZT5szFL8VtAqstcxFKvLnSlXeo/K4Xf9N22xhskWBXiKgBUY0xTqPplHPf5Pe4S1lPwNbfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7iq1LTibKMC+N7W7dynVK31FtDh8L6fUqkXOk8ZIzW0=;
 b=N90HLeUGxu156LVsfzGhRcf1lbfmLI/w3Jb3BlKa/+jG46gzCni8iALrS/Cg2ZRbpNmV/hJtcAmY4cTjbZABj3V36HMgSYnhZmbNLi4oDl6j8DebzWHHzCGXioDG0GEf5FkAwSfqlKsBSj1dhu5w4bszn+wm63XOSVaaCQztgnEkO8S5HASmY/1ghYLElWYD27F4voPOVf/A9UtpQ+e09G3NILWgETVA1nOZQn69xEgLRlcNTOcDMR34zxy/V5snadj1r3H/FpcRiiuRtBdrkvbgzzEPY81qf2ppkKntKHrgCiEzPaUCFHwdHIW4rbpZEqLefFW+wAHYY3RIajUSyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.31; Mon, 8 May
 2023 17:55:04 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3c72:3d28:fbb1:818b%6]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 17:55:03 +0000
Date: Mon, 8 May 2023 10:55:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZFk3dT/vODwE5ata@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-4-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230506005816.1891043-4-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: BYAPR21CA0023.namprd21.prod.outlook.com
 (2603:10b6:a03:114::33) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SJ2PR11MB7646:EE_
X-MS-Office365-Filtering-Correlation-Id: 58d32a8c-decf-48d4-1db7-08db4fed59aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pLj9weKH9flU/NY6JhZdMuaknaJWg24dJvp9Ar0pb7yGRcV/N4XwUBAfYmPVJYxd80jbq80O1Bwg729+ubmxtRmzNbnkKlceqMnbpQgxqhfqCKMEIVCnfzRPZzlBHeiyewR494ZSHyaL7XdwD4K8iOLk8KPWnyfUbWTDYTrI9gOZb5XlLh0T+ajRpgbop5KoFIJ/3fPIuMOhCUhEEPg025Rf7Ps1r7b7V2iFaVXO39jWT1jCDOp0DQMdP1xg8SncvCu+6YmSclE4Z5Qt5PmxzvxK/uM1P2+4URE8zmV02IgYps5SXf7kYIZzOTIbptjnKhUgVTWennaOy4WrhQCFkcBJW/DtV6MQiSEgWjfUU3xaLDfi0nIPXKvay7s9T1E2puntdnIUbt6wo8FdnnRF9CK/NPyLq4AfV3VanP9Q0+kuabqhVBFTcxaDeZuldVzV48MApSh2RIWftFF5Zw8nJbCMZfvZllvxdWMZgCjxZEqJhWyOImqZHhmq7GLQr1LNxMqVSVGLNXAhSPmfsjI9xmGdhb0Wvua2ZhSBxwSz78ee7tEiJDfD1rBfSg0fYMJB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199021)(2906002)(478600001)(316002)(41300700001)(8936002)(8676002)(110136005)(66476007)(6636002)(66556008)(5660300002)(66946007)(6486002)(6512007)(6506007)(26005)(186003)(82960400001)(83380400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1VxSzR0RjJkTVZhbklTM1NQUHJJUUtSb0ZKYjZmRUhsSHVuUzRla3FXcE9Z?=
 =?utf-8?B?Y3BLS0lRci9BN2M0WEJESzJ4YnJONTdoczZzL3NiZTBiYTZNN3FsZ0FUdDNL?=
 =?utf-8?B?emFtWU5wRHhEb1NpQ3l6bDNMNmVzald0d2hVc0N4alhNQkFYcWN5Mjd4S0Jq?=
 =?utf-8?B?a1k5MHEyV2ZGSXV6S3E5TXVKdDBwL1RCVFBTNWRDY3I2ZkkwRm1lOUYwd2dB?=
 =?utf-8?B?RlNWZTFsL1Vpd1d2QkpoY0tZbU40dFVzZG90YitJY1l1a0Z3ckMzQVpsc1Nu?=
 =?utf-8?B?T0ZSMnBId1oweUVIZ2U4eW1mZHR1bGZBcU94d2NvZFh3MEdhMWI3R1ZVdUt4?=
 =?utf-8?B?bG8rUXEwS0Z6MnJXRkdrNXVsS0V2N1dFZTkyVERnYy80SmVNRDVrM0ZjeXR4?=
 =?utf-8?B?WlRTZEd0cWJVR0o4Ti9ZdCtGOVpxaTc1d0dZdlZjM3lRcFBIdVFuWHZIWFhi?=
 =?utf-8?B?Q3dMeHExcTNPQ2s3bnZWdy9LQUtvTjRZWnloaHJkM2lYaHY2Y0M2aTNJODR6?=
 =?utf-8?B?RXNCK0FWS1BocGlUb0NqSTJyYmJzTFFrS0RuUlBpbzBkNmlxQ0RUOXU2NUtY?=
 =?utf-8?B?Nzl3VXV5VmluMnRidm02eXBVUlJLSmRzS1JRZm1LK0c1NHNCclBrWUNKQzBT?=
 =?utf-8?B?Uko2R3JHTStkM25NNVRTLysvcGl0dHgwYjRwbGg1ZkUzWDVnREhncHpxbkx3?=
 =?utf-8?B?TklHVVdDbnE2SUVidU5OSG1MZFU2QzFsSjdqUmZzVGRnZjZYNXE0aEhBdWdM?=
 =?utf-8?B?by9kRFQrVHhpT3NvZnZmSWwzalMzOXJhb1A1L0ZVVktZYjZHUndzWXlZR0RU?=
 =?utf-8?B?NEczZ3ZUWkU5K0l6UFhSZjFVclJ6MENwT1ZlanpFRHJsTVoybzc2ZTFLK1Ur?=
 =?utf-8?B?SFlXS3BRdzlINHZWSWhlR2xXU3crV1VqUHZwZmVraTEwV1hIdG5HbC9zRFZ3?=
 =?utf-8?B?L1A2UDE1Zy9odEthd051ZGhuTzJRMjBoMjNkZjY5Y0gzdmFXMzJvcU53SVZJ?=
 =?utf-8?B?R3V4VjJidTc2SElPMEJkc2NLT2xtK0tGTGx6dVZHNEs0eFZKSHhseHV1dnc4?=
 =?utf-8?B?MGlwNnZSZXFNY1orTHhZVkNkdHdmMzFVNDR0Z0NXT1NVY3RiRmNBaVhIdG5E?=
 =?utf-8?B?bDhTdnhaSDIzNUVwY25yOFltRmI1L1dVYkR1NnVqc3JpaWR6SFJhclRhakxB?=
 =?utf-8?B?VHJKY0ZhQktXVnFxM0NZVytOWDRpWFlHcWI3NTMrVTNUSDRNdVNUYU5kY3Fa?=
 =?utf-8?B?SVhrcjBzb09TZUhoZXNxMk11WDRPMmg3TFd3dDF2d0xTTlI0algrZmtTaFBX?=
 =?utf-8?B?eEN2OWhIV3NSMXBQSVgydUZOa1ZEbmFyK3RiaVF0RUgxRTdha1N0andmUklo?=
 =?utf-8?B?ZVVMdE9ENmNqS1B2a1lER1JBcE9HakV0Mm42b08zUjEvMVBaVlhnRTVwY3hj?=
 =?utf-8?B?Um9WTjJhbUpoMCt1ZWNjR1NnUC9rS2ZqSDdDQkRSK3FLb0pzcElMSFU0NlRT?=
 =?utf-8?B?eVJpbTA0Zm9VK2dnNVJFa0ErL3h0b25MRk1QVCsyTkdxNGRDaERTRHhQRGVv?=
 =?utf-8?B?MmlWUUJOZUxIWm55VXlINVQrM29OQ1pMMFNqUzhlbFZ1cFpkc0NScEJFaTFp?=
 =?utf-8?B?NUp3Q2pEUitldTlmeHU3UUttWFBqL1l0dkJmTzZHRTV2NkxyTjBmb2oxZHFG?=
 =?utf-8?B?V3JCc3ZNaWd2NFNFdWlRZ0ZNVllUV1JXSlp3OVhZVEpyQUhqcnVFdVc4Y1N6?=
 =?utf-8?B?N1czOUZiMFV2bXlpbjZIOE81RFZWaGM5engzVGV0dUdLaGlFQ0pRY0JwSHZR?=
 =?utf-8?B?dy9lSGJzZkMvNmwwS2U2c2Rxdm1ZdnJzN3c4SUNISDkwK0d4b2VSeFp6NlhT?=
 =?utf-8?B?ZDJ5NlNWSU5CRXdyYXFBY2dGT2tqbU9YcFQyazI5TEl4Y1lvMkYwMUdVR2N6?=
 =?utf-8?B?cFcrVTQzNnluR0hTUWJKQ1lBMlJjeUhVaHovV1AzMEhFazM1dHNTQmRIY256?=
 =?utf-8?B?OTNHTTcvMnhwRXZrYjhVM0lUTGFhYUlHam9FNWNLZXFpVCtIS2pEL1hOU0dV?=
 =?utf-8?B?akx3V1VkbENTS0RjTkRCK0w2UGh0ZnhkY1JGclpySS9jMW5CRlJGUHpUZFNT?=
 =?utf-8?B?OXBtYnowcEZDYUIvemlDcTZyMHNFR3hHQ3RkSTNvclF2Y0Q2b1d5VnRxSGhY?=
 =?utf-8?Q?CArK3N0SkTgADXzEtM1DEWA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d32a8c-decf-48d4-1db7-08db4fed59aa
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 17:55:03.5201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4eJC3t0RdQU/twzCAOvHD9o2A/+N+qupbzvnn0QqOtFFZfh4Hy+3Ip4ztKWLI9pPxw0W6FSyJSnKu1yIvUGOQ8R7IObX397J2+oqp8Vw3q4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/pmu: Transform PMU parking
 code to be GT based
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

On Fri, May 05, 2023 at 05:58:13PM -0700, Umesh Nerlige Ramappa wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Trivial prep work for full multi-tile enablement later.

Some more description on what this does OR how park/unpark affects pmu 
counters would help.

Thanks,
Umesh

>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_gt_pm.c |  4 ++--
> drivers/gpu/drm/i915/i915_pmu.c       | 16 ++++++++--------
> drivers/gpu/drm/i915/i915_pmu.h       |  9 +++++----
> 3 files changed, 15 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>index e02cb90723ae..c2e69bafd02b 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>@@ -87,7 +87,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
>
> 	intel_rc6_unpark(&gt->rc6);
> 	intel_rps_unpark(&gt->rps);
>-	i915_pmu_gt_unparked(i915);
>+	i915_pmu_gt_unparked(gt);
> 	intel_guc_busyness_unpark(gt);
>
> 	intel_gt_unpark_requests(gt);
>@@ -109,7 +109,7 @@ static int __gt_park(struct intel_wakeref *wf)
>
> 	intel_guc_busyness_park(gt);
> 	i915_vma_parked(gt);
>-	i915_pmu_gt_parked(i915);
>+	i915_pmu_gt_parked(gt);
> 	intel_rps_park(&gt->rps);
> 	intel_rc6_park(&gt->rc6);
>
>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>index ba769f7fc385..2b63ee31e1b3 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.c
>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>@@ -217,11 +217,11 @@ static void init_rc6(struct i915_pmu *pmu)
> 	}
> }
>
>-static void park_rc6(struct drm_i915_private *i915)
>+static void park_rc6(struct intel_gt *gt)
> {
>-	struct i915_pmu *pmu = &i915->pmu;
>+	struct i915_pmu *pmu = &gt->i915->pmu;
>
>-	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(to_gt(i915));
>+	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(gt);
> 	pmu->sleep_last = ktime_get_raw();
> }
>
>@@ -236,16 +236,16 @@ static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
> 	}
> }
>
>-void i915_pmu_gt_parked(struct drm_i915_private *i915)
>+void i915_pmu_gt_parked(struct intel_gt *gt)
> {
>-	struct i915_pmu *pmu = &i915->pmu;
>+	struct i915_pmu *pmu = &gt->i915->pmu;
>
> 	if (!pmu->base.event_init)
> 		return;
>
> 	spin_lock_irq(&pmu->lock);
>
>-	park_rc6(i915);
>+	park_rc6(gt);
>
> 	/*
> 	 * Signal sampling timer to stop if only engine events are enabled and
>@@ -256,9 +256,9 @@ void i915_pmu_gt_parked(struct drm_i915_private *i915)
> 	spin_unlock_irq(&pmu->lock);
> }
>
>-void i915_pmu_gt_unparked(struct drm_i915_private *i915)
>+void i915_pmu_gt_unparked(struct intel_gt *gt)
> {
>-	struct i915_pmu *pmu = &i915->pmu;
>+	struct i915_pmu *pmu = &gt->i915->pmu;
>
> 	if (!pmu->base.event_init)
> 		return;
>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>index c30f43319a78..a686fd7ccedf 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.h
>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>@@ -13,6 +13,7 @@
> #include <uapi/drm/i915_drm.h>
>
> struct drm_i915_private;
>+struct intel_gt;
>
> /*
>  * Non-engine events that we need to track enabled-disabled transition and
>@@ -151,15 +152,15 @@ int i915_pmu_init(void);
> void i915_pmu_exit(void);
> void i915_pmu_register(struct drm_i915_private *i915);
> void i915_pmu_unregister(struct drm_i915_private *i915);
>-void i915_pmu_gt_parked(struct drm_i915_private *i915);
>-void i915_pmu_gt_unparked(struct drm_i915_private *i915);
>+void i915_pmu_gt_parked(struct intel_gt *gt);
>+void i915_pmu_gt_unparked(struct intel_gt *gt);
> #else
> static inline int i915_pmu_init(void) { return 0; }
> static inline void i915_pmu_exit(void) {}
> static inline void i915_pmu_register(struct drm_i915_private *i915) {}
> static inline void i915_pmu_unregister(struct drm_i915_private *i915) {}
>-static inline void i915_pmu_gt_parked(struct drm_i915_private *i915) {}
>-static inline void i915_pmu_gt_unparked(struct drm_i915_private *i915) {}
>+static inline void i915_pmu_gt_parked(struct intel_gt *gt) {}
>+static inline void i915_pmu_gt_unparked(struct intel_gt *gt) {}
> #endif
>
> #endif
>-- 
>2.36.1
>
