Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6D779DD86
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 03:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B01B10E04C;
	Wed, 13 Sep 2023 01:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561F710E04C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 01:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694568332; x=1726104332;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SJLXEfkw/yb+9o685zfP37OHtF2XNw77kcnRqonZ/JA=;
 b=Yf4VM9NKHGri1Cy/gYiU82RzBjcgtX++RiN3XwjlL4/7bDb4SLIz8axc
 Iz2vrNvClkA0DAMYBqtexjNVSv/CTtRt+GBtqZTh/PdNiNdxiOXQj+mFG
 +qnwxzvKlseWiu01U1ZTN2fRgH+HBIHprinMPhS3g8k9ApjjbZWw1t9CK
 8Lj1bHhkdziFBEr6jimS9L36QLVHXOveh7nGQR2VMzYqxzDP7d+1qEaYR
 il8GOcCCfRttvbLcTID7K3V/0bWw1MHI+u6H0vdrYQya5Omu/oPZhBfpE
 zyogF4LTx74o1VYoyAIHbgFld2uUDF7sVJj+KPHJ4L47OfUc1CTaYHaad A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="375867281"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="375867281"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 18:25:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="867579136"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="867579136"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 18:25:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 18:25:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 18:25:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 18:25:30 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 18:25:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ilC3Ai/iWwObMLFyQxrN4SGYGpCQLBJ3xD/Ngl3bRxFenIBlmH51pdP/oM+kiP/wsBnc7f2bmLsLd95WBli8J4FpG+leWm3a+3nsordBIA0DFGIAKS+pjyPWKymCbwBjMmK9UkunATH0vyS5TSA+dJ05s9LaMWmHyfdU5MqAATCILQFnNlePkkrlIJbndVjoGeq8/zx3NxFjtzl1PlGAAwzYeDv+uk0lJ/FrytVlPGJg8CgvOjJNS7eVBIQmLTLEk9KaS9qgbxSdd7BySY1CcbctNvPvRYTHW106ZcoHXAlGsvJ9NONdgEXp16Kuc0wwQpgYcRdC8YLzK4d6RwTKNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=luLCzTD6yG0HdbzzjBGmvajfIOwDOp/SWYrMBGHV9fk=;
 b=Qz7/g5pmYcFZN2Byray8qelaDBrL7PYlZ+FaPhBSNjiARVNRwd8bXrB2QKOolhRFSJh7nHCnR9F5KG7fhCyejg7IpAXAvExplm1tHrdDtt0A+Swzp6mA3Zl8ivk7DrD1RaHnNgg+c76mydhq6Q4C31ZncBgY2f8BXY+u+sAC9bVHJ1cfRuqHVSNRutP1vdegqf/pgCscJ6PBEsE+PVrc0HeL76/I1qSh1at7tXKbfSxvQUwOZmBdEZpljknlvvVm2FKBpKKU5QOxITOVRkH52GGAoswzVhy23RlrvhrMAD7UaNdyyfDRSV4Mjh33EpUQaaRh1ZC8wGL6UFX3oBsIvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5432.namprd11.prod.outlook.com (2603:10b6:208:319::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.38; Wed, 13 Sep
 2023 01:25:28 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 01:25:27 +0000
Date: Tue, 12 Sep 2023 18:25:16 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <ZQEPfDuOr0bC/s+K@unerlige-ril>
References: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
 <20230909011626.1643734-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230909011626.1643734-2-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW4PR03CA0277.namprd03.prod.outlook.com
 (2603:10b6:303:b5::12) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5432:EE_
X-MS-Office365-Filtering-Correlation-Id: 86a43046-723d-4b3b-7929-08dbb3f84ef7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MJ8FutxNLespo11Ttuq8jqlKdjakYwdEv5zt+VgfhPukjgy7ROUciqDZ1bpC0Ax6kuU45tdNzq3IHIb2AOCY4mVvXNO1IE/TdfNhMj8jhOgdeM5Z1Q7DRg+kCd/vb35kkvcXHQWlNT0wCdW4DN6RM1l2OYiMfXIcBhcMOJmjYV99aWtSiqqdmLcE0A6Px27VFAxTlZbPg4tIl6xrG3auP7QKCoSBCf2YhlFFdajqt1SrbgtqpI2pUt9qMnnyxSAqAFeS8FdiXJswF1DqA00weJkzEd+tdMgsKZNFewAY4hUcpwgGrQYHH00QVr56kN0TTXWewjIEdRBMRv8LiiDhjGugODd0+/0pNK/wBWMgz7+YPGpbVu+0Ti7FDAWe3Yy9NdYJSGUmycqXgcLX9SFBm/iaBVQCVr3n3ngk4NoP9Hzq3jrNbzPUsXnV6140UsVqukpOuX+l4kgLEZYtUpIDPlnW+YzFvCmZV04Ysj3i2Tn1rekgQEsTziLsGVh7ejsTyHRTAfSVzJBa3KymlhFSv9X9h8qCP59Pn9vVR8jiLiVPC5LNaPricm/hrOXn4gY5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(376002)(136003)(396003)(39860400002)(366004)(186009)(1800799009)(451199024)(33716001)(66556008)(2906002)(38100700002)(82960400001)(86362001)(5660300002)(6862004)(478600001)(8676002)(4326008)(41300700001)(8936002)(83380400001)(66476007)(26005)(6512007)(9686003)(6486002)(316002)(6636002)(6506007)(6666004)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDFkUEdwcFhFYzU4eDl4b0hkd2lIK1ZFekxNOFZLRXg3TytNYmgxSksyNHZT?=
 =?utf-8?B?QzR4NnVINTJUTGFpSmlPaDZtVlZBTG9IWVpoMmdVMEhQbERQcE5kclM2ZEp2?=
 =?utf-8?B?UUdEQWtjZFFVMUUxcnMzK1pIV3JsMGxYSktkTWxOdVFBVjJBMWl0aWNpUWg2?=
 =?utf-8?B?YnBpREQ5bmJMKzN6OER6ZFVHaC8zTzhlZWpNNlBwMVBlK3JQcWNCRDZZUVBQ?=
 =?utf-8?B?bWhGbEpDS1dVY0txN3NVWnF6OU9NM3NBdm84MmcvUmhyR2hhSjIrazVuZW5H?=
 =?utf-8?B?ZjRRRXJiVytnbTY4S3VNUS8xQmRmR3hhMkROVEIwYStLaVZOdFIxUjl0UkpJ?=
 =?utf-8?B?OVZyN29VVXRSaTRFZHRhMlp1b2g3VFpHcTdMRzRCMmR2aVJYRE5maWg4b01P?=
 =?utf-8?B?T003ZkduaXQzeUxndnhURGVQdE9SN3dtVUtBNGVhM1hncVY1bkhVTWNsZS9L?=
 =?utf-8?B?WWxQejd4VkJWZGlTRUhCOHRiQVBwWkpIRWJKOXZwK2RCQzVBajEyekVQbmpx?=
 =?utf-8?B?Y0sySFVXbDBhN1B3eEFlUm82QWxzc2JYRFZkUzRwMjBTS1k2VHByYWlidjEx?=
 =?utf-8?B?VzJjZ0FaRmgvMXl5TFhwYUh6eTNWbHM5NzhoeVV2MVoyT0JMeVh2T1BHVHVQ?=
 =?utf-8?B?SndlRkg2V0pzQkMrV0ZCdWs1bTQveVR3akVJVllxN29saDFIT09DVFdLMU1I?=
 =?utf-8?B?NGVBVXZqT2Vxbi81TThDMWhiQkxxa0xqcjEzT29DTU11TUpCeEVSWUt0NUxa?=
 =?utf-8?B?OHNIMG80Ty9iaTU1a1U0T2ZHS2xUbmRRY01ndUlEWlk3UzFKd1Rrdm91YXlM?=
 =?utf-8?B?VEY0TXdHeUFYUjRKdHRmK2tXTWlyVEFwL3FpS1p6T2paY1VxU1lJSDJtSWtF?=
 =?utf-8?B?M3J1aDYxN2Z5dkZ4QXhZVXRmbEFLVllUak5vY0RQSTRvNHhjaUo5VTlTN2ZD?=
 =?utf-8?B?b2MzdUhLNk12clhDQVdHNVZyTFhwcno1SGxzRmFhRHhhOVFpL3ByQjVTUVVS?=
 =?utf-8?B?blArOTBvQ1Q2aTh3dHVNQXRLRW01Z2VVMEwzZjFwb3kwbHQzUHlkLzIvWEJq?=
 =?utf-8?B?em9HWE5UbGE3UzExQVNXdGlsRmVSMVRiLzNnQVBvU29EUE04aU5QU09MK1Zj?=
 =?utf-8?B?SWlzZ1ZUKy90VC82TjlOb0Vqdk9URGRqVFVVbVBVcXU3TlZHU2tiV2ozMEEw?=
 =?utf-8?B?VFNXTkNMY1dLME9EbkZjRlBRNHpsb0pXWUEyZjFoYlYrUFJmSkFpSnpabUJO?=
 =?utf-8?B?d3kwWURVcVN6QnhrYTJabkZwL2xGdW5IVFZ2eTNqcmhadW5xU0swQ2lqMkxo?=
 =?utf-8?B?M24yNklIY01ZUVl5M0dZVmdmUG1jL1FiTGk0NU94SFRiaGlkSEViY29CNHJU?=
 =?utf-8?B?cUcrZWpNN1hYWXU0bU9uWTFzMXJCVWw4ekp6VFd5WE9rR21IK3d2eFowNHdE?=
 =?utf-8?B?Q1FMcHpYS1ZSQy9TVVhGVkhYcyt2R0NqV1lIZkE5TU5MVXFtZThOWnRkdDVH?=
 =?utf-8?B?UWdjeWp3MndMS0J2dFZSa0trbzl4bzFOeWZhN1Y1UHhHRVhkT0JkRVg5Z2Fu?=
 =?utf-8?B?NDJhMldxOTZUNTh4VlhlRzVUZlFMUVRWNnNBVERvTy9QU2VKWUtqNWZKYU04?=
 =?utf-8?B?WHdCemZ5dWhjM2FLSkFGbzNsSkhzQzRmVHN3d0VHT0VOd0RtMDk0N0NZL1RP?=
 =?utf-8?B?UEZQL2FRbDEyaHhJdW1PV2JOV2l2ZTJjQjJqTHNLY0xDWnZObERWektiTDFt?=
 =?utf-8?B?djFXblJiZFBseG1ZZWM3SnZxbVI1V29LU1VmSDg0WUdZeEdPTjIyRmNVcHRX?=
 =?utf-8?B?NUgyWDlSTHJHWnJPYllIejIydkdMUDZXeTRRMmlNY0tZdVVqTTVLY1VQZE1s?=
 =?utf-8?B?TzRVSXZETUJzalltOE9OTDhUQlBIeGQ0UDZvNHlhU2Rqd2x5VytLVnZSRE9F?=
 =?utf-8?B?eVV2SitGNW9ySmIzS0NPUTgyeGJwMGQxaVJtUWFqeXNIeTZ3Zlp1QU1hSUdh?=
 =?utf-8?B?ODkzQnAyVGE1bU5BK3Fyd2xFTi9talpEaDNwVzA4VFAyQ2lRblhIWlRYbGxt?=
 =?utf-8?B?WW4vdFIydStFNUpSamp6NGw4cERmMFJUazAveHJLT0kzMVN6MHpqajZ3REVT?=
 =?utf-8?B?SC8yWjFwSkYzcitBbTA4OFFkVVdxUVpKTW5TNVZZUzc1bFhnVTZsT1EwYVg4?=
 =?utf-8?Q?nXpV35eeLJ3YO9/Glf97be8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86a43046-723d-4b3b-7929-08dbb3f84ef7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2023 01:25:26.6076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I3Od38qrg/aH0w/VwWNx2MA4R0iGcTN4u12HcU9ZdqNdsgQTec1uRDAjSi5tc2uNtQ6OsYFgsNyJQYAPSPwar6fxUDmBCA4muJL5ZO1/z5Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5432
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Subtract gtt_offset from
 hw_tail
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

On Fri, Sep 08, 2023 at 06:16:24PM -0700, Ashutosh Dixit wrote:
>The code in oa_buffer_check_unlocked() is correct only if the OA buffer is
>16 MB aligned (which seems to be the case today in i915). However when the
>16 MB alignment is dropped, when we "Subtract partial amount off the tail",
>the "& (OA_BUFFER_SIZE - 1)" operation in OA_TAKEN() will result in an
>incorrect hw_tail value.
>
>Therefore hw_tail must be brought to the same base as head and read_tail
>prior to OA_TAKEN by subtracting gtt_offset from hw_tail.
>
>Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 018f42fff4cc0..ec0fc2934045a 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -565,6 +565,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
> 	partial_report_size %= report_size;
>
> 	/* Subtract partial amount off the tail */
>+	hw_tail -= gtt_offset;
> 	hw_tail = OA_TAKEN(hw_tail, partial_report_size);

I see partial_report_size is a value in the 0 - report_size range and it 
may not have the gtt_offset added to it, so I guess the OA_TAKEN may 
result in a bad value, but I am not able to visualize what the specific 
issue is. Can you please provide an example with numbers?

Also, slightly confused about the need for this patch. Are we dropping 
the 16 MB alignment for some reason?  If not, I suggest we can add this 
patch later with any series that drops it.

Thanks,
Umesh

>
> 	/* NB: The head we observe here might effectively be a little
>-- 
>2.41.0
>
