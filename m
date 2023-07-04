Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B217472E1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 15:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D437B10E0F6;
	Tue,  4 Jul 2023 13:39:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2134B10E135
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 13:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688477986; x=1720013986;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MQw/tSBDgKWH6PruAN7TY+INDAhjT+CwzjHo2ORnO2s=;
 b=FIIMdHn3iHEVa3IhV7rus+RMIC9Y5qL9S/w+S/Q+69kO2gbLnT5mf7b5
 au/yJT9MbHax7fn9UqNy0Ws5EvdpDw1QSEQ4zKmpUjk3+LPdaFmFrpK2z
 xgDR5GvyQAFk9B0RUEK4jqcOdnZYZnQrqQdFzZghcnFMCsMFjvjixIFu5
 H+f7oetwgFKezOawxHaCKgHUoVwnEPeM2oHHC7AA4/hXH5Df5NZgxX6+Q
 9u6TkSSRvK1HBtA7dzAjLu/6D1etnNTg7CXpcaKY0265qiuhl5FWryev/
 DQ11Wj9YRJcJ1PEvjev2gMGC3eppk7pfmTyryeOA7qhQEo/9YLucLfrMG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="426806575"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="426806575"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 06:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="863422754"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="863422754"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jul 2023 06:39:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 4 Jul 2023 06:39:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 4 Jul 2023 06:39:43 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 4 Jul 2023 06:39:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSFB23CxRSSx2Awibk8bq7yV05oVUv87Z4ieLmW31CV6UBlMnITvXToYa74k61LoKoxsU4RVW8X3Dkwmp6nfC+i7QDx1IAEGOFY2kAt04RKCt1q9mkCwiHLel217xYQho7NrZsF2c3zmQh4U4T5JWcr0ZjuyjeJIXwG3rierDRd/bh/d+/T3idOWCHfKhqz+PxhrGZYSUL9gQje5I93+48MpM6R/+S06gHRWeFtmJuBiKhXWrsEvbE2DioNOzMwyS97gLcqZQ27y0QBJQjSjWxhA9ibSCq5ptjC1tf5h5DqBkZOwYojzTid2ilam0F2TjZ3y/Atu2AU9It3HolWg9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sQoAqh7HBewhQLqQ6DqBNzy2OWHoxPssZ446aKUy09c=;
 b=i9e1hnu9rkuNHv18WM8enugk3S0N3+ijoYPK4Y5RiEE/C+G06QYq/G2MLImQmN9Aw054JZ5a2WXLLL3GDPCLHoS3D4GYZQa7SmCDuAhj71u4iwPG8YIJdObm1nlcFh/0uNcFfxMLcBwNw0ZHSQYtzH+sR0ql/VAJbTZrfMUkSPkUIZac6Cggbvg1Nbfc+BZrDOTq6PVDjfwbroFIJ2PYfTwKDjMaeIW9beN3cdNTkocaVgew72KrhoQmPyw71+Fj8LA9Fpof8pIJnXuO7UcPC9fyJWdit/13b6a8RyKdB/m6nQjt+yjooo9+WXpBMIaMD4wrhCF6wkhnOUGI2JDWWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Tue, 4 Jul
 2023 13:39:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a39f:b9ac:5ba1:e4e2%7]) with mapi id 15.20.6544.024; Tue, 4 Jul 2023
 13:39:41 +0000
Message-ID: <9670ca9a-176b-99fa-918b-bbd1cc9f29b7@intel.com>
Date: Tue, 4 Jul 2023 19:09:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230703101244.2489790-1-suraj.kandpal@intel.com>
 <20230703101244.2489790-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230703101244.2489790-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0003.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7596:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a9196e4-8f7a-4fe3-ea77-08db7c941e8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N6QBiEyENH0ontxVV+nvm2nuiWYvf2j2AoVq8j/f23MR85wf55X7ON94YWlDOXbkrbuTnYViCfN18ZoBsdbTg5H0UVWaLxiDVTQDWxqpXs3fLeSFYzI3JwGPG8OSO7j21+M1JKtBoNv+P40smNTeZC1puMoFGIMPcLp3ZnNxOd9XfV5UuCJXRJhPYaL01pIIF1T/WMJ2ptow11v65iehRuyzottp9iLHvAam6ye4PLslR+J3/TfBNtRu21ifDaW+mRcCAqYgjg1OQnAeGXDfEkgX9AhPn3LnpQXEnwJiI1Gs8inglZeYXM7wxXg/ziRDDl9SFAeGyPoqnqpm7rQnkHYd9kmyu+vybU6Ys0Blywuj3ArYRvCmLVC/KAIK1bx2tFH72xs+19NbpeM4vKLSH4+2X1qLaNqyW813+y5EmzWniQxLtMDK1EK9JVBTT57FDIQnK7IlbkDuOI0dWewizZaobAifR7uRBYfA9wsG7cXQSe5PABVucONn909zyg6AyuwLCarR4FT82pfLzHhJpKRysdxDZVDc3FYi/61zEebl90ys61C0raIN2tc2VAOVuvHNMHS0rmCwea1kgN2P6RuUDl45Tb32Gs6wGW0dIHW3rcmUVAhw239OwT8RXbC2v8is2Mk3Rxwy1MbxS3hHtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(366004)(39860400002)(376002)(396003)(451199021)(4326008)(31686004)(316002)(66946007)(66556008)(86362001)(186003)(55236004)(26005)(6512007)(66476007)(6506007)(53546011)(107886003)(82960400001)(83380400001)(2616005)(31696002)(2906002)(6486002)(38100700002)(6666004)(5660300002)(478600001)(8676002)(54906003)(8936002)(41300700001)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnF4NFpkTm9sQUtkN0RCVTVhaHRUOWcwZlRZaGtuaFUyVXBrOWVOeDRISjRj?=
 =?utf-8?B?U0JvSkpkcVJvekVGWmVieURZVk42MlBJTk9vVlViNnlWU091TC8zZnpjVm5v?=
 =?utf-8?B?Wm45ZXREd2dNanM5bXpmcnRpeEZHc3FRVkZ4VkRZNlpaajQzUmhsVm1RUEgy?=
 =?utf-8?B?MW1LU0d2MDdYRUViL1pOQXVNdGpRdHNwamR4OVFQWURlakw3WUFpL24wNlVs?=
 =?utf-8?B?ckg2UGZxVzVTMlBBWjR3eDJHSkhHYWE2WGZWcjFGS2M4SlJHVmQveklkdzBH?=
 =?utf-8?B?aDNnOFduUkNxUmIvQ2NnckcyMC9SUzRrU2JOcS9KTFhSaU5uU1d1MGM1aVM2?=
 =?utf-8?B?Zkx1V0ZyMU04cVUvNU12WGRBVEFVREZaRjcwTXRtdHFZRGVDbHAzeHMyZWo2?=
 =?utf-8?B?aERLeTd1ZUxtZU5jdWxoMW5qLzNKekU0RTBOMWQ1SkRadlMxR1k2Nndha0tv?=
 =?utf-8?B?VS9Cb0JhbU14UkFVZnhXQitBMUl1ZXVIamN3OXEzZGkyMTF2WVZuUlh1eXFz?=
 =?utf-8?B?bkJ1R2dxU0UwK2tNZVFWSC96V3R6dmRpaWlNSGxMUXdXVFUrUnBaWll0c0d1?=
 =?utf-8?B?SFRrZjliLytQb0FvcVpZOWdrSGw0bVhTQ1Y0MnVlU1ZqZ3pPWEl0a2thMnJ6?=
 =?utf-8?B?U0dvN1g3KzF4OGFobmF1YzUwNHFYcDRqNmtWOHdZRTUwWkpXMlo3NElTV1J1?=
 =?utf-8?B?N05tb3JVTGJ3dmQvVUlJQ2NHSkVyQ1VVVTk0SFpCbHc0amo2a3pqMXZ5NG5T?=
 =?utf-8?B?MUhFV3J4TkdrMmhwK3JBMU1qZVdXTHZpSXVOTjBKd0VvVENVeUM0Wlg5c3Yz?=
 =?utf-8?B?YmFiZjVKNWZQc2ViMm9xMWxzQjk4MVVib0hFOUZZWUVGV0RwK0FVV294dUlj?=
 =?utf-8?B?b0RUdEtmWk55UkV3QTFmMEN6THJYVkNRWFJvbllkWVd1MlgzSnlsdXN4RmZl?=
 =?utf-8?B?bm5Xa0JsQ3Rsb0ZTRVpwYURFVFczdGhYTkVuR1NqQURJVFdXcWxpYlI1NE5o?=
 =?utf-8?B?TWRYMmhFeHBYNGh5NkpvVWpyZ0JNYm91WlRIOWF5QUFkdlcvL1l3NHhMS2tH?=
 =?utf-8?B?VWtWQzlUcEZWSldOZDlEdndqZDNQK3Y3VkIzemwzR3JvTkRDUTNoR2s2dTR1?=
 =?utf-8?B?bWx2aGtaUkVZNXpGT3grb0N6WXppcjZLUjZoSlNyTWgwZHVkNkRBU1EyaFV0?=
 =?utf-8?B?NmdlbWVxVVM0VVNIazkwUWpuQ1RGWXhFSjlINUE4ZDJtazNleld0dTlablVp?=
 =?utf-8?B?MXhrUG5QUFUrd3lEdkd3c3ZJNWJsZzlCMjJtN1RWMDlXeEtveFJVUk9EMjVS?=
 =?utf-8?B?OHFiOHZrNHg2SXVvVnEzME42TVhad1B2UXIrNHRiS1hKRDlteHdRWFZPT3Uz?=
 =?utf-8?B?RVFUU283M0NUeHllVjhScjdRN3JKaFBPVko2SytBS012aDQ0YjRLdHloVFZQ?=
 =?utf-8?B?UWtWZ0RnNEk0MzNWSnp0eU5BZlRiNHhmN3R5cjZHN2V2c2ZYRmdVaE9lVGFs?=
 =?utf-8?B?T1pMazFPKzBTY05mNm81QlpYN1ROa1RYbThqUEI4UTROVVJQc3krL1JmUnAy?=
 =?utf-8?B?TWkyMDN5TVhZbm1wZUxsTHpoU2xBOExaajcyc0lrZDcwcWxVeDBPTmlJbWNr?=
 =?utf-8?B?RGloZ1N0bjNlTUtPbzc3Ymp3VUhnZUFGWjlWeXFxMWZXRnRsclh2NEdkdFVj?=
 =?utf-8?B?Y1RvbGsrZ0JrMFN4bjd1aEtML2VFeEc5ek1CSVBzRVVPSmtmaERyV2U0TDZT?=
 =?utf-8?B?RmFGeGVScTUzay9HbC9jRDRoa2YrK214d1JuU25zZjZsTGdZQzZrQmxWQVBX?=
 =?utf-8?B?WXZDZHhxaCs2cmczYzJMamN5YlplekhDR2VsVE9BQ0JWaVk2Qk5ISExjMmFE?=
 =?utf-8?B?NmM5ODhzd2huTDZ6RmVhVjY2R2RiV3NWaG91WkdIU3RONXJ5N1hZL1dDT0k1?=
 =?utf-8?B?R0pQZk1XNnNqRWZ0ZmZXRU5DaEJrTDQ5TFJ0T0JiT1M0R3B3YXZvdHhRSy9t?=
 =?utf-8?B?ZUI3OG5QREtzYUcySTlyL2d1alFvRVhYcWgwUU9pSjhlLzQrZlUzdGR6cEt0?=
 =?utf-8?B?dmRiUUhYbVZ0UXdSUS9tS2o3RCtCZE1QaFEzR3RUcE9Ea1pXaitHeVM2K1Zy?=
 =?utf-8?B?Q0tzdXNzWmxEVmV3RURocDcxQ3JMM2t5cU15ZUVGUTh2U0JVL1Y5UXkyano4?=
 =?utf-8?B?TFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a9196e4-8f7a-4fe3-ea77-08db7c941e8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2023 13:39:41.3823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2K7smEIY/wiaMvd+Wss9jo6wmXDopOikUSvYdPSLRV0f4xGhZlEkF4b8cWekgHirrzlgrw0+/eSO2CDLuKVDVr9eufzQhXPTpc2H8gujH0U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/dsc: Add rc_range_parameter
 calculation for YCBCR420
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


On 7/3/2023 3:42 PM, Suraj Kandpal wrote:
> Some rc_range_parameter calculations were missed for YCBCR420,
> add them to calculate_rc_param()
>
> --v2
> -take into account the new formula to get bpp_i
>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 142 ++++++++++++++++------
>   1 file changed, 104 insertions(+), 38 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 7d0edb440ca6..5c6151f716d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -52,23 +52,34 @@ static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   	return true;
>   }
>   
> +static void
> +intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
> +			  int bpp)
> +{
> +	int bpc = vdsc_cfg->bits_per_component;
> +
> +	/* Read range_minqp and range_max_qp from qp tables */
> +	vdsc_cfg->rc_range_params[buf].range_min_qp =
> +		intel_lookup_range_min_qp(bpc, buf, bpp, vdsc_cfg->native_420);
> +	vdsc_cfg->rc_range_params[buf].range_max_qp =
> +		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
> +}
> +
> +/* Calculate RC Params using the below two methods:

Start comment from next line.

> + * 1. DSCParameterValuesVESA V1-2 spreadsheet
> + * 2. VESA DSC 1.2a DSC Tools Application Note
Typo: Note:
> + * Above two methods use a common formula to derive values for any combination of DSC
> + * variables. The formula approach may yield slight differences in the derived PPS
> + * parameters from the original parameter sets. These differences are not consequential
> + * to the coding performance because all parameter sets have been shown to produce
> + * visually lossless quality (provides the same PPS values as
> + * DSCParameterValuesVESA V1-2 spreadsheet)
> + */
>   static void
>   calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   {
>   	int bpc = vdsc_cfg->bits_per_component;
>   	int bpp = vdsc_cfg->bits_per_pixel >> 4;
> -	static const s8 ofs_und6[] = {
> -		0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
> -	};
> -	static const s8 ofs_und8[] = {
> -		2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> -	};
> -	static const s8 ofs_und12[] = {
> -		2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> -	};
> -	static const s8 ofs_und15[] = {
> -		10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> -	};
>   	int qp_bpc_modifier = (bpc - 8) * 2;
>   	u32 res, buf_i, bpp_i;
>   
> @@ -118,33 +129,88 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   	vdsc_cfg->rc_quant_incr_limit0 = 11 + qp_bpc_modifier;
>   	vdsc_cfg->rc_quant_incr_limit1 = 11 + qp_bpc_modifier;
>   
> -	bpp_i  = (2 * (bpp - 6));
> -	for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> -		u8 range_bpg_offset;
> -
> -		/* Read range_minqp and range_max_qp from qp tables */
> -		vdsc_cfg->rc_range_params[buf_i].range_min_qp =
> -			intel_lookup_range_min_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
> -		vdsc_cfg->rc_range_params[buf_i].range_max_qp =
> -			intel_lookup_range_max_qp(bpc, buf_i, bpp_i, vdsc_cfg->native_420);
> -
> -		/* Calculate range_bpg_offset */
> -		if (bpp <= 6) {
> -			range_bpg_offset = ofs_und6[buf_i];
> -		} else if (bpp <= 8) {
> -			res = DIV_ROUND_UP(((bpp - 6) * (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
> -			range_bpg_offset = ofs_und6[buf_i] + res;
> -		} else if (bpp <= 12) {
> -			range_bpg_offset = ofs_und8[buf_i];
> -		} else if (bpp <= 15) {
> -			res = DIV_ROUND_UP(((bpp - 12) * (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
> -			range_bpg_offset = ofs_und12[buf_i] + res;
> -		} else {
> -			range_bpg_offset = ofs_und15[buf_i];
> +	if (vdsc_cfg->native_420) {
> +		static const s8 ofs_und4[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
> +		};
> +		static const s8 ofs_und5[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und6[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und8[] = {
> +			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> +		};
> +
> +		bpp_i  = bpp - 8;
> +		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> +			u8 range_bpg_offset;
> +
> +			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
> +
> +			/* Calculate range_bpg_offset */
> +			if (bpp <= 8) {
> +				range_bpg_offset = ofs_und4[buf_i];
> +			} else if (bpp <= 10) {
> +				res = DIV_ROUND_UP(((bpp - 8) *
> +						    (ofs_und5[buf_i] - ofs_und4[buf_i])), 2);
> +				range_bpg_offset = ofs_und4[buf_i] + res;
> +			} else if (bpp <= 12) {
> +				res = DIV_ROUND_UP(((bpp - 10) *
> +						    (ofs_und6[buf_i] - ofs_und5[buf_i])), 2);
> +				range_bpg_offset = ofs_und5[buf_i] + res;
> +			} else if (bpp <= 16) {
> +				res = DIV_ROUND_UP(((bpp - 12) *
> +						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 3);

I think this is wrong. 16-12 so we should divide by 4 instead of 3.

Regards,

Ankit


> +				range_bpg_offset = ofs_und6[buf_i] + res;
> +			} else {
> +				range_bpg_offset = ofs_und8[buf_i];
> +			}
> +
> +			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
> +				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
> +		}
> +	} else {
> +		static const s8 ofs_und6[] = {
> +			0, -2, -2, -4, -6, -6, -8, -8, -8, -10, -10, -12, -12, -12, -12
> +		};
> +		static const s8 ofs_und8[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und12[] = {
> +			2, 0, 0, -2, -4, -6, -8, -8, -8, -10, -10, -10, -12, -12, -12
> +		};
> +		static const s8 ofs_und15[] = {
> +			10, 8, 6, 4, 2, 0, -2, -4, -6, -8, -10, -10, -12, -12, -12
> +		};
> +
> +		bpp_i  = (2 * (bpp - 6));
> +		for (buf_i = 0; buf_i < DSC_NUM_BUF_RANGES; buf_i++) {
> +			u8 range_bpg_offset;
> +
> +			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
> +
> +			/* Calculate range_bpg_offset */
> +			if (bpp <= 6) {
> +				range_bpg_offset = ofs_und6[buf_i];
> +			} else if (bpp <= 8) {
> +				res = DIV_ROUND_UP(((bpp - 6) *
> +						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
> +				range_bpg_offset = ofs_und6[buf_i] + res;
> +			} else if (bpp <= 12) {
> +				range_bpg_offset = ofs_und8[buf_i];
> +			} else if (bpp <= 15) {
> +				res = DIV_ROUND_UP(((bpp - 12) *
> +						    (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
> +				range_bpg_offset = ofs_und12[buf_i] + res;
> +			} else {
> +				range_bpg_offset = ofs_und15[buf_i];
> +			}
> +
> +			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
> +				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
>   		}
> -
> -		vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
> -			range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
>   	}
>   }
>   
