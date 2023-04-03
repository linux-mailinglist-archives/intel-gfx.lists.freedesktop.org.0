Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0866D419B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 12:11:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1804910E342;
	Mon,  3 Apr 2023 10:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1651010E342
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 10:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680516700; x=1712052700;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XJSHjCcoHT74e22YUv8BvNO1HoTlDET2nFpiD9r5krI=;
 b=cjlCZzWG0Wt75ClnYoJXlmkvNSTKQ5gJg1A4I84YqOcxMO/T5Ews/onf
 j20I4GevfKNla7PgctSWyhv175rCqMjbum98tGn7SH6EKVmGSt5Fh7dos
 lcrRXT8BFU3oXev5yC95D8DP3xiXsoz5cwSXIlD8wn5icN0G3CPdUtFih
 /IOVZGX5Ugy+OjmCFup+6L/dV6ymFF0tG+rphYe7k1ISIfeWvO4bhVkdB
 wePERRmys3ziJsy19xL2nb8ClOLUttkkWJppVpsSBEwmzXw4pG4GFPS7H
 F38M9O9zx8pecsyuVR3AODQ2YaLMewiGu+ffpYlzOLtZlk1GRO+KKF9U0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="330430950"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="330430950"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:11:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="716238131"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="716238131"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 03 Apr 2023 03:11:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:11:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 03:11:38 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 03:11:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 03:11:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JVSyIgs7NohiqwAo7UfiSMl00QOREQpkLWkkDkyp0OJ/DZSlv/A2sCnfobCp93qyc+dPcI/urs/+QbL27n3nkVF3RsyJNX6NTD5lBP7AO2K/6r0pz672M0anraXCOD0ZLhNsVt6iHa726tfiI6+GDj4v8O0+ybE3QICKiiaI4+JemYJr5tgrJRajcZgaZGpE1OEtT+FFRj75SzizlUOVxu1qF8+87W2Q/xiL5IlMXnDtgXfGWthkYTjlLyxrnsY5J/riZEBJ3jXuHmH5hYe8+sChv3uABeZr9jmcENk/NR1t0m9Eauce7waHhV58q1UVm5m84WvuohU825LF9xUsVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18P7fiUvRj3QAmi6ho2x6Y4j1XJe/ATtwh8oLQlH2RQ=;
 b=axQt+LomfgWF+Ms27NfN3Q8BL+m3/hZnn7vYh3bBQotMGHBSOu9LQLsFnkLEnft1nt6Rqxn4RXEm7ok+8pF10SymbYuQhiii6ij6f7YtaIPthDu7m2RJ/qYWYNT4oU/owXdKRVF6+ItD+QtNVGmXviIZ8HKHtzxVWGXdoZ/nJmacxKkGqqVbiTPzBYF5DBvbAuOTDc5sPrGENQZW3Jlagep+waQk7zAETpn52Mv3mS42Jdggh1lWu3Bdm4ObK3IXcCaGrQYzL2f/kKEfhJtexW8bO+Dwf7AicG1AktwTEMB5SR7DMx0Q8PE7bkscZzPkzbJw8/lrOkkEI1agmoC6Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SN7PR11MB6751.namprd11.prod.outlook.com (2603:10b6:806:265::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Mon, 3 Apr
 2023 10:11:36 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::d383:a1b9:4c0:7d04]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::d383:a1b9:4c0:7d04%6]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 10:11:36 +0000
Message-ID: <86c24b0d-bfdf-350b-f5d4-af268d333a10@intel.com>
Date: Mon, 3 Apr 2023 15:41:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230403080154.1239873-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0102.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::23) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SN7PR11MB6751:EE_
X-MS-Office365-Filtering-Correlation-Id: 65b29245-5ea9-46b2-84cf-08db342bce9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vbcy/ycBeNEE284u/KkwfH6L+75IBkX/NjWORebkJbJ54gbGfDvArSUEJClsQXCF/43lWCXUNooHX8N19Iyb4UXKXCR/QnEdcOxA0BeqHRrd2Ae6yK+hmRMOALg0sem6yyc4n9XwnboYnJo+XrY+1kQtjaxV7Vn8wY/W0CoJ9sm3gbAWyjmHUnTdj0AAhFX9NoY3reWWCCx20u8NVbJoq1StnO1tbafp4qv3/UG6TNugNDP6ZOwxQQBYxDsTRJ5xwLB57uxcz8YuejRP1dZn9UaOL0IctM8zrBKPTzuI1JCrHvobQ+Ip8h7o8f9C26c3VgznxdOX8QR8Xz1z+TzLP/+o6OILQABQ7itpE6A+lKv7xcIl6nLOPcVO8op/25DHfHBvaV/M+1kn58nju1QPXB0CEW8SWkz+J+5zgSwYRtXGAuKSDMloxcTIXRnsMIdjgitTovD30u/dhkI9Wue+19JkDHpSBhwPLTpBJKQ+cIG1PbFDOk2Y1M+iqUSwYD0U1ij2Zb98OGFwgbxnrpY0xtswY0OhBoCAzpX5v/rkYsB0zY7lOtj4J0EJqq9OXR+skCQV2mSFcLZ1lD4T4z56h/O6i0cBMCAtCAoynvEhellQfhnPnYoOlLWTfSHhe0CYp8WvJnXx7SCOULnr5oTwlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(366004)(396003)(39860400002)(136003)(451199021)(82960400001)(8676002)(66946007)(66556008)(86362001)(66476007)(2906002)(41300700001)(316002)(31696002)(31686004)(478600001)(36756003)(38100700002)(6486002)(8936002)(2616005)(5660300002)(55236004)(53546011)(6512007)(186003)(6666004)(26005)(6506007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eS9lcnkydkZLUEYyQmtLQ0ZNdHMrVjZzWjE4dDBYVCtPcEVkeWZ2b3ppa0hW?=
 =?utf-8?B?bndEbExmZVh6R2VWM1p3QWtEalRWeEoyQ2ptVzc4V3FuZkFscXhaR1ZRNUFQ?=
 =?utf-8?B?Vzg1b29weWFLRzB2RjI4Sk9LdVpRbGUyS1A5cDBVNVlvY0tLWUwzWUZlMnBx?=
 =?utf-8?B?S1lwK0hwRHNhZXJMVjg5RGFDSjFwdUlJcit3TnBpc2E1U1JnU3dXMDY2eFNO?=
 =?utf-8?B?czU0bDBZTDY4TVZCU012c1RlZDRnWjZSV3Y4UmQvZGxiOExLVkUzNUcyUUkx?=
 =?utf-8?B?Rk9SMW82Q2h2YVBWUzBoNFMyTVlIUk9QWXM2V0RMN0JoVm16ODdmYWNaeVdr?=
 =?utf-8?B?eUR4RmJTM05ucFgzaUc4TzNFT1g0c1JGT0VWZ1lIUmUzMU9sZ1c1K0RFYTRm?=
 =?utf-8?B?Y1c4a0RUZDNrWGphUnlZd2F1NHhOKzd5MjMxOVFxazhGaCtWdWYxcXdJbzhX?=
 =?utf-8?B?Q0RLS3RsNEptVVJXVGFNdDU2dndWRXNUT2dQZ3RyWjZDTXdSNExkZnFLUnEw?=
 =?utf-8?B?cmNoY2dYQ014dGVIZFdxQ0NId2owQzRHTEZUUndac1JET3VTT0NXWTJqUy9D?=
 =?utf-8?B?eWwrd240amlwSUFSMDRFbXREU21FREZKOUFEM2F0bzY1eWFqT2ZjdzRjcHFZ?=
 =?utf-8?B?QUh1eExkd2toNllUYmUyTWd6cWE1QUNJU1dkd2VFWkJucERQL2dPRXZ4cGts?=
 =?utf-8?B?M21sWUs2ZDlJVHB2VkF0c0pCZGpzSEhYUC9BTy9ZT3lZU2ExNlJ4cVhDUE9v?=
 =?utf-8?B?aFlYRnJFSXhKNDFBTVZrMVJZNVArclN0dFAyaVFmUjJKWVV4MnM3SnNBN0lx?=
 =?utf-8?B?TXNtVUN6UEpmcm5tZk0remY4UzdwdXZOY3ExRGlJNUd4bHh5TytiTTYzZFBJ?=
 =?utf-8?B?d1gyZ205aFlIUS9pMVNNNWV1aWdFQVN0bjlucTFOSGlyTkkzQ0owdWJLWnZu?=
 =?utf-8?B?bm5lUXUySWRZRUpGSjBYQU5zMDJRZWpUN21zUHVoRzJsVU1WSjE2R0ErZTBN?=
 =?utf-8?B?Wkx0U3JZdDUxQXlWODZJSlJpTVR6c3o2WVZCVkdZUHBHR2JyV3NXd2Q3ektq?=
 =?utf-8?B?RWlNMHlqSVQ3UUtXVWVmYlV2Ti8reFVtOW9VYVJZc1Fpa1o5aEUwNUZGbDhG?=
 =?utf-8?B?aFNObHBIV0I4SVpJQlg0NkdJZGFEbmVvM09tUGdRWUxZV0dLK3NCT1N0MlB3?=
 =?utf-8?B?blY3eUxGcDF4YXJFU1NORFN1QTBHOXBjTU00U0V4a1oyU2hoK3JaQ0xETHVB?=
 =?utf-8?B?NG5YYml1M0MzV2JJdE1MZGtKUHg4ZzZJVk9ZbnJLeFd6WXN3RmxZL2xBNVU0?=
 =?utf-8?B?d25CcUU3bGZKREN4WFZTWEszczVUMlpKMWhhQWh1a2ZPdHZGVE41UEdLdzlr?=
 =?utf-8?B?U0J6aE1SN2xQWWhla001c2xmY0l3dzZzckZOODIzQU1zbjRWMDBULzcxWmMx?=
 =?utf-8?B?NWhlUGExR01ZOXEwREttTDNBc1dBSFB3ZFVpSHdBc0xMTjJ6SmJ0M0FnZjRJ?=
 =?utf-8?B?Z2hCemJidXZJUGlLcWJaN21tY2ZFWGs0SkVOczlaOHEzenlITG5sSSt5WnNV?=
 =?utf-8?B?bU0yMEdqM1Vha0ZVTUg5MzVWSEVYL2xydExLc3hWempCSDZQTTNucjNwMDRo?=
 =?utf-8?B?K2dvUzhhUW9hOHltY0VkNUdUNkUwTisrcGhseVRZcXkyQ2V4alllWTZodWxk?=
 =?utf-8?B?OTd5eVJzZUhJek1jTGJ5UnljOHRXSzY2STN2SHJyTXdNa016ejBYOS9zNFRR?=
 =?utf-8?B?MUhEVjMwV2RHVTRtMm5BMmVwRmN2MCt2MTlIUEFQbExraUg5L2hMZ1N1ampw?=
 =?utf-8?B?bzM4OXVEc0lrbEdlYVMxMTg1Znk4VGdaTlkyaEFXM2gxTU5xbTJQSVJyclNk?=
 =?utf-8?B?UUh3UlZVSFBIbkkzek85SW1xVXYzY09KWDJIN1VFd1pyVEdKck5MN3kvdFg3?=
 =?utf-8?B?clVDZVVKZmRnMk8wU2MvK1FFT05PVkNJVDI1U09tK3UrMEQxTHpoQUdFQ0Iv?=
 =?utf-8?B?dmpLTHNGYzVDZVpTTmpDUVNoK09VdGVyK1hXbmNXbWRCY1Nnbm11QS9PZEtD?=
 =?utf-8?B?Ly9WRUcyU0t3ZmRHUVdDdXdVUHV4KzROSDhwNXowQmVuWWRmemhHYnB0OEpa?=
 =?utf-8?B?Y3dNVFJyTkMxT05HRGo4bFNEV3ZwQjJYOFlPR1Nob0lZeVFtY1ZtazYvalR2?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65b29245-5ea9-46b2-84cf-08db342bce9a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 10:11:36.1081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PHxElKh0MuG66UZTFCJ5HMlPBDGgEqXknFGeuqmIibkqtC51w1L8vDk+KU0RUwgRIRz5BWP2Hp6PviaWJnwFsl6h5NUA6zUb4NbBuqa5qGQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6751
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Increase AUX timeout for
 Type-C
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

Hi Suraj,

Thanks for the patch, please find my comments inline:


On 4/3/2023 1:31 PM, Suraj Kandpal wrote:
> Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> Workaround: Increase the timeout.
>
> WA: 14017271110

Lets use Wa_#### as per convention.

Also I am wondering if we should keep the original number 14017248603.

> Bspec: 55480
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_power_well.c   | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 62bafcbc7937..357617b9b725 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -252,6 +252,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>   					   bool timeout_expected)
>   {
>   	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
> +	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
>   	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>   
>   	/*
> @@ -264,6 +265,20 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>   		return;
>   	}
>   
> +	/*
> +	 * WA: 14017271110

Wa_<number>:adlp


> +	 * Type-C Phy are taking longer than expected for AUX IO Power Enabling.
> +	 * Increase timeout to 500ms.
> +	 */
> +	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> +		if (intel_de_wait_for_set(dev_priv, regs->driver,
> +					  HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> +			drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
> +				    intel_power_well_name(power_well));
> +			return;
> +		}
> +	}
> +

Though not part of this workaround, as per Bspec:49294, the power well 
enable timeout value for Gen 12 seems to be 1.5 ms : ~2ms

May be have another change for that as well?

In my opinion, we can have an enable_timeout_ms which is set to 
different values based on platform and just

use that in intel_de_wait _for_set.


Regards,

Ankit

>   	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>   	if (intel_de_wait_for_set(dev_priv, regs->driver,
>   				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
