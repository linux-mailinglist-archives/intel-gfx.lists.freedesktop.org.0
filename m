Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D7F59BD8B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 12:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412A810F141;
	Mon, 22 Aug 2022 10:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48BDC10E92A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661163833; x=1692699833;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a6WXQ+rGNyc7MleZ0+BIB+iKCxalv/6t66GyLdXv7bo=;
 b=QlCvSq1nSrYHtcQ49b+06fCP+d8w6IV6EOQUMlr/iwh+Rb04a5R3zdAD
 unzmzXr+6Y+N+PlwNphmHUg0q21/PbUfIclLDSOm1KnD1c9Dkl0+qvTfN
 Vvaos3dK3N6l8mTPQmtQqyjIbni8aIQOPbStn0mSrIFmVE9HmJ9oXgf5f
 0GDZRKdV4nCYHQoJf0VhpUnm2Kta041wGTsvf75dj+gKpoMdf9N8NihXQ
 /X05CEE4rQs3tjqHesBwT6Doh/a1tE2Ga1u2XF5XWiZS4dNZNp7D1keTo
 38JzyKf4xnTjlpES5nly2Z3TNQEbe7hiLpKxJME+/DqyyQnEEqopobwOc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="280347029"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="280347029"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 03:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="669476753"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 22 Aug 2022 03:23:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 03:23:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 03:23:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 03:23:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 03:23:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F1AlYaWgrdF+qGuwfd26mOOa2ESHMZJx4/dF72ke78Mb3X5+cOHN1KVba4J6UG9s+wCfDLd+wppw53Xo+18HFPw5pJbvD11WdPPkNVghBL7w0QE5x4FNCO+yyWsQVNm/kv1c9A/TZL7MThqveKAAVzMDine0dkg3eIH07eWpyKVIRqNi+YunPrIaTuuMkcBwLs/xeA1clNWleIsxsuIO+r1vSrcgBt11Cq4FL9qLXE89+6KZNU7fd0EnFLiVWric0VGhNYZwjX2mGEjKAaZQARXaB4Tr8fZbnW1ki/Eew0hD5KgTOaJi5s6NGhO5bzWrzvIchvbQWHi+vozW2nxhfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lOi3VunVOlwl7zhK3OEWqJvySdHI7R++gVSflSg4SOY=;
 b=fxQZywV16uLUlaBxNNtNjaOcNVn8OhAXCMkHfpHi1ka29/noK4Uqya4hbUSrCQWhdcm/K0+W4P4J9n+iG03m9x+kzJWNQwZBEod/AAFjhsI9SIi+JhKUqW8vRoShxYK1PMY8txiIfwc7ncfAo+8CU6flNn8009W9tNDS4MNYhhMslkgkCr+KMcOGZCenTDC2nW5bBKhlME7al1pWn1i5dnhvLVXAPk5rHeWlSP/0IvSaE1GnOcGB6HLzmm8lSCHk7lIfuq3pB3Rlj02Ntr/1O4n+FJXH5h1AnkNM1dMGCZJrCwCRa2Eh58fd//U9Zi9KJlGxjgv7cAOZE10ig0vnwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BYAPR11MB2791.namprd11.prod.outlook.com (2603:10b6:a02:c8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.18; Mon, 22 Aug
 2022 10:23:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 10:23:42 +0000
Message-ID: <11ce7053-9832-8165-9642-9194a1fae9d1@intel.com>
Date: Mon, 22 Aug 2022 15:53:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220817124516.284456-1-jani.nikula@intel.com>
 <20220817124516.284456-2-jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220817124516.284456-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3587283-7c21-4460-94b7-08da842862f4
X-MS-TrafficTypeDiagnostic: BYAPR11MB2791:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ysutcsqgVIgvy78sLMxtRfJu6ckepAwzAB488A2rMOK1oIZGW9tMx736+jSDWzeI4LyggjFK6mCywKykDfULXDlWilcY2CJ2snOgRvu7sVl8bE25hYzPhKDkLmRVBCB3z0X3nCppSlePyp2CEuezl6POuXYCUBYCjCJ9oyamcPC8mTAHfT+K1IFWR1WYn0laQKpsatVPjNAFJ+WC/wL0vJJ5ZCcOd6lbJsGoTHVbJNQc6VMOo0ekD0NP5aTmUrAudb6NC7aGBHOJIY7MeCEb+ck0oLyuXYI+z17OiO/kTen94whr8SbATJ+GWNYkRdQEh7vdU6gS3FZ5LDnebXwEzi4c7dkn9h0j3LM0RLoxWJMgxo69SPsgJuIYu3KQ9sQwrqre7VxgvxzvNMBugo5TlZYMGncbNxyvzKcRhQ2DV1CJcBFstjU6TNnbJ8uYEeowxRL26/kxHDTysJnhMJDmpxW8NF4/gdpFvuZ99XUkMPoh4JybsmgIeLKRW60nCU1TIOylmdVLvzssCGKJjHKVkWoCVH82I93NgwCYZDMpe7zoBoq9uFVi5i6LpzsmhL9z7+Xa9nDWnFFu0j+S8yYi5SKN06TNY9TbMT1mSJUSM5IuP+BHEU+IT/0prDlUgdQmi5vPKYaQIy1FZvGDUKk7T5EHHXxJNoB2dwbKxNFXFqC/BSzHnX/RuDi7JSmXvseSru7zGVcGBjw4hU4FtohM/XDGbgul3sNWuOFe56gafTedE22r6SRfILM5Np6M3zHsJMd9xIGrAl3pkfEoL/MZswm3GpIMLXG0QyPdqHCjnnY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(346002)(376002)(396003)(39860400002)(136003)(31686004)(186003)(2616005)(41300700001)(107886003)(4326008)(82960400001)(6486002)(38100700002)(8676002)(66556008)(66946007)(478600001)(66476007)(316002)(8936002)(83380400001)(6512007)(2906002)(6506007)(6666004)(55236004)(53546011)(26005)(5660300002)(86362001)(31696002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGVWakcxK1gwWm56RWNnUlBxZ2hTKzBEN2h4RjdnT1RSa2hhdFdRckJDM2Yx?=
 =?utf-8?B?d3Fya1VvWEE0L1VGN3huRkw5T1QxNmMwSVRCTFBUcEh0WFV3cEtXd1dQbDEz?=
 =?utf-8?B?R0JpM1YyaTRGNFhVSXJNb0tJYncwbmNqY1pKQ2czTFpzV0tCeG1jbkFROWxM?=
 =?utf-8?B?dVROQmlhdC93MTdoZjFlcDc5bERzc2VrRFFzdVRPbXcwRjhSVlJRd05kMk91?=
 =?utf-8?B?c1F4Wkg1UHBFQzhTay9OcS9OVmdKRG0rK2JjMVk0eDVPZis1TXVUZ3l2eUU1?=
 =?utf-8?B?aGpaRWEzYmZtdU4zVWdOMytoMzk1VXJTeTBraGxFaWRDQUZBMG9zSzRCMDF4?=
 =?utf-8?B?dG8rUkx0YU94MFIvZlQ2S3JBaXc5M24yTzhYMXZRWDg1d3V3azBuRGJZT0pm?=
 =?utf-8?B?eTY0QW12d05IZHNGUldqN3dhY2pTQVdVS2dmVzhLNzRPVUdzU0JnUUNBc09j?=
 =?utf-8?B?YjE2SzJ5Qlg4MjJLN1FNSjlaM0FEajdlOHRLTEs1OGc5TEU4SzI1dUdWZkND?=
 =?utf-8?B?VjkxbEdXQ0QwOGpHRVkwNTdkWGM2enpiRmVramd3cExjV09neDZHdG9henJQ?=
 =?utf-8?B?MEVJVGtUQXdDZ05sbXBpTzJTZ1N0MmIxY1d3TjN6cTBucDNuTjZxNU5rcDgy?=
 =?utf-8?B?VzhrQTV3cnI4Um9TOStzYUxWSzhUK0R0RFlINlJ1NFNPdzZkNE1VM1J2dlhU?=
 =?utf-8?B?R05zYzV2UG1udmpwcUdyTU5na2F1ZS8yZ1JhblA5c0JJQ0Q2eVptS0lTeTJZ?=
 =?utf-8?B?NzJjWXVvOVZXNWgwMTdWUEJJcXJCVk5aTi90MWNYN1Q0V2hOMnJLeThQZEg1?=
 =?utf-8?B?NXZpaUZRYkt1OHdHOWwrd3IvSjh6dmlLSWxsU3hpbWZteW93Y2tnMHoySUV2?=
 =?utf-8?B?U2srdUZIOEFoZFhWakJOUU52dEx5MTJOQWIreVd1WDROY0VNdENwWFZHRTB3?=
 =?utf-8?B?YmVVbXUyaGgyRThxVlZVOXFCRHNQZEpCektuUjNnK2R6WUtEdzYzdWxoNUEr?=
 =?utf-8?B?UXlTd3pPSkZyK1hIS1FpcEViMTBqc3VDbG5lRnhZcXZ0TXR5cDJielhZdnd0?=
 =?utf-8?B?U2ZFTzAyQk9TckFUekkweTlEU1BHZGJ4MVRnV0NTTnBtWmc4ajdpbnYzS1pE?=
 =?utf-8?B?VUlKemJMMVNZQnFwT0ZwOStjSTgvNURUODdwS0c3NlVWMHlJODNDUnJiVWVp?=
 =?utf-8?B?RjBkQmI4THlUMDVNRFFURWZvNGhMRk5uM0hZSGhhckRETGV3eWpIdzN6RVFD?=
 =?utf-8?B?RXlsdnBBRFczODRIR29DRzV0WmNENGFiTUpoYnNSa1o1NFBiQzNRMDY1MEl1?=
 =?utf-8?B?VDkzVG9kNWt0WC81R1o2SUU5SmtGTmpCZmU3VnVIWWttOWNZS3JlcWM2YUZF?=
 =?utf-8?B?MG5MWmVrNHNWSXpLME9jMkg2TTUxT05ZQmRxTHlHc3NLSVVnaGZ5WFFFWEkz?=
 =?utf-8?B?WGVnQzhTVjUxMFkrVDg2aUI3TkVDcHBIUkhROG9RWlpTdWxiejFhY21ocVor?=
 =?utf-8?B?Sm9iWjd4SmpLNHV0cG1BNjV0UzZicEFpMlhvdGJuNms0YTBmZ1o0aVJ6c2Nw?=
 =?utf-8?B?QmkxYkw0MlZmZzYwc3hKenplRmxrK0diVWtlRzRZc25RRDI4THd0bTRsY3FW?=
 =?utf-8?B?OERMdHFMbStXU1k5b2g5NFRPMzh3d0dBbGlqem1jS09NQzZ5SWdoc0xBNVN6?=
 =?utf-8?B?YjR2UllldVcxMUQrNDBlS1UvSmN3cEhQT09CV3Njakl1V2M1aUVIbHVkcFVW?=
 =?utf-8?B?UFZ5Zi9TVElkZ29VT2xBbzJmbzJNdC9QNm9LSVhyZzZSOU5oUnMwUWRhUEZN?=
 =?utf-8?B?U3hpSldEZlRQVURMeTlEL01yeHBqMWRmd2dhUXFsd2VNSHhHcDUyZWdQOE1T?=
 =?utf-8?B?d3Z0dlZNTzFvVitSNjY0R2V3Q0NPalJiQ0lXOFI0QzRIKzgvSHJadVEraUdB?=
 =?utf-8?B?VW5YNFlaQWxTeUxFZ0FMUmZwcEdHVFEvUVcvVWZ3VHdqaUEvOHE1ZGM5MFEr?=
 =?utf-8?B?RXpsSG9UcUFRbWJTOEZTMHlWcmRtYm9nS3Q4SSs2bzdoVDY5cTBqQWlsK3kx?=
 =?utf-8?B?bkttQzFlZFFPWlRkemQva0RIMFJDOVpTR2pqYThaaXRtY0ZpR3Y3SzVHUjIr?=
 =?utf-8?B?d0hHYWJPMmorUlN2TjNzUHpTS1ZIUjN4eWpSNUNWR1g2NGtHdkttNzZReUlJ?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3587283-7c21-4460-94b7-08da842862f4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2022 10:23:42.3381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IqR7HO8F+wEf2Gu4gy28tg3B04jEBdq603shiGNlQW9TSvR+mbaF/gECrbOW6eI9zrzyojxyF3WGqGD4rGMMM3X03Edwy3ZdoG90/q+1zN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsc/mtl: Enable alternate ICH
 method
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

On 8/17/2022 6:15 PM, Jani Nikula wrote:
> From: Vandita Kulkarni <vandita.kulkarni@intel.com>
>
> DSC 1.2 is supported from MTL, hence program ICH accordingly.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 2 ++
>   drivers/gpu/drm/i915/i915_reg.h           | 1 +
>   2 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 43e1bbc1e303..ac4ba7ac85c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -597,6 +597,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_VER_MIN_SHIFT |
>   		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
>   		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
> +	if (vdsc_cfg->dsc_version_minor == 2)
> +		pps_val |= DSC_ALT_ICH_SEL;
>   	if (vdsc_cfg->block_pred_enable)
>   		pps_val |= DSC_BLOCK_PREDICTION;
>   	if (vdsc_cfg->convert_rgb)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 50d7bfd541ad..2e3aa684cf1b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8003,6 +8003,7 @@ enum skl_power_gate {
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  DSC_ALT_ICH_SEL		(1 << 20)
>   #define  DSC_VBR_ENABLE			(1 << 19)
>   #define  DSC_422_ENABLE			(1 << 18)
>   #define  DSC_COLOR_SPACE_CONVERSION	(1 << 17)
