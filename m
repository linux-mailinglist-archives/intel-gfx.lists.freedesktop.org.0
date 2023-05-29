Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DDB7143DD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD5D410E213;
	Mon, 29 May 2023 06:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FD410E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685340323; x=1716876323;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cmRH2chDNltuJ5b+9IATXQF2C5muE0fNpb6cz4WDeZA=;
 b=aXnFDPRgrvSbbrCtFH+hqkcnu+uoyLMMFwhchnO9E9f82fOi/4u3ISW6
 zWlUVHqSpLIEbIucEU1pSM0DS6lSlLiBY0LX/MBC9ggFnUPjn6o+1kmta
 K6irMbD32iDQD2xTc3F2ncOU1aCHPr9DKe1umm8KLEa+oF2MDrQp+R1hU
 dIlUKpfzBUqg/5Z6pMOvSdUASdvaoDrr+me+43ZH5L4FGDVo5Y2cDnMWG
 u1EBAZYJVnijE83dddUCywntJd0J5AKrC0dmA0fQjvoPVZ/ivaQAR7ZJ4
 bFVAO3bAe9ekHMZJYJ0ePmZpv6c/7XTfwwaQJHABQCQD0YtNn2Hh6VDLw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="357880159"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="357880159"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:05:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="1036077830"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="1036077830"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2023 23:05:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 23:05:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 23:05:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 23:05:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFy7Vx2pztnnZX0KMeE3502sh7P7Ki61ETRXqn72qgG3PhQzGFK0YY9Vr6d/GcLB2KZUIDpzhOA9Ka+enm2as4eXt0MOLGFWXY89X88qVctJk/fBSrMpd765tao0PKn0g/70qdLacddPrKUpnAi+HOWJ7eKai68FUghRiDcFOt01hzreS1kOFtbGxVLqD6rJwwEYvWvP2iYuL7H3JpKppnsgJueeDaDNkKXGzxURISxWFpZXvXCR7U0tcHcxKzUPUk8ZjpJzAdWSgtbTJdIWxGouerkzSGWWrpLI9TxUm0AMUiZ5XPgHWWjeFf1omjxGMbrSGfvu97r85IDsk8oGeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jb69KKIaPgj5dpIibujtDFELc+eRzfuhtn38NSd2bY4=;
 b=lfrtCUgLqLqMBDEz0yNXeZGzsJFJHluPBauWmYcGnZ3lO8xgNWbzQVlOxWSbWTLGzOHcZelg7DI2R2JEGsHAJ/pkJ5Fwi0TncFNog5GdwII7gGnnIdpZOwCI82xzvFcoDy/4t4srs1CxHilA6fLWkQwX1p1EKq8m1OjSWo+h5gUTxYtOI2Wg1P3N0NjUHk9nm5eSsKaA90c4IQ22n19YKKSwOXoYPy5+jbdCjAFYetxmB90P6txtIyb21wYyI50E6pETqYZphevSUVfxLEMkP78Rm0lA4RjmWaoT6YQPYhFSsqW6JWiMm7HQ2T3hPetI1oMAdfhEHRiqqH7mHH8yaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5691.namprd11.prod.outlook.com (2603:10b6:610:110::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 06:05:19 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 06:05:19 +0000
Message-ID: <5b1dc901-ef72-9c7e-8f26-190e8097520d@intel.com>
Date: Mon, 29 May 2023 11:35:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <e3ae4d0b7472eb71b4be2e4017a48d3a7880cd2e.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <e3ae4d0b7472eb71b4be2e4017a48d3a7880cd2e.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0120.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5691:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e1c71ba-59aa-4764-187c-08db600aae24
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ev81WqEDAGK8SpAHFr3qrRMpGxdvcOxd022SftWkKNvceH8E7dULw0bze/IBuk/VE6VolfEEDhPwrYtuLxEDhHEh0VK9Wx2RhXlauFk5ibOGbwWAbaH2R5xK3otSN8VHqmPmQuHI+wdU84c/ZC8J5JcFzUTIBpbs+c7owvkVPhblN1OnWftiV79msQts0ZaPOBZcv/RclcicY1nDN9uEcpX1ICSYmnd/d1n3MTpDforqwa5azwSXMPjKaiqd5TqCeJgJTR3arXM5APx+gAm0cJuqeeQ4Q/pMMY5RPw/mi9s0+/yF5ckRasO9bnVBV9WlfV/L9VarKS+A1x3sFTlnqiiAp9Ue4WuSpNe3MqFam/MkH63dPiojksHF3KxLMSs+KD25Vhjc0SmCe4SFOeY+gYT/eVIY8oHaaWgWwaGMltHzX7VmrC6BFnEy2QEcxhoFpMcTWzr1CcH04+Fw4+yzMa6003mmhciKdhJjHeR1p7YUMD1qqRIEcxmAzEshhZWvYmSP9Q52n1iRzqAvFPhP8VtPLpvlcAzf5jFi4trh5yJF05h2WO864sIY8Qsxqe2XdmLFsRPRaolmpfv0D2zGX/amy4ohRP5omUOCtos6L6eThKnGknhS1itmxCs4WF6thPfjHNhG35XJ32gLLDaDDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(478600001)(83380400001)(5660300002)(186003)(86362001)(8676002)(8936002)(6486002)(2906002)(41300700001)(38100700002)(31686004)(316002)(6666004)(82960400001)(31696002)(6512007)(6506007)(26005)(66946007)(2616005)(53546011)(36756003)(55236004)(66476007)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzJyaFlLeU1Yb3pQZnpTZFBuR0ozUXhNaTJ2UDE4eWQ0VHE0aEp0aGt5L1Ur?=
 =?utf-8?B?YWtxa3hlajh1bm52TjQ4UlRoSlZNTDhENnBaZ2prNThsUHpJQXl1Z2d6bERB?=
 =?utf-8?B?TUJEcW52MHRiTmpwMFluTkx4LzlvVFhCQjJtRHNZaEg4VFcvS3RIVUc2bldF?=
 =?utf-8?B?VUY2TDRIWGxCN3l4NWZ5NHoyQkx4MnhyQmdBcnF6cS96bWRQamNKWmgvVXJx?=
 =?utf-8?B?NjJXSGc1YnpSbUNpdlpxbHJmWnJOK2owVTUvcFFaWVNjc2RoWHAxM2ZnSHFL?=
 =?utf-8?B?ZGQvMGJsWDVSeGk1V0hsUWxxdUJDalFVSXhoSTBkZTBVVTdST3pyaGk3anE1?=
 =?utf-8?B?MGV1a3BkMkwrUlFaU1lJRXR1NWhMZmQzR2x5ekVGR0IvT2cybmRZc2ZEY2ZM?=
 =?utf-8?B?d2NNWHBxczEzRk5QSkJGclNhZFRmZGxLekIvcDFJVkJ2czMveUZaTGpGMTUz?=
 =?utf-8?B?TzlWUDhncTNka1RmVEVwWGhpNW1wdjZrc1d5L2FZRmFGZFRGNVI5d0svc0FN?=
 =?utf-8?B?WWNQZkNYTkJDZ3pwNktta3BCMXdPakovQjlnYWU4VU5yYUdNWWtCRW50VXdO?=
 =?utf-8?B?OXFJa2M1aTNaa0lVOG9udjdkakprQzJrNEpOdW5RZ1FSSzB2RHc3WHdKRTI5?=
 =?utf-8?B?RlFzR2lOTEVHQzFtdEdReE9wNkJub0c4bXRLbVJnYmdxT0RDb0Y2cHkyYWxZ?=
 =?utf-8?B?UGNXTzlxemlGblZtRWNoYXpaZTRJR3VxL3o1M1VJZG1YaTFmNGYySnlIMWNQ?=
 =?utf-8?B?Y0hDS2JwUnUvektwamtCekdoUyttYTRvbzgyVW5GT2hIMXdFTGpQRG1XdW5m?=
 =?utf-8?B?UEJ2c08vSDVpTnEvNjVDU0U4Vk5tZ1RJUS9xOEVrdlpNcmJSdDJlV1BBVGJM?=
 =?utf-8?B?M0J5WGljcVpqcHZkTkpZdCtBQWNzRTljMll5LzFGWmp3anFyeDlyMnhFVDZu?=
 =?utf-8?B?OW03dEVhZ0FHa0ZPREtiZndpZ1V4TzhDQnZscExibHNiQ1lXbXZHUWlEcEVt?=
 =?utf-8?B?R1dqcHdPTC9PVmhXWDBjbE1IaTlUNDhsUTU3cHNJV2d2Yit1NTdrQUdrU2RP?=
 =?utf-8?B?aFJFSUNUZkU1bnZzRHZvYmhncndpTzF3WEsyQjZVeENialUwOUl1cnFabjZw?=
 =?utf-8?B?TVJUOG10SEQzUndiS1dNRllWSzYvUzlEb3IrbHU5OENYNHBldEhyM0o2NDF5?=
 =?utf-8?B?cEl1Q2tVZ3hSYWxzRVJYbXZjOEpjVlgwY1JqV2ZyU1dBK1JZODI1bWppc0ps?=
 =?utf-8?B?TTI5UkQ3UCtFenlNNFlCdFBpOWVaMVFFUkhFVGNUU3BGeDkyNTRNb0NQSkg4?=
 =?utf-8?B?ZmY1a0NJK2NXU3dubmw5UXV2eUJSSjdZVk54N0FDS2hwbTQ0Q3hBd1A2Yzk3?=
 =?utf-8?B?Z09tTkRMdnVOdk13eTBUSnZNSWorOWZZaVR2d1FFTGw2UHU4SHRMSUVKRXNm?=
 =?utf-8?B?L1J1MjZzc3FMdityNmRIODlCcEFhV1ozVHB5dGF2aVdCbUF1bEUzVWxrbDQ1?=
 =?utf-8?B?Nk4rbjlYeUs5ZXVldmNXWlpodmlVMlNvbElhYWFxU3lPc1RjOGFJM2U2aUE3?=
 =?utf-8?B?TTErMHhYcThNdEhKaHZaT1IwMXBBOXFSdFBnZjNzTmRTUm9oSFlzRXZYaStw?=
 =?utf-8?B?WUlsQWprNlp2RjBWK1lEeURXTTcyNE9WSEZwZ3FIbThXS0Z5RVpycHJxZmFR?=
 =?utf-8?B?L296M0NIQ3gyd1ZuU3h1V1V2b0F3WjFwVFRoanNpRERaMS9CSFI2dW5ucVds?=
 =?utf-8?B?eWVuVkoydTdBZy8yVjFTVlh0b256Mkx1ZkV1aGc1VXN6OTY1cFZQYTRoQ0p0?=
 =?utf-8?B?eWtPeDFsUGJDSGhMN2FUQkdNNHllcExsa1ZHRW0xWUNDeUhMMGNUTjlKaGZV?=
 =?utf-8?B?elBEVmtibERkK2JXQ3hMZmdTQytsZy9BRUMzUldlS0xnZjdnclRFN1lFYVJm?=
 =?utf-8?B?b3NQbUM0dnJwaW9TcWVhUHRnWkw0ZU8wcjY4SHhyRE1Ua1NYREo3SStITTJ4?=
 =?utf-8?B?eC9lZS9tQnowVXVZODBsc1JHYjlwY0pEb1pLUVlQelVOeHAvWUlaaU1BOWow?=
 =?utf-8?B?TUJZWXkzYmdDYjJTYko4RGhrRVVlL3pYRGQ4M3czbklFRDZLL0FkbGRIMGdK?=
 =?utf-8?B?UEN4dVVrck40VS95dHdGK094Zm5vakdSOThoSG11OVBNclV5UHlFMmFiWXZt?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e1c71ba-59aa-4764-187c-08db600aae24
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 06:05:19.5515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J7ACCzjYIhKCWMwPzaYk374JUV4sFKR0XSeRqH7Q4yY7vtA8LzptWnaQLUL7HWjyq6i8PB/bOurjazoN27Ll1B1nuO1Wh0yJzmH2jhgCn/A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/sdvo: stop caching
 has_hdmi_monitor in struct intel_sdvo
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
>   drivers/gpu/drm/i915/display/intel_sdvo.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index e12ba458636c..0bbfab95ca37 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -117,7 +117,6 @@ struct intel_sdvo {
>   
>   	enum port port;
>   
> -	bool has_hdmi_monitor;
>   	bool has_hdmi_audio;
>   
>   	/* DDC bus used by this SDVO encoder */
> @@ -1303,10 +1302,13 @@ static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
>   	pipe_config->clock_set = true;
>   }
>   
> -static bool intel_has_hdmi_sink(struct intel_sdvo *sdvo,
> +static bool intel_has_hdmi_sink(struct intel_sdvo_connector *intel_sdvo_connector,
>   				const struct drm_connector_state *conn_state)
>   {
> -	return sdvo->has_hdmi_monitor &&
> +	struct drm_connector *connector = conn_state->connector;
> +
> +	return intel_sdvo_connector->is_hdmi &&
> +		connector->display_info.is_hdmi &&
>   		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
>   }
>   
> @@ -1400,7 +1402,7 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
>   	pipe_config->pixel_multiplier =
>   		intel_sdvo_get_pixel_multiplier(adjusted_mode);
>   
> -	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, conn_state);
> +	pipe_config->has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, conn_state);
>   
>   	pipe_config->has_audio =
>   		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
> @@ -1906,7 +1908,7 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
>   	struct intel_sdvo_connector *intel_sdvo_connector =
>   		to_intel_sdvo_connector(connector);
>   	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
> -	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo, connector->state);
> +	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, connector->state);
>   	int clock = mode->clock;
>   
>   	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> @@ -2095,7 +2097,6 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   		if (edid->input & DRM_EDID_INPUT_DIGITAL) {
>   			status = connector_status_connected;
>   			if (intel_sdvo_connector->is_hdmi) {
> -				intel_sdvo->has_hdmi_monitor = drm_detect_hdmi_monitor(edid);
>   				intel_sdvo->has_hdmi_audio = drm_detect_monitor_audio(edid);
>   			}
>   		} else
> @@ -2147,7 +2148,6 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
>   
>   	intel_sdvo->attached_output = response;
>   
> -	intel_sdvo->has_hdmi_monitor = false;
>   	intel_sdvo->has_hdmi_audio = false;
>   
>   	if ((intel_sdvo_connector->output_flag & response) == 0)
