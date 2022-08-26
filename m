Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A705A2BCA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 17:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3A410E996;
	Fri, 26 Aug 2022 15:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41EC10E996
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 15:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661529475; x=1693065475;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=h7f24iVB52z5lg4cXQx19YNFzF/ZjHpUNOpWv9yBaJU=;
 b=BdwD/nPDwO+lDaG6ndOluD3mHoE8tmvrggVIpc9wTywZn6Ffv4pncScs
 YQeT8wG60lIzECRBeaGN+wgyx4vHWP5r71X2rzDPrIEprgsTKfCPGw2XR
 O6oEpF8fQYtL+s8zVW58k6upSRyn67J8bwgjPMcYKMhRuO9EWnfjwlc8E
 WusJJt0DPzVBeeK+q3M8IiY/TzEyO14LCfCPBPaV79jlzaKClrVQUvzFb
 /6BknJrfUAw9PHMsAsjmOcGwvxojqQ7a+anS1cg7TBhW2jME45Ad85hSY
 CUoqWLrtuJKRvmGEu39KNiJ1oBcfTr1JqTIGRGIPrPufYHX8KbBzHrTrd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="295314473"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="295314473"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 08:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="610604417"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 26 Aug 2022 08:57:54 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 08:57:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 08:57:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 26 Aug 2022 08:57:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 26 Aug 2022 08:57:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ifx1xRvXUY1YRZoxFmkSyn61TH7LV9+6JnURwRAtAIiurmV0dVuxJKy43dNF8IQppTgVRzAuV1hCNylsyNEMFU4iJ/Mw3IElYj5YT5DPDS2CXg5fKYLxJBNhelw4Wvys7IhEzb5vwyzb/pKN7GtHoiLxnw//TPpc6gdPq7k4WKcF3v30OPo1zuAssX2yUuGAjo0JGJAnZ4awpaEMV8DiaW+9VBt7dqpQzwWtntFtw8MsamoSf3+fGfYYttYdvrmR4yQu3oqfZNtiqBMDgD9RwJDUU3MIlNg+wZTanAD11nzL271a2ilyd7izj5jzEvWRZGNb3Nm60v+WinIQa0tXXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W743ES9WXz33w8AZ5iOTyIu3AZJrFM0tztlXQLPj/qc=;
 b=GdwHWpb6qaBVPSUQJpd6HVCbR6JKcKWuCqePsdW1kegj4pAlZo5z50x1MChKb+BOHGH0T5/5aQvapab7oFx+eYF8KwOVTJ0gV0JxB3YaLWcMhmSS69WXCCOgY/7YLeO5k+inDc7DvGURweUN5x1X8gN/TfBFGmt/sAn+zags1DI6VLwNb09S2KIHmMu6JDPVa9PYInxLo1dUSbQbOgQ44xGH2gnANwqeUeAjXI2DtFVuwu45TIhRc/lpyAPsHkdWb4IaGWtDzPaQPtbiIty17zUtcj3VnOSB3TK5y9/vocGeHponr68H9p3ObLNfo50EmCEjYXTu0QTKMLMYses+cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY4PR11MB1368.namprd11.prod.outlook.com (2603:10b6:903:2e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Fri, 26 Aug
 2022 15:57:50 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5546.025; Fri, 26 Aug
 2022 15:57:50 +0000
Date: Fri, 26 Aug 2022 08:57:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YwjtfJ4m4vgEMM13@mdroper-desk1.amr.corp.intel.com>
References: <20220823202449.83727-1-matthew.d.roper@intel.com>
 <166139550522.24644.18338225418990334282@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166139550522.24644.18338225418990334282@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0070.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::15) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07966ea3-3bf9-4b17-929d-08da877bba69
X-MS-TrafficTypeDiagnostic: CY4PR11MB1368:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GYh5MbpQn3loCW/nOy8LOJvyF2DABOcyIARpJ+XFjEPgf+Nu9TH1si0MEspfYFDqFwDaIeLZne2Qb/ExeEd8/1sm4Raaa18z4+zB+offqcOwBQyxU7mfz4I4l1P4kxTzOULJgF9CsHzaMnQv2PYs0YWuCF9gStF9VeCiHPQjDZTjgDDfXx/yhajjQtTCeNTzOJPCk3tTsD68c2miK8TZrzPsExCBtPxAQKYG5F8Vqe+tb7hVWCACkj6ADm/euWetFUEqVdRY9UIq1Opbl/Uo/LVSjtjMHmOD1f/Hdn/+pLqwQ5d0R1zBOXh87Nj7d2AbFskNENbe62FOin93qxFP4e9VFENwl8blpyHh2EdAHLAshxzD349kBWl+H66gDoQk9ux/dP0Ty7EMnu+quCkdCXEIONh5ELF/pJLhvPoKexdsZWc8koCo8F4oMpHZ7Gm8zTIMk6PaxpH5heL4N73+a3KSJfRpr2QU1JllhuTBaJHFzD0nNxgmXS0ihcZphUjbTE8EhCjbuhixNnYcQ00I/7ctOGlBjbzZNeZb2jbfVonn6+cu8x7I8k3T7QygRo92zeAyi4jnjNEbTkBETWzAoFUmCRtrCgR0LrLsu2MdpEz9PZK15tEVL9ixtTOqNt26kGC3C3APqSwonj9/33exJl559jGerMbtMVry78QUzfdsDvyVz3G+IVh+WKJbf6DZCZ24R5t9f/BDF4Nhs8ZwkatnpJSnVKc4gZtj+3x4IYkMOK8uM5dSNkLgX2ghZRo1EiCC3pAga2VQ734fOJEppg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(376002)(39860400002)(396003)(38100700002)(6486002)(86362001)(478600001)(966005)(41300700001)(6512007)(6506007)(83380400001)(82960400001)(26005)(186003)(66556008)(66946007)(316002)(5660300002)(6916009)(8936002)(2906002)(30864003)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?17Ta2PRSUssiq05yPqWGgoEffQTZ5rDAs4b8GMgxwi3VQxhCtu1cQipibC5K?=
 =?us-ascii?Q?kkq5daXhzY4w4fjHCBPrcOlqdEfjOAauivCrXf/HEZ9hWra80GfCuRgMKrtc?=
 =?us-ascii?Q?tDMNV+apaWL288AuR9suxcjXzPQNTbH9FMcluYmGNMJ1CXKLu4LJ4p4I8TzH?=
 =?us-ascii?Q?yEnX0tWU1x0DMxrczPXCQJa8eTYKMw1zg5yntn3f7Vj0yTCkXQFUfduP5Fnp?=
 =?us-ascii?Q?a6yy69DnloEfP+jK36re3dlqP4AiqaMRDCSorp+olHgPgCEMDne5DMbCWUR6?=
 =?us-ascii?Q?t32RqbcY06BhBxtIxKi5qeUKDNbFOjMqVfCZvvMDYyJ3ycUbK+ZWoYBTkI15?=
 =?us-ascii?Q?NyfVq+sfnLWWYsTv/fVIHQ6S0f1IfDo5QEjfwi+7a0r5UYkA99l3RRGxVfgW?=
 =?us-ascii?Q?wllHK24vbyM3qZxcnJmSyRm8h35ntkaiOk5prFOKALiPnMia+A7Iyd01oTQx?=
 =?us-ascii?Q?0T+jyY4Wu/gtgP/AwyVizbJ4EkQNhpqe8TYgFEkJ0+sDgcpxAFpeRIMMFAIC?=
 =?us-ascii?Q?d77Rjpm3JneYa1LaCR5DhgyYeGZO6FmXuJOT+/4t3kBPd5c3faNn3FotQ4a9?=
 =?us-ascii?Q?tCpowe0qq4lPTinzvZ2w6p3LHTkVdBTQUiVYmvC0x4it1910nhtciDdEGSAF?=
 =?us-ascii?Q?HNFEKnEgdZEjk6AUy2XdcSGANcBKmeN2QAauLK75Vf4O8UCIRkCLqC/g0bth?=
 =?us-ascii?Q?v9OMgWhvdWpriQdTIUxCF058nLUwaO5lMOJ5cMNeqz4UEtXeC9Tyk62GCNhF?=
 =?us-ascii?Q?IVM+dSyuaxcF34uZ4FIf0i9mxz3W0bpwvY6zp/RTEczj8fUyOReAWQuwTbFU?=
 =?us-ascii?Q?8b2sFGoieD+oHNT6ZExeHDsqGV03J5ofBhQiFQA4cVJTlklmh6/en9sE1G0k?=
 =?us-ascii?Q?pZSQWNcKhaAO+fDPK2E0reYJFzAms71Su8GtIfGAmAaOb815Q9vYGlSvmNyk?=
 =?us-ascii?Q?qBgKqMpIpPzmR/AkxDdULcettJB7vrUx/8f+hyIJH99QH32yAkSiH2+0S3m9?=
 =?us-ascii?Q?hiwr83KYJHb/KLIzaG3AhugYa0M2VZn+zmdYc29rBUKUJ6Mm4I+dD/TMQ0Jv?=
 =?us-ascii?Q?Et5Rt2QbYNvFX0xyLjhGX7AS21egoXTF7aZty5M1a3f9LQwPgJzVnpJMKL8R?=
 =?us-ascii?Q?VR3GlOCvrcaraslsJVh5WizecYtDjg9TcUxGOgXchndrYcMvuap30kopB7SZ?=
 =?us-ascii?Q?TuSw0h3TSvGcPzVaPrC9zIR2OoYAGTxb2ODSEyyeTQbxQhnjiaW4au1bZeC3?=
 =?us-ascii?Q?DDPO8Tj0le40zYKn4AIVJCTs2lVEg5lepganub353ea2SoAzAJRllzp4RmVc?=
 =?us-ascii?Q?kF+I05shBQRDTtOxOtxRlER+2p/02/8gGmj/16q+tm2akKDpwsuomuFHGB4u?=
 =?us-ascii?Q?cvka1J2v86ra9k6A7eqRb6lRUBuWcfx/21BaMhgwEtwm6wqHrGXW0hsv5wdI?=
 =?us-ascii?Q?Q5ORBcQBl9ocElGiCXC/zZkiatTMQGQUwaQQlrdMbl5IEuuTEjl5D5lAwYDm?=
 =?us-ascii?Q?nSVp2lZMBrvsew92ZTaeIQARE2cDWV7RE4pw42EE5x/9uWcNKaDHIbwxWJN2?=
 =?us-ascii?Q?Vsgqh5EfWXmLmUPlVKB5uXKBj52WuYOugFVG/ehjGkYti9BY7Md4HM+3kDLs?=
 =?us-ascii?Q?tQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07966ea3-3bf9-4b17-929d-08da877bba69
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2022 15:57:50.6742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aWC5K8pXx6H6nr3Ik5vmwYW6md6NdZccQ41e7VBEyaiKYY5whPccSZVY60NsZCrH1RgV8I4VQRmL/CWf/GN3+i4jB0v5S7++wJNJUO2v/cM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1368
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Incorporate_Wa=5F16014892111_into_DRAW=5FWATERMARK?=
 =?utf-8?q?_tuning?=
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

On Thu, Aug 25, 2022 at 02:45:05AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Incorporate Wa_16014892111 into DRAW_WATERMARK tuning
> URL   : https://patchwork.freedesktop.org/series/107638/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12017_full -> Patchwork_107638v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Bala for the review.


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
>   Here are the changes found in Patchwork_107638v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-glk:          [PASS][1] -> [TIMEOUT][2] ([i915#3063])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-glk3/igt@gem_eio@in-flight-contexts-10ms.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk2/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-kbl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#454])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [PASS][11] -> [INCOMPLETE][12] ([i915#3921])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-snb5/igt@i915_selftest@live@hangcheck.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl1/igt@i915_suspend@fence-restore-untiled.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl8/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +57 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#3886])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@dp-crc-single:
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_chamelium@dp-crc-single.html
> 
>   * igt@kms_chamelium@dp-hpd-enable-disable-mode:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_chamelium@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium@vga-hpd-enable-disable-mode:
>     - shard-glk:          NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk5/igt@kms_chamelium@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][21] ([i915#1319] / [i915#6637])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#2672] / [i915#3555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2672]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][24] ([i915#6598])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +25 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-dp-1.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-kbl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2994])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][29] ([i915#658]) -> [PASS][30]
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb1/igt@feature_discovery@psr2.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-tglb:         [FAIL][31] ([i915#5784]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglb5/igt@gem_eio@reset-stress.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglb7/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][33] ([i915#2846]) -> [PASS][34]
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][35] ([i915#2842]) -> [PASS][36] +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [FAIL][37] ([i915#2842]) -> [PASS][38] +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>     - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][41] ([i915#5566] / [i915#716]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-glk5/igt@gen9_exec_parse@allowed-all.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
>     - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl7/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          [INCOMPLETE][45] ([i915#3614] / [i915#4939] / [i915#6598]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-kbl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-b-wait-idle-hang:
>     - shard-snb:          [SKIP][47] ([fdo#109271]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-snb2/igt@kms_vblank@pipe-b-wait-idle-hang.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-snb6/igt@kms_vblank@pipe-b-wait-idle-hang.html
> 
>   * igt@testdisplay:
>     - {shard-tglu}:       [DMESG-WARN][49] ([i915#4941]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglu-3/igt@testdisplay.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglu-1/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][51] ([i915#3063]) -> [FAIL][52] ([i915#5784])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-iclb:         [INCOMPLETE][53] ([i915#6598]) -> [INCOMPLETE][54] ([i915#1982] / [i915#6598])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][55] ([i915#2920]) -> [SKIP][56] ([i915#658])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12017/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
>   [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12017 -> Patchwork_107638v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12017: d09b6a64bd55b1c8c7baada7537621015f0cfd71 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6634: e01fe99f00692864b709253638c809231d1fb333 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107638v1: d09b6a64bd55b1c8c7baada7537621015f0cfd71 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107638v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
