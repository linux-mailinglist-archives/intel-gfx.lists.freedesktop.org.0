Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A3F765312
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 14:00:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0509B10E3FF;
	Thu, 27 Jul 2023 12:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3CD89262
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 12:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690459252; x=1721995252;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=epkNfgZVIBk3/BHAnoGRbr/6219W1kygfGp36rOScvk=;
 b=b9XGU8/D3IBaQmtWme5TtyRmXDb8q6vk6J9azpUa4A2z5vhVoTtD0KTb
 2GkeoKCKW22a2IHXbXYKHdgPId0Gnnud7mZjPd7454yYMN5vN7gUhbAJA
 xIF6JPkA+f3xTlC0kVR1Xle2ybLihOAqZiVCjQdejme8MJ4c4XP2pFvxh
 4TnXScrb9ilW2AiGCx2DNKPpsnvczHKS4JEzNgC8/7xLL1IHMUT7osthF
 5uVRlbkYUnALH6m7yGePrGfODf/Fig7za9COuz3tT5zcMB7z8uxvI6eO8
 BS6BEWJwp1RD4eg6Eug8GpI7kLAv3tXdrXqhqyGk2mcWLMHzULS65s3vm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="432085975"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="432085975"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 05:00:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="796938103"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="796938103"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jul 2023 05:00:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 05:00:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 05:00:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 05:00:51 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 27 Jul 2023 05:00:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkG9LjhJa+5uJZsJD6cWxcfoRhzil2v2S4n19n+NdKwpu2NUTBVn4PzTpU12RMFbCfnGc0ohRMU+KAt/l0KHHXua1VKTzN7r5rWf7DXjwQvXUtZmyI20rXCSF9TQJuTJy2lyZQyyBt1dvgi0bFCouchkBjiMoDOGU6JRn0zRN+VB/MXiZYXIoelnewf12bl+Tjp4wzV0nySwUWdnKJazEyKLNTOV/AW2AagwTreKwlBF/7QKXDehkyFg8Hm4F+2K2sQIRALxH1dVW9SxdvhKD68hBKlUcL453+O8IevCmhzfNCluoo8q7Ubic4ccbW94Ko3SWCV84onnb747RTitRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5+AhhMUevDXhtbNlBP0uqwlF5nvRRDimYOrSQ+hf98=;
 b=DBsT3baXPHz1xTeaGAugMOqZ8N39rYAksAU0T9Mr+L5N2EUcCeN/jYd07AQiTA4ywluqHK4vZ39wugM7pHBPmo0Pr5CH/7YzoNfDPzDrQl6+ZNbRFpFyM0gzfR79mRuCeMbKCxDO3FcqzeuIlBOXUdcNKxHKD7r6Ywonz+3Ns9PC44yOWrOM4DIEdm3a/Ji8OtT/j61W+UkgzW65aqr8ZgkmbcxzK2Y1pVLO98O4e7hwWTQz9fKtcfTYtxMgaWYJciYaEbKDVkEIjjfopphc21/m51IiLvyJVOUdBtYsWPM52hoTy4IicbcJz2qCWG/5aOiSZDmpzXkuEB8p57+8nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB5794.namprd11.prod.outlook.com (2603:10b6:510:131::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 12:00:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 12:00:48 +0000
Message-ID: <e908acf8-7d93-81b3-4d79-023803d31c00@intel.com>
Date: Thu, 27 Jul 2023 17:30:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
 <20230725083002.3779717-2-chaitanya.kumar.borah@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230725083002.3779717-2-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB5794:EE_
X-MS-Office365-Filtering-Correlation-Id: 9992f44f-ae18-42a6-f36e-08db8e991d97
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MvMJpf589tMK2nlAOlJTD7SjTJKbc2GeeyO6/fz5YwCOg4IOS6ynCPWl+Hw2qDsGPOTfM+JzlFZ1NM24lUn1CIVqMEov8/rug3lUabJyn4Tj0uUEoIADu5I4lvxGNPnt4Darr6mfgpdTvMJMlx2bOvZvKd7vgy2KIaNByXxpBhZ4uHmvn4nFviIRliV92lr10eGsE7BRQMqIHfZ5VbUn8JIL6QY5vI4/AMR9fM5WbGNt9Medbt/DV6xKtbGKwgGszFayNT9+SRrXaBYdS4vpMuR9PG9Er7MpJoyR9BABo7b4Z01OKQ3+PtKQIlDrujj0i+8YqZGTzCTHLDv3/a70k7BXPuDYa/j1pZzNNz5mJxMeH+zk6BriNFSRO6Puq8aUqavkeL2gkW0FsjT4Um5StNIOJOK5bK4G6HohYylSO4/df35fBItNYf90Xicx0gtUoJvSIAqrKLvXGd4GtGG0t+wQyyWT0lfO+rQ/GVLHRnutfSJlC8hVpa/rlF8/7YqO8xiQFVd5KL3nQt5fnRG078UY1Iya9AdOUs1fos1phNJyQicc+1mWCSaY2dn6+A5RWwPy/J6dunbiFHhogTphqGCPAJ6s3LcNpQTlEzfM4hhYdXoGrZM+UZIGtMTgMiH3AySa2U5GeSlMDpKjVetfNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(376002)(396003)(39860400002)(136003)(451199021)(31686004)(6512007)(6486002)(6666004)(478600001)(83380400001)(31696002)(86362001)(36756003)(2906002)(66556008)(2616005)(53546011)(66476007)(6506007)(26005)(55236004)(186003)(66946007)(82960400001)(38100700002)(316002)(41300700001)(8936002)(5660300002)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NU9palo2ZDZweHZkWUZ2THBacG9uanUvV2Voc2t0VnQwYS9DRDNwOFM5LzNs?=
 =?utf-8?B?V3Y0MEowTi9vejRqTG9YellCUEpqUHNlSHhEbXdRTzI5RG1lRTkzTytlUUtV?=
 =?utf-8?B?MTl4dUtGcS9WQjJMNUp5WHZ5UEw4eTV2ZjBsTUZUSi9SSUMweDEvVFRLUEVT?=
 =?utf-8?B?eldhTU4vTk42NWE4MEF4SDlzS2p2NS9MamlVL3lIRFNKQkdQOXNmTW1rRnJz?=
 =?utf-8?B?NzFYUEkyZldHMWQvVmQ0bjdsam5pTS9PSHoyUnQvaThwdDBqZVZmcThwVnE1?=
 =?utf-8?B?bk13NXdpdTRDcGdOUk1iRUpUTEdOMzNoRjlCV3pXbk9FVmpSUWY4em9JMXhG?=
 =?utf-8?B?Q3o1V1RiR2Q2eXNCc3VRaWVvTmU2VE9jSjMySlZGZUJjRlJLNXdmRDB3OEJR?=
 =?utf-8?B?aXRoR3RQN0VsWGJpTzRrMlhSOUFtbG82ZHlLbXRIcXpXT0oxK21tMzZCUUVa?=
 =?utf-8?B?aGhoNC9Ca2gwNmFxV0ZWdTVTcjBiQlgzRllFcFplTTBDRDNpVWFOc3VwVSs3?=
 =?utf-8?B?SVA0QlpBUitVd21zQWNUSlpZbk9HSmxLb1J3d3lPSkRIU3Fob3NkVFYwVXdj?=
 =?utf-8?B?ZU1FZXF0WjUraHlZbWR3WHFYSGgzU0U0UzlHMmRqaGFydGNEbElwdXJoNmNl?=
 =?utf-8?B?SU5DdkN4RmhtbFE3ekJZRk1adEFkQ0RoQUdVUUJtMEVGWmI1L3FlK05Yd1NQ?=
 =?utf-8?B?ODg5ZmMzNWNvWUtVeVJ4L29mWXVBRDdVamNOSzMrYnBwc1h6TnVvaDVVaDRU?=
 =?utf-8?B?TWFUMGF2REVLU3hKZUQ2T2haYndHYk5ZdlFPTHhTbnU0LzgrNGJTUG5HN29q?=
 =?utf-8?B?VEVNUjBPMjVXa0doaElxWkhaUEdTYWplWWJsT3VJN3hORVR2UVU3TmIvTkdi?=
 =?utf-8?B?cDg4K1diaUZSYTdwbFpSQ2dGS1ZGTWIyUjdCeHd2T1p1bHRCVUplT1B5N1Iv?=
 =?utf-8?B?QUloZ0t3WUFVSmM2WjZHUGFKRjVxSkhBL3ZqdTVyZG5SdE9zOWxObEhhZ0U5?=
 =?utf-8?B?eTdkSlFjU0dFZUZYZWRBNHFWL05jRG0vWmR2bUdTNG1ZME5tNTNIR1JRaEJs?=
 =?utf-8?B?ZkJjc1dzdmswVUhZYkVLS2p4QllsZ3JicGtrTUxzakhUU2k3STQ3emIwY0h2?=
 =?utf-8?B?YUJ2K1FWOHM2VUR4SUVqazJGZzgrMDBEbHZoQVY3elczc21FMGkvbzk5dlZI?=
 =?utf-8?B?U09XN0FyQTdCc2FOcEhGa21UbzdFZFIybDduYmVCWE9ZbFB4c0pGRU5jOStx?=
 =?utf-8?B?YW1jM1locDc3eEJqMEhSaFlkVEVUQ0c0Sk9pN2hZaGh0NStxd2RCM2dXdms1?=
 =?utf-8?B?M3dhNE04dnhUVk0rSHVuYk9WSld1QlU1V0k2aTZxaVFaWU5ZUHVlWm0vbnlw?=
 =?utf-8?B?Z0kyS0x4bmsxZ3czeWVBaGpLQkR6SWdFMHVZc2VrWW1FdjVPWnJkekh1M25U?=
 =?utf-8?B?bS9SSkxxVHF2SG9CWDN3WlZiTnh1THlLUHpJZjhhcSs3K2VkcnhFdFp4Tzl2?=
 =?utf-8?B?RklFL050cllKSGl5K1M5SmVMaFc2TERLUHd6UGx1VXR5V3h6S2NjL08rbCtp?=
 =?utf-8?B?V1V1c1hhT280TmNFUmtEQ0REMzNqUmVPWmZqUmxVRkZuSnhnSyt5bWpKYXJa?=
 =?utf-8?B?VzRTdm0wWk1DYkhNQUV5NzZRZ3A3Q08yeUFCcnlIWnRRNHh1MjEzdmI2azht?=
 =?utf-8?B?WnZaWEw5bkRpb2p3ZEl3TERKMDVVU0dSemUyMHI1MXpOa1I3R3JuTkRWdzll?=
 =?utf-8?B?QzdyY0NJSzl5S1lmSkp4T3dXVnB0M25YdmxyaWNVQ3c4dlNSa09GRWMwVzB1?=
 =?utf-8?B?Yml4NllEQWgyS1BUWEFCRGxRVzJKVEFJWmtZRmJONmlIRzRQcUtwQkxETTcw?=
 =?utf-8?B?S0hNRHU4SFgxMFFhMjNTVVhEbzBZdFZjT3NmRDdlTFB2VHk1aWR2c28ydTVU?=
 =?utf-8?B?VkQvemdoSncrMUE3WEFQaTZFVGZRQlBkbmNwakZ6MlBKaXNFdkljNFlZdjBK?=
 =?utf-8?B?TjA4ZmFNOXVIdWVJemdFdmF6RkRzbnlTZGZ3OVlQcWtxYm5OdVVMSDZ2K0ZJ?=
 =?utf-8?B?SzVsSWtISUx2REQ0MDBFUFY0NGFSOTVRanNnNXVBb3llaFFSaGZCYkpUUWdO?=
 =?utf-8?B?NUpIRTJaYWswWDdWUWVKOTBoYjVCbmM4cEZha3ZjVVFLRmswT1l0MXZSUDYx?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9992f44f-ae18-42a6-f36e-08db8e991d97
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 12:00:48.4422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LOlKtizxrxzet49ocOlJgEevw1Q55x+S/bB17mqbjkFNDeEl//cSQucyunqBMolfhT/xKOJEhOP+UshyMFbVtUh8LvpEWWQkEgkebMp80RE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5794
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/color: Upscale degamma
 values for MTL
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


On 7/25/2023 2:00 PM, Chaitanya Kumar Borah wrote:
> MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
> 16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
> bit precision. Until a new uapi comes along to support higher bitdepth,
> upscale the values sent from userland to 24 bit before writing into the
> HW to continue supporting degamma on MTL.
>
> Add helper function to upscale or downscale lut values. Parameters
> 'to' and 'from' needs to be less than 32. This should be sufficient
> as currently there are no lut values exceeding 32 bit.
>
> v2: (Jani)
>      - Reuse glk_load_degamma_lut()
>      - Create a helper function for upscaling values
>
> v3: Fix multi line comment style (Uma)
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 20 +++++++++++++++++++-
>   1 file changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 8966e6560516..32182cdff928 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1453,6 +1453,17 @@ static int glk_degamma_lut_size(struct drm_i915_private *i915)
>   		return 35;
>   }
>   
> +/*
> + * change_lut_val_precision: helper function to upscale or downscale lut values.
> + * Parameters 'to' and 'from' needs to be less than 32. This should be sufficient
> + * as currently there are no lut values exceeding 32 bit.
> + */
> +

Superfluous line here.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +static u32 change_lut_val_precision(u32 lut_val, int to, int from)
> +{
> +	return mul_u32_u32(lut_val, (1 << to)) / (1 << from);
> +}
> +
>   static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>   				 const struct drm_property_blob *blob)
>   {
> @@ -1487,8 +1498,15 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>   		 * ToDo: Extend to max 7.0. Enable 32 bit input value
>   		 * as compared to just 16 to achieve this.
>   		 */
> +		u32 lut_val;
> +
> +		if (DISPLAY_VER(i915) >= 14)
> +			lut_val = change_lut_val_precision(lut[i].green, 24, 16);
> +		else
> +			lut_val = lut[i].green;
> +
>   		ilk_lut_write(crtc_state, PRE_CSC_GAMC_DATA(pipe),
> -			      lut[i].green);
> +			      lut_val);
>   	}
>   
>   	/* Clamp values > 1.0. */
