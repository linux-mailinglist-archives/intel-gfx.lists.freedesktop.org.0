Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CFB7C7588
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 20:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7F4A10E51E;
	Thu, 12 Oct 2023 18:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C5410E51E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 18:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697133603; x=1728669603;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=luBVHB9h+TLIs7hgoy5ypFLVGPz81Don/AYPS912Q0w=;
 b=D788ctsNVpoFxMoMF+d4nkNBNlSUavch/jx0CO0/heD1ixslxlYQGqs4
 SdFiYcF1Cfgwhk599QAX/w6P2lBzbVbovW3r9F/7ME9dslfztVBGe4FPa
 LJCWT8AZVt036lLsYhqDJUlC4bLIc8+swPr6wB1x6vboqWxiSaS6jH4+L
 HRUSc6nxCeExaxT4IVjJ0ZlPm7KZX7U0QlX7EpYTGO41gVCA+pvT1ZpYB
 MzT7OboNcd2gbO+i9Pr510oo9tpQ0mJtjbN+P/v9/cLf3mbPOw9EIfhx7
 YOXNYg9wnE360rJc3e8n4mPfLn+1kZ7vIyP3It+1xCiDTCX+u7iOxBHDS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="383857223"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="383857223"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 11:00:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754390365"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="754390365"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 11:00:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 11:00:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 11:00:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 11:00:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XNaX2/5z0tgGG8hSyP0wAARq7S6moVg2jC+eWyzW0c9IB6+x42gnOB/HB3gayGzgCdWEmjvzZv/UDiNSsFYtmHzY8iiM2Iz6hmztWMPCzFXHhgWGEJK4Z6rF2VpRJp+2wJLWweHCD4YRDsr3UuUt+LE2Zr2b4PEmqoi3VdWVgOVq+oKoWosF54x2QfERTRU4iY7hQnw/iGtFvv1QIM5M9xkUebAy1vR4SUtITXGf/Hg6H13PNb1XrlIlpTMFrE6a79NXZI9TBVoisXerESBG0QTDniWOqMPey0sK+TKOYN62jL6zxX1x6EvWVgB8+wTNDz27MOjrGw75iTS6j+cOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AiNjR2pNjxHtBqm5nr1GzdHuVyp9q2O3mzTDew9FV5A=;
 b=aY9wrvhOhI4+TVCcb+kLA1pq429DMLOFD04PmLCL/OhqoM+XqRXHJQ+8MUo3EOK96yWrKqNaqjMJn9BLGJnOiZ9ObcnLjv0Vh4IFfCiKPLY/MH7Gkk3hj0sqvdUfrJZGV01sL1l7VDMrajMzNc70bc+ZA0h59ioyFqryhBGcWFmzY5FcsYGB/HhGhXlNFHjeHvrKmNJ9lc7808KN5BZJg5kcUv2UwmkJg7zDJHuZ37e9CLR4F9nlY7Zpv+mrFTAxUrstg+UPDNXxZl7FKmeiGFfoBHy7wJ+3BJ8Zg6LHGOsCN7+si1fr8x2AFmlYtquOKKp0gyOU5IfivzFVtf9kqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.37; Thu, 12 Oct 2023 17:59:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 17:59:59 +0000
Date: Thu, 12 Oct 2023 10:59:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20231012175956.GL21382@mdroper-desk1.amr.corp.intel.com>
References: <20231011080039.2781048-1-shekhar.chauhan@intel.com>
 <169708117487.25005.7829695929771614176@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169708117487.25005.7829695929771614176@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB7484:EE_
X-MS-Office365-Filtering-Correlation-Id: 78c00f63-c976-4db5-789f-08dbcb4d0ce9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lzo8xERs7lmAOSmSZjeKD4bD2LnLAxrmO5/K8XTrl6oTwAFLkDnb65MD1Mxhgvv5RBFbR8keeUsfyjwD4w96AMS9DNhJH3rkCTcjz6ok/CHwGVmWYDmHnnf4l1t1ca8kmX1N5x67lsmICv8+S/Ti98xNYhmiyIFvV5tm9e9WdrWjpldeVP47GXUyhufO20hgCPg8qQhhF8QNaL/ZIsJCIPzFSzLp3vYDtzaWt1nmEIJyi9BBpAZApLlybBgdWe8nSOVy3kwzNAQTr2+FtScT+gGFAeriBH7MX88TgkjFENHlupTEK2VG/8VytoJracctM7/7aOfwtP5G+OIPFvvf+PX79ZsrMFNrJXiIQPnyfeqpSGCwlp2Mx0rgsZMiUCpnGFud7jwCw5wBRc1r0a/8yG2cuPyqPHGmpMBY7sZ2Z3hnAkG1/SI3v34a1tc8VVPrWAFrenv171u8hn08DrjDcAj9J8TegzwKlv3XupAF0gATi+ePxyN4vbtPoEjC6c7Zw57UA9/hmyzDbJTp2oReQRYlA5lZPGrnoJlBNk/7POSauKvDAhpeHfahIDWxjvB9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(396003)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(6506007)(66946007)(26005)(8936002)(82960400001)(4326008)(83380400001)(6486002)(38100700002)(6916009)(66476007)(66556008)(2906002)(1076003)(5660300002)(6666004)(41300700001)(966005)(316002)(6512007)(107886003)(478600001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0cp78xPEUUKsnU1Z9QJKU1W+9G/eLOts5LSY8h4idQp99+DjUhFtTWiuoiox?=
 =?us-ascii?Q?l5VLNKp2zGH0OHC8ohpxGL347mgsVpGc4hYqJyVLgRJayZ+gTndjErPuHbvU?=
 =?us-ascii?Q?KDos94G7YIJe35P/WbBDq5ba09p10lUBH4yhsKIi3m7+Wbs9xAIfTWY5kB29?=
 =?us-ascii?Q?3YqHZJ1GCpYkKLYEUs3ZopuhIf4nmRnl9sMNNHLBoMV8lfrBl55CyvHSXIIQ?=
 =?us-ascii?Q?vFyDRsn2ccbjEzrPzt6+x07O5mj5CRjtVMuxDFes3rAJI0YPH8jGdBjEY3N8?=
 =?us-ascii?Q?qJ/pFxtP/Ef+gYuRxefXfBKjjKGCj5T/EzjbS4c51+c514GjmfMIdDc9GZsf?=
 =?us-ascii?Q?VkonSblfhaDTy6lRICAE8KbfCx0KYj3hnSqa0e8bXTaVB/YxTteLJqmstSEV?=
 =?us-ascii?Q?922+SQZ+9XkAZJTO12gg2NjmDR8Sgbw2K1kEtD3FEvtiN9wIVD1V6sR5YNIM?=
 =?us-ascii?Q?0uVzk/Nqiftuezv/oWOa7g7e21OKnMQbGrHqNCTILnwdKGV46FowpvUIVkXV?=
 =?us-ascii?Q?AAEKJTAP+ZjI9CDSQ8T+bdeS8Cks0zeum5G77gDPgatn1ohkI8WofcQCdIp2?=
 =?us-ascii?Q?RH9slt1ePbmsDkS3gCcVgfuotlC6Mg8dslu/9MLB/yIUKuwZVCZWdQ1X/Dkj?=
 =?us-ascii?Q?qHaNEmp6rjxEWZ8NM5BpRTkUGI/a670BCGCjfp7oIIuNGiJ/hbR1v4S39xko?=
 =?us-ascii?Q?IRcNOADB/ciQXK1JEr5j0rp2mlHS+SN8llmliG3Uk+M5EHNwFGuMyka/kKgl?=
 =?us-ascii?Q?mQfNsUhnXfyUniB73YRsbxe17s20hUD7K3V6xnaMom4SnDxPfgSzzSzpOMxU?=
 =?us-ascii?Q?0mabUfIqQBVtgFv7I4wpAdRwgdnodUZpuUMZV/aI4eRGm/Hd1XFnI0bJWo12?=
 =?us-ascii?Q?61VL1P0PzzrShahXhfTOxQmOrzjhcrJ5FnoVHu3QqfbM0Wdq26qru1f8lZs+?=
 =?us-ascii?Q?nxsG5G2zEYY2Zs17oORRcBagfx0QY2qE+Yam/0wwxzAVRGflYVhu00zYxS9f?=
 =?us-ascii?Q?/NUJaexDXUw07q2+4wY6BTG3AbpuOx7Oz7EicgvkXYnEGDViKzKXmLBTrOz4?=
 =?us-ascii?Q?nV8KfdIECbL5Y8dpcBvMHYGAKnv/xY/JA5bux8RBEVMMAL9T08kd+eV3+zeI?=
 =?us-ascii?Q?h/xkYpuUqMVDsxKqQiPYMvgCY42jJyRDByei3SFhVnam+YG/a/u7SRrOn9GR?=
 =?us-ascii?Q?RhhI6cOPw3iNtqtBuOLLG+tFgqt0CQtjw1YimaN9aTHzYpHGTIrXnddjFaNz?=
 =?us-ascii?Q?kf9PVbifwYqIYuTAukfIlCmfMcYu6y/MYBCcMKS2Krf9fJhrwSNnFoWvI4jM?=
 =?us-ascii?Q?1SdjpDPQ9cFuzPgbBqjerpErzpQ2m7NOeB4iTB2dZJs1/mcTPe5MXk7WHR2Q?=
 =?us-ascii?Q?DGLSf4g5/gfpNygjL936LCbpvhVUdjHu3Fsy8i2TxL8jcxvw+Yt+W/UadeZx?=
 =?us-ascii?Q?fXPsEguvPTYYomb3nBhgAdOt5WeV4c99h5W+RFJR1u1fIpDZMMchbTeJMxfT?=
 =?us-ascii?Q?XGb+z93aZbhWqqLoIEFirW4TCMZefyuWAgVAhMMOX8tBo1wWJBDwIIONEcls?=
 =?us-ascii?Q?0ebd6+Da0fAP8Q0f9BuL4VHMq/nHk9CFyceU/VkQEhcESLVsd2YIvzDk41A7?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c00f63-c976-4db5-789f-08dbcb4d0ce9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 17:59:59.3729 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Hx1ifz5g368JaATJFY8goEF6xlhohlPskEYXkgZkyFOZ+IDGE8mtvHhmInW7uGMC0q+e1MTP9rXttM9va+OtmshDj/8iVNto9mtFgWTlTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7484
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Add_new_DG2_PCI_IDs_=28rev2=29?=
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

On Thu, Oct 12, 2023 at 03:26:14AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add new DG2 PCI IDs (rev2)
> URL   : https://patchwork.freedesktop.org/series/124937/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13741 -> Patchwork_124937v2
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/index.html
> 
> Participating hosts (39 -> 39)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (1): fi-snb-2520m 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_124937v2 that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - fi-bsw-n3050:       [FAIL][1] ([i915#8293]) -> [PASS][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13741/fi-bsw-n3050/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/fi-bsw-n3050/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271]) +18 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - fi-kbl-soraka:      [PASS][4] -> [DMESG-FAIL][5] ([i915#5334] / [i915#7872])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13741/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-bsw-n3050:       NOTRUN -> [FAIL][6] ([IGT#3])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/fi-bsw-n3050/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][7] ([fdo#109271]) +29 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - fi-kbl-guc:         [FAIL][8] ([IGT#3]) -> [PASS][9]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13741/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13741 -> Patchwork_124937v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13741: 46d442e3684a03ccb1bc9e9822acdd33f264d521 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7532: bf24b157b1049afc086fe65a60b22bd6bb3e18b7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_124937v2: 46d442e3684a03ccb1bc9e9822acdd33f264d521 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 8cf4ec91909b drm/i915: Add new DG2 PCI IDs
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124937v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
