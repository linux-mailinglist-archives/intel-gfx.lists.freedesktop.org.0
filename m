Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8492F5A6D82
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 21:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D0B10E098;
	Tue, 30 Aug 2022 19:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0A710E0B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 19:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661888456; x=1693424456;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=7z+2FcpSIBzisluUj3OoX9LcDA0V0hU6Q11AHP83kPs=;
 b=WUWBfJPXosQOh/gwKW1bVyfUZ8mxfRCd1+H335pBzeLdKPL/UiQqrKO7
 qZ2SOakqedheB0Zy+DUFbopjpSOaldl8xc5CjqMvl91VVo/qmAxECfvRa
 1wsGLJhG7E2lLJwW0JDDT14oYeJjt1eXyoNHS/qZWTW7bRmzhTbtFmVOe
 LniBw8ZWMwbAvJPvhbW0VK5qYLM8bIlsHx70FV5hdn1UOCh66oHpevXIK
 d3QRPfdEZ7qZOGaSXblRTAU3XeOqXCk3qOGlHFa+HcnGSVbz2xNuEZztW
 sbzm23BWmiyZszU1E9OVn7kVQEKrCp0Yh1YYm6yEnUzfTtU9MiFlPstGN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="294026112"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="294026112"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 12:40:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="754166851"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 30 Aug 2022 12:40:37 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 12:40:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 12:40:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 30 Aug 2022 12:40:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 30 Aug 2022 12:40:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WxlGiQnQKJ5v4aWPhm2I/CjRRyYM+ABnD2sYCf++1jW9EJLqhgypxqNvGlTXlsiIcoxJsr+zVueyLi+WCfdJq6jsOikXuVgeCv49cvJyHyhcQtSF9LpA5ACv2cmIH0msjCDqnRPf+v84RCRAM2w77tjJdfgr1hMzyQesdmnLe97BS2RLmGdoatELgFMQsJAIZ2SrKrOjZm8f8iJwCInuAXfJgQrG2HY0MNJoFO5t0y/8sxIp6z66CGGPr5lzgJatIIZI4SLjrhwpeP9k8rYwcFh1axM6+ZG991b+b5kZe2ZXI61hK9t9yprp0lzqcH5V9k19piyulQZ2RVY9q+zEyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KXNcHMogCZGpVr9TMKtGDmjZupVhof0j7fcDwK2gJrI=;
 b=PFWrb9klzPBEvr114+lk5F5F/qqURuR/S+3bLyxr5Q1ikjQGeyPA4V7O9wchmfbuMg4QeXR6njbgiP9XwtY54y7jg6U1ovQt6HW1hAqj0X0MXuBuFb771C+w2o0afMmv95uNZyqXdAV+y5t3nmWMRnMeQDXQVFRH2N2u83b5oU26KcxX2OX5k461K89x3FgGp1mVL6viRyX8u+6ZlsilIVxZ7lohNmstyhPhxeOrqZQNaE2Yh/J1Z63HEsQzz4J3WYeQFdyQjZ6CN0xTME51YgoRB+RAS8DhO958pVqZ1pMHwPAlyrbvUKL80LeIkdWGrysBGtdASmUPmMd6XGGImQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CO6PR11MB5652.namprd11.prod.outlook.com (2603:10b6:5:35e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Tue, 30 Aug
 2022 19:40:34 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5566.021; Tue, 30 Aug
 2022 19:40:34 +0000
Date: Tue, 30 Aug 2022 12:40:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Yw5nsBjmFKWcTKns@mdroper-desk1.amr.corp.intel.com>
References: <20220826210233.406482-1-matthew.d.roper@intel.com>
 <166188169421.27289.7500125780775819022@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166188169421.27289.7500125780775819022@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0082.namprd05.prod.outlook.com
 (2603:10b6:a03:332::27) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0d255919-23ae-47d5-b68a-08da8abf8180
X-MS-TrafficTypeDiagnostic: CO6PR11MB5652:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JiyMvjjL11rkrRlRSIUY+TI4xfVqKbBa3uLhmUZAuleDmrT7qnjcISUd0Ifp1X0AhwzpmVrNiXCitf2qr57KmsxSxzERYEEcyqYWz2tfjQbOgmH5qL6jyZOKR5arjVq9TEIjd14dEsEUdFtzBW+vp1Ekh9j+ISFakDBMUrLWcrBZBI0TwsGrHkAD7jzNMsz8HLyqTpPzyXTFvCgP+YsbsPhMjsP7KR8MrE4ntUqUYxHIlhA4RFjPf0MwH7v+wAE+0wYAdxKTRpiJan8rrzwz2n1eYqXIdSHyDhOuT8vvcujh7Y0P5WVZ6paEVSs1w5ZRYXUWor5p5mXZhDM4wx9UxQkyGzysDGeZErjL+alB1vdeAJhMemST0h4XjhyixsB9Iu2oRHPAAuEsZ7hfFf+rOALNbJF39PLFwYvPwwkjHnoT2c+9M2yJM91ZBa+l1hHn8EBc6NHjl+FONqgrxFfRVX0YUgun9G0YFEs1PLbc4+cf/4qB0xXcV4T0F3CQk12dw+2FLi7lMAAaz1fqo1uyf+OuFDOuNQab2GXCuRRQv5j5SrWXT2c9qqwK0c0nqodDCjQbhez0lPNsdU0I9YVeCnNc0OBZ4ZJUXGqlv2geG5Oj4O482N2FXH2lLzBr8Pw3SNvFFkY/5ZmPtCZLeW5MMGAWWcnJCGGgNF6XvU2pC06MPv1L7o5GwNq2iKlTJ+u77nyHSYKe/GgpROweGvk0kkM96agU3+j9eO2BMPSHFkYbcs+p4lgCzCm/KhXCM1LyCyw7EJRfJKtdRFPiLpSowQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(396003)(366004)(346002)(6506007)(26005)(6512007)(41300700001)(966005)(6486002)(478600001)(83380400001)(186003)(8936002)(30864003)(2906002)(5660300002)(6916009)(316002)(66476007)(66946007)(66556008)(82960400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sD27xDufAbl54KEDWf9IxTMkb3+CiSDoJUb2ot4o6aO6yL6YyhSnEBEWJ+UP?=
 =?us-ascii?Q?rSfdL203vO2bNOWmgmNV5j9Kzcy5qxIwCTm6JVAdF82Bt0DkVoXQ0JsqhqHy?=
 =?us-ascii?Q?3sFYVDNiHQISFkvFktvk+hdxqygJVYLxY6p7t4RfLZlOdSRTuXL4pWmchVwi?=
 =?us-ascii?Q?Cbm/xdY5FWpRId7wWypwgZMoNLB1Zzp4691/scV1W8JmnPVLq30M26Wic6ar?=
 =?us-ascii?Q?3qzHKszoov0rcnE6wrYH8ef1/RXvzOQbGwCGCJaktqsrOMZmbVUSeD1zpDIB?=
 =?us-ascii?Q?J1XT6F0/9dAf5NuH7yHlNM6VcCrN/lsfiDw9dIDBHIsigIPNC6XffMU/rbY6?=
 =?us-ascii?Q?wuXcKK0QceeNkPz0W+Num2M0w95XPe1u5e4V1kmN+Msgu5a/NCng8vXQMauq?=
 =?us-ascii?Q?HiJXjD/Dx1fNKeWfVugYIVjjMkvwe1PxxM6R7uamB4fFfD8NZTxHsID2EXPg?=
 =?us-ascii?Q?LY/EO1h34FLEUntY1M0QQhzHpo0J+vu1qEIqbCILQWdh48nz91zpCR75t9YY?=
 =?us-ascii?Q?j3j5IuZim3HO75SoMCw8g+dDtdo9HAqBAq0zl0udRhdMdMjRyhkY6eDy5BDN?=
 =?us-ascii?Q?qYmTnlOOIJoMJy0fNm5XL4UKQAv1s1b28GDIVa7z5Ijj5o9rixQcB4hLb3oX?=
 =?us-ascii?Q?RM5V4iDZfZOq/533NKkBIHVeZtZIJCnQ8X826hmDW9jkJG+Sx29Wz5N9TnRP?=
 =?us-ascii?Q?1BfJ0VBMPaD2Um2WFvYqxouoAkTtst2Fv2og8lVB5PRPxkQyRIpQ2Q0tWG9j?=
 =?us-ascii?Q?iEjGhX4KzAtbkt0lz4FfglUadXzt8DtTySAOqS1iK66DFq+Mu/MutUkRXE7i?=
 =?us-ascii?Q?mQfCOmgBPIFceK3HagttOrB3CPgo/LvAPPHqxLTMIj1mJgnl34JkWyX6jsNB?=
 =?us-ascii?Q?WeHI5mC4QkK/lLABhSXE13KNUAyyDQpXzD4mL/k3Hx1DfxgixE3VYn+FfPUc?=
 =?us-ascii?Q?c8kaT9I8LdQ4UKOSGgJMEMj8e8QFguL1eUyTBsF1GlRk1M6Ivj6VmqyLwUny?=
 =?us-ascii?Q?dU8ywJFFNr1MIbQgVFx7Ghr3Nd8wmZYfqK7FixoN0NykwNN3NlDZqw6eTkAa?=
 =?us-ascii?Q?qxyPd9GLSwa86b5Y9f2C3XuQPlC2M68xlKoKjOLKfSJM0Fm18agArkj/a+QN?=
 =?us-ascii?Q?U2bMpDlrqzWarrZVWKRBQ8fCYSU3/1GX1TyQZOJx07Ui/u8Qe4QnqFb7Qqg0?=
 =?us-ascii?Q?k4ZMPJu0DbwLGIRpw+Rtn/UG0IQKDpLxV4//LtwVvJfKLjsUfjcTuOoSHPNN?=
 =?us-ascii?Q?LvTYFoHfqAb8RpMMC+4EfDoAfbiPreZRHZFbl6FMFGr/ii17V8ZZvF7dbknt?=
 =?us-ascii?Q?cmbPsbW/oYzvg6FM2pt9HV1IoxJIdyfmL++E9iUvRzW6vnbZL/QyoueucpZx?=
 =?us-ascii?Q?jQjppKxnu3DhuKajhPpfBcD1TvTcFJEmppO0WwasfYO8uxnC6j8mOhkfiRCl?=
 =?us-ascii?Q?P7jOoqS7ZvNpXaL0AtVGxNIF0bg58Zu8usB5HyQGhpRRehR6VgiTmtO4mG8Z?=
 =?us-ascii?Q?xEJ3W35G8OwlB7vGqnqc+wRnGjPAYSlAaAB7T5/Ay9IYWHr0mI5YXJs98aME?=
 =?us-ascii?Q?Bn9PJPkhF636s7PYHydOvbwu/6MPWseYQKCtX7jJq3a5v7TnsUu8fHKRu4jx?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d255919-23ae-47d5-b68a-08da8abf8180
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 19:40:34.3522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wcNPuRMZf6PHH3sS33KBPMAhsSnibfDDGRr4zd7gxjbU33JRrwr5zltsbxKEZOzem5V9zy2CB1mzGfyy2FnWdLX9xHZms23VLoI74rhRiMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5652
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/dg2=3A_Add_preemption_changes_for_Wa=5F14015141?=
 =?utf-8?q?709=22?=
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

On Tue, Aug 30, 2022 at 05:48:14PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Revert "drm/i915/dg2: Add preemption changes for Wa_14015141709"
> URL   : https://patchwork.freedesktop.org/series/107818/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12035_full -> Patchwork_107818v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks MattA for the review.


Matt

> 
>   
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-rkl 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107818v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-snb:          [PASS][3] -> [DMESG-WARN][4] ([i915#5090]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb6/igt@gem_eio@in-flight-suspend.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-snb4/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@gem_lmem_swapping@heavy-multi.html
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][15] ([i915#4991])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#454])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][18] -> [INCOMPLETE][19] ([i915#3921])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271]) +219 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_ccs@pipe-b-bad-pixel-format-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886]) +13 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_color_chamelium@gamma:
>     - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +13 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@kms_color_chamelium@gamma.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2122])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#79])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][29] ([i915#180]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#2672]) +8 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#3555])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-iclb:         [PASS][32] -> [SKIP][33] ([i915#5314])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb5/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][34] ([i915#265])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][35] ([fdo#108145] / [i915#265])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][36] ([i915#265])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][37] ([fdo#108145] / [i915#265]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [PASS][38] -> [SKIP][39] ([i915#5235]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +99 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#658]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#658])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@kms_writeback@writeback-fb-id.html
>     - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2437])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2994]) +2 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@sysfs_clients@sema-25.html
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][50] ([i915#2842]) -> [PASS][51]
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-apl:          [FAIL][52] ([i915#2842]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][54] ([i915#5566] / [i915#716]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][56] ([i915#454]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][58] ([i915#180]) -> [PASS][59] +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [FAIL][60] ([i915#4767]) -> [PASS][61]
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][62] ([i915#2122]) -> [PASS][63]
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +4 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][66] ([fdo#109441]) -> [PASS][67] +3 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][68] ([i915#4525]) -> [FAIL][69] ([i915#6117])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb5/igt@gem_exec_balancer@parallel-ordering.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][70] ([i915#658]) -> [SKIP][71] ([i915#588])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][72] ([i915#2920]) -> [SKIP][73] ([i915#658])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][74] ([i915#658]) -> [SKIP][75] ([i915#2920])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][76] ([fdo#111068] / [i915#658]) -> [SKIP][77] ([i915#2920])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-iclb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][78], [FAIL][79], [FAIL][80], [FAIL][81], [FAIL][82], [FAIL][83]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl8/igt@runner@aborted.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl7/igt@runner@aborted.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@runner@aborted.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl1/igt@runner@aborted.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl2/igt@runner@aborted.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-apl6/igt@runner@aborted.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl1/igt@runner@aborted.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl2/igt@runner@aborted.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-apl3/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl7/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl6/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12035/shard-kbl1/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl4/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl7/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl1/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/shard-kbl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5314]: https://gitlab.freedesktop.org/drm/intel/issues/5314
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12035 -> Patchwork_107818v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12035: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107818v1: 94f8134b5320a43800ca3ca50d1c387d66f75c6a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107818v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
