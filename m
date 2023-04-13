Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F28076E16AC
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 23:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F5E10E021;
	Thu, 13 Apr 2023 21:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881D110E19C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 21:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681422659; x=1712958659;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LispTNlG6F1uaZLbUeARoiEpFxp8hNruOHkbr6lfWUA=;
 b=jHNv8bgJOA2K36so+OpAkoasl+GkSNqQRppaGhIRDlQ3wwB7SqeJ4MUT
 vC/qiCsZxtf7vX+SCYXVqb4bc2UmYKXqbbUonX4sRMeyOhnRsoF/ND964
 vj0w8Yd9hFvsDE0nV6v2meHQgpadynDAOuCKYA+oqNkOH51sTnFynsV7c
 nchbEt2ZzJIc50Osj/fmHhb54paAb2D8qRcQ+bed2HTNpv50gHbje3QWc
 dtpo5r4R83R2s4jlhZ0fesQYUtpVBS8p42higuhWLf0Jm1/T+oxhoJpkV
 mfVChs3s//1azGJHgY4JK7GVVlytNvpeEKYz0RkMTl5hXk1970x/hSt8x w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="343072237"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="343072237"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 14:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="935757470"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="935757470"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 13 Apr 2023 14:50:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 14:50:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 14:50:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 14:50:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hIQ6MyT9RNfM+powjo44a7zTugjDIqU+7ZbKr11SguZwXwIsaO+joatYD1RZisJvLNtJEZbRlVDGaxM8jxxxtApCS8+84TJlXWojLIRlUV2edw0SPZwxT9QWZr4lbkEH4kvRz1PLw9wJTo5LvSDB1U0UvSVw0fwrd/vjqB6VL0L4Qy0O8yhKhPTgXNFINUG/AQ2Xs0hhHRgN3yrlcN82DMF1joQA1hXA5bVympxmgGMuSPBbOQP16I14w5hY/w54NDFx3McjDxp5rqSeuKRk3P2BkpsAYjnxSwZZozBjEPFPWOr+6pF0o074bw7WPhBnPtQbps6r1RYWfcVczNwP1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SJeXh7gF+3OB/O3T3452ZWBjPveUQEst78aBFSUbIfI=;
 b=mzE3F2iqjw7OdPJo6V1/31ZA7Az8oVgJN+gdH+NsDObsQEoeFaPED1IDlQENcAUF+3aVMJ3jDb3ukkT+qcBVsM/dxb2rXez7h5QL6ZQMChbHdNj6/USgLywMOTFvvhkn769xkD/qGtip8lS+FSw+yD5EYiRBRA+Pg9JJmBIOfU1ZLBzdyt0cQRLCx0QTNVIdFNs++eme+4BtbN78QWU/J1KqEICkitXUfbhTPv+FwDttZdWWaYX6kGUBJCDaUCktEMgoSWev9VXEyReTzqeoX9UambkpF9vVZ9lOPMmXK8JRryRELT2J3IGxmf2OD7FB0dPTI95E3uLOWhM9mD4NXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 IA1PR11MB6267.namprd11.prod.outlook.com (2603:10b6:208:3e5::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 21:50:56 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4ae6:750e:a237:4eb0]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::4ae6:750e:a237:4eb0%7]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 21:50:56 +0000
Message-ID: <c8b9ffb8-865b-c593-4458-07edb0ee482e@intel.com>
Date: Thu, 13 Apr 2023 14:50:54 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230413200349.3492571-1-lucas.demarchi@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20230413200349.3492571-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR10CA0009.namprd10.prod.outlook.com
 (2603:10b6:a03:255::14) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|IA1PR11MB6267:EE_
X-MS-Office365-Filtering-Correlation-Id: a5ba1ae5-02bd-406c-0321-08db3c69291c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2bGYiAPDPCviIH/n+WTLF/fIocgRpG+vHAiy5m2pzzIuo/BvCJxxf3dSOOvpU9uLQcb030cSSeVVWsFhKOetKMu3jE6Qee7idbIClNZKCr0eTd7SaytLs5aIQG3qk725gVSQ4ucyMeccXgYjLwtDH/RH78eaJVEls6ByOl7sYN4a/SCLbL0KwxxhO2d9gvHpsl4/622lE2wNNojhl6QYKbDfnYgrL78k2vtexeADKp3FjJWEq6acc5Q7WshVWEJpcc5likmTLbSBy2A/Yo8mU97mOnm9mPWd5tx9PIpVwAc0NoJdZzEw6KvAUUAFxKzPlMlwbAzymUUzTOoBRE6JAisr7ZbstwSinTwG0jOg+g1mYvXM37oB7EDQ4bQGfAlN4+RmsZQ0epCzXaZlIebnGJ62VcGuSZiDIXWIK6Z46HquKpO1ZT42m2lnTssY+7lX59MvA91JqFNco/MAtP4nFvK52kObuRoqjNj8wQRB5+IYGP093SXbQlnlbMGH0DvIoQ764zHtKCo47RiubhWwtTL0YLmbS58X5Je34Ybc77U2LgYWoZcCeIFsdFYu7FmYFepsbXruKfCM+IMddkbJrYRrmqwfNYz6Y1/1Rf0ZlYLpnrxd/uDmnHlLe1aZOFFE/DzyNll5gkCVu8/kDIYswA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(39860400002)(366004)(376002)(451199021)(6486002)(66476007)(66556008)(36756003)(4326008)(66946007)(2906002)(31696002)(86362001)(41300700001)(82960400001)(5660300002)(8676002)(8936002)(316002)(38100700002)(478600001)(53546011)(6512007)(6506007)(31686004)(26005)(2616005)(107886003)(186003)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVp1Z1dxWFlIKzFqVmg0Q3Z5M2pGVnN4ZmxGTDNzZU1uemcvaHljN2RZU0k1?=
 =?utf-8?B?UGxsTUVmRUM0WEtmTjFiYzdIQml0akpyR3FnSWJLZmZYOXdMSGR1cWNWOXNz?=
 =?utf-8?B?dDIvVEtZaXFaa3hrRUxlMmNCeXp6bDNBcXg5UWlqNERZMG9tN2ZWTmxhMkM5?=
 =?utf-8?B?bHlWN25vcnhzbDVQTXhaL1g4emhWMFFpQVBNeVF3QkZsUFZlM21YN3BvN1Fa?=
 =?utf-8?B?dFVER2RjZ0VDVTZpbE5keXFCSnhweEtONEhuazlGY0lhUFF0S1o5QitwTTdk?=
 =?utf-8?B?aTZxQWI4MFFpQzRKcG51dTFoOHJIekx0K01sWmFidGZuVEhmdWN4dldVMzN0?=
 =?utf-8?B?UENmRFd4Uk5ZWGQxT1BaUmRvdTZLQjNyR3EwRUJVR05LZk1IN0tENjNMeTI3?=
 =?utf-8?B?QTZQaUU3Q1BCYTVaclBoYXVqdEdHdExWSVY4QnV4M3pmeEt1UjZQYTFpTFZV?=
 =?utf-8?B?VDZiaFY2K3RwRlpsNlF1Mzd5L3NQbXpJeDJtTndoMkhCbFd5eW9yWFdIMVNv?=
 =?utf-8?B?dHlnd1J5MjRKZnlvM0VFK0YzaVhkZEpUaDYwTlNVRWF1TkhIc2lqK1Zlc3JO?=
 =?utf-8?B?cVBSbkkyWTZUMCtiQXBkU1hQZms4T3NhOXJHdlhOeUFKVHJOZDNCcDlmY21j?=
 =?utf-8?B?NFVaSFNQcVFKTjNUTWRDd2tQZGRPeGJzN3lsOE9hVmxKSXhVRkdvWGxjUjJs?=
 =?utf-8?B?OFZweHN2NDduQ2txMGthU1k5djdpZjNhNThVWU9nMXhxcy9DcUpacjdTTGMw?=
 =?utf-8?B?SCtOd0xZOE1oV3dyWWl3UkVUOE9UQlRmK01RVGdIUHRzRzdoOEZ1Q3F5RFEy?=
 =?utf-8?B?enBhc05VZzBFWXBiSEtPVEVlajVHVHNaSHFuRURjSWNoeVhkSVhNNWNDaGNT?=
 =?utf-8?B?VFFuQjFmZUt3VmxwUHdTdlpJTFZwMndSZkRrL1FRUHVkeFpqS2xWOGtKTC9D?=
 =?utf-8?B?UUJxZ3JyRzJHeWc1TTlJTXlBQVpHZzVaQTROT2VwNzNhUjdldTZSdEcrRjJS?=
 =?utf-8?B?ZjZTQ0dtSjJqK3B3bDIzckVSczFJdDdKc2M3SStGVWlwczhrOXh2MFo1R3NS?=
 =?utf-8?B?TnptTTgzUi9ISnhFUTdNV2tCK0dvQmc4UU01NnBiKzQ2YmFLZk8wbnFZRm52?=
 =?utf-8?B?NkJyTDRpTFNMR1B3WjZ4YVQreVZiNE1CK2l0TW1yTW5JTmZrTnlRQkV2RFNh?=
 =?utf-8?B?RVFrSTNweExaclVSd0tvMlJLSy85Z3Vpd2NxallZUWp6dFVKOWxJQzRDSFBC?=
 =?utf-8?B?UFVBdE1lM1lHVTFIWkh1dU93RWxwQVNkSXYxZ1grT29wcVo4MlFNbmFZZXdM?=
 =?utf-8?B?TVdhMnZSNDBBeVpXUjlZY2dlNWx6dzVKZzFnOGlCOGRFYXA0U0ZURWgyK2RQ?=
 =?utf-8?B?d2JQV21lVFJZRFRmcUFzL1lTRlpqdTE3aGR6WEx0Qk8rVXRXLzIrOUFDbG9p?=
 =?utf-8?B?bldaWldmd2o4MExndXVjVHFFYXFDZXAzNy9YcjdHbUtybkxmbnZTWEtqVFF3?=
 =?utf-8?B?OWVPVzhkaGtjbzVtSlRVMFp5RHM2RGxSdFN0elU3VURBZEVEWnZlR1NvNFhy?=
 =?utf-8?B?S1AvWTlLVlkySjgya1MzWnl4eGFaUTU4NCtuTFYrOG93NmxuOVBvdDlmWlpB?=
 =?utf-8?B?SHBhTC90MHNrWmlSVmk5RFhYR3M1ekRIcEw3OXNSVUU1dTRuc0lWQ1o1dlBw?=
 =?utf-8?B?U1ZUOXJnNFR0QjQ0Yk1RbUZmTGpPcU9nRFFIcEZzcUtjODZBdkhuMXZxeklH?=
 =?utf-8?B?N0ZpZEQ3WWFpS2RTZWdTS014bmZ1V3VGU0FSZ1JOVXBkTlBFMjV2S0QvbGN3?=
 =?utf-8?B?STd5MmVVMmJ5aU1HNjNUUThVTVBvTHVnZllmWXNDMzNwbDdiZkltTE1WZkhL?=
 =?utf-8?B?dVN3Rkl4UHFYTnFUOEYzZ0JVSFJ4S2FyVjVaUXJoWnA3MGF1Wm91ME9RMDRS?=
 =?utf-8?B?ZExTazByWUdWS1Q4K3U2aUU3Rk41RnJDTitzR1lZbGtodnJTSHFMb1FZUTFD?=
 =?utf-8?B?czRXb01obW1aQXJDeEJNZ3JCMjY5eGoydWhCNVdjUGtqTSsrUE9VdWIzNlQy?=
 =?utf-8?B?ZjFDdWF0UUFyaHcybWpvWlRXL2NGclFtYURXNFhkMWhab1hibjBoMm8wWmUz?=
 =?utf-8?B?UmE4bEx0R2tFbXMrWS9mZFlZUDMwSUJMTDFubDgxNjEzTll3SWVRMUhjaEMr?=
 =?utf-8?Q?mtWSQJAFh58Wrk+KZr787dg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5ba1ae5-02bd-406c-0321-08db3c69291c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 21:50:56.4769 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P4OMzS/KT+PrWCToe18N7A65QmnXh8ObuPMWatFpRS8BT1ChxTTQztAEQyxHq88dmaFCb1WEFyK0EX4j0qILmTuP7HymCCEDojIHkJZtiug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Avoid out-of-bounds access
 when loading HuC
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



On 4/13/2023 1:03 PM, Lucas De Marchi wrote:
> When HuC is loaded by GSC, there is no header definition for the kernel
> to look at and firmware is just handed to GSC. However when reading the
> version, it should still check the size of the blob to guarantee it's not
> incurring into out-of-bounds array access.
>
> If firmware is smaller than expected, the following message is now
> printed:
>
> 	# echo boom > /lib/firmware/i915/dg2_huc_gsc.bin
> 	# dmesg | grep -i huc
> 	[drm] GT0: HuC firmware i915/dg2_huc_gsc.bin: invalid size: 5 < 184
> 	[drm] *ERROR* GT0: HuC firmware i915/dg2_huc_gsc.bin: fetch failed -ENODATA
> 	...
>
> Even without this change the size, header and signature are still
> checked by GSC when loading, so this only avoids the out-of-bounds array
> access.
>
> Fixes: a7b516bd981f ("drm/i915/huc: Add fetch support for gsc-loaded HuC binary")
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 21 +++++++++++++++++----
>   1 file changed, 17 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 1ac6f9f340e3..a82a53dbbc86 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -489,12 +489,25 @@ static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw, int e)
>   	}
>   }
>   
> -static int check_gsc_manifest(const struct firmware *fw,
> +static int check_gsc_manifest(struct intel_gt *gt,
> +			      const struct firmware *fw,
>   			      struct intel_uc_fw *uc_fw)
>   {
>   	u32 *dw = (u32 *)fw->data;
> -	u32 version_hi = dw[HUC_GSC_VERSION_HI_DW];
> -	u32 version_lo = dw[HUC_GSC_VERSION_LO_DW];
> +	u32 version_hi, version_lo;
> +	size_t min_size;
> +
> +	/* Check the size of the blob before examining buffer contents */
> +	min_size = sizeof(u32) * (HUC_GSC_VERSION_LO_DW + 1);
> +	if (unlikely(fw->size < min_size)) {
> +		gt_warn(gt, "%s firmware %s: invalid size: %zu < %zu\n",
> +			intel_uc_fw_type_repr(uc_fw->type), uc_fw->file_selected.path,
> +			fw->size, min_size);
> +		return -ENODATA;
> +	}
> +
> +	version_hi = dw[HUC_GSC_VERSION_HI_DW];
> +	version_lo = dw[HUC_GSC_VERSION_LO_DW];
>   
>   	uc_fw->file_selected.ver.major = FIELD_GET(HUC_GSC_MAJOR_VER_HI_MASK, version_hi);
>   	uc_fw->file_selected.ver.minor = FIELD_GET(HUC_GSC_MINOR_VER_HI_MASK, version_hi);
> @@ -665,7 +678,7 @@ static int check_fw_header(struct intel_gt *gt,
>   		return 0;
>   
>   	if (uc_fw->loaded_via_gsc)
> -		err = check_gsc_manifest(fw, uc_fw);
> +		err = check_gsc_manifest(gt, fw, uc_fw);
>   	else
>   		err = check_ccs_header(gt, fw, uc_fw);
>   	if (err)

