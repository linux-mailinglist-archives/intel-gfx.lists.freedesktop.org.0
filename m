Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B866078F5D3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 00:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B38E10E6FB;
	Thu, 31 Aug 2023 22:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9561410E6FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 22:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693522173; x=1725058173;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p46XZBAeJnUSbmo+4zOqkO8urssj+Ay0+nEEy0KpmnI=;
 b=nQeh6WpKHiejYn8ZYnR3YyQifOWw6Lbkqe69RbUkYlinAQLiNXmZlNo2
 ebi2mM2M6riMrOZIlWgX+Al4m0p1d946WMbGqkQxm5GmibISJRlOpUSkU
 FArjDn30Ibqcx+eSSG2dnuvOIeCrukaQ71l0UUbJ0bf3CGP0G/7uolHAP
 K3upaimK2mci0tG7EaeCd2B2wMDVd4gtYOtAUYWYd110Sl6d521h9GFTm
 Cf6nz/H2UYC8p7nNrVKGsFx2q7DvgoQCitUzyOssAoE6Q4ytUUpjKhWRJ
 RT+4lx9q79Mvr6lpV06MygB20EySxitAgehkmLOZaLeQ9aibzp3bNXl3E Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="440069150"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="440069150"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 15:49:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="913462589"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; d="scan'208";a="913462589"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 15:49:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 15:49:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 15:49:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 15:49:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OzRclDCiuXO5j37wDgHfBqAHJ6daHu6eQTVBCUDdmaCvH4yELPGdpxm4i3fDdxyeH8fIStLfVCsKGiFltEmDKUxGFv22SejIvWxRDIEpGlXxcCI+5kcCp16kQRFlklWqn64hxO6i3a9rY42c2CtZ7i96eMwU5eoGJ68xpIVUGYJz/5Gf9lldpWKFneKdxl65HMRShFku8A/xtwtOdTQZ44R9Qcx0AfrhPcfIXgWQAGcri2vMAMj35S/uoXWHghK8faf7nmk7K4jJgrfwe6mbuD7zXkSt66+UzteunEmxJqEAAOl2VHHz7okPl6epugeHSwwS6vT+B2YpHLH+NXfeYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3lXVTTGydpYau4R3XTdgjC9KWWb3L3alhxZVdyTpoRY=;
 b=iGerqDuMZq84k7Kj2cVTeWt1+/dggVbq4w0Qj9tcgDq9Wt3f7ghsNAANRMAByArurrzqrqY4vOlOaqbbMrPevSaU/nZfRF4TqAIvLrvAEtZphEdVxpn2Wlw59N2KPmWgpAyKR4NX8pVAKn5l1CEzSV7BIE4YWJoMfaVYWM0OkQUNj+srtWByEXVZcY92HiOuS3+0ARtkSCWae3QNfszGn+87FnIqFo5LlMakqWSqnU7RvevviVBtbyL5bSjve5bFI83S6wuJgTiR8yoOeQHtsIXIL2Bk4BVBCr8fRhKaMQ7z8cdXgqnR0de4cws6uiKyyMQN/YbfsoKUEdeVDQAHPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SA2PR11MB4937.namprd11.prod.outlook.com (2603:10b6:806:118::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Thu, 31 Aug
 2023 22:49:30 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::4b20:e34:71f:139f%4]) with mapi id 15.20.6699.035; Thu, 31 Aug 2023
 22:49:30 +0000
Message-ID: <d1a82d5e-8c86-645d-031c-a0243c94bef4@intel.com>
Date: Thu, 31 Aug 2023 15:49:28 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Javier Pello <devel@otheo.eu>, <intel-gfx@lists.freedesktop.org>
References: <20230825163343.e2fc7eb70db106edc6df3c4c@otheo.eu>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230825163343.e2fc7eb70db106edc6df3c4c@otheo.eu>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0052.namprd11.prod.outlook.com
 (2603:10b6:a03:80::29) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SA2PR11MB4937:EE_
X-MS-Office365-Filtering-Correlation-Id: 25b99378-3459-4ae0-1592-08dbaa74894b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: avNlSHQ9sCVf2eePuUsvFg2NN+yRUTSkWhEgOMvc+9ahCMXst3QPJGSOgOCjaWwt2ES7fA4avfV8x7l+kDTc4To/64nxj1lSXm3Y06cGzWuDspr2Zz16aiCEiQcWUXI4cP7FSEEuj12GQ4omHxPxdDPpCWV1tWVp/NXBoUOV2sivKAUwYIWuNvJgNjqZwfgy8sbSlkkRXVMEe+hrT8RRkbnJDHanKYRvEKOGedyCKe9Uvsja4tb5lL78nBSskr2bnmyWJu68joVPSqePMqYNZ5H8iMxpshMRMtPau/7TvHuppvTZoFmnEWeSyMahmiByIffQYzJHVdCEa4kgPtZ94SwDc/1HmvVADSInpfxYovsp1IBCHIEpqA0dIvmWCtyVTGtOo119ZkQ0W4UozqYCM1Vy+0tqMwSmqsZQLrbPhxgIHcAMIloXOk3JyZHNbbLpHEPVab3QlY7bFPCUZqXYF21BcAA9f8R/qSCAQLtXbOSDtCiISRO9Uvy/xCMjUtjYtBbPsB1hj7mBlhq6cqwqIjPTLT4c36KiYgdKIf6QOU0xg6BvNoW6cOPlm/nUfZ2W0sUWtn6e9sxB+Yv45ko1R2EbdCmlbtCOsNyexmEu3DVdNgmOHPcHjqKKP6lRJGACC519CWCv+DE4O1mWbDXw4J40BvGq5TTNs5zxn/JbF0g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(136003)(39860400002)(366004)(186009)(1800799009)(451199024)(8936002)(478600001)(53546011)(31686004)(66946007)(66556008)(6506007)(6486002)(66476007)(966005)(54906003)(316002)(38100700002)(41300700001)(82960400001)(6512007)(26005)(83380400001)(5660300002)(107886003)(36756003)(2616005)(2906002)(31696002)(86362001)(8676002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0VHOWhUNlN0SkFlZS9iWkhoSHhuZUxrK0F5ek9OMmUxZFhrTEhUVWIrdlJp?=
 =?utf-8?B?QUlvRVNWc3cybXNRLzZadWdkNjVJdlpzanB6WEU3RU4xMlVvU0pRY1lNTWRr?=
 =?utf-8?B?MU1HRnQ1SXpyYzRZc2IxNUR2SVVLZDgvNERSc0NrQ2NrMGpkVXEvQlAzMHNS?=
 =?utf-8?B?Vlk3YnpmdGFoUDRtLzNVWmRTamZSWDZremw2UWU1T21ZaXA5OWw0akRFU21j?=
 =?utf-8?B?c1dJNWc5emZBVm13Y1VsNUhhWW1NZmhxQUFDWVAza1VHOHd5dWxzL2QyWFl3?=
 =?utf-8?B?K3UyNVpPUEIzT0hMMHgxcjhpRmZGSW0wYmJvQkExbCt6cHBjamJqb0lMbVU2?=
 =?utf-8?B?SmNnSW8wMjFpekN0a0xhSjJUYkFhUlZOTngrOTcrdGd5SWkrM2sraWtta0Qr?=
 =?utf-8?B?eGpnYzI5R25lbm90d2NXb29UMmEvQWJCdHlyYzdsTmM4bXdLVkdrRmlzb0Nl?=
 =?utf-8?B?SFBsYWpYUWlhbE1KeFM4OWN3UStka2tMcXQ1V05uVlhSbHBGWTIrd2hXWWt3?=
 =?utf-8?B?UHhDclRjVHRFaXJsZVdtcEh4Sk9oVU9WUkVlYkhNRkZUUkY0ZU1Ca0l4cEZ2?=
 =?utf-8?B?amtpM2lXK29MYk1kRHl5Qlh2dU1Sa3dicEhJRCtOeWFZS0FZc0Ztc3BYendB?=
 =?utf-8?B?eHdJVmEyZzkxZFBmZnhYbzQ2dDBKeDk3NHVOS3o0d0tuYUtzaVcvMHlSQncy?=
 =?utf-8?B?b3JJUFB2c3lCTHBJYkJjbWphVWZGcGNBWGRhRkFOeEc1aUpSUVNCWFBZcGVu?=
 =?utf-8?B?bnVPTk5EdTVpbVFvU3FQbnJJZ2ZkeEFaWTBiYzFEaFBrS1I3K0NOVGNSVFBm?=
 =?utf-8?B?K2xFRDM4cnBlZlBNblJNSkdRQ2ZjU0hWeHFIbUlCam5GUHVqLy9tTCtyU3dk?=
 =?utf-8?B?d2gzM1A1bFFrZ3FiYkd2c0VjSndjWjR4dklBQ3lYQ0NpT21UajNEKzd4ajZR?=
 =?utf-8?B?Z1ZSbHpUUEhSbklWRm1PZ0hsdXJCeGxhWU9YenhjbC8xZnRGMnY3aERxdVdw?=
 =?utf-8?B?a09ISThjcVVxeGRPdEQyb1pEQTN6OENIdXkrTzJKUXVpWi9rNFR4b2I5Tmgr?=
 =?utf-8?B?ZWp6NzJZV1ppbjc4Q1BaTy9teU9FdmVsSjBaUlZJMnhsb1BzMy9QZU94cWtk?=
 =?utf-8?B?Y2dNQU5XTHo0d052c3RmVmhFbzNLRjVWMTFKVkNkT2k0L3p2b1lROXdkb3NP?=
 =?utf-8?B?MEtSa1dWajh5QmRFZ2VyRW5ES3JDMkRKWm4rY0dxUm9ZQ1dtcENpQ0grZ05H?=
 =?utf-8?B?b0h1UDMvTjBCaXJWRnNoQkFpTE00cmk1VUt0eDJtZEM3S3I3T1R3Z2wxcW1H?=
 =?utf-8?B?QjJOUkpySlRzb2ZNTVBBMnp5Y3NDTTVXWEJHdEV2OWJuTVpDV0srUGljWC8r?=
 =?utf-8?B?VnlTcXNMeEdDNm5yalY5Skp4SDNESC94TmR6UXk4RnlTaHBBRmd4RzFuQTBY?=
 =?utf-8?B?dEpJb3dZWTg4eDBGb0paMVJWb3l3dlBQMHcwUkV6bUdzYjVGUi9CU201dkNC?=
 =?utf-8?B?NjZhcWtOZ0QwbnJKNFhYTkZ2K2ZBczEzVG1yYmowaTdueWtlV3dwdVlVaFdk?=
 =?utf-8?B?ei9za0NXZmFaR1dwM2t5RDRLU2RrWU9CcXhobUtiTWJjQVo4cS9zT3RWL3ps?=
 =?utf-8?B?b21BOVorVmNFYmgyZ1dLTndjY3lCcFZPWmRYRnZJa2QvZVFIK2FZSnlQbzFx?=
 =?utf-8?B?Z0xwb0d0Wml1b3lOQnVWc3lTWXRpbnNIYjkvQXdvY2VuUEx5V3NBNWVWTUsy?=
 =?utf-8?B?QzFHa0Vmbk1ySGd6aXFKSFR6bDhyVkgxeFlkcG5tZk45VHBZNFZXaDBJVm5n?=
 =?utf-8?B?UlUvT3FVcEtZRVVzeHdYMFdxM1RvZ0dMVEVuRjFGVHV6YmhzYnRQU0NUaFk2?=
 =?utf-8?B?dmJBUmJ6WC8ycnlnUkovTFMwRGR3NWFRY3EwOWRaWFBQWDV2aDZUdkI0emVQ?=
 =?utf-8?B?N1d2ZjhGZTRMQVVjcVFKMEhRQVlkWEZGZi9PMi9UUDNWSno0U2NYMDFrUUJr?=
 =?utf-8?B?UkdvNERoUnV3YzN3d21WZzFoWW83dk8xOFFzNzk5RHBFZlNhNkdOYXFMZ1B4?=
 =?utf-8?B?SzhYYjVvN3Y1OEthNS9QdGI1V3VIWXZJc1J3czhDNzdYeThjcUg0MWhVOE42?=
 =?utf-8?B?M3hJaHc5RHhMemVvTzVodGt0dTBXNFVROWY0NUxUaGNOaThCMC9vSjF6V21Z?=
 =?utf-8?Q?lp4LYIhV0psINpWQ9+GrXjk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 25b99378-3459-4ae0-1592-08dbaa74894b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 22:49:30.0445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5DiDxiGbU/Nl7UFODOScnSGfsl58AZwZBnOGY3Tey/D7pZu5BSbqFXuFYwEQEdsVp59Hp60niCOVQGHTykU46fs7/W2HrGc+E6fUMu6Qikk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4937
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix reservation address in
 ggtt_reserve_guc_top
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Fernando Pacheco <fernando.pacheco@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/25/2023 7:33 AM, Javier Pello wrote:
> There is an assertion in ggtt_reserve_guc_top that the global GTT
> is of size at least GUC_GGTT_TOP, which is not the case on a 32-bit
> platform; see commit 562d55d991b39ce376c492df2f7890fd6a541ffc
> ("drm/i915/bdw: Only use 2g GGTT for 32b platforms"). If GEM_BUG_ON
> is enabled, this triggers a BUG(); if GEM_BUG_ON is disabled, the
> subsequent reservation fails and the driver fails to initialise
> the device:
>
> i915 0000:00:02.0: [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC
> i915 0000:00:02.0: Device initialization failed (-28)
> i915 0000:00:02.0: Please file a bug on drm/i915; see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.
> i915: probe of 0000:00:02.0 failed with error -28
>
> Make the reservation at the top of the available space, whatever
> that is, instead of assuming that the top will be GUC_GGTT_TOP.
>
> Fixes: 911800765ef6 ("drm/i915/uc: Reserve upper range of GGTT")

For tracking, it might be good to also add:

Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9080

> Signed-off-by: Javier Pello <devel@otheo.eu>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: stable@vger.kernel.org # v5.3+

Need the full CC list here, so that when the patch gets back-ported the 
relevant developers get automatically added.

> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 21 +++++++++++++++------
>   1 file changed, 15 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index e9328e1a..0157bebb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -511,20 +511,29 @@ void intel_ggtt_unbind_vma(struct i915_address_space *vm,
>   	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>   }
>   
> +/* Reserve the top of the GuC address space for firmware images. Addresses
> + * beyond GUC_GGTT_TOP in the GuC address space are inaccessible by GuC,
> + * which makes for a suitable range to hold GuC/HuC firmware images if the
> + * size of the GGTT is 4G. However, on a 32-bit platform the size of the GGTT
> + * is limited to 2G, which is less than GUC_GGTT_TOP, but we reserve a chunk
> + * of the same size anyway, which is far more than needed, to keep the logic
> + * in uc_fw_ggtt_offset() simple. */

Style: multi-line comment should be formatted as:

/*
  * Text
  * more text
  */

> +#define GUC_TOP_RESERVE_SIZE (SZ_4G - GUC_GGTT_TOP)
> +
>   static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
>   {
> -	u64 size;
> +	u64 offset;
>   	int ret;
>   
>   	if (!intel_uc_uses_guc(&ggtt->vm.gt->uc))
>   		return 0;
>   
> -	GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
> -	size = ggtt->vm.total - GUC_GGTT_TOP;
> +	GEM_BUG_ON(ggtt->vm.total <= GUC_TOP_RESERVE_SIZE);
> +	offset = ggtt->vm.total - GUC_TOP_RESERVE_SIZE;
>   
> -	ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &ggtt->uc_fw, size,
> -				   GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
> -				   PIN_NOEVICT);
> +	ret = i915_gem_gtt_reserve(&ggtt->vm, NULL, &ggtt->uc_fw,
> +				   GUC_TOP_RESERVE_SIZE, offset,
> +				   I915_COLOR_UNEVICTABLE, PIN_NOEVICT);

The code change looks good to me, so with the style fix and the 
additions to the commit message this is:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   	if (ret)
>   		drm_dbg(&ggtt->vm.i915->drm,
>   			"Failed to reserve top of GGTT for GuC\n");

