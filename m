Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53878696E7D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 21:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9800410E257;
	Tue, 14 Feb 2023 20:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B3310E990
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 20:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676406414; x=1707942414;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kzSEC4Ya9skPvbYpEZGguEEFYJgyZK8URotmI+pLPWM=;
 b=a7LA/yCSiXvcXfmNU350AydR6wtolhXnJu1HB2rxbdfylq/Jbfy+r3Ms
 OOqwt2VrUsrFPJFwnffsYjNmAdXSddymWTrtk7QzU/DxTVAoLAVPPqSuB
 2iNIZiO0Ifv4oSl+jvIfu56TZ/Rx55jUb5fDq9J40QqJrXpJ8p2aUELhU
 uqB2JNqbuSgfTb8iI7EfPwlp4VnTCIx3xzAZyfvepsmnEK7yHmc4JTt5A
 GjMb1b0jczI9ahASqUs57N1ELSq2LAk8+BpIBSuCFMMcR3F0pXAtPYa08
 MZO1DOICyL0StS9qohXKjWW09IicSrYozO2Z99C+nXn05mmYeWxWI1YR9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417482716"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="417482716"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 12:26:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="669342636"
X-IronPort-AV: E=Sophos;i="5.97,297,1669104000"; d="scan'208";a="669342636"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 14 Feb 2023 12:26:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 12:26:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 12:26:53 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 12:26:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iHhUuEdSsdC1Eys7p89Y0FbzXHpcJe0CEf2u0try8elTgcv/l5qAmTfujs5GOz+urS0YPytk4TU3sHk/jtPGE0T90H3LLu0p4h60JtQKZn/8XotvBMsKttnLAPT5b2j8QNKEckq3KltF9Ps781KoG3A7567S3BpPzTqd/94+zMoqsP67//MChzEaWKQexovaI8SFkxjgns3N1PpWafmHM6wqtuvpeLgOrue+kYMSVXZOfidvih99bUtcAXP4BK6sxzN6m6CHejSEu/3wbXtNajIo0cLT72dTHx5RTcQWB3bw/07hpysE4J+Q2krROBRKzIPj5AzNNVfQijxjVAjCmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YCLxX+lM3DMG/BP4R4LpLO+Le7QYVv13YBPurrYp1+s=;
 b=isnAClEHoQTQK5nPFJnpmUp0e8kSSwG7gApmVhKm1HAXC/+/BIa/2NC1oDIs8Khf+FP6aiW1yNoVM3JAskiVoAMm89Ws6aJrJUgRKfRLr1y1yVuGA6km0jgtYFIOJOZYJuN6oBPCI1J7uRSTQdroM6yTUF3zlyDXMneQfozAVZmSLEAksr0cfAkOEkY8yAyfvp8OP9pQUchTu5A04Gznrnts6T4EQt6l89YybhFVMFbvzAS5HvchFmzYGJkIQZcOdmRa9A3MsnEriHq2nTTecke6IURyKWZpIeyQDFXBqWl/kMsAOjPaCboISPl+j+MVk0ozlTiUHwRtmSCePakqbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6464.namprd11.prod.outlook.com (2603:10b6:930:30::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.22; Tue, 14 Feb
 2023 20:26:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 20:26:51 +0000
Date: Tue, 14 Feb 2023 15:26:47 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y+vuh4DPcttjC7s5@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
 <20230213210049.1900681-2-ashutosh.dixit@intel.com>
 <Y+ufxAm2l8zaI/ks@intel.com>
 <87v8k4t2wb.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87v8k4t2wb.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR02CA0057.namprd02.prod.outlook.com
 (2603:10b6:a03:54::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6464:EE_
X-MS-Office365-Filtering-Correlation-Id: 6fe2e74d-8893-4da9-bb27-08db0ec9ce3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QLIQTOn+Z0dCccEQdK7mGZHnBrvwRKrTFEHVSHm1b90QLes2JKUwymAF+g9BYpXLL0CL/0UfBn7HTkbbnXJSYVcxX6NLNKVzJhTyyTHtSCXJAuq0WXAkJmq/ntOGIsK72mznx3uaaojczE+rk/NkM6o3YIQ/V0x5fNXzGOq3HEApVuvmUV3yhYfEfGfxJSH3hqfOnnSy4JBQs8fl0zTg1yBQaoHv326QsUiVxQsl825EoAQwvNGZUt/Hzlvr52FysT1OnowVHGnnGPnpNgIckTI0WtmpQZRe6Svo9qI3vcu78q+UARI0OXyvuLKfMTEkxIRcDUbAkByLhddCEK0dVmf/CwLRt0mHFKLZFl2bHf2awDblvgR1bN98DQiPx7Ob3B5c/96jEwzhR3074Z/DZTgLBucYhPnec+jHZ6obP/4RM1x9OXNG19mm44S74FrTfnI0OkZcp1CGPjSFNGaoo25C73z5G5MypuGxJdOHLK5IwmZ4gHPgTe5PmA5RMFmRNngUEMdLy4kxQ5OQYm5cCxOYCUr4p2hrWjg/KY5fv17dV3BoJGpxskO7NQTQn1BVudYxlQ5lXP4G+L2u9yM7S4c6Kes64bDcLn+AskR4rpqn2AbWptBuOw/IPB3tK8OvMaGUVtzCS+FUJgnAukEwZVQBT+Pn4btigNmyZVp5jKFw2FYCkefumR+bLaiHAVqo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(346002)(366004)(376002)(39860400002)(451199018)(44832011)(2906002)(8936002)(6862004)(5660300002)(6486002)(26005)(6512007)(6666004)(6506007)(41300700001)(186003)(2616005)(82960400001)(478600001)(38100700002)(66946007)(83380400001)(66556008)(4326008)(8676002)(66476007)(6636002)(36756003)(316002)(86362001)(37006003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UMJunXmF1FO3GWGsslqR8OWIbHAtfihSg6AMqXHcPC2LfrRUzEEv26jSIPAI?=
 =?us-ascii?Q?yBM55RUnXncH6tr9PN3/T3l27q7oMwWkjaOuG8BT4MH1UyrQbrx0OMHquu9a?=
 =?us-ascii?Q?m97x5jvzNz0wfjVdoIl5trj6q43w1Mg5ATjyVMdlsVDd3xaNHk5kyIWvgFC2?=
 =?us-ascii?Q?n6G+EvPlUiY5P8nTQPy4XIsiRdBbcyIFtgIaqtC9E0B3YQb1aQ66bx+Q9OHP?=
 =?us-ascii?Q?FCcH6oHjfTEEGRQz8qBN5+XUJe4V0VdH8yXXXMtb1le17ssKvoOhdBjrxmKQ?=
 =?us-ascii?Q?EoZ6QqYxirRJYWvT2zMoP8xtsPBuDyBDRICwrKj2rGJ9bW0sk7+CI2m/Szb3?=
 =?us-ascii?Q?aihVo+QZBp6FURY9XreGmMysxiTUWq4AHlZkr4hINZs1rTwO8KsmUNHF/QYG?=
 =?us-ascii?Q?a3pAhVOB/AaXAnO1CCNeaaUC9SAa8sIS1crJMdFZv6/gHCbD14aMxkQEbZJf?=
 =?us-ascii?Q?cIYRG5++8PgEInijIodhpiVxmp6Hcm2iC3Oot4Ps0u4a9Cc3ee2fVMhV1SIL?=
 =?us-ascii?Q?wnW5tAigOBdBknPZQ9vJyU/Ej8yalMhwMb/Lt5XETt93kdR3DmBmnXyx5k4E?=
 =?us-ascii?Q?XhY7WERcZdGwak9Fl0Jbczi/WZAU7P5hdcse0QfSsZBWsNRni/5fdZqDJ3LW?=
 =?us-ascii?Q?rwLLE+6UdhQtKhqQjwcLSQfKVXVE+FIdbXL6SbPFWJCkD3ZadP7mPcKcqQKb?=
 =?us-ascii?Q?4zRtHS3EHntIPFP7QmELQuvXFKXuntYlIV/HhLunM4n+rSglCFme/pD1cevr?=
 =?us-ascii?Q?NaP9dvZfRYyupjUlH576xPFLYg8fJbDB0cOltQdqZxPmMkUX+5qUw/Maf6ko?=
 =?us-ascii?Q?aJmCKCdQjLbJWSnMbKAMV5E6UXbOsOGbTtYzq+8FS/H/6P/hk/cJ4H2tqGeZ?=
 =?us-ascii?Q?tSiPvBgI+5vUBBFwyQd/jFHFw/FRGQmMM8Anulb/r12vQVPu/bm9YYzMPDNC?=
 =?us-ascii?Q?SfXu7hFkkeX+iHLQXlmj9Jt5IXa2JA4+06YzXGNFCHz1ShMzvNSNORFzsm1C?=
 =?us-ascii?Q?HHbLPwRrRwm4w/fbk0nLqlaRTut8eXnb7c4Y4BLFqWlV6lW9ATSM/zfF0fvp?=
 =?us-ascii?Q?2TE+stJIUPzX5AJHQa8xAMyy5Tc3glyst/3xACi9UUiyJPLG5f1LooyvQwoI?=
 =?us-ascii?Q?iSFifaKRARto2Fn0upuVsss9h+rYKVIIqBfskA2JInO7cg96pG/nIRoQN1lQ?=
 =?us-ascii?Q?s3qj/ok4tAtw/X8cQf8kLz6jUuzY108yXLNfn56s36PwQTjYJ317eVKFdOOF?=
 =?us-ascii?Q?lRR8RofIuq/B3r6Q4swh/wRABOGmWGHaRIElpG6KqpobWEZ8QLtphw4yXU7C?=
 =?us-ascii?Q?b7Qt+CI0cprzOCNy5YvJENvOIcHDTWjIYE6dXZIWiRi9VagD4n8JslsA70Qy?=
 =?us-ascii?Q?bHwODX3V3tc9/DON5af49dFlmUPJgfJLmSztwL/k4Zz2AqC9YhvfXwJJoKtg?=
 =?us-ascii?Q?geqrXUsEI9tIld3QeC11lEk8Qhc5Hgwyw7gF3OLQ0V1r8Wxz4Ary4RX+G+Kh?=
 =?us-ascii?Q?ZGv32zxMzI3qjqF9QRNjnCoanMFMqh//YlLjN+C/hnEhGfubXh1Vn+7YgcO+?=
 =?us-ascii?Q?QGMPUzSjAhftL1I2DZVwpLKFPw3Kf9ty3+O+lJAcFdHVqFqqA7y4ShZcieyJ?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe2e74d-8893-4da9-bb27-08db0ec9ce3d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 20:26:51.7549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uPX+JjkvIA3XCwq5Cro+rLJCk7mL+yMZzgrYnfQnkmYuMN0plvLuCV0eMjlnD2b3UKm1lDKl2UdxeH5tZxa3dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/hwmon: Replace
 hwm_field_scale_and_write with hwm_power_max_write
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

On Tue, Feb 14, 2023 at 12:20:36PM -0800, Dixit, Ashutosh wrote:
> On Tue, 14 Feb 2023 06:50:44 -0800, Rodrigo Vivi wrote:
> >
> > > +static int
> > > +hwm_power_max_write(struct hwm_drvdata *ddat, long val)
> >  +{
> > > +	struct i915_hwmon *hwmon = ddat->hwmon;
> > > +	u32 nval;
> > > +
> > > +	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> > > +	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
> > > +
> > > +	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
> > > +					    PKG_PWR_LIM_1,
> > > +					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
> > > +	return 0;
> >
> > Let's keep this function as void and the return 0 in the previous spot.
> 
> Hmm, see your point. Though there is an identical situation for
> hwm_power_max_read read too (in hwm_power_read). Maybe I'll change it there
> too in the same patch to keep things symmetrical and retain your R-b?

okay then. let's move this one as is and fix both functions in a follow up.

Thanks,
Rodrigo.

> 
> > With that change:
> >
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks.
