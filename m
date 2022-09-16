Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C40855BACA5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 13:44:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A509F10EC7F;
	Fri, 16 Sep 2022 11:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EB810EC7F
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 11:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663328682; x=1694864682;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0MQKuq0ZS04M2sZEVccIFidQ17m6vnJZ0MdddDPVdfA=;
 b=WNOHLs3C5U6foY8ct3lqgCkGltIpFoIGGfFyIIs3CCZ8rlLmMlcSzdyv
 o8pRJoPUccGrvyFIUPj9tgV1cbtf2JMOoa/BiJeeHWe+68SL2Vdx76+M9
 /ewjy3DhIGSG78Ij8XhogFsj+xCiG6H+zRkfX4jMYohFsre4EuwKlkJ1/
 X3CR49ceIsA23OwzmguIrFBVcz0rifv9Y5U4AaUY1/ZErTjPiXZdEmHYH
 uv7XlsnlT51Z4aV64JEiW3pYIfAMy0oocRQNOzeqvWlgYUbOL9TWGgpjj
 oSxDJuLjjrjhKXbqMCLwgmuHkYnDJnF3HuiouJRn14iGM4cF6rU8bxwvz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="385265195"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="385265195"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 04:44:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="946347364"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 16 Sep 2022 04:44:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 04:44:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 04:44:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 04:44:26 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 04:44:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NcwoOOgMlhDyrTJOjT/xbiala55iNkR52B0/VUTR4sOGgDUUb5ZxNLViqQZ3odKWxtpHItiBiXz1JPe8tcRvYt8ROcw1H//xT+Tsm/RuduQe6e0Hj6UoBamXQt8SbGz9iwvNu9ozyJKicXPNvOVxM9UA/3LDUrWn3l4dyxbLyZGN8nWR4I5iwnWtXaRMi7vJ81RdqwDzDQutxJ1hMj1D08TzcrCIwvVVGn35HPer/AVqNl/G5hA27iLbBOGcNzHFK4qbAx3a11IeWy4U4MC6G4DpAV/wDH8I9VZE5eMgmENtjT9LjjRiF+DFcT3FgPd5G08KpXCVi3Y0Y/0QCUYelw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/71+MUPsNP0iJO4EaZIlDlwsoaIP/iV3nEBKhbmgE1g=;
 b=NUVQxkSHXvzA2m+1LSFdKFc09ayVTTryKLZQ/fHXPwG8M/gJOuk8+PsDXlwIjl9HcXz+PyIUiFXCuP4gC89U3PWmJ9glHJvk4Lwj924i3jUblnaSQhBiODy5FFamKIbLOuOW7VgpL5kRsPZbHu6aiwdQdXgATb1ZPeVGFjKKDjLnMtcUv3D38M9l7cua2Tpdk6eQ1ECsH5MaguZtPyA1jftDfnVC2Rr6JrcvMme1gS1Ewk1+EPvVE4jCeUvTLWFCxH+ZB6VPirvgdJFOc7LzUyiSIt1ViPa//35+nw7AqzxxIUQlLbdVCiiTT34Mkstj+s+0Ths+p09xxbdtaszchQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by DS0PR11MB7406.namprd11.prod.outlook.com (2603:10b6:8:136::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Fri, 16 Sep
 2022 11:44:18 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::54de:6030:7501:b7ae]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::54de:6030:7501:b7ae%7]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 11:44:18 +0000
Message-ID: <eee45c42-c74b-edc6-c5b4-958c3a011949@intel.com>
Date: Fri, 16 Sep 2022 14:43:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220916110804.233449-1-jouni.hogander@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20220916110804.233449-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0145.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::18) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|DS0PR11MB7406:EE_
X-MS-Office365-Filtering-Correlation-Id: 604bac49-16da-415b-e88e-08da97d8c9d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sclsWt87PBmFq68c/Y2I5X99vAVd7be7blamH+POyC9sc8CmACTRy98ZK7jlc8lSZFzRDeDD0FdudKxOR9DzFwOYAO2pVNVM19uUqeX2pO5ciJ47i+yg+TrUI6fag+Il/lEdJj55W+14cVMP7mniiFY1N9+Q8Uu4OUcWaV2HT7QdqPqBOgDt8DGjzPpIZjVE6CcRO+3qd0h7bjzG5HwqP59mSdou1dFfvmkeHbUasGSgEDJfaEmzZUREvfFG10hiilpW8QLump40MGVRTEP7wcHWjJaiPX60pRkbe4+bd9fzC3e9A98nmpCvxAI4IpysS1HmdS6BaF2jxcOXFSpBtnlFenSO9/+RhP7Q94ME7hstuSkLRkyLrSj+HWjaZJvbRH+FnB8G1Bz0UUAP12p4KCLPXUwK4on3pNXb9MsNVZxWdNXt3y54K7HmAh7AuWILjbkE92JECjWshZojw+tJa6OD5donO7zfuW7HTbpzbm56jKcMMDBLeTzFvVQFmcBgI7Kjgam+59HVId9wNOsrngvulO4jwb3DX3SA21ktrrxAHuSpoiR4fkTCWP9Z1G/2O58rWm78yqpK6cLTEqChhIGDo8u7QkFtZqPHERj6tQCiI34W0X1O9kyyftxIFItLnytcRR5ZmjYxcNQ+z+nfm7h1uc95ywpUkVEfzmaF7jPYcAQuQd9jNtaFv8AkOW4lwuKzHUKh4stQ28lqfd1EdNRaOw9xWx8Y00NdASjFvqkqzogSjTXdeDBtG+zpJYWF+dRs3+lhV1Ri2GVOe7Ayon/Uc9mTi8QcfS4twpk5is8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(39860400002)(376002)(366004)(451199015)(2616005)(8676002)(66574015)(86362001)(186003)(5660300002)(6666004)(82960400001)(6486002)(83380400001)(8936002)(6506007)(38100700002)(53546011)(66556008)(6512007)(31696002)(26005)(41300700001)(66946007)(66476007)(478600001)(4326008)(36756003)(107886003)(316002)(2906002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0Z5UVZVKyt1VFNZVVdvVTBMMk8wN25WajcvcG9xd3JqTDBlUnNtcDRvanU5?=
 =?utf-8?B?RVFmMXliZjBmVmd4ZmgyRWpmck93Qkt4WFQzVWFXWXVBMjZwNmVXZXN5WlpE?=
 =?utf-8?B?UHZIdEVYY2Y0Ynk3NmdzcmlqMVBkanlkdlNsSGxwZ2s0YW1QNlZqcFB4RUlY?=
 =?utf-8?B?SDBCdGpKQXppOGFjU3o3UGFBaUpOUThHaHdYd244RTk3dEg2NlpiZVA0dG04?=
 =?utf-8?B?UURERWlvWVRnSHFnNmZoRjg3UGVUdnZpa3FQSkswV1RKUml3ZkFRbjZFMEFD?=
 =?utf-8?B?aFd5ZU41TldVNTQzUkJhNTFSM1h1VjJHcmR3SW5KbldqdDNhMmVnU2w4K1pW?=
 =?utf-8?B?TGhkOXhXK0JVWE5JTWgrVzBNcE5GWXlKQzJPUnV5QjFaenk5dzF2QUhhQTda?=
 =?utf-8?B?M0ZtVzZTakdLOG1VRWlyRXpHZTVCdmlSYkpIc0xaRkZVa0xFV1Zjb1FkN1Zm?=
 =?utf-8?B?VjZDRndYUSs3aExHQ3hKdy84ZHBtSE9rdXVLN2dRdmNHSTV6d0J6aW9HclJ2?=
 =?utf-8?B?ai85bVg4ZFhIazRJUmc5YUZ0bCtBQkQ4a3JMQTZWWXJjNHk1dmRPQ1cvWXhj?=
 =?utf-8?B?elpxN0RqZC96N2w3RG81WG00dW9ESGZ2UG5rK01ieUI2bEY0R2Y5MUNhZ2l3?=
 =?utf-8?B?WWVIdUtJcUlQVWpET0lDYWNmR2gySER1NDR3aDZOUGVWdFpNV3F4UUhOc0Mz?=
 =?utf-8?B?Wi9NcVY2eTZsTm9ZMHI1bzk3N0ltZXJCMmcyT0t2bU5tbmZRUHFYUko5RU5M?=
 =?utf-8?B?blAxc2NQVndwdTdkb0dmWDRsM3RsTFN5MEorK0ZidGJHbVljNmFXVWIreVhE?=
 =?utf-8?B?c0hQSkVZQVNlMUttVE5iemwwTHZrNGo3dHVvTFhobDhTRVBjSFZIaE5IOVhr?=
 =?utf-8?B?QnNwQUcrZTVXZU9uSTZRV0pMOHlJSjZVNXFuTlFiSlJQZ251Uk95RnhVM1dJ?=
 =?utf-8?B?V0o0dFNUeWUyYjZ1VFk4QjR6cnpuVnFhNTduVFIzM3pEamlmZG84dEx0VTFq?=
 =?utf-8?B?U08zd1c3dnRjWFRYVm9lRFhiVmh6SkdFQVJ0RkFLMVM2QzRXU3ZQZys1dU94?=
 =?utf-8?B?SE9wT3FleVZ0a24rT2ROVFRIc0hNb0JZcUtUa1ZoLzJGQS9PY0tNb2trbWR0?=
 =?utf-8?B?MUl1eEljNXV3MFFpSGYzU1J3N2FZWFAvWDJGcFN6cEZsM2FCUHVBYy9GWFdE?=
 =?utf-8?B?dGdiMS9pSnlYeHJoQk9CUGRKQmI2WE9yT1lYa3BiTUV3S2ltRjlkS3A5VmJ0?=
 =?utf-8?B?UVRFbVdvY1lROGJpMTNWU1UraDN3eXJZTVRIakcvbU45ZnZtRkNYRzd1TTdM?=
 =?utf-8?B?enZJalJCQS9zaExuYkd0cXNrSnowbmxVOE1rUjBQVUFBSmI2bW1vV2REZDFH?=
 =?utf-8?B?Y3JGOFpXeHp1QVNtdXBXTHdjK0JoVUhwckY3SmJFOStOUUE5ZlFhTTgweVlX?=
 =?utf-8?B?eWNJcTk5UExTVTZ6NEFnOFdGSUwvNlVyK1dqZFJRdW9wd2JSZXk4WUw4cEpl?=
 =?utf-8?B?WWNCaEVmQXUrb0loZlNKSDV5cnlwNDVHazEwSnc1emVwcVFkQjkwa3hkaUps?=
 =?utf-8?B?U2wrQnBlNGt3NlZRWU5KUTczc3FRSVNiS0pQNjYyNWlzcUEvTGtnemxjdFJS?=
 =?utf-8?B?TGJ0b1o3L2lEeUY5bUNkYm5rMDdNMzdCSjhZM1dyRndwOGFGZjhhMEFRdG9G?=
 =?utf-8?B?aTFmNHNTMjZmdExtekdITmVKcmVHN2ZCQmpOR1V5K0MvOS9IYkhZbTVWcmdD?=
 =?utf-8?B?cGhwbGdYQUhqL3dSM3k5OGk0M2k2eVk5NS84Z2dMWHBxVTZldGpHL1hMUmFi?=
 =?utf-8?B?SEZHa2YzRmFxOG1SYVViTUVwSjBjZmVlb1dtOHBXVEhNdnozWW00TmVid2JC?=
 =?utf-8?B?a1RBU2JsbERzcVBGNzhFK3k3TUtzRkkyZ1pXa2NBNDVVMDZOOEE5UmdXekJr?=
 =?utf-8?B?QXpTUWU2NXFLVUNUZFltUjBkUVFCNW4yNDdIb3lqMGZXMUpTTFI4SVlvYWpH?=
 =?utf-8?B?NW1FMDBOYmtiejJYVU5rQzVMckxrbEg2V1FtRjZUUTRuVEZKZTBEanAvYmFT?=
 =?utf-8?B?VlBOR1JEZXpjSlhqVWQrV2lQZmZVbEY1ME1rZnZ3QzdUQklaVHJFSnJ6YlRl?=
 =?utf-8?B?bHRyTUNVSTJVN3ZNaldEYzB4TmpTUHk1ZXdyVVhxZ1dabExpRkxOM1piNFUz?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 604bac49-16da-415b-e88e-08da97d8c9d3
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 11:44:18.5579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /AmpE9PwS2W4hAKSg4oPRWdHoI+TtmWtzKn2p9Wc1jRvNnvTV+7qrbJnrCd0ks3SOMoxKBEB9ZySeNN+W03CIwq+8jBvD2ro9BOUZU4Llfw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7406
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Do not re-activate PSR if
 there was a PSR aux error
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
Cc: Charlton Lin <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks good to me.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/16/22 2:08 PM, Jouni Högander wrote:
> If there is a PSR aux error sink is marked as not reliable
> and PSR is permantently disabled.
> 
> Current code is activating PSR again even there was PSR aux error.
> Fix this by skipping intel_psr_activate when PSR aux error is
> detected.
> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> 
> Reported-by: Charlton Lin <charlton.lin@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9def8d9fade6..42390203ad19 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2153,8 +2153,10 @@ static void intel_psr_work(struct work_struct *work)
>   	if (!intel_dp->psr.enabled)
>   		goto unlock;
>   
> -	if (READ_ONCE(intel_dp->psr.irq_aux_error))
> +	if (READ_ONCE(intel_dp->psr.irq_aux_error)) {
>   		intel_psr_handle_irq(intel_dp);
> +		goto unlock;
> +	}
>   
>   	/*
>   	 * We have to make sure PSR is ready for re-enable
