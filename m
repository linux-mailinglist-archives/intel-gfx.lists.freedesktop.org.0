Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D141F7143B3
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 07:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57B110E213;
	Mon, 29 May 2023 05:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A07910E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 05:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685337788; x=1716873788;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lQ9ZZdT6jwZR7wkNRAdXJOCNWUtjhAeFTPG3vMzS3y8=;
 b=Z703A/6NY24rsELeTdm1v3+AeCkLI0jjSNKsHOXfxld6tsC+MjGPkbYn
 S9U/TbhZz6ZSudsXkSgF5da4WGULzI5z0Kyi9eGm8YUVte0R5lcU3NL6Q
 ysM9BWxyxNUW1aFUIProK2dEPEkTOjnw5b5eewXCI1BPQsvRr3mvdmJcG
 hvNzjCwiqcNkGng78/t0baNaMbhpiGpyM4t3o5Iu8TKiUoyFf/5wm0ktZ
 kryiOu2MMD/wixNGJZwK6zm2k773g4CB6b9vSGlntOqlZcSlP18B3XvHX
 br1VpP95pQTL1VtcjzTBBCK9sPRxUat1SEY63VsqGEL38OSIZgmUV6qoB Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="357873130"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="357873130"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 22:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="830238966"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="830238966"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 28 May 2023 22:23:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 22:23:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 22:23:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 22:23:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TaJjQdy4nQ9Z0JHv9xK9eYm/2m9rxc6Dqu7kLJLthV+siMj0eVAW+pzMaJHF9+oEueEPSJboyhb+q2bl0f0gb2O5NkAzW8ByOFUflzDISV9AF94OFGdb5vMkjBVJ7hbCpgo9hWLNR01exqF9Crl3LD3c9QN86ZZn4rcdaYlZpmHYg+0NuSUa8xa4P8FJq/c3E9gTm4TECoLKifUm3oIAYEIZnxXk+otP9wdn4Ez5TJ4MXYzg7Y5E4vrZCip1sGw18ii9p+dbIOGxnHtHsB7XTeIi5irLrIGWux7lSNNJwv9SFaQjdKWhJx8HQ6O96WHacMynDy8TTARvaKzfE3uShw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8MNoeEOA1Sj7rQdta3EwS0h5Sye0OHsaTadaMVsve9s=;
 b=D1H6EOMnKz0fOTbwLJp1fL+6Wrlogx7uMZvINMfX3ioV5YIhBNskGk6HeRwqOYq6po25jgFBi2BtlcWoi3TijHt4bII4hc2FbRRr9BKUbqFbXdSwGSxcSRSirhIGaa77/dVT15fn1eLKcP9AyU4G+yhgK2oLyQiQC7vgoVdVTRwyDAtt3WfWN4efjTdGOXBybo+nIFeFy4nzIH06WFRttyxnOLUBJTB0OR+zq32Bsf4nFC3N1RF8vGbeD/huEvjpY3Qrgh9Udp1eIq5YCrm1UOFtC0t6i01HYSrd+bnLNNd6EjO1PCBLJEJcWS4KWecyT0EPTXRq86DnQ5V5H6VWaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7171.namprd11.prod.outlook.com (2603:10b6:930:92::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Mon, 29 May
 2023 05:23:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Mon, 29 May 2023
 05:23:04 +0000
Message-ID: <904309a6-2aa0-ce72-cb35-10447d7108ce@intel.com>
Date: Mon, 29 May 2023 10:52:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <bdf6435c98ebc3c89785ca8227b14b23f16cea95.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <bdf6435c98ebc3c89785ca8227b14b23f16cea95.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7171:EE_
X-MS-Office365-Filtering-Correlation-Id: bd568204-2897-4ed0-a5ff-08db6004c728
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ow/fp2UBuS3kHbAXQG4aADwKeCgF68qBXNMXGaPUr9aG6LPIeGFqFZDV7lEWopIR02QJmlj4KLtxBB9Oc7zY/CSZjrwHWVyL5vvRT3AZgn/uaGseoX+lfngtt6LUM7nkLavw6ybtNdFH3U5pMSFuE4iIRQ7z65KJvTFgU+/bvi1gldvPXj4ZShtCqswtn+4z35mi+qNHlkO9GwBbEGZtN7z8z0YC57HU5FQHJRgJnos1+H8S4Z1td/ujWCHriADptJ1ZYAO9fg7edXZHETOEqK2tY01GCOfs5rG/hIBKHh0MxUNOiPlHf0WBkXPsm9UtDqRSVHK4pYO+sKMd7P1XoBhWG0GSld14yfU7YX7K3tYIEY0zpY9qFQ9mn5CHtD1E5STcAMjtAOx8CweMjw+2WETjicQuK7hDbbG2e35libXoZyV+um54SipsVDVljx14SgST2W0163c/+fq2HSgYMBrzWYB/P52XEnTd/TLqiPL3xtZcqTrnYoU0avEJkFdTQmLDvFFju0wG2OVyLuv8B7hjSFYJx1KMHB4ggvthc0hvj7rL0hEy92Rvs1HJu0kXWxQSTHAJMipus4rroJn/kEvJ/ARbUCOtxdSEUJhLCiQHK5mpSxPDbabtrFHgJddsR8a+k3gtdQjNSJZfiHuP1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199021)(66899021)(478600001)(5660300002)(8936002)(8676002)(36756003)(2906002)(86362001)(31696002)(66946007)(66556008)(66476007)(82960400001)(316002)(38100700002)(41300700001)(2616005)(186003)(55236004)(53546011)(26005)(6506007)(6512007)(6486002)(6666004)(31686004)(83380400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d3FnaTZZT2xwZ0tXR0R5aGRrcXNpRXlCL1VHODR5aTQrd2orYkdxVnhHWlQz?=
 =?utf-8?B?cFR2OUMvRFcvZEdoMUhpUVdHaWJRR3ppZGtUS3JMMSt0YjhUQzVIVWlvSkd3?=
 =?utf-8?B?Z2JoV3VLVy94RFUvWnZPUHVkWmoxMTdqSmFoOW5mOUdESnB2LzNIdGgvaW1h?=
 =?utf-8?B?R2ppcEhxSjZPaFk2VUFlL0VFR01sckFmd1ZGczlEenMvNzNOUHdaeVNzblpY?=
 =?utf-8?B?dGdNTCtrczhBU292dC8zTWdQZWI0NlcxZGo1UmRLRGRZakF5bUZodVB4QjFp?=
 =?utf-8?B?MEp3U1NibjhCSXBkcThCWi95RXB5SUVscnNsZStycHpuWjNkeUlYRXlCbW12?=
 =?utf-8?B?Z0g5QmRGT0VUYUlyd0p4Uk1ZdTZYUGx3cjBDL3Vud1R6cW9hUUIwRVRhZitS?=
 =?utf-8?B?RnNOWHc5VDJYcUkzbjF3U3E3NytmOHd1TUxEK291M0UrSEVNNi9XbkRrdzZB?=
 =?utf-8?B?d3pEUTE5ekE4bEx5UnBUallySDUycTFnMGN6RWIyRmJqR1pOUUdCTnkzZDJI?=
 =?utf-8?B?VnFPVTZaMjY1T2lJWjlvczFaUmx2d3Fob1UxTk9VOXZuMkdUQVZTS0lQQThE?=
 =?utf-8?B?WFF2T3BDeVJDZXpwZVlYUmZnQlg1WUw0Tm1PQ0RqVnNHc2FQejRyeHd0QkZm?=
 =?utf-8?B?NFl2OUVJL0F3cENrZ0FjWlNKYTBTaXlqcG5CNGZHOCt5eVBQQ0xFekdJZWgw?=
 =?utf-8?B?Q3dLQVJZUVo3WVFBVURHTTFuMGFNM21VeUhtUXFJbkRuRDFwczdXekxiTXBh?=
 =?utf-8?B?ZHRmSDVnVkNOL0NQQVI4M1h4c1RWZHFHK1FrbHlEdERsNWtRY3l6UDVIOExk?=
 =?utf-8?B?M0tJZ1ppam41L3Nvajg3a2RldUlDeGZiZ0daVmYySllPOGNYYnhZY3UycUdo?=
 =?utf-8?B?RGpHY3lOK0ZRYTN0TjAxREFmWm50WkttTjExK21heGs2Ny9sUTQvcEsyZ3F1?=
 =?utf-8?B?QlZPR2VKcURBaERDMHJhZTJnQWNnVGczQ2tnZ2tzSFlnUWkweVBneEhPY2Qy?=
 =?utf-8?B?emdUSU1aNzI3NVk1d0REdXZWcXJtWEdxVlBGL0ZnYkNWdjMwN0ZUM1pSVitk?=
 =?utf-8?B?YkJsNzlDZk15MXFRWm1qZHZlM2VUdWxkRFNVK2tBQjlHemtvSnMvcVA2bm9B?=
 =?utf-8?B?K01TbVIxY2Z0QjJxODg3RnZqM3JZVGh4Y1M1YzZxVmJQajRIQTJpNjloeXhB?=
 =?utf-8?B?QWdLVWVsTUxSVnZuVkFlVEczSE5aUzc2VWppajEyRjJDQXVsYkl4eU1naC9p?=
 =?utf-8?B?S3JuMTdFZi9ITWhMQWRpNmRJY2RlL2tKd3NpQ0Q5YjhraUxLdFRwRGs4T3JV?=
 =?utf-8?B?Y2l1RkJmVHlYME5Mem0zcm0yVGY0N1F3czNqWWxkaUFuSTlMa1VuY2xtUnJG?=
 =?utf-8?B?TVdyZXRld2dvVFQ0MytsU1l1bkdyOVArUHZTSG5oS3lQTkNoT2oyNmJSbmpm?=
 =?utf-8?B?cndKZm5TU21LUUNiRjE5dXNKUG56ZVVIZjZybksrZERuTzVwaVRPdHdKWDBS?=
 =?utf-8?B?MkdOZ3BYQ2N2V0dpWlUvZ1ZQYk9laEo0RG1PY3VqNTZBZjRYV3p0OUhFbHcv?=
 =?utf-8?B?a3dTS0htdXNQQU1ZNENFUmYraWJ6NkM2ZS92OEZEWE4zaXhaOWk2TmtpVUZl?=
 =?utf-8?B?UkZGamJYZ3ZHVUFJam1NNWJqQjJDNnBDaGJDQVZFcTd1RlE2bkVuNkNNdlli?=
 =?utf-8?B?Z0ZRZjhLZTJEL1FNMjJYRmtIbS9xY3BkajY4Z2VtVklKejJ2R3dIUlltMk1k?=
 =?utf-8?B?OFdiVW50aGd1Y2IrM0NLOGZuNUxDc2hvTFRWbzJsTndLVzhRYVBHSGorek91?=
 =?utf-8?B?Q29mWCtqVGhVV1JWaUxENm5QVjFxSzV2VjJZQTVMSUsreXVHbjlCNU1ob2Q5?=
 =?utf-8?B?VWZ4SDFVVVY5QW1hQ2c1d1JtakZ4Ulh1MWRMZjc0QXk2YUcxdG9PZWlTclI5?=
 =?utf-8?B?aW4rZWFGNjBBRzd4dFJTTzZoclkvL3pXdFNsbUJ2bTd2Zk1mZWJMM1pLUkpN?=
 =?utf-8?B?NlZMM0xmaUdrWStmSmd6TWFjQ09xTnNjaUNWWVp1YXNlT3RYdERlNmt1ak5U?=
 =?utf-8?B?STl5bDJLdUMxcXRnN09acW04OGlBdjRwQnBIR0M2ZWZrN0FWaW9FZkVhT0NO?=
 =?utf-8?B?SXk4MWMzcEd4REN1S3o4R1JnVXNoKzFBWFNDZnVwdTcrMUZCcWZiUDQyK21V?=
 =?utf-8?B?eWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd568204-2897-4ed0-a5ff-08db6004c728
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2023 05:23:04.3159 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /QLOmjz/shyr/R0ubGQBYQfW/c9BY6rsXz406Pj0tkpAjqbHWPY9d4fdGoofSkQFUuPwH0tt5hFNIkeQ/4DZ2/Ikho0riaX3IV2SmY+n0oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7171
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dp: stop caching
 has_hdmi_sink in struct intel_dp
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
> Use the information stored in display info. Add intel_dp_has_hdmi_sink()
> helper to access it.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +++---
>   .../drm/i915/display/intel_display_types.h    |  1 -
>   drivers/gpu/drm/i915/display/intel_dp.c       | 21 ++++++++++---------
>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>   4 files changed, 15 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 29e4bfab4635..9b462dd8bb14 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2800,7 +2800,7 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
>   
>   		/* FIXME precompute everything properly */
>   		/* FIXME how do we turn infoframes off again? */
> -		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
> +		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
>   			dig_port->set_infoframes(encoder,
>   						 crtc_state->has_infoframe,
>   						 crtc_state, conn_state);
> @@ -3109,7 +3109,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>   	drm_connector_update_privacy_screen(conn_state);
>   	intel_edp_backlight_on(crtc_state, conn_state);
>   
> -	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
> +	if (!dig_port->lspcon.active || intel_dp_has_hdmi_sink(&dig_port->dp))
>   		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>   
>   	intel_audio_codec_enable(encoder, crtc_state, conn_state);
> @@ -3736,7 +3736,7 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
>   				    pipe_config->fec_enable);
>   		}
>   
> -		if (dig_port->lspcon.active && dig_port->dp.has_hdmi_sink)
> +		if (dig_port->lspcon.active && intel_dp_has_hdmi_sink(&dig_port->dp))
>   			pipe_config->infoframes.enable |=
>   				intel_lspcon_infoframes_enabled(encoder, pipe_config);
>   		else
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9c9b771cbcbd..17681a8e745c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1669,7 +1669,6 @@ struct intel_dp {
>   	u8 lane_count;
>   	u8 sink_count;
>   	bool link_trained;
> -	bool has_hdmi_sink;
>   	bool reset_link_params;
>   	bool use_max_params;
>   	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index cda69861b00a..1708277547f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1201,6 +1201,13 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>   	}
>   }
>   
> +bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp)
> +{
> +	struct intel_connector *connector = intel_dp->attached_connector;
> +
> +	return connector->base.display_info.is_hdmi;
> +}
> +
>   static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>   					 const struct intel_crtc_state *pipe_config)
>   {
> @@ -1265,7 +1272,7 @@ static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>   
>   	for (; bpc >= 8; bpc -= 2) {
>   		if (intel_hdmi_bpc_possible(crtc_state, bpc,
> -					    intel_dp->has_hdmi_sink, ycbcr420_output) &&
> +					    intel_dp_has_hdmi_sink(intel_dp), ycbcr420_output) &&
>   		    intel_dp_tmds_clock_valid(intel_dp, clock, bpc, ycbcr420_output,
>   					      respect_downstream_limits) == MODE_OK)
>   			return bpc;
> @@ -2646,7 +2653,7 @@ static int intel_dp_pcon_start_frl_training(struct intel_dp *intel_dp)
>   static bool intel_dp_is_hdmi_2_1_sink(struct intel_dp *intel_dp)
>   {
>   	if (drm_dp_is_branch(intel_dp->dpcd) &&
> -	    intel_dp->has_hdmi_sink &&
> +	    intel_dp_has_hdmi_sink(intel_dp) &&
>   	    intel_dp_hdmi_sink_max_frl(intel_dp) > 0)
>   		return true;
>   
> @@ -2812,13 +2819,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>   	if (!drm_dp_is_branch(intel_dp->dpcd))
>   		return;
>   
> -	tmp = intel_dp->has_hdmi_sink ?
> -		DP_HDMI_DVI_OUTPUT_CONFIG : 0;
> +	tmp = intel_dp_has_hdmi_sink(intel_dp) ? DP_HDMI_DVI_OUTPUT_CONFIG : 0;
>   
>   	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>   			       DP_PROTOCOL_CONVERTER_CONTROL_0, tmp) != 1)
>   		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
> -			    str_enable_disable(intel_dp->has_hdmi_sink));
> +			    str_enable_disable(intel_dp_has_hdmi_sink(intel_dp)));
>   
>   	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
>   		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
> @@ -4711,9 +4717,6 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
>   
>   	/* FIXME: Get rid of drm_edid_raw() */
>   	edid = drm_edid_raw(drm_edid);
> -	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
> -		intel_dp->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
> -	}
>   
>   	drm_dp_cec_set_edid(&intel_dp->aux, edid);
>   }
> @@ -4727,8 +4730,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
>   	drm_edid_free(connector->detect_edid);
>   	connector->detect_edid = NULL;
>   
> -	intel_dp->has_hdmi_sink = false;
> -
>   	intel_dp->dfp.max_bpc = 0;
>   	intel_dp->dfp.max_dotclock = 0;
>   	intel_dp->dfp.min_tmds_clock = 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ef39e4f7a329..803b0822c661 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -62,6 +62,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   				struct link_config_limits *limits,
>   				int timeslots,
>   				bool recompute_pipe_bpp);
> +bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
>   bool intel_dp_is_edp(struct intel_dp *intel_dp);
>   bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
>   bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
