Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CA37C4DD7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D7810E5CC;
	Wed, 11 Oct 2023 09:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C487710E5CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697014814; x=1728550814;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U+yFsmmRqgfVVi4mBVUemOjQT+4N496WS1Pgz7iA/D8=;
 b=TP7BbZ2PwA167q2xDaVlM42mAI7XLHs2ZVLxgGnjA+cDGcyUqE1XglNm
 2Fu76O1U5BPMda1noh/MXbaRBWiG13g0Qgspktx/Y7x4Xxtl25gitTocn
 Hyssg1II2u5qUI0RVZ2vLrq0SV5O/5YKgAwfY5J66KWVYf9/fwGO20xvs
 IKL819cNAs0IAiB+aVN5N2PAGZMZpdtDsqlK4JxCyJIEq5clpdXAV9FSX
 P/RyXgynxfHiOxHFrCD7nrj8M5u8kbn8pClxqbPFDvOQiqZe3AE23epRA
 yoCCW4IkRcFJbkHjPSDYuKkg/G8ep700KpwK0jY+/rMMidancrSUpCTiv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="448815410"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="448815410"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="783174998"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="783174998"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:00:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:00:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:00:12 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:00:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQJ9kPEj3UgMM5PDkHxp8PIjH3TgWy4cGrrFn25MEJ/66Ek9nKAlh1jO8QI+O8tSwfzUmUMvRaex3i89PiFMeD5A3zBUkBvw7ItgJhI31MirWthe0uE2hNX/sU7dhXFejshwLT+PAo3HLff0x4chz+DNbaUr3FHIzLWa/BvSaLDfFlDDefMvje1/CQe6muE6q71R5Cl5fHecMnKTxf/GOogEbCjfmfi+q88G8Auk0IMHSbt/rL1pMPnzS3jfflO2Ot0q+xLkQN+F7/6cwLZKS9Wlm2gybdJ0AP8IfOmVuZLxJxnHYNaGetXThWbKSmtn5RQGlWFB1M8pDbGHO4rQ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggXR731wJQWRd66v/szZh+ubOQtDvGqC861ydf9t81w=;
 b=CVu9LraIfjECfyM4gEXTlbpw4gBFooXadRo9Jp9IP6VMhH6pxftOu9ORLqXczQa0Hub2gdmNe8FyPj0XbDMPk1tMyC9ZeXya2J5xOOy/qaZjjzuEZu6WIhIaDvmugeyChVa5ZEsLPgd3UC5tgYULic+hHO7jaeIdkjV7n5ONcL/1SDNDIRWvqH2FwjDr9Zup3f5aL4hXMToTbdUDuzZHS18REB5cDMG5WITfG2xPN4fj+w5Yj9a0q5f6+dxKEaCagY7lwjoMvfNfuPU4kahw+bmWAovMGbu4RhMoE6Tj9m5ZkPtpmfJOjje5vp5YBHlUQ4Dz0SAHX1MQnH9yBLrw0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:00:09 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 09:00:09 +0000
Message-ID: <08cc314d-5c2a-371b-e586-b69036c7d64b@intel.com>
Date: Wed, 11 Oct 2023 11:00:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-2-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0090.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::8) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b11ada6-08da-4ffa-9d73-08dbca3877a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SzgFUbQCAvEVFp/CeBEO639lVYg5rqP3xrfWQihx/Wlaslh7oZqK52P0V9qdSYmHWxEAG7C7BQjhKlRRT6IJBSh1xxTimJ0ahYoXngt3MLFz8KvTEYZuOt6ArJGiEh1yObASW/ogkoiQd5CAZ5SiJdMQkSwLxYBKXbGCaPTkbrAca2qJB7j2h/zZKrSwezdHOOrENSVrYrkLw3BCMaThANPY3SECmpYQN9hF6KhAARsaZ2HP8eGMF5x7IlsOnFsdAYLws8OlQqYnjrqKjv46cFdq+txi58UhWLj+4OGoD5uxAcAInO2CTYYpkXHbi6gktba7ighFrTLqIkVNagtzTEv9ZEbD4fKgDT/lmOoU6+A56Q1ld5in9y94f9aMzguK2TE41WmCMXh8gbeIdKjVTdKw4+PBxkSDSEStoEpB+FFY1PWW37/AWiMkhhQ1OorKLjM1qpR3xgNij8guzZCrGhg1B1zhfQaz3wgrFXfVKlu7ZLHxlNWYZqE3qq5jXV7aCepGmnCPDlyjFDpEX8z5az5pb4E0pef1lq/UmH5WfbwWvLDcSm5+yoEe5XplrXf/LbMsOHUue8VeC4jV6TTN7XWuudtKGXEPZ9EwLjcucN7noRGUsJaEd6Z4CCj4vtuluTyUHhUuGS36Mwi66il5AA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(31696002)(86362001)(36756003)(2616005)(6512007)(316002)(6506007)(6486002)(2906002)(44832011)(66476007)(53546011)(41300700001)(478600001)(66946007)(5660300002)(66556008)(26005)(6666004)(4326008)(8676002)(8936002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzRrM2JQSWZDUldWL3BuUTlRVDJrN0hVN050U01BSUdEcmRyZnQ5K2FTRldB?=
 =?utf-8?B?YkJBV0ZJd0NjblJUT3RENGFvZSs5R2kyOTlUNVdTZ1AzUVhJUmgyejMxVTJ5?=
 =?utf-8?B?cWlyYmR5SzVzdXJYWFo2eHpOTGtZdk84UVZURjUrVDY1NlZoZ1JTcWpIUlJC?=
 =?utf-8?B?cEF4OTE4dTVSTXVGUWJLcVR5RkZrL2VPK3RFczRCbDhvdjhUZnpYQlNOVGMv?=
 =?utf-8?B?b1NOMzdkZEVEVGtKT0MvQWNPTmFWQzAxa09CNEhkaGFRMzNRTHBQNExydFJ0?=
 =?utf-8?B?SDIxbnpJbEdqTjM0Ujd4ZWZmY2lwL1Q5UG91OUI1aWlHYngwOUlhRzNBVWdP?=
 =?utf-8?B?Wkxxank1RFpjLzJLTzhTK01aUjBMTTVXT2gzWm1OcVVwaWVQenBaUDRLM2cx?=
 =?utf-8?B?TUc5UWtkd1d3TFZUNnQwUTM1dVA1NmlPVlVXQ2E3TGFHYzg4Y1FEMUF2MGxx?=
 =?utf-8?B?TFM1b0dxTEd4RVhmVElvbWZINHg1ZzZhQTF6eEg4eGpub3dNRC92a2pFeXQ4?=
 =?utf-8?B?aXlWRmJnSmlmbFNybmlKdnFKdGsvZ1BrLzZSV2g4T3B0MVk3UlNyTDBJOGVw?=
 =?utf-8?B?c1BLbmtlVW83MnZuYzNWYTVyVTNDNGdtTVBYYkgrcUE3TURMVER6UGpZc0NO?=
 =?utf-8?B?R3N0S1FYaExPeEQxa0FmeE9XNUQ4RmNEYUx6aS9mcHNza3hvR2JXSXN5aGhH?=
 =?utf-8?B?SURaKzNCMTUzTWtOeDExTFlHSVRiRU5zT1dLd29lYlpXc1UxanE0dEdNMmFV?=
 =?utf-8?B?VTUwODh3ck1UMzFaZjhKZzFqUm1FZjZiaTd0TnBSVTEwRXU5NTJKWGxYUlBZ?=
 =?utf-8?B?cVVRV3hldDJLdlFqaFZIVmRqZjhFa0hBRFBxR2F3OGxVS25FZmhqWFg5YnE1?=
 =?utf-8?B?SGFZVHB4Mzk1ZmI2UVVGbkUrcUZiYWVYYVhKV2xtblZTaXNnNUVEVzM3bUxt?=
 =?utf-8?B?MWdVR1liYTllUitXdzc0Qm5EcEFDTFZ2cnJJcnlKWkttcEFjTWtvOXdDbDc4?=
 =?utf-8?B?ZUdxV1RXYlNnT0I1dWhZL1dBYmhUS3R4cXlpUW1odVhpR3lqaHhHeTAxaGts?=
 =?utf-8?B?MTM5NXhDOVZCUlV0OVRJY1VpQ0hhQXZPeXhXLzVsS2RvMURxeENXZEE3c3lR?=
 =?utf-8?B?K213NnJPN3NXZDU2YnRPU0l1UVIxaUhpNGxXOEREUzQwem1KMlVhbzlKVG9M?=
 =?utf-8?B?UGtXRkFrNVM4c3QySWI2TWFiRFd0dmYwWUh1bmZ6T2RnQUJLeHZDc2w0bERF?=
 =?utf-8?B?L2VOY1dCbGdIUTB1RXBsTGJWaU9ka3ZqRXd0OGNjeUZHNmN1cWpzNGw5MSts?=
 =?utf-8?B?REM0OEEybTlRM0xHandETlh5bitrbEJRdmRIaTRGZTFMYnhJTlhQblV1Y0Fn?=
 =?utf-8?B?YnNXay9keVVxZlQvOUhkOXFEZmI5U1dqdFBoeDl4WUpNU3liYVJqWDkyeEkx?=
 =?utf-8?B?enMzSWtmR3JvdzJCZG1rVEdCMFpWUTRDeHRSc2xkRkVWSVE1OG9OMGF1SGhJ?=
 =?utf-8?B?amt6YlZPYlo2TGNHa1psTUNFUkRnei9MY1Bzc25jMUpZRWltanlUYkVhLzZO?=
 =?utf-8?B?T0xWRWxuRmZWQkZHd1FPUnBrRmVjR3ZKa2YzeGZKQU5URUZ1azVha3RHb3Rw?=
 =?utf-8?B?TDhnUzdlSjR6V3FobkwvZVV4N0Qvdy9JZHRNZk9jaGZjejBGMkVJNld3SUg4?=
 =?utf-8?B?a0NSN2JwRWxiRUh1Ykduc3NBeGRmQWtsaTZ3VFBZdEtvM05oNlp5NHpYczln?=
 =?utf-8?B?WGpEeUhReHlYa1dJL1NPMVZPdXlRRjJpM1h5aytNNjBmTU1WN0hGSUx3cWtP?=
 =?utf-8?B?TEZpL2ozMkdpWDVaMlhRNWdFQmE3VElkWW9IWndyVGx3VVJWeTE4c2RSN2NH?=
 =?utf-8?B?dGFmWnYzdVl3emovaFNqc0NFdXNZS3dOaHgzREFaZ3h0ZEViRk9EYUF5UVNv?=
 =?utf-8?B?VlF6WnE5aE9ZWk9NRTJXL2FQMEFiRnRRUnFvMWYxWjVEeDYxRW9iN2dmdFhW?=
 =?utf-8?B?bnU3SExKdjNhQTJDNkRSM0s2aS9LSFhuTE1xK2VCM01TTTZuYUxuWCtnWWZk?=
 =?utf-8?B?RVhXcXF5NFFyZFNIUUw1Ulc1R0NoUnduYUpNM0RsV0JCcDFING1FRlhEbUJH?=
 =?utf-8?Q?bhipwqCrQyW3LPixLe+lP3zpA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b11ada6-08da-4ffa-9d73-08dbca3877a1
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:00:08.6926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: djiLpDV7YK8FK3iFcUPhAa/OIJ0gqxK8jEbDzk6jQCXX9TO+ia/Y0ujJlCLoXSDz6dKVuivPg8juGClW1afUxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 1/7] drm/i915: Add GuC TLB Invalidation
 device info flags
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> Add device info flags for if GuC TLB Invalidation is enabled.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
>   drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>   drivers/gpu/drm/i915/intel_device_info.h | 1 +
>   2 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cb60fc9cf8737..6a2a78c61f212 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -794,6 +794,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_GUC_DEPRIVILEGE(i915) \
>   	(INTEL_INFO(i915)->has_guc_deprivilege)
>   
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
> +
>   #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
>   
>   #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..eba2f0b919c87 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -153,6 +153,7 @@ enum intel_ppgtt_type {
>   	func(has_heci_pxp); \
>   	func(has_heci_gscfi); \
>   	func(has_guc_deprivilege); \
> +	func(has_guc_tlb_invalidation); \
>   	func(has_l3_ccs_read); \
>   	func(has_l3_dpf); \
>   	func(has_llc); \
