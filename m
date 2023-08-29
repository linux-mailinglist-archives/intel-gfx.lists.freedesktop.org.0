Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6667278D0CD
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 01:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6EFD10E4A3;
	Tue, 29 Aug 2023 23:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5845910E4A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 23:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693352947; x=1724888947;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wYOSk0L0cl2f5RHf+AMnBH88o+uHrDgeXiOKrap/kzc=;
 b=gDi2I1qC5SNOfBHWiwLqCivoKaEr4nApBlXtM8V6XGuNU3l5n3F8PBQe
 SFYdwFVQiK2wgeKJj/tVA7tcgCqOhwuYZRhr5pSEgTwxNaVh8PUAbHLwN
 w37acy03Tpl7Fz3F5H+H6wCQY420/iljAKw04sd0QPYAk3s8USjxLH8QJ
 xt6iqap3Fyl+a2iPvjpkQQwWXKAzCXJDFoYsph62OjJeqhdx/6UcvP0+t
 CKwQeAb759mxnkZmycG6r8IKZkuSxgWCpKTFE5vlIIQzFpNrT7zlWQWlK
 QGpRexN96IiU6uHV2autWtETJ5QqQYsYxohDJyfRjmOZ8HhVUqrk2jeMf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="461885066"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="461885066"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 16:49:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="773910353"
X-IronPort-AV: E=Sophos;i="6.02,211,1688454000"; d="scan'208";a="773910353"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 29 Aug 2023 16:49:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 16:49:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 16:49:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 16:49:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 16:48:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j2/swLnp5LKK7Avq1rHgWCtO3v0ZZTPXcqOq/peoTtRoTC92dI8HyYnAkIMUFjdibdyE/RptsBCxyoDcfWoX9dOFH4zG/hXD7pyYAg/VLSWtF6noOk/UjLWtCs71ELiuz3vU9yrcvGXK7FgboLRtbWfdJzNm9q8zuD/vJfIFXPsAF2GpOadEBLfig+w4+85cvmqubccYevRdNfXC7DqSMmQKk8qwJ0s7yR2GjbaxcbiB4EBmmphBhFNllpK6uj6txGRmpbgU1ZdVybZQujJ7IxoYdL/w1Dmd3L0Gv6IlHWPIKi0CKB1Vi9Cf6g+mxv5MBq8G8s3IqGwqtSImPfcyYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fldmx30BZTUMANmp9CrUkLJ+U+E/Mb0q7D19FI2UHVg=;
 b=mVuPFTOnlr2gvb1G0c2CW5gD39X/brLeXAiVCXtnhs+H/KDu3mo4DwBrlfHQqgJVicmjEUx4+NKwT6/Waa27hBYLiGgZIYjs5AR1pWnC2OVZtuYhPgc9dfbPlHYj5r1xiHZrutEdz8j57a5KPLTK9NbGm1Y6E62uTP1qwy4k4Hz+MRMdrvWq5atljlOP1zXx5+WKGu/r2CU9w3lT75vEmrVyMJTwqqmUdBfu+calvXiOk726FVMaE45/3eR23BOB+DKPoQs3sEQiGT9NVS4W0S8jY18EsDlRSrR9xdLkw/l2bqtamXj3pgxgy3U/l5jVvEM2d/SesKsmefwZuXVbWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7888.namprd11.prod.outlook.com (2603:10b6:8:e6::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.34; Tue, 29 Aug 2023 23:48:49 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 23:48:49 +0000
Date: Tue, 29 Aug 2023 16:48:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <20230829234846.GP1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230829135945.1201574-1-swati2.sharma@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230829135945.1201574-1-swati2.sharma@intel.com>
X-ClientProxiedBy: SJ0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::35) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7888:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c84abb6-0ba4-458f-57b8-08dba8ea7e16
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KLniO6G77StF9SAVfFj7uzFZppwBU8xxNiinIwGl6sZRK/zlauqC7a3arHzZ4hJHmYvzOV0jcg5GwY5BAV+rTAfkOuvQctcG68IWWq6CkAVAfUrZYYttk2uOb+8nsERsJ748fbOSnEB/1thJh9nNg0PhfgYuhFB/B76G2Qsd978GMX+qumom2Xqr68MnAzSYnvRpcwm+VvGjHw6Fb4phiWSoqZE7h7fCSb4YREaFLT9q8Xqri3nWUFkH/LQWYknpboWmdikyik48W4W1OS2MNateIF89MxiqjvYZqIfTaM+eBWtdDAh0TiLFRN3go/2fRFjg3NrV24yR5l0rh7F2xLVFKXEhiJO8AAr3SKs6YFjMg/lfSLNA2Xl+s4mniY8Uh1cB5qzAHRkQ5OSXoWI3JvotvGPNrv2qzrAZ7FL6G23A+nHbJ9nBwtdJwOPAXBqA5o7+oxdRBIMDrNZE6ePYD4irD8O8IN+m2oQD60xv3opNlA3iy0X+apQ17jZFLtlUpySHuUdyTkQTkVNrry0SH9ySTHXC6j8GkV4EdK2z5fDeDDgUj4WYJkibPTeFdimk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(366004)(136003)(376002)(186009)(1800799009)(451199024)(6506007)(6486002)(6666004)(6512007)(83380400001)(26005)(1076003)(478600001)(6636002)(316002)(41300700001)(4326008)(66556008)(66476007)(66946007)(8936002)(5660300002)(2906002)(6862004)(8676002)(33656002)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KvAYB2P3XwtrqcFvJmQn1NeLe+TpdTJ0X+TLDaTIMyQ53TWIaA/6F1Sh3ztK?=
 =?us-ascii?Q?20DNd/YdHcMHO4RDrR7lQoPQ2cU8WF1RR/N3RePbDqlW8h5JIzJKnFM5gYbH?=
 =?us-ascii?Q?ozPPjtzw2ZdVYn2FFj6LSCn/w72A3/xIFcbVLInTWT+CWj8M6D8FmsSIKrfn?=
 =?us-ascii?Q?vqw2G9J9CZkeq48MUc04fXhlPRspqeyXISYArmfeAzI6rH5SuPovwgA047Lr?=
 =?us-ascii?Q?B9velQpjRtxuEcAMumMApwCQX7Oy7s0NskxVq2eYtv8IUF162JiwRFiTHDWV?=
 =?us-ascii?Q?ldDvsSk/QOLK77SNUHQd4XVDiS0u+bB+c3nUPDcCqOnzHQthC53KsjnEhJAZ?=
 =?us-ascii?Q?f4jQyv8e1YhaPVSBxOtnJWJQMHjPef3KoUPe+f1Ift4Vhz0dOKbfeAXHTmN7?=
 =?us-ascii?Q?fhrtXxeogJMHxJk3rnzZbr2jkNDw16snP6w4/SzT0idOh0CvTNUWY4ZLjaBf?=
 =?us-ascii?Q?nMjX0FOAvNfwRwVyd8fhlRfRdSoGjoQkAGA27PvKMQ625WOD5wbErAMuuBc3?=
 =?us-ascii?Q?6Z0pZn2D2KKewNZpdRXLJsRVkw0HHelTGw07Z0VyIaoMW5oWvbr/O+Zf8Bro?=
 =?us-ascii?Q?yR2RtWqF0RccxrW3EXRS48Kcsi7w2XYkKqlb8eBTuwPdIYSYWyM6ucAQJal/?=
 =?us-ascii?Q?/i0sY3Utbg/1STdWtiiTfokv42w+ABVA8BgpyNhyEkvh9QT+rN9fZCTyCTAy?=
 =?us-ascii?Q?wciegAeZDNigOCh18XNTC2gCeExrbHXjldRonoTfV5ptC875g5C/FNXEybi/?=
 =?us-ascii?Q?Olo4XpnPaaJKZ3REvorKiDnW6cFtqGr8RDR1d3lCmTX7O1gdE7xa8d+//RIE?=
 =?us-ascii?Q?CEudKGDbuSgaLHqzKRMAUlST2AqqYu25pf9DR2omr+HKLixAgjhaWzrwppb5?=
 =?us-ascii?Q?hv25lpCraoR6rX4ngvePSJYhh3UJmu+qHOiQaRTHB94wgJKF/ghEjgslKQ13?=
 =?us-ascii?Q?y67hMVvCJgr3R5TbP1lbt47Aj+bswsoW+taNxaadR22OJnWYU/c6+GN/FYb1?=
 =?us-ascii?Q?KNLLmh484KW3083xSarA+IoIIzZ5ChmbX1CVaRsYGaoOdYIKcaUtv0TaNRd5?=
 =?us-ascii?Q?q8FAmWYJ3QLYWC08h/25VR3E4ZcmIkZHfPapb2YfLbNUcYY839LW3Sp3Iuby?=
 =?us-ascii?Q?oElQhbCDPxtzLGuHdoDOgsVicfPzSUClRSZPvXSxksRcPUx9Dx0JDJkbSj2U?=
 =?us-ascii?Q?OyvsI0OsF3HqGLW2Z1IbiNQjIVJifTtTI3+zjPsKzLxJLrpF7Oh5+nhRyKwj?=
 =?us-ascii?Q?TJYyJEHFFNIaUmv9/oSEW9cAqylXZ8yfmYoocSlSgvkES6APNFjVWZN+RBeD?=
 =?us-ascii?Q?0U2mAoBpxiio9b7HEmgFWyzk5Gp+p9gmiisUrePjL34miTEDkKQ6Jprk/sXB?=
 =?us-ascii?Q?93KUCcw7EMFpFuWErSin7NCSL/MQ/y+XbVy7cMDSRgT6Qwxl8qUkR1y2MqP1?=
 =?us-ascii?Q?bJ8M4CvxSziYCVnwQGb1+uLUaQHr2rlu2R+bVtCy027d8l/hsxEgeraAGaJ4?=
 =?us-ascii?Q?mXfnTm1xmZ0Mk32JWlCDonhwva4MN7jmGfLs/kpoJ6xiNHZ48BmBfT8T3cW0?=
 =?us-ascii?Q?VuTF7ScjAbqrimHDz2t29swkm6JZ1eL0WBhylQ/IUFeismWyZcPCSgSmVCWp?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c84abb6-0ba4-458f-57b8-08dba8ea7e16
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 23:48:49.5767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2yG8LHhtsxeTBKvD4dVK/EL6fx9nogmbhK4qiyFkH0yzKd2semj6xRg7tqg15Nov/W7vrJ8GBTRwnA2XNEyCi8of/cBjfOaiYm4D5aQFO1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7888
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add support for new DG2-G12
 revid 0x1
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

On Tue, Aug 29, 2023 at 07:29:45PM +0530, Swati Sharma wrote:
> The bspec has been updated with a new revision 0x1 that
> translates to A1 GT stepping and C0 display stepping.
> 
> Bspec: 44477
> 
> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_step.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index c02a6f156a00..ee4e5a2c0220 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -124,6 +124,7 @@ static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
>  
>  static const struct intel_step_info dg2_g12_revid_step_tbl[] = {
>  	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_C0 },
> +	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_C0 },
>  };
>  
>  static const struct intel_step_info adls_rpls_revids[] = {
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
