Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B49D5230A7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 12:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCBC910E89A;
	Wed, 11 May 2022 10:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C0310E8C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 10:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652264892; x=1683800892;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=494yXC5gez7qDvOcUOwH02TepBmXA8jN3PzrL9Ou+PE=;
 b=dXA3kXc3ceRyoKR8Fm9+16sAt1eBQKxdAW8F1ufhdShAmisutvJ6LjUf
 W2lxbf1zZYijCFaazYTiOEuU6jyQ4fMNU7fwi72I9Kv9fd9fZ/4l7ZUib
 hujbBB63+hCXDCcQr+79Ir31ahe4ccOhFHuNBehX7/8r8ahPCvED8D/Rm
 dhXOpXaBNkJm3MOQFr4IDG3XMcLVvaPYmbpecb4l0TeonPKjGfY7QyEOI
 PPTppeY4tfBOMDc6FTygaMIwb3d52SjuFF3lT1hNRH/vCGBKFiMguP0JJ
 HrXmByUjG6Ezxs7cYCrPjpRVZurHQKC70aqTLGNWfcfgdMy6hyEMuDN4A Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="249554559"
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="249554559"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 03:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,216,1647327600"; d="scan'208";a="814411773"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 11 May 2022 03:28:11 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 03:28:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 11 May 2022 03:28:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 11 May 2022 03:28:10 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 11 May 2022 03:28:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hEKUUA3budYKom/ukSlhw1Xwa0EsriLtJ6k04j4gvsYUgqRYdGLs+GANVPlIlQH9Pep89EojHwH0kfvqjxurlJXm7FyOeTo/XousAMb1wT8gl7WdnPeyK/V3HGH+PXZVdZOWro+wrIuLsVJXbBIi1S2umQ6jzPvsgZrZWlh9+IVCEz5TpoPQw4LbhtT3ey1IOG3PmrKyi4Oqwy2OvOLJ+S2/qCNsavyVgeGSdXAdlQpbNsx6LfbvHHha+G1QT4w9TI5GTJP21jpHQBgg39H1vvrxB3X/nogvMoCssEBxejZRn2XpO2suzz5MFpcwiqxIGj3hkRiEJXIG9uW4OWWbEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FTGhTWoPHu3ukf34z6V/N0nZSgUSXCC46CXsKfk9F0o=;
 b=h4kduDWSuDpFIe++9EmRkr5b26tKP9rblbRxptqx3h6xSWqDLQeEd2wYSten/Qff6dtWeVWkLwfeFm5ALXgvMeflLlqhJf4fxNuMWd1EPkLATSR754YsM74ow/R4ohGx2eAVG7P7qxG0OZvJxvyGTW33gjUPnU2ubZLiPxbNm2rwCfy2hcZAjTWtXJDOb6ZsPftnoBvejObzROCYMTRF9UEjwsSamh4U8atbAGqtNsTrsbd5Z3rOdOQaNBPJ/uNTZgRHn+rV6uvYc2YO4l+TJxMppmccAL1mEGusY05DtLbR1TWaN73aTjVUCIrM+jQMuOG1JU9u0/DUl3rUc0g7uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CH2PR11MB4312.namprd11.prod.outlook.com (2603:10b6:610:3a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.22; Wed, 11 May
 2022 10:28:09 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 10:28:09 +0000
Message-ID: <71556807-0efd-7c79-1d9d-5674d5b46ba1@intel.com>
Date: Wed, 11 May 2022 12:28:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Ramalingam C <ramalingam.c@intel.com>
References: <20220511102509.19927-1-nirmoy.das@intel.com>
In-Reply-To: <20220511102509.19927-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR05CA0049.eurprd05.prod.outlook.com
 (2603:10a6:20b:489::9) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a90fa692-159e-4e42-723b-08da3338f160
X-MS-TrafficTypeDiagnostic: CH2PR11MB4312:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CH2PR11MB431246DA41DE51236875137399C89@CH2PR11MB4312.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0PEt8sVK6/LRZe2yJ16KrqyoEt0SKA9vBpL0lTt2yzUZNV/dEQv4R18LsToFqQNZiRZvvXTXGH7I0QUSrwRq7DYtAJ3VFwDoUL72QVHpHQOaCaof4eqLDaRV3zji2l+Bhva5rcPrY1jEr6HFcIf3+U0/MnpWjPCJI/yUiTyp5idnxGftH11KIlKslzggcAHlgNAtXLLvzHWQImAr2YlZ31lo4B4dq/DfizWsaA5YKb+fEnuIpRR5GWNEOAneEnv2BGhq18e/6Y3YJEeWLjQPJeSbWGrAiGz9zWvQXSVE4mIjABurmopAJyb3tgDBp72l/GIjg6AgzwpVtKOpuvnkgqU4GbVOwJGRgsf8lPwW9/XXuR6/qyMeDiuUQyKP517ZhpVK5fMmq/DwnbWOaKowZbXvbuWApKv6IoHObjVhmm92e3+j6HMASSpkIYxsczd/gDD0Nt5ytbtgwQcoYltY5Cc8hdGzZCNIi5BiFrvDP5+ZKTE+XvGuevIQ42850nktzWPI6kyD6r/T0Zrt4oCy1T87hJQWPgbPTTtLyoMLHSmxM8lzvhmrJpKqqV4VpzMnaNHkqRHdnBqn/xRwCPIlgyc+SOdL71Ou//r+YdcJW/M0jQx0v2CBjTSEGKisXwbH4GPyj6IvXs4t6y+upjkF8C8WXHonXVu8QpJxOxsS1730bMX7Nnv3B+pNxywxiqI3ad/kTB6tNRg/Pz7T3S7yPdYw6hIYbHKHRa2iFBgSbxI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(6512007)(107886003)(508600001)(26005)(316002)(6506007)(186003)(86362001)(6666004)(2906002)(5660300002)(53546011)(83380400001)(36756003)(82960400001)(6636002)(31696002)(2616005)(37006003)(66476007)(8676002)(6862004)(4326008)(66556008)(66946007)(38100700002)(31686004)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWJxZFczV1dyZUp4OHlOYmR5L1M2VVoyQlcwdXpackowc3VMYjBnL0RSL0ZD?=
 =?utf-8?B?d2NFQXZuWVhlWURxUWhUeWhITVpnY3JkYlRyci91bWdHRnRtd0RCL0FHNVBU?=
 =?utf-8?B?TUN2eVdtMEEyd3ppY3N2U0dsUTVFakJIamhucjVkcCtraHlHcE11ZUZQNkow?=
 =?utf-8?B?ekdabktiZ0VHNjBvK1dOT3QzTDZKdnJsdkJJRDJod0VOdWhUVmoxcWhsQTZE?=
 =?utf-8?B?YVl0WElUQ0I0NWQvTFJtdjd6UWl4YlVaZ3VpNUQ0Q3JHUHkvNG5DeVpKYnlR?=
 =?utf-8?B?d3VqOTVrUnVTVVdrclFBVG4xRTNmU2lqYlUwcXdaWlpoNHMzQWdkczAzZHo5?=
 =?utf-8?B?eHRKNEZEVG5IL1JncGRiSG9RSzZEUU9oVFFEamF4MG1XMGdMbnpjblpaN1Bh?=
 =?utf-8?B?Zmh2dER0Mmx2bVZxMHdJbDJIdkJIWG1lbEdBUE1OL2d6WWlvS21Rak5BR0Rx?=
 =?utf-8?B?RVlOcXE4Y2U0Tm1rUlZZVysxUno1U0NUNlkxVlZpeTFUQVZoN1JVUENnajNZ?=
 =?utf-8?B?U0lsTnJxS0FlSzJncDBURHg0c0Rxdm1ORS9aYVpFL1MvYW1iNk1DRkJyV1ZT?=
 =?utf-8?B?WXV1R1dZMGt5RHBlSWE4RDh1YzF3azR1Y0p3RWh2bUJibTZYTS9JbGpQTjBD?=
 =?utf-8?B?MG9WMUNVOWNIVVpSYk1VdVF3Z1h5UCs5UFBWbHllZTNua1A1VXpWMnhTSWRG?=
 =?utf-8?B?VjFYbUhKbFVjNERJbzVFZ1hhM3lwbW1jdjZTVG1WRi9MTDJUWC9vR2tYZlVa?=
 =?utf-8?B?aHNpVXY1SjRjK0ovMHY0R2swWEFYVCtSRHhjRUdQZEVDZlRtZ0Z4MUNrYVdX?=
 =?utf-8?B?QWxINHBubi9PUERZM2c2VEt4cHdDRktIQlgraGhTZ1pMZVpMQlA2TDM2aVR4?=
 =?utf-8?B?bityaEo4MG42MndaTURzL1BqL1lxYTQ0Zm43WXdITzQrVlo4Ynd6ZUc5bVps?=
 =?utf-8?B?S2JrUHRnMnZsWU9vQnNURTNkYWhFTHN1dUtlVUNWeEdGZTh2YVRxMEhBdHdZ?=
 =?utf-8?B?QkV6aHF2MEFQZ09CSE1EY212QzNDVzJmV0Z1NTU5cEFEQ2YyWG14SFBhKzdp?=
 =?utf-8?B?N2VLNjFkVTczZWxKQ0FUeWswTGRVaVVGeGthM2F5bDlVRW5ubGhueElDNEJq?=
 =?utf-8?B?TmRxSGpBeW9KRDRvbnROSnhLUng1dEE3d0xRQW1WUi9hZS94SSt6dXc2azBt?=
 =?utf-8?B?NmI0dEVwT2lGWkttb1JlQnQxbk8wZ3RlVTRJTy9saGpjOXo2L3hRNFRWZlFn?=
 =?utf-8?B?T29iTTdYeG52Y0c1dUlkT1RRdkVKWUtGYkJVV1h6ZXJla1EvUUFRd2Ryd04w?=
 =?utf-8?B?NjVwNm1tMHd4RENqQW1vVnFNa0VPQkVleDhpR01Fc3Foamd4bEk2SlgyTTBx?=
 =?utf-8?B?NGhtVzJWcy93TGdJT3k0dFAwOXdyUVFrQ1VpQWd5bkFtUFFOYTZmendEckQz?=
 =?utf-8?B?MGhwUE9PWU8wSXo5QWlBRUttMW1PSTM3ZHViYUdpNUcxa3hUMGl2TWZTQmF1?=
 =?utf-8?B?eFMvUnlHeFVyL3p5L1RUc0hXeVVJMG1EakJFS3VqK3NyZkN4b3NzK2E1RDB2?=
 =?utf-8?B?QmxsTDNESkpTZmhPdk8xSmhSbnJodGVLbzM2SE5TeTVLSk1iYkw5MHAxOU1E?=
 =?utf-8?B?TjRDc25Ha2J5b1RNSmJLVnhOVXd3WEVLYjF0enB2dm1yK0FXWXRUY1BuWjhW?=
 =?utf-8?B?RjA0UlJkYjE0QnVib0hxRW9wQWFvb3FrMStuQ29yWU81SUFBUTAwS21HNnkw?=
 =?utf-8?B?UUpKWTJxZWJ2ZEEzYUNjRDNUVGI1S1d2VWNuS2dPdkozd0VwRE5IZ2pHQ2RZ?=
 =?utf-8?B?YjJzTUtkamdWcmZzY3Eyb0p0ZkZ0WDg3WU5KaWozNUhLZ2JqMXNmVnRHRE9I?=
 =?utf-8?B?VVZsZVYrQ3BidVBXQUZ5L1N4Z1p6VWtsUGxIcDArN0pYdStzWXJIY2FheTAz?=
 =?utf-8?B?VjFnSUhMVXZwL2RGaEZjekdJeE9BRXc5L1N5YTZBRFpyazNzeXJPdk5DVmh6?=
 =?utf-8?B?Wkh2MHppUjNlbm14Y1RmYnkvQkw5VGl2VThqWmZzczkvS0lIeCt4MXpBQllu?=
 =?utf-8?B?WWUrc2loVTNlRyswd1dYWTJNQS9OckdvVEZ0U2ljV0tqOUJpSUZ5dTZpeVVR?=
 =?utf-8?B?U2xQSllqbWhWT1dYeFYrVHdZVXdCRkdMUDRudVI2TlVLbGwwWTIzemhiN3J6?=
 =?utf-8?B?TjJ0NUo5ZXN4d3ZlU1NjZUVtemxhYkVnY1dJc3BleWxTQUdvRGFhaS9tRUN2?=
 =?utf-8?B?ai91SHFpMWM5RWppb2M5ci8rZnFxSlMwWkRrOEMyaE40ZC9tWlp6b1RnRE12?=
 =?utf-8?B?L1QyZlRER016U09SWi9mTy9Rb1Nubit3QnMxMjlMWnlCdzZkblE2Zz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a90fa692-159e-4e42-723b-08da3338f160
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 10:28:09.0286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QGCC50Rb1Ui6MSOgKA8T0DVnbM+yknDULNom2IiGoFP0R6oZvxibHsPZhy+2Cx2Jk2yqTBOQP9sdy/hEEHcM2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4312
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: don't treat small BAR as an
 error with CSS
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

+Ram (git send-email didn't add Ram to the cc list for some reason)

On 5/11/2022 12:25 PM, Nirmoy Das wrote:
> Determine lmem_size using ADDR_RANGE register so that module
> load on platfrom with small bar with css  works.
>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
> I once reserved a dg2 machine with small bar and module load failed on
> it. I can't find that machine anymore hence sending this as RFC.
>
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index f5111c0a0060..a55eecac104e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -100,10 +100,19 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   	if (!IS_DGFX(i915))
>   		return ERR_PTR(-ENODEV);
>   
> +	if (IS_DG1(uncore->i915)) {
> +		lmem_size = pci_resource_len(pdev, 2);
> +	} else {
> +		resource_size_t lmem_range;
> +
> +		lmem_range = intel_gt_read_register(&i915->gt0, XEHPSDV_TILE0_ADDR_RANGE) & 0xFFFF;
> +		lmem_size = lmem_range >> XEHPSDV_TILE_LMEM_RANGE_SHIFT;
> +		lmem_size *= SZ_1G;
> +	}
> +
>   	if (HAS_FLAT_CCS(i915)) {
>   		u64 tile_stolen, flat_ccs_base;
>   
> -		lmem_size = pci_resource_len(pdev, 2);
>   		flat_ccs_base = intel_gt_read_register(gt, XEHPSDV_FLAT_CCS_BASE_ADDR);
>   		flat_ccs_base = (flat_ccs_base >> XEHPSDV_CCS_BASE_SHIFT) * SZ_64K;
>   
