Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1506AF675
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:13:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367B910E65D;
	Tue,  7 Mar 2023 20:12:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9082610E666
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678219975; x=1709755975;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2/D85Ont1SElHldf9KV74EjF/0bUJ5PQfpb9vA5AxeQ=;
 b=hm1K70eipFhWEDxegUvUW//5nqzUM8bYOG/dNwa1FtAjq/kmGVSfJkol
 Ijw+qtScUMb4nX4tyj4+gLOkGULyxAwt1R131pJivYMhTosZvHDOVWlzj
 hSzCrN+GyduaE2tqNjvJha0gJQpkIdBKxgA1ehDQyUvzhg83Txy6Tjx1G
 0YWBWdKndx7HrHCGBC5GmgnlgXEkpORUNeMT1b9hOO0RGsy837Q61n2x4
 9sjGwyGsFXb2kZBQSPWNsDCa1yHUdrG+ugcrssi5XbC8Hivduf/MiVoBV
 1SoMLWpxh3SyL7OLaABDQYzoPuzl2VYh+pUZRicwZToghFVOFbqXZsKX5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="315620221"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="315620221"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:12:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="709176918"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="709176918"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 07 Mar 2023 12:12:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 12:12:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 12:12:54 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 12:12:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnFpPQXx1HMwYCP/3TPmPNGl2CMhUNpCCJ3s1dL6dwI+LZ/GrYYaArZ8U0Z6aG+j7G6rJjA5DZdP0gPt+p8Row4vpWPJUqoxKv6YfmC6YoYPiWa4Cxf0RqY6IVKqAP56XbaMRmYec5KjsWjt12+EuGF7bL9v3TBRZLss/ll5AZ9+auHFzoWluEiJEOEYYna8hO9etRqDkMwLWXqLP53LsqwELayADfBnjgddYWn8xDUJeoqZEJ1dBJZTy667z1xNbNi0n0E4nafgRUMJSaz0q+VP7JLjxa9dXGGg2hHOngQFG6eyVn9B1vOdMpk8UHyqK6tzaKJpdPwGjGsHxLgHVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sj8GRNt30hVJ2MGMCnV2FlRhtLFq1PfQKPTKnL2VdYg=;
 b=YFN0yLwA8w8TBDdlaVQzp5EXnWy72/Ggj+VG1TA7CtAbdVQwbvrXTk+wrLVHTlRv+i259Eg/lMXrDpxIFutHIoUk3FOdrOPyuxq71mnDlYSc5OEY5VjLkqMBcc6F5Kn5iyQ1XN54BozNAP2Em0eERb9juYXe7tTd5cq0TSW17NFMF9MrAE5VJaRPti8DBJIoyewQ8Sd7qM7nPEX7T0o6+riM424gwhsPYeRYh/PPXq8iP+D2ktnaNan+JuaqZQfZdyNDRgFiRBPsdYkMy/oYgBN+esWKwgHgnoe0xFMY6CWBwWk+s22hdzs0RG5LlxGULIEXgtT02jApYNLj4d2N7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL3PR11MB6337.namprd11.prod.outlook.com (2603:10b6:208:3b1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 20:12:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 20:12:50 +0000
Date: Tue, 7 Mar 2023 12:12:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230307201246.GO1543793@mdroper-desk1.amr.corp.intel.com>
References: <20230307032238.300674-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230307032238.300674-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR03CA0026.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::39) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL3PR11MB6337:EE_
X-MS-Office365-Filtering-Correlation-Id: 28788f0b-f10d-4936-4520-08db1f485303
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O1cl8wc27d5n0GEvml23sFi4Ficf4kRSTfc11jlXhUVBVMUbp7yDlVTPfAwv+3zKmw4KXW+Hu73zUSX7O+dG0PBwhCjaG7xHKgD7d5CFeL+vWLneemBOUHf9nlkJ0HQii7wYlIS6iOSqib3NzYzxELe23T/A3hCnOQEaqks1mq48v3oYA6SWqLxOK9p30yk9Ycqhtl0piWqYMblg6ldsKeyqTJjQVIMVDPBMKUNmCMbTIAAClzHfMYZPw9xvT53V0wCU0xnjdSQRtGIz496fFe3OTjRHHpfpQ6EoTTuJAG8e5rlvv61m7/1jUQaeZXTye/gyKSaxKPq+wY10+rjbGDdf7F7fMG2n5sw1ueNSHVipCzd2oxze0S8kB6Nmsy0drcxpR+MIrHqRCJD9Sm0kKtvTo9Z/7mWAQ7bR0qprlTDQfp24qwADYuqITCMdqGaHhAJAF/r6CUOF8wI4puKvR10H3jaFRUvfcIEcibVCyWtI6zmDT+tGimtaMx6AHGkQbIfvJ0O8enZXxfam20cWPLFp7zbIXwgQjLKifmHF79qj1dta0MkbtNii1h4Bp1cWKopQ2wSqdfOmCxhXRVnqRKQGWr4GVXZi2vRkjo5Ditp/tg6hjjkT5ZNHOxZmd0heuXD49LlELlPNoIrLp1LgZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(396003)(136003)(451199018)(6506007)(1076003)(6486002)(6512007)(6666004)(38100700002)(33656002)(86362001)(82960400001)(83380400001)(186003)(26005)(41300700001)(66556008)(66476007)(8676002)(4326008)(2906002)(6862004)(5660300002)(66946007)(8936002)(478600001)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U70klcsXcOxbURHKTjVzxEMckxV83zeUvF2mJ9V0k67pFTgvH2mUbauEqK8B?=
 =?us-ascii?Q?JVQBYWEfHvaYf1cou3FeldHc7rmUcNJfOLV6geHNUU4oU5qvxC0B+JFvkMoJ?=
 =?us-ascii?Q?HLGYuytFMTVhG9S5x9zjV5SbaT03wmlGpKik6+W49E3PLN1/ngSdxqqi36uY?=
 =?us-ascii?Q?2ui0kcQUEBI5lHrHaYbBrWW6iqEYelMCt7/venK3VkkdHRTkWgemRsCRAW+/?=
 =?us-ascii?Q?zbTkUzmZBmllDTvQxTqaOucNzKJMjQH5qWTRBtk0QUNlAglQhbFklf7w6ZyL?=
 =?us-ascii?Q?yHfatUlmmVZH7kseS15rXhNIEVHbOA+QDcdqiAbP7gC4cZLukSQoo7Bpveaf?=
 =?us-ascii?Q?RNZc6dvQiTfigv0h/eRr9NKDsO2JHTy1lBzvpWxp85dGqX1pGMnls5lf6uJp?=
 =?us-ascii?Q?hrczfJoiGLR2XsP2qe4YsZJDNGDH3/nq4Ms4icpWcLcscijO5x+OWhEt7M4h?=
 =?us-ascii?Q?cKhrH+gQt9H6oJdYVaChUoyBYPi/iRU6l4q0jUUg8coGHw0A6BdilUX+ZpIv?=
 =?us-ascii?Q?TdTZNENYHZeOT+mqdqsy+aYCkK6FIBCXEdb7Q40+ePS1OJ4bQ+RrNcQ1xIBE?=
 =?us-ascii?Q?Yck17bCrjRk/6oJqusTCO+dbDoc02X4ycYe0WgkjmbgUvu3wf3x4o1ivGcoj?=
 =?us-ascii?Q?4YaRc/Ocf9mDnRBw+EPsOtpT6c6udwc5HPHN+nmm5tj2688yk6FvNIBUE48r?=
 =?us-ascii?Q?K24jqqMGz8uyh9TBPXAPHfV/xmPKRe+tUm0KiN9ZC3h62W4SewV+HLsv7EjY?=
 =?us-ascii?Q?z6u41DfR5Ryr4rP0dqX9t8KuBf7HryRfXXIjPcJOCM/vplQYJl6Eb8UsoMnL?=
 =?us-ascii?Q?M/dtKxFnYSAWOPSrKOfDwnDdFX+w1pq3y0fAIqeSWg1msqlUvqBOuyTTkCvb?=
 =?us-ascii?Q?w+oDip4OTc1f2TwYe2nJXZ1EDY/Yj+uMZWP8NAKivtac6h1GltHqdJN9Ic5K?=
 =?us-ascii?Q?z7bVeXXMKeBDq3MBf7hbiIXpFQtpDJx9fCwOc0wpYQq8SWyJR6ghoRWZtmDk?=
 =?us-ascii?Q?dY7eUqITKc76dCaDHeraGYEEvpXyxVjletyNX4aO1oMzBITNeqhFiWCw3ej8?=
 =?us-ascii?Q?LQe/Rr18PRA0IUb2Kk6m+UmLqTUnnvQRPrpByVXRzJfeAt5uQ2bVRjNONpCo?=
 =?us-ascii?Q?H0bz40JVpJ/6l6kKSV6dWVU0U9Kn0BOeDAACqrhus0ERNZO0qXPhyc1v4d/1?=
 =?us-ascii?Q?zyPbRCe9aQiJIdp7bgvGq0P2Ec8cvKJZ6ZwgYTuiizwsJXK6u0qv1foSIDER?=
 =?us-ascii?Q?sMKU5Mvg22kKVvMn9rlyH6pkpSemiXpbYK/6aaQCXFSOyZ2hmo7Riva6uchz?=
 =?us-ascii?Q?/fheM0ml6482kN8jHFoTZZQ+18IUOt0H/qZ/Sn791F2i5Djd4mkvsd3JEbA2?=
 =?us-ascii?Q?+3Ng6RIl8OUuZbLShpXqNE8YfOmNkqX8HfzicCg+KMZwKjQ1ZUyP/K7vXGZQ?=
 =?us-ascii?Q?0Dho63pzy8ZwrDNPAzIKLQJa0vAOYkchM416A/yU3y+I0Q3W6l84fRV4aM6g?=
 =?us-ascii?Q?tJ9ioBWypx9NkTpTZWPdbYPfJDTNKS+Z+55OiQKi5zwR7BUFBcX+AxXEmUc6?=
 =?us-ascii?Q?wl2DHXka8ShdQtsETJMn5msFRcHigQYL8Kbs1goEyQoRSblpx5UNdvhd29XW?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28788f0b-f10d-4936-4520-08db1f485303
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 20:12:49.5730 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LCs9cxrRpMAeZkEQPogLdVKIhRu4aQ4e5gzwq85A+OVaBEilQts7WC5cBirOOt0FUJdAxKembDUasIW5xy7dMcp1TI86qVVbYhXo+OOfS7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6337
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelp: Implement Wa_1606376872
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

On Tue, Mar 07, 2023 at 12:22:38AM -0300, Gustavo Sousa wrote:
> Wa_1606376872 applies to all Xe_LP IPs.

"...except DG1"

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 08d76aa06974..4aecb5a7b631 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -478,6 +478,9 @@
>  #define   HDC_FORCE_NON_COHERENT		(1 << 4)
>  #define   HDC_BARRIER_PERFORMANCE_DISABLE	(1 << 10)
>  
> +#define COMMON_SLICE_CHICKEN4			_MMIO(0x7300)
> +#define   DISABLE_TDC_LOAD_BALANCING_CALC	REG_BIT(6)
> +
>  #define GEN8_HDC_CHICKEN1			_MMIO(0x7304)
>  
>  #define GEN11_COMMON_SLICE_CHICKEN3		_MMIO(0x7304)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 32aa1647721a..8092f289c492 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -743,9 +743,13 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	       FF_MODE2_GS_TIMER_224,
>  	       0, false);
>  
> -	if (!IS_DG1(i915))
> +	if (!IS_DG1(i915)) {
>  		/* Wa_1806527549 */
>  		wa_masked_en(wal, HIZ_CHICKEN, HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
> +
> +		/* Wa_1606376872 */
> +		wa_masked_en(wal, COMMON_SLICE_CHICKEN4, DISABLE_TDC_LOAD_BALANCING_CALC);
> +	}
>  }
>  
>  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
