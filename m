Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D50957143CF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 07:50:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6373510E038;
	Mon, 29 May 2023 05:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BF210E038
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 05:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685339406; x=1716875406;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uTSWo+eSr1u9oo3W1/7jliwWmNSlMna4SgzGJ++L9Hw=;
 b=bZGqIHd5mK5+M5QA2fVmrBqZoDNTLsyvl2ajbGn8x7KlzfvI65L3HoRF
 7tJLVM7ioRMGsXHub7b4U3ipK6TzkVWymV0m+oTkfpvUs/5oE7ITaLQRM
 zkZPe7uxdl7Tdijn4KHsMAhN7ed/i1pcVdY9D/sRkdLzumbjbLhrYs8bk
 fEythe8MqwINdu9EX2l5wIQccXZycbwv+sbSrKnKCqJmdcFAu4xlnVDZ/
 xirasg5/E/iHCy3AyjVVNNYV5QRdJeJIdRjJ65saCcD903zS/qTOsGnFp
 ej1T9HpqO7vEgn3K+ciuIBg0LxkJzPH1bNSssDQJCMGLrJgfyvQmOEnM5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="334250349"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="334250349"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 22:50:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="705930617"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="705930617"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 28 May 2023 22:50:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:50:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 22:50:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 22:50:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SentAiwv77Jffxp8MFMb6/mazrsYPdksol7WQ1njgaJ4se/xtlV4tRAU/stjy5J61Mlh+iP6NI1Bq42AOyH+uCy41SZWMbi0NUiBjo2GtCnK2wHMGkwzDoONS7wZOgLExVVcnHH4pn+/zEzZFd065jBWHcNRkz6p2jVbVuBbgaTe39AIYGykF8a9/eLgclcmhzBETK4nSN75PilYh9rQqlJFINJ52HR+tsDlCKpQ1A9JYdOzR/jzmbzeWkeACGnMe0cPMC90QQRrzY2kj2TG0njQrbfIvr5dLFLgfklehIY4kuRxyb47H8n7EQo6OCODwqArj+Z1ogouVTE5kkuggg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3rXFwyG+XEkvpIA4k75lD4Lg4KxclmL5uRX52639Igs=;
 b=D7H0NAJ6E+gYqZhcelFQ3mvBAyKGh1Yx8ug7IHq5J7W5a8lbYC7VXRUu+sGSSZK9EtfoXnPxuGTRKiQMPqHDoPV9XzJd+AQZDSKWZNULrF4OUBv4AIzv1g2gFvNaUChsTfJB1lrx874J5wM3F2/UyXLvbM+RAwdEL6uviLBDK1Gut1l5lEqRwoP1E2xBeoggY4thn1Q3yn/U/f6wPir72r6iRJKU0uUyfj6Wo8jBuvxxxUPHvb2xkzWayoy5UKg4pSFS4EV9tGKtQv5A7fkOM2biYhFm7ayZkEZp8CcsjrakzJS1GlvRCKM+sVySCX8gV+qxK2DcgMkylSmB5hw72A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 05:50:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 05:50:02 +0000
Message-ID: <e8f85a40-0e9a-7355-6277-1b2cd79eb9f9@intel.com>
Date: Mon, 29 May 2023 11:19:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <71d2795970723d83a446239c72e4d2e9ebbe112e.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <71d2795970723d83a446239c72e4d2e9ebbe112e.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0045.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5611:EE_
X-MS-Office365-Filtering-Correlation-Id: 39493868-593f-42b8-3417-08db60088b38
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BSyYVab8fhqqEYl/TnDgaTemybJdnXYviEHBoUmzyx/MNKyY+yTMLkLnRWB69wXw9/ZgzaaNL1PC6lgrlELCxSANVwFX4YKQftDM+PvCI1yVHZjjmpxyPbfzWZ1dPe3J67uRNFePUiNrVHp26Nn6/bptwBASSQpGJoItncNyD0+qhev4Sy8V/MY2kYRXUIUiyvYVRuD/usLdIJOlndmNK7PUMEgK8WZtIp3sYA9I273NRlbToH+4xEJLVFWZi7/83yHM1dbJDPGVlhvFdutSc1ioi4dsRRxyzRzrPDvzfC84ndozm6BAzOj8zbanUDGuUPAlk9F0jR/SS+r40FJGpe406liNHNo4iM+kPRfg97ByJjzopOy18u8r4R5BhyitsXLfbNdzrJ8hX7fmxFfPOuXUUJazGjVjPSNQ7Qw0e9n5NEEQCIxbK13V3S6hxgL/IKqKR3DjTeCDbgkwWRx5juZAf8yKsQCYjMnt84V+6q4oCLGa/gCohoYiZp1Aq0V+nRsufFjRjOYPxPl8bn2TpTK45dwGhfWdCFRwCp0EhtZjlK5WxAjS52rXqXe5nM28MPV2b13xL7ibRZojaaZL4GUns4zShAfTtF0qwmVfxAhI3d4oB+4gS3KpKy8kQebQDikP9iKEbCWP3AFqcqBMXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(39860400002)(346002)(451199021)(478600001)(83380400001)(5660300002)(186003)(86362001)(8676002)(8936002)(6486002)(2906002)(41300700001)(38100700002)(31686004)(316002)(6666004)(82960400001)(31696002)(6512007)(6506007)(26005)(66946007)(2616005)(53546011)(36756003)(55236004)(66476007)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1pHa0IxMnBkMlpzMmtNMW1HZXV4WXlSbSt1bDBKQURadGdEb3FOeXhacTVn?=
 =?utf-8?B?TjhFY2RZakF4VGlITE1VU29idmd1aWRBaFRjZm12WGxoSUxabk9Wekk0R2VX?=
 =?utf-8?B?S2d3WUhMTmYxUVlsL1hnQWIwQWRvcFBPeDQ4dDdpZTBmRnFpUFBpMzR2VDdR?=
 =?utf-8?B?UmN2ZGdzK25XNFp4QW1ZVEp3SC9UZklPRWQ0dUZ2czRoUUtXdzBPOW9rTFNT?=
 =?utf-8?B?WE5yU1FsRHB3eEd6a3d2bGFZSUJtOFc2VmZ4VHlZNlk1bzZRZWl1Z25zTnVY?=
 =?utf-8?B?dldMNnluS0FnMTN3dEVpVlFzYlRKTG5BNTlWUDVvNUlVVXB2VFkzVDhCN2Js?=
 =?utf-8?B?STQvY1FuRjJXRmdYQnRzYmM4Zmw4UGpKNjJGTVAzaGR4bk5oWC9vYnova0hK?=
 =?utf-8?B?STQwUjJDY09tdktzWGthQlB4TDgvS3ZjZnlKdTRqY0xIQXZ4TUpNTE9GeGVW?=
 =?utf-8?B?OVdlcjFCT04rUzUyaVM5WkQrUHZlZWJycmxJR0EyNzZyVkFlMVRyUXJlcHdh?=
 =?utf-8?B?djdTdzRhWndBV3MxUW8zQmVNb280Yk5UNE4xT3BYdGtHVGY2NFZBV1ROeHJC?=
 =?utf-8?B?VklnWWpYaGZ5aE1oLzFKVG9FRGQ4YkZnaHVoejBrSVFRMjNQNHlpakM3WVdj?=
 =?utf-8?B?QXJUUHVTVnh6OUxVc2t2d1dTR2EwUXIrcnFDYjhFOStKczNraVE4U0ZNYW5C?=
 =?utf-8?B?RENNVGxpbjdwREE5Sm8raWo1aFF5NWY4bkZ1ZHZUT0hRZkRqT282WitFbHRj?=
 =?utf-8?B?Nk1aNDY0aGZ4MkYzNWFMMzg1YklQWDVRSktmMEVoOW1UWmd3ajZRSDFqMnFF?=
 =?utf-8?B?M0YwenBFMVdYVVJNNk1mM2tFOTdxN01BZkZCZ2srY29ySWZXbWR4M05NSWd1?=
 =?utf-8?B?WW96RkNIb2UzcGFxeWdBZjhieXplMjRGOUpSdmVQRjZDd0lNTEsxUDRJZDQ0?=
 =?utf-8?B?WHM2aVZNQkduRXkrcVlKRnVoVlRMcVV2WEZ1Rm1qOE5GRnYyVFZKQ1VudG9D?=
 =?utf-8?B?ZlpmTG1vbWZBMzVuQUdXVk80Vy9hRlRzNTA1b3ptK0ZaRWtKN1BIelBIcmVL?=
 =?utf-8?B?V0RGamNveW5PQ0REcEdVR25zeW9uWFhVdEFTaE02UytuclF1NXNVaXIzVStB?=
 =?utf-8?B?U3ZvUGtVRVMyU3gzTElsZGFoZWZSVUdabGhpWXhZR0ZNQzFFS3QvUDUveVVn?=
 =?utf-8?B?cjM4UW5rbkc3bzNYY3pTYXNKUGdVekxQWEVIZklsbkVQb3VjbUVQaThIbTN2?=
 =?utf-8?B?MXJEWWsyK0dxV21IQzByMlBxM0hOa1djNVd0V21XeEUzaXVQbmd1a3Q5NWRl?=
 =?utf-8?B?bWVTcWVVeWFzcnk1RjZtRUR0TzI4cmNOU0p0MHNnNThJWm9CaTVEZlFEM29q?=
 =?utf-8?B?UVBBWXQrOEZGOHJWRUkrbi8vWFpKQnlQRnZqZGExaDZ1WmNpMHBzWXppOVNB?=
 =?utf-8?B?d2ZvcGx3ZVBSdlA5Vks3WHNiMTVEbkdITGJwcUJtcER1M1Y0T3dvZUYydGE5?=
 =?utf-8?B?YlJkY29rSXBISVVCN3pCeW42NHllQVcvWlMvSVA3SHZHTG53WVM0bkpBL2x1?=
 =?utf-8?B?YjJEK0lFbTFIOC81Q1RnU3dRL0tQTlNrQlVsTGhmZFdyc29ndWJkOTBiL2d0?=
 =?utf-8?B?eDRXNzNkY2RwNEdxRVhENldwUTRQeWpGRm41ZWplYmppTGZYSGl0aERGTGNk?=
 =?utf-8?B?WEZxNmgrcVovanZtUmVsNFZrZ0VBVmZ1cXNEd2hQQ2JrUGJlUjhJR0F4bnUw?=
 =?utf-8?B?U3c5QkpCNlM5SFRxci9mRmpuUy9TZHA1aSticDJNWDZIN21NdWwvZnpWWVlz?=
 =?utf-8?B?Z3kralgxWTFKMDZmNDhYaUMyVzdlYVRCK1UycTUwVEd0NGo4cjgyRzltY1py?=
 =?utf-8?B?SC9PSEhxV1pPZkExUWRsYmJNVzZtTlpIMHc5VlhyUWNWNHU5b0lGWmdGWWdL?=
 =?utf-8?B?V0NWeWxqckpZSVJLR2lhK2d0a3JGalJxSzBUdVBOMWVUd1dFdWNmK2VjNVBp?=
 =?utf-8?B?cExnV3BydjBKVHpUbTJIY01YdjNZMnJUUW9jdkFPakIzYUlIWjVFN2FFcHpP?=
 =?utf-8?B?Y0RLZ2FZWXlXU0Q0YTl5SVQ1VUxFVklIMVhIUXRtVno3TjVxS0Z1ZmdIN2sz?=
 =?utf-8?B?dXBHWWtLd1F0QjJrQmkyWGxGT2IrK0h6dVl2VWVQUHp3dUl1N3NiVXNCalF5?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39493868-593f-42b8-3417-08db60088b38
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 05:50:01.9643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UuRofLWBarl+Kk7b250y8A686xK0sjSyLmNFXQgHRcnVB+VPUQQRwKLhHetNQhdMyQNWv01o+RxyTaCIPXwmIR4j206O/g5P4E9VQwOqUF8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/hdmi: stop caching
 has_hdmi_sink in struct intel_hdmi
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
>   drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
>   drivers/gpu/drm/i915/display/intel_hdmi.c          | 8 +++-----
>   2 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index d7ff75167f1f..dc7f3bf731cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1548,7 +1548,6 @@ struct intel_hdmi {
>   		enum drm_dp_dual_mode_type type;
>   		int max_tmds_clock;
>   	} dp_dual_mode;
> -	bool has_hdmi_sink;
>   	struct intel_connector *attached_connector;
>   	struct cec_notifier *cec_notifier;
>   };
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 3045bf21ba8f..aa0c726cb525 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1789,7 +1789,9 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
>   static bool intel_has_hdmi_sink(struct intel_hdmi *hdmi,
>   				const struct drm_connector_state *conn_state)
>   {
> -	return hdmi->has_hdmi_sink &&
> +	struct intel_connector *connector = hdmi->attached_connector;
> +
> +	return connector->base.display_info.is_hdmi &&
>   		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
>   }
>   
> @@ -2359,8 +2361,6 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
>   {
>   	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
>   
> -	intel_hdmi->has_hdmi_sink = false;
> -
>   	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
>   	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
>   
> @@ -2452,8 +2452,6 @@ intel_hdmi_set_edid(struct drm_connector *connector)
>   	/* FIXME: Get rid of drm_edid_raw() */
>   	edid = drm_edid_raw(drm_edid);
>   	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
> -		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
> -
>   		intel_hdmi_dp_dual_mode_detect(connector);
>   
>   		connected = true;
