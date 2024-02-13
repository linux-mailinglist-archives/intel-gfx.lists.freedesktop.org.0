Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46824853FE7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 00:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DAFB10E0F0;
	Tue, 13 Feb 2024 23:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bY6uhULi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0633810E070;
 Tue, 13 Feb 2024 23:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707866212; x=1739402212;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dU7RZ8Hm7hXY7JUg0qUHTKYcWtSN6u3MeELsl3DZBqs=;
 b=bY6uhULis909jnNVHR0Xsl8YMV5kak2527EgiaudHZMI5xRoqiDA/Xny
 +eiaUCa/ggDsyrJRsGmYZCNpZPONtGrjlbn9BGWGLFPB5bUPVpdyX3ixC
 Ykfa3D3tRfvPAT8X41OCfmG7mBJD00YJjVXEmN7111xGPfDLhKP4fRjme
 VV/ffZrO+v1G45oGxMOuZdLsEVN5e6A9pavgauhrQqDz8p0GirQbPLnNs
 hqZ+hXC0Nn23sRarsNvu9tdj6y/eRzNKdN35iZq6DGU6M6HTY94QOkx2j
 NQSobE9FwMJxIBV8F0+Kp2ZHp5uBPtJ71jkgHXye7CEyQZOApNijlzvSv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="12618905"
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="12618905"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 15:16:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; 
   d="scan'208";a="7678365"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 15:16:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 15:16:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 15:16:49 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 15:16:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+ui5YNumPJweRi4uuzoiZNNwODl5IOxA4UJ4Mr46506uXyZ4c5wvu0qgdnKz5g485xbnlrMn00DK6hvwf2OqTiXv8c2qNyT9SDPObdAsoP4n8zVJ/SoVkPDlLlci41vYA7lP0QIFex8iN2eAxskSx5TqCO4Ot4NU+9PuB0zUo1QG+sNgDwvj2s9ktorwgbedXv7wOi2+NppW1KjD0Y3CIbf58wV7J5+YHYKdMOg22uAIDLTIE9sIMt8qxQaL+SwahivlhaqeR17IW/29aRQDMWfQqETZcazXe7Z6khxh5yDWb3Y04k6XuucZbxyrlCojEWCKxMrHqTcc3FTsV8SMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/r7F4nWkdeqFZ5bN4yNPjgr2yWheWydtbrpIhRF28Tw=;
 b=KdRUunCeHqhu5zQRFGNvymblLtxuvkhzI6xALXRz+Jc73XJBIJOexXbw4vjeyP6H5C5igGmlyMkc3nWXFdIFpCFI2gUFJlIB2JTQIny7X0wpvb8401dmoOotsndIAq7d5x1vNqKN+d+P0THcVUKkjBFDXiD2Kend4G99qWmMMtib0O1sEx8nQGZEpb2ItE7fhT4OophP0UN7e4aLa1P+2HI7K7y0IDdxy8RkNC2Es1pAQ/CvXUcaq0WkTbGsbKtNXHT280yLd8EPFgvdoa1y9VIRC0mUZlh35rIvF4n/Ww5tET78CMd1Rw8P4/Padmjne6Y6Fv92t+zKEz3AHrT/dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ2PR11MB8322.namprd11.prod.outlook.com (2603:10b6:a03:549::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Tue, 13 Feb
 2024 23:16:47 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 23:16:47 +0000
Message-ID: <e00cb734-2bab-4607-b1ac-a57d994184a0@intel.com>
Date: Tue, 13 Feb 2024 15:16:46 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/xe/hdcp: Use xe_device struct
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240209101412.1326176-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::20) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ2PR11MB8322:EE_
X-MS-Office365-Filtering-Correlation-Id: 868b4200-8cce-46f0-f05b-08dc2ce9d9c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MJqryWWfbJkQqsNsEoW59SeBYp5ygalIe8BMaB3n0srj49HwKqGJS8r3VIG285Ac9oziDQpfLIljOVMFdggNVo423NzDd3dVFexZ9LZKAtxLybqc///vu64cw859YmDfE9vh1p+q4bbBgZ6x8FmnNHaacDvQNxqIXLZESyftliLgl7US8pEzQJpRO7mLe1sdJH8NsCfOG5rPfv9T6Py00yaAI0oURUtBYJBHvEDmZqiEArOcWHFJEhWObUaXk00OdaJYlC32e6Jc4hjMLFNYH2z0TkwNIbmSbXWcbmkNTZEy7ugKHXNdFRN3HIhsMFhizP0Q5lBDu+kDsZB9kmnBEZ+Xf0iqRh6ZcZharRWI/IbocHp0TiEwtax+uPF5vKOAovsKRLvRQONf/3BgPqSksFgGqWbI9RTmnyP3vNhuofMhZZTy/04Y6ad+UqHrfcC3hXi8c3d9ILUcSU2krLKXZCDeENn9Jg9lWTIdy0Hfd4stNGsVTA8C46i25QYkt8xssDGZu0cIPiN5VllWUOr3HQd/RjazyiPlGJlrKc7GgQ1lF0KIanAacvEEp87GYdqi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(36756003)(31686004)(2906002)(86362001)(31696002)(82960400001)(450100002)(8676002)(8936002)(478600001)(6512007)(5660300002)(6486002)(6506007)(53546011)(38100700002)(316002)(26005)(66556008)(41300700001)(66946007)(66476007)(2616005)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ylk0aW9EMkFyWXhocWVKdHZ0d3diT0FIdThmcHZhemIrcmpxNGpuTGZFNGJk?=
 =?utf-8?B?N3J3WGR1cDFFV3FyODdpclpNbWdNR00vaXptaEhUMUFSaFFPa2F3c05nSjU1?=
 =?utf-8?B?SkUzOFM2NzIxMExiR0hFOCtYYTIycHQ5YmYxN3k3U1V0RVVaZU5yMnVLTEYw?=
 =?utf-8?B?ekFxMHRWUW1qZVAzdkUxM1JHdlo0bEJ1TzVhTU5KTy9UVkdZb1A0R2ZFOUFB?=
 =?utf-8?B?RGRxaDBHUGhMSDMzczNZNkhrdjZnUjllZUNlUzV6YmtYeVBUZHhIV3paeUtL?=
 =?utf-8?B?emNrZTlWTklRZjg2dStPNmh1MjNjWGQvUnR2L0NQTVBPRjcxZ0VWcXh4YjRW?=
 =?utf-8?B?cGxIVk9qU3V5L1RDd2tFa3VQWXIwbHBNZHBqU3pBaURWbFFRcFRZcnBaUStM?=
 =?utf-8?B?cXh3UjZKVmFOUVRHYldvRjlmNENKVSttSUU4YlpXaS8yblhzbm9rc0FaN1Jq?=
 =?utf-8?B?SHJiWktxU294TTVxbHp4WTRVdlRqN1NRektMVXYwbU9IWXdnUDR0SGYyS2tM?=
 =?utf-8?B?OTBiSTBWa1lTMk9jWmhMOEZTMVlzN2huUGNSOUw2NGdVa3prd2Q0QitBUnRX?=
 =?utf-8?B?RnQwSlFHWisxdlh6NFFVV1g0R2NYbTVLRnoxMHBOaEhBTG5mdkFpNThaRXE1?=
 =?utf-8?B?T2tpRG1PajVldU4zS0hKQlo4OXNDVjB5VnpxVmhyWkpPTFhJZWZjRmg2SVhV?=
 =?utf-8?B?aFErUEZRZCtZVlh1Wlo3aFNtV1N2MWdmZVAzbEVYVHpveXZ1N1d6NmQyNUl5?=
 =?utf-8?B?Wm81d1ljTUpaRVR6eTExY3JjYStxR1pjVzZ4cUFwMXlPTmZsOTY3d1gxVndM?=
 =?utf-8?B?S2lBcnpOM3I5QmxVOXBieUZPWHhkckFqV3A0SlFMQ0pjdmg0U2ZQN1hac1R2?=
 =?utf-8?B?STE5QzFYUmJXcWxoencvdnNuS0VPTi9wdU9EeU9hMDQ1UlRtRnNhNElTUVNH?=
 =?utf-8?B?alQvbDBtNUZsYlRRdkhSSjA4RUJyRFBZTEFpaVNxdzFQU3BDay9vdVNVRFMz?=
 =?utf-8?B?SFRIUWpPSjFsMUxjcmI5bVhQUVF2QSsvZERDb2dCeTRTSHBURlFacUVUNmVx?=
 =?utf-8?B?TnNHeTlSVEVyM1pTMGZ6MFk2NUpSak9DTGIzSFYvbTNHRUJEc08yQ2cxY2Jr?=
 =?utf-8?B?cjhNMmJxZFRNU25qUzFxbWh1SExNM1ZpSkMxd09rWTB2UU1pS1VvOVNkQWc4?=
 =?utf-8?B?WnlLUGZtZmZUZHlyRWRNa0VKLzB5WE1vWCtHWjVaTHArdVVid3lDWld1MitM?=
 =?utf-8?B?NnFIZm1sZ1F3MSsvNjVSZUFlVTAvSGZ0U215RHNpbi9IcUNnb2JtdXYvRTRD?=
 =?utf-8?B?QnlNQWk1TUtTL0R4TFhwUTBYSWdpdUdZa08wbmFIQnE2N05DajJ2SHlpVU5s?=
 =?utf-8?B?RTBlWnlWV1c0SnUvNE4xNU55ZFJRZ012NmtMQnFoWU5KZ05YVXNRM0w4ZDFi?=
 =?utf-8?B?QXhvbW1HaXpHNWtFZzV4VnZJdGk1czhZL3Z2d2ZwTU1DQUFwV1BiLzZVZXhm?=
 =?utf-8?B?d0dXMzJVSnlkVGtJRUNoanNzTjJMWHpPdGNsbFB1REhxYmhPN2M4dnQ5clhL?=
 =?utf-8?B?VExhU2FmTVBDTk1Ydk95enhrMWZFWDRhYm1lS0Uwd01yL3c4dUdVWndwcEpD?=
 =?utf-8?B?Mk1WQ3QrUWNnc3NJRUh3ZVdSd3VJTWdqdEZHeFBpM1lFemRZdGpGNjZ3enp2?=
 =?utf-8?B?NEY4SDdqZzlBbkc4NTl6MHRZZmZwWmF1K2R1V2NrcWE2TmZiNFRRaEsrdkdP?=
 =?utf-8?B?ZDVHS2ZxS2FiSklmalZwSWxyWFAvS1czNnVYUm9KbDJEd2xiVjRlVkVhK3J3?=
 =?utf-8?B?am9yK1VIaFp1MGJhU2N5UmQwVzFYUmU4QURtUjVQWGt4QTB0ZkE3QXVQTGRJ?=
 =?utf-8?B?MWJtZXZYWWNFL3RSVkVGS2Njbk9MN1FRVFdnSTVCSEVWMnJFY1VEaDN4MjR1?=
 =?utf-8?B?SmtOV1FQUFljMTQvaDd1Qm9sSklWNkY5VjhYTTQ2Y3YrNjhwRit1TTJ3L2tO?=
 =?utf-8?B?QVIvRlhXLytEMzhGTU4yd0hPMTBuSENYN3J2VEZ0YjljYktoSUZub0lLS1hD?=
 =?utf-8?B?ZVBqVHVja0tiL2JGS3d3ZXdtZFV6U0h3ZkNBNElRVXZ0bHdmY1RuQ3pjT0cz?=
 =?utf-8?B?TFdOalJwVndtKzl4TG9NQ3JSMVV4cTZMMGNsVlZlUGVKZkRXZk1vN0R3ejFp?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 868b4200-8cce-46f0-f05b-08dc2ce9d9c4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 23:16:47.3588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wRd3qiUJidywvLip8WHEEOat1/4FAPgfd8NkPoYuNdfIAXThTJfIQOr6HErYvy7IubPVft3csEO6hmBKfiB900hyzg3ZvwBomVo2fE4EDTA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8322
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



On 2/9/2024 2:14 AM, Suraj Kandpal wrote:
> Use xe_device struct instead of drm_i915_private so as to not
> cause confusion and comply with Xe standards even though xe_device
> gets translated to drm_i915_private.

AFAIU xe_device does not get translated to drm_i915_private, it's really 
an xe_device struct under the hood.
The change itself looks ok to me, but I'll leave the final r-b to 
someone on the display side to confirm this is the correct approach.

Daniele

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 15 ++++++++-------
>   1 file changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 0f11a39333e2..5d1d0054b578 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -3,30 +3,31 @@
>    * Copyright 2023, Intel Corporation.
>    */
>   
> -#include "i915_drv.h"
> +#include <drm/drm_print.h>
>   #include "intel_hdcp_gsc.h"
> +#include "xe_device_types.h"
>   
> -bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
> +bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
>   {
>   	return true;
>   }
>   
> -bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
> +bool intel_hdcp_gsc_check_status(struct xe_device *xe)
>   {
>   	return false;
>   }
>   
> -int intel_hdcp_gsc_init(struct drm_i915_private *i915)
> +int intel_hdcp_gsc_init(struct xe_device *xe)
>   {
> -	drm_info(&i915->drm, "HDCP support not yet implemented\n");
> +	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
>   	return -ENODEV;
>   }
>   
> -void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
> +void intel_hdcp_gsc_fini(struct xe_device *xe)
>   {
>   }
>   
> -ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
> +ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
>   				size_t msg_in_len, u8 *msg_out,
>   				size_t msg_out_len)
>   {

