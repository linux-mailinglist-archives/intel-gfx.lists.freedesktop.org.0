Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 165777EE1DD
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 14:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7028C10E28A;
	Thu, 16 Nov 2023 13:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7153010E28A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 13:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700142500; x=1731678500;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/emf/untMulib3qXf7YE0a+oOPSfOQpKa17aZw2Y0s0=;
 b=bqrV+4TZ5TSDD4cjooCJ7ieUwU350qmvzVaE8V0WG1K9bbsHFAMpFaGa
 YFIDEMAHUhES9nXEo0whLQAchK0tRN7O02cK3kyB950GyzUp13AbdriPj
 vRWprRTS+qcTmxt3T/IyBM5mt4A4d3wPnkeQ1qbgQdHmzkiBNw2MjJJAm
 kdA+wVYVL+5Ppo7bgpwpK6ANdABmKI2AO80BQoaBEW9bVOKLAWuZq22hJ
 /HCm4v2ND6A6UIIlYi5q68SGOQIcl3KdKYie6SxGZqDw4vzaPMmf+aybx
 5G6V8nXVX6x+GAMhCwnobZAipTQkhAIvSAzb4HxS6XSThhmo4tQ2r9vDe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="9730420"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; 
   d="scan'208";a="9730420"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 05:48:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; d="scan'208";a="13119640"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 05:48:19 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 05:48:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 05:48:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 05:48:17 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 05:48:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xyfn7joPwo8F+gaWQq3ajT3pAHipR0rbUB8JkLp989sUBHEKFXOvah8CajoETQX3zxHXCOdJoWki5UHE38cxUDbMjWUY7FIC7xh1bpKyrnFt7na67GDzcZWP00ngh7pr0ftZKAjdUetYJeNKPXthuXTX382F4E05Gyd5jt132oQvFpgAWbKL75GBgqKT6DlhjoBmUUIIpkghjPKLVa6wz1nrTqxSUKkPZCC7ZLFTzChdfLG5Xf4wDMSFEVUz/Jxd8zgQOSU8qpFfZ2V94oPcMBCb/vI0cVd0ZSOvSK8P3XYy0qIEfuVxFAXSK243IccKyCWkjBy6tdhetjkdCu5DnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TuoFAnKC0JEp+rd9ICC/NfAZ1tMQwHbci/OpQ5XC7MA=;
 b=hhGrBF0fdxntRwt8/cr+qdiCFiJWdcUtfXCtTmxeXkMIb+TLUzJBsTKwVs79eLEf7Y0+eTudUBBdEFhd0vfG4QLWC+XPVrLZ9JS08haGbEanptVlQkUabuf7kIf2VLjM5naYakYaX9yoAwlD90LtGf515OCyIkVPmoliINi36Dk3RxH4tKzRQoyzXPCYsDoZBw1M5jFYLr/PUm6RzI8RHTL5JyNNtP99NclNdVsAvpBH3n/2T90Au+lKVVp1KrsbD23o6aOfqtuLD5/RP9+FJxdv8Lcn3SQV9YD4nPTbNe48qfeucgV6VCYv/pTNYcTM6lgD9nodMZelfbYeFhKcAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5719.namprd11.prod.outlook.com (2603:10b6:8:10::6) by
 SN7PR11MB6922.namprd11.prod.outlook.com (2603:10b6:806:2a9::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6977.31; Thu, 16 Nov 2023 13:48:15 +0000
Received: from DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::1b21:df8a:1209:8179]) by DM8PR11MB5719.namprd11.prod.outlook.com
 ([fe80::1b21:df8a:1209:8179%4]) with mapi id 15.20.7002.021; Thu, 16 Nov 2023
 13:48:15 +0000
Message-ID: <b83617ea-ec31-79cd-da00-539e5d8eecaa@intel.com>
Date: Thu, 16 Nov 2023 19:18:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231116103704.11353-1-stanislav.lisovskiy@intel.com>
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
In-Reply-To: <20231116103704.11353-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::6) To DM8PR11MB5719.namprd11.prod.outlook.com
 (2603:10b6:8:10::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5719:EE_|SN7PR11MB6922:EE_
X-MS-Office365-Filtering-Correlation-Id: 357e99b3-041f-4618-5e4e-08dbe6aaae61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qnnGZLSzozY0s9+CiRb1YiI+dQVV0GgqkqcZpZ4XYWHWvlGLDdApxMxOFPjCu7RrpkHcSdDBrTglWn6tUXVFZA08U72/TPF6C8ZeZQ840uKhLd2069nbhkKLyjCydtbk8r3isB2FxBI3ZBB3qj1clSP56fqNIDw/+an92JSLzav83UbDJi7QjKS4nR9Ud9o00ITQftfFhyIcHykuxNiyhX6YxnmPgXnJeNP0HfTpRGwx5an6rBBEynqDjf3nO1y6BJDqrjKtr2Mv/7QAX2Qm96PcR7faT+BkDdo3/zWKgFP5/JRTbLHStqG2LMAgNMfu7cj4n/DfpjteiwyOnLp/9eux1Lwe8SmbKCHNMDv2AXtNBiFg0fcqMi66L5Jv6Aopd2QaGRm0IpQh6CiKjD6kvD3K7TsAlQ8A6kYHVDsXO+yxv1BFRYDaHK9/qmohRskiY1N8m2+ZvcLo8YyP06sO0r7ZRIoAy5GhS7y1JXTETbOBDsad2D2U0LnqEvLxllFE36QL0i+oBG7zP9D5CTAcp53tc5YYQQbFXgOBC2Es5pnfPkRz6ug3LjLEfkera53uzE3nYx1tMR97inNGYvDERtndvBhr5kulVOhidXrpcoP7FxDEOz50pUuCsoZB8UryK7YQ0+ymu/NdyIAPuOfEkA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5719.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(376002)(39860400002)(366004)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(31686004)(316002)(66946007)(66476007)(66556008)(6486002)(478600001)(38100700002)(6512007)(5660300002)(2616005)(8676002)(26005)(6506007)(8936002)(6666004)(2906002)(66574015)(83380400001)(86362001)(41300700001)(31696002)(82960400001)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2wrWW1ibG56d1EvUm1zQ01ITVlvMGpJcldnNWVQdXpKNU5JUmZaUWtVVlVq?=
 =?utf-8?B?TXU3TjNOYkdBY2pQVzZhR20wcXoxdTBRMHBGT1NrK0UxTXNyTmJOaUFvRWZO?=
 =?utf-8?B?N1dKM0VUWnlWRGpTTmdTNUh6L3lTb0tzWnNCbWJlS1Y2b0VJcXloYUdyVCt3?=
 =?utf-8?B?OW9lVmFxOXQ4Wk9veWdway96eElQT2hhamI3RFZzZzJ4Y05vNXBxRCsrRlg3?=
 =?utf-8?B?WHBTZEVmTFFrd2Z0aE40VTg2Tkt1RVdnck91UmZCdHBXM0w0RVdwc1Vrb2JP?=
 =?utf-8?B?elVMTDFoR1RVRnl5cm1VTHFBWXhNR2dsQWczQzdJR1AzcGJsNDVnVWsyVTNk?=
 =?utf-8?B?U1Z4dStjVGRVeitoU0M5cE9xSW00aVFSUFNjK3VRNFFqTllOZlFtbXRnWlZa?=
 =?utf-8?B?N3RqVlp3L1h3NERZWTlIcXNiQ0RXQnhxZkJVMWhOYnFMNm5URGJqakVyS2NU?=
 =?utf-8?B?L25nZGVOS21FNyt2R0srQTI5OFBsbTBpdkUxWWdjUVNpV2RUbyt2bjFBRHJ6?=
 =?utf-8?B?Ujl3SWpva2YySm1rekJoemgxRGtrRTc2bzdqdkxFTnhiNkd2UGVXNXdCZU9r?=
 =?utf-8?B?c3hycVRHckJGQnJ3WnR4YW5MUGhrMFNnYmpJYldWNlZwdnJpMzhFZEY0WGNs?=
 =?utf-8?B?aDBURVBwaEhPRUFVaXRpUSt6N2VnUm4xOHJueUJhOUFBWlhqQ2dablZ5Rkpq?=
 =?utf-8?B?NCtCNjlIUVEzbFdYc2JJZjc1djdFblFoa3hPYWFtUmxQczJWbGp2Umkxbm1m?=
 =?utf-8?B?QW9oK3hPcnJUTHFzRHVXNWQwYzhRLzREbXpLQnNGY1BGVkdDc3N1V2NySW1z?=
 =?utf-8?B?ZUt3WnJjTmJITHVPTmxCS1JpSmRnZGFjU2xFdDkvdWxUZmlvdS8zM0hZMEF5?=
 =?utf-8?B?dmt6a3N2ZTNNalJ6MWlTV0J3L0ZpdDU5L0ZOLzY2cm8yTUV3MGk2MTZrdUJR?=
 =?utf-8?B?a1pwZ1ZKbnZpcEhBYjR3V0xZMzNzSG5DS1RGWG9nL2N1TFhhaUZPbmJQckti?=
 =?utf-8?B?eVVDWER0YjZwVHRPSlBNVW45NEdLQ05WVHoxVUF6VmZLc0NIeDBPY2crRUk3?=
 =?utf-8?B?a1NzYTM2aCtZUmJCRjlqMzE1NC95bmZWNXdQME15dVdFVmI5SDFhT3o0LzBJ?=
 =?utf-8?B?YWVhS1J4UEF4VncyaVNqNkdqMGZRVUFZV0wrTXhWR01XZ0xiM1N1cmY0c1hs?=
 =?utf-8?B?Yys5ZG1tUFoxOG9vb0cyLzdHbzJMMzVHbURYUGZqRTJYbzBCbEVvaHVoYVll?=
 =?utf-8?B?OWRpeHFIaUVNT1d1ajQ0Q3Bmdk9CTUJKM2dsY2tPd2podXA5ejBYU1EzRmRt?=
 =?utf-8?B?cEVydmhrbnE1WWloWU1DNFJNc1o2bTVmSjBxVDFKaXdRQlZEZmJPbVpBWEVi?=
 =?utf-8?B?QWphdVJ1NFdtemtJMVhGbnZQaitOOUF6MEw5VE9aajJoc09VOWd3ME9jSHZw?=
 =?utf-8?B?WlUzMEkwUWZyczk4QmhqM2RDUXQ3YmVUVHRUdklyc0RuZy9LZThXMWZMTHBv?=
 =?utf-8?B?bUdsYkYrR2F2bUVFY016UmRLNlQ2azY1SlA1SDdHbVRLVUZtcG1pbUdJR1pE?=
 =?utf-8?B?ZUplRjVZK0YycXNSTDZKUWVsK1IvWEFONFJ4Q3NhdkExekFOQ3gvME5tbVJh?=
 =?utf-8?B?dDdXczNPeEhHMHBxS1d0Mk1MakVneWRLNG8rbk5iaERqRCtzY04zOU4yRjF1?=
 =?utf-8?B?V3dUMXhOZERBQTVyTFY2by9SYno2Slp4a09kdmVZb0J2b095aGJVMlNUR3Fx?=
 =?utf-8?B?Z3hwU0VVU2xyczRBMmVGWm51c0QyV1RVT2FoR1ZFSWdkNmp6R2pnSllMVTdi?=
 =?utf-8?B?UnFYY3Q4dm51dGtCd2xEL29kM1QvQWZxaU1tRS8xVGlycDJxN2U4RGV2NEY4?=
 =?utf-8?B?d0wzT0x4bHVlektJVUVDblk5bjR6cEdsdjNFMmkrakJ5Q1JmWTJ6Z1MxMkkv?=
 =?utf-8?B?aCs1MW9ZVjV3UTdZeCswanpYZ3RMVFlsU2J5WUN1Ujd5dEovQXNQWjZibXlO?=
 =?utf-8?B?TWVPTVlVY0VkT3Vra21VTVpiZ0FFUEhLZEw1c05KcGhsUVUvN1ZZSFpaNXI1?=
 =?utf-8?B?SkN2elNBT3c4Nk0zbXg4dlhGMHdiMW5KYW1manMrN0tJdlIrWFAxeXlSNjFH?=
 =?utf-8?B?Kyt6T2E4OG1CUitLSTdzb1JRRzBjNm5rRTFmdG81U0R1MEpjL2RHZkQ3NzBW?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 357e99b3-041f-4618-5e4e-08dbe6aaae61
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2023 13:48:15.1220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gqdCWcEG+BVeM4rMlUDPVo1ZP338OuKI4dNc91oxFh6EhvvcEVaeK1iL6zFOncw2++p0JnP1P9w5m6a5ILnV08J3ZKy3vudTVeE49zK1d0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6922
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option
 to debugfs
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


On Thu-16-11-2023 04:07 pm, Stanislav Lisovskiy wrote:
> For validation purposes, it might be useful to be able to
> force Bigjoiner mode, even if current dotclock/resolution
> do not require that.
> Lets add such to option to debugfs.

Do we have any IGT to validate this?

- Bhanu

> 
> v2: - Apparently intel_dp_need_bigjoiner can't be used, when
>        debugfs entry is created so lets just check manually
>        the DISPLAY_VER.
> 
> v3: - Switch to intel_connector from drm_connector(Jani Nikula)
>      - Remove redundant modeset lock(Jani Nikula)
>      - Use kstrtobool_from_user for boolean value(Jani Nikula)
> 
> v4: - Apply the changes to proper function(Jani Nikula)
> 
> v5: - Removed unnecessary check from i915_bigjoiner_enable_show
>        (Ville Syrjälä)
>      - Added eDP connector check to intel_connector_debugfs_add
>        (Ville Syrjälä)
>      - Removed debug message in order to prevent dmesg flooding
>        (Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  | 59 +++++++++++++++++++
>   .../drm/i915/display/intel_display_types.h    |  2 +
>   drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>   3 files changed, 63 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 915420d0cef8f..aa95ecf2458ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1414,6 +1414,22 @@ out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
>   	return ret;
>   }
>   
> +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = to_intel_connector(m->private);
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	intel_dp = enc_to_intel_dp(encoder);
> +
> +	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_enable);
> +
> +	return 0;
> +}
> +
>   static ssize_t i915_dsc_output_format_write(struct file *file,
>   					    const char __user *ubuf,
>   					    size_t len, loff_t *offp)
> @@ -1435,12 +1451,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
>   	return len;
>   }
>   
> +static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
> +						const char __user *ubuf,
> +						size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *connector = m->private;
> +	struct intel_encoder *encoder = intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +	bool bigjoiner_en = 0;
> +	int ret;
> +
> +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> +	if (ret < 0)
> +		return ret;
> +
> +	intel_dp->force_bigjoiner_enable = bigjoiner_en;
> +	*offp += len;
> +
> +	return len;
> +}
> +
>   static int i915_dsc_output_format_open(struct inode *inode,
>   				       struct file *file)
>   {
>   	return single_open(file, i915_dsc_output_format_show, inode->i_private);
>   }
>   
> +static int i915_bigjoiner_enable_open(struct inode *inode,
> +				      struct file *file)
> +{
> +	return single_open(file, i915_bigjoiner_enable_show, inode->i_private);
> +}
> +
>   static const struct file_operations i915_dsc_output_format_fops = {
>   	.owner = THIS_MODULE,
>   	.open = i915_dsc_output_format_open,
> @@ -1529,6 +1572,15 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
>   	.write = i915_dsc_fractional_bpp_write
>   };
>   
> +static const struct file_operations i915_bigjoiner_enable_fops = {
> +	.owner = THIS_MODULE,
> +	.open = i915_bigjoiner_enable_open,
> +	.read = seq_read,
> +	.llseek = seq_lseek,
> +	.release = single_release,
> +	.write = i915_bigjoiner_enable_fops_write
> +};
> +
>   /*
>    * Returns the Current CRTC's bpc.
>    * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1611,6 +1663,13 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
>   				    connector, &i915_dsc_fractional_bpp_fops);
>   	}
>   
> +	if (DISPLAY_VER(dev_priv) >= 11 &&
> +	    (intel_connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> +	     intel_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)) {
> +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> +				    &intel_connector->base, &i915_bigjoiner_enable_fops);
> +	}
> +
>   	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
>   	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
>   	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9a44350ba05dd..559302ff79c1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1764,6 +1764,8 @@ struct intel_dp {
>   	bool is_mst;
>   	int active_mst_links;
>   
> +	bool force_bigjoiner_enable;
> +
>   	/* connector directly attached - won't be use for modeset in mst world */
>   	struct intel_connector *attached_connector;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54bd0bffa9f08..5b8411b9fc30b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1172,7 +1172,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
>   	if (!intel_dp_can_bigjoiner(intel_dp))
>   		return false;
>   
> -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> +	       intel_dp->force_bigjoiner_enable;
>   }
>   
>   static enum drm_mode_status
