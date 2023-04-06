Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA036D92C4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F1710E066;
	Thu,  6 Apr 2023 09:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AF8310E066
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680773512; x=1712309512;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hx5IdD9lIl99dmV2vq6PBpi6KvpUcFKPaPar8q7nsGQ=;
 b=arNYoydGTMvLFSDgkaNZsqZJCgPtzUNtRrSiPirrCYYFZC5fve0hi3L5
 OWeJAmWuemlWG0rpujjTC3OguN5XHQmO9UKjVAJY32GkAEoEywVmC4VkF
 rz7xat5iP6vSETpQzXN7h9EY7Svl9C9SseWYqjYmKGy9vgwNkQATAqa4p
 9slEU+APDEIkb50TcV2oDeWFk1AkzO/vPBJb9DbZfWRTelDZaZVltZLmK
 wtmQxRqozDLETKADAFERsxUORKKo65I8Cu0DQqXajXvw7jtx3nVdncY6R
 ajb/AVTCxgP3VQK7WI/OeJsFW5bKq0vxC25Uvbgv09S5xrXngF1Qy25xZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="341425282"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="341425282"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:31:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="719646997"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="719646997"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 06 Apr 2023 02:31:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:31:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:31:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:31:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVLXLIBaTxpqvYu6Kj7OGZqUnCZo7yNiu1rFMPz7OPBD0VT6jkCwVj0nGadYk0i5fwLdPr23w5mOlxcWd6KiVcKizW5dZT2Xzc4GUHRghlr+XCqNcm3mUvRpzB6motZU7nH0gvamZKeF+xuEct+3lPue0gHVW9Ci8iiBcoomjncWrJdmmPVjenC8ss6SerQOX85Vq9FHMWHlr/eGAzDquOR5ZgaQBN94RBhHPP9YaFdfNN2obGgO8ugLsV5h+l2TR6RBYPl7T92Ix+VaET/HmQ8hSONUPl9gtyfLUXxUK4HpwR80IRa1WTNUcuG+ZIWZZ15Kz+cVRbQK1TriWyylnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwYtl91twAM40jxQFY4Q03hMbGXR/vmZnrWhNWgSLUA=;
 b=NMWqRTnkOKmHE243QK4RKrqlpluLZtmK2MwJU8LnnEnhAAKAotwn5b0GGJS4SMh+JFuUyEnpxzKz+eiNnBpahwjUhXMp/uTYg4uCltWx4ovzSI65Srt2bXBWy5vhD1fktF186SKqwfEW+jP1gwobZb3fpzmuuFisSs2YGnOoPPt9Wy2V9GxzIB1M8XBjIaVhBUuzisEN29VuBeHqq012gNtTD19r3Dixkvtc5Wm1NxKxf7LJzqCPlGuoZsXOviTyoJkNywBi1/G0xQSEj2VQeAgldPHKIrnw1Va4KPafMzJ7hMtXgbrsMm8Qi5aAD0g6iId89sWN3h1sQ3fmiC2ctA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Thu, 6 Apr
 2023 09:31:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:31:49 +0000
Message-ID: <4f18e326-ab0a-528b-da53-66dd49ebc4cd@intel.com>
Date: Thu, 6 Apr 2023 15:01:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-10-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0025.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4970:EE_
X-MS-Office365-Filtering-Correlation-Id: fe14bab1-1d7e-4ca0-8694-08db3681bf06
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GW+lS+u+xFFlYlbTy+UmLfPUvRYHvnFaRRX0Um9YrJFi0O+uBH93f26UVMtlZLeXbyRJu513pJBAr7aKOWHvoPVWBaJYvKUjRMtI5eBA4RD8BN1Cv28xAJpfkRlc+1wvw5UwbGYTgp5QDo2qM/w0ZWLj90egQR07dHXM8Ma1hjMS0+q1FvmWG9/oETfpfpFRIJuS4IkFFUp6Qe0ZOBD0OuDH1eFSzvxR54Fp6/m/35PspOe3YFVrw3tKcxJxwyljiipQl/Zjyjxuqf6vu/d8Tsk9g2FEhuK5a1lR2letOZZmTHJK6ONvjIUZMPUKyLkCOK4Lk0+Sipn9ZOPJhgzAyCTmBa5rKouFZU2+Qictsyrtz+jiB2mX41qZMvdu+Yyz+p9gqo9KXWuZTlSLiH7XHTiQFfFUAbQKC6x5aDFFmHkm8N4uDMVzFfNGAQ9ncG0wtT7AqrDzVPv52OeMbasikyzGo747MLheTDgBFv9Vos1eYBaisWGw/DdezJuv2DRLSDuFzIFqsNglpwQH7VUhKmrKFyGv+f8D2OG26wOrLTVvTTX8iyMg/ifYoct2GEJPS4YzsGkg5IM78zsmVzS8W4fbkj2rvPMUM1RBqL1YFrVw2ICNxR6y6CrAQnNLJNGV/W4PzXUgyiC0xVSCmBPQWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(66946007)(478600001)(66476007)(66556008)(8676002)(316002)(8936002)(5660300002)(38100700002)(41300700001)(82960400001)(186003)(55236004)(53546011)(2616005)(6486002)(6666004)(6506007)(26005)(6512007)(36756003)(86362001)(31696002)(2906002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3RWeTR6VW5Jd1VuaVVDOFd2MENHY1NkMTZVanFyUDE5RHM0MmdFODk0VCtl?=
 =?utf-8?B?UHdoN0VndlVCTFZEL1dVZXNBWXhhY0tVNC80Q25oOEUraGgyK0JhdHNmL2R2?=
 =?utf-8?B?QzlWeFcrL2diWWxKRkJxV0MrL3JNMm9jemg0OHkwOEtMWTArMmRGYnpHUm4x?=
 =?utf-8?B?Nzd1cFFhU001elNLa1lLWWJZM3hGNTJSRzVuMlplVGNCM3hpYWxHYTFnM21Y?=
 =?utf-8?B?WkVOTVFNZTRkTDhWVDlrNGRVSjZjR3MvK3EvWXMyNHYrQ3k3Sm4yd1NucjZT?=
 =?utf-8?B?L285clp0NkpGUktsUFpGUG1pSXMrQzJYL3kwRkNiRjdsUXVlY3FvUG52WU5s?=
 =?utf-8?B?WDhHWG1WRXQweloxc2swaEZCSXZVekgzYlB3ZE1sRS95Q2UxQ3JNbjdWK3hW?=
 =?utf-8?B?QWdUbkxBTjFGQVIxS3dqMzBpaTJ6TCtnaUtIdWpGNFpUYTUzeXhFTlVPZExl?=
 =?utf-8?B?cmZ3L0g2cG9hMWx5SC9hRHJoYllxN1hMRGpHMjlrUVhYTTNJc093WEdIS1VX?=
 =?utf-8?B?U3hZb3NPM01IekdTZ3J2ZHFKNDdadm5JLzFRb0Q3bk9PY0diNEV1d1JVVzhl?=
 =?utf-8?B?V3R6US90STJiN2RyZlFwZlB3c09pYk00bmVJZHF6LzZSMUJpZXpncDk3eUxl?=
 =?utf-8?B?bzB5eUQ5aVd5VS9kTWtSTFRtVDdzdGlXc3NhbUdHSXpBaU1kbmVUTzlhbks0?=
 =?utf-8?B?SkZyd1VWamo2QnRtOGtWWi9WNjVvVVVxY1NEMWROU1FmYnhiTmpRNG91K2JT?=
 =?utf-8?B?U0lZeFBidnVKMklhektyYXNyeElNeG56b0Frd0IxUHREZVUrQVJuNWdpVndn?=
 =?utf-8?B?UDB0OSs5YVV3bjk2K21pS21XenAzWXdPWXhDTUo4T0R5aE5nSkZ5Y1FiWkFz?=
 =?utf-8?B?SHJ3d0F5azg2Qm94bm5xZzU3OEdQeXJoNFJvbUtFRDA1SG0vVlBKejdXNGI5?=
 =?utf-8?B?SzRQWWdTRDNTMzhLYUFMWmxKeGxFZUNOckplcDJLQzVvcU10MGYwdms0ZHJ5?=
 =?utf-8?B?N1phVmlxd0p4RVVabElhRG9RR3RBczZHRWtkOStsRlkxOWtsQ0Z1ODVZM0hL?=
 =?utf-8?B?am82MTA0NWlrbGIydGxyVTFRdUV3dWRoRGJrdktiOXVtaDJ2N05NVVFQakZu?=
 =?utf-8?B?eWtsYXc2eDlZdForaFFITGpEQXFjOXR0V2V2MmxuNGdUQ2xJTVg4anZpQUll?=
 =?utf-8?B?anJsbGJjZ1lSK012NXJ0V0ZWVk16NWdDalZVbEd3ZExXUzZHZjlzdlF4V2I1?=
 =?utf-8?B?SFRpSGRubmJJc1BpWFJqRVUyT2oyZ0tzZ3Z6WWVQVlRrZG9aRlE4a0ptVjc4?=
 =?utf-8?B?MENJZDlTWHVtQTJmRFZ5czZ0N0RLdWVPb1VoSTcxU29xWlRnSWt5MWhzVE5h?=
 =?utf-8?B?bTFUSjQzYUFkb2NQT044dTMvbjA1MjhtOHVmWno2dGc2bEJ5WTRlbkV2ZVpG?=
 =?utf-8?B?b3l3citVaGtFM3RPcTQ5TUJhWjUvM1NpV3htbHhuMm80RFpIMk0rNVl2cjRl?=
 =?utf-8?B?dEp1Snl6WEtxZGQvRlNlU1B3Mmh1QkIycnRyMU12NG9qOGRaeXRaemsvK3Yz?=
 =?utf-8?B?MXMvNEhvcHovMUxRN1hGdWlKK3RZYW1WVkJVak1MS1pIREE4a3NrQzNWbTNB?=
 =?utf-8?B?eFZtNzRyM1NmZDFXSEJqUkMrZTU1ejBESSt6bDBTamJZblJIbzYvZ3ZZTjUx?=
 =?utf-8?B?U0ZjeFhYRElRQmp2Q2pHTERrd1dQNEw2K01wNk5Kdi9YOTFab3lpWFhGSUls?=
 =?utf-8?B?K0JtWW9ENDMwTEdtTitJcTd0cjRZY2tDWWhyTXNJd3lGb3dnSEZGdllJaHcx?=
 =?utf-8?B?WVo0dExBUVhIZTc1T2dzbFdnWE9yL2hpVWc2WC8zTit1NXVGclNRZlpQbEdY?=
 =?utf-8?B?TzNVQ0ZZVGZxQ0FEQzdzd2hEU3hkWFhCY2xNeXd4OTBVMkJFajdPSEhGYS9I?=
 =?utf-8?B?UjZ6TDdZQVhFR3hwMERiZDZEVm5mbThHcWVDOG1mVUtDMnB3SFNzMEZpM1BY?=
 =?utf-8?B?RmVhK0JvV0FjZnAwNTVTOFU3SHRIZzhhUU5xSTRuU0hNRklHQS92am02RmZT?=
 =?utf-8?B?N21yMkt5THJsSnRSSkhvVzhrckc1K3pSd0NpOWNRZ0I5SmJYRXI3ZFMwaklX?=
 =?utf-8?B?cXBpNm9aMGtqTC9tWmJBTUFDZWJic21OTmVRWmJmeWVCQlM4djB1QlhsZGY0?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe14bab1-1d7e-4ca0-8694-08db3681bf06
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:31:49.0859 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ePV6osEUNQwCT5efHsqTFGqk19phJtYdEqnQUmI++ibuT3FqIspqk7IqS0qs/XTv5LWNicABkC5kL9JWjZet460x0cS5tG2s4RblL2rCMLU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Implement chv cgm csc
 readout
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Read out the csc matrix on chv, and stash the result into the
> correct spot in the crtc state.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 36 ++++++++++++++++++++++
>   1 file changed, 36 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 86b0d8260574..baadf62aabb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -612,6 +612,41 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
>   			  csc->coeff[8]);
>   }
>   
> +static void chv_read_cgm_csc(struct intel_crtc *crtc,
> +			     struct intel_csc_matrix *csc)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	u32 tmp;
> +
> +	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF01(pipe));
> +	csc->coeff[0] = tmp & 0xffff;
> +	csc->coeff[1] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF23(pipe));
> +	csc->coeff[2] = tmp & 0xffff;
> +	csc->coeff[3] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF45(pipe));
> +	csc->coeff[4] = tmp & 0xffff;
> +	csc->coeff[5] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF67(pipe));
> +	csc->coeff[6] = tmp & 0xffff;
> +	csc->coeff[7] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF8(pipe));
> +	csc->coeff[8] = tmp & 0xffff;
> +}
> +
> +static void chv_read_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC)
> +		chv_read_cgm_csc(crtc, &crtc_state->csc);
> +}
> +
>   static void chv_assign_csc(struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> @@ -3329,6 +3364,7 @@ static const struct intel_color_funcs chv_color_funcs = {
>   	.load_luts = chv_load_luts,
>   	.read_luts = chv_read_luts,
>   	.lut_equal = chv_lut_equal,
> +	.read_csc = chv_read_csc,
>   };
>   
>   static const struct intel_color_funcs i965_color_funcs = {
