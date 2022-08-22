Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37C759BE53
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 13:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31F051138FD;
	Mon, 22 Aug 2022 11:20:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB64113880
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 11:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661167214; x=1692703214;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Go9LltRrqQHwVaCY8FjMR9zXZYmikI+ioIl+DcuWcoQ=;
 b=e7mfTnKO0hHPxDEE+39GTDLfRosW4MMzhs/NCfW5xCcOHzWwn2gFV5qL
 3B0HAmd+Pv0OVel3yDg6P9EKOAYYxwAVnXXTm2e8UiQ3M2zwUwLWYnqig
 QR4rlK7fI9l3VHmcFTLE1y2wJ18+/FadwCO97afblvkQX/8vGZTB3B/vw
 q+U/EVEFLV7goI5ppdzpHOD+2wrHQdjZrxfXEWy9c6uwVDm/WFHYKDvIC
 f5B6WkGkXsY1VOZDu3tAVQlDrOaWj2Gk7ZG0douU3/awrl+nUuu0HA3ae
 c2pL7IJzexgPoAWbp2bIm6dbgjlN6sU/iYJgKXTyT6h0YBVo+2awNiUwF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="273143279"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="273143279"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 04:20:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="608921675"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2022 04:20:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 22 Aug 2022 04:20:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 22 Aug 2022 04:20:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 22 Aug 2022 04:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwDhZrPMSm+Qc/+EzZxErXN2NSfDgN+d8lNAgqwP+/nJdwaLe27q7aGX9pHPlGjHmp0raNaveNWD0LEWI1jUici+6GMrmgVSSbHbkD2nX6YrBKRUfdv5OYuwWfbE8c/BAsBEniLxqc3XMznzZ1QqcPOYxnkUTzan9By3DFzFn10+k0I89H2XeyovfyHzp/i69XcErVrpyEaatonSpzdNo1uSGKP/iwrcny9IuWLXxsD3lhSk/0yKAr7orAq+yyabeBLipcQjV0bxYKjvz9eEra8rdI2VHsSgfyvAUnmn2dQwbNwZYUnVXMcHLA2mnOhRLX+H7NfzzikqGfxTtuAXkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHxIUeYHvIvhqRv8VqMbZsTJOAs+05p5j8XShOmWD4o=;
 b=m2rZYn4JhJ1BnicMdj0NMzoBT7KBpbSbvYnk68OcSljhgRxjvgvbwCdvwSrdIt4XOw/wC5X1defTTIkSx1eD0jFKPjBeP790oCMiwavUFX4Mbolv4VoJkVcvcse852aGBv5s1XPWcC5HBVYFc8Zd988reaZya63LXGt7tFbiVXyo4QH9WeXOajAbr/qZKqAWvaA9AcqijfJjz8hxOuYtyy/o4Ce63vtOC9qHDVJFJZ/MUxEeiQc5frxxZWsa9L+9mhGKbkZq8pj+y3MQEsI7fY9+LLV5H1U0ygvplkF9l1ZWYHR74PLiX1sjd8UDxYQ/rqQ7LbdVkZBsbfxU3dqbFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Mon, 22 Aug
 2022 11:20:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::e8e1:12c7:5a6f:4f86%4]) with mapi id 15.20.5546.023; Mon, 22 Aug 2022
 11:20:07 +0000
Message-ID: <7f8702c9-d7ea-690c-024c-def4fb03ebf5@intel.com>
Date: Mon, 22 Aug 2022 16:49:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
References: <20220810145626.2075839-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220810145626.2075839-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 07f8fe3b-c8eb-4bd2-c67c-08da8430447b
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LyK/b6oMzJEwhQxS1C7GGFvfB+f0zLTApGR7ajjQYw8VX2LUxDzPsIFQmSz/Gjg6ai08SJSQXYQc8TMohgqxxre0wD9UWkEYp+vPo0ep6GBZveGg6aReFJXx3FVVSggIyX1ducZS9uuUWDH1loo2oYm2vf2yKf79rXQjj2WF+8rVJvO2xYO3UjwbRA5fu2U8h5+34uuiZ0PCYFHEdlEaOdLVpBmTunoeWwtXNuf+3sLpKR/lriuoihS96MvibRgyFeFQxAVZPuQc2DrRoih3W+c5O81gw9PvZ9f7QLaPyxzLu4SxxYbaMkRxbMGHjCpfZYdtpSRAgdtYlwjxKSrDiY4lwXwCamX3q0nC5Hvb/9Y2F/abtTFbwLmt8FW0FT4FLfGCGBcZDibvdVRIdh7E+bd00wCmWAztjc8EYO6y2PcKh/hAcSIyGPClvqLHuTAI2P6W/QKl6In+l5j1UdicP7QLaKsbjN7A4ry38ulOJgvyChgktDk90zHb7mIhdC9rdy6Qnx1cbl0sfjPiVm90cLIw66NtR6JFqw6u+a4OrD1gtJTr0hmlZr7pk+GSt7Nqwi0LoxExdMJojZnBXK3LMZUMk3I6bhJOyXARM1NNqmXCiipYVJ62zDGmn1tONwTEf8RtdWShjGEz0rgIl5pqunV9s5V6tVaiRSvfrEW9Ja1aklrAorWgQFwaTqzITUvbg788ZFhMI+iUt6jwBlOGgL1CDYM4CpmF0ux+Ik7p9jD594+CkKDOR6+7IULUYkSq5wlyYY9tJ2ehV9YvQjCntR7J6z3W4jvRUDfc7Dlsb1g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(396003)(346002)(136003)(39860400002)(66946007)(66556008)(66476007)(8676002)(31686004)(86362001)(31696002)(6916009)(36756003)(38100700002)(2616005)(8936002)(26005)(6512007)(55236004)(53546011)(186003)(6666004)(41300700001)(82960400001)(6486002)(478600001)(6506007)(316002)(83380400001)(2906002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UW1uZHMxUGJvb2JkSThxcExqWmcrN2sxcFIybzdSUE5iSUVBUjhGR0VWeWNk?=
 =?utf-8?B?NSs4ckFVcXI3b2prQnVVRlFBdjdRdVU3QnVLNjdhcm5wN2VBSGRLbnpxQjNG?=
 =?utf-8?B?blZMMFl5QmF3TGRRQVFKZ3QwVkppM2NSaFhYS0lCZ2ZIOVM2SlNyWWZucVdN?=
 =?utf-8?B?a09ZYkxaRnpTNklzZVg1TkZEcVpuMzdkU1p1RW1nTW1Ea2s1b3pjUlJRek5j?=
 =?utf-8?B?SmY4czk1eko2TmR1MkVBUFlid0Qram5KUCtGL0FNbkY4RlJWdjgrUHFGb0VO?=
 =?utf-8?B?YkVvZzBUZEwvbWNEMExERG4vd0dSNTNqSTEySE1DQjZ2YVcyUGowdXJNOWp6?=
 =?utf-8?B?NXJhdEl6Q2xnRU1hMTVkZ1Bnb1dVUTBuU3hIMVhRU3hkUGhreUhtUW1QV2lQ?=
 =?utf-8?B?dTlXZExFeFBhYi9tdXd2NzRja09YR3J0VW0zV3k0cFhLUk01R2xNQVVpMmZV?=
 =?utf-8?B?Z1ZPakU0TnRmS3ErVm9FZkFIaW5xZzIvTGFMMnI0SEwwanArR1hQVUpJMWd4?=
 =?utf-8?B?V0tCS0FTL3lLL3RuRnUwa2xVSlhHWC8rSE5NUDhrWUFXcTRGeTBtRHNjVndh?=
 =?utf-8?B?Z1BQWU40ekh3WkF4SUVxbmszQ0NiOWx3S2NPSFBaMnlZcU1rSCtBcXZLOHc5?=
 =?utf-8?B?c0k2bFlLd0pBam1vZ1RXblYyY2J2YVRDWWgzVHZIbHpUU2hKVjRaSGxJakd2?=
 =?utf-8?B?L204WENTMmdBOGowZkhiZzdZZm5qNmhiWmp0WlVXdlovKzhTbjdnSitSM091?=
 =?utf-8?B?dENxMFNVL01GaXUrQUhkSDAxS3ZUcHZ0RnprWWNTVjIrd0xiNHBVQlgyVE90?=
 =?utf-8?B?RFdhanhwM2N2S3YxTU11Q2tPSDRzV0lXd1Q3L2hiNFhSUURrMDlrYjhQSzhS?=
 =?utf-8?B?aWFzRzNXZE9sMUxHQjB0azZVSWJyc0xpM0ErOFp5c0NMYXE5dU4vNi9yRmNJ?=
 =?utf-8?B?VWhVajdnMjFWZm53dzRlT3hrQW1NOXVYbklGeGRPem8raDlxTmJZUS96VHMz?=
 =?utf-8?B?RjdYeUFoYXFIOEVzQ0Q2UFYxMWtBTjRoOE5uM1NGbjV6ZUwvRmJYU0wxRjZP?=
 =?utf-8?B?YVlqUGE5WEozQ0FMcFJrN2haNGxOMnZGRmhIaGxEZzFzbjRtblBQNFVkSG9p?=
 =?utf-8?B?NE5tMkZFNi82dXN0R1JBTG1BWnBnTkhXSTYrWVdKZ05BWmtGQlVDNDN2azh4?=
 =?utf-8?B?RDdRRjRibnpoaVp0UmViNS82S2JjMWx2UFZ1NTg2aUlXRFdQQitaTlVEcmJS?=
 =?utf-8?B?cWRLSUpqVlROZVVsLzhFV1MyUHJPRXFSdkxQZUtwbkhaZkVpTE81NFNPbFA1?=
 =?utf-8?B?N0JZVUk5bWhOZGlBZ29GdmcyQ2d2ME1Vd2dNM2MrSWRVME8vM3hTNzk2cmNU?=
 =?utf-8?B?MFFHMWRmb0h4dHBtWEtrV1JNM0YzWDMwUVZTYWRnVmlQOG9DU2xFZG9DZ29G?=
 =?utf-8?B?WjV3N1dZY1huQnJFdnhqTnpGcnhDTzEwYmRaVFVVK2V6TjFOTjZKbVJhL2FX?=
 =?utf-8?B?UVZtczc3SXlMTmZONDhvaWJoR2JtREhDNWorSDRLZTZtOUErQmFQbjd1djND?=
 =?utf-8?B?WnMxbUlpRDZuck5IZXBGVWRjbW05eGRRMEhJckZFSTVwRGwwZE1RUFlRQTNF?=
 =?utf-8?B?M0VwZXNVQngvR2VEMnBvbE93bTErdmJBMWhsRi9qdHBYSDcyOHpmVHlSb2dm?=
 =?utf-8?B?S042Mml4a1N5UlBGMWowT29sczhTc1NHUjlGN2t4WlRWUjJLM0VKOE42TnYw?=
 =?utf-8?B?M3JtV2hqc1FBMWpNTVowTldNQWZ2aG8vQjNPdXNONW5XeE1GditSb0RXSkFo?=
 =?utf-8?B?UWllMWZ6OEZIaTJkTUQvbjRzTERlMTcrYVk1a1ZYNkVvQjZ4S0FFSmZJSWV2?=
 =?utf-8?B?RkFEQXBPNXlzenVIQ29lRVpKRlQ0RzF1d0ZGWHdnVUhZbGhxdFUxNjM3SW5p?=
 =?utf-8?B?czh3cS82WVlOY2JvUHVibFo2TUNJaXA2U1kwZFJHTWtwODVJSUtGWkJPdFpu?=
 =?utf-8?B?QXpnYThhaEFXSW5UOVhyQmRhUjNMUEg0VTh3MmtDbVQzTGFST0JyTUlUcUtj?=
 =?utf-8?B?YUluR3F6WWUvVnRybkExdEFKb2pUd0FFVFdZSHp3MkpzaDMwZnQ1elpmck5D?=
 =?utf-8?B?UFdJSFdVRWZwVG5WQ2hHWWFqT202WGhhKzVSQXRjTXNRZ0tFS0FNSFNQQWs0?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07f8fe3b-c8eb-4bd2-c67c-08da8430447b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2022 11:20:07.1886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OJUVhoY1vECHA9B54AJTntawYIZH/MmPzR5Xb0W2Wj38JCGz4w0777r6ufZXsqjKQYsTDvhwmgtbnS+xlV4kh6lJFs78TWNQfzx3Z1azMw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5009
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/combo_phy: Add Workaround to
 avoid flicker with HBR3 eDP Panels
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

The Bspec:49291 is now changed to reflect that for all platforms the 
DCC_MODE will be programmed to DCC_MODE_SELECT_ONCE,

rather than DCC_MODE_SELECT_CONTINUOUSLY.

I will send new patch for the same.

Regards,

Ankit

On 8/10/2022 8:26 PM, Ankit Nautiyal wrote:
> Wa_22012718247 : When Display PHY is configured in continuous
> DCC calibration mode, the DCC (duty cycle correction) for the clock
> erroneously goes through a state where the DCC code is 0x00 when it is
> supposed to be transitioning from 0x10 to 0x0F. This glitch causes a
> distortion in the clock, which leads to a bit error. The issue is known
> to be causing flickering with eDP HBR3 panels.
>
> The work around configures the DCC in one-time-update mode.
> This mode updates the DCC code one time during training and then
> it does not change.  This will prevent on-the-fly updates so that the
> glitch does not occur.
>
> v2: Added helper function for DCC_MODE (Imre).
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_combo_phy.c   | 16 ++++++++++++++--
>   .../gpu/drm/i915/display/intel_combo_phy_regs.h  |  1 +
>   2 files changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 64890f39c3cc..b3be0e3ca984 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -226,6 +226,17 @@ static bool phy_is_master(struct drm_i915_private *dev_priv, enum phy phy)
>   	return false;
>   }
>   
> +static u32 tgl_dcc_calibration_mode(struct drm_i915_private *dev_priv)
> +{
> +	/* Wa_22012718247:tgl,adlp,adls */
> +	if (IS_TIGERLAKE(dev_priv) ||
> +	    IS_ALDERLAKE_P(dev_priv) ||
> +	    IS_ALDERLAKE_S(dev_priv))
> +		return DCC_MODE_SELECT_ONCE;
> +
> +	return DCC_MODE_SELECT_CONTINUOSLY;
> +}
> +
>   static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>   				       enum phy phy)
>   {
> @@ -244,7 +255,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>   
>   		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
>   				     DCC_MODE_SELECT_MASK,
> -				     DCC_MODE_SELECT_CONTINUOSLY);
> +				     tgl_dcc_calibration_mode(dev_priv));
>   	}
>   
>   	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
> @@ -366,8 +377,9 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>   			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
>   
>   			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
> +
>   			val &= ~DCC_MODE_SELECT_MASK;
> -			val |= DCC_MODE_SELECT_CONTINUOSLY;
> +			val |= tgl_dcc_calibration_mode(dev_priv);
>   			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
>   		}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> index 2ed65193ca19..cf46f13401d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> @@ -92,6 +92,7 @@
>   #define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
>   #define   DCC_MODE_SELECT_MASK			(0x3 << 20)
>   #define   DCC_MODE_SELECT_CONTINUOSLY		(0x3 << 20)
> +#define   DCC_MODE_SELECT_ONCE			(0x0 << 20)
>   #define   COMMON_KEEPER_EN			(1 << 26)
>   #define   LATENCY_OPTIM_MASK			(0x3 << 2)
>   #define   LATENCY_OPTIM_VAL(x)			((x) << 2)
