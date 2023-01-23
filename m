Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2566788A9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 21:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4211B10E585;
	Mon, 23 Jan 2023 20:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CEC10E585
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 20:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674507065; x=1706043065;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dN5Ly7oCQOCL0ZZIzQ310HBo3h2ZqZh3aNcuAvWx2dw=;
 b=lE5CKQ8m0r7QYM0aoTZzikLytEUyMPK2V8xgW2yXAX05KyVXfgezMGUP
 wwFLnyB5J6u3ib4OuX190hITpfzorPiVZcQ7R/B6zvdBqY+m1AqO9/44k
 cKmy5UArG/N0G4VvW1ywguSQbGLoQGSQR50Q5d3oqKVKsCYgDeRKtcGv4
 x+RUJSkmmBsFmnTlgyNChiCgL2w6UEv0xhGVs/Oqnk5Q17Yv5oLuLWfJu
 55TrUzjbXi7noBZidWst7Y9wqLtefkLm404z+QE++07Os3ge0L3IEUBmI
 mU6JpcbMkS2uTi82+8Nq6VOqXClbzqfhaQTaaYDhCQSWHO+egrd5m214o w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="314043938"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="314043938"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 12:51:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655163374"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="655163374"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 23 Jan 2023 12:51:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 12:51:04 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 12:51:04 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 12:51:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UIh5HSdEPfttc+VWGCLTV/18n3MTF5uq2UxYOk9etoCItKtyksrDKc3VaPdhifYrCNVemkELsEkdEGCO4YAV/busZxj4DUAnEhItjGqhtw8xbq5WYTOqmjZiMNdYXFTOo+z1Ho7+TFtsrUttF7Z+GI2sauTa9ZL9LXF6xaImnVaEjBHyTrpdUBe6MDT4Ai1zwjQxy8/W1CLZwtflbHyklRLNW46yy7RVDDmDCXdYRDKi9Mln/BxNKWQWiKNXo1gocHvKA6F4XXEf0huSdbP6EnWkLzWj+o4yJ8x4ZmqRNar4e1rJnQ8FF5fensC+zP6+nILSkY7yFD4dpWm0nYGzIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lS+2maDQ18G+ni6uzhHpn014PtGww5rvlrZBiD70Hjc=;
 b=LkmsWZRPVhtYZg6y3XrtYe5k2gAN76dwb/UVfNtl/kkbFZkLM9Pj5bfgSyCFxlh7+OWyQrRX5y4NSWhSfyqQSqyEKktpqQ16jsY3V8HTtvJ0ThuKI6lagj3NfyVh+6+FdDlX8YXSjtUGFl3YGwQQ/i0LeF4Tins8ewgHvNMrqaN3HSXt8mqb6fzOCNt3dSdS5p9JMkRpNaRebMHFlvSQLruBdwVbJKH0c+02QS0V/8O+reVlA7OvdVLrHvUVIRMZqkK0RLON50yb9APclj+TjLMV+4knQzYIZ1tr7EruIsR4Tvlx+c5QPvETLC4x1kB+IccbO/JHiJEDt2HNcOcSPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB7917.namprd11.prod.outlook.com (2603:10b6:208:3fe::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 20:51:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 20:51:00 +0000
Date: Mon, 23 Jan 2023 15:50:56 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y87zMD25KJalZQR8@intel.com>
References: <20230123182021.31239-1-gustavo.sousa@intel.com>
 <20230123182021.31239-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230123182021.31239-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR05CA0165.namprd05.prod.outlook.com
 (2603:10b6:a03:339::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB7917:EE_
X-MS-Office365-Filtering-Correlation-Id: 60812824-a6da-4d5f-0879-08dafd838888
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YmIYfeo9fbrQP8zuQjH/XpquVbtrlJ7gh+YEhL8IRJJhKWOElogPIM9PlCrhkhnDeudDqOYC+cUoB7bMU2fHYeLiBX3YDMfZ7HszXErjf+MaNKqIsQXxeXPF9KfDpRVvBIQvaO24arBnwe/SK+XCCPC8wSbBadvumCldLmn4mYTppWoWT/he7mx0PHURJSVR6cYlqcaBJLKMaYCRdSJRoYKwhiCi7/1qeYMeAoyfLj4Hf5IPfsfdhf6Kr0TEn8Gskfzb2Po3LuGWMocrMnX8GQ61K6VvlVeELHevuB/qrRWfnrWlA5Q2qcLjTRePdQ5dxVET+KEzZJhW4Xx3grLOvxbBcv3JQztltVk1q3qnxh7m66a8DyykIKjGDaoSlS80pmS62RcpLRT5KMsK3qdRz9dCmMrt0aKNmHGAnc1rsVPlNNHTAYgDO1RHWAvBTPIPA1NhyWeEwF9rY63tG8NwiyZeLHUwJvJWD83G7ArWZqt0iY4JoK2tEyGqWCwS9uIG2hAqyOhanNfCmzovNB82wxKG8Ue5203raMakwV2+l9dSs0gBKvQG6glGZ3bQLI1za1xkQigFOgednqsgtUebXDs5w96tJQsbSjm3aXrjEMdZgbK9bwsQz1WLqrOOTJiJQnicYv/epe7OoJPbBALxmw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199015)(66476007)(66946007)(86362001)(4326008)(8676002)(6636002)(37006003)(54906003)(36756003)(66556008)(186003)(26005)(6512007)(107886003)(6666004)(6506007)(83380400001)(316002)(478600001)(6486002)(2616005)(6862004)(8936002)(44832011)(5660300002)(41300700001)(2906002)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zzb8fD5MxrgPd1tg5y+lMMoQjrVnha9qft0+SYOo/SDikK1H8mBq/c7Hc5DX?=
 =?us-ascii?Q?/aH/J3YRKjnAz3jymaMHcE6yjXmo9CsWjZipX6plAgI1ECQA1hVS0bWw0l/5?=
 =?us-ascii?Q?ehocfo95RH0FCJd+oE+lm8S59Fq1gKm1GFEdJZMnsuL9K+LUd/X9jyOygByd?=
 =?us-ascii?Q?CfCRmnPUwc3K6h8As2WKi7N2tT9iYQEfy0+GSkA6sZJ9pywSOdpJ6t0GLk87?=
 =?us-ascii?Q?Fi5B9lbO6c/NK/P6UtnKmjd1kwOItjvVqZmaRdDlTWhFb/5Gk1IhZXQsqgNA?=
 =?us-ascii?Q?fSFdZAGjeQd1ajfZv0FY2o+T7tyYi8zRr0VHVYXl/BqlxeljVQvnJl0x1gAg?=
 =?us-ascii?Q?vZ/xhqwQpMbJ8C9yfjRhbss4Ql6CQOI3NOQcKnBbA04fAilKYDyu5F7iFmNG?=
 =?us-ascii?Q?D/G3C+atxDLzJfs8JslzgjbeLTfw3ZhBRMnZwE+hKxvSyBSiMlfnbz/t2wgq?=
 =?us-ascii?Q?/lMK0zEGt2iWWEz1WOczJqTDBIshSp7Zul7Ra+A6koYR+7zgwHq3V5+BuwnT?=
 =?us-ascii?Q?vf9zlWRO26ogYJYSE6IRTJNuAWCYf9URy8vrbEevad62zpn5rfhAfSbyVxRC?=
 =?us-ascii?Q?qDPgUz6q25ccs7OJ6qiiP/PwXcPJhKyQLAOaAh5KBW9TjDhkZnoofCi7M3EI?=
 =?us-ascii?Q?w8mPFGAlNZQxJWX/huxGgDmBHRhHBa8ykKMQjoaOhjQ1GPnoeYvwvHrJxqPz?=
 =?us-ascii?Q?/pHy8jCSVQUqx8lq+jBs76xxdAsgk0DcZI0LBB3C2tHU1aCzrdRhUZh/C1fT?=
 =?us-ascii?Q?FzSzEnErgmz1Rn9KxqMsOIZfOZ32EvjRux6AJMCijXyqzJKpLhesfAXjv5Vf?=
 =?us-ascii?Q?qCoEI6UAoXxRDCUwITlo4MX+4HwISmO7NX3ewFXIxoPoSU4RejblUk6yPG1t?=
 =?us-ascii?Q?hV77GLrAn55PDChW6tFMm09Rs8Ju+2ad7t2CtIhz4Y3B5Pc02GFbU0M6drbT?=
 =?us-ascii?Q?ZuxJgppoYZwYJ4ygmVuyxBVfDy7fJ3lLBF0+1MG2Bf7l1/HEodpGxJXgiTCT?=
 =?us-ascii?Q?Jvc7nzX7JOLy79GYBqAmPJBwpHR4/OcsCChZCm5qXc+97JjLgPCOn/TRQ7JJ?=
 =?us-ascii?Q?4xnaCEJQE66m0EDzr+jOcLlX/SQzwmz60vhDDnkMp30wlJExrkn6oDAOJPV2?=
 =?us-ascii?Q?q7yuZhlc5rEzCbEEuDgUHz6pu9RKL6/UJMHGFEIZwtYPPFA6qKADbuTxIgzD?=
 =?us-ascii?Q?WyYB3znf8Z0V5ZUDCvQs7QEHUXg8wQnGl6qvuaizbRJ7q1MIHeEBNVv66Kgd?=
 =?us-ascii?Q?arEhMjhraTAkOE6bOZqwGuO7ThC1haR5pjEBRH/kANgtnb5x/5LK2LqaEiYm?=
 =?us-ascii?Q?pmFX+TzCtdG2Zxcj7ih8H0CTgtesKEP5OZSwgDSws5L5j/DkKuqTF/9C/wE7?=
 =?us-ascii?Q?n8d0gNVguHM8Ik+MGnh3ViZS4ESh1wNqOhTzpmPe0CMUUBkMTA5hndFKjTiP?=
 =?us-ascii?Q?X+wxEpUGqe/qjTLiDrPeO06nwkcj/dk1ugZGJZys36l3E79UiJPoT1xSv4fW?=
 =?us-ascii?Q?PFFlEeQvAhG17fbO1CEIOsYwdxFms6K6y4GBHUN6xeAsN+TH3TW7cf3qoZc2?=
 =?us-ascii?Q?Cn/9hch9bpQ3tTriXiAjlqw7rYEdW5EqZRSZeakjJMZIH9g7aIOsL00M2bsM?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60812824-a6da-4d5f-0879-08dafd838888
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 20:51:00.1536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +wESk97OaPw3iSzQRCzfo86aqv7qVhLMo0EeJxr1905tQSHpB+yHglAInjerFmCFLzsHFiPEhjf4hZKOFxp4fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Use unversioned path for
 ADLP
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 23, 2023 at 03:20:21PM -0300, Gustavo Sousa wrote:
> The new DMC release for ADLP (v2.18) in linux-firmware adopted the new
> convention of using unversioned filenames, so update the driver code for
> that new release. Keep the latest versioned path as fallback so we do
> not cause regressions.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 2464796c769d..257aa2b7cf20 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -63,8 +63,10 @@
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
> -#define ADLP_DMC_PATH			DMC_LEGACY_PATH(adlp, 2, 16)
> +#define ADLP_DMC_PATH			DMC_PATH(adlp)
> +#define ADLP_DMC_FALLBACK_PATH		DMC_LEGACY_PATH(adlp, 2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
> +MODULE_FIRMWARE(ADLP_DMC_FALLBACK_PATH);

I'm glad this works without warning on the intrd/intramfs generators.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
>  #define ADLS_DMC_PATH			DMC_LEGACY_PATH(adls, 2, 01)
>  MODULE_FIRMWARE(ADLS_DMC_PATH);
> @@ -855,7 +857,9 @@ static void intel_dmc_runtime_pm_put(struct drm_i915_private *dev_priv)
>  
>  static const char *dmc_fallback_path(struct drm_i915_private *i915)
>  {
> -	/* No fallback paths for now. */
> +	if (IS_ALDERLAKE_P(i915))
> +		return ADLP_DMC_FALLBACK_PATH;
> +
>  	return NULL;
>  }
>  
> -- 
> 2.39.0
> 
