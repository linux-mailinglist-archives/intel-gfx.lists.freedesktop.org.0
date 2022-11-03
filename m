Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B7C617AA4
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC29A10E269;
	Thu,  3 Nov 2022 10:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6696F10E269
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667470180; x=1699006180;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Puyb56T9lDJCoIXgLbxfMllbgnn2GZjPPuTzS1bncok=;
 b=OcaH0Kfa4e1d+dm4tGbZUx6WtM6Mr8D03eV92ByWxXbIXpp6wsuDitJR
 WrNgzOWAxNwuMIJO0gELKDmxxufc30muVVmCbGE2VzKhtgRZDL9Fhr4QT
 BZ7A1MHYONGBCsX2/4ePdD+4NbHA3WWndneqS9wPnRaH4bSkP3fo0iHoY
 JLUHr2EE8CqlWVL39cpswexmjDzQjoqO7tScNullGpIzWr6PXRgUx6Gil
 q2qnQ41e4yRZ8GBHtL2pwHdvUSgafglEMbv839TP2CJ9b8v45DZknebAQ
 +A9rR7U7f6E1dQb9Uszq8m5eqocPjK+u1GB78Pv/egwxtwgexYWMu+j0P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308358907"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="308358907"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:09:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="612587870"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="612587870"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2022 03:09:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:09:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:09:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:09:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W06S87+neVsoM/wW4HWyffWokI1/NsK/Smcih6uqkclM/HQZ/KOKp3ch+dbsBMx6Xi+VfRoJgMq/YDSpAWksXXZPnzV7BP/G+N/JV7TKuEkb6h32X393wDKtMZK0qAJFhJI9AGhk4e0Vgas9onOxcUr1mqQPeL7XQG2zL/zPbQaB1o9NlKVj7j+FJ0Upcx95YQ9X37UsEGEJQRvdHJFJF9wseLmVo03GSUXTqKwnWxVpUYdRg5SGWJK7XVPR3nU6Nks6ccwR48l2iEPTgQNHmGUdqnynfgF3SCr3J0I0tkb/SDzPRtvBmcrFUL8S+xbniuZYlvw9op7DjrsFkaE8zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DhGBqAPhhbkWZChhO2XMKycZtRUsDlhBT3cnWe2hiGs=;
 b=VqJhEPD5FzEdD7CGFJNWsp18jUlCfMpdo5kZqz/MEZjWz2AaSuK3m5IZWGnNVDXqHBVyTs40kRF8VgoxvlnUNrdXHBuQ4zXbjCSVOiGV1i9WrKK/UKKfR8/Hr4yVHJujhQWpHt8gUHq21Vpbz+zBP7y5ZV8SyR5igvapZdxuwbvrpEVAQUE/Av/0jp3LsMBctbeIvxl6GciieJKaTvJ3Yifvht/oKQ45O03dVMWmSTI/qA7IIh/cIoeXdzrVhCwhR5yJW4W7ltSzBAd2DALwL23fbzvbBQJtLiMTdfzWZfSispUanGLAfv6sGhH+zC+2CQM3o8+DGxEchgAgCv+6zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5135.namprd11.prod.outlook.com (2603:10b6:a03:2db::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 10:09:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:09:35 +0000
Message-ID: <013c0f9c-a0c3-1341-4427-199905e183c6@intel.com>
Date: Thu, 3 Nov 2022 15:39:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-9-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0209.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5135:EE_
X-MS-Office365-Filtering-Correlation-Id: 51ee5388-f5b3-40d6-0f6c-08dabd838202
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6YuwlrfQeUQlJwNP919GrMKCc7JthHtzywujMuRlcZF0KABLiGOhbnvRyZYsXeB4mKs+cX4V5FmnNNYx2bzeUthqUcsMRxq3ucp4cJ/XsY1L1aztvaFwSjKNTLJ9hJdZvXJWvzOdEXGaeZ7lJjgmehD4noKAo34xXNMoB/Nad0evQz4JnN60dY7mFLjXxLZqDMXB6dIplgdFsaroDByqhPa1Bfl5V45FPasA6iSS5M44bXTSfxtPP7u1Q0t+PuhWvyw0cWbhfDlS2F06QwNwduV7CxPl7oFBPu118ti7TsNT5T9DLzUQyBuqWJRNlWp86y4atIvzGsQW97wafaOXmzjT08YIPeA7wFEgtuYwzM5ac5K/V6SOGR7578/Bn+5pr/y8HyjOOqeI2YqSJJT81aCm+rbxi3+WPoD479zR1ZYrjRj4IeiKuEKAJnXbKkqaoyYEfBO4uq6uE3snvL7XpANoSYyClJM3EQzgjUtOi9hKJLbRnJQwvgbqmb/t1636rL62vryDxDreBjNdiAqWZLNpTnUjN+89+dgR8kz9oI8s5EYQto3yDW9u3X4JnH4K0blsgewx5+8mIJGwF8AxNaaabGRatph1pHQt3E8EI5RObIPwJnyxIdetwOV0MgPZz0borDpBqaXq91GH2NVT1OhOXlzGFcCpByML//AoSUuedQnPakYJOInYISy5sq9tUtFTVP+q8uqIiAioKXM/0p0lLL9Hr3Ac71QT5HuzLYAcdh5ps+xSdXbk8GFvkks4kGHU/WClQ4tHdP+iXqcRzrY80jjMap1j8NDfig+zBUg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(39860400002)(136003)(396003)(451199015)(2906002)(31686004)(83380400001)(31696002)(478600001)(5660300002)(66556008)(66946007)(8936002)(41300700001)(186003)(86362001)(2616005)(8676002)(66476007)(6506007)(316002)(38100700002)(6512007)(53546011)(36756003)(55236004)(26005)(82960400001)(6486002)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUhJN1Y3d3JLL0VaS2hXbFRBanZDMlAxYWx5a2srZFB0OWFlRGRzMjFwMFBM?=
 =?utf-8?B?UVd3Z1BxeDV4dXVpQ09aTVlsTVFtbGE2WGJSNkhHR2thWEh0aEMxSXdmZy9o?=
 =?utf-8?B?NXZ3YVlsN2pyREh0YVoyK3ZzWmk4a0U0V2RVb2NmZXI2TG9XOHdValF3T2lw?=
 =?utf-8?B?NmZSM2lCcytNamU3Tnc1WEkwOVdMRjYyT1BpVkJSTDJSeUxIUGEwV3AzaDU1?=
 =?utf-8?B?SE5uTkFkcExkRElMQzBiZWh2cithMjRJV0c2RjFwL2t0TTNjUUFSU3BVaUd0?=
 =?utf-8?B?SklFY3ZlWnZIZkZBSGk0L25RQmtRM25STWdzUHp0UlpZL1VXajR4Z3R0WmFj?=
 =?utf-8?B?UVFGdURCMjJYVlJ2MUY2NjY2T2Z1V05MbmFDV3VzS3ZmWDJZSUdhY2NwTFk4?=
 =?utf-8?B?a25nQU14K2VuTEdmZWJrNUNwT05TQnNpVXpSNlVheXFjZFA1M2JZVXhrWDNX?=
 =?utf-8?B?SG9uS2tYWnE1UUFrZTRHSjVuWXBiNU8wN2pMWTJreHRZMUo1b3VSeHFIODBI?=
 =?utf-8?B?MWtaeHA2NUpSNjF0cEw5Y0FSdXpsRDRQVURraHZxemtUK0VaTFMrbm5SYS9v?=
 =?utf-8?B?SDJJVk9ibFIrYXVXNWlzUEpNN1U0K24wVmNneldEN3lFOGJyeTQyZ3M1dEVT?=
 =?utf-8?B?NUpuWUoxTUJsREoxWlNnQ0FJQW44cXF2YUVkbmY1OGwyUUViTUU5d25GRnVY?=
 =?utf-8?B?dHl2MDFrZkFvRXRnNGFRZVhiU0dUanN4M0UxUmF6Z2VpK1MzZnBhODkzWEZH?=
 =?utf-8?B?VHkvYjR1K29sNmF1a2FnRWFlWlNXdnJFMTJHd0Q5ZGgwbk5DeUsrQzl2cWxi?=
 =?utf-8?B?bXpqbjNScEx2QlVHRURkUWQwRUN3ajcraFR0U0EyMmptMVh0elBUVnVXbmNX?=
 =?utf-8?B?bjlXS293ZU16Nzh1UW82WUpOcXZBdExhMDdyMm9sR2Iwd2dHVHppdkRrK3BE?=
 =?utf-8?B?ZkI2dXZDU00xRGF0cEErR2dqc1JMWXpEQkJJQ0R4dTNRbG0wU2s3YXRhdnNq?=
 =?utf-8?B?VEFFazMwQi9ESSsxUDBFMXVsU3pRU2Fadk81N21EYXVtUjUyWWtkNmxibEdD?=
 =?utf-8?B?U2hFdkIxbVdaOGZzdmFNMFRrYXpZZkdDZ2w2cytmWXRKdjN1Uml5Vmd4TnN2?=
 =?utf-8?B?SXBmKy84U3dnVjlCejh1dkI2Z0pzY2tlUkNEcXFhTnNlUzZMdVlDSWM4RnBE?=
 =?utf-8?B?aEJ1OERXcS9GL2wrNm41L3U0YlpqSVFjWEFkVzBCeUwyd3NqTHFlZXdsOGZL?=
 =?utf-8?B?akZweHJVWnhKd2IzYWY4L0xDSmROQ3pTWGpqYUoyWVNLdVdZejJpcExlOElk?=
 =?utf-8?B?U2VPU2lKSEZ2ZkE1U2NqZ0pPQXdoRms4bnJvaVZLeWphaFpDdEd2MlRWNFo1?=
 =?utf-8?B?WjFodVRPUnpvNk5oN0M4LzJnRkxnNHdKMjU0MktLbTg2L1FKcWhiSFFiU29s?=
 =?utf-8?B?NXVyamZiTit5NVdCZ0NERFZrY3A4WGVkYklRWWhLZmZmVGVSNXhQeks2UnAv?=
 =?utf-8?B?RDVKYXFwUDBKb1FSazI4NG9pVWpjeGRBSTVtRjEzSmlWVWVDYmczV3JyZmJC?=
 =?utf-8?B?REdjbUsrM1ZUTi8xempJdzVJd0Q0ai9COVJsR2lGOTRyY25aRENIODhJWE1k?=
 =?utf-8?B?TUNpT29EWmtHRlRWRGpaYjVrKzZ0SDBrTGp4Zi9DTkdqcXhtSEc5TU85ejF5?=
 =?utf-8?B?Yjlsckl3ZFJ0alNvTm1qNEVJSTRQTDA4RC83OXBQaWpROElCNzVTMjlVdmRR?=
 =?utf-8?B?THpCU3VLUGl4M3ViQ1ZEak96MDRtUmlRT2hvbjFqNVpZZTdINFdzZFFFd1FE?=
 =?utf-8?B?d2t3TTRSWjdKTnozSTBNbDFzREE0bVFtZFpITkkwYXkyelR4ODc1VVF1eE1E?=
 =?utf-8?B?bTc0aG1yRk9mbTBzVjdwcUQ1OG9pUUZnZ3llYUVXL1N2OE5GUzUyR1ozRWpE?=
 =?utf-8?B?WGd3WGkzbThWU2hIek5ka1hlWVdFSGswbUFQT0NKdWkydHVyeVZ0TGUwenJt?=
 =?utf-8?B?U09GNzRDUGoxcW1LVXVPaVp1OTRtaHVRRTEra1R4eTVkaDl5R1J4YWpHTUo3?=
 =?utf-8?B?ZEtUSjJMTlZNTU1lUUJKeXFXMTN0UXRtV2pkN3JJMTZKZ1VNbTZKQ1d3b2NV?=
 =?utf-8?B?cFpDeGZadlI0KzFPblhhMEY5QUFBdUVIY2J4ZDBkeEwvTWFxZ2RQSVcyeUFU?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51ee5388-f5b3-40d6-0f6c-08dabd838202
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:09:34.9477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YAHaqFBj2/D159yRsomihS4wR8d4svB9rS2mGIyZtwECPXRjVjhRchcZZhxmS2/4UZhysWbOAOOHZ62+1Ifa0MrU9IAB5SbrXyyspm0Z1CA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5135
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/11] drm/i915: Reuse ilk_gamma_mode() on
 ivb+
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

Makes sense. LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Apart from the split gamma mode ivb+ LUTs work just like ilk+ LUTs.
> So let's handle the special case, and then just fall back to
> ilk_gamma_mode() to avoid having to duplicate the same logic.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 10 +++-------
>   1 file changed, 3 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 946fb767f3e0..435394cad359 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1521,14 +1521,10 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
>   
>   static u32 ivb_gamma_mode(const struct intel_crtc_state *crtc_state)
>   {
> -	if (!crtc_state->gamma_enable ||
> -	    crtc_state_is_legacy_gamma(crtc_state))
> -		return GAMMA_MODE_MODE_8BIT;
> -	else if (crtc_state->hw.gamma_lut &&
> -		 crtc_state->hw.degamma_lut)
> +	if (crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut)
>   		return GAMMA_MODE_MODE_SPLIT;
> -	else
> -		return GAMMA_MODE_MODE_10BIT;
> +
> +	return ilk_gamma_mode(crtc_state);
>   }
>   
>   static u32 ivb_csc_mode(const struct intel_crtc_state *crtc_state)
