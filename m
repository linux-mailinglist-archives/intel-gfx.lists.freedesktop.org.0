Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F19AE5031FC
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 02:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D35510E4FC;
	Sat, 16 Apr 2022 00:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097A310E4FC
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Apr 2022 00:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650067887; x=1681603887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=siNRL3H++GCQSj1fmwtkNQZgIa1k1PxpGRawBQMkfJ0=;
 b=H9rP36b0+1Rv905d+8d9EWcKkXwMRL7mbh6nuoL4elOr+Gs1QnN63wn1
 cgTjnorPyjxDVMqVWWT7CRdV+DERnT/Jb5tWjB21RBb/Oz0PlEP/5YNnT
 69mSBfFQGB9cqzBkMJDr1YCQl9dHAKjWv6KKY/RTuJONHABxXIQGrWyDq
 My7tZ/ekhvmSM1x2YrHNEE1qWhX3jmYaskN74AQoJdrKKoqoAdIISYHA3
 gSJt1bGkNRk5e2Ukosa5LyGMZr/1HQi0DY4R+E3sHvndCiaRo9Vs0Ya7x
 9qI9Z+pI/tOrvzqDfYV3ho8/Te6dcV41G28x5sNfxyEKaz0JCa+aXDuoi A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="288319031"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="288319031"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 17:11:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="612979311"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 15 Apr 2022 17:11:26 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Apr 2022 17:11:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Apr 2022 17:11:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Apr 2022 17:11:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HGlkByhhLfKDzpUbMNTNQXZn6osVrTozDSoO52X0t6qDHZEU0vgeu+c6AKzbGVnLR5DvzOz5UmZ69rgXb12Oe82TOcghIrFdqWHN0lMVkr0TqGVF+04rwhNycmiZPAIBsvqJLE1xswJyeMSxILgD+0jI90tVJyjQKbCJRoMiUzHnGmdWuniahDZav5e4zbfrb0xUaaMGykJB/XFapN/p/lQwhj9Cr1PRy5XjWnzdcxlmqfIeyqh6mygypiSnh0tNb3nYJKxQji6nFRYExL6HPmGoQOIpkp+4//hp/eM+/N5HhMfRKPI9TOtm+DUuZLvvLezcHghcOibRhCCJQZu8KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=orWinvcgV93jQUeFhBTR4I5015otzq8H5Z1WEa7/y94=;
 b=RKfLhONle66Jjc0G/JCBuIZJvyRT5bwwKOmZfcR3fmmpshYaWzDQxw5ofKffZxC0/faTmm8cIsbEHJTuYiBFl5iX1wxDrRG/83jvMMpEHzdihtZplqXlA8xaxRlfrDiHb8O95OtrnN8nctpEXCvZSnnq0Xk31jjBbqhmX6HP4rB1CO7hLqXZfYODdm0q25ob0kOYU3eJLhziAdZycF4sMo1l+x8jC+ROTaexlt5QiA2t56N6IUmIA+z9HlS7OdYBUgOQ1di58ZQWOc1aEtkh+BB7hcv3WmFipiygTk9eMX+6i/M8ZUgrY82484jMXb0L/OZGRJjTGsitdygtnKuSBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CO1PR11MB4995.namprd11.prod.outlook.com (2603:10b6:303:9f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Sat, 16 Apr
 2022 00:11:24 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::c87c:65c3:696c:7001%7]) with mapi id 15.20.5164.020; Sat, 16 Apr 2022
 00:11:24 +0000
Message-ID: <bede573f-33f6-8855-3a6b-46c02fb4eee3@intel.com>
Date: Fri, 15 Apr 2022 17:11:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.0
Content-Language: en-GB
To: Jordan Justen <jordan.l.justen@intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
References: <20220331231737.315957-1-jordan.l.justen@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220331231737.315957-1-jordan.l.justen@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR11CA0065.namprd11.prod.outlook.com
 (2603:10b6:a03:80::42) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b6eec367-d009-433a-30f4-08da1f3da482
X-MS-TrafficTypeDiagnostic: CO1PR11MB4995:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CO1PR11MB49953321E6FA6D22C7CB2079BDF19@CO1PR11MB4995.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /G0sR8wqb5eIQ0qjCMDpsM4UZGI5Y1qXNizdZFrvvmWNt8wYfr0tcQ1GyhhVZYvvOyeKM0v8VF1yL4Y+LT5NV1DLi3i2zqFLuUcgfQLMgkH+jsyRwuqg4ROjtg/s1HPXCuy6q7JmsPH+ywxYWvBn7MN6BIPDYbOQs2RxwgjCJbTtSnDYvfHoAKmkWRu1op77aGU4uwQVA8SvxSWlWsVbFoJn/hPotX5OFMkNCU6ILsWEuy3DdYlpMLfNsM2aUtF8dX1HCj01M9W2i7lXVrPKuoSLl1dgkeJh8/E1RJrgmwVx51Mrv66o5GZM71ouXgl4ZRs2MUGwNV9O9+z2udgOL9OXWBP8Nv3L6nTABD4iPgXGuqKdiOZD777WMOVsi52IaYYtX5JMRu2P6yi6gKZfXdiTo6AVsdTFqPAU0cF6FjiPL436Wr2zfTify2npnclKuyul6cCCo6gJ1Ckt+aLLpjGjQIELdDwOga7cJIpdhBct+3WEH/4gZgxUUtbudJSS991RKEf661bQwmUFzFRGSux4OOGkgW92MGWgejaMEwlZuQzj3JP6xIWr4TmBygTSXah7MpvoO4Fc3pQVmFSMZAokWvBfwftmdUIPLCTExmciffc1uXgfile9Nw86Qm/DHoWIf6R43XgwtYuKD5zh8Uh9XLNAiRhZ/m+0H2BNidNrsdBIasYKUqb9zyGMkYhkUgKB4mQmNQhpdhANjNZ0L4v1YkOF0+1rNCJGmtbqyB3ipAdQsC+cg1kfccqQZ3RM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(82960400001)(66556008)(110136005)(2906002)(38100700002)(5660300002)(36756003)(86362001)(31696002)(54906003)(8936002)(4326008)(66946007)(66476007)(31686004)(26005)(53546011)(6512007)(6506007)(316002)(2616005)(6486002)(8676002)(186003)(508600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDFDc1NqdVNRVkF6TmtiOVNTdTFjaURMc3ErTmp0UWF2dkxoNFQ2bTU3WEl3?=
 =?utf-8?B?N2gvdW5CSkpnU2Y3b21Nd2trOHZzcEFHRzJ6Z0RGUEJOMVlDd2xObUdiMVky?=
 =?utf-8?B?NzdXdDY1K1Jld1VweUxJbTY4Q3BkckxVYzZKTDZkanNTT1NWa3dBby9pTXBm?=
 =?utf-8?B?cG8vQlhaZkpwVGhUQVNSeE9KY2htSmJiZzFmODZYTCtJYjNsVThiWTBleGZN?=
 =?utf-8?B?bmdqVWdBWDE3b3NjUzNsamNOZXNaNDZYRFRpMS9KVUZqMm9KaktudzBjNUtT?=
 =?utf-8?B?VUVrR0RwbXZQemVWQ2doU0R6OGNpQjMwMjFNYVJ3cG5wTkluRHJvd1IweUty?=
 =?utf-8?B?emhUTVd4dmVzK0RGUzBVTE9JMHdya3RpV3RNaXpuTVozMzRDczNxWUllMWZI?=
 =?utf-8?B?dUlBT3dXb2pwd2g1SXdydWY1eU9jelZPZ1RUenB6ckRkVjJaZjRTbUt0RUV3?=
 =?utf-8?B?OS9MYVpHbEFNUktKN2lxRWs3a21IYk1oSHgvS3phR0dVcW44U3J3VjdTZ1h3?=
 =?utf-8?B?SmQ3NlJMYXh2T2piTFRsZFpOTmhtbHBaVno0bXVQRFpMWFV5TGp0dGJUSUpr?=
 =?utf-8?B?TEFFcFVWc29ncHlYYnJsWmtQVWtpdlV4aWMxNUplMk9PY0ZWMGUyd1FxL1dh?=
 =?utf-8?B?a0R4eVFUelR1MG8zeWc4MDVoSWFZQ2drblhqdUVGK1U2d2VPdXB3QlpJa0dZ?=
 =?utf-8?B?TkR1UjB5SzlZVVlvb1BZaTltdW94MTV6Z0VaTWpXNjZHNmk3VXludkpWVTRV?=
 =?utf-8?B?RG8xeU0za0FLR3ZBd0tDU1QzaGRPVGtONHdQOTArTzZET1RCbkEwTStvalho?=
 =?utf-8?B?b3dDZW5iSmdvU2VReENPb3htWTNuZEZRSnJPU1JJajlkMWgxZWFOd3o3cVFj?=
 =?utf-8?B?cTdJQWJQamZMNmN4RUlKL1RDRzhpdU1qdUpqTEhHQzUyUkZlUktqMWsvL1Bw?=
 =?utf-8?B?WHJybnZTQVFuTWdBRHhKYklkNm52MWoyQzIyUnM3anRlWThyRHhuZ1pNZlF3?=
 =?utf-8?B?L3VEdVpjOGlzOXdvVHdnbklvUXc1TVFKenNhakNaRWVjdWJ1NGFrSHpxeTdU?=
 =?utf-8?B?ZVRrZ3RNenNtV2NmNmdTR1lyWHhEMW93NkIzRkNZSk5ObDVsNkZ2VnQxTFcz?=
 =?utf-8?B?cEFiR0lleGhvRHZtempaeUFFUjFvUHlkSlZJazhwbGRXb0ljcHNMYU0wd2Rz?=
 =?utf-8?B?RlhmUldlRW90MXk1M0RPUnBTNGp4K2d2SXB5UzhwbzRzUFBJTzZYblFHMFNp?=
 =?utf-8?B?d3FWZTFPVS9iUWdaQWdyY3lsL0ZaWU1kMXBLazB1eFdwRmxIZjM0cDd4bk1t?=
 =?utf-8?B?ZS84V2U0T3p5M2pDalRnRlFsdEw3bXJXY1oyeS9YZDN3dTFBekxFemJKM2s3?=
 =?utf-8?B?WjRvZ1JITVBiUDFhT29BK2pOSkhKa3NKb2Zxc1dYcmlycVk5bzFJR0ROSjlE?=
 =?utf-8?B?cThIZHBXNEEwS3AzZ0ZLUkVObkxuM1cwWUp4M0I1dHdJQjBZS2UzQ0ZvSldl?=
 =?utf-8?B?MWpjbmdZREM0RlFsbVkwZWVYRlE1SEJjREk3UXRaT0J4UzBJaFJPQ1J3elA2?=
 =?utf-8?B?KzNGdXg2NXJhcHpVVkZKQ25yOTQ3ekhHQzN6ekdrZk53dzBkMnp6ZXI4QWVN?=
 =?utf-8?B?UGQvdFBpOVdlNWU5VDJjaUxaTGV1TzgrYi8wUXB4bmY5dG5rY1h4cFBqazJy?=
 =?utf-8?B?NEcrU0JLeUxybmd6a1phMDVYeTkwdGJ3cUNWdC95ZTJqZEdkV1d3UGJNZ1FO?=
 =?utf-8?B?WGpibmJUdHJmMlF5Nk55NXoyL0hhZC9nNnRmWjB4c09NMmlmbWZDdXFUaVhZ?=
 =?utf-8?B?WGNqTlh3K1UvcE9WeUx6N1dtNnJyYzFiMlh4VVk0TUtKN2pORzExL3lybGVx?=
 =?utf-8?B?NEp6T2xtUVZrekdQMFk3WFovVVp5L2RrWWdmTjJDODU0eHdVWVpvSVRCWHhF?=
 =?utf-8?B?NDBlRDRNVmtYaC9XeEw2VDF0dWlqY0M3VU9IN0loZTVZUkV4OTlQa3dNWTVL?=
 =?utf-8?B?UU5adS9lNXlNV0N1U2k0d0ZwL1FLN3NaUHpCVDFxOUFsb3JyazlHRzdWVzR0?=
 =?utf-8?B?bHVmenF1aThQWm1kcHVVTkZKQXRhUDFYRXE5L05la3Nxa2tqS0dPVjNtZUNm?=
 =?utf-8?B?V2tKRWt5RzVKYWRTUWJrdHh1R05OcS9TSTI4eXlMSTdiR3dDM0Q5MVl2Ym1v?=
 =?utf-8?B?K001S1hScmlxLzN3YW5lbWh6bVU4L0JTSVJGemtQckpOckFMVGFhcUJTVi8y?=
 =?utf-8?B?bk9KLzR2QlRwT1VPWjQycVBrS2JFNEdCZHIyT3ljMXNwdlZNOWF2OFFCTjR6?=
 =?utf-8?B?WTdwMTVVSEZ6bjBpd1FNV0VwWGU5d0N1Q3I0TENaTDVkTjVvd2UxUEZWcGFT?=
 =?utf-8?Q?OEOtZJSZRSwLoQCw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6eec367-d009-433a-30f4-08da1f3da482
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2022 00:11:24.1526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xH+s3pFgx1I+VUSq0BgFS7gYrR66ueXyy211ijMq/LQBXtLpMk1A7czdIOGxaLGcbLh5Psro1AtgPJgAmTHhvgx0tV8AHm1x6XAjMhF8gys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4995
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hwconfig: Add DG2 support
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 3/31/2022 16:17, Jordan Justen wrote:
> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> v2:
>   * Jordan: Drop stepping/skew checking as suggested by John.
>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Tested-by: Jordan Justen <jordan.l.justen@intel.com>
> Signed-off-by: Jordan Justen <jordan.l.justen@intel.com>
Apologies for the delay, missed this one going past!

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> index e0f65bdd1c84..79c66b6b51a3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_hwconfig.c
> @@ -96,6 +96,8 @@ static bool has_table(struct drm_i915_private *i915)
>   {
>   	if (IS_ALDERLAKE_P(i915))
>   		return true;
> +	if (IS_DG2(i915))
> +		return true;
>   
>   	return false;
>   }

