Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C8A74CCAE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 08:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A39A910E12C;
	Mon, 10 Jul 2023 06:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 434A710E0FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 06:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688969474; x=1720505474;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ww1tjLJBKZZZYaG1KDVYy0zZQYhUq7kb7vvBj21pXyo=;
 b=b1p2V4KIcaRU8cMxS9YVYJGoKWHwCFYMrB+r3k5/nU8MN+mcT0jk1CzE
 vWocLA2uOPbriH7D2vUS3lEO0HfjMue5ce1/PsGa9nxXbsgh4IHo9mht2
 Cf+5E4mso36U9JeLsesz4h3U4XN8Aqw25OuI8iuXU0a2PbukbdUZPJKzd
 u4iLjxw37hG8jvB97jk9DMiVd2NJRDwBZjCjTda2jf9aOKnkWYt6crcQt
 edwmFeFjWMP3+gYrVcGo9b843jdNSNYdCmJQs/9A3DEbltdqG/MaLDEiT
 OatGqlP4OX9mKluFz8zbM39lM/GDJxD8r3S62hM6stOG6bP0eXzTOllV1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="343855068"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343855068"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2023 23:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10766"; a="750226698"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="750226698"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 09 Jul 2023 23:11:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 9 Jul 2023 23:11:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 9 Jul 2023 23:11:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 9 Jul 2023 23:11:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 9 Jul 2023 23:11:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OH4AVtj2ky9FZlaUru927wlGc7GjjFGfy+BDWB+Cbd0CJruDsNqDx8GKngQJ4CWYuuygUEpjRL+TR5nDaP+rrctiuBTvXgLucqtSxKX4E1gRIVQ92KuR0GbNAojtVvm4dBapDZu4DUvLIaby6hccAwWS0r3u1kerE3sU+/UrcGV8FY2IH9mmoV5uMRn3XkQfQPDaBFxbyrX5HJYaD6UPwfhc6L7grqYThVT9T/jWnT2hI6GRxiDs+aqz+12jTWUrX1eSMtMKbYtjAxnB5V2isULOcly3WvmlPYv7e6DN2AHqEy5AZ+yozLY3d4jHAZdtHVY0spqNAQCVYhv6+djI3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bNYRQXLA0I1W2hL/oM2M1HXW/sDveP20tslkyd+3zFo=;
 b=oXU5/pZBQdrwYR59wjcS4G6Kpgalvy5zCfIOilUyD/dOY1di6RLC3BkCx62hZILM1X+Xj7nPwN67edr2R2xY12+DqHYvlW1VlvZWo1GdP0R5fKi+//ZCOKyFx5icWNT72mh2PnTJOyQ/jiTzINO0VKnvJoboCL5ZHFq0MVw5pPxcbC69X70JoZsdrh1OKqxynZbEDtnST7MHGcSsRNbVYo0wN2YqRK/cNknHRlV4bNRYXVgPOhwtqJrmb8v8FfsiofQgA5TJ4KCby0Vf1NJ0/ayHnSDFoPhRfE75AexXxmRXSm1NPxrwj/wH7oPN+yXug9jyzGoUxBgXMV78H+5djQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6480.namprd11.prod.outlook.com (2603:10b6:8:8d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Mon, 10 Jul
 2023 06:11:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::60a7:9e5c:928:90c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::60a7:9e5c:928:90c%3]) with mapi id 15.20.6565.026; Mon, 10 Jul 2023
 06:11:08 +0000
Message-ID: <2fd9d1e1-0b0b-623b-3b9e-2ba595c07738@intel.com>
Date: Mon, 10 Jul 2023 11:40:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230704131758.14024-1-stanislav.lisovskiy@intel.com>
 <20230704131758.14024-2-stanislav.lisovskiy@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230704131758.14024-2-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0013.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6480:EE_
X-MS-Office365-Filtering-Correlation-Id: cf23a6ee-141b-41de-f125-08db810c7339
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jXbXAsT/Eo+PU3KSXWfM8Jbnk+c8iyfJUyyGf+DWGwhUrYphXlJBGrHMaLMljOkNSB5yVB4Jp3gDUO/ZdD8pIvzcoIfYNlAaNd0IVuOzKumaZn3svP7nOwNZpQr4DUQWjf2h/RAkS/frqNJg908sgFJnNh3EKrygweRMbUOJBETB7U3kvAAt30dvf3FllKiNDdtY2QkibrZ/uHaxc+BXNPbQIx570nFM2yJ+NgqzTYOhDoc1kYs4kKmz6gAQLbqYWIFoH4Wh+z4WUyDfNkLCUZrmRS/ZiWrjt2be01uHnb6JM+lc7HQMDb+j5vRYRs/5MBv07R15UkYeyeh9ns7W9G7t8vn5ZFW4JQUqvX3EbxdJrgwWkOCrdAdM5THYTfijKPbcAyGapeMGmtW7kGyaoIXGxRjgFY53RjPIK+t81sdbTO16VbDTkC3hCTf2vhZafawOihf6oLnm1fRXFkSUI1uLovu+Vt5P8NSsBrn1uCCgAV5w+Jdep7xwiYGO6KIzNpcDoUeAfU0haCGOXOiAq2s3mxu/QYd/K2DYhNkEaBDwb/R1KBrsjv3D3naKWH9wSiTTN+VBh0cTrhlS4EnhB8qpMN95XcFnw0ILf5PZ095vyIV9TQYEhTuOASyTkmTTC48yTIyY2EowGIYLX3zoJg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(376002)(346002)(396003)(451199021)(31686004)(6486002)(478600001)(6666004)(83380400001)(36756003)(31696002)(86362001)(2616005)(2906002)(66946007)(186003)(55236004)(6506007)(26005)(53546011)(107886003)(6512007)(38100700002)(82960400001)(8676002)(4326008)(316002)(66556008)(66476007)(41300700001)(5660300002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGtEY3F2dmxhR3RaSHJINHFXZUFXYmp6NlE2aVBRRjRZVkJlc3JZOFR6UmxZ?=
 =?utf-8?B?MXptQTFNNUFRRTA0a0lnMG0vWUF2Y0FPS3VGbFFzdjlSOE5iREZvTklMdmNm?=
 =?utf-8?B?OGJJbWRSZE1QWWZSU29jcWIwb2Y4aEk0cEZNc1A0bkdLWnU5dVRBN0FrLytj?=
 =?utf-8?B?VUJPUnlPbHBBbSt3NmpNWXdvRTFOdVpKTWNwSzZFL0ZHcWNwOE83TU9WVFdC?=
 =?utf-8?B?Y1JaeElNWGFsSTdYYnI0ZVZ6UWR3d1dpbVZiY2hiYTF3MUd3V0pTTVl5Vnpt?=
 =?utf-8?B?Q0JaQ3lURkhSNFpzc24rN04rUkpTTENMNHBRZ0QrQ21jcnRvS1laeVc5SGx0?=
 =?utf-8?B?T0M1UnZCYkRRQVh1N29GaElCampTRlkveTNycVRwMCtnOXhZQWMzMjZhYktz?=
 =?utf-8?B?TjIva04wR3hCb3ZYVkcvemJrSDFtR0VNY0JQU2xsb05XZlU5Q0Iyb0dTbTJU?=
 =?utf-8?B?dldwaVl2Q2J3Wlo5VGtmOHJFK0MzbCtSb254NlgrU0lKeTBtRkhuZ1BwU09K?=
 =?utf-8?B?cThqRHU2VTdERzVDUnJRYVVpWDlvOUs3UnN4K0UwMGdDeEphcWpTemc4UXE1?=
 =?utf-8?B?aGp3S2t4YUpNRm52K29INzhkdDNLWDlFU0ZPQ0J0NU9EL3VFNTFtRUVJN080?=
 =?utf-8?B?TmVMQkRSSkoyNXV4TGQ3bjFwVjN3cGw2WkpNaS9Fak5hd1hQdEtvT2lIRWRQ?=
 =?utf-8?B?aFNDL1UzOTN2OVdESUx4Sm4weGVzMUxJNFMxS3lRcm9XdjlVUURpaElmbmhm?=
 =?utf-8?B?dEdQazJtenVFd0xHbFFSUGdnTmU4ZTAwb2tqSWxIK2JueUdRZEhVTFg0M0c3?=
 =?utf-8?B?TUNtQnNtb01uS0ZuSWFEZ1VxenNJamUzT1E3eEhaQTViTmliV0owekljNkZS?=
 =?utf-8?B?YUluazVYemtDaEtBdEM5T3R2ZndBTVp3QkpmQitXMjFpa1hEeVhIVVU1Wjd5?=
 =?utf-8?B?L2QrN0ZWcGFOb2h0aFBMd0FuREpVZzVsLytHbTQyK2dhSmpubmZrN2ZyRTJq?=
 =?utf-8?B?S28vYUZsSUdBNHBnZ1kvL0dnWi9FTWRDYW1QUGJXMHo3eG1FTklDTGJEa2tE?=
 =?utf-8?B?eWxuRmZiMldMajd5RjFLWnJGL1hpaXRERmVwdEF0NW83SFFwTGFpSjhzdmJU?=
 =?utf-8?B?bm1BVUc2K1VIUjF1TUdqdWpXRSs2NkdhS2UzQXZDUnFzcW5Eb3MzS0dsYWFN?=
 =?utf-8?B?WDAwQTFBcjlkNWU1ZXljcTBFQWxudXB3SklYanErOUVGbnVlb25xeW1keHJp?=
 =?utf-8?B?cDZHbjZpYkREZGtZSnRTYmozbWhTMWhmdXEzT3prWEVkeno1Vm5pRHAvQ3Ns?=
 =?utf-8?B?QkZQeklNZzhWNGJkbFB3Vlk1YkJORmMwdFIvWjA2Qy9wVDdPbEc2dEk2aTBF?=
 =?utf-8?B?ZUFMak93djU0dmhXN25ab2JRVndqOEF1VkpnVmdLRUJyWmZkSjdaUzdzUTV1?=
 =?utf-8?B?cW9udkIvNlJCVm5QaHpHSldYcWJ2R0pkM3dGd0hUdG9jUGtua3JIdCtzTTNh?=
 =?utf-8?B?eFAwbm5ybUtsWC95cHV4NHdwNkFydW1Qdkk0U3lYTXA4cGRKWXlYSEE1VHRh?=
 =?utf-8?B?TG1xdlRvQnNvZFQxU3FBcENJZzFCTU10KytnRm5jMk8vbG9hcklCdUVQTUNt?=
 =?utf-8?B?OFlZMXlhbzh5NXkvbEFScm0ycnhDWHFpc2VhQUlLb2h4TngrVGc0c3B4WEVB?=
 =?utf-8?B?STBlVVJSU01yOENMdFpmeTZWcDlzREJhVThkRGIrbk5lUFNyd0N3eUJLemVJ?=
 =?utf-8?B?bUV6MllYSnMzMEQ1aVNXcHNWN05WZXNScjk2aTRBWURROGcwVitRalBKaG9L?=
 =?utf-8?B?Nlh2MldTK2Rpck5MTWEzZ042Y2J5dDMwNHorZDE4UnlZZkVKMFE2U004WjlY?=
 =?utf-8?B?VFVQT2ZCb3BjdDZkWHdkWXFsdVh3L0VCVzNFdTM3RXc4OXpsVTNFZi8wMkFu?=
 =?utf-8?B?cDRPTEQrdW1ManpUWklKb0sxVWEreG1ucDhWZVJZc2U5cFZLbk5velNoWlVz?=
 =?utf-8?B?a256b0kyQmkzWnBwQjg3R3pxY3lzb1dEKytEdXRPWDdFczMzd1hwZG1zeFEw?=
 =?utf-8?B?ZXpnM2IzZTIvV3hXZEgzOUZDWXRwbEgyUE1VUU1jQ3lqRVRvMy9yZXZ4emFI?=
 =?utf-8?B?ZnBVVlJlV210WnBTMVgrVGhPZlB6VDMrZzRrS256Z0FUN0dVYUhKUmhhNnhv?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf23a6ee-141b-41de-f125-08db810c7339
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2023 06:11:08.0505 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 36CaZUxfZP52KuSRdKiivRUhvz8ExxZu7AItUbczQ6EDGQeRLbu8KoDUe09r5BHUtboDyZHj4PyhAa/uduRPcoknYQBkFaL4xFmsFIwKF7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6480
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add helper function for
 getting number of VDSC engines
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

On 7/4/2023 6:47 PM, Stanislav Lisovskiy wrote:
> Currently we are using dsc_split and bigjoiner variables for determining
> amount of VDSC instances, however that might change in future, if we happen
> to have more of those.
> So lets pack all that logic into single function for convenience, so that
> at least this isn't hardcoded throughout the whole VDSC code.
>
> v2: - s/u8/int/ (Jani Nikula)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 15 +++++++++++----
>   drivers/gpu/drm/i915/display/intel_vdsc.h |  1 +
>   2 files changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index bd9116d2cd76..530f3c08a172 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -293,6 +293,16 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>   }
>   
> +int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
> +{
> +	int num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
> +
> +	if (crtc_state->bigjoiner_pipes)
> +		num_vdsc_instances *= 2;
> +
> +	return num_vdsc_instances;
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -303,11 +313,8 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   	u32 pps_val = 0;
>   	u32 rc_buf_thresh_dword[4];
>   	u32 rc_range_params_dword[8];
> -	u8 num_vdsc_instances = (crtc_state->dsc.dsc_split) ? 2 : 1;
>   	int i = 0;
> -
> -	if (crtc_state->bigjoiner_pipes)
> -		num_vdsc_instances *= 2;
> +	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>   
>   	/* Populate PICTURE_PARAMETER_SET_0 registers */
>   	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 8763f00fa7e2..2cc41ff08909 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -22,6 +22,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>   enum intel_display_power_domain
>   intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
>   struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
> +int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state);
>   void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
>   			     const struct intel_crtc_state *crtc_state);
>   void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
