Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50131701D05
	for <lists+intel-gfx@lfdr.de>; Sun, 14 May 2023 13:13:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209BB10E0F5;
	Sun, 14 May 2023 11:13:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82CF910E0F5
 for <intel-gfx@lists.freedesktop.org>; Sun, 14 May 2023 11:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684062804; x=1715598804;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ao9KEZkCGJGQLgn7hjibyRlp+RDJ0ZyM+V2A9mV2psg=;
 b=YrCAVibWVuXC+Uwj8NAcyOk1mvVNrVKkijiUSwKrkQf0XXSpOnX12UFk
 vJy+cwTAHERPtPu+il1KQaJDECye57oVw47kz+R3+f/7wBSSAdN6qvx/3
 8AjfdEzgOE79CVoHIsPjmcew1iV4dgUHiC96WOQ2so0YkIgnvvgvQxymP
 rl2QBLe11KVrLK4HO6W+ITyHn/VXorvhFrb7j1mbGTCUBl+vyVcKfVhMC
 cAc6XBeFVKaTkvo81FmrHcTDEu16rKLIqWtaetzDZTH2pXsk15zmkQ/u2
 8WE/2twD9wKv2nNhBpvkvD/3vofv6tJEiOAShLSVkScTjiLSU+mBXGFYd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="354183596"
X-IronPort-AV: E=Sophos;i="5.99,274,1677571200"; d="scan'208";a="354183596"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 04:13:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="694729006"
X-IronPort-AV: E=Sophos;i="5.99,274,1677571200"; d="scan'208";a="694729006"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2023 04:13:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 14 May 2023 04:13:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 14 May 2023 04:13:22 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 14 May 2023 04:13:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDXLWDdc/eNX6t21pTwzK0GYu+MTez3Y4AGAmZVlN37nvP9PxF2yGXOeN9QuX1lQzGkBH24m4h3G5sVj8OWjqvPyGxyC0LotStdbUJUXw2Ijp67Zl1BxBI7myS05ClnqkLRr1uF7Iqq/vBxFLH1xmF8hAElRbO2UxhvlV3Pv8Gja/bUYqcrpSrb34TF0akwQJMnL253SBw27HvP1c8fTM2CI5w9VreKQP6V1uw0SNdbJgsg/+4z4iZiOTzJwor5RA4AR0FtsL4LTHaYTzMwz1UyLyKIg9naAiVVhGE9i4M60gQPkhoonUVE5m4hZ2EY5/2koiEiff60Ikp2Df8UG3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojlAvzWSzDWcjLeO46Ni6K9JAFn/VTWohGRwZb9LDuQ=;
 b=IBa0RPDaNf7XAqyBRGFsvd9G0TVRMNayrLLVAlDAwzY1qpP5CBci/p6qjast70y5drQQtgUard2pHIofx3DCqFn2zfsUGpmhK3gJ2jUsL2QkxyfJveIpa/0ExQLf9me+HGINnF3G8GcQ/d8M5eBBk3Z8ve7+vE60nUUzhfYZ/JeSve8aBFhcF/MNcOy3Mg8bd2GFEg6y2cE2gimjQ9r0VmMoK59nUyqRW27TmsVXsd1LOHvDj1XPAQXkDUrsL+rA36qkzgeTSPnK6GFSWL+QZvN/T+VLigrl/Jd9OP06udcM2s6F0B7MuVyK9kdeMM34ywXL6DAEZhR2VVaxXehYWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.29; Sun, 14 May
 2023 11:13:20 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::f6a:a1de:83ec:b111]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::f6a:a1de:83ec:b111%6]) with mapi id 15.20.6387.029; Sun, 14 May 2023
 11:13:20 +0000
Message-ID: <3473435b-7d4b-94a9-37b2-4249683c199d@intel.com>
Date: Sun, 14 May 2023 16:43:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230513021438.185352-1-radhakrishna.sripada@intel.com>
 <20230513021438.185352-2-radhakrishna.sripada@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230513021438.185352-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::35) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 2414aa2c-3da5-4cc3-b419-08db546c3918
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0NRBebAUpm+WjECjAedRfXKtq1+ZsztiQKGkXcpCsPGGnuPjiyrNMRcnCmPmUDY08yGk1rfA00h/2szEg6Xbt7EhRUYuU5PrSBanwO3MWlRHsOuSSlKS7z+xKz8w7YP37D4OMUVkigjgpHomVmHRoym4YyFjRfVo0eUGvK3/CEzjkQ2PuygjeoYgBHZxNgPYCxoDGcdSYfhJH154pymWlel6WdDuXNkFq5qKhT1ChquVv8V+K4kg0JDcBUjbxP6u41ga66yC7dFk+/NgEcvIneFV4vDxs/0Ip0cOuaU4LUeiLGRxFRpCCqBEHk1l01ZQ1UDeuourV/0KRPJE3a2dQ8DwmpRHkmae3SP59MdwzDqYnJUrtRuwp4JbT6jdqv3l6lNaREYAEmUOulfCAM7HB8n9ODDTBnD7vD9onOft7d3lAaKXo5p4jwDSRY2bSn31GS6abe24AR2LxFik7UF3JmxYeFtcbHfnqlrRmTf4jf8PJyCwOut93BEXEiyHxu1bKb77YIvm5D7GVdUUFJZ0Mpjnt55DcR7NYd9h8OxhgmnHACK94EtvAwPl2CE6gNRLUsc6GpUZAr2IpdY5IGNkIIIHadkU6OByvEnAAPx2eSmpTRaB2ERFI10tkAwpjUXfJT1cbPTiFGucL0dopYFCZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(366004)(136003)(376002)(451199021)(31686004)(83380400001)(4326008)(316002)(36756003)(41300700001)(82960400001)(38100700002)(53546011)(6512007)(6506007)(26005)(6486002)(478600001)(107886003)(66476007)(66556008)(66946007)(2616005)(86362001)(31696002)(5660300002)(2906002)(8936002)(8676002)(54906003)(186003)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0d6M011eDVnR3RNK2xIYytIS3Nyd1VEUXJ1OXV6MFBMR0ZYNWgzTUFlQnE0?=
 =?utf-8?B?Q1I2Q3NzNUNscDFwT1JCcCt2S0gyd2RXS3hKcDZQVXJhK1U4UWFZU05QUnlw?=
 =?utf-8?B?V2V6QU9mNmxZZnhyK0lCY3gvNnpQcUtWSVhKTEhmMGtWY3JWM2ltb050bGRt?=
 =?utf-8?B?dG94YXdrdW9jQitWanJHWlVReHQxN1RENnllYm9lNTV0T2tXVE9ENEY5MXJZ?=
 =?utf-8?B?TUk1TlE5WkVzZjJxME9OYlJWZTh3NVd4dE5BeHVkNFZHaTRQVDJjV09WQUJQ?=
 =?utf-8?B?QjdIa3BKZ2V5VXBqS1VKRFFCVldGV3VtMGNqbXpoR0FMbDhRU0trY3NKcnZJ?=
 =?utf-8?B?V0htZnFtNHVXNnd1ZE50dVFBUXQyTFNzUVNKMnEzekU5S2JGWXZCZ3VpY0JC?=
 =?utf-8?B?ZmcrUVBDQytwU1Y5N0hZK3Q0VVBNc2hQSzRPUXhHREY1VGE0VUxyRm1FS0dr?=
 =?utf-8?B?Nzg4bWI1NTRzTllWcnZFQ0d3UDNSb1lCbUpSMFdQb1lpNWdUb21hMUw2L0xz?=
 =?utf-8?B?MSt0L3VhbUxsYVdCRVJqWjBFTG5OQzVhQjRpb1A3cUo3ZEs0ZWdaUDl2M2JU?=
 =?utf-8?B?VXdiMEdNbDNjdHVyMXFQMSswL3ZyVzhzaUQ5dFo2L0pkdEtoL2pKUmdKYTYz?=
 =?utf-8?B?UGR4YUMxL0Z4OVJYdGx5ZWJyblFLVDNReDNqWWFra1NLKzJmVENMa1hUcGdv?=
 =?utf-8?B?NUVuRjViMUhUUllUeGY1dG1RNFdwME54WDdHVk5HcUQwek5mSEdwZ0hLNXhJ?=
 =?utf-8?B?cEtSSEdBNkNoQlpIci9NTEdrTmZsRy9MaHlHUkhvbGIzL05GQm9SZk5oUEZV?=
 =?utf-8?B?eUpWZWlGdU1ETFpjamRDVEpyaXFBcEpPdVJoL3BZRnVrTjhyZmVHZXJHd1BC?=
 =?utf-8?B?bThuaExoTXlFZ2JLbzlTY0h1bkZlZlNPWTAzK0pLSjZsQWllNG5qbWthYytN?=
 =?utf-8?B?eGFTZkMva2JJVVRVYUdDdmhGcmV3OXhKUnRMSnk5UDJJYzNkbUpzZGZYRC9n?=
 =?utf-8?B?WTV1aHBLUkRQRFRkNkFEc0V3NWRvRHpNQlBWVEdFYXZ5YU5RcDFwbnhIWlo5?=
 =?utf-8?B?b05CV2NRRDQxdzNBbHNyMStLUGZqbHo5ekVvME03SEhRZ1ZXTnFOQkhjdHlX?=
 =?utf-8?B?KzJkNG1nK215dXBRYVRtUWNrcEpnblFRR0JKVm80OGRSaW9zU0dqZmRGL256?=
 =?utf-8?B?T1ljWTUyYzlsM3F2SnNiV1RxMUJzaUZzd3gydXdxRWVJMFlPOEQ5M24vaHNK?=
 =?utf-8?B?L3pOODBLUDBBU1hOZkd4K2dSWHM3ZnNBL3A1Y3c1T1hnM2tIUGlDQThvYmtv?=
 =?utf-8?B?TnVVWHdZUzB4cEt5MWd6c1poU1BIMWxDR2RkU2pPMnFEMGplR2MzNUpnekxY?=
 =?utf-8?B?N1ZITE5rVnhOSEdGdDl2Q0RMdFFpV3QxajlZYkxXR1RIT0pJaGJqNVFHeUxZ?=
 =?utf-8?B?TEt3ZmtEbitqMTFMaHhyRDRGV1JlVjU2elZVc2dvc2xyR2p5d0ZwaU1NV1V0?=
 =?utf-8?B?WGJFbVFoZlpxeFRTc3Q4bEFuV2JvK0FKMjVXTU8zaHlxdkRpZU9KUTN4aGxr?=
 =?utf-8?B?bGlWTzdEczg1ZjhoeHhhbmVYZ1BjUkZ5MFlEeTM0V3dOOHh0b09BVFc1SHho?=
 =?utf-8?B?RUtLdGc3L2IzL0krNWltUWhrZGZoRnQ5WXJBVEJTYjhENTZXV3BYckVTRFJ5?=
 =?utf-8?B?TnlkSEF3cUNzNGdHdXJzejc4SXpxazVFTkJVeEpJRDE4Tmt3ajhEeUgrRkZl?=
 =?utf-8?B?d3pPRVh1ajdlZEpVT2ZHcnQvMElFMEt4TUw5TkxJOXNyZ1NPbkUyYXpJZVlU?=
 =?utf-8?B?MTA4Q2Z4Y1FEM0JNNGtDaWtaSDVTZ3pWTnlRRFNvcDZORUQ5eElOZDZmZlVY?=
 =?utf-8?B?dVNxZFRDckZCQnBzejV3S3RYZlh3L2xmSlVzdjhTd29YTUF3QUwzdGRmVUlS?=
 =?utf-8?B?Vm1BbFFObExHa2xGVUJ4bEpDOTNsQ3JxM2FiU2U1V0NXUzIxaEx6QnhSaFp6?=
 =?utf-8?B?eWdWS0VqNXVpVHBoQVAzTXM5bkRmNEgvNUtTWjlzeWE3Y1hteXZVL3VsbmRv?=
 =?utf-8?B?SlNZNkN2WEw5cFNNOUNsVTFoTFlpTVh0dThyTEhQKzFqWXpLSzhpOWI2YkJS?=
 =?utf-8?B?UUlIM2QyNm9WY1AxbVAra3QvWjN1aFJ0YThKbHRlQ2NkcnVqeGJWdjZ0cXcy?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2414aa2c-3da5-4cc3-b419-08db546c3918
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2023 11:13:20.0860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qPph3PyUOd2UkNaVTf8u9tw2aOt+m03bBOay55Sl6FDofd2G13+Vp1gZmEf3tEOYDacsEt6/oDSyOxZ570o0mpUlhMliVahN1KFBr6gQwKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Add MTL performance
 tuning changes
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/13/2023 7:44 AM, Radhakrishna Sripada wrote:
> MTL reuses the tuning parameters for DG2. Extend the dg2
> performance tuning parameters to MTL.
>
> v2: Add DRAW_WATERMARK tuning parameter.
>
> Bspec: 68331
> Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++--
>   1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 786349e95487..72dab970de5b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -817,6 +817,10 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>   {
>   	struct drm_i915_private *i915 = engine->i915;
>   
> +	dg2_ctx_gt_tuning_init(engine, wal);
> +
> +	wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);

Hi RK,

I am not sure but have doubt w.r.t DRAW_WATERMARK are we not doing same 
in [ Patch V2 1/2].

Thank you,

Haridhar Kalvala

> +
>   	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>   	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>   		/* Wa_14014947963 */
> @@ -1754,7 +1758,7 @@ static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *wal)
>   		wa_mcr_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_HOSTCACHEEN);
>   	}
>   
> -	if (IS_DG2(gt->i915)) {
> +	if (IS_DG2(gt->i915) || IS_METEORLAKE(gt->i915)) {
>   		wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_OPT_DIS);
>   		wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>   	}
> @@ -2944,7 +2948,7 @@ static void
>   add_render_compute_tuning_settings(struct drm_i915_private *i915,
>   				   struct i915_wa_list *wal)
>   {
> -	if (IS_DG2(i915))
> +	if (IS_DG2(i915) || IS_METEORLAKE(i915))
>   		wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_CTRL_512);
>   
>   	/*

-- 
Regards,
Haridhar Kalvala

