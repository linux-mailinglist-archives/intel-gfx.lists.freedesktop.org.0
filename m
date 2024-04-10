Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8C789E99C
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 07:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DAB10E3A6;
	Wed, 10 Apr 2024 05:18:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NItkZ6A8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F215110E3A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 05:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712726276; x=1744262276;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Zdu6uwK6k8ane3k3WsI+876z2Ls3K70yinJjOcErZMo=;
 b=NItkZ6A8XcyeFO4+scJkKX0JttknBRDXgHr/nNbYzeG8w6+SF21TgjCH
 /io3aHE1HCu/0XymEhZAUpJyu3d6GQ2uG6HWsGffvc0lBHmETxvYnuxEa
 cNLXils2DxqWRObdw1uiuVtYqh5tzbwUs1W7kupSdwZlVAWhp/A8spG1k
 VZ4FbriaLV/m/Omy6QqQ+jVGZOXYJvxukCIgfoVNxoBYLubsj6/e3sora
 UfFieqp7yK4n+h4tEUdi/O3StjcyPypfiZQMj0fjssWJMN4PO6iPMIY6J
 MYhY/px/+JnsOMaRIspEzUXhEejPiJLsh2/MENCKVOJw83UaayifI6bnL g==;
X-CSE-ConnectionGUID: Fi9b4BjsQ3qJH1GeSJp1Xw==
X-CSE-MsgGUID: 5a4HE5iKSNOf6xiteU4jCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="19457196"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="19457196"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 22:17:49 -0700
X-CSE-ConnectionGUID: 8SzAGohgR9GJpfwBy8em2w==
X-CSE-MsgGUID: lXNvF+GoRj246aPCDWYUtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="57879223"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Apr 2024 22:17:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 22:17:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Apr 2024 22:17:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Apr 2024 22:17:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Apr 2024 22:17:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TO6fJ6yF++ho4U9QMPrrMyc7lYHyNATapHkwjTKH9noVFnC5iT4+PrAHsDNTBMDIqPoT4M9dAEoi5U0faAQVeqfizRbAmstZx0xN2pPp21otiQ4ZqJyI2Djjm+W1P5CGIq4ZIurW+rid7ebPZkljx+enZpu2Vv56pGUGTN7qE8kURnn+SJut6wIeDKZ9t9PPLBIQOtBnFTD+UXQWeEIVWEgTAxiiyU0pQfrNFxmylNVf5gmcZFYWIOKJOMQLDLf87wUo4OYnL+c5ZeaTcu//0tUIhMzunhC6VgkYTXkxtJEVoPNJc3WqrrcNj0EHFEjwXh/TqMFVkPKf7xUUpbLNtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SNHwa/YGQCpKCO1eQZTtZyedSYsH6WR0QgsT2LqwrgY=;
 b=hLfpXYLJmxUIasJAVCMcrnhwUM7pAahQmsgMe07ES6NuKekuwD6Y6AysxMSGin+I6A8H2u+etBC3DMnxK0va1j+kY7CsbrGVgmCflfcxFzCKCtaVt3WnWLYKpc53YiRzh8Ikp6FLdMPcTX/jIdmGoNzVkFyFQoExjCWBEtRen/fARVY4YUtM7kX4+G3+fdkn/JUkD6PPL6gorzM9DkLrTCY/AgI4AsBCOQwUbCY4n5TK/40TNrUJDaJ3SNF9mqwBTDBk8+9rq09eDxnX7kOpT4NiUyv15jcaq8DEMAp7RW72OTNtEiJyejgoSMEAFYhfv+n4ueZaowgwa+6CAKh3gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by MN6PR11MB8244.namprd11.prod.outlook.com (2603:10b6:208:470::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Wed, 10 Apr
 2024 05:17:45 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::eb80:5333:fa3e:cb6c%4]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 05:17:45 +0000
Message-ID: <1e16a3a8-81e2-4214-a07c-74922627f232@intel.com>
Date: Wed, 10 Apr 2024 10:47:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Don't enable hwmon for selftests
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240410045832.149779-1-ashutosh.dixit@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240410045832.149779-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0058.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::33) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|MN6PR11MB8244:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qvaSpCpy47EE4MHdrwUQFUh9EiXZQU6ARwSH0AQfQCyAqakLC6bzW4AXZkELt/ndEk5mVb5IgFidKO7c+3JHpmqHMJLYN16ni2iCLgRTLZEqNlTnX9idaT6cZ4LuyE2Dy8bMhQ7QE5pSflRtoUDhPxT8WcEhI6ulOzxfisjK9NIpSdZvfzl7npqrdUfB50rlTWMtU9XC+5nQ5Zhr884aLYOZjm3bLnFA+JacNpljIOTzC8y40bBsU3twzayVe1bGqDjw5N9+jkD9KEbkRVvsQKiK6qXuNMF94ZWCcUT/64QRPg1HTiSRpvzH4t9E5ReWQQOuzUkrKYO4nYGzbSRX5PLph5u85ha3Brd65Fhwu3th24JVNsigS5cwtzwrgBQSAe67JGYc1hqFCEPxza7d3sZTUf826X4XA+G1uUnwK/DsYiyzMghi9xKVQgNJDAtAbIXgNplWO+gzilau4yPiojDgxjEZDsvALxETa47z7OPf1ER8a8BqHNiTi1lPFgSGFuU+dPe3deq9FWbOOXd0sHGhCMgq3In8u4u4jqS8N/3ssJQ+UzX+9q/K6QaA0AVO3x1/8dH9WJQOL6BCVuiBI12BsONQ+ZI3ezvqDvjRbJo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFhFT1lSOWw3TnFjNXFaK3ZkYnVSU1ZQbWdkUys5SlgwU3U2RjhaVXplR1dN?=
 =?utf-8?B?MHZOcmJuQk5nclpIZE5DVnBxU3dYZzJUc3BzMkUzMUF3ZHJJZGR0T3d3OFJN?=
 =?utf-8?B?bkdOOUVBdkpkQUZKcnZJYWx1dXpqdURmOFZjdG0vOXlBbjBYYUQxY1V2dVZ6?=
 =?utf-8?B?dnZLYUYwTjM0Tm1IWk9NODdTd1F0TnVFQXF2cjFoRDM5bXNDZDFzNnhYcGhK?=
 =?utf-8?B?OW5SbTZCME9ybFRyRDNlU2E1RkNyOWtpL1d1NHRtUnh3TTViZGRMZUMwM0N3?=
 =?utf-8?B?aWRpYWgrQXlEbkwzbEMzbDRWUlV6MWVOUFc4MWhyR0h1V01hRzMvajZsWGxq?=
 =?utf-8?B?WHBCbVNUQk1ScUdMNUF4Sm5EVkxuL1BScmlPemIxd2FPbS8vcFE2UGZ0a3dX?=
 =?utf-8?B?TEpIdU5haGdBNjNLREYyNk5QeEFsVnJNbXRENUo3eTRtakhOSnlNVHVneHNI?=
 =?utf-8?B?YXJrNkxVMm1HdFBrT3RkQitmZkhuOC9WeXczREM5QmM4MkowbUVxblk1TVdv?=
 =?utf-8?B?bVpFb0Z5VzNiREhaQ2xSNmEvbmZFMHYvMTc3SlVSVHg5U2NLL2FSeE01VXZD?=
 =?utf-8?B?Tzkzd1RzaFpjeHJKSE9CdlE1Y0JncktyMy9OY3JPU1k0U0l4Y0NSM00vTDVO?=
 =?utf-8?B?aHo2OWY0NG54bitjNGJMSDFZbTk5MkdITDVvQmQ4OVNvTlhGUk5uYTd0eFpw?=
 =?utf-8?B?K3ZVNVNKTTFsM0pudFozbDUvWDNGL3dDckEzdUJGa2gyV0duRDhROThlY2ZM?=
 =?utf-8?B?ckRzalZCeEczdXpaNVdwNHRTbWZiNXNvT3llNlZESWN4T1QyTlNmTHBnT3R6?=
 =?utf-8?B?K1YzZVVOc1lFR3Q3Z2NnREtDd1ZwakpuaEdRdWdQenVTeUFjVlJibmRWQWsv?=
 =?utf-8?B?MHNGVXhKckxqUFBBOHlhZmJVdHVJN3ZGVWEyZWZqbnNlQUlBUXpDQkV3QWZZ?=
 =?utf-8?B?SklKZ3JSemZNcmNtSllwNXFIQTRCZ1RuaTZHdTViVGYzZ0RTcnlpd2d1bWNh?=
 =?utf-8?B?R0xlbWZFczRGNFZPWkV3bGQ5dTdOS2JxZWoya2g2VDQ2Ty9rU2prQy9ZVUZZ?=
 =?utf-8?B?aDViMW9TbWJ4L1AwUDJnMmxXaGtNd3l6blc0MTB2ZVo3YmRQR2RMUDY0bHpi?=
 =?utf-8?B?RHh2NGpuSjloaHUraXBGV0NLeUNtdTlQWkhZcmNqRWVTRmxTZEdwMGtkTjN0?=
 =?utf-8?B?amN4ajN5VkY3dmhEYTc1b24zTSs0WHpMMTlwdTBlL2d1YkpNb1dvVWpWaFpm?=
 =?utf-8?B?aHUxdmJNY1dnTFNXQjVITnYxOWovZ0tXbzRxekd5VlU0NThEL3BqbGV4U2NT?=
 =?utf-8?B?bE9wV1NyNDhwaVNoTTFJSVdEeElucFJlT21xMmhNLzdnM1B6NnljZHh2RFFw?=
 =?utf-8?B?K2gwazl1Rk9tdGJqVVkxeVVGQ0lsUWViY044KzlKTlBxNFQrV1hJUy9qMnpz?=
 =?utf-8?B?WEJOSXVBOEswS0pUS2RkaWJBZzgwZHBlb0ZrNVg5WXNEcmJWOW1ZMzZpTGtD?=
 =?utf-8?B?N2ZXYktIekRIR1Zxc0FIWGUvaTJVRjJVd29lOWVWY3EyYWdtVzVYclVMTUFq?=
 =?utf-8?B?SkJnMHlGUHUxZ1NoSHVDNkwvQ0RlNUxCMEhuV3R2SnByZGd1V2lrS3ZXR082?=
 =?utf-8?B?bEtYSEhwbWU2THVYeitYdVk4Mk9DNXFnMkhTRk4xZDdZQjBLNmhMTHVNM1du?=
 =?utf-8?B?aTIxSXl3d3Fxc3pRTnhFc2FoRnJTN2d6aFBXM3B3dURpZ1hWV3gwczVFcmpl?=
 =?utf-8?B?N0FleFBGblEvKytlajdBWTJrMU4veU92VGNNbThpUGd6QTd2MGNqWU9iK1Vo?=
 =?utf-8?B?c0xac0h4ZXpFQmp1dkNrVE1YVjFYTmFsMEZpTVE4RVFqQjhPMEFkZFluWG92?=
 =?utf-8?B?ZXpUWGZ4alBpc3IvWHVXL3pXZDV0dHlQNGtMUFMyYWlYdFROSldzNDh0QnNK?=
 =?utf-8?B?b2tDcU5JRVFtaW1OWXdHTUptNkpFRGZrNFBGMG1QMFBWNndyNTJnWDczOGJy?=
 =?utf-8?B?ck9VcEx5ZllMYTZZdEZZKys2U0ZJN2Z5OHRiN3hRdDBORWk5YytZSTg4L2ov?=
 =?utf-8?B?dTQwM1JDS25YRzh6VUtFRE8vUDRXeWxtc3pzbit3Q2k0M0JscEhTR2ZuRjRY?=
 =?utf-8?B?bXdpN2dxdG5NZFEvMTkwekRTSXQ3QVZ6blBQMFY1S1o4V0tqck9UL1ZwN2gy?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d57fb5d-f7db-41db-8b4b-08dc591d8e34
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 05:17:45.7440 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: im+EMBwZUgF2Jn23TwnCZO5xfkO92yYxZBEN3Fcu1lG8DhIFPYHEM72BXMT7oPW6aGatyoLju5yxqI0ykGroDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8244
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



On 10-04-2024 10:28, Ashutosh Dixit wrote:
> There are no hwmon selftests so there is no need to enable hwmon for
> selftests. So enable hwmon only for real driver load.
> 
> v2: Move the logic inside i915_hwmon.c
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10366
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_hwmon.c | 12 +++++++++++-
>   1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 8c3f443c8347..511ba9be4de5 100644
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
> @@ -778,6 +779,15 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   	}
>   }
>   
> +static bool is_selftest(void)
> +{
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +	return i915_selftest.live || i915_selftest.perf || i915_selftest.mock;
> +#else
> +	return false;
> +#endif
> +}
I think you moved this function here as this is only used in 
i915_hwmon.c. In case if somewhere else this function is needed then I 
suggest to move this function to i915_selftest.h as inline function.

Regards,
Badal
> +
>   void i915_hwmon_register(struct drm_i915_private *i915)
>   {
>   	struct device *dev = i915->drm.dev;
> @@ -789,7 +799,7 @@ void i915_hwmon_register(struct drm_i915_private *i915)
>   	int i;
>   
>   	/* hwmon is available only for dGfx */
> -	if (!IS_DGFX(i915))
> +	if (!IS_DGFX(i915) || is_selftest())
>   		return;
>   
>   	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
