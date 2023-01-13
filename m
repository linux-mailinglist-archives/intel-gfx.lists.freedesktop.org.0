Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 860C366944B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 11:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674CC10E9E1;
	Fri, 13 Jan 2023 10:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11F610E9E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Jan 2023 10:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673606112; x=1705142112;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qiOa0qLeZTFkKGiWWgno01h74H6CCYdTflzs4s8VyX8=;
 b=J48L8jDglu9DQ4ee+b6//lumVQOiXeN3l9c0zB0AL0n77FWSfO+Xiicc
 Ib3FFS7JjCxc4aBilaRjdrGKXuyq61bVD3Xev3dy9S6cqmF2xZ2FYZsWP
 D1HW8P1Ov5yEeDQTal5WmPhZgxKx6DKVLwGhpxFgbFzzw6PqHgmPgu8zc
 LQyOWBGsFWBL7+O7Ncc0ZN1+yIgH8zle2huY20ASMWJ1nz0K6Sm4SuAbD
 reHXX5rb9dScbN2fPnHDDcitqlDoKW6OyiRYTxDZACsQcGdqtN/Qy8e80
 vS7TaoB4Rw7OS0O0OBSQNmJ2FAXTi1aJYrYz/7G1gOnvjDaM+xzQs027V g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="304344951"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="304344951"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 02:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="832032011"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="832032011"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2023 02:35:11 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 02:35:10 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 13 Jan 2023 02:35:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 13 Jan 2023 02:35:10 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 13 Jan 2023 02:35:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8VBFcN1TvtwcOrStruuxNWyNHTBkSPObMHQfc3FQvwksagVRxHH8mgj1yeYVjlt3/Wy+MtnYWMVvTyLPcse3lCCsCaoGlvgLAbvhyhCtsXr0Cbrir9pzgNQ9BkDf2OJA/tJJEkTC7yH7rasM/9t1O1JHvM9m4qLHpko6PHJVBgo1EnNnkKoW4YbidCz3r8oj1fx7pmd/QgRLj9Ho4bgVbGgsndvGWdO21JVrcx8Si2bEDb0IHKhSOHXFAuuKaPzYEyhBc2q9PYxFsNyCFIofHbt1427Vs5nhj5p90E8Xvq642B4xR2z1Kp2viGY/YnkP8AzuaVl57bpJk3v4GexLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVUNVbOsFmqAtF4HYiYI+oixE5NUelmy/kualxJseEc=;
 b=nY1HJQhRSNBeE7YAofx7c2i8W1rjkw4cWuNNArLi+zRJmPOHvKk5+oISfU8NFB0bBEU6jj7rk/7huTvqG5FpLCY8A6546f1zupGFPfpJqU548FatcCwQgEhudZPwYobRU0tT24miv6rzLuc9LeKKEXWWic2FR9+7dyvx3tjujLfNK1BoeXujR3jwnsk5vJTmm1JvoxmJPQscZ0IbqoY24Jpa0gvsS8/BUFk6kzqVmhHKoFD+Zl2Qy2heUVffFOpQ7VMW8nGbhuCh/OkuJD6NxYB/VsquiPlzZJ5YnLI1uskccOrcBCJZOWa/jCgKXSbqO2OEvixNgat4WuP02e110w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6034.namprd11.prod.outlook.com (2603:10b6:208:375::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Fri, 13 Jan
 2023 10:35:03 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::3998:4e46:9501:2786%7]) with mapi id 15.20.5986.018; Fri, 13 Jan 2023
 10:35:03 +0000
Message-ID: <3471ee3d-df91-f81b-2196-863414c1ebaf@intel.com>
Date: Fri, 13 Jan 2023 16:04:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221223185719.56565-1-luciano.coelho@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221223185719.56565-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0070.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6034:EE_
X-MS-Office365-Filtering-Correlation-Id: 51227501-6b88-4f79-7d6c-08daf551d435
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0XPivpehDDQBEOXzjkain7YiUOEjHGtMYztFfR8xHa95tv0dHvgO5/byavaHrMYkwbf+ggesmf1NSMnk66cFfaFbSJqYxzmWZMoNxm1xQzF9bKz6scFCIcWo32oSHZ6BauGUUtzMKVbMn3zesCbAJnB+2Pa4KLvUa++3IoMwYLeN2wDcfzjNq9DgIy+OkBKuJeo0IeyKUsfdXAUUxqnAQ5V4uh+Vb76xUOw/YQhQId18SZrod86jJpxjvOMsm1uxL93Lyx5mhaPekfzKwqhpMgStk5yV++DmD2Pfw2BeU7s7Yn31ZRBmBbTl2MtmrZ/EDfDhAuKSVfZCXYbruEdYdEWisqZ6VkGcj0HyD8gxhlXR8b0fAedtcSb8SVgd20fx2A9eoUASF2eVL1GdvEBd1GyUHkWjizHKpFJX1R7CFjGIrEh3wXaEmilWgycjD8VyOqtBGwfK+A39Sdqm1m/IHYljjsUUDwWQIuGcxfjzEo/GjaxjtaPJ0nUBPROwij00w/lw6jl6h2xkLpkzKx+O0M/J2L8KJLj4wb/ekGN/gh7cneInhMnnreMWs6MHVFHTUKRhH3WvU2CcIh/wgvsbPUnk8VZrukvZJ/K6eG+1+7jGOHc0hwEHd5UemDpu3+UPJldQ+fl7itxe10tZCHoG7JbabwOQCYt8MQ3Tn728/x1VYvIRPtr926Dlk57QyOP1x+Gje0tA8nsy48tfiwD+5A/CNSmUnegRwRaYoGwj/gc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(39860400002)(396003)(376002)(451199015)(6512007)(31686004)(186003)(6486002)(26005)(478600001)(53546011)(66556008)(66476007)(316002)(55236004)(66946007)(6666004)(2616005)(6506007)(4326008)(8676002)(38100700002)(8936002)(5660300002)(83380400001)(41300700001)(31696002)(82960400001)(86362001)(36756003)(2906002)(15650500001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a3cyRXFMZkhjdUtsem1JdHF6djZoZlJnb1VhNUdlT3VoTDFmOXRDYld5MHJN?=
 =?utf-8?B?Uy9ZK3FjV3pRaTNlNXRwVG9YUTFSM3lkZnZnU1NOVFUyS1cwbGQ5d3NoVzBJ?=
 =?utf-8?B?Z2pvdWRwa21WVDhtM1ROUDkwRmpPcUkyQmpGRUlpRmxkd1NwVkp4NGpuUEdj?=
 =?utf-8?B?RmZ1dk5NZGhsc0dydTBwNDRPOTlSNys2RVRlaDMwYUQxLzgxK0NKQjhzRW5J?=
 =?utf-8?B?YkJnRVBpazBzQU5LUkIvZldZd25xUHVZckJjci9nNzNJS3M3MXRkVGFzT0FI?=
 =?utf-8?B?VjBtMDZtaklpRGZtQkYwa1lmN0daOTdsOE5CNnhKcnF4QTlIZ1A0K2x0dTdk?=
 =?utf-8?B?aFMxR3N2UEtwQVNYakJPZHB2NmQwQ1RKWkZ4U1Q2eDBVSmN3QTFjTk43djF5?=
 =?utf-8?B?aGNzR3FmZktwRFM3SSttR0Q4cGV6VWR3QnpBNEJGWWM4bVZMdVQ0N3lydmZN?=
 =?utf-8?B?K3ZubUo3Z1lOMFNqYjNTTXU4RGFiUnpZWlB2elZZK1hNcHpDdVRmQ0F2NFFa?=
 =?utf-8?B?b0xQd092SHZ0QWI4allFcDk4aHRGelFDa211VnFFZTdzV0gvcnpiTmRicWQ4?=
 =?utf-8?B?emlKbGpXWGkrRmFSM3h5KzhNdWlnb0c1d0hjRWIzRzI2YmJKcjhhd2dBeFJM?=
 =?utf-8?B?TC90cVEvdnd5Sjl1NjRsWmJQQlhzOEJiS2ZhR2dYTSs2TVVEQkhhYnI2ZTZj?=
 =?utf-8?B?TldSaElnYUpCNnFTbytRZkUvSUVqZ3VFV2RiU3hicGRHMHBwbDZaNlZEZE4v?=
 =?utf-8?B?UC9GQmxjaERFZ1g4TVpIanAvU2xqM0xqRVRRYk1seUorMTdyTzVETDF1RG93?=
 =?utf-8?B?YkszY1BPcDRRN3crdlluY3hwTHJxc0s0dWlKeVJTampCdGVlMWhoMk94MnNk?=
 =?utf-8?B?d3lvRVFNajZkbEMwYm1VT0JoMmhMUWdOQUtvNXdPV2w4RE1sOWxwQk4xanN2?=
 =?utf-8?B?WExjbWh4SXVrN2tDK2gxblRlcFFleDdNQ1RHeEdUM1VGVWtMSTc2cWlRckl4?=
 =?utf-8?B?N3lqeDI0bnphbFRzbUxWV0JIaDNEWmpnUDRkNlRqcFJEK3NNTzAyK0cwWkdQ?=
 =?utf-8?B?TUxDckg2dlZ4N1o4c1VJblFobEgza0lKL25LTWZySVU2aHhuTEpDNUZCV1Ez?=
 =?utf-8?B?QWF4ODE5c2JONjF1V3lyb1NUUU10M3J5cUtIOExxTm1aU1RrL054dHRydjV6?=
 =?utf-8?B?ZFJYYlRXRmYrWVB4K3hsbDJHcVc4NXMrbUNWN3ptVkl5RHh3T1JnemtyK3N1?=
 =?utf-8?B?OE1vWmVOZURkRXJEek05bHRSdFVreGNMaVA2azE1TXpHTnZtUm1tc3FBRzZZ?=
 =?utf-8?B?U2dWcXVlbjNyRzBmaFl0TFpHYlY2Vk51a0FrK09ONkpCMjNJMndjTUZVYnVZ?=
 =?utf-8?B?czJ0am4zdlFNQmFYY29UdGlmR3lTUXlsdjFla0xCR0hOa1Z3TVJjRGhDL1Z3?=
 =?utf-8?B?RXY1MmJSclEyV2w4c09Qa0k5SGgraHd5S3lpZ0kvMHI2ZTl6NW43YmZTdGtv?=
 =?utf-8?B?VW1JVlVxNWFCRlQyai9vVjJoUklDMHY1K20vUlBRZUwvZlQzVis4cC90WjF0?=
 =?utf-8?B?WnJobW1uK05ZR3BrMElzYXBncHlENzkwbEl4cUdHY25oU2dUSWNDUjFuTmgy?=
 =?utf-8?B?NGlKMFVBRXZaR0lWQ1dsR3BKWTVocTVLS1kyclJOS2ZsR0tIaHg0UFlBYzN0?=
 =?utf-8?B?VllWc01wVDF5dENKVU5KRVNxQ2dEREk4dVhiaE9NT09QeHByU245dk9HOU5K?=
 =?utf-8?B?QUFPNnAwWDU2bHhYdEgzSEs3WDhpNWx4eC9HcWtWUGpZV1U2MEtMUE5FS3hR?=
 =?utf-8?B?YS9JaXY5b0ZIT1pXNjhIeUZyYWxLclo3NUtrWDJpT1FySnFQK2FsTVBGUmlF?=
 =?utf-8?B?a2l2dW9sT05kU3pFV3RSWDl1cFl6NEJCMFFCbTd0TjFJRmJJcm9ha0U5Y0J6?=
 =?utf-8?B?TDVmSXQwSy9kdzdGSlUycnIzRmJ6TGM4dlJDTGl2TklOL290bnlrWXYydk9U?=
 =?utf-8?B?NG01WTdLZVdCbmFNdFZTQ0hnNHVEc3ZwOHhKWTV1RWR3ckx2cVhKS3VmMVFo?=
 =?utf-8?B?aUx5Wmw2RVBMVmVQRWpRcUpzbFZqaDFKZVB1MDMxd29sbXVwUW1iNmdBVy9o?=
 =?utf-8?B?a0hIdUlJR3lPUlVXZXRRa25ybGh5eDZvSTdwczl5UlBuNUx5WmhxUWtOUDJk?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51227501-6b88-4f79-7d6c-08daf551d435
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2023 10:35:03.1538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eyeALtEySVFHxfwMs0/IjO2wOin7zPA7ZZ9bprB5pcTnE28406Gb7hvzQ3yh93aU8zd+XiIAXijKhS94L1E4ZuByAd6wV35RBtnfcJD4FVA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: update src and dst scaler limits
 for display ver 12 and 13
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

Hi Luca,

Patch looks good to me. Please add 'Bspec:50441' in commit message for 
reference.

Also, you might need to re-submit for test, as last time the other 
scaler changes were not merged, and CI build had failed.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Thanks & Regards,

Ankit


On 12/24/2022 12:27 AM, Luca Coelho wrote:
> The bspec has been updated and now display versions 12 and 13 support
> source width up to 5120 pixels, source height up to 8192 lines,
> destination width up to 8192 and destination height up to 8192.
>
> Update the code accordingly.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 11 ++++++++++-
>   1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 01e881293612..473d53610b92 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -87,6 +87,10 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
>   #define ICL_MAX_SRC_H 4096
>   #define ICL_MAX_DST_W 5120
>   #define ICL_MAX_DST_H 4096
> +#define TGL_MAX_SRC_W 5120
> +#define TGL_MAX_SRC_H 8192
> +#define TGL_MAX_DST_W 8192
> +#define TGL_MAX_DST_H 8192
>   #define MTL_MAX_SRC_W 4096
>   #define MTL_MAX_SRC_H 8192
>   #define MTL_MAX_DST_W 8192
> @@ -173,11 +177,16 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   		max_src_h = SKL_MAX_SRC_H;
>   		max_dst_w = SKL_MAX_DST_W;
>   		max_dst_h = SKL_MAX_DST_H;
> -	} else if (DISPLAY_VER(dev_priv) < 14) {
> +	} else if (DISPLAY_VER(dev_priv) < 12) {
>   		max_src_w = ICL_MAX_SRC_W;
>   		max_src_h = ICL_MAX_SRC_H;
>   		max_dst_w = ICL_MAX_DST_W;
>   		max_dst_h = ICL_MAX_DST_H;
> +	} else if (DISPLAY_VER(dev_priv) < 14) {
> +		max_src_w = TGL_MAX_SRC_W;
> +		max_src_h = TGL_MAX_SRC_H;
> +		max_dst_w = TGL_MAX_DST_W;
> +		max_dst_h = TGL_MAX_DST_H;
>   	} else {
>   		max_src_w = MTL_MAX_SRC_W;
>   		max_src_h = MTL_MAX_SRC_H;
