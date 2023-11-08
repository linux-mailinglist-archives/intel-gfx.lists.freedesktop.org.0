Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05677E5959
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 15:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08ABC10E789;
	Wed,  8 Nov 2023 14:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2060.outbound.protection.outlook.com [40.107.220.60])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFBF410E789
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 14:40:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQmC184BwAiNgmU0lqdOFsOTfJDKmFEG1f4eLoG0gMWVh2X+Kk39Tcet/2jvkqckbFnYMC5X98cFAabAFI/H75eq4+fVWfUn07l/9ldhH943GMdORlOLA9aXJz9wA2gdYWt/pexOFltK5s7TPawoiGkKmqnmNLPVGmzpvDASfs6r4qZHsg6VrD4DoR6HzKLQ3GN9cv4ejtYEIyR8NRLNhO8g6OY7EPzLYL0ztTvelDMblpvadqLDeqQLdaiFfKtxdKXWxBjnornxEyAZ2tTfWH81Qr8XTXBgp2mQJuFgcTXhVwl2ZrTmZQOwxVyIWJNd3ZphvIXXiD0XRogNslIrFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0V2kKzOAYn6GxrSoXrVt7qh2WDj1+DZeg8Sqavj5csI=;
 b=ZWoHho+BOi9LMLGqBiS4Hhwnyue3nuo0KQ7Cc9CK6icmz5pau08HQ4pzZgVrP/yZM1hj77jADOtT9bmBjPyZTtz5RREkuQ5cxCbvL1y9vrcOYWT2a4GRWW7uiwG980Bh2gEiiFgmLWglfHBCzQC+CwhazKjLxMVu1VV6w1WQcwKOH0DN1sVpEG2K5J1HaWsee1En4+JJ3Mb0E37BMgJzzRV8bgHp0Qs9N15PPKY03rxiPiWWtShH0t5b2sWlLQllu2aJIIH6f6lWe0skZAJcnGOxQrL1q0eOAfio/hsSvGLaO4uFqIPY8Ps1fTkoECg7/WbFVbFtiwr1jEeXSaxK6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0V2kKzOAYn6GxrSoXrVt7qh2WDj1+DZeg8Sqavj5csI=;
 b=tiLLIhduGu2+JEeYMuEMno5/FC/lN+YJrlHZI1edao7a/yOnrfPwVydZhV+FGqjvfZgRldn2AZ2Y9CCssrPyt02F5fClNFw3n/fL+8xTQ2DYFZYj96puBX0e/8PzXJ8MbRGeN698YMtzaF1QQYyZBlFbUq0UcuggeyWK42+msNE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from CO6PR12MB5427.namprd12.prod.outlook.com (2603:10b6:5:358::13)
 by SN7PR12MB8434.namprd12.prod.outlook.com (2603:10b6:806:2e6::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.18; Wed, 8 Nov
 2023 14:40:26 +0000
Received: from CO6PR12MB5427.namprd12.prod.outlook.com
 ([fe80::5e7e:d568:2bfd:a53a]) by CO6PR12MB5427.namprd12.prod.outlook.com
 ([fe80::5e7e:d568:2bfd:a53a%4]) with mapi id 15.20.6954.029; Wed, 8 Nov 2023
 14:40:26 +0000
Message-ID: <fc1840c7-d205-4980-a003-28f1172f9338@amd.com>
Date: Wed, 8 Nov 2023 09:40:23 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231030155843.2251023-1-imre.deak@intel.com>
 <20231030155843.2251023-3-imre.deak@intel.com>
From: Harry Wentland <harry.wentland@amd.com>
In-Reply-To: <20231030155843.2251023-3-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: YQBP288CA0020.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:c01:6a::24) To CO6PR12MB5427.namprd12.prod.outlook.com
 (2603:10b6:5:358::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR12MB5427:EE_|SN7PR12MB8434:EE_
X-MS-Office365-Filtering-Correlation-Id: 467fb69e-2c2b-4934-a4d5-08dbe068a5d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QWmlgaFnXZtsqdHj2jvfms1WW0CTPs1IuElGsxVkr4A6sK4GBmuT4wVEJvB7gq6G0fz6cgx0SMrNqKMcGHdpQuKm1t5RBPLLvqtkTRrBTDAV1ZNar3aPNDpyK0R1Y92iTvkpyw4V31xymePTxlDjh4V3bwKw049aH1ewc3VgRBOK6EG4xsB4rUoVnd7lPkeZ8eDt/mpZRoddW7hKgEmqrhSUavBokNBvFCPW2Dni8fAvIkoBykZoF/dDc5nf2R34XpBVf+xPlvvDdU4xelzCBSMtUJFO9zMrZLq0bz4Ka/qic3AlvQ0TuTtuEnflqbHFMr4SmQPdaAMKQIMyCRJ9F5TVO5h61Tddbi9DfnTeMOrc0ME+leqBhTjMBSicW087xclAnJLy47rKtxrxxkj6Xb6U61r8Lp9kNMRhSY2c0ZTsV1Lb44Zs2rasWpbEsJ+cY/EvUKPYvNiHH++9hKnj/i7CdUPqREl7YcZW0PrIctoy4y8y+qSaRQESnCQTsRkXujIUZJQ3tItq/rNNtwiy93B+OtFvG4U5J9rhLUDokfiIgFW5np5XVMmHBlAceZQSFRhkhLBZEaLl5shWzh70F8XrNoswW/hmigNfvRD7nDW92TV4XwUJL+gluaSwZgvWLcFl4X4zE9OdOW3mKHvzhA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR12MB5427.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(396003)(136003)(366004)(39860400002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(6666004)(36756003)(66556008)(54906003)(316002)(66946007)(66476007)(86362001)(31696002)(8936002)(478600001)(38100700002)(8676002)(4326008)(6486002)(6512007)(6506007)(53546011)(44832011)(41300700001)(26005)(2906002)(83380400001)(66574015)(4001150100001)(31686004)(2616005)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWJMWUJZM2g3emZlcjZua0FRb0xVaThWRlV4NktOVGwvMW1YZGpRMWdSbm9Q?=
 =?utf-8?B?SkY5T3grdk9DWFMrZFNEWldYbUJhOTlqQ2crdTBubW5yR1JoRHJqUitkaFgz?=
 =?utf-8?B?MHlKcFFpb050VGVmOGRQUlQwS1pvbWM4TjY5UktIYmMyQmpBcHRQeG5CUlhn?=
 =?utf-8?B?azZMVUJMR1cwaW9IUzRMcUhKSkdCREtHUlJWMEVaUDVKY0o3THI3Qk12MnJ6?=
 =?utf-8?B?NFBMbE80NkpsN2cyZXVZUGQ4SjFEY29wZmgrNFR2aHpRUWR4Rk1kWVlpSnFn?=
 =?utf-8?B?cHNuOEJadHlmSnZLUTZhV1hDMzFaelRRRWh6Tm5zT05Sd0FKdnFWRFovWlow?=
 =?utf-8?B?VzUxcGhmVFE5TlJDT3hxWGlqbG14c2l5azVkZmVCNG1qOUI3dlUwcUlZOXpq?=
 =?utf-8?B?TUpFYWVPRGN4V1diSU1CYkpxemkrUTZzaHlGZnZCRG1LR1hSTlcrd0RuZTBC?=
 =?utf-8?B?dGY2NlhsVzVSZlBKSnZMZE93TVRXV29GYnVkbEhjM0R4ZFZqNUZvM2FUQzRT?=
 =?utf-8?B?cXN0RlZDcS8yVGdKM3I5c2FsbDhEaEVvSU1WME5FT0RRYUpIS0xFZ0t4Wnov?=
 =?utf-8?B?bEE0OGtXOEZwZDkvbmZLSitXL2FPSFdKalh3N1NIblk0VEY0SjhrcWdoWVUw?=
 =?utf-8?B?cmRYdTdaOFd3b0VTK1lrUkFSNnNTT21zK0N1NHJZVkErTTgwT0lGNk9aTHYr?=
 =?utf-8?B?cnpUak1CTTNYT2wrZm8vWUVPeG1JaUR0YWFrY2M4dVlpYzRTWnNianJOcGlt?=
 =?utf-8?B?YlcwaUVCSDdEdGdVUEFTTEVrSWU4a2FQbkFheUltaUhpaTg5MmNRUFlkTk9M?=
 =?utf-8?B?eUxmeGptYlJWYzRjY3l4ZVVqclZNZFI0REREc01QbnJpRDJna2RSRUlURGhi?=
 =?utf-8?B?QTROaDkzRFA2eWdZOW5wTTk3SmNaTHBGN3JvcmdjMTZsT25IalV0Z2JwdkdD?=
 =?utf-8?B?NVZSMmRtUHBUeGRycDM0emczU1dKY1g3K3VzKzBVOTJpaHQ0cGNpR3FMVDhu?=
 =?utf-8?B?RnFrREg3QnRCTFFHU0NYV2hVOHlRaDdwT0laNnVtTmxYeW04OXh3K0Y3Uk5t?=
 =?utf-8?B?eGs5Z004U2oycEV0SVdKeFlWb1RuVElocUdSU3p2UWVqWGo3bGdCYTJSNFZK?=
 =?utf-8?B?eTIvbUM3RjVGQ2dvRnFpbTI0S2ZSQjB0ZDdDSzRDdkNzcU9acGdjV0NpOFlT?=
 =?utf-8?B?OVZQVjV6aWY0Q1gwdU9kS1JYOHptQ1BzSUxpOUMrRGFNSndYODNJNy94ZDJ0?=
 =?utf-8?B?ZWhSZ3JhVFhQQXJFWEU0cGtlRHZUSEY3TW1ESHNEanFYbzk4QWgrbWY1amRY?=
 =?utf-8?B?YWhTdk1WbWNFampCWkk3a2pVUDh1SkhEQXpYa21oMkpSWEJyTjVYQkQ2cXZv?=
 =?utf-8?B?SFdkOHFoa2FkTHJsR3FHTHVBaWJIUHBZQjE2dGtsZHV3Y2JmUDF6d3ZORHFL?=
 =?utf-8?B?dXFjUmF5eFlQT0hXczkyQ2RYWGEzcDJrZCtvZHp2cVdsTCtwT0pkNmN3VEcv?=
 =?utf-8?B?QXdja1ZFYXdyb25CMU9EYnJteVJiMTcwLzVCd1lZZGZiYmdnSEI5cmlFcjhG?=
 =?utf-8?B?Y09wbDVDRHY2MTdyYVlzekxWVXNCblVXVlcxaGZITXRmODZZMEJDSm8xRy9K?=
 =?utf-8?B?NlFyUDdlVEhFTlh5MjJsYUJPVkxjeUtjR2dIZlBkUlVjRUZiTnRKdlNqclpQ?=
 =?utf-8?B?S28ybU92c2NRZlFpRXRYb1FTTGxYT21FUnJuSmhjeENBSzlVZmpRYXUyZThi?=
 =?utf-8?B?a0ZKRTA5bm1KOUhldkJiQnZvR1l1ZjRrUWpoM3NMcUJOemhta0VUMEg2UGFT?=
 =?utf-8?B?cE8vY2tmODdGS3NDNk93UFdka3VuL3NkZG43UUtVOFZXcCtybEhKcWN3T2Jq?=
 =?utf-8?B?NHJaNTREWlYxNitpSmljUXdJd3Jhbm9TWW1Oc1RkQWw4U2lzTFpPSThDYTMy?=
 =?utf-8?B?TmRxMlo4VnBKeCtvVlRpKzNnSDhybWRmNHdjVmFxVWlzam1WVGpoaFJ0Wk8v?=
 =?utf-8?B?Z0luUFo4THZmcU1BVW44SHZvRVc0UmVMajZxaEV0anFGYk9ncVlHRVhaTGdU?=
 =?utf-8?B?aW1YblNQdkhYSUJLdnBEd2w0aDZlRThLM0R2eWxia05oMTMzendoVzdld1Vh?=
 =?utf-8?Q?X9nKut4oV1HD93F5OJTspe+9i?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 467fb69e-2c2b-4934-a4d5-08dbe068a5d7
X-MS-Exchange-CrossTenant-AuthSource: CO6PR12MB5427.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2023 14:40:26.7803 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nEsJjI57j4apvaZq9ubSKSDjMniV5FHpAaG7zJqnmVu1nZdzJOPdbGUTxgkWfI0IzmZqfRVYq/VZQLGN1glFvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8434
Subject: Re: [Intel-gfx] [PATCH v4 02/30] drm/dp_mst: Fix fractional DSC bpp
 handling
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
Cc: David Francis <David.Francis@amd.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Mikita Lipski <mikita.lipski@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2023-10-30 11:58, Imre Deak wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The current code does '(bpp << 4) / 16' in the MST PBN
> calculation, but that is just the same as 'bpp' so the
> DSC codepath achieves absolutely nothing. Fix it up so that
> the fractional part of the bpp value is actually used instead
> of truncated away. 64*1006 has enough zero lsbs that we can
> just shift that down in the dividend and thus still manage
> to stick to a 32bit divisor.
> 
> And while touching this, let's just make the whole thing more
> straightforward by making the passed in bpp value .4 binary
> fixed point always, instead of having to pass in different
> things based on whether DSC is enabled or not.
> 
> v2:
> - Fix DSC kunit test cases.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: David Francis <David.Francis@amd.com>
> Cc: Mikita Lipski <mikita.lipski@amd.com>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Fixes: dc48529fb14e ("drm/dp_mst: Add PBN calculation for DSC modes")
> Reviewed-by: Lyude Paul <lyude@redhat.com> (v1)
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> [Imre: Fix kunit test cases]
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Acked-by: Harry Wentland <harry.wentland@amd.com>

Harry

> ---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  2 +-
>  .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  2 +-
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 20 +++++--------------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 ++---
>  drivers/gpu/drm/nouveau/dispnv50/disp.c       |  3 +--
>  .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  6 +++---
>  include/drm/display/drm_dp_mst_helper.h       |  2 +-
>  7 files changed, 14 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 9a712791f309f..ada3773869ff0 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -6918,7 +6918,7 @@ static int dm_encoder_helper_atomic_check(struct drm_encoder *encoder,
>  								    max_bpc);
>  		bpp = convert_dc_color_depth_into_bpc(color_depth) * 3;
>  		clock = adjusted_mode->clock;
> -		dm_new_connector_state->pbn = drm_dp_calc_pbn_mode(clock, bpp, false);
> +		dm_new_connector_state->pbn = drm_dp_calc_pbn_mode(clock, bpp << 4);
>  	}
>  
>  	dm_new_connector_state->vcpi_slots =
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> index d3b13d362edac..9a58e1a4c5f49 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
> @@ -1642,7 +1642,7 @@ enum dc_status dm_dp_mst_is_port_support_mode(
>  	} else {
>  		/* check if mode could be supported within full_pbn */
>  		bpp = convert_dc_color_depth_into_bpc(stream->timing.display_color_depth) * 3;
> -		pbn = drm_dp_calc_pbn_mode(stream->timing.pix_clk_100hz / 10, bpp, false);
> +		pbn = drm_dp_calc_pbn_mode(stream->timing.pix_clk_100hz / 10, bpp << 4);
>  
>  		if (pbn > aconnector->mst_output_port->full_pbn)
>  			return DC_FAIL_BANDWIDTH_VALIDATE;
> diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> index 0e0d0e76de065..772b00ebd57bd 100644
> --- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
> @@ -4718,13 +4718,12 @@ EXPORT_SYMBOL(drm_dp_check_act_status);
>  
>  /**
>   * drm_dp_calc_pbn_mode() - Calculate the PBN for a mode.
> - * @clock: dot clock for the mode
> - * @bpp: bpp for the mode.
> - * @dsc: DSC mode. If true, bpp has units of 1/16 of a bit per pixel
> + * @clock: dot clock
> + * @bpp: bpp as .4 binary fixed point
>   *
>   * This uses the formula in the spec to calculate the PBN value for a mode.
>   */
> -int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc)
> +int drm_dp_calc_pbn_mode(int clock, int bpp)
>  {
>  	/*
>  	 * margin 5300ppm + 300ppm ~ 0.6% as per spec, factor is 1.006
> @@ -4735,18 +4734,9 @@ int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc)
>  	 * peak_kbps *= (1006/1000)
>  	 * peak_kbps *= (64/54)
>  	 * peak_kbps *= 8    convert to bytes
> -	 *
> -	 * If the bpp is in units of 1/16, further divide by 16. Put this
> -	 * factor in the numerator rather than the denominator to avoid
> -	 * integer overflow
>  	 */
> -
> -	if (dsc)
> -		return DIV_ROUND_UP_ULL(mul_u32_u32(clock * (bpp / 16), 64 * 1006),
> -					8 * 54 * 1000 * 1000);
> -
> -	return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006),
> -				8 * 54 * 1000 * 1000);
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(clock * bpp, 64 * 1006 >> 4),
> +				1000 * 8 * 54 * 1000);
>  }
>  EXPORT_SYMBOL(drm_dp_calc_pbn_mode);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 851b312bd8449..5bf45a2a85b0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -106,8 +106,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  			continue;
>  
>  		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
> -						       dsc ? bpp << 4 : bpp,
> -						       dsc);
> +						       bpp << 4);
>  
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
> @@ -975,7 +974,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		return ret;
>  
>  	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
> +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
>  		*status = MODE_CLOCK_HIGH;
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/nouveau/dispnv50/disp.c b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> index d2be40337b92e..153717e1df1a2 100644
> --- a/drivers/gpu/drm/nouveau/dispnv50/disp.c
> +++ b/drivers/gpu/drm/nouveau/dispnv50/disp.c
> @@ -982,8 +982,7 @@ nv50_msto_atomic_check(struct drm_encoder *encoder,
>  		const int clock = crtc_state->adjusted_mode.clock;
>  
>  		asyh->or.bpc = connector->display_info.bpc;
> -		asyh->dp.pbn = drm_dp_calc_pbn_mode(clock, asyh->or.bpc * 3,
> -						    false);
> +		asyh->dp.pbn = drm_dp_calc_pbn_mode(clock, asyh->or.bpc * 3 << 4);
>  	}
>  
>  	mst_state = drm_atomic_get_mst_topology_state(state, &mstm->mgr);
> diff --git a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> index 545beea33e8c7..e3c818dfc0e6d 100644
> --- a/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> +++ b/drivers/gpu/drm/tests/drm_dp_mst_helper_test.c
> @@ -42,13 +42,13 @@ static const struct drm_dp_mst_calc_pbn_mode_test drm_dp_mst_calc_pbn_mode_cases
>  		.clock = 332880,
>  		.bpp = 24,
>  		.dsc = true,
> -		.expected = 50
> +		.expected = 1191
>  	},
>  	{
>  		.clock = 324540,
>  		.bpp = 24,
>  		.dsc = true,
> -		.expected = 49
> +		.expected = 1161
>  	},
>  };
>  
> @@ -56,7 +56,7 @@ static void drm_test_dp_mst_calc_pbn_mode(struct kunit *test)
>  {
>  	const struct drm_dp_mst_calc_pbn_mode_test *params = test->param_value;
>  
> -	KUNIT_EXPECT_EQ(test, drm_dp_calc_pbn_mode(params->clock, params->bpp, params->dsc),
> +	KUNIT_EXPECT_EQ(test, drm_dp_calc_pbn_mode(params->clock, params->bpp << 4),
>  			params->expected);
>  }
>  
> diff --git a/include/drm/display/drm_dp_mst_helper.h b/include/drm/display/drm_dp_mst_helper.h
> index 4429d3b1745b6..655862b3d2a49 100644
> --- a/include/drm/display/drm_dp_mst_helper.h
> +++ b/include/drm/display/drm_dp_mst_helper.h
> @@ -842,7 +842,7 @@ struct edid *drm_dp_mst_get_edid(struct drm_connector *connector,
>  int drm_dp_get_vc_payload_bw(const struct drm_dp_mst_topology_mgr *mgr,
>  			     int link_rate, int link_lane_count);
>  
> -int drm_dp_calc_pbn_mode(int clock, int bpp, bool dsc);
> +int drm_dp_calc_pbn_mode(int clock, int bpp);
>  
>  void drm_dp_mst_update_slots(struct drm_dp_mst_topology_state *mst_state, uint8_t link_encoding_cap);
>  

