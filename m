Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CF9787441
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:32:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFCB710E58D;
	Thu, 24 Aug 2023 15:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FC510E555;
 Thu, 24 Aug 2023 15:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692891168; x=1724427168;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=R765i/sfzVwndbrHJLtVpI2DdJdiNU3brnbxyyBEMu0=;
 b=AufghQ6DOQLngmeZH8cjHNzPQzbKpOaJaFK7jSBQEVynFYQYgWyZMEOP
 QQbWuk6uMEjyb3pP4wI3a5s1uyD+1Tb70TO3sKLM/Hrobh2FK7YoY7rL9
 TcOzLOY/u8y69sXF0hN7ivFXL9b3JfU+7bGStMP16qI47Doq0Eka8pr6g
 oSYLx3PFyQOkxwI+Ya5EF52PzI0z8xcYMeBQ8lTNqtWey8Ovjw4lVTUVq
 Gr47b66jphMeE9IpDJCAdKYoyFiDRQchArT6N8ndBBRQt4T7SG/Dt7bMg
 L50MN7bz6Laal72L0Q6c8J/CDr61yyDbT2q9t8Y77atHX6DmsANMBKHs5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="377218070"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="377218070"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="686939589"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="686939589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 24 Aug 2023 08:32:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:32:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:32:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:32:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MU49WGiNu1fC2jstLP+cSY+QJh6coEYvUaNyZDEvSesjEeAyzuQUezs8NO2FPB50cnYl3Bhb0jE8xQNiMv63hr5uSsDDJJ2X+9G9XxhpdBMKArby2EqCLf6oVsR8uyCWHHizsWLi0w6ID7F9Rc3Ty8cPe4gTZsOdE/IwVTsEOD+d8z1kkNT9DtAxmRLH9xQ8D+b7YixPoP1Lywn7Nm7oIrQGl2IIbxoD82lh++c6Ey5dDoxyHIHUf0YgR+3zARl95wRCkChaTssYLYcvDdFS8ADm+/iL1MM2gX0UxCtnEuNqvni/662oYtMgil8rUco4z2KpAGMqsfDQf22KKVt4ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uFSy46FElR+rsH1jwxerXPGCaauQts8SBBDNV4prNzc=;
 b=cuhVGsutD42px7R8BpflXxFuGvZbwkVIPzrQJDk+DcpMHtSaGzY1BihBW8maGyQDnCO84keDLQ6ZKBwkvONsI24JlSwxf9RDObcLrbRhEDlf3uIfqECcm3Dkjj5b+n62YPDD1DqNBUOJrv7mMWCtG40Bu4hoasROsLxhGZOnqzvW1XSldvH341XPpZbT7ZJBsywAh4Ru4fhmgrNEaHdWIaSDKMQzclZYY3V4Wh4L2PCvExeL4JhAbT5kpqV/M1UZwhfVjyp4lQ1rCCRH9kAfHmD211AV/kzdF+HgUhLHQkgWSnWCoaduYRz7pSyVwp4DI5JIS998wB2QSZpfhwN9oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CO1PR11MB5106.namprd11.prod.outlook.com (2603:10b6:303:93::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:32:43 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:32:43 +0000
Date: Thu, 24 Aug 2023 08:32:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ssxqvpyzr4ip3fhj67ddhytmpa2a7ovngxh7dk7aua6aofvmav@6fmvocylqtxj>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-12-lucas.demarchi@intel.com>
 <20230823175534.GF6080@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823175534.GF6080@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MWH0EPF00056D0C.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:5) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CO1PR11MB5106:EE_
X-MS-Office365-Filtering-Correlation-Id: f4f46ee5-dfec-4e55-ae91-08dba4b75be5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rC4V/5oZ7EOym/4opsj5k1VCyiT+ACR8YQ6JIbDflKcdhE0LaiDVRaM9f/C4NElV6HQoij/I+pwiO2zdJ5W6HFivqo1pDL+/6YVFVdIHuNPsvy0rg73WBtX7ueQgcJcrNaAOHsyA6X1XKT431mMYdTRw+2YQrWlIm0PzK/kpDACBfhuYhiUavlgTxExlOEaMks4DjEVTzbRieIQYwqV7qhOXnBLk1iMZl9Cilgx8zItZk1T6ixHF8/JUqDJDN6wi2tjBIF3ys6yCgBUZy5O7gFZp/qNTxu4kL/INmSz7J9hVP6oHQJjOpeSIlYPtna3NinF0sFiU2TYYzos0xkD9OkKWVcVLH6cGPJizDW9Lxt+69QG7NmLPtb2ii3JDwkRsJ5k1WVPwrgpQxmXrxfndFV/YEEJ978wgfEvKm/jEJz7EwUJhVm8iZg8RiyiUQXZYLW4fWEdUHY2EhQXSexo33sEP/FZvKR53U4gtSzUitjd+KiCFwrbL8eU2Dvax7PvkokUomyrHJWSZ/2IDs159h3f8VZ5k8LZw18bpliTVvbh7ErqAdn5oAnOFJvNJtSvs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(5660300002)(4326008)(8676002)(8936002)(6862004)(450100002)(83380400001)(26005)(6666004)(38100700002)(82960400001)(66556008)(66476007)(66946007)(33716001)(6636002)(316002)(478600001)(41300700001)(6512007)(9686003)(2906002)(6506007)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?juW5aKSa/db9kdbNNZTA0uqowDzTmCSdlECMuWgxS90aeMYsEMljIBruIxcE?=
 =?us-ascii?Q?E3J7yT7hX1GQqdC/ptOYcFZg14U7EBYtf/RFn0d4hqTBxG4O61WMBvvKyt5e?=
 =?us-ascii?Q?CVjtw/uq0pEni3NT7uheA06YbhwbAfSaTLIHOYLQHCmNhfw2aE9q8rSGtAbI?=
 =?us-ascii?Q?FUfHav7fudyI+BFsAnx+PodfHn0Zm10Jd3XsEI3bUg3BR0aprQkHtbVlH9wM?=
 =?us-ascii?Q?fGojPHf77Jry4tRKGXSQJrT/MTA+u4fWKo2144oKxbncyfl4gfCOecQ+a67v?=
 =?us-ascii?Q?3YMvrWtjfmBvBPs6ybH5vgRNsrN1zaA9U70n6/tNKX3T6ldnRYwoaS5Yi3u/?=
 =?us-ascii?Q?IZxYGJBxDVDE27Wizy22AhrUCwYhpv9kB3JRftZM51tk5s8jQCg1OPDXFGzC?=
 =?us-ascii?Q?MPdmC+96Ok91YlAO+XPgRXE9AXHXFtAY7WNsm4fQbBO0AndyiLqMgKe7w/K7?=
 =?us-ascii?Q?pPAFtCY57QnXZcSgAFwewOp0pGsE/KestpildoWEem0WZlKb31V7iV0lh1x0?=
 =?us-ascii?Q?Zg90uYSrhnDeEtdteUFoe+6vHwxKe1iK1VvRHmlL3dfcXhLdtinuGho2dYbR?=
 =?us-ascii?Q?TAFYU18vihpCvvZOCyZ0DABA8cqQov6u6dgiqzWi4bMf4kc/hbURDVIsiopY?=
 =?us-ascii?Q?eiGKW4U/W7wg3Y5xL7UxwL3ctnYlwP1Omu/LbBIDOIT57JxK28SxxWPPj6d5?=
 =?us-ascii?Q?MxxFHBR8DnslALJ6hewXQJLBcIqAPbqh62ff2JcKTh9MVYlTrPujDajf3p2h?=
 =?us-ascii?Q?e8LCpn6X9fEDosjjeFN3JQX3G71xWPsZdsuuZmwBbIJ0SQEQvZasELTKwOH8?=
 =?us-ascii?Q?z7eb+kdD9eiyGM0U11dv3y7/dk6dzCrRJur3htxuOBFIrjuQ9UFc/C5AFZmQ?=
 =?us-ascii?Q?F8m5F8Xl0aVFgcusWgyMly8PYbX4aK64A0A9FgVbGXBdFXHApNhPOS4RTqnQ?=
 =?us-ascii?Q?5gNOVphFW/i2kAIR5wJ3dl4Zy/aoBVgbvvXP90k+EjHYKoDONPzUZpvoHluS?=
 =?us-ascii?Q?62+3PspZlIB7BGA4OIM8VBFsRKRPksBK9KMgUQMy2haM/q5TsNzP+2QAnzzv?=
 =?us-ascii?Q?K+NnQ7dZClhhFTyWs+jhsG4XcvujxGpusR9S5F+x+g3LYapYjItAYTiF23lv?=
 =?us-ascii?Q?MuOqBwkLAfcTeHz3y4P1g5PKolaNgNcTNsHTJX7t1Iiyl6jx4JBGfusEvKPL?=
 =?us-ascii?Q?dOdS7tLs97idei0C1abEeKhdoj6TjbkRY9PwQUQFc+PErOCHVlBrnrzx7ZEr?=
 =?us-ascii?Q?NFkUksToyxtA3eknyx9f+M0p0LW5EmgTe3dvqbn84jH0yGOxtaPzMCGWx/Vy?=
 =?us-ascii?Q?ZkPj8hIe3Y4VObxQjLZI8NaJRIfRM6U/8d7puBapu+Zdp2G72T93h064LPgQ?=
 =?us-ascii?Q?00DUOO+SdAI1A9vSUByvZnUYbgL8RLPvex4lnorWlXdaY7L1v79RreNPCrcV?=
 =?us-ascii?Q?Qzx5YF1GivNOM8ujFid+Yl5k4HAt1EkQ6R7ifMFEzD4mexLxfbZF0Id36jWQ?=
 =?us-ascii?Q?YP5SwwN4AnLoMcknustRB9pwTwY5IpbdDYVF8Q24EcfvVCKs6ELOhDmXXups?=
 =?us-ascii?Q?N3FkFqIcUEuw97yLlaF6dcufOIvq5DpPO97/GcwwuWEuptHqsPpeF3W41e84?=
 =?us-ascii?Q?HQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f46ee5-dfec-4e55-ae91-08dba4b75be5
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:32:43.3002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uVI7G1DPbnFsm4RvMj0zqZ4A6oklGu/LWEdqizeO5cbjXXDEyWkMntHFD30N8QG/Xy/VMjIbWrCKuI4CmO8v2b6J+vpZIgmOEFUByH/gGwA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 11/42] drm/xe/lnl: Add
 IS_LUNARLAKE
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:55:34AM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:09AM -0700, Lucas De Marchi wrote:
>> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>>
>> Add IS_LUNARLAKE in the compat-i915-headers. That macro, to be used by
>> the xe driver, checks for the platform, whereas the macro on the i915
>> side is always false.
>
>Stepping back, do we really need this macro?  Most display code should
>be matching on the display IP rather than the platform going forward.
>Looking at this series, I only see this used for fake PCH and GMBUS,
>both of which I think could probably be checking the display IP rather
>than the platform.

I tweaked a few patches to check IP rather than platform and reworded
the commit messages. But there are still a few patches needing that. If
we move them all and make sure we will not need, then I can drop this
patch.  I will take a look for next iteration

thanks
Lucas De Marchi

>
>
>Matt
>
>>
>> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> ---
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> index d64d34181790..38b64ff6b9ea 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> @@ -79,6 +79,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>>  #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
>>  #define IS_PONTEVECCHIO(dev_priv) IS_PLATFORM(dev_priv, XE_PVC)
>>  #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
>> +#define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
>>
>>  #define IS_HSW_ULT(dev_priv) (dev_priv && 0)
>>  #define IS_BDW_ULT(dev_priv) (dev_priv && 0)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
