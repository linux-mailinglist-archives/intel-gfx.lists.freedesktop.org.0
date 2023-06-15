Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F9C7315A3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 12:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AB110E4C4;
	Thu, 15 Jun 2023 10:43:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FC810E4C4
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 10:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686825799; x=1718361799;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bN/TFVZLBPxjdH/q7Gwjcq/iNtzxSd0uwEywoglT7So=;
 b=LRwzGxpgM5gM9L2Wm1kET1IPUqTVSNqeG8ZKPlgncNM47PYfxfM3dWDh
 UUoNxdSlVb+HMKrmKjgsg+ruhc/dmRi68CvNcux6R704eyyxPfZeBPg5X
 /G7gmeGMCEXRUdnPgqn38dNKYm/X9NbGLvGwBd9h6LIpfEl1QClnoGmSZ
 FOrdE9hD06K+Sl8ZcXol8PuAiZeD1MjHbP9Up8jlJnlR3ge2y+zz0/SUi
 2u1oC3GSlGCGOKhaF/ZQdew0jssdmfClNwa03hSS89YMJjxXBga6548HT
 5CG61VvgLrE/wtAc5G1r/sCWmBycy6nmiY4i2HCOYRy2P8nAcI+s9HDM8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="387319670"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="387319670"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 03:42:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="662739906"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="662739906"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 15 Jun 2023 03:42:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 03:42:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 03:42:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 03:42:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 03:42:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oi8biHZUXVDH+4TYbJzxzp4OpFnthicEgmPdhmM+rK0J4gmdAHEj17+u7FKD47J0qTqvOk8cElA6quU80xwXh2yriaOyR2kKGbQ+UEXzKCrop6ubS5PzPLWRyBUhAMVXPFjXRczVraWiaP/H6P5JgIfxVqhkU41VtUnJafq4bmBNEU2zV2jQmk9l/kispt2dQ0NIptRiirAWdNLXbVNduQiEoz//HqmQWEYidNxtHotV7VLWClk26LVI6SA20BFAAqSThlSz39SbTntonIC6eKmNIuORnbdfy5afiQnX68HhRvlOOm3BNs0JnDzRfhh8NqIEU/EeYuKL1TCqi0TCMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8MKTMFrboTLwneYDkCcVylPrkXgS/cwv1E44CqFCSc=;
 b=ZnUSYeUWUO97I0wns7+rfOgwQoVPBxJCLpyrvLislnODGdRoW46qIvZlUU8Gyprmtqy0sxcUWLWBgotw9AMr4zXUMukFxx0qgXvRpo0NKcaL9l4W+DlHpW4ckVrotzOIYRp87O1FqKm0VEizlDA6jmyfyG5nNcpJpunJfokFDkwLY3IsRlwmlS3rer//xEh5MO80PH+a4kCltllfxxp8SJq6XfGm5Aq6EnfIyrs4nORLNJpCbT23XekKJPq+kc1XrLNQapBpXrcixsvw62jWGNOGUr0aXQgztUbRDPwqZRpGhAGu6tRRXJY6cD6AGsYdBjNc7TpEOJ2MBhezP/F6Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB6924.namprd11.prod.outlook.com (2603:10b6:806:2ab::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.46; Thu, 15 Jun
 2023 10:42:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ac26:baa:8950:d3ec]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ac26:baa:8950:d3ec%4]) with mapi id 15.20.6477.037; Thu, 15 Jun 2023
 10:42:01 +0000
Message-ID: <d21cdd7a-ebea-4ab7-8617-28557f6e3f59@intel.com>
Date: Thu, 15 Jun 2023 16:11:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230602105113.1791104-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230602105113.1791104-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB6924:EE_
X-MS-Office365-Filtering-Correlation-Id: e300a37b-1d43-4b3d-2530-08db6d8d26f4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m1xUEyM7D3T/SPuOn32qXi4Ju0coKdM5sr7dWuCcHgv/aDkVKiTCqjj05q3PTU+qksByARnDEPwOvOikY+sefqHXcTDoh6pZ28FUBjupV3hYKm3PR/WRIJK/bdtZMa+7K8q7jMI3YxlFKi7cQ4wXeVTDrEoERp92SQNbH6Gb+MOIZn35+sSY1IifMdoZzVz5yVx4qmBOgtkIZsPBS/3/bVEmeWMWViALu3U7krrDmYvs0NFbCIpWXL7J6HP6bbtLdtEVnOGtfYSIqfXZrNyBIqDRA1Dj3K82qZ8NMDhcKmlx6cpLWnVIdnKie4oV8j3vkhVKnQKBB1DJ+Qu5KgfkkntkvShqpGiYTDewd9BHN3oRx9BkCxS1U2HDO4p3cRqzRu0eERfrwNdhOWe4WdM/lPmOSpFHSkKjVmA9HIaKnDiFuzgGMZskplVrVbbv11IMp1XjP5FmSgPs9vklBrKr1Nd5L5kM8F/rK3S7XN9Me5wI25zVjyUuMrPYblTzWjQ9x5mSbeG2MMn2idAhFyr+r5Yf9nq7Rx5SZIWARNEj3krN/lpDQ69+USjF6ZmCnAQ1PTWPm69WaM0B80wbeXxddyMokL19PuXcImQ2n2G9lRc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(39860400002)(346002)(366004)(396003)(451199021)(966005)(6486002)(316002)(41300700001)(2906002)(2616005)(55236004)(86362001)(31696002)(83380400001)(6506007)(186003)(26005)(6512007)(107886003)(53546011)(82960400001)(38100700002)(5660300002)(36756003)(8936002)(8676002)(66946007)(66556008)(66476007)(478600001)(31686004)(54906003)(6666004)(4326008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZU5pcHF3czZHdldvOXh5aGQxeU5RUjlJRzNpQWhFSVBaQmxrQWlJSEF4ZFMx?=
 =?utf-8?B?eW4zdWkvZEM1d2IvbkJtQUl6Tm9VUlAzUGMzMzAzTWxQcUR0R1gybVk3WUQw?=
 =?utf-8?B?WlpuYmk1UnBlL3R0RTEvbHdxSGdsdUMwUHJEcHdpdG5uMTZDWVJLanBvU3lR?=
 =?utf-8?B?cVVmVUcrOEtRMW9qQkU2TkxmVitaUFE5OUZ4aHRRWWlBZUVHdmdpdUJwTXlr?=
 =?utf-8?B?cmxTK1NmSG5wZk1ENXFkK3FRS2QvbUN1aDVvaG9zMXJaS1ZIVysvUFltbCsy?=
 =?utf-8?B?cW9nUWw0dFlkSVVXSk1nS3RXRHRsVVlJVVpNZ0pNUk1JQUNQamw0K25xa3B2?=
 =?utf-8?B?dDIrS3MvaTRqSHN2MmI5RU4wRWxvTVh4cXhMNzdGUlpnd2Rrb1p6eWsrVmRt?=
 =?utf-8?B?WVVkcmVRY2srLytZYlJEcXRTeGZwbjJyNGIxUnpUVlJsY3AwYmU3OTNKTHBl?=
 =?utf-8?B?R3VDMGZrTXRZUDNUc1RRM1MycDBzQzM2d05GK2l2aWtQWm1RenRGRGxzc1V5?=
 =?utf-8?B?Vm1CV0V1QU1ZUEE1Z2N3bUhQU2lqa1lxZGlxQmhqRG9TSnltU2VFMkt0ckdE?=
 =?utf-8?B?Umd6TW96MStyMjk3eHgvbzF6a2VIcFRCN251UTZ4b0xTbzMxZUV0OXlESG03?=
 =?utf-8?B?V2NCUlhOOGliQ05XdHk1MmxnL3FvZmkzU01DTW1ZcXhaUXFmR3F4d3VRWG9T?=
 =?utf-8?B?YXZvWDJwejJYTy9oelRhalZ6a0g3ZVhGNUFBQTlCY1FOSlFVbVRvLzR2WWZy?=
 =?utf-8?B?ZWswWmtIMkQrZkhNbmlXQnc4YmhFM2ZIcFdkSmNMRXAwWHVrWHQzUTZoaDVw?=
 =?utf-8?B?bDlBYUxmc05KWC9udXVWdFZxbzNuTlFuVzRRQWNOanUxaXVwWURBQnM3aHE5?=
 =?utf-8?B?U0ZBNGk5S0czeTJRNit0cGkxcmo4Zk9GcUhtSVR6anVDNXFMbjhhTUZJVGU5?=
 =?utf-8?B?N0xYdktkUEhCeXpvSWx5UmUwZ01WSkRWdUlGR1FaVDR4Q2ZjR0M2K25oaWxK?=
 =?utf-8?B?WitUTFhjZ2tHeFJsd3JXU0MzSXZ2OExGblpmcjFUL1dEb1dkR1NaVU1tOUlU?=
 =?utf-8?B?ZGs1alBoQ2UrT1UyVTBRT2ZoUllmRHZWMjJkQzdESXdoS25BazhrWTA4Sm14?=
 =?utf-8?B?TDFNTlNVb24xS3pJWGxublpaUkg0eUZ3Q25JQzRVL3k0RVZZbTBZMW80TjNL?=
 =?utf-8?B?eisyYmtCNEZtcDVKRWRSbEFhRGRVWXZmUGhrTWNuU3pQcmVveWtlWm5GTHpt?=
 =?utf-8?B?WWRNTzJQMkUzaFZkd1JSSnJ5amZoUWtRa3FCOEtqS1ZlTXE0RStWZnR5TEVu?=
 =?utf-8?B?c3lkVkp5Uk50ek15RkNvOFlGdGxScDQ2ejNBODJXVnNrOVpvUUFkMWl2ZW1O?=
 =?utf-8?B?aDJBSVdaYjdGU0dXUVVKM3JvbGhhWkZTOForMWFhcGF5UWlyK1hXUXBkdk8v?=
 =?utf-8?B?aG16WEVvNmtCUEN3akZvWEMxK3RqMmthMXNRT20vMnpNcE4zUmhaT2ZDdFl1?=
 =?utf-8?B?dVBWUWR1SGEwUVA0Tm11aGhhWFk0TkI1NEZzUE1WNjg1MFJ1Y0wrYTREdkQv?=
 =?utf-8?B?M3RwcU5laVo5NHl2VFM5TG1aTmIrVm1JYWhqTHJ4QVBYR3FoV3RUR3U3R09L?=
 =?utf-8?B?L3hMcWVjREg2ejhZZFVvTFhXa3dwNDIzWDVDSzVrR3E0T25WbUhRc0JGTjNm?=
 =?utf-8?B?eXJuNEpTQld4QTNGYmFLQkY0dFR0K3dLVUdxbmgrRUh0ODFNYzJ3Qm9Fb1A2?=
 =?utf-8?B?eXRxVXZIUUY2cEtBQzhVSlBYREpmQXU1MS9aTEcxWXlyL2hFOUE5T3FJVkc2?=
 =?utf-8?B?U1BTdUhiZkxNRUQwbERUVU5KeVhzdFRlR2tHNGNlNkZOcDZmb1lCVDc0b2U2?=
 =?utf-8?B?N2NtK3p1V1U5TUt2eWwwLzVJSjdlandUSEkwbmozY1NhRGNBdVVnQVk1NzA4?=
 =?utf-8?B?aUtKd0RrVlFma2kvZHNXMEx4U3VSSTBDZC9heW9DU0J1YTNScHRTSGhqdkVj?=
 =?utf-8?B?aURYRWFteUl2SS9oTFQvVjVJZVBIbXJSQkZLT0NxNEtwREVRaUdzTGN3bEta?=
 =?utf-8?B?RTJZVTEwZHZ1ZVZlcU9qVFU3NXRRNmdFSExodTduN25vcDJLd3FPR1FQOU9H?=
 =?utf-8?B?SUU0azZlTFV3Q1FMZnhJMktpQnduSm1ILzZTam1UMlYrQ3hPU29jTDlvWGRB?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e300a37b-1d43-4b3d-2530-08db6d8d26f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 10:42:01.9012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qxdvyTFHto13baZI+hwQ3OM67GwWsxAMP2U7dBVik5N1HRpafIjfLz8im4oYDAIohBTpWzQEfbecwG4fyKA5aU/YGsouGx0mBzk/DDcbhsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6924
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Modify hdcp_gsc_message msg
 sending mechanism
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/2/2023 4:21 PM, Suraj Kandpal wrote:
> Allocate a multipage object that can be used for input
> and output for intel_hdcp_gsc_message so that corruption of
> output message can be avoided by the current overwriting method.
> Modify intel_gsc_send_sync() to take into account header_out
> and addr_out so as to use them to verify the message send status.
> Check link for comment and review history
> https://patchwork.freedesktop.org/series/118499/
>
> --v2
> -Change approach from allocating two objects to just one multipage
> object [Daniele]
>
> --v3
> -Squash the two patches together [Daniele]
> -No need to allocate twice the size of intel_hdcp_gsc_message [Daniele]
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Patch merged in drm-intel-next. Thanks for the patch and reviews.

Regards,

Ankit


> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 80 +++++++++++--------
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  3 +-
>   2 files changed, 49 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 7e52aea6aa17..a0eb49dfa133 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -621,24 +621,26 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   	struct intel_gt *gt = i915->media_gt;
>   	struct drm_i915_gem_object *obj = NULL;
>   	struct i915_vma *vma = NULL;
> -	void *cmd;
> +	void *cmd_in, *cmd_out;
>   	int err;
>   
> -	/* allocate object of one page for HDCP command memory and store it */
> -	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
> +	/* allocate object of two page for HDCP command memory and store it */
> +	obj = i915_gem_object_create_shmem(i915, 2 * PAGE_SIZE);
>   
>   	if (IS_ERR(obj)) {
>   		drm_err(&i915->drm, "Failed to allocate HDCP streaming command!\n");
>   		return PTR_ERR(obj);
>   	}
>   
> -	cmd = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> -	if (IS_ERR(cmd)) {
> +	cmd_in = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(i915, obj, true));
> +	if (IS_ERR(cmd_in)) {
>   		drm_err(&i915->drm, "Failed to map gsc message page!\n");
> -		err = PTR_ERR(cmd);
> +		err = PTR_ERR(cmd_in);
>   		goto out_unpin;
>   	}
>   
> +	cmd_out = cmd_in + PAGE_SIZE;
> +
>   	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
>   	if (IS_ERR(vma)) {
>   		err = PTR_ERR(vma);
> @@ -649,9 +651,10 @@ static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,
>   	if (err)
>   		goto out_unmap;
>   
> -	memset(cmd, 0, obj->base.size);
> +	memset(cmd_in, 0, obj->base.size);
>   
> -	hdcp_message->hdcp_cmd = cmd;
> +	hdcp_message->hdcp_cmd_in = cmd_in;
> +	hdcp_message->hdcp_cmd_out = cmd_out;
>   	hdcp_message->vma = vma;
>   
>   	return 0;
> @@ -691,6 +694,8 @@ static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
>   	struct intel_hdcp_gsc_message *hdcp_message =
>   					i915->display.hdcp.hdcp_message;
>   
> +	hdcp_message->hdcp_cmd_in = NULL;
> +	hdcp_message->hdcp_cmd_out = NULL;
>   	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
>   	kfree(hdcp_message);
>   }
> @@ -721,38 +726,42 @@ void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
>   }
>   
>   static int intel_gsc_send_sync(struct drm_i915_private *i915,
> -			       struct intel_gsc_mtl_header *header, u64 addr,
> +			       struct intel_gsc_mtl_header *header_in,
> +			       struct intel_gsc_mtl_header *header_out,
> +			       u64 addr_in, u64 addr_out,
>   			       size_t msg_out_len)
>   {
>   	struct intel_gt *gt = i915->media_gt;
>   	int ret;
>   
> -	header->flags = 0;
> -	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr,
> -						  header->message_size,
> -						  addr,
> -						  msg_out_len + sizeof(*header));
> +	ret = intel_gsc_uc_heci_cmd_submit_packet(&gt->uc.gsc, addr_in,
> +						  header_in->message_size,
> +						  addr_out,
> +						  msg_out_len + sizeof(*header_out));
>   	if (ret) {
>   		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
>   		return ret;
>   	}
>   
>   	/*
> -	 * Checking validity marker for memory sanity
> +	 * Checking validity marker and header status to see if some error has
> +	 * blocked us from sending message to gsc cs
>   	 */
> -	if (header->validity_marker != GSC_HECI_VALIDITY_MARKER) {
> +	if (header_out->validity_marker != GSC_HECI_VALIDITY_MARKER) {
>   		drm_err(&i915->drm, "invalid validity marker\n");
>   		return -EINVAL;
>   	}
>   
> -	if (header->status != 0) {
> +	if (header_out->status != 0) {
>   		drm_err(&i915->drm, "header status indicates error %d\n",
> -			header->status);
> +			header_out->status);
>   		return -EINVAL;
>   	}
>   
> -	if (header->flags & GSC_OUTFLAG_MSG_PENDING)
> +	if (header_out->flags & GSC_OUTFLAG_MSG_PENDING) {
> +		header_in->gsc_message_handle = header_out->gsc_message_handle;
>   		return -EAGAIN;
> +	}
>   
>   	return 0;
>   }
> @@ -769,11 +778,11 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   				size_t msg_out_len)
>   {
>   	struct intel_gt *gt = i915->media_gt;
> -	struct intel_gsc_mtl_header *header;
> -	const size_t max_msg_size = PAGE_SIZE - sizeof(*header);
> +	struct intel_gsc_mtl_header *header_in, *header_out;
> +	const size_t max_msg_size = PAGE_SIZE - sizeof(*header_in);
>   	struct intel_hdcp_gsc_message *hdcp_message;
> -	u64 addr, host_session_id;
> -	u32 reply_size, msg_size;
> +	u64 addr_in, addr_out, host_session_id;
> +	u32 reply_size, msg_size_in, msg_size_out;
>   	int ret, tries = 0;
>   
>   	if (!intel_uc_uses_gsc_uc(&gt->uc))
> @@ -782,16 +791,20 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size)
>   		return -ENOSPC;
>   
> +	msg_size_in = msg_in_len + sizeof(*header_in);
> +	msg_size_out = msg_out_len + sizeof(*header_out);
>   	hdcp_message = i915->display.hdcp.hdcp_message;
> -	header = hdcp_message->hdcp_cmd;
> -	addr = i915_ggtt_offset(hdcp_message->vma);
> +	header_in = hdcp_message->hdcp_cmd_in;
> +	header_out = hdcp_message->hdcp_cmd_out;
> +	addr_in = i915_ggtt_offset(hdcp_message->vma);
> +	addr_out = addr_in + PAGE_SIZE;
>   
> -	msg_size = msg_in_len + sizeof(*header);
> -	memset(header, 0, msg_size);
> +	memset(header_in, 0, msg_size_in);
> +	memset(header_out, 0, msg_size_out);
>   	get_random_bytes(&host_session_id, sizeof(u64));
> -	intel_gsc_uc_heci_cmd_emit_mtl_header(header, HECI_MEADDRESS_HDCP,
> -					      msg_size, host_session_id);
> -	memcpy(hdcp_message->hdcp_cmd + sizeof(*header), msg_in, msg_in_len);
> +	intel_gsc_uc_heci_cmd_emit_mtl_header(header_in, HECI_MEADDRESS_HDCP,
> +					      msg_size_in, host_session_id);
> +	memcpy(hdcp_message->hdcp_cmd_in + sizeof(*header_in), msg_in, msg_in_len);
>   
>   	/*
>   	 * Keep sending request in case the pending bit is set no need to add
> @@ -800,7 +813,8 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   	 * 20 times each message 50 ms apart
>   	 */
>   	do {
> -		ret = intel_gsc_send_sync(i915, header, addr, msg_out_len);
> +		ret = intel_gsc_send_sync(i915, header_in, header_out, addr_in,
> +					  addr_out, msg_out_len);
>   
>   		/* Only try again if gsc says so */
>   		if (ret != -EAGAIN)
> @@ -814,7 +828,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   		goto err;
>   
>   	/* we use the same mem for the reply, so header is in the same loc */
> -	reply_size = header->message_size - sizeof(*header);
> +	reply_size = header_out->message_size - sizeof(*header_out);
>   	if (reply_size > msg_out_len) {
>   		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)\n",
>   			 reply_size, (u32)msg_out_len);
> @@ -824,7 +838,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   			    reply_size, (u32)msg_out_len);
>   	}
>   
> -	memcpy(msg_out, hdcp_message->hdcp_cmd + sizeof(*header), msg_out_len);
> +	memcpy(msg_out, hdcp_message->hdcp_cmd_out + sizeof(*header_out), msg_out_len);
>   
>   err:
>   	return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 5cc9fd2e88f6..cbf96551e534 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -13,7 +13,8 @@ struct drm_i915_private;
>   
>   struct intel_hdcp_gsc_message {
>   	struct i915_vma *vma;
> -	void *hdcp_cmd;
> +	void *hdcp_cmd_in;
> +	void *hdcp_cmd_out;
>   };
>   
>   bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915);
