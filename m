Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8B973B5C5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 12:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F0310E106;
	Fri, 23 Jun 2023 10:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F9010E042
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 10:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687517994; x=1719053994;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ywxw22bucnb+E6AsNTC6ra+ZLjtIk1bnk/s/Klublfc=;
 b=S2asmE33kPd17xRTDUr91+nJqQiVvnvsu7OmXZHcfauKlevbRv1Nab8w
 gP8zUf4rBEk8VDJXBpT7+8TsX2mX8K1p6urRP+2CoSw1XEcAFXN6HMtP1
 di3/pmMDQxrM4PpnwNZeOi2vfeE7BiRACOwyFXrPtyGVWBt4DyI9KlC+c
 e0GSuce3JQ6URGId9AH6Q1UGhVUK3JSJCycL2wndAqsl9tTFfvqhqbzV7
 lH3AxJhJIU5Re78TppLmRbMKLY0TEcj0Tn92Fj4skfp3cdVAIzcc7Xz1I
 veEYruhsIYHIQSXmkAcHfWwQ+3CXbleSGiMapyfdKdp4L2rBJxwLULC7a w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="341079069"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="341079069"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:59:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="828338320"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="828338320"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jun 2023 03:59:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 23 Jun 2023 03:59:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 23 Jun 2023 03:59:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 23 Jun 2023 03:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L0xETP4Mh5ITjeKHQe2HOPDbNWnxO8G/mAOf6LNY7hXFrlvq38EkXGXfsaY/nC+6O1gSiRPwrlubQnfhKdsBIYYanSKfxqHwddWOUe7dqRm3GVQyQ4LeEUWwOzyw8F7lt8jlCyQ7dAZgr5sVBs9fK45Ffdpuc4uUxocYtaOGEb0xAe7MdXEYV5E8RNQIp2Y9WP1VMK2Wm9lgi4dB7CUDPQwZjjAkY0tugdWwFDWbXIdSk4X6z+t1wuc1vYDF41O5jbVNLy+jz8aVzs5/coqrBu1rapt4rg16bt3iJ3b8n+uX7oStseAcOVdWpCPY0Xeq9bYvGL0kzKl+UDB3P5WgOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6OGokFuXZ2qyMsHboSqQVvlm9dUDtHBierXgBnZJX0U=;
 b=hATNY/tGfToAxpmxRxKfnExRzqcmgUnYQx7dsQtbvo3BjmwVJUfoiYj32lMqBKB5rkE+1P58Jg7/4gmHpcnBH66MybDwnOKceJuiLoczWpx9KwOYkvhZA8h0waTpOaO8UVr6nzSsziy4VJvoqZqXos1M1b/32UNdesewMpNaC4m8BTHX3iW0tDgxvHmTQ602XDc5ln7Apnr9ik2s89nV8Coia1RPZ5ck9Wxo4qWVoMdXlWRZFTMcvHkvxypLCh1/wH2WfWAh478fU7Uuxia6/nnHOFKFGfixSqw4aVQ+HopxIAYE6DyNTefGUOdWPH6dmmlCRYU/2tIUd2xVqQ8M+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB7931.namprd11.prod.outlook.com (2603:10b6:8:e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Fri, 23 Jun
 2023 10:59:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%6]) with mapi id 15.20.6521.023; Fri, 23 Jun 2023
 10:59:50 +0000
Message-ID: <c2d00c25-d53e-db07-6644-a83bf5a9ea38@intel.com>
Date: Fri, 23 Jun 2023 16:29:41 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230523101651.1282681-2-suraj.kandpal@intel.com>
 <20230524025550.1345712-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230524025550.1345712-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0185.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB7931:EE_
X-MS-Office365-Filtering-Correlation-Id: 391e973e-b871-454b-c6db-08db73d8f6f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nvuMGToJZINVhZvpJ5s3nRHumFB69ebIxcUD6jaCZE0RAPIfgxtyiviaROXb7Wj+nqs9lGmQJ6GI7Vt2aEPayy131eC4/EiwlWG48Ls06dRi+xmsOdKsvdEgNbMQ6fqNhLOqikuHkRmEBxAE/V3KiShbEN4wNIDntZh5qslPcE+Xto3ilO6AZAYoiTODPeYO4armu6NIrSoMOB1RuKL/2hc9DOTHCdOVDyQtIq1nny9R4IgzmTmcSRfsCQjh1DRli/nBn9b2if9rV32zM+77TYQCsx/30F0iOtWLoQmS8RuaagKuiwiGIdoxWN5Rcp22UeP5xOaPaJzfEC2t67AmH+EvAdiPL8jYhBXk2tud7ad7u8QD3uMjcBCHMJ91ur0ONyeBIhssSxuvFEGwLNxFtbG7ZlpdJ+dsgptdA2Mqedfwn4mkzXSHv144VSep+eShpRT+63HlQhjsX3bsR9/8D74P/GNPr78Aq+GMM5ziQJfCzmmc0yfJIDvSnmRec6lbPiZO9GzotGiRgR1SIz3Rx2NtpSLDk8a4J6OmTiCcIQStjDRGvnUJB6NL4pakKxD7hbQvl3uJA+e5UZWLc15qUGT6LDgx134U/z2ziBe+m5CF+DceI07jyVsgxdQhRrhcfxEbHIPK5+oIZJsKpa5Y1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(376002)(39860400002)(346002)(451199021)(186003)(8936002)(8676002)(38100700002)(41300700001)(6666004)(82960400001)(31686004)(55236004)(5660300002)(6506007)(6512007)(26005)(53546011)(2906002)(6486002)(66556008)(4326008)(83380400001)(36756003)(66476007)(66946007)(316002)(478600001)(2616005)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZEdyRk5MUEdhMTdYSjUxTTZkTEtCMEZnWXF2aTg5WENDOGlIUDQzUEh1MUtt?=
 =?utf-8?B?a2hCU0NWNlVmQXVLS3VHdnJQaTdkTWhvWWE1NkRpbmRCZFB1cUZ0YWV4WlpB?=
 =?utf-8?B?SVJYdk13UkZqMmsxZjJ4bUI0R00wamVZaTZXcmp1cmRCcEFWdVVqSU93UklB?=
 =?utf-8?B?bDQrSE43SXVqNlZHaVlRL2RmM3BKbDhUMFdBdGpnMFYwWkhjUW5rQWNGUHJw?=
 =?utf-8?B?cDJWRTJIcVgxN1Z3ZkNpM1hmSWg2QzZMaGNybXgvcHFvbG9HcjFNdUZwNmd2?=
 =?utf-8?B?My8ySVA2blBCTWoxWml4M1dYY0VVRHQveHRNUDMzWm5EdnZ3a3JuaDRMeXB6?=
 =?utf-8?B?RnlxRDluVFZDRnZaMFpTWCthTTI0cWtrZ2pQTXZ1Z1IvTmtjRlFQVVBBbTRH?=
 =?utf-8?B?OGlFcjdRVkNNeUxjVjRuTVhJMFpYU3RzaVZQWmhpSkpWekNydC9BYU5yaEJH?=
 =?utf-8?B?L0REQjVTRXhOMzhsV2N0ZmJaMDFKWlZmdk9vbGZwdnl2VFZhQ2dtdHhDNXdC?=
 =?utf-8?B?VUxwcXY5c29FbWJsL29mVmNzUHBCdzJsUkVtL2x0ZlVoZXpZeE9ML1krLzB6?=
 =?utf-8?B?ZlBqVGhzV1R6RWdiQlVGSmhra2tnVHJqQ2VlNWRvaTJ5RDQwZnI0ZWxuUnNy?=
 =?utf-8?B?TEN6NDQ1djZBbVRmSjk3a05DcURsZitsZDV4K3psZEFrWHErWjdyRXBxaTVL?=
 =?utf-8?B?SXdlVzRNZ0FNZjR2VHBodVZiZjhKTmJndnhPUkUwYUYwa3VqdXE1M2RwdENo?=
 =?utf-8?B?YTY0REFabHpONWtpVlFNSmtQMnIzTTZNM0NLa0MzeGNSREFSUlBqakNZTjd0?=
 =?utf-8?B?SmZ1TW1ELzcrek96Z3ovWlMrbEtnSStxdVpITWlxckN3ZzJENllDWGtSb1Bh?=
 =?utf-8?B?NjlzOHE2bVZZb0N6ekYrbHNLWEE4aTQxbWU3K2Q3RlNOWkF2ZWlsMzQ1Qnd2?=
 =?utf-8?B?QzN0MEdCdEU1SUVYaGsrTGt1bWlORGt3MFVqWnBoUWRmYXVPOU9tYU1RVDRK?=
 =?utf-8?B?WGtBL1EvamZOK3YrbEMrREdsU0RkaVNsZWd0dTQ5K3dkT0RuVVRtWTBxNnZI?=
 =?utf-8?B?SmVVYWg0U0dlL0VBSlljYm1WaDdCOWtmRGhUQ1V0ZUJkcm9qbEo5SEJRc3o5?=
 =?utf-8?B?ME43a0luQ1poOUZjbDFjVk1UNW9scVJmSTk1OEY4VFYvb3QzcDdYWGd1TDhq?=
 =?utf-8?B?TVNHaTNrOUQ0T045Q3lpTURMTk1ydTVYc1dnMFdaSGFWZ3NjOWUxV2JFNjNV?=
 =?utf-8?B?SEJ2QWxBRDBPL0NlYmRmR1ZENjMrRDM4Y3I5M04xRXJOcmJQTXF2R1ZoaTRV?=
 =?utf-8?B?cU93M0lSbEExaTlGNER0bk5XTlFybVRqUE56S2hVRCs0VE5YbHQzUFNsUUNt?=
 =?utf-8?B?cWJ1UFovNnl0TThiNHFPZUNVVjNIMEh1U2hWK2lLa2RWeTFCc0lnZ2Z6UUsv?=
 =?utf-8?B?NXQwZ2tOZis4VEJub3lma1Erb3YvMjFmb2pSdkg4UW5xa05iQVk3cjNVWVJM?=
 =?utf-8?B?b2h2ZU9tYkxsL1B1YmM2SGVSWFl6clp3VzVvbUQydXlvdWZTZUExYzY0eStm?=
 =?utf-8?B?STVuZUNaZ3c5dW0rd2VSSVExZ3JvaU5sTFlBRjB6UnEyejFzQmQyMWh3UmQz?=
 =?utf-8?B?ZnpaNi9NWWlubDQycjl3MnAwbkxLVGRGbFVoNkRkU3pRVnUxR3l4ZTRCbzBk?=
 =?utf-8?B?MHpHYWdRR244R3JpQmlEazB5MDNUNnh0OExIbXc0aDlRQnRUZnJNejhOdjJn?=
 =?utf-8?B?NldmOUFjQ1JVU05GUlZoV05kaHhZYVUza0NuQWJ6b1RPakZnazc1aUJzaXpO?=
 =?utf-8?B?WU1vUjd6VmJVb2dhRXFwQVRPL2Y4RnBBbmxsaDVDN1FsaTRUNnREYmpOK09Q?=
 =?utf-8?B?UUxRNjhEVXQ4RVJrMEpXRk9sV0Z0RnV6OXJYbWxDQldiSTNIRTlTTFRhdGNr?=
 =?utf-8?B?M1lWQ29SczVSRHdIY1JHOW14MjlmVHRvdTdYdzI5a1ZZQnJyaWtHaHI3Y25X?=
 =?utf-8?B?dW9CY3ZNUllvZ2lndlgzL3lSSTFuVVlQME9lV1V4SFliK0R3NHRsQitjK1lF?=
 =?utf-8?B?M0dmQmVYUFUxeEZ0Z0t2aTI1SzBlRVdXTnJ1dmdhNkN6NlRuQ1JFTkZZK1c2?=
 =?utf-8?B?RDVqSW8zZUtwVGRiZm1CL0h6UGZQcjdTTkk2aXJ3WjdDWVpVT3FSOEV3SjA3?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 391e973e-b871-454b-c6db-08db73d8f6f1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 10:59:50.0641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XUPtoHsVf0AA0s/rIN3KL6gqtDQolq/if6UQEoEDu35jFLE7OR6n/IVOQvc4gLgMseVSe/7lAuNN6rzQNRnJ/aeBZEJ+Yfeyi0CGNcKc6vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7931
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dsc: Move rc param
 calculation for native_420
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


On 5/24/2023 8:25 AM, Suraj Kandpal wrote:
> Move rc_param calculation for native_420 into calculate_rc_parameter.
> second_line_bpg_offset and second_line_offset_adj are both rc params
> and it would be better to have these calculated where all the other
> rc parameters are calculated.
>
> --v2
> -Add the reason for commit in commit message [Jani]
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 28 +++++++++++++----------
>   1 file changed, 16 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..c64a38363e02 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -78,6 +78,22 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   	else
>   		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
>   
> +	/* According to DSC 1.2 specs in Section 4.1 if native_420 is set:
> +	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> +	 * height < 8.
> +	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
> +	 * preservation in second line.
> +	 */
> +	if (vdsc_cfg->native_420) {
> +		if (vdsc_cfg->slice_height >= 8)
> +			vdsc_cfg->second_line_bpg_offset = 12;
> +		else
> +			vdsc_cfg->second_line_bpg_offset =
> +				2 * (vdsc_cfg->slice_height - 1);
> +
> +		vdsc_cfg->second_line_offset_adj = 512;
> +	}
> +
>   	/* Our hw supports only 444 modes as of today */
>   	if (bpp >= 12)
>   		vdsc_cfg->initial_offset = 2048;
> @@ -192,24 +208,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>   	/*
>   	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set:
>   	 * -We need to double the current bpp.
> -	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> -	 * height < 8.
> -	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
> -	 * preservation in second line.
>   	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
>   	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
>   	 * fractional bits.
>   	 */
>   	if (vdsc_cfg->native_420) {
>   		vdsc_cfg->bits_per_pixel <<= 1;
> -
> -		if (vdsc_cfg->slice_height >= 8)
> -			vdsc_cfg->second_line_bpg_offset = 12;
> -		else
> -			vdsc_cfg->second_line_bpg_offset =
> -				2 * (vdsc_cfg->slice_height - 1);
> -
> -		vdsc_cfg->second_line_offset_adj = 512;
>   		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,

This seems wrong. We have removed code to set second_line_bpg_offset 
from here to the function calculate_rc_params, which is called later, 
but nsl_bpg_offset is using the second_line_bpg_offset.

So if we want to move the two params in calculate_rc_params, then lets 
call it earlier, before these values get used.

Regards,

Ankit


>   							vdsc_cfg->slice_height - 1);
>   	}
