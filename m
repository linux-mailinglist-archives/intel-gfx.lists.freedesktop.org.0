Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBE67D8E52
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 07:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C169C10E924;
	Fri, 27 Oct 2023 05:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2810510E924
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 05:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698386317; x=1729922317;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1ypqJXoBi7iJ2QLK8dn6HzM591dEeI8mV8sk0Hsl5XI=;
 b=d5J1H5CH3zINi8cgzF6yj9dj7dAvonYHqbJ1msaioEWJDuyDVrPIDSjj
 eh1pT1F4q+cQHWEG759Sl3eeuE3FMrylWj8mvZaooWmGZdJBlQIVKKgf7
 Z60WcYWlU5LrBa48sMp88r3W1CLVjQ7O+TIKWhnPkXRkNVcjGJa5RYPZ9
 7nJLJqClW2P+Y1e4gqYesEMFL9gq8DKCohBJpi1YjaJkVETHGs2mBWS2O
 LNWtz8GwimX0B6Fv0DaPuhlEremf610tVV+HDZzFzGga+RuM5IdW7nK8a
 hSwPIfZd4/Rzvd2DrpcvPwr7P6u8YAiIhTfIqPVxZqIDZB9PIW7FDwC7J Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="531829"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; 
   d="scan'208";a="531829"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 22:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="932974249"
X-IronPort-AV: E=Sophos;i="6.03,255,1694761200"; d="scan'208";a="932974249"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 22:58:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 22:58:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 22:58:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 26 Oct 2023 22:58:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I6v9Px6XDCEDvVCWINC8ySJqFcjC+Pn0LLqI84TjWFV/HzJ/2P4CWH42QQwuv8/EKVJqkMVMULpr7Fqrr+1lHUqSznz95fB8jq5VTovq+fac4KNepknl6kTbB2UEwEFX6BIgZEeaU+5rEXkHneGNcCPS0bvOa0/iPum/Rvv3KxMYIEiWFUwwKEYxc7Y3PhsOoFsUU33XeWjIwvHRgV/NWsh+m45ZgK01ppnaQM3gS4GLd+Z0L/tJNkPAuK3Sz+iGtgz6BgbVH17beWU/+xFw+FlX8m8hTYuttyJEMvjGQ6/v38jOnxdxfnGEdB6ZyooMT4CxXlDAUPqeRw54hsL5ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XZ+l5lh9kevn7p9nucMZughzKJXqcyaWo3uukEUTPq0=;
 b=UShDz2o5mzKOqt/ZploiiCFxPAaYC84ndbuXK6Vp+i5OFt4e34AXbES80vieW+Onjgwxa2IhA9B5f0tuNY32AfzixfztMZJc409sU4+9xhpEr8V9rZPvVR0nhOu9gJ77WzHN+pNVAJApMSZCUymEl3hC6ieJZIpvw7H8mupzQ5nGaLFC74mejANBuACtjNTw7PVN+FTmjFpomHsy05o5ZwjZVi3cWanu19WcjHJni4edyBM6tqfTNdTYbvfYte909ePM1y2X8Mv/idCK4BAh+DzRV0kkuJlfPAVysr9GfiWGmMWTsykSslACIoxNj9po3ucdDVSnvKMd3yKej92HRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7831.namprd11.prod.outlook.com (2603:10b6:8:de::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Fri, 27 Oct
 2023 05:58:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::c669:55a3:5879:1e6e%5]) with mapi id 15.20.6933.024; Fri, 27 Oct 2023
 05:58:27 +0000
Message-ID: <cb50dff2-fbc2-7941-e04c-4a2b82981eae@intel.com>
Date: Fri, 27 Oct 2023 11:28:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
 <20231026121139.987437-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20231026121139.987437-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0179.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7831:EE_
X-MS-Office365-Filtering-Correlation-Id: f409b18a-49a5-4f01-b616-08dbd6b1bd42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nQhEopB4XERp3YGBhixhGOJOIABGOiIAtdPp7+F1onJEJAUZ3YoqKhDMf39zTxlCmdPcqcT/5kkQslhZXNcPVxt+1a16tCFuvF8GTaV8ixSRuwIllKXz3G7gsOfjj+B473rgNFdMb+H048RQolPb5EFMxaf0iYHlaT8RtAo2HpuvwO7K/WW2nC2OiVyWqQY9+RNut0xHtimRtlwbDSjNiqWN/BLn7Y0T3QHI9bs674Rf5gm8yHXUhmLLrqExS9qdJ0hJi8vO4+RKx3c+ZArvXQtiHOTFXuHXSh8+ZMb6QJV4tYLxjfT0RDOedXGrNfm5qJqaU0F67CGtqOrJ+LFNb2w1gEPCkM236zfISkMhjJXOLZ7Mduuhwg1OiOuzZRgSb8cISuvL3h0M+wRHfy2HdmHbvGkYUnVlesetXH8KrDKbSbaWJV00Vwg/GzA6cqGFUaX/X6fM4WZjTVzkdy1SwW+cvjyY0dGWqUACF8APb48kl3iSMYWgjqdfH3h+p5QW3oOU/lroiERvnGnJiqaHWXIaDRvqU+Sq/2/UmkpeOQSNp75x85trRSCF9yMcO3SZE0WyYi1OE62m6BDg3kLFITFYipfekwcbTQA1oal1Z1AD0cB4GgwTRbI3fOQotX1K1n0gKESDIj/rejYP4LTkyw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(136003)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(66476007)(2906002)(86362001)(38100700002)(41300700001)(6666004)(66556008)(478600001)(6506007)(316002)(66946007)(6512007)(55236004)(53546011)(6486002)(83380400001)(82960400001)(36756003)(5660300002)(31696002)(2616005)(4326008)(8676002)(8936002)(26005)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3FFZWcrYkRtY1RrTytMSy9MWS8zQzV2dW15VDh2RENMTk9KbUtoZGF3Qmpt?=
 =?utf-8?B?S2x1SUErZU9UVUhkV2FYelgxM2F2bXkrRGwwTHdPY3A2QkJCVy9yRUFpM000?=
 =?utf-8?B?SXQ3aVk1dFh5dWpWYmdXVUwzWERKcEs3Z3ZsK3FIR0FPeWZSWlhDcXo3aFg4?=
 =?utf-8?B?eU15NW5WbzZNOVI2TXk1dk5qLzhqcGdTai9UdStYdWo2QUhVUk5CRW1UclJK?=
 =?utf-8?B?cnJJUkM0U0MzV3VoN1lLcnl6L0pic2xLc0ZBS0ZvNDB2blkvRG1Mcm56REhO?=
 =?utf-8?B?eXAycFFsN3ZrSnNaVU9xR2RKdjR6QW5rL21pbWljOWZLZjdPSkgzZ0FvdjZS?=
 =?utf-8?B?TFRrNmhQOEZ3djlQTDlkeDFEMWl5TnJJbDFiakZiaTNOTmYvS1MvQXlyVGJE?=
 =?utf-8?B?NEN0SUNFUmdFbG9aRDNydEx2U3NWUXMrczJveGxZMDF2d3lubDVDLzNWdk1m?=
 =?utf-8?B?TjNzMWNneEJoNnRQdC8wZlhXZG4wZWJyMlhPTTBVaW1oektCSmRJQTI3aVRV?=
 =?utf-8?B?SWxlQU1GR2Z5VlFJTjJ4V3g5VEtLWDBCMFpDSVdqWVVDalBPV0FUYXNMbXlD?=
 =?utf-8?B?Nk1pODlOajc2OTVxK3B6a05RQVdEZ3BmdlI1MXlIRVFlRWFidk1zN1VFQ1FP?=
 =?utf-8?B?ZmQzZllpd2xndVJDbW1tczk2WXJ6aHhUVWtyZlR2ZDE2SzdXUFpFcEZVU1Av?=
 =?utf-8?B?UEhiWlVzS29GdS84LzZ1V3NBdW1jOGtwNVpseU9pMjNhLzhudEVUNkh3anJE?=
 =?utf-8?B?U1dkZ2ZoNTlBeDd2aWFyQ3VjcVdaSW0yM1ZoOGxzN1htU04rWTdQWVdLa21y?=
 =?utf-8?B?R3pzYXViRWFhM2QvKzRXME1RY2lpOUZxN1M2cEl5MFhBOUUxOXdib3Q0Sml2?=
 =?utf-8?B?cHhDUU40M0NKd0thTDFyM1N5WDBFUXU0VTlqb1V2QWFTUWxLaTRYRTM3Vnht?=
 =?utf-8?B?MGVhNTBWRkpORE84T2hXWm1keTFTamVYTWNSWERxNElmdVFXY3ZSWXpuZmc5?=
 =?utf-8?B?ZmhJT0ZNR29Ed3lwWlgyMXFRR09CZm1XNm5FNlo1aDYrbTRIcWptdzN2djdT?=
 =?utf-8?B?ejRlT1VTOWxldGJZOW4ybHF0V2VndXRvWlhYZi93T3FZa0xqNUczZVZ4c3VM?=
 =?utf-8?B?VjZzOGx5dlVDRjlEY0FrT1FYUTY1M0ttSGUrQTdBU2kyU1hZMEpiMG1Ua2tU?=
 =?utf-8?B?TVlOb29RbWdLaUVMcEhuWG1jUzMwUml6dTJsMm5aZ2xTNE9MbzFNVUN6cFlL?=
 =?utf-8?B?c2hTb0JObnM5V21VWHlTWVljMEt5MS9ob2VoMnhFRnFIQnlBUlJVRDZSZVdu?=
 =?utf-8?B?YWtSZ3J5elZoZ1FISDI2OFRibVJrTjNSTEpBeTlEREp4QzFDdDdWMGpuT3dI?=
 =?utf-8?B?NFYxaUlZNEpaN0FwTml2VkdMeExKOHhYMWxQNVRIbW1ubnFlUEZLd0t3V2k2?=
 =?utf-8?B?RTR1U3JmRlp1VWlrOFBsQXdhSmxlN2cvZEx6STBuK0hSSlRyVGpNSHIwcmla?=
 =?utf-8?B?aEZEQVY4dWpxWXdyNlFTM084R2JUVTR4ZmhTNHpCY3EwK083QWcrODJOcmV0?=
 =?utf-8?B?UTF1TTlabE13dkRLcTdxazQrbFgxeExnQ0pneG5GY3N0YUJBTjlVUHlMRzdM?=
 =?utf-8?B?ZXpZMmdKVVNJRndRRkRoaGpzWDBrbDk0UnJMVzdocy8zUCtncjdYV0txUHl4?=
 =?utf-8?B?U28zOXJGdzlyWGFaNzFCdG8wSEFwZ3RZODExQWQyVFVpdk0yaXgyRkcwakxE?=
 =?utf-8?B?Z0p1UVNPUTgvNnZnY0tOc1lQUFJDM05MdkFUcjlYcHU2ak5xU05RYjRTMkwy?=
 =?utf-8?B?MnRaQVhhNFQySDEwQVN5eHJzVld4S2huc0JaeUFrRFZGNGMyN2NGZnZOcWVW?=
 =?utf-8?B?c2RQL3JMSzFtZEJjTDdkYjg3dC8zWkNIYjFlMEIyRGo2UmlQbENYbWZobkQ1?=
 =?utf-8?B?Z1RpUm4wYldEaEtlZjcxUjNJQjlJWVBDMW9TZnMxcHU1dnhwRFV3dEtSZ2Er?=
 =?utf-8?B?NVZnNm82NTRCQjJScy9wOFc0clI0anhleHRnN1VQRWtRNWp2blI1c1pCVWpl?=
 =?utf-8?B?ZFNiWW9BK1A4RWJUcnJKRnRadDNSL0xhekYxOVNNY0VWTWowNW0xeHk5aURR?=
 =?utf-8?B?eG1IWXQwUGJyOW5qUjN6VUlycGVGS05UQjY0Z2RLWXVaZ25EVGNQbzJSUFE0?=
 =?utf-8?B?UUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f409b18a-49a5-4f01-b616-08dbd6b1bd42
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2023 05:58:27.9102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NXsKBdQ2ev6SH5YSYfguEAAwChDAhnLvf/Q00hOMV15SgPnnILEXJwm520EivrTNrwoSHls/OFkRgPxvgiLWKardxe7HMsrLN3/TNqKSU18=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Add more conditions to
 enable hdcp
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


On 10/26/2023 5:41 PM, Suraj Kandpal wrote:
> When we dock a monitor we end up with a enable and disable connector
> cycle but if hdcp content is running we get the userspace in

I was wondering if there should have been a uevent sent when driver 
changes the state from enabled to undesired,

but as per documentation we send the uevent only from enabled->desired 
or desired->enabled.

Anyway, this change looks good to me.

> enabled state and driver maintaining a undesired state which causes
> the content to stop playing and we only enabe hdcp if the userspace

Nitpick : enable

> state in desired. This patch fixes that.
>
> --v2
> -Move code to intel_hdcp [Jani]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 44c0a93f3af8..39b3f7c0c77c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2409,9 +2409,19 @@ void intel_hdcp_enable(struct intel_atomic_state *state,
>   		       const struct intel_crtc_state *crtc_state,
>   		       const struct drm_connector_state *conn_state)
>   {
> -	/* Enable hdcp if it's desired */
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
> +	/*
> +	 * Enable hdcp if it's desired or if userspace is enabled and
> +	 * driver set its state to undesired
> +	 */
>   	if (conn_state->content_protection ==
> -	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> +	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
> +	    (conn_state->content_protection ==
> +	    DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
> +	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
>   		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>   }
>   
