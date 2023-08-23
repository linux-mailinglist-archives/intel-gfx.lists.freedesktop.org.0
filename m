Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 234A4785B8A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 17:10:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C4910E02E;
	Wed, 23 Aug 2023 15:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B06810E02E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 15:10:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692803425; x=1724339425;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nq0J0PMUyz3ScdTIVMWTuOuybwHx5NBdTgR6BsfCZhw=;
 b=jpIz1mnI4vurtM7iRi0fecYzGK5qyvdvOSO5LOcX2YoOxj86NqsUOQXS
 NIqJHqZhRTsmuuJR+IDQ3KIm/g7YUtOCxRncIDuUetfk23JTiv7DSnYNH
 7x+uZGZ6wrxWlyH8fZ4rPnVHxPSr4cGjxIXjKmPNyzJOA3tj8zldlnrWa
 YocuvqYimjV/Zm2jVNHIZa3BXyOIQZPqK3eofs4Zo2M2Nvo3CWJoPd0w5
 89MtS30FWImSnY+dU2zc6aFs/4OgFC15+Ng5qpnL7rsA9lFVkJRDXBeYx
 hXari8c9YKxkDCBbdp4w77FtgG/vn2B4c0vYUWdp3IGrDmbg2hfDUGeMI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="373073830"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="373073830"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 08:10:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="826775085"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="826775085"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2023 08:10:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 08:10:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 08:10:22 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 08:10:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GE2uB6kq4AxfljsMqOkZ21/TywIgOUww+ja2r9erVmldEnvj/Tn2+XHxRn9UHrm6YkDRt2jO1Pr9UfVdQ8oxr8jJd83osMjgVtg1JMgeAbVYg2nq63HHyvQPtIXoJ5OpKPHMwUOvoWL5P1GVXegmIeTcnUaTE6vfPHTjhiZnS7ES503t+W1ee/tliNGX1VjW8cror+R+apLZqa81JeF3g32kh21vmV1TgzYEwlQfIiVB/k4QaA40W+PbegOyW1hA5GQrOZdGiVSZ5UGoPU6YO2huuX3R58SMrt9tKHDoKIiUCTcBhkHFz3QTKUAvMKPl8oQz2z+Nwm29dlgc1WmtAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/2djYZC75QJmJr4sGfZksKDwf0OCuBZOT2tIx5RAxoc=;
 b=eSxYAQi/RfV25JektfOC9voRiDpgEMOLlLGrSLAtPIWfFbkeQQdCaZ2Vr1hW2AQgELkWvF66dyz72+EgJQ8lfGh45WIbIZht37osEpb9VDEKD3Ec8VCBYQ4DkulA3PYmp0jq+0QyiUUCyegAicrO4TpV7MKadZ5Var957jZaizwfmTAIpIAGoceU8OQgA2Ipu3djZ+kgK1DF6ghXy96cx3xZLh31rEqoabtgVk3a+Y+Ufr4WWcnN1LH6Nwx1+Qm/CzfWc1q7hibQbyaf87ToVzCPdIbypDMpJh95VPZswcDiGG5bhQzIa2AiiznEpySCbAto08d3NuQ53PHVxk6s4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB8762.namprd11.prod.outlook.com (2603:10b6:8:1a9::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.26; Wed, 23 Aug 2023 15:10:20 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 15:10:20 +0000
Date: Wed, 23 Aug 2023 08:10:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Message-ID: <20230823151018.GC5554@mdroper-desk1.amr.corp.intel.com>
References: <20230822172743.2113377-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230822172743.2113377-1-nemesa.garg@intel.com>
X-ClientProxiedBy: SJ0PR13CA0184.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::9) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB8762:EE_
X-MS-Office365-Filtering-Correlation-Id: 796f2578-2ce3-48d2-7172-08dba3eb1145
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /NxN5Kit7zJqbbZRDGzlMWLeXvu220hzIP0tDF7dW/O/hXvM5eYHP5YT/kQA+9daT4O8sytSWunC+rlIaAfN3UUyF8E60jrxmnDaKxk5ueKYj8KPgUvfIQXpG1Bh7tTmBCFVOhdtM9pGm+5jh2vq8wqvQN8ym9Vv2KX5IvoWZBxkPl19Iiw2ZnOrV+d/bfNqBQCD2MxWo4KZr7F4uvyz2tQKmRpWy9SttnEkVvuucTlMg543BkwbgIqAobuN0GYzSHqGZizkhPM2Ok7U+7Pa2GKkYhuH5pq/8WcI6j+HzY53yt3aQEAhhTMtxcEHggJUAERgntWCGw4C5OgcSvW7RzORtb96/nHpfhqyJBXku/bZER0/+ws1gszvdEx1XNXQnziZ+Ai8WUkBqzms1c9Pl0dk8PFXNOxN5+bwvll1q3rqfYmhL/xHrZOMZS9wLLtgWXIA0wo5YypqdtgdGjmf07RhRqMLJosTq6BZ/mBawFI++BuOz3iKOOL+h9qcAEOEZ3mCZEKNwusfAGupfcX3VFMijmqVvD55plwsOIqSNYl2gHsrkv3w9F8/4LMQb2It
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(396003)(136003)(39860400002)(451199024)(186009)(1800799009)(2906002)(316002)(6636002)(6486002)(6506007)(66556008)(66476007)(66946007)(478600001)(86362001)(33656002)(1076003)(5660300002)(26005)(82960400001)(38100700002)(41300700001)(6512007)(8676002)(8936002)(6862004)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Dmsjj1uzpIQThd8DWDjLWkHWNmLjhL+AESxKjMdMKO2Lq1mC1F/B5Y6j8MiM?=
 =?us-ascii?Q?5XzC6uyeUnUSzmSkyo2Qj2TMuuGjsXQ22QGS3f7BKPOryIr2yUu9hGTQwci+?=
 =?us-ascii?Q?toznSbW04WwGAM8SM2lpZ7bXH4CIpxihq+g9W2D5UtTE1i+mGQ8BIqPMoBPs?=
 =?us-ascii?Q?f0BTvIlVS9IsUyeqZiBfngA1SiCSa3imUmj1Dy0El/KkiRu29JChLTI9n2W8?=
 =?us-ascii?Q?j90KVzuuyPkxMZo1X4GoCKRo1eEwgsMsI0Z9cSB6VZpjhsW1yxvXCW3AYVyn?=
 =?us-ascii?Q?k0Yom2bRpSTBV52yElGzvZJ5kGKGUm/O1aY+uw3lpFYmJimRrafm6F8U7s0s?=
 =?us-ascii?Q?qIDxFjIg0nWOnrielgYtCOzEV1eYiWIFdvB4LzWxMUB0CbOzSAar93PJoYnT?=
 =?us-ascii?Q?NleZhe7TdHILtqp3ZwtvuO4oBwOQL1Aa/hKha1oveeB1daCfmYrNCO+y+Tw4?=
 =?us-ascii?Q?MfOBjheHSLogpXQ5Mu800j0LJ5jJX6zOA3rMc8iH5tMm+gWnTh2mVS/Hc/QZ?=
 =?us-ascii?Q?vi53g8vs0R8ZgYeFpYlJYD4l2I6Ag30Bs7/njyA5wM6OKAxKTl0mKNZecxh+?=
 =?us-ascii?Q?Rd/JMvDRE4lCv6raObeL1QcBeVk1/0TpB16j6Jr2Bls9juTpiOMRy6k027RG?=
 =?us-ascii?Q?fBJHk9jaItgtuUEpdDEUkv4pbIC2BQkJce7GRx9gQI++VNg+T9ezxx5s3Fyv?=
 =?us-ascii?Q?U+R7PnjiaRp1EcApQ7PCMoTR8LseaQq/9BL2uMDRTWurtGaa5+avsy1G8use?=
 =?us-ascii?Q?uzeiqnNZNQ/qlVH26+ncDN49VqX7mYxqLU03fitOgRMVDIV6CRBf4ERZfjjq?=
 =?us-ascii?Q?LRTi59IQk8idwBatbxaBoOJMOme9fj+bwkhbKCnwH0Vr2HPcPHGnkPgbnaAP?=
 =?us-ascii?Q?MbLjUOQoERN/K5ZnsqtXk2BTe0mutBTI6iTyN45wi6y8KASLWaVLUio2z5w4?=
 =?us-ascii?Q?iHDCpDc9W9ZArW8nnwNrtT1C9VvDvDQOmupB8AJjMfaNX2F/M6mK6BH1kQHF?=
 =?us-ascii?Q?+QbbY88jSAEd5/i0eRO/DcX9xmKlROiz672r0DwDAZRTfObcpb3MMI+qtDdX?=
 =?us-ascii?Q?mheh59exwW4g8jYEJuReHgPoUCVMH7G17f5bwgw+dfTcV4Y6gi8ej5sIj6xH?=
 =?us-ascii?Q?7veKZHdjD069lBIy2b6awy6MwqO5dipOHh6NvwMN+bcUqO+xd6kdZw1FgatT?=
 =?us-ascii?Q?Wxq0dJlX4WV9li+N+JVL51VNcyOaEWixKUKqTNuydLKFkqBJwWjZegbOxXQ9?=
 =?us-ascii?Q?Lrke4IGHfZ147OauJ7nmaAwsAlDMJpZy0xjkP02lt+TwIKA541fD5hERPKqC?=
 =?us-ascii?Q?1at7kXIzdNP0t1kOTHQZ1t4yzNqGKQnPD59Ijq39sUBv8q5MHc/XdmUlw7SG?=
 =?us-ascii?Q?DBDXEDZXhCBjOodc1WSi1aA7W6N6JhUK9SSw/pIIIFaQzEWFS7YkXOavrIvD?=
 =?us-ascii?Q?PM9Iv32P0yfyLh32e1+PDnSV1t9G2zo+BcIVBSQOvKs7EDy8Fq5oDQfq1ETU?=
 =?us-ascii?Q?t4+OJ/Wm+3pwR8brI0FNnMvGLvB/pgfvN9W6ihi1u2AVd03lqOKMudbNO5y4?=
 =?us-ascii?Q?8tPo6OxdJeo3XMw1ATmHHaIqFUfXP6cZBn47JuzR05a30olTCiByzcJF2hBk?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 796f2578-2ce3-48d2-7172-08dba3eb1145
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 15:10:20.7324 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: udDC0FQis6U4Bw55CQ7CorETgyyx+8T9r9t9THJqhUOREU9ImRCuiLb0fkbxafhBMIzDh5sIlfbyBfD0+Mhosu5/GnjeadVtz2Wi4NuizpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8762
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Adding DeviceID for
 Arrowlake-S under MTL
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

On Tue, Aug 22, 2023 at 10:57:43PM +0530, Nemesa Garg wrote:
> Arrowlake-S graphics is similar enough to Meteorlake
> that we can treat them as the same platform
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

and applied to drm-intel-gt-next (going through -gt-next rather than
-next because this is the branch where we just removed MTL subplatforms
and thus where this change actually makes sense right now).


Matt

> ---
>  include/drm/i915_pciids.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 38dae757d1a8..1661f9e552d2 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -745,6 +745,7 @@
>  	INTEL_VGA_DEVICE(0x7D45, info), \
>  	INTEL_VGA_DEVICE(0x7D55, info), \
>  	INTEL_VGA_DEVICE(0x7D60, info), \
> +	INTEL_VGA_DEVICE(0x7D67, info), \
>  	INTEL_VGA_DEVICE(0x7DD5, info)
>  
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
