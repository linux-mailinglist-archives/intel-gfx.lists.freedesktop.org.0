Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBE74B864C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 11:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0031210EA32;
	Wed, 16 Feb 2022 10:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B2410EA32
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645009085; x=1676545085;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9U6Nd7FkV/swlFuTAQkbvKLX/UFQRU8VITPBcbyZhik=;
 b=d82GGJK9v50OwGyWq6TgOcvFJgc5tZIM1+YMP4Ro0U6Xwp082KzUdtMw
 xIJ3QcCsB3of/kOBaMedBXDX14o+KV74AlmX9jxwixRtsk5eQ74dTTtH3
 PwJEqOj/+3BJPogSkyoI43zDX/ne8eaLH+3x3OaSgskLnahPfD6v4Wbt7
 bZN1jBaZr1cp5Ugr0WPKXg9l/ZhKR3l8cCr8wGcvMfDLspzzyIzmI36v6
 d3elikN0QrT8cCjyHHmELGqZ2fdEKoKKwHzZdEXjLnLKWRVf3b6/6a8+8
 EvbyB9MhLQMyPSAccecT7czRgWx4UcAPwAQu6a9vzw2fmOmKsgKwgH/cu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="275159938"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="275159938"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 02:58:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="498747399"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 16 Feb 2022 02:58:03 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 02:58:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 02:58:03 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 02:58:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ed6L2oIMWZFnAHkacq7a3p0t5ChuNuJgC1cGsKM+zMhr0minSPP2MVGgoe/CR8/km6rDjXYRfx2kUTmFfd0fbfenAVEqQd/indbqtD1l++C/lxfbwE4SeKKAbyQmNtM2m/iA1g3Rsoz84/hEB6lZ4rOWE0wRFsBo4jtfm5vKtZVBDvAkyGMHms55xxuX4RI1WR5g03fkgwh/5TCU+9bod8ydPk2nQfkSRvjRmQvpC//SnLU657flDisYnoh8JUzVQkGY0Wj2a2Eyogsx3bU0d3r3ahXG38/ut4q5eIqpGXVfCmZk8vDOV/GjydfRx6Nh90DP6zGsZ45Jq5nKNTHcvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/1PXxFT4FycUofhyqhYmh7LwiObkkt8+t8AbJLxl9o=;
 b=J+kZ4YAPgR9WOxS9I6X92obV3sUyQgZ+RdHo8Zb6hc6AZz2LTIoqRRJFeyZVYVtd+/zlIPiu423Ecicb9cX3cGaS9e18hYlXpS4nN08axkfE1LzS4TJLKwZsFwM1b+7Pef2YOZ0UY3IbYqhKTV+k9hDgVDdWpkdKtkLhRd8njBBKeBtgsTv5wl0NoPcSAfNlk8sTamQdXYRRDwfqazt2xoqVLoA73UV7ErIforEqAQbvaoVl2XjWkQiOWLhXG1mWe866BiUFCMdJBsgxVJMFuspQIkUm/qg7K1OrAtPXrQsLuOx73wzYWUU5Sq81a9pcbfTroMMJxfsi2mU2+H0BKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4105.namprd11.prod.outlook.com (2603:10b6:5:5::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4995.16; Wed, 16 Feb 2022 10:57:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::2d:20a0:15d8:e530%2]) with mapi id 15.20.4975.019; Wed, 16 Feb 2022
 10:57:59 +0000
Message-ID: <b713032b-2696-677f-d1a6-b3eece58b678@intel.com>
Date: Wed, 16 Feb 2022 16:27:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-11-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20220215183208.6143-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BMXPR01CA0047.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:c::33) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7215d618-8295-4320-57bd-08d9f13b3188
X-MS-TrafficTypeDiagnostic: DM6PR11MB4105:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB41059B884E5FB1C2E1ADB0FDCE359@DM6PR11MB4105.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:238;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1dyGNUqPg5AqRTsbcv5crqwXa5LzByPpTD93rYyK0e2Z8qxn/PtU4K1V42cn9yci88B2LLVdSiwiZLOvJp8uTMW55NOg7SqXMZR54VuzxJZ6Q9tjw568YX+ao8GJ7ASpH9/HhrIoNKwrPybhLhtmVxsUpt7pZQIHUY7vXeZPCkyRn7mQZdG2SPv3xxhH5ALP8VYVC9MKtFPpqjlqefXO2FP5xEA/TbTuX8bW9WI7B0KXmI8IBF9RoAvZLs4AnXLcVQg0ps4AvXffUzXSxXRSn95E2iYr27Vix5DgqUXSVO6wMDqYuakQDpq2HJw1ALZ+AV9QVXzcqSx+KKQzsgA3A3CqhsCr/lF6hHM77CqiFcwGysSe69Y+PXRRcPHLzadxmkuXqRfCmQ3J22W6MPRg8M/3NKHMPV+VHlfv45lvT2g0SA0zolt5LEpWhiWX3MGjpAfL+l/a0MY1BVMF0tdch4kMpvxs52tZDC7r3lMjrglo3nydbHJY5RUOj6hmX1A7frBfT1B7hMrRLxF8ahNU/Vol9i94tkaFBx3Ed5/fn5Sf182iMz95q9NgdJLoFlgWZvLOwRLeaaqjhwtMoOexGRXoKunJwT+BDCzY3cXLA0zFPZrDnqsFKQPRWhbTHD6uCdKop1685TM65aYP5XQVHRRR8lbODRRBK83RcIjzCXtIWwWhCRgc+TY2rpiZ0opVMoEvGjegZmYeatyfuxmIz7Fw3RIXXPGbm8/GdcezEhE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(2906002)(30864003)(36756003)(6486002)(66946007)(8676002)(66476007)(66556008)(86362001)(38100700002)(5660300002)(31696002)(82960400001)(83380400001)(31686004)(66574015)(2616005)(186003)(26005)(508600001)(6666004)(6512007)(6506007)(316002)(53546011)(55236004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEFXOE0xMkJ6QnNuclNibnNVK05adldhTExCeTZka0ZuTWN4V3lBVWZkaDdt?=
 =?utf-8?B?Z2FjM3UzR0k5RHNpTGFFckJXNklrS3JVV255UFdwd2c0ZS91eGFPS0lpa25j?=
 =?utf-8?B?WHQvOHZwNnZadjlGNEhtWnNCMkM1ZEdIZmtxdjc1bGZkUGZFNFRVYkJpbWNw?=
 =?utf-8?B?S0IvRFpmMTZhSEpWMUlWeDh2ZEI0K2pqbFhuS3B4Y3lrVExyRkh3UU9BM0ZK?=
 =?utf-8?B?SkJMb1lwendEaXFCUDBDQnlWbXdHeEZQOW1udEtVMVIrS3h2aWlnSmR3Ukh6?=
 =?utf-8?B?SHNjMHNwNFRSdGFKcFQ3TkFpRTAyYjhTb0dlelZpM2kyeUJWL2ppS1puT0Fl?=
 =?utf-8?B?S2tJazdmZEQwdURRdEQzY3Y2K0hGZzlUZVVpQ0pUZGhralpabTE3cVVvdzhs?=
 =?utf-8?B?Ly9XeXpGRkhoLytWT3hLeUxDWTQ3d2hkc2ZFdldsdUxUa1EzQUlqZ2E4eTFZ?=
 =?utf-8?B?SFNiV1grclpqS0pyUDg0MC9kOWZoVDhLR3VIVEwxNUlvNnVEbVkzM1Z5OWZT?=
 =?utf-8?B?TVhhcmduWGVwKzJwMTQ0bXJnbTJFNTJudk5iWnFxKzBmRDR6c3MvYm1GVHJ2?=
 =?utf-8?B?WWMxVS9iaFhQZ0lPc245UGxyVFF2cVBqM1ByTFRZMGNoY1RoS0J2Z3pRRU9y?=
 =?utf-8?B?aGlJdWZHNGkxRUdZdW5RbUE3YkRpa0plaVJ6WDI0cWNmQ2oyQTZnd0tIeDV0?=
 =?utf-8?B?Q1k5VGpIOVlaZm03cmNCUmhHSTZCd3lpL210VzJGWjkwcHQ2VEtqNXpVV1Zq?=
 =?utf-8?B?T1Z5YUx0cVFRWDlLK2JLZnBCS3NudldyNEhIY0ZmUjZQQUl6UFpENjRmS0F5?=
 =?utf-8?B?dXBKUEJSSjY4NXlhbFJoSHR6VXJpakViOFAySmFHUTE4NkluTUVlUktJZDc0?=
 =?utf-8?B?QnJxNFpSaitkck95M1NxK25rbUI2Q0ZZOU11ZlhoQUhPRFJZdGlUZlRrVjFv?=
 =?utf-8?B?eWlTNW45SUdOSTM4WUpSY0lMcGQyRzR3b0Q4eTRSUGViL09qOExNbVVObkR5?=
 =?utf-8?B?YmZkYTBYL25sMVJWQUpWYTh4Nk5qSDlnN1hacFJGMkhaeSs1OUI0V0hqYmt3?=
 =?utf-8?B?b3BYMDluSkM3N00zMlE0NDc3MzFlYlI5K2ppYlJzck4xT1BncFFLaXdLOVZG?=
 =?utf-8?B?QXI5djRxcGI4UUU5aXgrREUyVDRVdnc2a3dUZU5yNnhJZmYzbkduN3JrSndQ?=
 =?utf-8?B?eXVZaDhtcG8rYXBscDJMaEFPVUNIVzVBSDdMTkIwOHo1VEdpK202S0FpRThJ?=
 =?utf-8?B?RENaZlpoZHQ1ZlZTUE1CUG1ySlhqYUxrZ3k1b1FFZS9mWnAvRm82ZHlaalhD?=
 =?utf-8?B?TS8xWW9oSzR5VjFJeUFpaDdCVXhzeWpWQytzcUx6TW1OZFVYUGxxckk3Skdv?=
 =?utf-8?B?VzRqbzV2VGNWN3BlUWdaaXExMDduMFdxTVd6RjhldittQnVtbUdWdXhNVlFx?=
 =?utf-8?B?THZPSExYaCticXIydGxScVVQTDR3b1QyZWZhOENlYUZ4OFhYWmg4bENhVWZK?=
 =?utf-8?B?TkJqNXFTUjU1ek90YkphUFMrNnhuVUt3NHJXazdFeVVEYVVnaXI5YVpNaE44?=
 =?utf-8?B?Tmo3WkZ1ZzJFRE5CTjZxSW1zSTdLeG95YzNnQ0J2VnpNMXhlM0ZrY3Z5SnBr?=
 =?utf-8?B?WGNWRXNURTlaZXZHRVpHU0UxTFp2c3pLNVhwRlVobDVEcU1ZOU9iTTNjc0tz?=
 =?utf-8?B?OS82UW5PQ1JobE1iM2JPaU02RFZKcXJ3Qms2b3QwMWZmdHZwMWpKWm5DWlJq?=
 =?utf-8?B?WElpY1cxaE9CelBWeDFaSlNkNWpWUnlYTUp1UHdNOVBWMHM0VWt5VFNScGNH?=
 =?utf-8?B?dWtUOHZVenNyTFdzWGpYZExNTmdUK1lyYlBRdmN6Y2xtekY0MnNCUlFCM25M?=
 =?utf-8?B?ZWRidUkrNDZIOFU3ZDRSLytsTFlYUnVxTFZNR0tZS2FNNkNKSUtMQ25XMUdP?=
 =?utf-8?B?a1lrYmNCbGFzdlZUR0h3d29vdzlaQnYzcHRtckFvSFQwVTM0aVlNeEZJTjNL?=
 =?utf-8?B?YVV4UXpaekVwdEZJTytVVmVEZWcvQjJOL2huR2s2SGFjdVROQmZ5Yi9Cby9G?=
 =?utf-8?B?aTVPaHFXemxjalVTUnhkTVV3VVlpNVhIL0Z2ZGp2R0xEdlFSTWJneEk2Z2Ny?=
 =?utf-8?B?dVN5aFdDSWZ3K1JtTFVFV3A0aTFvNU83RHlLMW1LQ09FVHZSTHBqVDlvM0lk?=
 =?utf-8?B?UDR3aGYzUStzR2hyL2ZEaEJaalU4cHFia3d5SitEalVaMGhPMWhuUENBUDRY?=
 =?utf-8?Q?r9D9ilOvjD+FLneYiUlfz5foLNwALStC/ThTDiw+g0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7215d618-8295-4320-57bd-08d9f13b3188
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 10:57:58.9259 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H/Qxylox17nHk+r9jl8Kft4E2alhmDfFeINAhVlJulDsaRrJGq7dvkGVAyEXkoF4Hzy7OWcxEN/Vk8sW/63e4Rj1xLr7jBFm8JakNY4H/AI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4105
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/12] drm/i915: Eliminate bigjoiner boolean
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


On 2/16/2022 12:02 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Since we now have the bigjoiner_pipes bitmask the boolean
> is redundant. Get rid of it.
>
> Also, populating bigjoiner_pipes already during
> encoder->compute_config() allows us to use it much earlier
> during the state calculation as well. The initial aim is
> to use it in intel_crtc_compute_config().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 50 ++++++++-----------
>   .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>   .../drm/i915/display/intel_display_types.h    |  3 --
>   drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     |  8 +--
>   .../drm/i915/display/skl_universal_plane.c    |  2 +-
>   7 files changed, 36 insertions(+), 44 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 1f448f4e9aaf..da6cf0515164 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -640,7 +640,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	 * FIXME bigjoiner fastpath would be good
>   	 */
>   	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
> -	    crtc_state->update_pipe || crtc_state->bigjoiner)
> +	    crtc_state->update_pipe || crtc_state->bigjoiner_pipes)
>   		goto slow;
>   
>   	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 47b5d8cc16fd..192474163edb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1926,7 +1926,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>   	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>   		return;
>   
> -	if (!new_crtc_state->bigjoiner) {
> +	if (!new_crtc_state->bigjoiner_pipes) {
>   		intel_encoders_pre_pll_enable(state, crtc);
>   
>   		if (new_crtc_state->shared_dpll)
> @@ -2727,7 +2727,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
>   static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
>   					   struct drm_display_mode *mode)
>   {
> -	if (!crtc_state->bigjoiner)
> +	if (!crtc_state->bigjoiner_pipes)
>   		return;
>   
>   	mode->crtc_clock /= 2;
> @@ -2811,7 +2811,7 @@ static void intel_bigjoiner_compute_pipe_src(struct intel_crtc_state *crtc_state
>   {
>   	int width, height;
>   
> -	if (!crtc_state->bigjoiner)
> +	if (!crtc_state->bigjoiner_pipes)
>   		return;
>   
>   	width = drm_rect_width(&crtc_state->pipe_src);
> @@ -4218,7 +4218,6 @@ static void intel_bigjoiner_get_config(struct intel_crtc_state *crtc_state)
>   	if (((master_pipes | slave_pipes) & BIT(pipe)) == 0)
>   		return;
>   
> -	crtc_state->bigjoiner = true;
>   	crtc_state->bigjoiner_pipes =
>   		BIT(get_bigjoiner_master_pipe(pipe, master_pipes, slave_pipes)) |
>   		get_bigjoiner_slave_pipes(pipe, master_pipes, slave_pipes);

Although not part of this patch, do we need to check if 
get_bigjoiner_master_pipe() does not give PIPE_INVALID?

Perhaps in a case where master_pipe is read as 0 but some garbage for 
slave_pipes during readout?

Should there be a check for INVALID_PIPE, before feeding into BIT() macro?

Otherwise patch looks good to me.

Regards,

Ankit

> @@ -5804,6 +5803,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>   		intel_atomic_get_new_crtc_state(state, master_crtc);
>   	struct intel_crtc_state *saved_state;
>   
> +	WARN_ON(master_crtc_state->bigjoiner_pipes !=
> +		slave_crtc_state->bigjoiner_pipes);
> +
>   	saved_state = kmemdup(master_crtc_state, sizeof(*saved_state), GFP_KERNEL);
>   	if (!saved_state)
>   		return -ENOMEM;
> @@ -5834,6 +5836,9 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>   	slave_crtc_state->uapi.connectors_changed = master_crtc_state->uapi.connectors_changed;
>   	slave_crtc_state->uapi.active_changed = master_crtc_state->uapi.active_changed;
>   
> +	WARN_ON(master_crtc_state->bigjoiner_pipes !=
> +		slave_crtc_state->bigjoiner_pipes);
> +
>   	return 0;
>   }
>   
> @@ -6604,7 +6609,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   
>   	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
>   	PIPE_CONF_CHECK_I(master_transcoder);
> -	PIPE_CONF_CHECK_BOOL(bigjoiner);
>   	PIPE_CONF_CHECK_X(bigjoiner_pipes);
>   
>   	PIPE_CONF_CHECK_I(dsc.compression_enable);
> @@ -7535,32 +7539,26 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
>   	struct intel_crtc_state *master_crtc_state =
>   		intel_atomic_get_new_crtc_state(state, master_crtc);
>   	struct intel_crtc *slave_crtc;
> -	u8 slave_pipes;
>   
> -	/*
> -	 * TODO: encoder.compute_config() may be the best
> -	 * place to populate the bitmask for the master crtc.
> -	 * For now encoder.compute_config() just flags things
> -	 * as needing bigjoiner and we populate the bitmask
> -	 * here.
> -	 */
> -	WARN_ON(master_crtc_state->bigjoiner_pipes);
> -
> -	if (!master_crtc_state->bigjoiner)
> +	if (!master_crtc_state->bigjoiner_pipes)
>   		return 0;
>   
> -	slave_pipes = BIT(master_crtc->pipe + 1);
> +	/* sanity check */
> +	if (drm_WARN_ON(&i915->drm,
> +			master_crtc->pipe != bigjoiner_master_pipe(master_crtc_state)))
> +		return -EINVAL;
>   
> -	if (slave_pipes & ~bigjoiner_pipes(i915)) {
> +	if (master_crtc_state->bigjoiner_pipes & ~bigjoiner_pipes(i915)) {
>   		drm_dbg_kms(&i915->drm,
>   			    "[CRTC:%d:%s] Cannot act as big joiner master "
> -			    "(need 0x%x as slave pipes, only 0x%x possible)\n",
> +			    "(need 0x%x as pipes, only 0x%x possible)\n",
>   			    master_crtc->base.base.id, master_crtc->base.name,
> -			    slave_pipes, bigjoiner_pipes(i915));
> +			    master_crtc_state->bigjoiner_pipes, bigjoiner_pipes(i915));
>   		return -EINVAL;
>   	}
>   
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc, slave_pipes) {
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> +					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
>   		struct intel_crtc_state *slave_crtc_state;
>   		int ret;
>   
> @@ -7594,10 +7592,8 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
>   			    slave_crtc->base.base.id, slave_crtc->base.name,
>   			    master_crtc->base.base.id, master_crtc->base.name);
>   
> -		master_crtc_state->bigjoiner_pipes =
> -			BIT(master_crtc->pipe) | BIT(slave_crtc->pipe);
>   		slave_crtc_state->bigjoiner_pipes =
> -			BIT(master_crtc->pipe) | BIT(slave_crtc->pipe);
> +			master_crtc_state->bigjoiner_pipes;
>   
>   		ret = copy_bigjoiner_crtc_state_modeset(state, slave_crtc);
>   		if (ret)
> @@ -7620,13 +7616,11 @@ static void kill_bigjoiner_slave(struct intel_atomic_state *state,
>   		struct intel_crtc_state *slave_crtc_state =
>   			intel_atomic_get_new_crtc_state(state, slave_crtc);
>   
> -		slave_crtc_state->bigjoiner = false;
>   		slave_crtc_state->bigjoiner_pipes = 0;
>   
>   		intel_crtc_copy_uapi_to_hw_state_modeset(state, slave_crtc);
>   	}
>   
> -	master_crtc_state->bigjoiner = false;
>   	master_crtc_state->bigjoiner_pipes = 0;
>   }
>   
> @@ -7936,7 +7930,7 @@ static int intel_atomic_check(struct drm_device *dev,
>   			}
>   		}
>   
> -		if (new_crtc_state->bigjoiner) {
> +		if (new_crtc_state->bigjoiner_pipes) {
>   			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
>   				new_crtc_state->uapi.mode_changed = true;
>   				new_crtc_state->update_pipe = false;
> @@ -10338,7 +10332,7 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>   			intel_encoder_get_config(encoder, crtc_state);
>   
>   			/* read out to slave crtc as well for bigjoiner */
> -			if (crtc_state->bigjoiner) {
> +			if (crtc_state->bigjoiner_pipes) {
>   				struct intel_crtc *slave_crtc;
>   
>   				/* encoder should read be linked to bigjoiner master */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 475ae7e7f760..c87718ae2c46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -935,7 +935,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>   		intel_scaler_info(m, crtc);
>   	}
>   
> -	if (crtc_state->bigjoiner)
> +	if (crtc_state->bigjoiner_pipes)
>   		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
>   			   crtc_state->bigjoiner_pipes,
>   			   intel_crtc_is_bigjoiner_slave(crtc_state) ? "slave" : "master");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c1a291b6b638..92357fdbd0f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1199,9 +1199,6 @@ struct intel_crtc_state {
>   	/* enable pipe csc? */
>   	bool csc_enable;
>   
> -	/* enable pipe big joiner? */
> -	bool bigjoiner;
> -
>   	/* big joiner pipe bitmask */
>   	u8 bigjoiner_pipes;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1046e7fe310a..05e1da3c43e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1424,13 +1424,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   						    pipe_config->lane_count,
>   						    adjusted_mode->crtc_clock,
>   						    adjusted_mode->crtc_hdisplay,
> -						    pipe_config->bigjoiner,
> +						    pipe_config->bigjoiner_pipes,
>   						    pipe_bpp);
>   		dsc_dp_slice_count =
>   			intel_dp_dsc_get_slice_count(intel_dp,
>   						     adjusted_mode->crtc_clock,
>   						     adjusted_mode->crtc_hdisplay,
> -						     pipe_config->bigjoiner);
> +						     pipe_config->bigjoiner_pipes);
>   		if (!dsc_max_output_bpp || !dsc_dp_slice_count) {
>   			drm_dbg_kms(&dev_priv->drm,
>   				    "Compressed BPP/Slice Count not supported\n");
> @@ -1464,7 +1464,7 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>   	 * then we need to use 2 VDSC instances.
>   	 */
>   	if (adjusted_mode->crtc_clock > dev_priv->max_cdclk_freq ||
> -	    pipe_config->bigjoiner) {
> +	    pipe_config->bigjoiner_pipes) {
>   		if (pipe_config->dsc.slice_count < 2) {
>   			drm_dbg_kms(&dev_priv->drm,
>   				    "Cannot split stream to use 2 VDSC instances\n");
> @@ -1500,6 +1500,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   			     struct drm_connector_state *conn_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>   	const struct drm_display_mode *adjusted_mode =
>   		&pipe_config->hw.adjusted_mode;
>   	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> @@ -1537,7 +1538,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   
>   	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
>   				    adjusted_mode->crtc_clock))
> -		pipe_config->bigjoiner = true;
> +		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>   
>   	/*
>   	 * Optimize for slow and wide for everything, because there are some
> @@ -1550,8 +1551,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   	 * onwards pipe joiner can be enabled without compression.
>   	 */
>   	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
> -	if (ret || intel_dp->force_dsc_en || (DISPLAY_VER(i915) < 13 &&
> -					      pipe_config->bigjoiner)) {
> +	if (ret || intel_dp->force_dsc_en ||
> +	    (DISPLAY_VER(i915) < 13 && pipe_config->bigjoiner_pipes)) {
>   		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>   						  conn_state, &limits);
>   		if (ret < 0)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 545eff5bf158..28a1c982750e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -579,7 +579,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
>   	int i = 0;
>   
> -	if (crtc_state->bigjoiner)
> +	if (crtc_state->bigjoiner_pipes)
>   		num_vdsc_instances *= 2;
>   
>   	/* Populate PICTURE_PARAMETER_SET_0 registers */
> @@ -1113,7 +1113,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 dss_ctl1_val = 0;
>   
> -	if (crtc_state->bigjoiner && !crtc_state->dsc.compression_enable) {
> +	if (crtc_state->bigjoiner_pipes && !crtc_state->dsc.compression_enable) {
>   		if (intel_crtc_is_bigjoiner_slave(crtc_state))
>   			dss_ctl1_val |= UNCOMPRESSED_JOINER_SLAVE;
>   		else
> @@ -1140,7 +1140,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>   		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
>   		dss_ctl1_val |= JOINER_ENABLE;
>   	}
> -	if (crtc_state->bigjoiner) {
> +	if (crtc_state->bigjoiner_pipes) {
>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
>   		if (!intel_crtc_is_bigjoiner_slave(crtc_state))
>   			dss_ctl1_val |= MASTER_BIG_JOINER_ENABLE;
> @@ -1156,7 +1156,7 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>   
>   	/* Disable only if either of them is enabled */
>   	if (old_crtc_state->dsc.compression_enable ||
> -	    old_crtc_state->bigjoiner) {
> +	    old_crtc_state->bigjoiner_pipes) {
>   		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
>   		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
>   	}
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index c73758d18b6f..925e0bd8bb72 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2284,7 +2284,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>   
>   	drm_WARN_ON(dev, pipe != crtc->pipe);
>   
> -	if (crtc_state->bigjoiner) {
> +	if (crtc_state->bigjoiner_pipes) {
>   		drm_dbg_kms(&dev_priv->drm,
>   			    "Unsupported bigjoiner configuration for initial FB\n");
>   		return;
