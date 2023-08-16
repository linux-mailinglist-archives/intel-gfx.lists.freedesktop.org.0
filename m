Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF2777DA8F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 08:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6A710E2E3;
	Wed, 16 Aug 2023 06:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD83810E2E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 06:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692168057; x=1723704057;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v7pBF++gIbo9woZwmPsIjwJ+a3sjO586IxXH8/uHoEU=;
 b=VugRoHri9qaSnSWHMm38h7UAZAwlMyFXDqy32asShWQnyXC85x/dEl9t
 0FMBVhDMdInH8HIM831pFAHvgSQ0OKAPQiixGjWynXNeDVn0OLRunK6om
 lqRGw3fP0/asko601MTE/JXc4Zj/Sa7tpjRH3RjcJSy46bX/obXhxCmes
 Ct80RTO0YjLJubl61HZH9vlN8ZB7gHs7PZGt0oRh6IrIVbC06ZmzXYFVe
 MFTT+b6LEjHfMmqKo7nyC9u4nstcDAJR0/f8CP2uZwF6dOirXXCl928dK
 e1Inl4T2BndeMyDAEx4PF2CM3nzO4mdiySAWJCHvgmSK9G4poKE0JOmzp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="375225653"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="375225653"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 23:40:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="907897937"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="907897937"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 15 Aug 2023 23:40:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 23:40:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 23:40:56 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 23:40:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QP+TpIbB88U5tjTr82KEtSbCdmVEENjOT9KuDjKlT4szQjYwnaBIkJPHInOXglUutNvYIZ7S6ts3AHkCylkg5shuJfclxMNbg6+z7LRKxCa8+pvHJypX/O2Kq9KJ1xWh2phZz3HRK4OpkkeqIroQUMUZ9/OLTuFOZfjnSwGmKq4r+wqL/pIqw5keCQja/l/4qaxEyOTkrZLzU/z6rnOinLw6Do+QVHWdhcZkj5feWQLOecmwnEs3fkVKwmQewuZkKySjkUWyX8y44Y1v2kfuURADHQE3k4hR8ynmJ1usj4Lk3WusB7U+6bPj0gmnLQjm0q2ZGdkxaQJuU4Gv2IJbiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mhzdu34cufhEC+VrFqlu140uY2EOxSP+X7TiOrXj/jE=;
 b=OiLBynPlDZl0LCmu7i/Z89FFiKes5OEHopARf5umeK+7YevqckqyPPOJ2dgLUe0i317/VFmtJSUy0onnMIUGI+6ULRySYI/oH51Za2zksnO6nlIvNHsHzQr2EN40VVTpeUqQNaUEQPo9EdwWbHQ6n9DI6YCa17uEqXRH+fZAATEr1bpiI8aGlRIzutH0nQakz2Z95lymbOtvQi5fFiLF/meNI9WgUDUcY7pXy2CHwWNgyc2Mk6DRj2ozP0vXe638Bu93va2UQjVpsGqvWEu9Thahd0k2VR679o+XStCAMO7GhPO06S+3QhAQDIPD2QooJvLQ+uo+fGxomW7l3K97pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 PH7PR11MB6005.namprd11.prod.outlook.com (2603:10b6:510:1e0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 06:40:53 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 06:40:53 +0000
Message-ID: <91c298bf-e3ba-3ccd-40aa-0b7d793d0eb6@intel.com>
Date: Wed, 16 Aug 2023 12:10:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230810234618.3738870-3-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0051.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::13) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|PH7PR11MB6005:EE_
X-MS-Office365-Filtering-Correlation-Id: 53fc0811-f97b-4afd-cb2c-08db9e23bc34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DZmqA395wnncuMe4mFg/4qs5N05+Be6lK+SF6uL4n5BU95L/fApYb33XhBzE1vcH0vOm3fxgSwIBBHV6eugiYeClYSt3IFy29p7sL4K6EEMQNGwiwiO1ycpO53+vc33XEPAzCl99Y/zaOc5ru7ePZrvbjJvlo/rREqqBfOAWX9DaSbqFljY3fpxdlFqcAoRzWol4iVjVZLndMhjyxb9JUYtsdFje5PI/64yC0/qsLLqP0yESKAq68XUljaX/ufYEEiHHJfUXwHSdpM65kZGlbUGAwVjSSOvmuyppmr5OsFJBNJoUtA/PM2Ru5kg6vyNpd+VKGWvWficInATrhjp/yAsOzXLxWTw8+kzFjsNT6MMmyDkcVoiiG4pfOSClJEGMIOnXtOQvZS165beqzy15qI8UgD3EGxA1JcKrGP8P0sqJI/+lhnF1pbsY6JOluRqZpTv7G+Dojp4lDYPIXH4i47igwLHMTlpyI0F0ECQSssv5H3ZlN4ww8S235MZD2sxMId2PlnADENXtYaHmScJc36PdD7h7QspRpWh3NV5XBdwVyDfr4m5vLA78Ug1CFaA/O5ezh69H1pFitMrVotOgS9jxy7zY9LtmgvqxjrxTDXKRRTYpcHovZ/tSRsbhtYmy7GTOGPByq7S45h1+v42BgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(6666004)(31686004)(66476007)(66556008)(66946007)(37006003)(6512007)(6486002)(6506007)(2906002)(478600001)(26005)(5660300002)(2616005)(83380400001)(6636002)(41300700001)(316002)(53546011)(8936002)(4326008)(6862004)(8676002)(38100700002)(82960400001)(36756003)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2p1b0hnWmlidzZWL1VSREhJTlgvd0dFUjJCYi9QcTJlSHdvNjFXRHU1dXlK?=
 =?utf-8?B?L3lJQ1YyOGt4YWhvK3Nka1FtNWI3dGY0eWRMK1BFQlRveWJFclI2ZnV1b25j?=
 =?utf-8?B?aWx2MFNYZGE2K3BxRkR2cFZKeGo3a2xYUGgySGgxS25XRkJhMEZuUHNtaGR2?=
 =?utf-8?B?UEtZK0l1SVFCdWNKeUdPWi9vNHdPSU9acHF0MDB5Y3ora21IQzh6bC95M0gr?=
 =?utf-8?B?OG85aDh6RjBSY2pnRVM5UmRpTHJMR1A2NjRMRjFwU3dBbmFlUGFuQ3FjSEJI?=
 =?utf-8?B?Njl3aTJZZTBzSHYvZ2g3dWZQSmMxckk1QzRhTVpIdVkvUXJjVEhGTXdZTnFS?=
 =?utf-8?B?Uk1ERzlZekhFUGNZYkI0SDE0ZENFdXdFVmplUjhnZmxYdGtCL29OVkI0dHBW?=
 =?utf-8?B?ZktBakp6UFNuRnZUTXh4M0RSRnkyV0hoQUZMMUlpU2F3M2lobGMrcGdCYmQ4?=
 =?utf-8?B?bnlya2RQWEFUYW45bWVSbVZWa2dQMnpHNk9MQzBRK0xQeittRmhzeVRGbXdW?=
 =?utf-8?B?ME9UVUROT3pkOHZOc1NodmRtOERBWmtNT3F5OEM3QWExbGdPMjlWUkdQREJ6?=
 =?utf-8?B?N3cvQzRnb3AraGJDV1pyOXZjMGFPRlNpTER0V3A4VzB1V0wyemI5dDZPL1Fy?=
 =?utf-8?B?VjgyUUNIdTBKS3N6UnRTNTJ0Yk9ES1RVaWlpNjZ3WjhGUHZuQlFETUE1RW1N?=
 =?utf-8?B?WGJhZ2ZsdE1BczI2T1IyS1BqUy9NbmNya1I5UVg3cTJ0MVFwVXR0dytacUJp?=
 =?utf-8?B?dUx4c1l4ajJLUjU4SGRVVGEwYm16YnZMZEYydW93ZDZrQjBpRTF5d2JzZEdW?=
 =?utf-8?B?MnpSc0p2OEc3bXdnbTlmcUFueXlPVWQyZkRTRmYyWDJEeGh0RnNsZFRwVkt6?=
 =?utf-8?B?SzhQblJ4ZWFJN1BNNXhPRUdiMXdYdkRVVnlYK1BWbEJ6cUJFTmlSQ21Pbmpj?=
 =?utf-8?B?L25BQXVITDJvNXhGUlk2Ykd0dW9xWC83VVA1dDZSWitocE5iY2xxK1RlMnpP?=
 =?utf-8?B?VmxEdkpkZDQyUGYwQWlkOEk5R3NndTlHckRCbmhYU3RUZlhoMUtIYXV2T2ZP?=
 =?utf-8?B?b1hjOTFYRjhHSjNDbitJWG1yYmRzRjVYbmlMUmdqMVg2b01XTzRXa0dIRTJn?=
 =?utf-8?B?Z3JUODVTQjRFR2JmZGx2Mi9Lc1RQNkdiMit1VldVYnorSmsrelRPeERyWkpB?=
 =?utf-8?B?MGlSVDkvUmtQSE9sYkc0THI3YXoraXJocWswVE9Wb0dQVjUyZldKOGZMY2Y1?=
 =?utf-8?B?dHhSYVFzN1FmRVJZUy9hQTJlQzJoZW1vbmswZVlNQzRGNFpMckxEQ1JVc0tI?=
 =?utf-8?B?b3cxTEFaR0JJdjBZZStRbUhyN1I1UFh5V21pOERKVE80blJWSkViZlo3NGRa?=
 =?utf-8?B?Y3h5dUNCRDFRdEhZYWl6WHpWa2ttUzM1MVd5VUNSVUxxUzFERWVzQUVnV2pY?=
 =?utf-8?B?SnR0NjBQOTNGS1paTnBHUys1QWd4blY2dXJTNTJFMXpiMHVad3JyNmFJaVVQ?=
 =?utf-8?B?TGtWVVc2T2tzTmN6N2UvWTM4MnpQTllpdTNxdUtuVWJVUUpRY0hRbnhFbFZ6?=
 =?utf-8?B?eUFHVTJnZFRhOVNqUzh1SGNyVHpuOUVQQzhSOE9vK0YyR2xaeVQ4Y0VraVln?=
 =?utf-8?B?cXJPSGpTek1KY2lxVEZRMGpheVpGTkRmVTlGa2V2RDI5a1dYZi9nMEtkV0I4?=
 =?utf-8?B?Q2NrT3pZTHFVVU12Z0gyYUxLdHF4VTFDSk9kMnZNZGdQZDJuNFZ2emF1WFU4?=
 =?utf-8?B?VVc0amV5dXNPMWpuL2N1RzlnZHh5T3lOT28zWGtYaU1SY0diZ2VJNEFMU0VK?=
 =?utf-8?B?TXh6VGNrMHRHRWc3L1FGeWhOaGxnajlRRW8yQ3ZlMDNvYS91ZklPNGhTVjNy?=
 =?utf-8?B?Q0haQmxqa1JNY1BZTmdOdzJvR0hRYVdacjA5R2dHUGl2V2FRM3JjQjFMZ3Yv?=
 =?utf-8?B?MFAwT3FrOCtuNFJZQXBpOFJwLzRhbWJzRXduT3FNREM4WDFMaGJmTnFTZ0lI?=
 =?utf-8?B?bVBDS3FTVW9qSXBmbzRJL2NUZmdHb3ZwSTdRaC9OemNLaVdWQ3RSTlE1Q0NM?=
 =?utf-8?B?cTNiZkxnVXVQTkxCeUQyVXJVUSt2T012a1BIVitWcHRlalIybTZqK3BKM081?=
 =?utf-8?B?c3kvTithdGhyaXdtR2MrZHFJL0lTSlpyU3l0MlFpV1VTMXZONnVtWklGUzF1?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fc0811-f97b-4afd-cb2c-08db9e23bc34
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 06:40:53.1786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jtve1dRmbBOiZpPpddFwLNxue7K/A3zOtR5oxppfia+AqcWDj2hbBooE+LZ2ij59Pj/urUB3FIWrCoUw8Gv3VZY7JelOJZrbUbxttPJoOBc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6005
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftest: Simplify Y-major
 tiling in blit selftest
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/11/2023 5:16 AM, Matt Roper wrote:
> Rather than picking random tiling formats from a pool that contains both
> TileY and Tile4 and then trying to replace one with the other depending
> on the platform, it's simpler to just use a single enum value that
> represents whatever the platform-appropriate Y-major tiling format is
> (i.e., Tile4 on Xe_HP and beyond, legacy TileY on earlier platforms).
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   .../i915/gem/selftests/i915_gem_client_blt.c  | 39 +++++++------------
>   1 file changed, 15 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index ff81af4c8202..10a7847f1b04 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -83,8 +83,7 @@ static int linear_x_y_to_ftiled_pos(int x, int y, u32 stride, int bpp)
>   enum client_tiling {
>   	CLIENT_TILING_LINEAR,
>   	CLIENT_TILING_X,
> -	CLIENT_TILING_Y,
> -	CLIENT_TILING_4,
> +	CLIENT_TILING_Y,  /* Y-major, either Tile4 (Xe_HP and beyond) or legacy TileY */
>   	CLIENT_NUM_TILING_TYPES
>   };
>   
> @@ -165,11 +164,10 @@ static int prepare_blit(const struct tiled_blits *t,
>   			 BLIT_CCTL_DST_MOCS(gt->mocs.uc_index));
>   
>   		src_pitch = t->width; /* in dwords */
> -		if (src->tiling == CLIENT_TILING_4) {
> -			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> -			src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
> -		} else if (src->tiling == CLIENT_TILING_Y) {
> +		if (src->tiling == CLIENT_TILING_Y) {
>   			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(YMAJOR);
> +			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 50))
> +				src_4t = XY_FAST_COPY_BLT_D1_SRC_TILE4;
>   		} else if (src->tiling == CLIENT_TILING_X) {
>   			src_tiles = XY_FAST_COPY_BLT_D0_SRC_TILE_MODE(TILE_X);
>   		} else {
> @@ -177,11 +175,10 @@ static int prepare_blit(const struct tiled_blits *t,
>   		}
>   
>   		dst_pitch = t->width; /* in dwords */
> -		if (dst->tiling == CLIENT_TILING_4) {
> -			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> -			dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
> -		} else if (dst->tiling == CLIENT_TILING_Y) {
> +		if (dst->tiling == CLIENT_TILING_Y) {
>   			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(YMAJOR);
> +			if (GRAPHICS_VER_FULL(to_i915(batch->base.dev)) >= IP_VER(12, 50))
> +				dst_4t = XY_FAST_COPY_BLT_D1_DST_TILE4;
>   		} else if (dst->tiling == CLIENT_TILING_X) {
>   			dst_tiles = XY_FAST_COPY_BLT_D0_DST_TILE_MODE(TILE_X);
>   		} else {
> @@ -326,12 +323,6 @@ static int tiled_blits_create_buffers(struct tiled_blits *t,
>   		t->buffers[i].vma = vma;
>   		t->buffers[i].tiling =
>   			i915_prandom_u32_max_state(CLIENT_NUM_TILING_TYPES, prng);
> -
> -		/* Platforms support either TileY or Tile4, not both */
> -		if (HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_Y)
> -			t->buffers[i].tiling = CLIENT_TILING_4;
> -		else if (!HAS_4TILE(i915) && t->buffers[i].tiling == CLIENT_TILING_4)
> -			t->buffers[i].tiling = CLIENT_TILING_Y;
>   	}
>   
>   	return 0;
> @@ -367,18 +358,19 @@ static u64 tiled_offset(const struct intel_gt *gt,
>   
>   	y = div64_u64_rem(v, stride, &x);
>   
> -	if (tiling == CLIENT_TILING_4) {
> -		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
> -
> -		/* no swizzling for f-tiling */
> -		swizzle = I915_BIT_6_SWIZZLE_NONE;
> -	} else if (tiling == CLIENT_TILING_X) {
> +	if (tiling == CLIENT_TILING_X) {
>   		v = div64_u64_rem(y, 8, &y) * stride * 8;
>   		v += y * 512;
>   		v += div64_u64_rem(x, 512, &x) << 12;
>   		v += x;
>   
>   		swizzle = gt->ggtt->bit_6_swizzle_x;
> +	} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 50)) {
> +		/* Y-major tiling layout is Tile4 for Xe_HP and beyond */
> +		v = linear_x_y_to_ftiled_pos(x_pos, y_pos, stride, 32);
> +
> +		/* no swizzling for f-tiling */
> +		swizzle = I915_BIT_6_SWIZZLE_NONE;
>   	} else {
>   		const unsigned int ytile_span = 16;
>   		const unsigned int ytile_height = 512;
> @@ -414,8 +406,7 @@ static const char *repr_tiling(enum client_tiling tiling)
>   	switch (tiling) {
>   	case CLIENT_TILING_LINEAR: return "linear";
>   	case CLIENT_TILING_X: return "X";
> -	case CLIENT_TILING_Y: return "Y";
> -	case CLIENT_TILING_4: return "F";
> +	case CLIENT_TILING_Y: return "Y / 4";

Hi Matt,

Looks good to me.

can we return "Y" or "4" instead of "Y / 4" by checking graphics version ?

>   	default: return "unknown";
>   	}
>   }

-- 
Regards,
Haridhar Kalvala

