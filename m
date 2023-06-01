Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CB671F61F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 00:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D3110E5F7;
	Thu,  1 Jun 2023 22:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D65A10E5F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 22:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685659154; x=1717195154;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2EwIrpQqTVyv+cbrR7wEoX0E+i3hLaxMKMivDQq2qVU=;
 b=ndv+zmePDe18iX1l+gEueEfmu23nHeFD7ZtG+29xC6Orl9X8BLVlQzjf
 5d/ovJhDKBryQdpBpO0CO7wMIC7cnWRfA1erAvHzAZFPO3N1x/A+Hbop9
 nKKV5ywvN8aw/L032cl5TZP3IVe1b7tBtvn+KdHNnp9O0xySMz5fymjh0
 qQ45jin01VsI+3QCFJgVfFAaFHN8Lg+yVN84ER3Nsn4uol9d1NB4XlAXx
 anXq4KVY1TKYhg2cictAJ27gsPBL134PgNa0vHnUaDL5ztE988WfqyEzd
 oonWrcIFSJqNhXINYsJE5/NgLRE5y5/kgMs3xKCDa1ymzVi/o1rry14mS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="355722946"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="355722946"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 15:39:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="685038068"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="685038068"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 01 Jun 2023 15:39:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 15:39:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 15:39:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 15:39:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 15:39:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MG1W5AAVZxMqUJwdaf+ygOUIylTryxPHMXG/bshv4VyxRC5J4c/mwvYOKbP6DNJkJZ4hK/L8frjg6edEGNGh/1Io8eOpOcYE4GEfJtuHTtba4SZWM1KosxMWXWOzJUW6jElawAGokBB4xJZCCetoZnJn+qIgNKuCvW603yMWvimvRRc0Th4BXnN8X8fUxpjV7K3w/nYNbQeec13qH/iBgyCxV0teXQ8DdeGe0GmiulDoMtZJPwSlA3QgfopSv/rgy2/ZffAr4xe2oVqvrdWBQ7eIXl2GPvkwpnJhezEJS+PJj8u1Zj/Cl+VgKdzAH12zUzJ+syYTOl18edY52qHQMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5U0xYQUDx1iexbm/3Mu7jNh9JkFNLi/c2KQtkXjdzw=;
 b=XW72DWVdRd59VhWCXMszQC9qOqaR112LMy/TDaYwcIyYP2BnO4EQtPigYZjkUOnT1ODw/wRUKD+lMlQiGVrIXBt7yvHMmP4pSfOi5S0KDdRhLelFqgbtFshbGrU4iDDbKp1EQzFydk3dKq3EHDA3FTpGjiyuKPhF+5stEPYHOYo2UbLIS7MARHMJ6WKkP4gfx5yM4CSeUs+IZPoQ1or2ku/XdRCelBCt0dqGyBr1Kyv+7RnpMatpRWBqxUssRwNTsMlmEfNwLIFOOnXwzKPY38sW7RczKBy3U3qdqS3pT73EVRCH/7bo0QZk7fFBtyF9IplDOlEIAc57XJZEwtNEXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Thu, 1 Jun
 2023 22:39:07 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4097:4a1e:9703:1932]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4097:4a1e:9703:1932%6]) with mapi id 15.20.6455.020; Thu, 1 Jun 2023
 22:39:07 +0000
Message-ID: <6d8fcf15-8204-da51-00ea-44d54c8a1d4b@intel.com>
Date: Thu, 1 Jun 2023 15:39:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230529114902.1528192-1-suraj.kandpal@intel.com>
 <20230529114902.1528192-2-suraj.kandpal@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230529114902.1528192-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0060.prod.exchangelabs.com (2603:10b6:a03:94::37)
 To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|MW4PR11MB6811:EE_
X-MS-Office365-Filtering-Correlation-Id: 54829bc7-d3c0-4f81-901d-08db62f10239
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9yZuS7mOeOA+9gxGV12bOKSS5P6CAonTnFj7dzYoC0OwUzGWDl5pynQvS/XUZehPHytrD3B9GoqqIrA/bxtixq0OY5qiU+ozje9uTFw5oYa7u9zUky16jzHfmYPlSQzHCWoQhGinC2pY36G34wzY9Bl8pCu69xGARWWMX4o1jpZmbzyCq86JCi5raV0aAw1YvmUokFwxmAZqXudBFTrb5+rQR8ghY1N14hzlIe3aQYUnxGzu6wtrk1jdJPG0/RCiXD5zZ1DJe/Ufri6Nt+NaXtnty5uMmjjuJsHlum7i5TUdj+cCs9G3qLDZ3CBk+jrIxIZDc+KusUbKq4parHnIAwy5X+7HwP5FzQwYttM9ZpZy2wl0zzAzha8cbq5UR2ohVF1efVX4+MwYmTK6NB7jQMJt2MOB4x8v3WbTRfcWj1DfA+f81x2Am/4mflyhbUsnQdfcZgin6uFV2Otsw8OXaXf8uUB44h6Di0QcMRVfVb5xx3jnUbUKX+rCX6D5IR11f5PH8N/4O0RzW07tgABnTjCD48aE4TKYbSTzCkGtSMZYoUFOeqik7SyXdq6yy4415UgcspIuWXylPfM4H/npPetjPHbu3ycA9m/Pax3YZ9ezVpItRmAHGZHUJaU0Us/gU5o4YOz3VIWr3r1b8XmkDg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(376002)(136003)(396003)(39860400002)(366004)(451199021)(82960400001)(38100700002)(31686004)(86362001)(54906003)(478600001)(66476007)(66556008)(66946007)(4326008)(36756003)(31696002)(6486002)(6666004)(186003)(53546011)(6512007)(26005)(107886003)(6506007)(316002)(2906002)(8676002)(5660300002)(8936002)(2616005)(41300700001)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1ZmNUQzd0Y0TkI4NGplVlRUY21XRnJmRFErZDN5UWVpVmxEVjJ2bEIxM0l5?=
 =?utf-8?B?WVRTcDA5SUlCd2xmblB5b1NsZnJjZitkNG1COHZXOEhNbTFxeHpnWU50clVG?=
 =?utf-8?B?UWlLdUZEVnJpZmlBSURDZ21EeVRCRFJ5Y0dMaDkvVWs4VlBZekFubDdySG91?=
 =?utf-8?B?K3pUUWZ3a3NRcmlMeDkrZkVFWW9sRVlUNms1UFl0c3hqd1dFeFQrN1NMb2Ew?=
 =?utf-8?B?RTdlSzk0dkRJalB1QU4vVEpkMjRGOXRPbjhSS2U4Lzd6dHNudVp4VW1KT0sr?=
 =?utf-8?B?RU1VYW11UmZtdzIzbG9aR280Z0U3MUJoOTJYRzZzOHVPZU52Wm9MSGhKQm14?=
 =?utf-8?B?Z25FOTRsS2ZQL3BDZ1pGU3cyelMvK3ZIQXJPNkFqVms4Y25wZFNoQmtHVkRD?=
 =?utf-8?B?TkdLOTV3TkM5OVY2MUJqYmVBTU1QaERhTm83bzVoZlJ2T1pxN01rVWU4MHJE?=
 =?utf-8?B?VzhtWGtWNkxxN044NXJBWE5xSnZPRlJzd2pwbkJmMG0yNnVxclRiZVMvVzFR?=
 =?utf-8?B?bWQ2cDBzR1NTTWprM0hLcVhoVDdmVDBuOUJnUEM5Q21Kb3d3T3NXazRzaFB4?=
 =?utf-8?B?Q0t4dk9uTDM1REVFVnpmWHlDZjYwNnhiT2dwMXYwTDZNTitZWU1TZ0tRVGkz?=
 =?utf-8?B?d00ySTYva3JrNVVSY3haS29CTDRhcE4wRkx0bGEvRXNBWHdWZHF4aXEvdGht?=
 =?utf-8?B?a2tBMDJlZFdiTGdlVmtJdkwwYS9qTXNIeDFaZ1R1TGdjYkg5V1BaelNXOGpS?=
 =?utf-8?B?UmVNMUlLd1hrbGJYOUFOTXNZM09IN09sMERwS0RjbDdteWVsUlRMQXZrMHRO?=
 =?utf-8?B?b28rUGE5QlJmaXhUQVpReTI2UnU1ekVHTWZKaks2YUIzWU96ejJUejVLRmpn?=
 =?utf-8?B?bnNIRVdSRFl1TFlQd1Q0TzlTNnVyZVNHVlFQSEhSMGwySzRnTzluWWRBdENa?=
 =?utf-8?B?RmlMZzBDSjhSKzE4eng1c1Nldlc1SGVVSWpPWDBkd1gzKy9UbEhtQW9VTVY0?=
 =?utf-8?B?eTd5QmpzNVBOL3dXTUV2amFRbjZ6WlJ4anhENytTdGhGakpuaXNrNmpuY1dr?=
 =?utf-8?B?SE1ZYWQwT213YlRvVWZuNFlGc1Nsb0dabjZtazZDcHhKQ1BLSE93VUtqMnQ3?=
 =?utf-8?B?NjAyN0FkTDBPQ1h2N2F2QWZNQWtPRTJ2eVlyNndjR0ZkUk9vRCtHOXZtOUwr?=
 =?utf-8?B?R254aldCTFc3aFdVd0k3Wm01aGFOZHR0dVlwcHF4blpCN0M4UUhra2sxMmVa?=
 =?utf-8?B?YUQ3M01aODU5bGZoN1lMQU52ZzRKU2FHaFI4OGRKM2QrbUJPZ1ZqL1FsL09O?=
 =?utf-8?B?ZG92YmNNRmMwM0FWdGs2LzgyVkh4cy9HUVoydkp4T1lYQVl5czlBODRBYXRU?=
 =?utf-8?B?Zm11eURVa2Fvc0xVVndORUlFQ3FsTDdIMFlwT1piVTIwdUJuRjJJUmo2cHVH?=
 =?utf-8?B?V0w2UG9XUC82a0ZrVHNSRnM3N0YydXcyTllKQUdRL3pKNFg1UERvcEpuZTc4?=
 =?utf-8?B?Z3Q1V1RxL1AyK0c4aHdxeWQ3L2t4WC9iekUyTjRUcGxJdzJMYjY1OEU4RkVs?=
 =?utf-8?B?THJYbzdOWnhJUVdBaTR5V3FvV2p5RFdvOFJHOHp5dHJsOTg5bzZqNXRRamp0?=
 =?utf-8?B?VzBPamNRWDBqcThwbUdIREE4bmhsS01GVVpOeC9NTCszNEhENUZpaDg0ZTRz?=
 =?utf-8?B?VFVUR3JIMmE5RjdWNXdGNm5zT0pFaWRSbDg5Zm1SS2ZRU0hpNW0vU09iaXRy?=
 =?utf-8?B?MS9ER1F2SERZQURyUlZrUXg0NmpTOFlkYVNCYUd0SDZiRUI1TWIzcXJnZ0xm?=
 =?utf-8?B?MTJQZGErelA4Y052MGloaDVWSnJJZFVMRkwzYXZyUE9RNENZVVhCODJrS3Ri?=
 =?utf-8?B?WVBhUVBqUXhXU2Z0R2x1dzZmSjdyelNONy9aT1JLb0w5YnpnTjE4N1NYTkc2?=
 =?utf-8?B?aHZrVXNWWlRMN28zUXFsWXJmQUdNRzVNYmFZQUVMMSt1dWZQb3ZPWVFvSzU2?=
 =?utf-8?B?bHAreVVQN1YwY2RkMnBjZXpNZktNNzhjd3N1S0FnMWpXbXhVd2FIN09PeDI5?=
 =?utf-8?B?b2k1N2QrS2ZUM0owd3NtczNsQjViNllLK1ZMdmxJdjB1Y2NONE9ubmNNNVV3?=
 =?utf-8?B?MTNCOG9jUXhRSllHa3BvN3dVN1d1SXNtdUNEODFIME1Lazk2RzBjdWtVTkg3?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 54829bc7-d3c0-4f81-901d-08db62f10239
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 22:39:06.8926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GnN1uz/9t8gz7o4CiuiL+LofKmSb3cNwq0bgb4+VEfJQva1IepVePnfS/KVvet0umusICaoIFjqQNfDxr+5WUIZHJ3XsbppK/PIYYBdbyVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Allocate a multipage
 object to hdcp_gsc_message
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



On 5/29/2023 4:49 AM, Suraj Kandpal wrote:
> Allocate a multipage object that can be used for input
> and output for intel_hdcp_gsc_message so that corruption of
> output message can be avoided by the current overwriting method.
>
> --v2
> -Change approach from allocating two objects to just one multipage
> object [Daniele]
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 55 +++++++++++--------
>   drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  3 +-
>   2 files changed, 34 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 7e52aea6aa17..72d1e261d0a9 100644
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
> @@ -668,7 +671,7 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
>   	struct intel_hdcp_gsc_message *hdcp_message;
>   	int ret;
>   
> -	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +	hdcp_message = kzalloc(2 * sizeof(*hdcp_message), GFP_KERNEL);

As far as I can see you only need 1 hdcp_message structure, so no need 
to double the alloc size here.
With this fixed:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

>   
>   	if (!hdcp_message)
>   		return -ENOMEM;
> @@ -691,6 +694,8 @@ static void intel_hdcp_gsc_free_message(struct drm_i915_private *i915)
>   	struct intel_hdcp_gsc_message *hdcp_message =
>   					i915->display.hdcp.hdcp_message;
>   
> +	hdcp_message->hdcp_cmd_in = NULL;
> +	hdcp_message->hdcp_cmd_out = NULL;
>   	i915_vma_unpin_and_release(&hdcp_message->vma, I915_VMA_RELEASE_MAP);
>   	kfree(hdcp_message);
>   }
> @@ -769,11 +774,11 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
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
> @@ -782,16 +787,20 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
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
> @@ -800,7 +809,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   	 * 20 times each message 50 ms apart
>   	 */
>   	do {
> -		ret = intel_gsc_send_sync(i915, header, addr, msg_out_len);
> +		ret = intel_gsc_send_sync(i915, header_in, addr_in, msg_out_len);
>   
>   		/* Only try again if gsc says so */
>   		if (ret != -EAGAIN)
> @@ -814,7 +823,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   		goto err;
>   
>   	/* we use the same mem for the reply, so header is in the same loc */
> -	reply_size = header->message_size - sizeof(*header);
> +	reply_size = header_out->message_size - sizeof(*header_out);
>   	if (reply_size > msg_out_len) {
>   		drm_warn(&i915->drm, "caller with insufficient HDCP reply size %u (%d)\n",
>   			 reply_size, (u32)msg_out_len);
> @@ -824,7 +833,7 @@ ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
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

