Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9997741C4DF
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 14:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E168E6E1B7;
	Wed, 29 Sep 2021 12:40:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7696E1B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 12:40:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="204417571"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="204417571"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 05:40:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="707248856"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 29 Sep 2021 05:40:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 05:40:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 05:40:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 05:40:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VHcohmbBGQxkVtCU/G+IzpbMd7c/n3YtldCed8rEFfQ4R/ns2meJrMCDLlYXaj02nJ2N2z9+pJ6+k/4T1kay2kw5xmk7mwriSrucdPIog30y9+ie8KZMlHtwhgjZtnlaiG5uzewvHoTwYbeC9X0TfpS237gs5noSaVTdOYCXdptidxiS7/PkgUwvQHKA6v5+wq5Q6Ox94eW87X+2uCfeFBxfy5LtJwyBC7bTiUxdMxt8+wDSGiCV2t67NYamDCm2P7GqkCDFDevU+6H1xP3AD7iJzeLYHh/c5D8Xl+37UX8jDiVc9yCggOQiiaq6ulSXDn59+xapTVVD8yi8Q/jjEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=mWQW+l3js6UoTqAA1mKmxHqmjKm1HFZzrs5a8h9BESo=;
 b=GCUcIDbT/qthRG/69hK+tsDeHxPqL2moF4GZLJKAX9X9dW3xwp1c5+AN6HHDF3NaHtlsSj3lMPRwVSrH6dtXZwYus6pMSAyeizgqpJb1tvH6JLJKQkMNBpfxxnVuWZRdBxkH6Gki0a1Qti9CPMduB0Wjp85YSkj/9y86nSQAfeinZ6ZH+WTVQAC14T9fz8ft46rqFJry8HGr3HnFiqCi3STsVKPXoh/jMAKhkXjzpIt30eJoqJ2WALfzhzAUeJcliQ4YfU1CJdvfsKhwF6sICMSitrDABpd2yvLWmyJOV5wIW4rOz4zZQyhGdnspfTW75PAYamR49mrngQOs5mQJnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mWQW+l3js6UoTqAA1mKmxHqmjKm1HFZzrs5a8h9BESo=;
 b=Ez8u75dDhd3KSZhgPt/VouP7sAVNeH9pFn6jHIvdGxy+5OEjQYPhQDxCWO28iBCafTZNllIvyLWdkMb+02UmwxsO5FaXffhrbdQUkImScgT+WjGuJn77RWeaOoupzMxHqxLV0CW+i9/oCnHhw0D3lsjUTAT4nbXfb5amYEgALXo=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) by
 DM6PR11MB4443.namprd11.prod.outlook.com (2603:10b6:5:14d::27) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.18; Wed, 29 Sep 2021 12:40:21 +0000
Received: from DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f]) by DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f%4]) with mapi id 15.20.4544.022; Wed, 29 Sep 2021
 12:40:21 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <72eafa98-f738-71bd-1534-c3d9f4fac29d@intel.com>
Date: Wed, 29 Sep 2021 15:40:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210923194617.69136-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DBBPR09CA0013.eurprd09.prod.outlook.com
 (2603:10a6:10:c0::25) To DM4PR11MB5424.namprd11.prod.outlook.com
 (2603:10b6:5:39c::8)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DBBPR09CA0013.eurprd09.prod.outlook.com (2603:10a6:10:c0::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Wed, 29 Sep 2021 12:40:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2df84e2c-f579-4b20-3191-08d983464ce2
X-MS-TrafficTypeDiagnostic: DM6PR11MB4443:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB444326557FE5837A758A0686B8A99@DM6PR11MB4443.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: awD98G6VcPtM4SkLgy41oLYlzxV0wYlk1vrDoX3X9v3u8IiWHVVsmu4FceiDrKFRGOGKuSHqqHfcpwF201Yrp7RixymaeL2402V38cOcYAuiMLnP6Kj0sRqaYUu1xfdaxu8IrajiVE0YlCrhNkbNQZtLbY7grFF6V892boSpERndtTV2WeTDewV2eWuSDn2QL/oNCRqvUQWx798hk4NovS+0kl61TG+VTkS3tuSxbhIgwSFnOG3/tr6yG01eED0I49Gdsxd1jrfIQXHJcvuQQuwmjbbFOZuDkhCLpxt+aq+EYielEp/GiTdHezLq9Y+BWGQ2uglIn4iR3tV5PSTa5PlXIrZqbY5yXW5Bkz8C4MI+RDdkZ2EP9F1mt7iIYv2i7qYbVlD7BdoaXq7qaq7iKshjDUsApK0J8Zx19Yl4q6xU1mG5UD0l6SjEy+vKYjRWBDWFeJ7rKSwHElYbFxFqobgxyNdn9VzPoom5uOKucPLRQyp7cZYu15T0Ye/nHY/IgX1sXn7gm2Koru84wEsmqJoS2/SJUGfu4kqCg/N9imMsoWJ6nxxxp03dVRW+WKBy6OAooy7rVZTgd3N8kvVr5OqGHHP7r/gfCewJNCkGhhLktQ99A2qArHUMmWdHcSq34k8s5Lc8ImZOc1pGS0WNEy3mpItQW9oa6U88Zgp46wY6GFKPy/U1JswSBoGfg7JXRCO/cINA4VvcHknmgatT27db5H1neDKynklQL8szPY8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36756003)(66556008)(6486002)(508600001)(2906002)(8936002)(66476007)(16576012)(5660300002)(6666004)(53546011)(66946007)(31686004)(38100700002)(316002)(186003)(86362001)(956004)(2616005)(8676002)(26005)(31696002)(4326008)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkRFdG9zS2lPcnF1SDVZcm85Q0h5eGhHSTdQb3p2Q282cGxNcEZLZVVNUFls?=
 =?utf-8?B?SDZWVm5XSkJLcUVsakdaRnE0REFJNkZSNGE3bTRVUjhFU1VvdHlSMHZnemdJ?=
 =?utf-8?B?eEhTamlNUXcvaG04WkgzelpiRE5jeGdxWkNLaDJlak5iempiemRsb3FWV2Mx?=
 =?utf-8?B?cXMwdk9jMXBkcHJ4Vkw0Y1hLdUtDc1QrZjM5dmRNbmh5WjdnRUsvSnRONHZQ?=
 =?utf-8?B?WUZiY0Q1MDJUWE1qaUlyT200Kzg5QVZHVlhiVk9xaVZQT3B0bEFHay85UWZq?=
 =?utf-8?B?M3ZLNEk2cWdYbTJUOFFrUGdLRkZKZFBmcER2SkhMTG8wOU1yejNqQUJGWDNX?=
 =?utf-8?B?SFVCVnVoYVNlOThoN3hsdlJzRlhyOWJFNVBIdVNlb3JyWGwvVC9BT09Ddm5P?=
 =?utf-8?B?UTVDaWFhWHl0WnREYjBISUlHdzRuQmoyZjBDbW9MNlIrWlVBTlBRUnE4eStW?=
 =?utf-8?B?SldIY1h3Z2hDK1pWKy81T3ZONjhSazFaNGJlYUMwemVOV1BUd2p3S1JHemx0?=
 =?utf-8?B?WDM0YnhIekpzYzB4MmZyaERndVpUMVVVYTFKdGRWR1lFSGFjbmxzc0NNUjhP?=
 =?utf-8?B?VXNiNlh2d1ZxMGQvQWFYeFlZOWJ4Ykc1MTBud05BMXRKVEhveDdCYzk2VFJh?=
 =?utf-8?B?MGlBS25RZUYwKzNTc3pDb1R4emZZYk5TQ0Z0cUNuY2UrZnpQY1lYa2dnTEo0?=
 =?utf-8?B?amhDaGp1ZjFHV1BEUFI1dk92c0l2aUlyV3F2RTh4dU8vL2F2dWwzV1ZscFlV?=
 =?utf-8?B?d3VLV2VUU1EybERQWC9DTVNXeTE1SDMzWDg1OCtKajcxeEx4SlhRSERZYTZD?=
 =?utf-8?B?MHFmUWpuZE1nZ3BlYVlBOFdwWlJVWklac3ZTcFk4eFlNNk01cmFNdm10OFkx?=
 =?utf-8?B?M1RHcURjWTdseDJudmEraG9heDM5T1RhaVJCWVROaXY1dThwMWQrOWJmbkV4?=
 =?utf-8?B?VHFqRVhSME40WFpMaEVocEFhWVhlWlpYM3AyVU1rL2VINTZ6b21kYjNHNnhT?=
 =?utf-8?B?UFZlTkx1bUpRMytvNnlRUEErNW52K3JsV0c1cVlyUXA2WWhVL2pHSjhWNits?=
 =?utf-8?B?VmNMcGZMSExCbnlEWjNaZUMwWlFwKy90Y2lodkxLalkvLzloZTlVT3FVNHFR?=
 =?utf-8?B?TzZIZTl0aVlZdkhrbzFmcnhyU3o1RUtpWHl1bjVmMTdwT2hGTDJPdFVxdzkr?=
 =?utf-8?B?QVo5R2hVaVJHcm94ZFpkb3pTVmpTbW9BWWQxeXRxSGZpc1NOME5pUGU4Q2hK?=
 =?utf-8?B?YTZRK3hoTmJwVFV5K0hGL3l1RkpOd0ZQTjZmRFFzcXFCUDVzNWpWdXBOSWt6?=
 =?utf-8?B?czZ1UDNVay85OXNZd244ZjA3aEdrNEIvTFlRV2d2YmwwTDRnbEszSlhQdk0v?=
 =?utf-8?B?K2RVSkhYR2FBLzNxMngxUmNoRWNzWWR1UlJEOUt0ZXRyU0xwZE1pck5lTXNx?=
 =?utf-8?B?UmgzMDdTNi92RDROb2I2Umt5VWdZVlNITGU0Nys1TXc4S0lrZVlFTTBpWGVn?=
 =?utf-8?B?MitwMkVxUGZFRUFxN1d0UHNIcDNDczUwZmQvVmhCM3NNaENTMGg2dVlvcWJy?=
 =?utf-8?B?Ym82UjB6OGJ3TG93TDcxSFk2am9hLzhxMnpnalVlYUtVeS9RUUExeG9MYzZD?=
 =?utf-8?B?aVBYNTkyaWxxVmswaU0wMXZ6enpNWDVsTnJBL2huYXdOcXJSSlhPa1NocjVN?=
 =?utf-8?B?TTY2QitYVDNJdy8zaVNROEpGQVd1WFhSdGZ4RGFCSzBybjZ5LzcvSjBVWDUw?=
 =?utf-8?Q?YVWy9lmJI7aVItDGoQs4kkIP9V3MVqVHq4FhgU/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2df84e2c-f579-4b20-3191-08d983464ce2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2021 12:40:21.1731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zqN7nfdX9Oh44CRV50FQ8kVcLMca0GLOSmN5QFjgvRSQVyFw3lcs7bS+U7vRUfBd++flYHRKocXwzNy0urLnWQrEJB5Vn7Jm3MIWEV79CjI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4443
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: Handle frontbuffer
 rendering when PSR2 selective fetch is enabled
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

Looks good to me.
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/23/21 10:46 PM, José Roberto de Souza wrote:
> CURSURFLIVE writes has no affect when PSR2 selective fetch is enabled,
> the right thing to do here would be calculate the damaged area and
> program PSR2 selective fetch registers properly during vblank but
> we can't do that due to performance reasons.
> 
> So for now we can workaround and offer proper rendering by disabling
> PSR2 and enabling in the worker a few miliseconds later if there is
> no other frontbuffer rendering.
> 
> This approach will eat some of the PSR2 power savings when userspace
> makes use of frontbuffer rendering but that is the solution that we
> can offer to enable PSR2 selective fetch right now while we work in
> the proper solution for frontbuffer rendering and PSR2.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a2e4ef42be60a..ba2da689920f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1413,6 +1413,12 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> +	/* CURSURFLIVE has no effect when Selective fetch is enabled */
> +	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> +		intel_psr_exit(intel_dp);
> +		return;
> +	}
> +
>   	/*
>   	 * Display WA #0884: skl+
>   	 * This documented WA for bxt can be safely applied
> 
