Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E84289EB2F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 08:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843121131C0;
	Wed, 10 Apr 2024 06:45:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bKrJCDhe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E361131D6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 06:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712731546; x=1744267546;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=n+6fcYtaI8JTl/0UoTRazPslGAX+8uj6HM/v8xl79cA=;
 b=bKrJCDhe5qa0gon0hjQYaER7ej/d/nSNq8Fxq5sPhMhQoy9jEcyaMKgF
 nqYKyi+Jpmb864BLfpX8dS3R9Ib4VLJJxepF+bRPSkVIwgxP9mMZfpSAy
 GR5GPbOqIynALby5kZIflvZEw5M6UurHJjlm4DEsAHzKuIdAVADBmROQZ
 ndxa2q6azMC8b7QLMW9N5+mEujfkVYyOVJvN+QGqiozvhYYRKdpxGpZcQ
 WYgYZmGx7HggnIdHwt2Mi+F0dOz8S+YvvS/lz5bEdfeOio3oRf1nMQcyG
 +ooPniIL5CaIZ1qxkypbFaj546/ruERhi8xZp9jsuzgY0HDyVfWt3DUN1 Q==;
X-CSE-ConnectionGUID: F5Js7f9+QMWtfD3uq16Yeg==
X-CSE-MsgGUID: 0rRakw4tTaOVNCQoDols9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="33480550"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="33480550"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 23:45:45 -0700
X-CSE-ConnectionGUID: 8qpKeWjbSjiYu1PzDwtgkg==
X-CSE-MsgGUID: mxtja2frR16lYu/dOlNPtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="21024648"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 23:45:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 23:45:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 23:45:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 23:45:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 23:45:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HezjGFrv8BbziPQEuN3vci94Ole76nlEp5FRfLN6634NUCyjl4wBPS1SUqi7YCmwhU3lNhC+FtTyjxweX/J46Y86aSiFrxR6wG00YHvv5IZnmUqDJPRwF1qDRhIEFjzlnK1RcoFE+VCs+Kx7oEhKBK658XxCOPUoioVX45B0tIApOboDmJMNI4p+VmRs0ONWxqgDfJJvIkRYICg3BCSZFDaTaXyqyelH059WgTBQ0/+E4m0chW/lvHYkbdPIG+cuBSvss1vYt0JdBvpnN5aAkX/mjSAswaU6+4HlD3yYIIXMgAH9lhm1fzgA0GIgqqHKk5bZRHnuZ9WVK7XC2Zk/YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ujUxmrwozpXntjREp38mPg1gQu8A6im5N1fMQ6Hq4CE=;
 b=i99p0p39ZiFjWQf3AbI4/E9H7IPIUFdvf5Oobb2TTSdP/gMC9MqmDoBZTrgtv8RQyEUMp89FqFLSlbtP8l0IDckJN5xc6DEHITLlPdtIEbu0IO7/4QT7FeHUc1SBVR2LbRLSz9CeWKOoP9G5FLufQyupqG523+Mz9WqOw/v1t78bEvTgajmVS+pdVP6n4PHySXOcOO9LAziTaTG3tayKmOF6zPDh52igxEuivbbtnq+oH7lSzMTM2b/PVlQn1x96DJ+8tiDZKaNwaPiswDKHbtNdt/PhrZA4bu+LI7Hj9qoMosAvhcxihjakyFY4tBd/6renWXV67XtVPNExzF5tdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SJ2PR11MB7600.namprd11.prod.outlook.com (2603:10b6:a03:4cd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 10 Apr
 2024 06:45:41 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c%4]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 06:45:41 +0000
Message-ID: <49035fed-02e0-4bf7-a983-d4362ad67bac@intel.com>
Date: Wed, 10 Apr 2024 12:15:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240410060549.201177-1-ashutosh.dixit@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240410060549.201177-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0006.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::10) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SJ2PR11MB7600:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SgOv8uO5iBpmCDefVg1W3H0lk63x97thz+AOMdKKg3LjlxBO6kEJDg5Y7Ag9BEYWW6XIazDV0MNrE9bMn6fQX3XocFO7JTy0Kic0lEoC6o5AF7JTgGyVnT2NRK0YaUMP7RHhxGOAwQZ2NhoyyTsnvQHeXywQNuyDK8aVTG396UHYPsCEUK6/32g88bgGrWhznDYYgFI31duPIfU0sQScdsWO2JQEMrrpRpb4aF3jNra30u0uDvBkG3NW7Gkmgu5tcuNwGtKY9lr5Nv0PYFspJmuQ5l6B2h699wmaKvOh2eV5pFvbeTpP+yyMDIybaJUm9LEig1LaogAD02yBP+wTkEC0kpRmcqFoTmPTvCbaqtFTQcli0aIKgbRYpsn8xhqHDMU2WLPw+nBEI9lHLH+50zyNPo+Oz9EKt+z1mQ7oo0yLJOHQhXSMNCDQ6UHGuF3ezSeYymvh3/zkWKQ0y4Xps2tfb2TGkqCfUuhhdStr1g8m3iiJkbCQfEeD/c5grlQrVd+7HPIVhEuepPpBoMPAWkbtGNRlvuAhjCPQUq/bg4pZtQgPZZ8LwH2aUrr61TPBO2076LmIUHS9yBcxwweDiwH62YAH/zohcK2vSoxxDPk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SjhHMzZOOGluN0xLRHlCMWVubUI2MDV3RDlhRE54eTNqQStSNHNhanJYOXFu?=
 =?utf-8?B?eUN6Z1h0SFNEK0h2TjAzeUdDMDloTnphUlVFQkpHRU9LMHJIQU9QWXJQcC9r?=
 =?utf-8?B?c1VxMElBbDh4QlBZQmcrNm0yQmRmcjYzNVRKUDZvRGhLaXhrUVBheGFIV3Vx?=
 =?utf-8?B?R0x0dHJhZnBuVnkxMGpVZWsvYlRuQlFkUHNmdU9FV1lrdmhaUmlSdWdSQnB6?=
 =?utf-8?B?RmE1c3pGSG5EV2E5OGNRVHVtSmVrMWI1dVFJeENUYXUybjkzNmxuNGpLRWpM?=
 =?utf-8?B?WmdOT2R5TUNCdVRmK0J3NExaSjV3YVVEczB0NWdGK1Y3M3kvYm1TYThNazV5?=
 =?utf-8?B?WXh4dHc4cFd3aVVETmRtZ3hYOEZPYjd6Q2l1TGJNS2x2d05CUUl6eTh0azFD?=
 =?utf-8?B?eEZYWFhSRmprd0ZXTFUzQW9RZ2I2TFFvR21BaE5CWVBoRnN4UE5ucUNrOWx1?=
 =?utf-8?B?alo5ek44bElla1pYSzVIaUVmNFI1cTJPSndpZ0JOajhYZTZwMTI5TkRLbk9w?=
 =?utf-8?B?YXVQTjkzejRvMEExczMvaFZkYk5TNk05OHpBbmVHUzJlS2lrdVJFLzlzSUd5?=
 =?utf-8?B?Rk1zV3lnZnkydWMxNjRYaFBsbnFZU2J4S2RsMERXSSsxZCs2dCtCWTRkbVZ0?=
 =?utf-8?B?cEROK25rWmF5MDcxSzVRY0ZnSU80ZHpHYmcyN2hmS21tVmN1SUdBTXpVdnNp?=
 =?utf-8?B?VGRXNmFjZWN4WjhYVEV4NEFQelhyUGQ1L0FNWjlEQXZHRGpnK0RMQllPNTdR?=
 =?utf-8?B?OUducXZnY3JKUEMyMy9OejNCSHRsZ0xIL0pJNjZ5US8xd1Y4eG1YSDF6WC82?=
 =?utf-8?B?TXpnQzZiY25pQnpUeFlpTlNiWG1xV2xRc0hYYm9ibXNmVytwS2hBZE9YSzV5?=
 =?utf-8?B?MFU5cEZhNTZNSVZ4dVAySVFHS2VCc3dXMmNQY21PNjZONWZDeHpBMzdEcGhr?=
 =?utf-8?B?aVQ1R2p6cU5ybzV1MW9CM1BLc25lMVNCUXpxSVJUZktuczQ4M1E5WWJvVGQz?=
 =?utf-8?B?Y1RmSk5TakZEblc3VFVkTDFCMmNqMmI2cDZtd2FBRVUyUnRMMFhLRmFsV2RF?=
 =?utf-8?B?WkZCOEZMUDRBZXZPcHhOWnJJTmVCYm41TE9rdkRJVHZEaHNaVkFxOE1pUGcw?=
 =?utf-8?B?RjJhd3Q5WnVwalhtMjFmWk82VlVtZllXU3Y5dVVKcGlNNHJoOEtjZ3B1QlVw?=
 =?utf-8?B?WjB5cmFzdWhObnljeFRCNFU3UWdiRTUvU29ub0ZGT3ozc3Z2cGFBa1p3bHRI?=
 =?utf-8?B?SUYzZ2pkekZIWXNNU2JaSTYvZ1EzSGhSY1pTTk1IUEVXL1k1Ylk0ZUcyMWNM?=
 =?utf-8?B?cXdjT0dlT2VRZkF0L0lQaFdEelgyNEc3TXRoY1V3UEpoclU1YzhNRWZxbEE0?=
 =?utf-8?B?dVFDMFJKNVRycTRtb1laTTVyVktISDdFdXBoOHMyOUQzRVN5ZTNxSzA2WUk5?=
 =?utf-8?B?RmR0UnZHVWdUMWxaM3JiOVV0aDRSR2FWUWpLK1BtKzVNM04rU1V0OWs4VU1v?=
 =?utf-8?B?WFUyYWxsTWo0Ymw0QzJzNE12RDJ2REVCdk5kRGI0cGZRMHZXMVRNR0pHYWMr?=
 =?utf-8?B?RGxqNExuSHBxdUFJY1o4ZGo0TkFsWWIraFNmeDZITjZzOFZ3WElWZTluYkM5?=
 =?utf-8?B?VjNEaVJacHhqWmlXMWJNYzlVMmo1aHVXVjVoQmtMMk0vcnFhRkp5QWJGSkc2?=
 =?utf-8?B?cjJtbTVhc215d0hhdDU3T0gwb1NyaWtmSzBvVFpHY2hhcmxmVUhLUkRJa0Zv?=
 =?utf-8?B?Rk9mY3plT2dOUjJPVFFFZEJFZ29nTmNtNWVQVDhqK2FTeHRBTldwQXV5eEtS?=
 =?utf-8?B?Mkk1aG10U0tndkd1QXpSbVRrckRRM0JUK2dnVjdCYk9IZXphOVNlSEpzR1FG?=
 =?utf-8?B?bkVmbXAyVkZERkh0dnhyN3VpL2t2dTVxUy82QytWcXVUMlRRSmRvejVEYUMy?=
 =?utf-8?B?ZnordjNLa25pU0ViVXVTRlBMTmVCZ3hqUHdsbTVhdGROZVdaVXQveDFxNlN2?=
 =?utf-8?B?cVZFanlzMG9pNnoxYUZCdHh3NDhBTzBEeTRCS1E3M2hBYm5VL2VEOG1hTFFF?=
 =?utf-8?B?OVJ5dThwZ3pDNEtWWnhmUk5ML25KMGUzak5ORkIwQ2gzZ3JFbFdyNjBNb3Qz?=
 =?utf-8?B?RVFmTSsyeHQwV09EcktHbGRFVlUrVlIyRjJBY2NvemdQRVVZUmtPVXE4VS85?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35ecf646-dd7d-417f-4aa8-08dc5929d68c
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 06:45:41.0495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +eNGvYCsuJNL/2OIWuM+avgFKruPBm0gR6VcDKcFqExb/X4Bk+M061NkeX3HlzuDmYFKkrrAclS5XXfVjljnPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7600
X-OriginatorOrg: intel.com
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



On 10-04-2024 11:35, Ashutosh Dixit wrote:
> There are no hwmon selftests so there is no need to enable hwmon for
> selftests. So enable hwmon only for real driver load.
> 
> v2: Move the logic inside i915_hwmon.c
> v3: Move is_i915_selftest definition to i915_selftest.h (Badal)
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_hwmon.c    |  3 ++-
>   drivers/gpu/drm/i915/i915_selftest.h | 10 ++++++++++
>   2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 8c3f443c8347..cf1689333ebf 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -10,6 +10,7 @@
>   #include "i915_drv.h"
>   #include "i915_hwmon.h"
>   #include "i915_reg.h"
> +#include "i915_selftest.h"
>   #include "intel_mchbar_regs.h"
>   #include "intel_pcode.h"
>   #include "gt/intel_gt.h"
> @@ -789,7 +790,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>   	int i;
>   
>   	/* hwmon is available only for dGfx */
> -	if (!IS_DGFX(i915))
> +	if (!IS_DGFX(i915) || is_i915_selftest())
>   		return;
>   
>   	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
> index bdf3e22c0a34..19e5076823a7 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -111,6 +111,11 @@ int __i915_subtests(const char *caller,
>   #define I915_SELFTEST_ONLY(x) unlikely(x)
>   #define I915_SELFTEST_EXPORT
>   
> +static inline bool is_i915_selftest(void)
> +{
> +	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
> +}
> +
>   #else /* !IS_ENABLED(CONFIG_DRM_I915_SELFTEST) */
>   
>   static inline int i915_mock_selftests(void) { return 0; }
> @@ -121,6 +126,11 @@ static inline int i915_perf_selftests(struct pci_dev *pdev) { return 0; }
>   #define I915_SELFTEST_ONLY(x) 0
>   #define I915_SELFTEST_EXPORT static
>   
> +static inline bool is_i915_selftest(void)
> +{
> +	return false;
> +}
> +
Looks good to me.
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
>   #endif
>   
>   /* Using the i915_selftest_ prefix becomes a little unwieldy with the helpers.
