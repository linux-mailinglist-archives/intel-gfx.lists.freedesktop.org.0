Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FEB41CB45
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 19:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF026EABE;
	Wed, 29 Sep 2021 17:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2DC56EABE
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 17:50:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="286018376"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="286018376"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 10:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="554908203"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Sep 2021 10:50:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 10:50:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 10:50:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 10:50:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnBPMBGmYTTud/PoQ3MBhp0YWiabkYtjEO+chqpCIDYCn0rn0UauPp8Ikrcyfic0xpwJQSnDFZ5BPz81urWVgAKmcQT3u5xk/g9H56VeD2WNa84SEBEd5Lwvef8uqulgdYX/NiYyXEGYRmZX0e7xm6tZT/uOx3WQ5TqLyIbbqbZISsZlzZbgM4XTgfx7TW6uSvW845o71Yo3QPxBCcpiRCw4lZJfAU46uU1JrfIqbvPkMGfHokFWF6FjxaU4rq63F7IdVTUoSf+VqYFcof57qgg9qGTmPDnyDSwkEZDXOeGMgyerrrT1oeZpPgSsyjvTfKNhkLI3QpA4dyPYVsKbrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=b9P1489yzclT4Nhv+IvmomZntEBMyN3Xm2Ii7bmgf3M=;
 b=LFzxplT99NpUa/T8C6sY789cgQuUJ7P8idwdKCHIqrht/H/iEP5QbQnQdeSKN89HIS4cTmTGJpeRbpk5i8/RN6xN51b8eq/udg9qFlsWY6KuPlU5g+iWwBH4zxbkpIcQXEHkJjykVdOZALJ54wWoJx5r+1nL+FT2Upe536haVl+Crk44mxN2N5CD5eginPMugbkFuCu9NUEU+2N1Q4bPAxbp8NzIcjdPVtxEdfxortLdkBE8qMj7bFfwgfzXcwKFOPhAq6I4siqkH7sXeVesiDKFb/l6MaPU+NaOO8TXq+EV926562HuUouN+HRpUs3KqSkfEpYYNn5st+VnvRfetw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b9P1489yzclT4Nhv+IvmomZntEBMyN3Xm2Ii7bmgf3M=;
 b=jJ2LfB59YNP/zHq4Xi9l01ncHs+S/WvLGnxFWdblJiOwQeLldVxUa0fr6MsJxtgJePqsxFoL6wDgSJgQFbZ8eBrxwUTGFMG5DW7YyED5UiJd/TvBUwcZTJ8Ke1N1vnHq06YNyB67lNuIXWazLFlLLdW6vCBbGeICQBaqtu1X1+U=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5419.namprd11.prod.outlook.com (2603:10b6:408:100::5)
 by BN6PR11MB1811.namprd11.prod.outlook.com (2603:10b6:404:103::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.18; Wed, 29 Sep
 2021 17:50:25 +0000
Received: from BN9PR11MB5419.namprd11.prod.outlook.com
 ([fe80::f493:c39b:1982:9d1c]) by BN9PR11MB5419.namprd11.prod.outlook.com
 ([fe80::f493:c39b:1982:9d1c%4]) with mapi id 15.20.4566.014; Wed, 29 Sep 2021
 17:50:25 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-4-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <5f2840af-93f9-3493-7e22-e6b88442d992@intel.com>
Date: Wed, 29 Sep 2021 20:50:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210923194617.69136-4-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0301CA0073.eurprd03.prod.outlook.com
 (2603:10a6:6:30::20) To BN9PR11MB5419.namprd11.prod.outlook.com
 (2603:10b6:408:100::5)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DB6PR0301CA0073.eurprd03.prod.outlook.com (2603:10a6:6:30::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Wed, 29 Sep 2021 17:50:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7b1ce5d4-df4a-4c92-7c85-08d983719de4
X-MS-TrafficTypeDiagnostic: BN6PR11MB1811:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN6PR11MB1811693156584F0F15052FABB8A99@BN6PR11MB1811.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hxhjYhcEJSmwELXwAjfHzlYkumc1jl1rMFup8F4ZEKnQN//pRa0oSKF0pOYpFGqdWlcu73wI3imcV5f0MI88rzTdeIoIBi2mJ4cIa1VZYFTu/rt6or26vV4frdURpPOb1clWPyQTvNsXsezAhHr45mCQcqJTccm2oMHWXh04jwcbsjVmpgelJXr1TS0oOMSdm2Mbk1J5VS7+/LftssPon3mEbb6j4Lr44gdYrTdL7jtOJDK7Vc/2QpoSP4MOhs58xCWa91LrTSYskqlgalL6/RLPDvlaT21+txoWdEKJw5+g44YsO7f8BgZoGytdfntWcTWjutI4HpJTEhXW5gukC/lxQid+ggAEubuaQioD0MpXz2wdX1DimsTOkwYoT8LmV81pZ9ysAItwj+iEZCK0R2vzTsU+gdOhVjrEU5YCmRTicA+od2VPSiJSjhkpbHYCOgOLF87JW8qZLuIV9g5wk+mFtV7/qoJJ2J3o9X3WdFj+u1GpSA277mlMzY4Bq9RlbJzIQpUd+Q/x/DT+L1dPpDDmq//eOrLx2TKB3ZsQDJJBYW6ALYMekFTEinEct+Ug1uv5ddBAOy+54oJha06HG30DAgXmRDH3Kg1KC2D3fOYNtYSF9xDXeL3rqdyxaNUGFg34QuMzpuzcTeN1ocMdTmIaDH5QHGMEVnIdGrA/a91Z1Y/cLQU/k6F3HHJUm4FKP9SEU5P6OulZdFzbkwkb9qRryXyG6yFTu6UKW1Lqdag=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(5660300002)(2616005)(86362001)(31686004)(31696002)(956004)(6486002)(8676002)(66476007)(186003)(66946007)(316002)(16576012)(53546011)(83380400001)(6666004)(26005)(38100700002)(36756003)(2906002)(8936002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDdrcGl2QUlXZ0dWU2d5dzNGQUpwRkdYVWI3d3crdmZIUno4bEZjdi8vczIv?=
 =?utf-8?B?MEpXWEVKUjVtSk1FbEMzMjI0UWg5ZmRlWXpKQWFHRmhWcWcrcHJOQW83M1hK?=
 =?utf-8?B?cnlCZW5TYUJLaGNoNTBhbDlONC9JYWZ3cVhseElkUFN3V0VmOHkza25QRm9i?=
 =?utf-8?B?ekdIOGZYa002QzVGTDRhSkdDejZ5Nk5ISTY4eUZKL2QybS91Q3E5ZVdzU0hN?=
 =?utf-8?B?NjNRWmRSRm05K1BISjBjMXZUclBpSjByWCtReWF2bmVwS1Jza21yNUJSY2s1?=
 =?utf-8?B?bVZuZjhUelhrcVdiSnB1NUVOM1BGL1NEMkRObjlLZml0NnMzME9PU0lpanZp?=
 =?utf-8?B?VXlKTHIrRjdiNkhRTVpVNUQwYXFnbksyTHJkSVVLMWJJaE1VY3J0MndkVWpj?=
 =?utf-8?B?NEVMOE9lWklIVG9VZWk0b2pSY0QzM1RJYkwxaGx1SW1HWUNhM3gyeDBESHJi?=
 =?utf-8?B?dFpTS1VkbGNNczBxeU1Qd2hWeDhQRzdVSm1BTDB6ZWxrUlJxbFY3eVA3SFpP?=
 =?utf-8?B?U0JxYURRVzJlNm9oTEhGcFprMGJJM3NQNGVPZ1lxTW8xRThzNGUyZjMydDhF?=
 =?utf-8?B?TUMxTU94NUhXR2NwdEpmay9UTE8xQ21JMGxSZ2hLMjdsZlNyb2NNMUNrOU8x?=
 =?utf-8?B?ZTdvdGVKM21UVDE5ak1kMWNzK0h0MTV5ODhPRDZ2WVFjM3pUZis2b2tuZ09r?=
 =?utf-8?B?ajBUblo3V1dlcWgyWFAzVDJrR0JzWHpjdWhuSjZLaHhmNlUrOEgrTTBBbmtj?=
 =?utf-8?B?Zk1jZXBYNkhEVTVJTmNYaW1vazRoTE9SNG9UaW52bDRQcnBBcXczS0p4Z2tO?=
 =?utf-8?B?UEJqTWg0TloxRERkUnlob2hMQXlPSFRHeTh5ODE1SnR1NCtUbmt1VCtFMlFk?=
 =?utf-8?B?cW9KUHhLdThYSlMraGRObjhJMmVKMjNwbnFDbE1yQVdvSzhtcWhPZjBpNmZn?=
 =?utf-8?B?S2ZDeCs4UndnZ21EWDJ3VCt4aVE3U0U4UUZsaGowY0JZYmJjRXpZRURyRGdO?=
 =?utf-8?B?SFRPd09pV2dkbGd2L0Q3SGQvYklmdnUvek13WlFBUEx4STRUMUVzZDF1Ynlo?=
 =?utf-8?B?aHZMZ09ON2N6cDRReWY1RU9tUExLaDIrREFSUm9EakhWcHIvdXdvL04yWm8z?=
 =?utf-8?B?ck1QNmo0UGRpRENtYkRCTjV1MEFxRDNQbHZyM29nVXVjSWJwN2tzU0pycDFX?=
 =?utf-8?B?eC9vUWw0bnE3MHpPYWdyR2RxaFYrMUtPL3lhUWJMWVhxZ283OVZBZ2ZJY3dv?=
 =?utf-8?B?OG44UlBLcVU1MVdic3VVcmxVYkZTdUJFMHJjdlU4R0dGSTdvM1NvNmU2YUNH?=
 =?utf-8?B?UGZ4T2dIUUtHK1hNb3IzYWRYb1FuR2JKUDBoRGZzZjZXOWZZc3BnaXREUE5l?=
 =?utf-8?B?N20weTZHM3dqbEhpSEJ2VVZjMGdkWml2RU1Fb01jY0tlZUVacDg2M0hBUnJR?=
 =?utf-8?B?QS9EYy83b3prTmVVWDlScjlENjVyTHNpTUpzKzhBZ1JtQXkxWnE5cjhuY3dM?=
 =?utf-8?B?Y3N5Z01MWmhTUEsxajdnSEMxa2lOK0o3UnoyU3hET0NpTWdTcDEwUnBFMEpn?=
 =?utf-8?B?aVplYWt4OEg0Z00wd3FBSXBpcVZCNGtPdVQveFYwQmQydFYyb3FoM3VzVHNW?=
 =?utf-8?B?UjE4elJnQXF1ajR4RHVEQXdseTNlanlSUTNHYjY0czVZUzQyeVlJNWo4TDBJ?=
 =?utf-8?B?MVUxU2RObytkOUw0YnYrVHp5c0FPaTBPSnI4ODBrSzZxdmxvQzdvd2x3MWRC?=
 =?utf-8?Q?suDEXNjkJtJOm9ntMV82kWTiduoSeg8KGHO024p?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1ce5d4-df4a-4c92-7c85-08d983719de4
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5419.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2021 17:50:25.4320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cjUVu8DhGdrxEWOAc/9Q7qYbzOCEnQswzpfXBd+SmM36zwGl+LwabY9QTx7vip1AYTqFGXFCA6ya1ApPGN6SdrPyl3d/2gYzFXyLgKX6hzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/display/psr: Handle plane
 restrictions at every page flip
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



On 9/23/21 10:46 PM, José Roberto de Souza wrote:
> PSR2 selective is not supported over rotated and scaled planes.
> We had the rotation check in intel_psr2_sel_fetch_config_valid()
> but that code path is only execute when a modeset is needed and
> change those plane parameters do not require a modeset.
> 
> Also need to check those restricions in the second
> for_each_oldnew_intel_plane_in_state() loop because the state could
> only have a plane that is not affected by those restricitons but
> the damaged area intersect with planes that has those restrictions,
> so a full plane fetch is required.
> 
> BSpec: 55229
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++++----------
>   1 file changed, 26 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 1cc4130dec7b1..356e0e96abf4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -720,11 +720,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
>   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>   					      struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	struct intel_plane_state *plane_state;
> -	struct intel_plane *plane;
> -	int i;
>   
>   	if (!dev_priv->params.enable_psr2_sel_fetch &&
>   	    intel_dp->psr.debug != I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
> @@ -739,14 +735,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> -		if (plane_state->uapi.rotation != DRM_MODE_ROTATE_0) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "PSR2 sel fetch not enabled, plane rotated\n");
> -			return false;
> -		}
> -	}
> -
>   	/* Wa_14010254185 Wa_14010103792 */
>   	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>   		drm_dbg_kms(&dev_priv->drm,
> @@ -1586,6 +1574,26 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
>   	clip_area_update(pipe_clip, damaged_area);
>   }
>   
> +/*
> + * TODO: Not clear how to handle planes with negative position,
> + * also planes are not updated if they have a negative X
> + * position so for now doing a full update in this cases
> + *
> + * Plane scaling and rotation is not supported by selective fetch and both
> + * properties can change without a modeset, so need to be check at every
> + * atomic commmit.
> + */
> +static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
> +{
> +	if (plane_state->uapi.dst.y1 < 0 ||
> +	    plane_state->uapi.dst.x1 < 0 ||
intel_atomic_plane_check_clipping() function makes 
plane_state->uapi.dst.x1 and plane_state->uapi.dst.y1 non-negative 
values, so there is no need to deal with negative positions here.

And the rest of the changes look good to me.
> +	    plane_state->scaler_id >= 0 ||
> +	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
> +		return false;
> +
> +	return true;
> +}
> +
>   int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   				struct intel_crtc *crtc)
>   {
> @@ -1618,13 +1626,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   		    !old_plane_state->uapi.visible)
>   			continue;
>   
> -		/*
> -		 * TODO: Not clear how to handle planes with negative position,
> -		 * also planes are not updated if they have a negative X
> -		 * position so for now doing a full update in this cases
> -		 */
> -		if (new_plane_state->uapi.dst.y1 < 0 ||
> -		    new_plane_state->uapi.dst.x1 < 0) {
> +		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
>   			full_update = true;
>   			break;
>   		}
> @@ -1703,6 +1705,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
>   			continue;
>   
> +		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
> +			full_update = true;
> +			break;
> +		}
> +
>   		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
>   		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
>   		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
> 
