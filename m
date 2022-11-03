Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACF3617A88
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 296AC10E269;
	Thu,  3 Nov 2022 10:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D6710E269
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667469865; x=1699005865;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=m9TeBpFqiVTfDbMan4iW9Pej+NCKFeqN7h4oGO3rgJ4=;
 b=JsYDQwgrtTiyFIfaBRSwjX9lrE/HbALsOpqqAp0q5VzoqqjvGm7S4nTx
 DxqPSJom22GjkBYFWzCiB4TBegwSts2kYOVLGwT2OAaRm8OEbQcCpsZb8
 yX7kZwDgdPRplWZtPRDz9w7sfjmcdpC5xZEu3u0KzfAzdBjxVQ4BxHxkT
 qDtnq8xQ83znn2rtHYqCJjr6+FbLoXf2efJVD9YQ4oSMOvUoY0UCMeDcW
 sRymbWjf9leb+1a0EkCZnR/9mjnlahrqDqflY92bR9J6bkgzTR1jGMHoU
 5/9ww3K8xK4auwPqLqrQyutK/Q5Dd5CXqwdrCKnkaMEdtBksrstyRR8xN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="309636171"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="309636171"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777245073"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="777245073"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 03 Nov 2022 03:04:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:04:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:04:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:04:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:04:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mqFwLVlHqqx0Q2tXBIHOj6nyBvM5YACkdrcXX66soB60nnDbuHwIRwXzaxM78VtdLAsI40g6ipuqthMr8TTrRNYIhqySZrZ9SRsIQNkEtVdIB6UhJny9On3+KrCnXs+lwgUGlOEVjo9To8Hvty2V42ooZk/qvuRUEQr/2zyCglKnaxqwWAiIi68vKO/7l0p60fuWVGIBtFH4us5hOL0ALt4SqcDI/twICweSgFHPXYwin3Vh4HC4jAs+2MBO38uyPS5Idr46QRLsnKYNGl1g2oh0qOA0DfbNcezaF+guhPq6bs7zPqnDiIarWNLjpx1bhZjBqxMcYBNKpjDJEIcXvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5bcXXZCOCTWsdEb6IqvkhGsy3lX0kBgK2iniGjBXi4E=;
 b=JwHarEjpJZ75SelfFwwpQiiSX/ZuaePdB9MgprmT2pkcobyfY9ydzd0Rc/wscEYDcZtkwtp2vgFgoXI79Qe6uePrbYQKmlpQWRQ/8TGQoOGj1vnggfcwWYGS6qNGAIfrtVk6g0fXxASWsYGLlUVa5TYjz7I1WutM4hjTCIrBNCieDO6mfRptXUmBAc6TGKPlvcPLC0hW+Td6QSWM4THlQRVFLIr0YG9mZV/z106cWqWX0KAH/9of1taStiM9Ja0F4gNH25vXRSXX/FhfQUmt+N6VRp6A2OKSgLndFoKE/zQZfEeRgpluNYBg19LAof9dT8NYWmDb7yXNK+cKk7T4Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 10:04:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:04:21 +0000
Message-ID: <145d4189-5ade-4913-ed9a-9fccad8b49e5@intel.com>
Date: Thu, 3 Nov 2022 15:34:12 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-8-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0042.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA0PR11MB4542:EE_
X-MS-Office365-Filtering-Correlation-Id: ca52f9b1-8479-471d-d9a4-08dabd82c70a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6xR0PxBdU39hR8iSI1E4Halqm4fKOz46iiY8NeRbCDgcBL5t8o901oFapAWrbw+vtPEHOEqEQrbLRj9tUQ3c3w16bLbGxHiM88XSy47MnO4ru9fKqiwAZq6Vy4NuDKSYSY2Q5rGsEqYdoyf5bAm9J078DVSQzXS5sGbPFnn0ZgZ9bs/Bp+mPWuAFq001XOw9Q6URu9cYnhcosD+GfaakFJMTygMEQ4nEhe6vEgXsEAlPCzldSS5Hv8FR9sGkFX1U1zl5iylNTD+BZvSeb5swbuWkf4VJdwVz/Vf0XikG2fKkG7LPuyOKtCur9F6E7920TNso1iNtSEnyX367M1GE/QBEJgbAYzRFaCtN2euhfek5QeOtlr9gYxEm6pojKfF83qjd2YCROaF8x8rxv0Dn7BDcYk8isKveZW80yNA5hskBSGngBg8gSNN3PZ5HQDoADHLCEo7zGlI3JN+TVAeG/W/g1nvRya8T8XL+Q+jTYSnlUWnXBjifGLhb1EKHVpELHBLX9Ma8T0/Avmbt/7eHqZ8UZHb0tM2xymo1D9z+AJBnU+tVK2wYVI928twJUGTTqhGgggPmy153epBFKNPCDZ1RZPtlMDGsdhftUvFRfAwfBztvkMlajsP8ej3yJ5q6zyMcpm6IxL4fHPUU4v+T6MYRt54rYtNEphmfAIGOhz/l+IWjSZNyUCJ40Lzz/8m5wSySdVHo1fFniK/olBb04BlxNkkhADuVuJmqgzwOtetWOIoz/MPn3T27O7YbbiQpnCwKTw/jNglS+Uxk/C5RNu5w4iCaRbhqJF17oDAMaQU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(39860400002)(366004)(346002)(451199015)(2906002)(31686004)(86362001)(66946007)(66476007)(66556008)(26005)(6512007)(6506007)(8676002)(31696002)(41300700001)(8936002)(316002)(5660300002)(36756003)(38100700002)(478600001)(6666004)(6486002)(53546011)(66574015)(83380400001)(82960400001)(55236004)(2616005)(186003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGhWWXZDSDlTVTBPTExSV1ZGbm5RMW9YSDZDSkplcDBvWDlmSEdldG9kZVJh?=
 =?utf-8?B?Uk9ubGVnQVVFaVNPNnVWck9ObVBLNU04dS9rM3RTNGIxWkd6TmZJajA5a0Zl?=
 =?utf-8?B?WUpRazE2TFZEWWFTUlRtbVVmZDJCNmZDZlltRXp2ZEpkaFNqNUJSMUJCY29K?=
 =?utf-8?B?bWE3U0NkNE5rY0x6OUpiNVRZOFIwbkI3eVNIRVZuRHNIcThjNndtb2x0OGRK?=
 =?utf-8?B?Z2dwdHZVTUFLMTNHN1JHb3ljTGwzOXdmZzlKcTMrMlROZGpGMGV0T2NnbHE5?=
 =?utf-8?B?ZDZlbEZSTlVFVHNsY1VqTFFEUHlCMUd6bjZoTU9vMFZLQ0hwYjg2NHRPWVdt?=
 =?utf-8?B?V0NVQzdibElaVStSaU1JbHpoMHpWY2x4VTBlaGd4aEFzazhrU3JUMUJDdE81?=
 =?utf-8?B?Yk0vZGhrV1BsTGpXSTU1UmxLNnN5YXlFTHU2UVFuYm4rRzl2alhPTzVlS2l6?=
 =?utf-8?B?MklpQldFWE9YUEo3SHMvdmZlUmdWMkZSRWptWWp4RDBEUHlRSmJ2bjBiWU1O?=
 =?utf-8?B?Y1R1YzgyZDJtRFhTdVIwbVVRVTdOR1o4eEFuT3ZubnEzcDdnblVLb2tCcTRv?=
 =?utf-8?B?RFo3Z1lZcEdSajlTbGZiZFlzVm9TZlNrdGpHcy9hbWJQOVkzRHYyazZPRSt3?=
 =?utf-8?B?RW1LL29LVENKVGczTXlPV0xXQis4Z0VGNHVKd0N2VUVPbU8xT1QwYklrV3Nr?=
 =?utf-8?B?TWNUVEl1LzIyM0ltaHdpa0tEeXVqcGZYNzAwUlNuQkdJa1A1Y0dTcDVmMStj?=
 =?utf-8?B?NTljYVhlTGhoWndvUUY1d2N5K2J1U2dpT2hsemMveXZtRVNGdkRIR0NjaEpW?=
 =?utf-8?B?VDE2UDRDdzVuSWtNNmEwOW1WL2VZdHpzRUlQYVRpVUpOM0RYRmgrVDMySXc4?=
 =?utf-8?B?ejgvdkh0MXlWaVpneUdEQndPUnBnODNqakhKKzgrdXdtOWxqcmIzMjBnWDVz?=
 =?utf-8?B?eU1MejQ5dmFYS0hNVWRUTHNYTzF2SEZJWWgzT1FaM0RVa2p6b0hnd1NKb0hp?=
 =?utf-8?B?cFR6clJqZXg3OFZMbmFiMyttYTQ3ZGxuOWVWeGVVdGc2RDd2bEx5M2M1SmI0?=
 =?utf-8?B?eGx2NURYbkV4OXdpWDZ3ZVdSRVluK1ovNGVaYnpZSjBaQ0N0OE9MRlBSNm1y?=
 =?utf-8?B?ZFY1aitnMUkwR2szMmtIdHppWUlBWjFTSElROU9ENUpnNlgrR1RBZ0tJdmwv?=
 =?utf-8?B?ZzE4S0hzVHNCUEk5VHVKYWlNWFJHUWgwNkFxbmVoVEFjeHJBcUJzZEtqZmRG?=
 =?utf-8?B?TGFaZFJMRklPeHhhaFJ5d0ppZjd4dkIvd0V2THhmYnhoUkFVRHkrWVhnbDVO?=
 =?utf-8?B?eGwvVnNGdTVIWHk5cHo2K2VnSzZWUzVkenEyaWZBWU5GMVIwM2M0Z2JvVFY5?=
 =?utf-8?B?azVEejRsYnVLalQ3T3hyWWtISmQ5SkRzRlI1ZFAyVXFwSzdCV1VNdXA5QktB?=
 =?utf-8?B?dkR0WkZNbWVOYUdOOVRlUS9VNDdIV1VjTWhKUDVna2YyMjNLQlU5dW1KZXlX?=
 =?utf-8?B?em5XTC9peUhPWkZ3WCtDVjNMUVloTGkvbVVUWDNQWUN5Z3BBaFRrR0lnOC9V?=
 =?utf-8?B?RUZnYXdnT2lHZS80UGNkRnNXM2w2eldFL1B6cGRRRkxvVlo4cDFJYU5ablFO?=
 =?utf-8?B?SWc1TlpLRERoZkI0bzZMOFkyd2lIeDd6R2lrL1pGa3ZPWUVYRzVlSzVBQkRD?=
 =?utf-8?B?YTJsOXllNDRPcGlVb0d6a0dIMlFYZzhtbG1zY3NHZUd1U29yYnRGWmdEaGlk?=
 =?utf-8?B?czIyRnRvSkYvUjRLYitqZW5KeU5Zd3VySGhld1NTa0t6T1VvdnVmVVFRd0pV?=
 =?utf-8?B?VzB2enZpQ21CbG9RbjRLeXpHTGJNLzJMWmhQenRIZSt6dWNROSthdjFFRUtm?=
 =?utf-8?B?Vko3dFFKUVhrdVcwTm1zcVVQWnVYbVB5alBUclU4V0FSZHRLeHkzWUc2Q0Vq?=
 =?utf-8?B?TzcxbWZUeUhLNFAybWRPNGdLSHpSd3lwRlZYZFZXSlRaTXphZENLSGdVNy84?=
 =?utf-8?B?dmd3bnZMcUtLbTJLbkNlMDFuVi9oaDhLWnpFZVo3M3krYitUaHNyeTFBYkIx?=
 =?utf-8?B?NXAzNUVaNjVCK0RGUHVVcVBXMTdrOGIxSDdiQVNzM3FFQkt1Tk1DeUNMY3Jm?=
 =?utf-8?B?NjE5WmxXc1JnUEFZWVU1S1ovYlYyMytEYTc2dElnMlpobjZKa0lsdm9oQjNR?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca52f9b1-8479-471d-d9a4-08dabd82c70a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:04:21.2558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TrX1opHX3FgKu5+imX/eWIpIGtbGnap4BHOnGruF0bxjmP+9XrfDOWuikXyr5fflQc8ZE4avPDtrrimdax1+1Prr4OjsdIhMq0nth1BZMKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Pass limited_range
 explicitly to ilk_csc_convert_ctm()
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

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Since pre-icl vs. icl+ handle the limited range
> output stuff a bit differently it's probably
> less confusing if we just pass that information
> explicitly into ilk_csc_convert_ctm().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index e881c95ee451..946fb767f3e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -259,14 +259,14 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
>   }
>   
>   static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
> -				u16 coeffs[9])
> +				u16 coeffs[9], bool limited_color_range)
>   {
>   	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
>   	const u64 *input;
>   	u64 temp[9];
>   	int i;
>   
> -	if (ilk_csc_limited_range(crtc_state))
> +	if (limited_color_range)
>   		input = ctm_mult_by_limited(temp, ctm->matrix);
>   	else
>   		input = ctm->matrix;
> @@ -319,7 +319,7 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   	if (crtc_state->hw.ctm) {
>   		u16 coeff[9];
>   
> -		ilk_csc_convert_ctm(crtc_state, coeff);
> +		ilk_csc_convert_ctm(crtc_state, coeff, limited_color_range);
>   		ilk_update_pipe_csc(crtc, ilk_csc_off_zero, coeff,
>   				    limited_color_range ?
>   				    ilk_csc_postoff_limited_range :
> @@ -354,7 +354,7 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   	if (crtc_state->hw.ctm) {
>   		u16 coeff[9];
>   
> -		ilk_csc_convert_ctm(crtc_state, coeff);
> +		ilk_csc_convert_ctm(crtc_state, coeff, false);

>   		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
>   				    coeff, ilk_csc_off_zero);
>   	}
