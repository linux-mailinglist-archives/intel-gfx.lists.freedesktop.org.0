Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C647B3707
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 17:40:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3D110E09A;
	Fri, 29 Sep 2023 15:40:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905F610E172;
 Fri, 29 Sep 2023 15:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696002043; x=1727538043;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BmGwkNlG8TyzlePrlq9aBh1e9WlzDJ7SvzZUT0vIZ8k=;
 b=hCCTkXuiz+QgRkNwc03O7nA2HYrTbqjm7BdCnaa6iwi6t3fUfybrbh8F
 S+O3F3MN47An0ZVxj4wEYVMyF3Y5M8ucGMP5lZYVvirNCoKnv/0o1z7kJ
 MX6vuJ1a+ho0G25YlUBqG5NS+s7rTPLviebNrByOpEFZ1FQnaeIReM7/4
 CmDJXnreCWNm3TuhoG8OJjf15oD74u79K+TORWppv1zRl0iOzOn+Lw48I
 DOxGVxs77vtx9cHPIMc31MrpGWS6UUmm6Bpa6fgRiESN4ByFmE3O3Kft6
 dpI/uJTx77iHUbCK5TZ6ls9FKPL8z3nO+zXMhKXg+cKsVtsWIU5BRm2Sv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="379597199"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="379597199"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 08:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="785129306"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="785129306"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Sep 2023 08:40:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 08:40:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 08:40:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 29 Sep 2023 08:40:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 29 Sep 2023 08:40:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qoyfb6zryLn5ffepDPcp8Jimbr8s7x/S+3jZEnoBOcgeyqG8aRi+eHwP2/q+0wqnOPUrWDmXK0/agQ5nzDm+QDcYRGtXO1kBTWUafQjn3sSRklVtSxyWl1AzjtHDAzqpWbiLv69V89Vz1dbM30o783uuDiFdfZN1Mq3uSgojpEX9q8XjA6yW2BQ1BnVj0E0s+8o4EIKIFJx29fP2Gk87HcWIqlS3vwvJpAuc2Deta2RBeVLn7aioP6mdVz1nVQlzsuvW8XX9LSMAZeaI7fjDzy5cT2UQX+0ENt/95ZITsk0Jafbz4F6jvZF6D/XTMSh+u8GgTbTGxYA0rjt99grm8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cbglc0Cs1wOcYun3ODrzpYDpixEMJamIs1NLzC16SlQ=;
 b=bpIZ70Qrj2PWGrJ6L0r9SzGdc74vNoTxvButDTI92u2K4Ijpgg6qvG+NHiyMrMadyTrV/Q2oFeCZ1UL4sFGICXwiWsGoyH2NuHSLBEXtmniCf4rMOfkkEswg7gTZGZirm1RulEf05KdtZT54h74NFskZtOOu9CVQiLZE9hS7y5Se2S2uWPUT5pyPK643S0zTfqwinPU6yv0V66+KClcqEoWcZFaNZ0YGWj2ouS5iMS+55OwDxUwl3x3WiQXo4bkquRJ/8Q7TH90u3/1jjfVTZwgJpMR/94BML8Ff8xEVqvxbdHaffw3/92ThLr5Nq4lHIa/cPLOLq+jTQQJg1tCndA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SN7PR11MB7975.namprd11.prod.outlook.com (2603:10b6:806:2eb::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Fri, 29 Sep 2023 15:40:17 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6813.027; Fri, 29 Sep 2023
 15:40:17 +0000
Date: Fri, 29 Sep 2023 08:40:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZRbv2jgIi1xN298e@unerlige-ril>
References: <20230929110949.342325-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230929110949.342325-1-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0036.namprd04.prod.outlook.com
 (2603:10b6:303:6a::11) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SN7PR11MB7975:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d7856c2-4d82-46e5-736c-08dbc102615a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lgwtev7+b4gewADPq0YZCvEo+gEAoEp2mOQjIB3Fc3KTeM8y/s7elv/dDXFWIS/bSKzU2fQq7xuAKVeDRPA0iI6MKcs5d0D8yAPZogKTWD81xsV/qmEJ24i47jlTWmsAh8gw2Dat2fRgJkk1+UOzHvHhXUUaXdvntSIXKKLxQ3q7Wdx9lu/voWWOmRjlC51pA2AYsOCjaRVU8ayL32PegO/gZJ1SkOUNgFxhRiDAOFn+wD0mpBIveDZqivRGFN21tL6RPJ7W2NRy4Hto4zOlexraG+aTze3R8NlOsafLVdecy+MiY5J6QCktvjsUh9bg0sooouU1x9XE+DpS//XepI7SY8GsVZxVMJioC4mntp6Hlc9iyzfCwmXHxB4AzCyf/F2WT2hamDUH89Mtnp9G8T+D6o01r6Jyufe+Qqclo7Xdo7coWUKWXbyQiluChQeTjFwCV+CXNqlxZKnfzCqwwO/bm+mhluxp4XbTPscyaCHE3DEDS/A7P/UpB54hj5jWKhY21M2vQp9tozvLE6cbJfyRuzYuNMy+DwleOPIIqLq/zUN8u6UnxXdOk9LEft+q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(376002)(366004)(346002)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(33716001)(83380400001)(6916009)(6506007)(82960400001)(66476007)(478600001)(38100700002)(66946007)(8936002)(6666004)(2906002)(6486002)(66556008)(8676002)(9686003)(6512007)(15650500001)(26005)(86362001)(316002)(41300700001)(5660300002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWt5UTd3bVh6NVlMZlUwSjJoclBJTmRKaEJIZTNuKzAyb0xJaElzNVdwaWVz?=
 =?utf-8?B?VmM1WURsYzRvcm04dFJISmNnVThzNEdUYTJBOFp1VGNDWE5RM2FaSDRPc0xS?=
 =?utf-8?B?UFZzaUovRTlIOUFLR0d0cWIvQlFabXNLSzlocEJ0b1dVOGVaTUNBM1o3eXZO?=
 =?utf-8?B?NUFDL2RVZjNjRFpmWGpmRXhtYlZvYXJhU2labHNxSVhYamcrWnJGS1dLd3dk?=
 =?utf-8?B?eENXdkRGOVdzRWZ5bWlrb0l5enJRU0tPWVRwaFU2S0szVWprUWRpNG9zM1Rp?=
 =?utf-8?B?Rit6WXh0OHRtUDdISy9rM0d6eWpvMFdwd1pFVk53ellVL0RDbDlaU3p2aHNT?=
 =?utf-8?B?ZVpLenYvZ2txdGcxelhUanYvUzUzbUNsRXpvYlNlSDNHbm5NUngrYnovY2RW?=
 =?utf-8?B?QjRMamE3d1NCSmhIcDkxbjgyd3BCQUNVR2xKNjZLZTdxZWlET0hrZFk4Z3hC?=
 =?utf-8?B?d1lGVHljY0dGaU5kNC9kNmlXU1MzUlpTcjE1czlna2FvOFFHRmUxOWZoWmY0?=
 =?utf-8?B?dUdDQmYvdStuZmwxV2JPU0dGRnUxeCtVRmluanpnOW9MUGlxd3pXeGIwVnY4?=
 =?utf-8?B?R1F6ejZYTlV0eTRCOWNsbVV6VzAyYTNld1ZFbEI5T2c1T1I0VVBTZ1BpdEV6?=
 =?utf-8?B?ek9EMldqNnJaQWE2cnlEM3ZaRWhOTm81elByMWVxSTNXdHZ1OWtsRWhURHJw?=
 =?utf-8?B?OVQwYkh5eVFZa3AxZWllNDkxOTMwa3laS0l4VUpOZnZFbHBNT1pYU2FyZVdD?=
 =?utf-8?B?OG1rUmpqNnNVSnNtcmZPMGh2enpTNm9KL1llSXdidXd2ZEFIM0ZFQmtQOGVx?=
 =?utf-8?B?Z0lMOTQrTUdMbGgzV1R2SDR3enNZaDZoSThhQlVtN2gxSFpIaER0VFh4ang1?=
 =?utf-8?B?dEhjMGxnWEZmaUN3SW01Q3VwZ0hpWFF3NVJqUEs4U2d5N2pFZXBOZEx0T3Q4?=
 =?utf-8?B?ZTlMdnkxczNXTUNDd3FEZUk0ZzhMcEdOOFJ0ZmI2aE1xdkpWMWlHRHFLR0Ir?=
 =?utf-8?B?OTY0cHlFd2xUMDM2RVZYaFZhSmh6aTNNTmJmcjJhM1hhRVZ0MHBNZ1N3UFpt?=
 =?utf-8?B?a09kTkJKc3U2bGhIc051cU5Kd01uUkJwaG9KaG44ZFFtZUZGSlN1UGtPSFBm?=
 =?utf-8?B?N1pEbkdLUFlXNGFIZ1VySVJ0U2tEM3ZDd3BaZTkySHBoWEVKYmRLU3B3UEp5?=
 =?utf-8?B?cnBxdy8xeEFkZ0dhWC81L2Qzb1hnYVF5ZGQvdUhMSC9vTmtMOXdkdVdWQjF4?=
 =?utf-8?B?dWtPTTlMdnJzaktRVXpmWnhjODIvbFREYkFraU1nS0tkVTZCK2Z4SCs0V2lE?=
 =?utf-8?B?Q2FLSWtHbGhjaGw5SEhaQ3ZySjNlWEhNdjZ3emVyQ1h0bXRSdFRoRUo4ay9P?=
 =?utf-8?B?R1hseGRZRTFlSER2YTludmRlZ3NUSzdLb1NOVG9EM0ZUM2pYWFp2T0EzMHFE?=
 =?utf-8?B?WEJZZUx2TFkweU5LWlJVeCt0UHVuZkRqUUt2T25NSWNpblRXT0ZWUTVJNFY1?=
 =?utf-8?B?RE54eGR5eGxITFdBci9wQ1gxTGpuRXVicTdXcElOaGgxb2tGRTVoakRvWUtS?=
 =?utf-8?B?aWJ3Y0NjRGlMN2FJcEV4SlpWTWlyVnJPSzY1QVhidlhoK1cxN1dsalhzM0xm?=
 =?utf-8?B?dmkzV3FjYVpLVy9mWnVzT3BUT05YNHZENFBSdTNEVTYvVGFFdEVhdjlzNjQ0?=
 =?utf-8?B?T2xGbk5nd2xxUzk2UGFiL3l4ejdhdnppMjdCQUhwclFBaEVmbUhxSkV0Tlpi?=
 =?utf-8?B?TnpNRjBNcDU4MnNKVVUwVTdvL29vWWM4M1RVOFBteXNONFIxdU9TVDN5VjUz?=
 =?utf-8?B?bndRekpFdXdod2FHNVU0LzlZdFpEWEdnQjZqaE95bE9Da2VLTGMzQmRTNWJz?=
 =?utf-8?B?UVRXcWl2cHlScGxaZ1dCeWtXYUFSdDY0ODJBSmZsZlhucXlKNVJxOVpKRzNE?=
 =?utf-8?B?YXowNU5qay9KUVRVeWZIQUttOU83RXdVQXZvMmg4SzIxZktUZU9BMUw2ZFVH?=
 =?utf-8?B?T2RlaUE1YkFwM1dEenJKa3NQOHpwUEtoWkdwdEtOUmRLRTdRcWUwNlhQUTF0?=
 =?utf-8?B?OXhmVHQ5S2R1Q3JuenVBS3JRVThqcXZwWGdLbzVCZ0NkWjJpOTRLVW1YRXFR?=
 =?utf-8?B?bTZHb05IckpZYnc0SmJqWGtRTXhIamM0YjdTS01pc3Y0eHhWT2ZJNFY5dlpB?=
 =?utf-8?Q?yY24M32j5UIJ0tvWdtQROoo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d7856c2-4d82-46e5-736c-08dbc102615a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2023 15:40:17.2252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dbr5nr8LaLXnhZseaGSknWSSsf06elnIP6nelSrMjJ2VI/6tzSXDmRhdYDUQTp1E9uvg9jZFboGhq/mjEsgLBB6ddSubyV8IbzDma5oJlug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7975
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tools/intel_gpu_top: Restore user
 friendly error message
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

On Fri, Sep 29, 2023 at 12:09:49PM +0100, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>We have a nice error message displayed when an user with insufficient
>permissions tries to run the tool, but that got lost while Meteorlake
>support was added. Bring it back in.
>
>v2:
> * Propagate unexpected errno on multi-tile systems too. (Umesh)
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> tools/intel_gpu_top.c | 8 +++++---
> 1 file changed, 5 insertions(+), 3 deletions(-)
>
>diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>index 87e9681e53b4..10601e66b18e 100644
>--- a/tools/intel_gpu_top.c
>+++ b/tools/intel_gpu_top.c
>@@ -554,9 +554,9 @@ static int get_num_gts(uint64_t type)
>
> 		close(fd);
> 	}
>-	assert(!errno || errno == ENOENT);
>-	assert(cnt > 0);
>-	errno = 0;
>+
>+	if (!cnt || (errno && errno != ENOENT))
>+		cnt = -errno;

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh
>
> 	return cnt;
> }
>@@ -590,6 +590,8 @@ static int pmu_init(struct engines *engines)
> 	engines->fd = -1;
> 	engines->num_counters = 0;
> 	engines->num_gts = get_num_gts(type);
>+	if (engines->num_gts <= 0)
>+		return -1;
>
> 	engines->irq.config = I915_PMU_INTERRUPTS;
> 	fd = _open_pmu(type, engines->num_counters, &engines->irq, engines->fd);
>-- 
>2.39.2
>
