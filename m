Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C195855AAA
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 07:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B1610E234;
	Thu, 15 Feb 2024 06:42:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BYXN1JVt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9332910E234
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 06:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707979346; x=1739515346;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5MpV79ZkziIVZ+KoaYQZ3D7dRsLuhfbmJ2gqIghX4Fc=;
 b=BYXN1JVtow8WJu0dlpjYWsTLF+0TApepT1fMwIGy0x/5GVcgR3aY9bZm
 kMHKqQ+RqZ/rVbIukrahbU16Ma0NtPyafXwpa6H5cx8K0eoTaGWsKBW7X
 kEPlx6jxpvlOKgOTSv/DTx92BEuc6RIVWhymQNMdCt44TtyXndUl0PdUK
 gsPz1xUS3ITd9PesQbIXwBIMpWmh1n2ibQdoBrzf9uAV33fCvGGqtAdaJ
 VxlxNJ+1hP9CkdwDoUwR5zzCLKSoLmAK8WHnA2JPbl3MB4lmn5mBpzULS
 Cyr08RyqhBQKFeMy7EN6dXP8EW19qAa7cdtrQ4JDN5zxC6zyj0ZJM9eNO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1909073"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="1909073"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 22:42:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="8099979"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 22:42:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 22:42:19 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 22:42:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 22:42:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jehAQevn9TzETkLY2YT3RL3Olt63RrBt5YkWiF1WnNAMhqvYDFxtSz8ruW0mVFKBmPwUF/4atgAM5I3PymDY0P6OziKMRVrV15ln1UXyNE03QktUInWLol5vU6tV7zNZ5eUk3Az52nEAh8HC/ZxJmSJ3YE/LaguI/byw2afxc7/NTfjrfIm22yXIxSRZZmUcc4N1QgXCPR46X4EMgo+Kxd9GPRlTSHfJki/rQdOM/PCmtVNcdUUpRP87pgu4Z53XacMx7ic693G0rjZwFZtMimFzecqdezwnDXM0TFizqAui5GdyvlTDQNorG8VxH/CWTOupdSLCRtYcLZTVf17MNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Ce1VjwFC9izBSXxGtTiphjSmbo+kKVnhcyJqc0Gy4E=;
 b=WaH3fA+PQkwubaKxEK1mTjCrHhSj9DL3WzpPKN9apVQb652EzN0bGZ+VNU4MFs7+5aRATJtnQ8y+IjACOzQfCJkbFQJ9BDphhcovc7m/Ruy7riBYTJHHPbJL1zBil288wUlhoBuyLlysXenH7ulIoFYoUE3HktPAu6HQCqpHiF73LJOyPaMP9KjEFZKH8LnLGC8lzRvl4d3eK5lT/z9dBpqsDGhgChQdBI5in63uYj6NTdIIzZdBX7GQLkUU6b/yt+4zma/oXBi+4kNq19m483s4KxL1n0uyWlyRep7QOE+L/hwjwkJ+6K4BAa/6yasGvOGQO1hrHZB9B0YYxCwR3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5609.namprd11.prod.outlook.com (2603:10b6:510:e0::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Thu, 15 Feb
 2024 06:42:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7270.043; Thu, 15 Feb 2024
 06:42:17 +0000
Message-ID: <21efe512-253c-434a-8375-547272957e87@intel.com>
Date: Thu, 15 Feb 2024 12:12:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] drm/i915/hdcp: Don't enable HDCP directly from
 check_link
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <uma.shankar@intel.com>
References: <20240215050524.1425206-1-suraj.kandpal@intel.com>
 <20240215050524.1425206-11-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240215050524.1425206-11-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0192.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5609:EE_
X-MS-Office365-Filtering-Correlation-Id: 390c85f8-f546-4201-2434-08dc2df1405c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EM/ZLCT201Baye1dg7t725UJs/nKXvOsa2o6MZwkS4gzE7WetAK1Baiei62z/H11oaVD1LEIMRqZsJnaNhxB157CityKioCL00WPTXA8qmsAZwzxqhHWBdchWOBjQEmgO++f1f0UKUZCnyK8RfRB+xOa4e+VVoOzYhYFUYKonqGoWk0xGGD15pZUdssSNYfXRYuCw6n3kqw3b4+41wwQc705Tz1KxeMkGkC+OkeJn4Ni2IDMMCjh5qG/V3HFouvrgXne55WEJGuxjYmhhftPaS0RjXPC9wc7rbQPJDK/3G+h0AGl9JYwNxI0GH8KdTUR+01PnATPvdseA5BGhJUJ9oLzM8rcBM4CpaPS3L/1Xm1VJI+sqI5Zgo8BLFy+g9mUdn35b7n+3xvbKYdEBm/JeKEhrTCngp8ABXgkJv/K/bihfc4uGNdrAw4Hp7Rg0dSmC3FersK60GUCUF8TcbNE3xH8Z1fuOsiRoXJ5vjnSsn8c1kucYM8ASbH/AMnR3WhuspMJpSDbh5EOjUkEkaxJS4cUg8sFou8F3gfKwnfZsJMVz8nBbT03o59zdoy780vV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(39860400002)(346002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(2906002)(8936002)(4326008)(8676002)(5660300002)(66946007)(2616005)(83380400001)(31696002)(107886003)(38100700002)(26005)(36756003)(86362001)(6666004)(66476007)(66556008)(316002)(82960400001)(53546011)(6506007)(6512007)(41300700001)(6486002)(478600001)(31686004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVB1dmNxeEVwT0xJZ2RSN2FneW9hazNGNVJNOEl3UVRGOEc2WWhnZUpycnY3?=
 =?utf-8?B?R2dENVhIZTVmZGZDNjJSQkRmN3dTS1RkcEYzU3MvVXNraC9HeTlFZnJFa2o3?=
 =?utf-8?B?bm92WjdraDR4Rkx4OVBBaWZKVFc3N1VZREJkVXNSNEJiWjNrb2xVTjBiK2xL?=
 =?utf-8?B?SWJFVmJ2WVdOekFZVndIWVJlbEJyOHE5Q2I0eGozLzB6cFVVM0pOWllqNXJz?=
 =?utf-8?B?Ykh3bC9HNGUzTkE0K3lxQzEvc1A1QlpVbDk5SUsyM2hjWkVDdDBGbGM1N2FO?=
 =?utf-8?B?QjgzaVFXWFc5ZmFUYWZmNjBJd2tCRmRpYm45QUY4WXl3dDhDSjczQ2h1QUdF?=
 =?utf-8?B?RHV4cDd5WnEvajNhQUp3ams2UzcvMTRTTHZ1N29TUmpoYmJQNTY5emhiSmly?=
 =?utf-8?B?NWZkM2hVcC8rSUJlSU9kODZWaTdXQXhOUTY4QjNIMFFKL054NmxtQVpZWE02?=
 =?utf-8?B?MzkrVDFadkNmZU5jTHhuWDlXQ0RHZ1dmdHJsRmxSM3Rkd3NOSGRlanUvK1ZK?=
 =?utf-8?B?MU9wamJ3cUZyQ3FLTk1GcHgyU3lxM1pYaUJhenRLU09SUUdRNmxGcm54YXcz?=
 =?utf-8?B?YUhTTTdUSHV2T2tTZTVnVmRTUGtyRVpDOFhZUGJQZkpTUTc2VXY3VHJMUEt1?=
 =?utf-8?B?TjRIVkNKVlVoZkhkZHloVHo5UzN4bFFKc2cvMzdqN0Jrd1J2Q2I4K0NRNlRX?=
 =?utf-8?B?QnBRNDMvMFg3TWpCTnYwdVpCSWFvYVRKbVRqYmcwUE1jUHpCWklUYnZXN2VR?=
 =?utf-8?B?VGdIUnlhY3hCZStKWjI5NnE1WURRVmlJVXZGK0FDd1dxZFBaVitsV3dzTjFK?=
 =?utf-8?B?SW9QOHBZS2E1ekpPbkU5ZkpYaFpadEt2WjhheWpCZVFpYkdRbzZTSVgydVh4?=
 =?utf-8?B?c0JDY3pBdVBqVjdCVXp6aVRiUHVEbUkyOHRGMXlzT0VGQVZJT1RmYVJXVXFY?=
 =?utf-8?B?akp4elcyckJxNVc4NlhxaGE2aVpOREVMamI0Y2NBYm9VMDNXYmRCUllMWmdr?=
 =?utf-8?B?RGcxbmlqVG1PMitxaUF3YzNHd1doenRKejVRb0phaG13ejVGZHhHQ25UWURx?=
 =?utf-8?B?Y2VSS0pYdXpmc0ZCb2kwVS95QzB5MnhLREdya2FmMVRFZEFhTG5WSWljYVZI?=
 =?utf-8?B?QjhSOGV3TEVVeUNiVXhCQldPMDFqRW1YUGFnQmJXeVQxSWlDakswbFVGcklv?=
 =?utf-8?B?Mk5Qek1oQ1VuclE3TjQ4T2NvYWc1b3VPc3hSTkhvRzJiL3AveVZYc1R6RCts?=
 =?utf-8?B?cGlzaDVKR3VGNlBVTWs5T2hKN1dzSzgvOXNYeTFEZERnRENCbXVyNDIyOXdx?=
 =?utf-8?B?WWptaDA5RmhrdVpPMUtpTjBzdkN2T1hiWXpKRGlBTThRS1BEaTlCNTlSZkFt?=
 =?utf-8?B?VVRNYzNQaE1tdlE1MXRjcXlwNDRoaEFwbEMycG4yRWliZlZVaDNNZ2d3R2xr?=
 =?utf-8?B?Wm9NcWlodWtiZzBpRWF4Z05sY2ZCYUdURXBKNDV5UmZiU3gwTmR2Rmc4cGRp?=
 =?utf-8?B?UndEMTYwR3djRmR2dnpYcGs4S3pwRHdPZDhyQTg5eFJDQXc2Qm5FRnNLWlVN?=
 =?utf-8?B?TEk2anJsZi9IY3AvcEZmNTdhbW1KL1NEVzJ0UXVsRjZSa215VlZuSzAybVNo?=
 =?utf-8?B?U3dCWWZuS1dKSHZQSytkQlBxcFZsZ3ptR3k1K0Z0YmsxODF3TTlxM0NQSlBo?=
 =?utf-8?B?SDU3RDFPZkplcDJ0eXB1OFFqU1FNdE1FOXltbU02a0tlQWZjTGJxUVcwQ1ZG?=
 =?utf-8?B?OWNFOFBQdjcyWkZmUHBENFgxaC9ZSmcyS21KckcwaGtxTXBwUk82N0N3NlFS?=
 =?utf-8?B?ZjNkQVo4UEw2Y3JLN0dLV09GTUYwS0FnNTNLeUgvUWRVQ1VET2dDbmFnb0xS?=
 =?utf-8?B?YmR0VzdNdUVUaWNxcDQvK1pIaG9ocTdVWTRyUDFPSFoxTFJLUThWQ2ZGOGVa?=
 =?utf-8?B?ZjE2a1BYcGNXNGk1eEFYTmZFTjl0VnhtV1B4ZnhIOFhmUzBTQXVqNnRNNHJU?=
 =?utf-8?B?T1FiOS9hbTNLUTZiaVh1d1pnUkNhVXFkMTVHbXNzUk5zcFZSZjF1MTJDaXo5?=
 =?utf-8?B?OXRXTUY5RUxKLytBbmVhSnVoc0hpQnBBMzYvN2hhTXg2TUZhTVJLRStFRlRD?=
 =?utf-8?B?UVZJNmYwOXd5WVZPUW81RkZwTExBZ1NPMnBjQlVxaHkrRUt4QVFZeHRZc0VH?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 390c85f8-f546-4201-2434-08dc2df1405c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2024 06:42:17.2874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JSnbml/1ocKlaMKwXzY41GAPFAhUA97p5OMGicDviVKeCc6EVkpUEV22bkjYNyV7Hxf3DcRG4OqabCeF0jMAbbnUIr2kMxewD15VSDBp5nQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5609
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


On 2/15/2024 10:35 AM, Suraj Kandpal wrote:
> Whenever LIC fails instead of moving from ENABLED to DESIRED
> CP property we directly enable HDCP without informing the userspace
> of this failure in link integrity check.
> Now we will just update the value to DESIRED send the event to
> userspace and then continue with the normal flow of HDCP enablement.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 31 ++++-------------------
>   1 file changed, 5 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 16b2b180563f..b22dbc6494e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,7 +30,7 @@
>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
>   
> -static int intel_conn_to_vcpi(struct drm_atomic_state *state,
> +static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>   			      struct intel_connector *connector)


This change does not belong to this patch. Perhaps should be moved to 
the next patch.


>   {
>   	struct drm_dp_mst_topology_mgr *mgr;
> @@ -43,7 +43,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
>   		return 0;
>   	mgr = connector->port->mgr;
>   
> -	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
> +	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);

Same as above.


>   	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>   	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>   	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -2068,17 +2068,6 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   
>   		drm_dbg_kms(&i915->drm,
>   			    "HDCP2.2 Downstream topology change\n");
> -		ret = hdcp2_authenticate_repeater_topology(connector);
> -		if (!ret) {
> -			intel_hdcp_update_value(connector,
> -					DRM_MODE_CONTENT_PROTECTION_ENABLED,
> -					true);
> -			goto out;
> -		}

I think we still need these. If repeater topology is authenticated, we 
can go ahead with hdcp_update_value.

Otherwise we disable hdcp first.


Also, we need to make similar change for hdcp_check_link.


Regards,

Ankit



> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
> -			    connector->base.base.id, connector->base.name,
> -			    ret);
>   	} else {
>   		drm_dbg_kms(&i915->drm,
>   			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
> @@ -2095,18 +2084,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   		goto out;
>   	}
>   
> -	ret = _intel_hdcp2_enable(connector);
> -	if (ret) {
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] Failed to enable hdcp2.2 (%d)\n",
> -			    connector->base.base.id, connector->base.name,
> -			    ret);
> -		intel_hdcp_update_value(connector,
> -					DRM_MODE_CONTENT_PROTECTION_DESIRED,
> -					true);
> -		goto out;
> -	}
> -
> +	intel_hdcp_update_value(connector,
> +				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
>   out:
>   	mutex_unlock(&dig_port->hdcp_mutex);
>   	mutex_unlock(&hdcp->mutex);
> @@ -2345,7 +2324,7 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
>   			continue;
>   
>   		data->streams[data->k].stream_id =
> -			intel_conn_to_vcpi(&state->base, connector);
> +			intel_conn_to_vcpi(state, connector);
>   		data->k++;
>   
>   		/* if there is only one active stream */
