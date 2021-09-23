Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C654415FB9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 15:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492506ED12;
	Thu, 23 Sep 2021 13:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6FA6ED12
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 13:27:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="211081419"
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="211081419"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 06:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,316,1624345200"; d="scan'208";a="436596622"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2021 06:27:44 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 23 Sep 2021 06:27:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 23 Sep 2021 06:27:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 23 Sep 2021 06:27:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 23 Sep 2021 06:27:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvIOae9ESEdr1j9DmiUQ50602l7FpFKXGle5ZfAvnbSBkK3RI7KmP9Be4YubT4IsJe+vlbrhmxPw5wxdj4b7jbK9Q8830tUToH/EsfcdI3ey82ErA85gkgZILaldI85bcsOd3ldiQwigVjtCZ0o9J6ZUSkSEQLYxJC3wjVCWVLa8mL0zFXc2hRL0BJ8xPNvESQ3il2jJp4ZyeMZs6fqKkZZBuIH2Mkimt5YryJOHmcmtoZnmweOtH57f9M+4jf3kH4lwE84SDSUqdjGMeVEZGPCDaOS1Mtfa2irRlPZDctFMzqmA2krIK57EbFHAB9RJfQIQNLwu8Vch6FmqPSsuBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=uG7et9NJCjwzr8XEJ1WQqIQI1Bjq0qL2B9s3JwOtReA=;
 b=SjudNguX1OlXn/lyVDuFNabuQD179iic/EnVzZgCoV2dZL6tM41ypWgt4gZ2fNKDWYOdLY60OycCd9V1Wtfu9CZUZ8y2LY+NRWTDsGK7TmswJ+HpRi4WvBv4MnX85wbLKYx3LtaPM0go2vYyDJaG93ftjIkjlubm7ZufQ46TYkX1vuzq/Jk/YNiqKtNAAiBLCMQE8sdG8mstGdCJ0l7KsNgDEL4xgthWr6Ts0wx76y17BiFduUZbhkKA320rCzZ+0v3FrkB/jjfTQcX1iJcTK6YmHdZ4VlT+E04deC+abTvi477x2diReqh5OO3rU1ujitgxQdNpFVT/Clg/+oLm4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uG7et9NJCjwzr8XEJ1WQqIQI1Bjq0qL2B9s3JwOtReA=;
 b=oXbFOtacebQA8u098J3jEfETRiYceqsNpRqbpA0yT38yg31Jph/ytoaxvG8AmWad80xURy0bMe98D0XL4V2rVlA6GYbIMr+L+rSorHl4WoxCiOhps++t7v+P30BV5E4424JKx3gKkn8vPCgSN+UinHeonA+h2T12OXBnQPb+MrM=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5473.namprd11.prod.outlook.com (2603:10b6:610:d4::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13; Thu, 23 Sep
 2021 13:27:42 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 13:27:41 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210917205241.231527-1-jose.souza@intel.com>
 <20210917205241.231527-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <6ce63775-f4e8-b0b3-d139-3733e617772e@intel.com>
Date: Thu, 23 Sep 2021 16:27:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210917205241.231527-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6P193CA0009.EURP193.PROD.OUTLOOK.COM (2603:10a6:6:29::19)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.208] (134.134.137.88) by
 DB6P193CA0009.EURP193.PROD.OUTLOOK.COM (2603:10a6:6:29::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13 via Frontend Transport; Thu, 23 Sep 2021 13:27:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99009156-ae72-4417-3408-08d97e95eb84
X-MS-TrafficTypeDiagnostic: CH0PR11MB5473:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5473E72249E652886274B164B8A39@CH0PR11MB5473.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9xUqCi4b97KZSGbv0w3oZLJ+KmZj66vy2/Q6+69TrzQlAu3yNLRJDb9ZtTCaBonNexQMS3kFxmb6fT8BMopzcdd+iYzVbKgQKbKv6IjQ8xDHJZyk5ZMOeF/PrkKAoL+tZVIEXilfgHoJtDKZYWzGzkd8TKrWMCXnDeGGseC17FJsCE5ZfY8blvCf8vmbpDXKfd2naG2f9qNhNis4QCeavfLHtyC1Sq7v2Es6j49djgRpUvG7t+gB7ZOr3R0GvQYDbMyA/YG+YV3HRGFqUG6oj8JbJm+AnB6Vv3/h7bsd5TQ1Es576GAKuD0d0z4j4Yp4xO3qB4lH6+tgHW8GHAjiFgXchA0xweLsUEjE80owXuKSIdnLsf7qGOSFzXTH1XB68rMILj9ZB7NG5vGV4DfvdV5+EG54DffSle0tWcMNYYIWbMmUVfNJW+7fH6jZmVeqV8CQLpQ1esae420Jd1NSl16smTCcfd/ypIN09Y5yyitdMVbvXYWlwCxAYyU3sk+U1S3cJX8yX5y0/0EgOyBwOzs/t5W/HmKKvqPJe/12g4WLu40G0dkO16Dp/41o+WBMik5cmfMuT46ndTWpqw8nKm63/IzMMc6rfJG0IXkxWchCCo7i3V+QAEH7ZvL45V08N4NpKWoiesvTMl9rvwJorpRgh0XIehN7mZu09JoLtQxX1l1Cbm6ZiHsVlMt6LdqqwvbezyShvUKdOZyakG8vpO6zVYk9pA5Y1R1tPk37N8M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36756003)(186003)(6486002)(5660300002)(6666004)(38100700002)(53546011)(16576012)(31686004)(316002)(26005)(8936002)(508600001)(15650500001)(8676002)(66946007)(2616005)(956004)(83380400001)(2906002)(86362001)(31696002)(66556008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTlYVFMwMExEWC9lOXUxeitBWVlVeWtCRlhuc2NLVHl3UUJibC91Ym95M2cy?=
 =?utf-8?B?UG82MElGWmhKcTVmVzc3L0k4cklsMDVIZUFlNXJiK1pnemxpdVcwcVByWTF4?=
 =?utf-8?B?Z2h1TGFMQlFFaE9uU0FoSGZSZGRZTDV3UlVrUC92TjhqbTRjQW5oMVpBbkVM?=
 =?utf-8?B?MEcwTFJVQlRBb2tWRy96TzFsS2hKbHdPaXFRQm9LZTJHeDBZSnFzMk13M1Bt?=
 =?utf-8?B?cDJlUjY0NVZ5M0ZmQ1lkNWJ6RU9zanhWL1JRMmZXVW81QmhqdG8vT3FlNlgz?=
 =?utf-8?B?cmV4dys2ck5sdFljTE9QU01rRG9nVUF0MFJYS1k1UjhhRlljVGpveVcxd3U2?=
 =?utf-8?B?SlFWbXFuanBheXRqQXFrMDg0anduNGFQZzBqUklzR1oydmZNZlU5OGNwQ0RT?=
 =?utf-8?B?eTJ3R3J5QitqcmZqckEwbG1yMW5jc3RuV3h0OWthVnpON3BaY2MzZlVQWHNW?=
 =?utf-8?B?aGFPaVJCa1hzZFh1RkNIR01UNGFIcVE2Y0ZUdlBOVTRZSnk4bENyZFZEN2ti?=
 =?utf-8?B?MG04QXZOL1FOVndLOWUrRlNsbDJxdE1YbVdGbG5Zcm1GZWJ1Q0VCMDBJY2p6?=
 =?utf-8?B?K2JKczhST2N2RVB0RVl3NER6TWFBVThKalN6VWlpbkh2RjJvVWdiMWFSVUNQ?=
 =?utf-8?B?ZUhMSVJwaG4yeG9iRVZRUi9uaUFxejJDT0VqSWx4aExhVThoMHQ1U2E0d2t3?=
 =?utf-8?B?TkRlRnlHdkpxUU1tOFh5SXVEVytYY3hmanlBZUJudVFYenJKUXBBQTQ2T2VG?=
 =?utf-8?B?SGdhUWE5cmpJdXlPTmEvc1pHOWEvTTgxWjZHdHVTbDhXSjdHUXQ3dndzSXRV?=
 =?utf-8?B?NUdURjRsUkphN0dHY0NEY2ZRSUZ3T3RIMThxQ0xGaDdKMVhnUVRQdUdQTm8x?=
 =?utf-8?B?dkRjSXc2RlhlOEtJTDVqYzZoeHZJVW5nOFRreFV0bDBiSG5LTWJ2aGVlalM1?=
 =?utf-8?B?T2Z2RDBEWnZZR2pmSUlYVlBhZWFnMy9wQW1QczRMQktuczU5cHkvZlI5aFF6?=
 =?utf-8?B?cEZzckRjN0ZaRnp4cDRtbXNiYU1GVmwyeWV3alRwMGhRcUJPdUk5bDZGWWpa?=
 =?utf-8?B?L0YxeG5oMnZiZ2pmVVdxci9GVkxTckRCWGVtK2FMaVlza2h1M1htVmF1Y0Y2?=
 =?utf-8?B?VGl6NlNuaUg5M0pMbkdESXhUcDF2SjVwZU05UEMyVkdBSjRCdytldi8vSjZB?=
 =?utf-8?B?QWw5WC9Ib1ZMYUExWXBCZ1hUZTFJdUN5RkdhV1ZNS2Q0YTdCRERFbkgwbWhv?=
 =?utf-8?B?YXgwdHdPWjd3WHpqc2J4SnFSRW5LaGtVUlNwcE1pWEpObmNpTWovVEdQbmtp?=
 =?utf-8?B?dWFiL1JmaWZUNEpIUkVKUDFyamlMWWNCSGtGTEFhTllGK3kxTTVqSnRLRmVB?=
 =?utf-8?B?L3RyTEVLMW9qVVpkTldIUjhHcUhuSEdSU3B4T05heTNLU2Fnc2NWNmtEM0di?=
 =?utf-8?B?cjV1UzZVb0pIa1p2NzR3MzVpV2FiL3J4US9pRTBpUFJQcGY4ajRZcnQ0Z2xy?=
 =?utf-8?B?M0FzMWRSNU1QdEMwVTlSOXdCa0ZTelR3TnZyWkZPVmdXZVF4ZVZLdVpiREk4?=
 =?utf-8?B?eDdIT3YwOVd4UTJ6RnVpclhBR284S0Q0Mk9CM2V3OWE1UG5XZndmRno3OGdE?=
 =?utf-8?B?U2Nyd3BteXhIV2Q5VnI2UVdnb2c4OTRiY3pWbnFXb0JBSjFaL1lpU0RMZzBt?=
 =?utf-8?B?RmxkMGZEenNSWkNHUlFRVUZIVHJySXlUM0E4cWQ3OHc0SGtFb3lCUHZFcHJ4?=
 =?utf-8?Q?wvihtQqE4qr0qy3IwdROpkf5a+5NszPvfTPWfrD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99009156-ae72-4417-3408-08d97e95eb84
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2021 13:27:41.8273 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NqE7/o0yn42kitEbFiKUVBElXdihF0KZEtvawQny60i1VTha9+CXmVMskcLpPVo4S71jgeFtBNMltJ9MgFzuywEm1aeeIhUKSClIVxJyF4M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5473
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Wait PSR2 get out of
 deep sleep to update pipe
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



On 9/17/21 11:52 PM, José Roberto de Souza wrote:
> Alderlake-P was getting 'max time under evasion' messages when PSR2
> was enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
> period of time longer than VBLANK_EVASION_TIME_US.
> 
> For PSR1 we had the same issue so intel_psr_wait_for_idle() was
> implemented to wait for PSR1 to get into idle state but nothing was
> done for PSR2.
> 
> For PSR2 we can't only wait for idle state as PSR2 tends to keep
> into sleep state that means it is ready to send selective updates.
> 
> To do so it was necessary to add intel_wait_for_condition(), this
> takes as parameter a function that will return true when the desidered
> condition is meet.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   .../drm/i915/display/intel_display_debugfs.c  |  3 +-
>   drivers/gpu/drm/i915/display/intel_psr.c      | 64 ++++++++++++-------
>   drivers/gpu/drm/i915/i915_reg.h               |  5 +-
>   drivers/gpu/drm/i915/intel_uncore.c           | 47 ++++++++++++++
>   drivers/gpu/drm/i915/intel_uncore.h           |  7 ++
>   5 files changed, 100 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 68f4ba8c46e75..662596adb1da6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>   		};
>   		val = intel_de_read(dev_priv,
>   				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
> -		status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
> -			      EDP_PSR2_STATUS_STATE_SHIFT;
> +		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
>   		if (status_val < ARRAY_SIZE(live_status))
>   			status = live_status[status_val];
>   	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index c1894b056d6c1..bd13325782f11 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1763,15 +1763,33 @@ void intel_psr_update(struct intel_dp *intel_dp,
>   	mutex_unlock(&intel_dp->psr.lock);
>   }
>   
> -/**
> - * psr_wait_for_idle - wait for PSR1 to idle
> - * @intel_dp: Intel DP
> - * @out_value: PSR status in case of failure
> - *
> - * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
> - *
> - */
> -static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
> +static bool _is_psr2_read_for_pipe_update(void *data)
> +{
> +	struct intel_dp *intel_dp = data;
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	u32 val;
> +
> +	val = intel_uncore_read_fw(&dev_priv->uncore,
> +				   EDP_PSR2_STATUS(intel_dp->psr.transcoder));
> +	val &= EDP_PSR2_STATUS_STATE_MASK;
> +
> +	return val == EDP_PSR2_STATUS_STATE_SLEEP || val == EDP_PSR2_STATUS_STATE_IDLE;
In the state where PSR2 source hw does not send the updated area, there 
are states such as FAST_SLEEP and DEEP_SLEEP.
Here, we are only waiting for the EDP_PSR2_STATUS_STATE_SLEEP / 
EDP_PSR2_STATUS_STATE_IDLE status. In this regard, could you share the 
state machine diagram of PSR2 Source HW?
> +}
> +
> +static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	unsigned int fw;
> +
> +	fw = intel_uncore_forcewake_for_reg(&dev_priv->uncore,
> +					    EDP_PSR2_STATUS(intel_dp->psr.transcoder),
> +					    FW_REG_READ);
> +	return intel_wait_for_condition(&dev_priv->uncore,
> +					_is_psr2_read_for_pipe_update,
> +					intel_dp, fw, 50);
> +}
> +
> +static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>   {
>   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>   
> @@ -1781,15 +1799,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
>   	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
>   	 * defensive enough to cover everything.
>   	 */
> -	return __intel_wait_for_register(&dev_priv->uncore,
> -					 EDP_PSR_STATUS(intel_dp->psr.transcoder),
> -					 EDP_PSR_STATUS_STATE_MASK,
> -					 EDP_PSR_STATUS_STATE_IDLE, 2, 50,
> -					 out_value);
> +	return intel_de_wait_for_clear(dev_priv,
> +				       EDP_PSR_STATUS(intel_dp->psr.transcoder),
> +				       EDP_PSR_STATUS_STATE_MASK, 50);
Since EDP_PSR_STATUS_STATE_IDLE is 0x0, the code meaning is the same as 
the previous code here, but from the code readability point of view, the 
previous code looks better to me.
In the case of PSR1, if there is a functional change in the changed code 
that I did not notice, could you please let me know?
>   }
>   
>   /**
> - * intel_psr_wait_for_idle - wait for PSR1 to idle
> + * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
>    * @new_crtc_state: new CRTC state
>    *
>    * This function is expected to be called from pipe_update_start() where it is
> @@ -1806,19 +1822,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
>   	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
>   					     new_crtc_state->uapi.encoder_mask) {
>   		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -		u32 psr_status;
> +		int ret;
>   
>   		mutex_lock(&intel_dp->psr.lock);
> -		if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
> +
> +		if (!intel_dp->psr.enabled) {
>   			mutex_unlock(&intel_dp->psr.lock);
>   			continue;
>   		}
>   
> -		/* when the PSR1 is enabled */
> -		if (psr_wait_for_idle(intel_dp, &psr_status))
> -			drm_err(&dev_priv->drm,
> -				"PSR idle timed out 0x%x, atomic update may fail\n",
> -				psr_status);
> +		if (intel_dp->psr.psr2_enabled)
> +			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
> +		else
> +			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
> +
> +		if (ret)
> +			drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
> +
>   		mutex_unlock(&intel_dp->psr.lock);
>   	}
>   }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c3a21f7c003de..7aaa0bc9a8fe7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4698,8 +4698,9 @@ enum {
>   #define _PSR2_STATUS_A			0x60940
>   #define _PSR2_STATUS_EDP		0x6f940
>   #define EDP_PSR2_STATUS(tran)		_MMIO_TRANS2(tran, _PSR2_STATUS_A)
> -#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
> -#define EDP_PSR2_STATUS_STATE_SHIFT    28
> +#define EDP_PSR2_STATUS_STATE_MASK     REG_GENMASK(31, 28)
> +#define EDP_PSR2_STATUS_STATE_SLEEP    REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x3)
> +#define EDP_PSR2_STATUS_STATE_IDLE     REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x0)
>   
>   #define _PSR2_SU_STATUS_A		0x60914
>   #define _PSR2_SU_STATUS_EDP		0x6f914
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index f9767054dbdf9..1467b7709ca3a 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2379,6 +2379,28 @@ int __intel_wait_for_register_fw(struct intel_uncore *uncore,
>   #undef done
>   }
>   
> +static int __intel_wait_for_condition_fw(bool (*func)(void *data), void *data,
> +					 unsigned int fast_timeout_us,
> +					 unsigned int slow_timeout_ms)
> +{
> +#define done (func(data))
> +	int ret;
> +
> +	/* Catch any overuse of this function */
> +	might_sleep_if(slow_timeout_ms);
> +	GEM_BUG_ON(fast_timeout_us > 20000);
> +	GEM_BUG_ON(!fast_timeout_us && !slow_timeout_ms);
> +
> +	ret = -ETIMEDOUT;
> +	if (fast_timeout_us && fast_timeout_us <= 20000)
> +		ret = _wait_for_atomic(done, fast_timeout_us, 0);
> +	if (ret && slow_timeout_ms)
> +		ret = wait_for(done, slow_timeout_ms);
> +
> +	return ret;
> +#undef done
> +}
> +
>   /**
>    * __intel_wait_for_register - wait until register matches expected state
>    * @uncore: the struct intel_uncore
> @@ -2438,6 +2460,31 @@ int __intel_wait_for_register(struct intel_uncore *uncore,
>   	return ret;
>   }
>   
> +int intel_wait_for_condition(struct intel_uncore *uncore,
> +			     bool (*func)(void *data),
> +			     void *data,
> +			     unsigned int fw,
> +			     unsigned int slow_timeout_ms)
> +{
> +	unsigned int fast_timeout_us = 2;
> +	int ret;
> +
> +	might_sleep_if(slow_timeout_ms);
> +
> +	spin_lock_irq(&uncore->lock);
> +	intel_uncore_forcewake_get__locked(uncore, fw);
> +
> +	ret = __intel_wait_for_condition_fw(func, data, fast_timeout_us, 0);
> +
> +	intel_uncore_forcewake_put__locked(uncore, fw);
> +	spin_unlock_irq(&uncore->lock);
> +
> +	if (ret && slow_timeout_ms)
> +		ret = __wait_for(, (func(data)), slow_timeout_ms * 1000, 10, 1000);
> +
> +	return ret;
> +}
> +
>   bool intel_uncore_unclaimed_mmio(struct intel_uncore *uncore)
>   {
>   	bool ret;
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 531665b08039c..e3041525a6db8 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -275,6 +275,7 @@ int __intel_wait_for_register_fw(struct intel_uncore *uncore,
>   				 unsigned int fast_timeout_us,
>   				 unsigned int slow_timeout_ms,
>   				 u32 *out_value);
> +
>   static inline int
>   intel_wait_for_register_fw(struct intel_uncore *uncore,
>   			   i915_reg_t reg,
> @@ -286,6 +287,12 @@ intel_wait_for_register_fw(struct intel_uncore *uncore,
>   					    2, timeout_ms, NULL);
>   }
>   
> +int intel_wait_for_condition(struct intel_uncore *uncore,
> +			     bool (*func)(void *data),
> +			     void *data,
> +			     unsigned int fw,
> +			     unsigned int timeout_ms);
> +
>   /* register access functions */
>   #define __raw_read(x__, s__) \
>   static inline u##x__ __raw_uncore_read##x__(const struct intel_uncore *uncore, \
> 
