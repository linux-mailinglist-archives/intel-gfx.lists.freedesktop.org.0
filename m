Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 627FB7143E1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2BF410E214;
	Mon, 29 May 2023 06:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB78C10E241
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685340426; x=1716876426;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PV/E9SCsjEs06YRXrAEvu4P98mVUBPUoYnEf5EyFR44=;
 b=Fl/tfYu1lsR0ME9UQmi5e5M6cWgq6RLVFc+HB3rEM2qRlbV+A8mbnoah
 Z+vGbLT3BNykT07mpvbf5Y9GKsslE0untj9LHUeolBT105A0RTL7u1aJn
 NR0MYlLBrKZuUfzvq89juI6XVsp1QluQBpzs7PljTdBnJ1TRWtfi8iMF4
 FQ2VCARPOhxYcl8mPqMhMfPHzh3/2hNX/Cii8jIA9l20gKNtd6qbaDjoB
 /24MOYXvcQvMGa37vZNDU8VmCYaOTVP9JLKnZpbTGeay/r9ytvMbpuSD1
 cMkECiZp903ResS1phP+0R8K/RFQMrGPnWED1uWDXcCUB6JKL7bElDWPx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418110238"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="418110238"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:07:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="739027809"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="739027809"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2023 23:07:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 23:07:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 23:07:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 23:07:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 23:07:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqmHQ4hLqtsEFBBzMTtNrLbfLBehyl2+dsnM8epeHQDE6JtrbD6cmulGJtxml/2kwZGBSVLD42r9fkxnaKN6O71TJdSbDaMOfgXZwoLnmzw+AfyrFVXfKsOjz7OfxkWQut4zzHN9zNx8M4sbcnCe6HGYmKLOlcBYFFDrlJwYOedmSv28PA2c0Ki+lCT2keZ8/oZRGi1j9Rxo3rB/AV5VHZXd+Y4swSvEn7+g1y4Mgdn/dSdYb06kScjrHKj9qu9nuMeCUfG1bgilatKM2rkki+5cQhfqck4o8WjTw5fK6kIbPmYrMrOBidOL0XMWUkHa/dJ8Eht4QeDrVfOOq+Cy/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xpq0aLv67SpA1tWwcxm1ECBg0NvTEpQwImY9wtYQD2w=;
 b=jC2rql7MfrsvN3fSAlAqSxByKgV93289O1Wb6ChT+Gr/ZZiWimtSYlTATgFeZ07Z4ffTNAeKJRrVKWrZ/S7e1MmBaKNpy+sE1RNl69xXKryhT+voxLZ/sHk+AE2TJx6vpPmrh8C5rryxS7ZaCWbzqfpD/TomLz7yvJXG86jrprYcenQVN7XTmXoGZBsNO8+uFOQYOD2X9SLoy7nJvyLqJtfkIBhjhURcTWfFdnqbS8NFm8qm+t1826eTNexq6wZkkbYrCsPULUzbHehELuzbwnwzHVoho0JGVJmJ6lGErE5pr6SlKJggmN7WYkgvawx7fup5u+MLf3SFGiLsyDbN/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5691.namprd11.prod.outlook.com (2603:10b6:610:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 06:07:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 06:07:02 +0000
Message-ID: <5793448d-ff75-07bb-c279-e59298275fcd@intel.com>
Date: Mon, 29 May 2023 11:36:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <1d57cb2b4a8c2ff3c4cd06388e0a5ecbdf379601.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <1d57cb2b4a8c2ff3c4cd06388e0a5ecbdf379601.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0137.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5691:EE_
X-MS-Office365-Filtering-Correlation-Id: 259238f4-15cb-4f98-ee3e-08db600aeb9d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vhYx3U7QK1roD7icbjLQbIvufTBRSX1wLXJNQhPJpmThRAz9UjDOhAKgf6f68Y+AHHG2yMho1nEr4llsLTJBHudrrkrdW2t77YImxCgCxXaTCXFcnaBRZoc1bmra4qyKeTALWBfKuiz46gSuie1HQ0exQUELr65HQjCIoB6OFDzbPbJIVnDycuJMaRXA8xoGVZziIcmDTFmeRpgPxCvNNUHojHJ54xHEW1/SPaLsmPv/STOhdH80KuS5QFXCnsXy52ep+snJkVgi7vdWCG8877kKYqY40/EAhDxXEORrA3C+YOUx1yQ2cX0zjPeAtK7pe2EvDHay3Rdo1V2A2oEvC0o3d+z3rI8J+N8GMmAeoPb8CF9quY0g3PiRDbLjfEPYG8VzowIcGcxywEeEslrj8po/cMqeE1tXxT19R1zB3l8yNvxzwCbgpMT+bG1IiNLRJQ8PHxLPj9Yg7ZRJ41LYv7OD2+oIaEGzmtSnoYfYjmGUzO4plFaA0I0buqxt/MuCOvXFlYeP2uabopb55xlExxpNTaVelyG9sJ0It4FRoJ/kd/1RWcIRzgyQA546uzM0SXDhSKVzVg3u3duskln18nCQqj7EU7DSo+U0GLZfClHbmjErg3fNKEXZY2n26LaX4Yr+ClWNED+pbPJUsm0jrw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(478600001)(83380400001)(5660300002)(186003)(86362001)(8676002)(8936002)(6486002)(2906002)(41300700001)(38100700002)(31686004)(316002)(6666004)(82960400001)(31696002)(6512007)(6506007)(26005)(66946007)(2616005)(53546011)(36756003)(55236004)(66476007)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFJYRjJ3RUNGNExDNjdwYUQzSEpQUS9aRDdUWkpFUWdTRXZ6ZnY4WWNkTzhr?=
 =?utf-8?B?YU9pVHR5QkxhdEc5QzJmTDhnWkJPYU5XTnFVS3J4cFVrSkhKTW5aTXZOVml4?=
 =?utf-8?B?RXNSNzU4VldDNWg4YkJvd1B4SlVMVVNjaGFWajNhQjNic2lHZFF4Rm5KOWdQ?=
 =?utf-8?B?Qkc3Si9VdlVkTngwLzROUWZoMzFtRTdjbWFKTDNscUdnN0ZNcEVvYmFzL1NR?=
 =?utf-8?B?bWtGMkFodXcvM1MzTW1ucFZqaUZkWE42Rkd2WUw3NEo1T09TWkhScTVWVFR5?=
 =?utf-8?B?NkdPLzd0VWJiRlBNeTUrUWYwRllLcjZRcm5GQ2c3ZFBoK2ErcTN0akUrQ1JV?=
 =?utf-8?B?ZERRMTNlcGkxbGhlR2duOThHUDlyUkZEVUlkQWtaQlJadi9VK0gzbW1GYXRI?=
 =?utf-8?B?Zm0xb3dTRXYra2xyVHdWdzNNYlRoS0k5a0RJQWJKV2Q1ZFhlOFBQTnhBdFpH?=
 =?utf-8?B?SVpYajUxMWw3clhnb3ZGRXVYNEJERUJhTVFHZEQ1MVc3NGNUUnA1RlF1c0cw?=
 =?utf-8?B?dlNvM3dWZnlRbEtkQ3Baa1VuVjMwODFNMXQ4bnFjZzR0UjBXcUs0cHZiQU5Q?=
 =?utf-8?B?T2tDZSt6ZGlaZHU2ZDB2M1FDTzhiaUlybzNzVGtZNHZQMDdHU014RUcvWHl2?=
 =?utf-8?B?alcyQnNLU2VoYmdzTFdxanZlNDdRb3p0c2JwNWFxb2F4ZXNtSUlFRjFUR2hC?=
 =?utf-8?B?Mm5MNENZb1lNeGt0WE5raWVwOXE2dmtwcXA4ZGRsYlI2RTIxbFVVT0dHWnRY?=
 =?utf-8?B?RVR0Q3pQM0hIaVlQQldvbHZ0a1JJRzljOWJoZ1pFdVovUFhnWm8xNlBSUjdx?=
 =?utf-8?B?bWc3REZUSkIyNkp0MHVpVjNDQXp6LzFVS0R5akpDMzU1MXg3cnljMG45dFhJ?=
 =?utf-8?B?ajBEc0VXbDFiWDhENzNhTGVzdDNPOXlBbUNNMk4rVEVkVDM2VGh1Qm1UL0tI?=
 =?utf-8?B?cmN2L29ETnpXd2QrQU9MV1F0T3dvM3VvTW05eWMzVFljMUp3YzIxWWM3bDhy?=
 =?utf-8?B?cmlSa0t6Uis4Qi9OZjVGYi9yT3RNRUlMUG1NTjRYWEx6WHNjcDUrTG51R2Jr?=
 =?utf-8?B?OEFNa2l5WTBsaTZ1UW5HZmZoVWU2SEVFUVhDb1hxNGNxU1lYMmVBbW9uNmZ1?=
 =?utf-8?B?TXIrMms3WG44ZlFLMlBORWZxaHBFSE9meTBHQ0RxM29INFZWZXRSZkV6d05X?=
 =?utf-8?B?NVNXRjlDQzBwb2FBZ2JoY1l3MEJxSXdwbDBZeENFZzZwb3kzc29GTWNqeGd4?=
 =?utf-8?B?UGw3L0xOdkpPOUpENXhSYkZ2S25GdFNTM1p2a1c0WGN0bmYzdXA3R3p5eHdR?=
 =?utf-8?B?b3lVWUlJUXVyR0FiNW83KzhvQXBvNWkxWnFGUGVJQUVRcTlIZTRHbXVncmxm?=
 =?utf-8?B?MlVEU0RXL0ZncnFIVXh0OHNNTVJDZkp2ZHVmR25SeDQ1TUFRSFZlMG5qcWxp?=
 =?utf-8?B?UGVIbndnUjN4NFg2aWQvUk01RWxKa0xvKzNiRFBlcjVhb1VNK1RJSVNXQUlI?=
 =?utf-8?B?ajUrOTRjczhqT3pZeGpLK01LQldZazc0VmtnUnk3UXh6TXpRdUswdVBrTVdi?=
 =?utf-8?B?VzZuS3ZheEdsT0FCU3lsSFBPaXpFNGJma0RVNGI4T1pSeEhaTjVub1B1LzdG?=
 =?utf-8?B?QzkvckIyRTFHbzIwM3Qvalc1Vm9iSnoxUUQ1QzV0bGl2YUwraHN3azZqTzlC?=
 =?utf-8?B?dWx3aDN4VVZSYXBXcUpqL0t3eU1rL0Z3bEYrc2tQQ1MrcjBrK3NFN3A4TTFi?=
 =?utf-8?B?dSthZjlWRTIvTVlCZWhyN0pyMzFwdXEwelh6cHJMenVLbTl6aERJN1pHczBk?=
 =?utf-8?B?UXNDWnA5eW1zakNlRjBEWGRaVEJEWDlBWnhwdkxtTjVlY254dCt4Y051N1Q0?=
 =?utf-8?B?b2ZOVmNnbTQ5d3JDTVNNRzlPNEt1R2JJcHVoQzk0WnIvMnFVbmV0dmdVZmhs?=
 =?utf-8?B?bXgxUHhHS2JGdHg1OGtnV0dEMkFTKzBQQ1VhQWh1S1UyZE5ZZTl4VWt1Q3Q0?=
 =?utf-8?B?OXNsdVNoNkJyZTUxMDdleCtZRzFUWlFneFNWMWJEdjRBWjYwMW1jTWxSNHRE?=
 =?utf-8?B?SXhsMFAyZjA1blVYbGc5VCtDSmtrRDVGTGpYUXNTVWwvUUFnNjVHMGVzNWVn?=
 =?utf-8?B?YlMzV0N1VmN1UlJjRVBMc2lGM2dWNGE3VitsbkdSaHRCMUU2cGFiYk1UTzUx?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 259238f4-15cb-4f98-ee3e-08db600aeb9d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 06:07:02.5941 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pbELVx/6FSIrvQTcRCfIGrGGF9XK5dORTwZ1ptOByEjmgz17egDbN5WQsagL8ApSSdYHWj2EJTvtJ/DgOlPiSdGZn8zIJwxKEW0CxF3LCws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/sdvo: stop caching
 has_hdmi_audio in struct intel_sdvo
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

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Use the information stored in display info.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_sdvo.c | 20 +++++++-------------
>   1 file changed, 7 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 0bbfab95ca37..0f0c1733cd0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -117,8 +117,6 @@ struct intel_sdvo {
>   
>   	enum port port;
>   
> -	bool has_hdmi_audio;
> -
>   	/* DDC bus used by this SDVO encoder */
>   	u8 ddc_bus;
>   
> @@ -1328,7 +1326,9 @@ static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
>   				 const struct intel_crtc_state *crtc_state,
>   				 const struct drm_connector_state *conn_state)
>   {
> -	struct intel_sdvo *intel_sdvo = to_sdvo(encoder);
> +	struct drm_connector *connector = conn_state->connector;
> +	struct intel_sdvo_connector *intel_sdvo_connector =
> +		to_intel_sdvo_connector(connector);
>   	const struct intel_digital_connector_state *intel_conn_state =
>   		to_intel_digital_connector_state(conn_state);
>   
> @@ -1336,7 +1336,8 @@ static bool intel_sdvo_has_audio(struct intel_encoder *encoder,
>   		return false;
>   
>   	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> -		return intel_sdvo->has_hdmi_audio;
> +		return intel_sdvo_connector->is_hdmi &&
> +			connector->display_info.has_audio;
>   	else
>   		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
>   }
> @@ -2056,8 +2057,6 @@ static enum drm_connector_status
>   intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   {
>   	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
> -	struct intel_sdvo_connector *intel_sdvo_connector =
> -		to_intel_sdvo_connector(connector);
>   	enum drm_connector_status status;
>   	struct edid *edid;
>   
> @@ -2094,12 +2093,9 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   	status = connector_status_unknown;
>   	if (edid != NULL) {
>   		/* DDC bus is shared, match EDID to connector type */
> -		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
> +		if (edid->input & DRM_EDID_INPUT_DIGITAL)
>   			status = connector_status_connected;
> -			if (intel_sdvo_connector->is_hdmi) {
> -				intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
> -			}
> -		} else
> +		else
>   			status = connector_status_disconnected;
>   		kfree(edid);
>   	}
> @@ -2148,8 +2144,6 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
>   
>   	intel_sdvo->attached_output = response;
>   
> -	intel_sdvo->has_hdmi_audio = false;
> -
>   	if ((intel_sdvo_connector->output_flag & response) == 0)
>   		ret = connector_status_disconnected;
>   	else if (IS_TMDS(intel_sdvo_connector))
