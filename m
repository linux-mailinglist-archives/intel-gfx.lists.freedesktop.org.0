Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC21746BC9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 10:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1781110E2B2;
	Tue,  4 Jul 2023 08:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1048210E2B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 08:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688459118; x=1719995118;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=evPDXlYqhwqM7H7WJXn8odWXinPueYuL2VK4+KvgWhM=;
 b=BN0XZV0cyX9lryfecC0nlje6vfltmDsoO3LSVfCpcLuaS+1HTBzl+Gxz
 zdPyET3Z/dF8XTDEwSPEikjfcTOPTLv5aRMYxkwPBU40czpbD1KXWQe6Q
 mHy6pgGLK5CD6KZPbMabQo7AaLuxaMlzgYzy6uU23sAASlMVyy0o1swFK
 RPrCtHB5eHI+Itly7gK/BmW1z2OD00MroVxJIMb6vXg0vaGSpnUjJUPAQ
 FptybR/TtZ/WtIK8l+G5fpZ6CA3uUOg1nPMINgDD+qkdUHiFAR8edHPOZ
 RhZv7lsTujbhuvNvoDv+ZTqY+3R67lXdk7afS3nS7bDwXolQ+Sini7hYK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="343403625"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="343403625"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 01:25:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="965440578"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="965440578"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 04 Jul 2023 01:25:16 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 01:25:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 01:25:16 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 01:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P1meV7aPQL3QZaY3mdBaTXtBbFaq96DRVv8Y/zv3JDL0uXV7dDly9KZS/QxUx5lGH3iadJKzmkb4zY9UgkXn8WO22UllIXUlsG+0XlPbd3tsAQ9Amwyn/SUZlF0XgKW0j3keba0UDKQL+lDosC3MftwXn7UNGQqOB1rtVvcv0IDuiN7hzd4wfiqw9Z3EBjXCTJ/HWOCujuMsaImemSpc1XTNvvgMs1MIxqkn7RZe2xpbiIlVqka+4PJRF7ChhWQ36oT1Ku2zvLrfAN0EOc9jbqUQoK7qT2np7Tm4TeUVvq6MSxuMt6EPebv5I960rCY77lP2RG100kwwHpw1WrAraQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=176tA/O2t0qsB5eL52ZGkFwB5KkyorT04hhfZMrDw5Y=;
 b=khVEpv3hIY7RWvB1kfVkoU2vfx7w6JkSivgbRXCUQu989Xl7QjWTfg3rDOMFNMf9zNYPF974nh3qTJbObWAHINMLN4Ujd8TkvZv+6NmD/Tfi3ay7vrEtrh2dp+Ae9Yv7hH/ZZzZUq1OMNvTidIqUpC1sn7vkClCB9ReC0uc27d9Zto64njtIjb2ozlvv5spLsqI0BjIKuuamjaNbpAcJ5cW3d0xC2pRt4gegFxpl5iVauc0BJglOAdXGdzhRtY8FQcZdZ+AjD7rXV0Pcuzw2rQLug/aUBbMNS72FRbpprZ9lElXcEB0dl/pOcv+/OrLlLsuiL5dbOHrnrG0beH+SLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.29; Tue, 4 Jul
 2023 08:25:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%7]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 08:25:14 +0000
Message-ID: <c2060069-478b-590c-9169-50ddafa5f314@intel.com>
Date: Tue, 4 Jul 2023 13:55:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230703101244.2489790-1-suraj.kandpal@intel.com>
 <20230703101244.2489790-2-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230703101244.2489790-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0166.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: f3f833f2-1b47-4fcf-6064-08db7c683080
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DqQ8JVFzG7C7vR40iJ3fNGte7YBmLlzadPx72rAQFeBHz28J2tewvUtfp3x7QWq0J9u/sw2Uusu+hC5QX4lCP/LufiX3cmXjtJQRq2Alnch6lmeOFc/6zYUB0G8CZbFIy0UFD5Ec0lYbN6kvg5qUEL4iCT3Dug8irtGb/ybl4AXKr08KgWzHzdDY8hfTR1s11wClwrIeN/TmCMgfFwvCqOp0qLKR3mVYdxZUGmoErK9BVQ9MgatzqN6GaJCnHNe50FeY2ptWelroqMU/JkOSFskjd6kuBxqx2O2KjzpoiKlcQKhk7vIs+Jv9Gp7Sn4Hs4vyC6WSrWqSG0iVgqisENY6suZOyFEKFZnFAkWuHTYlXfs7SeMYcUB8jqaiDRoTm/pj/XUZf0hon6SYGw6kArZmqNZb4FeURecfvSDIGID7vKr3PzGObmLcQ7i5HmiAmBEPDuro8XjqiWWsp7wqgGg2O+Oq+FIqJDMnEkYVlHlW4OpM/+XbCERs4F7XA0aaIGYkshUz84HpMPBQQ+LDTq3r5XwDM/26X7z+c/Dcih9lJDHcZThZHK55EqMEXO/tHMnT9z2mDoJZBDrMwCbiv9Nw3/DhjN8UkYDvCz/r3Z+nwxIRLgYiK40eFmDeGYNv5vMk2T9wDH1wZpceFQrtcVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(376002)(136003)(366004)(451199021)(478600001)(6486002)(6666004)(2906002)(26005)(6506007)(53546011)(186003)(6512007)(316002)(66946007)(4326008)(8676002)(66556008)(41300700001)(5660300002)(36756003)(38100700002)(8936002)(66476007)(2616005)(31696002)(86362001)(83380400001)(82960400001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3NGQ0E5dE1nZkFFWnhobHlsS1YwQ1NkTE5vNDJVak5zeXRjUzkyU2Vsb09F?=
 =?utf-8?B?RFgxZnI0S1JiL0tlRnR2L1RETVpmdnhvcS84U1FRN2RJOU1yOGFWRDNZcjBq?=
 =?utf-8?B?TzRqQWZYT3FpTDBwNUVDOVhPUThJd0FzN2hYZU12amU5QWFSalFkeVR1clJO?=
 =?utf-8?B?bzhidDA2VUtZaVVraDJZMFR5UFB2SGxPSVBORHJybVh2SXZRR2ozb1FCMHpl?=
 =?utf-8?B?RGlZOE8yK0RRTUZKZEI2bjl2bDJLU053L3lEM3hLV001enZCRExMUVJBZGhW?=
 =?utf-8?B?MlVwMFBqUndUaEtnNVNqVDhGemtjMDlQSWg5dyt1bWxZaGVCT1JhbGJzZ1N5?=
 =?utf-8?B?MzNnT1FCWVJHMHVBbHo3bkJzOXFNTjc4OFhQanhRYXpVdXBGb1ZKYkNQNGhH?=
 =?utf-8?B?NG91TEtaQ1FTekltaWJXcU1kMjcwN1ZMWTV1Nk9qTHkzaXhoN2g3RDVmcHQr?=
 =?utf-8?B?SXBEVkQwT0dQYi9PZldPZFpHTXBuU3lPMXVlUzlSMnlCQUJpaVNqNUVWem82?=
 =?utf-8?B?aGpzUFc0elA2Y0hSZGZXcDhyYlkxQmNJemExejZPQnVsdEx0RXhBOUtvSWY4?=
 =?utf-8?B?V0grZDl4NTRLNFRPem1INDRNOU11VUpXcXJacVF4ZndzQnVybWkyY0FCMHVM?=
 =?utf-8?B?eVZZU0lhb0tjeTFOVC8zcjArUHhreEJqUXVJQ1Q1WDZCVVdlNldCbUJSUThh?=
 =?utf-8?B?dm9kcmRkRzdMSlhxZ2hWT1QrVVdxR2llL21HMWhKbXU0R29RWG1pYnVrNEp2?=
 =?utf-8?B?bm1hWW1IYnZFR0hlOUNKQUVGWThXQkR1NlIyYkxMZVlwUzZqQTdwMUZjdEZF?=
 =?utf-8?B?UmIvazhOVU1kdXlyb3RXQkMwZUVEK095K1ZUTXAzd2lRRk4vT3VieG9IY2Mw?=
 =?utf-8?B?UmJReWFDQzFmR1hhV21qUXFiWXFlR1FTVzMrajY4bzRTeU5vcFllMTJaUm56?=
 =?utf-8?B?alBtMU10WCt0Z0VKQWh1M3pZLzZnN0JDWm8vRjJxUEtrb1BTNjFuZmlHbkpW?=
 =?utf-8?B?K3JmQm01eTBURm1yWE9OeTJXU3lsclpFZDBNcFg4QnhlOHEyUEtSaGJSM01F?=
 =?utf-8?B?bmdjR1VwZjRmQVVjSnBYYlNjaWdxS1NiYU9rZ0V6bHdUaFVCVFpaRUZVMmVZ?=
 =?utf-8?B?cW9lSHJIYWhMQ1pwYU9zd2kvZWVVZ2J6SzMydVBBSWFaR0VXWEp2bjE0RERl?=
 =?utf-8?B?MFJnUFA1NFBqV2QySFJWM0M4WS9nREFUMDlzbmR2azRaWUhsK3hHRDBuTWJO?=
 =?utf-8?B?RitxN3JncEFnN2w3aXlUaElpd2xNSUlucXd4MjNtQ3IxdytZWjhtajMwMG5y?=
 =?utf-8?B?bmdodGxBRzF0R1FsMXZKcUVnVnoyMGlXSlpDYldDTVVZalJsZ2JML1hFajU3?=
 =?utf-8?B?NTh2eXBPZE5wdDFHMG9xYTQwenMwbHlWZjdrL0p3Y1pEK1ArTFBEd21IZWp3?=
 =?utf-8?B?MXcySkF0emtQNHBRbm13bHdDR1BzMFNtR1dFYkczU1hqRU9jQ0dadllVdUNq?=
 =?utf-8?B?Ny9KTlVSQTVPT3pLNW5vdzNGZW5KNTB6ZFRoZzRtQmExZFI4TXFaTTJOSkZE?=
 =?utf-8?B?bjQvNkpVeXlaV0QzbFY4dmYxZ2tDaDZOM3hrOHpqSTd5RzJvNkE3N2xTMHpx?=
 =?utf-8?B?R3Jtby9YVllSOUJ2N2VtTHRZUEliMU9rQXZkRlZJczNneUo0YUtkdVpTR3Nj?=
 =?utf-8?B?azEvd2FaZHFYQWFsejhMTWNQNVZ1T0ZFelZNbldnS2VyWGlpN1FJRzFxQ0RD?=
 =?utf-8?B?YVA0V1dxYnltUnoxN3JiQlZIaXRhZ2NUU0g4TVlnUGVZc1k1bFpNRUhvWERw?=
 =?utf-8?B?a0NzY01mZHBmR1dRNWlCc29rNFRhclpHWlc4TElEUmVwNHN6MzBGckVTR2d0?=
 =?utf-8?B?RVNSU00vZzJiaFZ5aVFqOHdVZzNmeHZ1OXlEVGNydUovK0dJS0RqZkJRZzhm?=
 =?utf-8?B?Y2VEZUptZElYb1RrQW5lcmNHenpjTC9JUjJscWdJRWc4K1dvLzlDS1dDN3dY?=
 =?utf-8?B?azVBRStGT1N1U2NkU2xqTnh3TXR3c0YxUEZCa0x5ZUttOG1xYkpGU3pXME9t?=
 =?utf-8?B?ZmhoM0RpN2VOQmhNUEFRSngrclMvdlBSeDNraEREbFJObG9ZbkU1ZXBlTCtF?=
 =?utf-8?B?L3BoM2lZL2NJS1lrTHNkOG9uaVJ5c0xhd2x2TmZlQUIwYmtsWmluUHNDblIy?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f833f2-1b47-4fcf-6064-08db7c683080
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 08:25:13.9555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qPY786FPnUbhREC6rMvL+KKZ5bek9myFMC9tGa985annKXKe67G3bl6nwxsmi0asHKbBGA8VBN2+KthM6lOgp5XadsoDTytLsVILCn6aTho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/dsc: Move rc param
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


On 7/3/2023 3:42 PM, Suraj Kandpal wrote:
> Move rc_param calculation for native_420 into calculate_rc_parameter.
> second_line_bpg_offset and second_line_offset_adj are both rc params
> and it would be better to have these calculated where all the other
> rc parameters are calculated.
>
> --v2
> -Add the reason for commit in commit message [Jani]
>
> --v3
> -Move nsl_second_line_bpg_offset with the other 420 calculation
> in calculate_rc_param [Ankit]
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 45 ++++++++++++-----------
>   1 file changed, 24 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..7d0edb440ca6 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -78,6 +78,27 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   	else
>   		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
>   
> +	/* According to DSC 1.2 specs in Section 4.1 if native_420 is set:

Start comment from next line, as per comment format.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> +	 * height < 8.
> +	 * -second_line_offset_adj is 512 as shown by emperical values to yield best chroma
> +	 * preservation in second line.
> +	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
> +	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
> +	 * fractional bits.
> +	 */
> +	if (vdsc_cfg->native_420) {
> +		if (vdsc_cfg->slice_height >= 8)
> +			vdsc_cfg->second_line_bpg_offset = 12;
> +		else
> +			vdsc_cfg->second_line_bpg_offset =
> +				2 * (vdsc_cfg->slice_height - 1);
> +
> +		vdsc_cfg->second_line_offset_adj = 512;
> +		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
> +							vdsc_cfg->slice_height - 1);
> +	}
> +
>   	/* Our hw supports only 444 modes as of today */
>   	if (bpp >= 12)
>   		vdsc_cfg->initial_offset = 2048;
> @@ -190,30 +211,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>   	vdsc_cfg->bits_per_pixel = compressed_bpp << 4;
>   
>   	/*
> -	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set:
> -	 * -We need to double the current bpp.
> -	 * -second_line_bpg_offset is 12 in general and equal to 2*(slice_height-1) if slice
> -	 * height < 8.
> -	 * -second_line_offset_adj is 512 as shown by emperical values to yeild best chroma
> -	 * preservation in second line.
> -	 * -nsl_bpg_offset is calculated as second_line_offset/slice_height -1 then rounded
> -	 * up to 16 fractional bits, we left shift second line offset by 11 to preserve 11
> -	 * fractional bits.
> +	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
> +	 * we need to double the current bpp.
>   	 */
> -	if (vdsc_cfg->native_420) {
> +	if (vdsc_cfg->native_420)
>   		vdsc_cfg->bits_per_pixel <<= 1;
>   
> -		if (vdsc_cfg->slice_height >= 8)
> -			vdsc_cfg->second_line_bpg_offset = 12;
> -		else
> -			vdsc_cfg->second_line_bpg_offset =
> -				2 * (vdsc_cfg->slice_height - 1);
> -
> -		vdsc_cfg->second_line_offset_adj = 512;
> -		vdsc_cfg->nsl_bpg_offset = DIV_ROUND_UP(vdsc_cfg->second_line_bpg_offset << 11,
> -							vdsc_cfg->slice_height - 1);
> -	}
> -
>   	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
>   
>   	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
