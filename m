Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAEB797118
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 11:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFB8710E793;
	Thu,  7 Sep 2023 09:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B802310E107
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 09:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694077481; x=1725613481;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dw0LgkFjTNWt1o/E2ZMjRwJjjOyijbYjNMPzKc4jGZg=;
 b=jezGU0OH2ZTX8+GMu9cV6K54b+oeqF2Z6KqEWTm5Uz+6ei6Vge4DrLGt
 9bG3Q3iNLC/f5xjJXR5tdQKs7rNXfFuJ/DnNYRP6W3SfprK24wyPlQRSp
 8jdjR3qoZtEkZbcqyTPLzBJPXL+6xSsw3gBfbx7H1DReEhhVMIWd5pTTk
 rtHDS7LWsnifk16axyw8IoD+A2YhRBFQezyLJKguxoVQ4rtHHApXi7w9V
 oF3dj96/UeCav7AsnwaDqo0LPawZyYAXmh/+qGi4LWXiLzoihTJYQuty0
 jYKUJMqek9ADWDjilpdMjFyLN+79ZbHsK5jXlmOzMRwJeL2QE1c4KEwLo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="463679818"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="463679818"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 02:04:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="832083762"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="832083762"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 02:04:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 02:04:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 02:04:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 02:04:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eY3Y8dc9BZUV4QASj+GzgzVcfWctBIdO69evDpNtOLPeSiLYLXO10gdNRVxa9G9FSkKn372neTFhlPdy2tiO7SYGe+4XE1WiqkkBFLLRDyi7oIpbi5RgW8w84ViUd8yGT/PnbKYWD6tNYGAfiA9UZWsRsx5CiWEk6i5o2QVYnF2o2NozaEBRsbFHZ+ZXY14b3Tbh4jT+9J5y2NTkEB5JiaWZJKZunsfSlArYniwQDRh8oFHiWP8fRbcD0eAMY4x/V/+bgOBQTYpVN1X6PN7e4wPgrt2XXUQSQx+LWs0GLoZerwKM4I+wE0IIvYInW5SF3l1w4cqHgQTW01ilA8jH7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qcewNYWqy1VfihwPZxj8SxDV3S5zsc7vAlIq5tRLpTA=;
 b=J/HQI2uJt2PaUU3zvMrWYwMiNRcwXX5cS0Dp3jgyrpGI2wCJzVh4tdTW/iPFtfr+3HuUAqOwDtCf0bKT9dwaIawaQ72pKvP3xDrDLAjGAxnTjQOFGxcFAqccCbvNbVPW6ch6DQ0JKWU62Ghn/PG+3GRXS/5xUoOOFdOsgx65hckbj+gKwatyA9M7VGwDHCkc1gLkYGLwdDVrU99/TyAMAB3m/8cjfHTCSO/HmKoawPzrUgSOYpWtQnuGQLYYt3IUUxg7+wRxQWeyyhsNfjuMHRhdaXikALiiLTrro/1y7wO7hQ03wC6kZb/uH44K3dwdV6l9332gHRXsTbtFAPLIvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MW4PR11MB7125.namprd11.prod.outlook.com (2603:10b6:303:219::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Thu, 7 Sep
 2023 09:04:37 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::ca50:c5af:c453:6f6b]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::ca50:c5af:c453:6f6b%6]) with mapi id 15.20.6745.030; Thu, 7 Sep 2023
 09:04:37 +0000
Message-ID: <277afcee-b956-4b21-7d79-a973a4591192@intel.com>
Date: Thu, 7 Sep 2023 11:04:33 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Andi Shyti <andi.shyti@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>
References: <20230905193614.69771-1-andi.shyti@linux.intel.com>
 <20230905193614.69771-2-andi.shyti@linux.intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20230905193614.69771-2-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::11) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|MW4PR11MB7125:EE_
X-MS-Office365-Filtering-Correlation-Id: 38f523c9-834b-4f68-365c-08dbaf81765f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lbytIgXtJwpYvOfGWoRUkc4CEUSt0C82+zoir/vVgSKgIRlA4gH4l2JmvtmFfISEj9GBTh3HVNY7DF81UnqSB0Yqo31oTm4WCyUVitEXOoOUFWrS++4ApFGoRL3UPj7eJ9o56ME1OcAbtRIj4u23x67mGNemOHA6Sy12toa3voPONhc14Y99h4GxODrTRF9duM7//OawrKYXFCtmNf7o+T2GYLhpaNXSJG+x+RDeFrR+/bv+X5kP+4qqnkXbNBPVCdUqwK0GnFoF9QeDRlMoZWrpMBS/N7N2iSbkXNOqZPUp/oSp2qqiWyjifYPKgmGnS0JaKmPDx2gklz52P6Od3p2kvO/dCkDV3+ZRF4aLa22uKGANbWIrrHLb3t8H7GxIduO6mAgCwxBXywKoNGlL1No0AImaYC2n0fEiJOaNEhjwEXt3VdK3DSwKv7LrI9Xeqpeh3GNmA4Y0ssO2hl9d7nhVnzRaqm0x8HhxN/ujb/RAT5k09MG81zcRRgau9f3eBIGx3qUwan4uzPz3M7FKjCN5wpjl90S3Omp7DTDbRvej/MfX6poQ3AaEWxM2H8fjtMBx2XqoS7HmPSpkRv9CQxGGxY1z0AXldIhWi/kiKLZRH9x9j/FLxFztCYiFkSWVTjAFbJoaeGI4sMx+1DbXfA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(376002)(366004)(396003)(1800799009)(186009)(451199024)(82960400001)(38100700002)(36756003)(86362001)(31696002)(110136005)(478600001)(2906002)(6512007)(53546011)(6666004)(6506007)(6486002)(8936002)(8676002)(4326008)(5660300002)(44832011)(31686004)(66476007)(316002)(66946007)(66556008)(41300700001)(83380400001)(2616005)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFNvdnFiNGZqRWsrbjhqTUcydndRTVlZcThEVXgxdVJjVGw3NkJLSWs1T2FL?=
 =?utf-8?B?UkxxSFJjZ3NTazUwZ09jNDZNWjZaaVY3S0ZFUkFwOVFiVEkwZTVwbFlQaHJm?=
 =?utf-8?B?WktwaUVXbjBNdjByREFTdjVZQnJqK0d4QWhWTkJnd1h4MkZEcHoxNEZIZG5n?=
 =?utf-8?B?Qk91TDYvL2p0V29vM0FPellqS00vU1lYRlFEcDNHaVlIdW1PakZVQkFsTXV6?=
 =?utf-8?B?Z0M2OGU3eVI1WGdtM2o2dUV0Mk14WjVBTGthSW5PNzNhQmVKRVRydkI4SEpL?=
 =?utf-8?B?UFpwQ2F4NmtzMDl2Mk90ZTV0Zmd4T2RoRjhQeUwyQ0M0Q3ZLVHZRbk1DOFRX?=
 =?utf-8?B?TWFMWFYvcjFZNHJXVFFxcUI0UnhvR2xqYkJFai9RV0pRaG90TmNPUnNBMmgz?=
 =?utf-8?B?ZHl2OWVac1RXV0NsMkxWbmx5QWxxNUJVblpPMHdIVzRKbjVIcmpVYXJwb1Rq?=
 =?utf-8?B?QVhpaklleWlBYi9NeWUxMEdOTFBaOWJ6bHdYTE5weXhkaVNyV0o2Q3NQNk1m?=
 =?utf-8?B?YTNKSk5BYmx6YVRRMExFS0lmRmlxRkdPazBXTFVEYjFlT2RMUDlsRmJRckln?=
 =?utf-8?B?UWRseXlHZ2xNaWhVUWVuT3VTanhMb1dzeDM4TTFDRFpmQUNQRzVVVWdEYjZJ?=
 =?utf-8?B?UG5HTDVjRnFXTCtia2VpM01yZGlIc1dOZzR0S1FpeW54bURydk84dyttWVZT?=
 =?utf-8?B?dGlZakcydEdvQ1crU245ODh3WFBmQ3gxOGJtY29MeEh3ZFB5M2tlQ1JmQ1Jp?=
 =?utf-8?B?NUNEMXdXVVRZdXJrd2NJVFVFQXJQdjJhdGlsQmxWOXNXcVVMQXAxOGQwMXRu?=
 =?utf-8?B?NTBxKzJBV1hwMkNEY2ExV2ZpdlBzTlVMZkVSTFRWRWlHL0RjUElUOEZFOXkv?=
 =?utf-8?B?dWxMaVNhMVJ1ek5CS1FaV0NmSkhvcnhIaWx1ZkdKNmdDYUVDalhRTnl1MFZ0?=
 =?utf-8?B?K3NSNkJlWGNPMEp2Rk92Y2E2UjZydVlpRWk0bmtLWlNkMTFJSzlqVDN6YUh2?=
 =?utf-8?B?M0ZiaEplWjE0bnBmUVJONlI0Mzc5UVdDSXBUK0UvOVhLQUNtTnFlaVBLQVQ2?=
 =?utf-8?B?UHBlNEFub2NLV2lOWDR4M1hKSHFMTVpjWG5DU2RHM1ZDRmFKRDM1Witvdmdk?=
 =?utf-8?B?WWtaUHNzbGo4dGJKWHRYaHZUU2ZCWENxVThGN1VMVE9wbEJZbkxjUEdra3N2?=
 =?utf-8?B?dWxrWnBjWkVlNkQ4QzZLa3Q2NmlNMzJWQVpYODBFaVhDR2ZDZjR3aVhkVE1V?=
 =?utf-8?B?dVNqbHd2cjZueStXd1gvcVh2RjVWODFDVzYwL2x1QTdwbWZjVXNPZ0ZoZlJF?=
 =?utf-8?B?THp5d1ozd2FzNllQY1ZlNnpaZUZzQXorQ0hlYnpwTVlBM0tIWlFKUFVhTXB1?=
 =?utf-8?B?WUZjK09QRitMWWdIZXVpSXAvaVhOL21XNVdTMXUxREJLcTV3MHpCVGhDbCs2?=
 =?utf-8?B?YmI0R0RENFpWek4raTZ3VUp4UmtsVCswVXpWUHA5WWg5U3A1N29jL1laV3FN?=
 =?utf-8?B?cHlUQUVrc1lNN3d1QTZrb2RSbVZPZGRQbFdUMzhyL3d5aUk0bWU0U1pZeEZn?=
 =?utf-8?B?bEt2R1NSTDl4Wnh4aCtTTjVIVmp3bHlxYmVLVE42UGVYbXA5b2oxR3YrN2V5?=
 =?utf-8?B?MFRpZVNBcURyaWNOUWVibW9pUU12aHliV003cFd5MW1jRXhCMlZZNWw4YkhW?=
 =?utf-8?B?Znc1alpRRkV0THpCL2w0NUNoQitLRFZHRUJGcHFEajlHRHl3Z3ovMTRXSUo3?=
 =?utf-8?B?b3hpUTZtbHFXTVlqc3BCRXlhY0R3YmhqdEhzRE1xeFRJdG5jNWxoMlZpQlZl?=
 =?utf-8?B?R3g4TXdIM1U1REdHQmlXS2w3bm5mLzBjaVBjL004ZUZoWTJrZldXNWhHZmdC?=
 =?utf-8?B?ODJWMngyNGwxL2Y4UmN1T0V5NWRrR2NNZmVoTEJKM1FDYzBpb3J4dXZWWjA3?=
 =?utf-8?B?b1c5SERpczZBWENYcWZNNmo1Ukhacm10L2h4Q2ZZQWt3Z0NyS1Z3ZHBWM0VR?=
 =?utf-8?B?RHRaOWRZdldMayt4dEw4M2RpeXR0bmI2WGxnZnNqeWF4WC9JZUF4emVYYkhU?=
 =?utf-8?B?ZWNrbmREcHF4Z1RPRjV5OU04YktEak1PaGxmeFBJM2k3RkJTUmlVUE9Ld0FS?=
 =?utf-8?Q?WLnMeIa8NSV/bClK4zM5u8F7I?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38f523c9-834b-4f68-365c-08dbaf81765f
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 09:04:37.7862 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9j9bKLLr3NCrGGf5A+BdD0ls+Pkc/rja7devaE0dlCz3ImU5p3oRw3lRfnPBejtkrevcJHkxKfEtjgT912k/VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7125
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Split gt cache flushing and
 gt idling functions
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/5/2023 9:36 PM, Andi Shyti wrote:
> In preparation for multi-gt cache flushing debugfs interface,
> split the cache dropping function and gt idling.
>
> Based on a patch by Tvrtko.
>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c | 32 +++++++++++++++++++++--------
>   1 file changed, 24 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 7a90a2e32c9f1..3dfe8a8b7cdfe 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -703,11 +703,25 @@ i915_drop_caches_get(void *data, u64 *val)
>   	return 0;
>   }
>   
> +static int gt_idle(struct intel_gt *gt, u64 val)
> +{
> +	if (val & (DROP_RETIRE | DROP_IDLE))
> +		intel_gt_retire_requests(gt);
> +
> +	if (val & DROP_IDLE) {
> +		int ret;
> +
> +		ret = intel_gt_pm_wait_for_idle(gt);
return intel_gt_pm_wait_for_idle(gt) should work fine.
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>   static int
>   gt_drop_caches(struct intel_gt *gt, u64 val)
>   {
> -	int ret;
> -
>   	if (val & DROP_RESET_ACTIVE &&
>   	    wait_for(intel_engines_are_idle(gt), 200))
>   		intel_gt_set_wedged(gt);
> @@ -716,13 +730,9 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
>   		intel_gt_retire_requests(gt);
>   
>   	if (val & (DROP_IDLE | DROP_ACTIVE)) {
> -		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
> -		if (ret)
> -			return ret;
> -	}
> +		int ret;
>   
> -	if (val & DROP_IDLE) {
> -		ret = intel_gt_pm_wait_for_idle(gt);
> +		ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
>   		if (ret)
>   			return ret;
>   	}
> @@ -746,10 +756,16 @@ i915_drop_caches_set(void *data, u64 val)
>   	drm_dbg(&i915->drm, "Dropping caches: 0x%08llx [0x%08llx]\n",
>   		val, val & DROP_ALL);
>   
> +	/* Flush all the active requests across both GT ... */
For now it is just GT0 so this comment should be in next patch ?
>   	ret = gt_drop_caches(to_gt(i915), val);
>   	if (ret)
>   		return ret;
>   
> +	/* ... then wait for idle as there may be cross-gt wakerefs. */

same as above.

Regards,

Nirmoy

> +	ret = gt_idle(to_gt(i915), val);
> +	if (ret)
> +		return ret;
> +
>   	fs_reclaim_acquire(GFP_KERNEL);
>   	flags = memalloc_noreclaim_save();
>   	if (val & DROP_BOUND)
