Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109F84A992
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 23:50:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124BA112591;
	Mon,  5 Feb 2024 22:50:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A1GSO1Sr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 522E410FD55;
 Mon,  5 Feb 2024 22:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707173442; x=1738709442;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zTsZNHvRUdd55O5oGvyYgezfpX/07m44Yc5qmv0565w=;
 b=A1GSO1Srad7maXeyuywsbs7oLJz/QhILuwSR2KqHZq1PQA8Hs8zjZLse
 JaXbNFZODSVbkHE6UT4z09zLET4Fxuab3p253Sekff5ATVufoJzocP+W1
 u3jvPI+pkY7fhkh372Z3UUbzYYFIPnnsd+Dw1BWGB4ye/coJVr+B24kTy
 uu+lCzWHZ+7IJ/WU/il68CmDh5AwznH88jtS8qrkQOQ52+RSIACH8q9Hp
 oLEjcm4+FGb4/IYNofB2Ei1mcE0t/ehX+N7s1SKCopV0lMpfP0MoM/8dL
 c3CO3VRFkumGILS09v5tUEYjGzDdi164FT3r2RhECqdq+X5403de2HI1U A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="395045691"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="395045691"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 14:50:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="862670"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 14:50:41 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 14:50:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 14:50:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 14:50:39 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 14:50:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gj2xXPV7AyZbQYyFcYT+L7Y1HEhj+R3mpObVilP7etFGnQmQivEQvPH1fMJI9mB0LW3V3F09reSy+NBRuyrwJcFyegsznxqAXCIyOSgY4x2a1j+q44x9cWsnv4LL9fIDdBxkthz2zZkPwbsTa4u9ltoymatPgOk7cIYUW3ud0AekwHpR5OzVc2gEn/ZXubyZBqYsS/yTo3Rk738oRDk+ecdWra3PyLxBBUux04LqvEFP+2gftnKknl4GMp0uCZZn7/iu1offYWDBKTqYm+NRgKG9Qxa2FyFkKFzXr1R0MgCx6ykvoyF/qzECMO5gTHUW0RpNVP32pvelh6texlJOxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G0FS/HOxcc9ak4LGyVTyct6XfQ5ueQjOMNLYehnGFow=;
 b=WrN4hxOQJfPSoagKpM4AFjONAEw7Qa1jKFBYR8XRsTJ1LdKPcFgafb7AU1wU0d2+1OJp2JJXdTvfgWn2J9rW7AKwZU4drwrjdIzCvnle2D9oalrMsJZ0jzJopDhmXVmRMayW31LUJagmGyZwHtzrK2NAfddoFDz8p6iit5gD9QDRReREehVvlSDVv4GjE+ESnWqpmRrF/JULkdoQC7Y8rmEmgwnEOa37U0l4UHAGSpzaTZQCnIVFCenbYV+e9D0D8nJEbj50NLOFl3XR8WfWmgPxng/zSM9axCn5300Uleqsh2qO2LzLCwz7wkxUD1lCh5I36dw5pybwxLGj7fm4Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by IA0PR11MB8303.namprd11.prod.outlook.com (2603:10b6:208:487::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Mon, 5 Feb
 2024 22:50:37 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 22:50:37 +0000
Message-ID: <c30a93fa-8372-43cc-8151-e660c30d4e36@intel.com>
Date: Mon, 5 Feb 2024 14:50:36 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/xe/hdcp: Enable HDCP for XE
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <chaitanya.kumar.borah@intel.com>, <ankit.k.nautiyal@intel.com>
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
 <20240202083737.1088306-3-suraj.kandpal@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240202083737.1088306-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR17CA0061.namprd17.prod.outlook.com
 (2603:10b6:a03:167::38) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|IA0PR11MB8303:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e6c8e94-3fe0-4f25-1761-08dc269cde6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wxl4vLk5XwQ72QDGD8/wxH0HqYEb0ouDOdsC//1v7RxKaZBFeFPRLIvS/3YT37FJ1fs0Xs/eGeT+kYCLlToEPo2duRr43QQcWZxVaRGxqvl5sZEQn4YHIhPywhvqi9NzlSUe3ZNyoB0S6HsmAIvcvrM7VhWLjurd8xjk71SFqG32eud4Dp0jKt2+vdBVB6ib1sto9U+b3sdg279KvyC0d0+G7+RRiVpAakpFDknyK4g8Q/2kzCjTqxPYVSWqQJd9tSnb04mF0MSvw+DSyTwdTVuM7wLWY6+VCPzrdk612G9AVIfHJL7IMoq+GN+9O0/6wEeUPUTgNlLf99+B+1EDCYbQxLMLMRP/85XZKI0OQIlzG65Yhzgae94WDtkwyeAviBpyleEIs9mC6s73GO+gYYgfgngnXeQ3BhaI5wOw4R3LU5y/NzTAFc0JxO7q1HS/qnDUYRWNoCPAPO0GSYv+HXcq9DsGPpoy+fwpdEFFkJD2uKtkjQr7K5T+ivTzaAmVlglna63DZvyP2R4XPbuMbIo8aDCOksLdHuBqJxaz2cqXmwq/m/ooYDb6iJ8xYh7+8uBQzFmaXAeKf+LG1YlT9cnMakhRHW5q2LOZuWPWzsJR0nfhpcMIoVFsjkg+dKOSMeiRPAuKNgffCZRcMG04eg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(376002)(136003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(38100700002)(82960400001)(31686004)(83380400001)(26005)(2616005)(6486002)(107886003)(31696002)(86362001)(6506007)(478600001)(6512007)(53546011)(36756003)(316002)(41300700001)(66946007)(66476007)(66556008)(450100002)(4326008)(2906002)(8936002)(8676002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFBXZHJ6MDBSSVJ1aFlXMlV4SHRON2VENEFlNlp1cVY4RElJNm5vYzBiWU5J?=
 =?utf-8?B?WFVLNzhJQTZJRzNPampabVh4WGF3RFVWVElqNTdOOFN0ZFlpbGdvUFArQTBk?=
 =?utf-8?B?UitOMDlORUxFc3cwQVZVS2FzTGlOK1RzSm5UeTRhM0Z5c2pzNDRzSjZVQm1D?=
 =?utf-8?B?RCtqcy9aT1ljVHMwSVJHdFlLV1Z2R2RVdTFEVUw1VFVnbkZETU1LUm1ZOU4v?=
 =?utf-8?B?TXNkNjU0ZDlBc0U2dnI1STc1VDBuc1dNVHhjYzVYNEt2UUduNHZ0Nld5ajNV?=
 =?utf-8?B?UHBsd0hDU2t4WHJrLzAwN3hTZEkrZ2ZkY2xkMlhrYVVSVnFGclRTQ0MySFY1?=
 =?utf-8?B?cy9DeVI5SnVSZHkrSmFrd0M5aTdjb0wzMzhYdHZPWEl3Zi9NRDJDKzRkWGtv?=
 =?utf-8?B?MEF1RmtpbHpoelFiTVpUS01UWnp5YnN6Szh1TStaanI3R295OW5HWkpYWmx0?=
 =?utf-8?B?OVRwM0JETThDSnVzdjZxV0l2TkN3SUt0M0pkcHJIWlpJK0dSaERoV08xOGIw?=
 =?utf-8?B?MmYwcXlGTXhzQnE2MnlWTGdpaWljMkUrNUJ3TDkyWFE4Y1Q4WHJzWGFTeHBu?=
 =?utf-8?B?TjhvdFI3YktKVkVXeHdHVWIzeDBKMHlva214bFNINUJpS0VrRUoydEVjZm9r?=
 =?utf-8?B?TjVKa3ZrQWR1Wnp4dVF0MFJXbVRYckZacC9rUlYyYy9ZNnpyeFo3VmwvM2ha?=
 =?utf-8?B?RUFxWDVIY2E0UnFaM01lMit5OW9JSzlGb0xKZHRMc3hEWWhFRVFJbGFjMTB0?=
 =?utf-8?B?ZGV0NUhnMjFSVy9WL1NERHJjb0JEK2tBeHhDc2NKelNrQXlmSnplK280ZjVZ?=
 =?utf-8?B?OHM5M1FoNnFQQzRNSkFCYXltL2ovSEhjK0tqbzZJOVhQUkh1a3lob01IbExL?=
 =?utf-8?B?ai8ySGZCUkdzdXBHKzVVSmlCZzJLZ1EzWDFMeWpSblozNzFQVkhJdnJ0SlhV?=
 =?utf-8?B?OFA5TzQrYVpZNEc2VWk3RkRjd2dVRkwwNWxod1NRVmVuOUR2ckdGdnhNbmVH?=
 =?utf-8?B?S3BETGVQR3BEdW53Rjc0cXphYXFOakpXSkFSakhSMmc0K1V5T1crMDB5UWl0?=
 =?utf-8?B?TXEzRFBldlkxUGYvaWZzUTUzTDQ4RjZycFNOM0tuclkwQ3B0U2l4dUVnQjVo?=
 =?utf-8?B?MXJqMlF5QmVySSt1dHREbzhsQkxuRDI3cCt6N0RlbkVJNHAxN0p5UU9Bd1FT?=
 =?utf-8?B?WURQV2FoWWsxOWh3Tm9JKzA4MWNXWDNySi80VkVINExZV1dCSHZxTjN1blRS?=
 =?utf-8?B?L0RPREFQUnI5UUJBcnRBZVVuWnl4cTlRb1djV2pJK2xKYkVpaDdTeUdOZUw5?=
 =?utf-8?B?cUE5MHE5VWJmeDZxYTdTT092RjE1a296WndjUVdGSGY3K2dWSVBHNjlHNk1E?=
 =?utf-8?B?alp0bHprb0tyMjNkZUVsRGlDSkxxMFh3MEpKcDFIemVrQTBGREJ0RytVWThR?=
 =?utf-8?B?bFpUVEpYZ2lmdG9kSlpCMDVKanUvNG1yT2Qra0J3ZThRR3RQVmFIL0pwajI4?=
 =?utf-8?B?NGgxWW9FZlUvbHFRU3FYcSttYnFvWlF1V1lWVjBPd2lRWXV3YndDQ1R3b0Zw?=
 =?utf-8?B?QlZGd3lWZXNmL0VoT3FualJvK0ZwNERtRldsb09ZSjhkS3N5MmZEVVdnNjk5?=
 =?utf-8?B?Z1YwdXB0ZW9sOTNOY3ZSNFVBQ0NQKzdIMU9LT3FOdS9NUWhpWU13aFMzbDlV?=
 =?utf-8?B?d0tCUnVHL3BEcGdXdURNNjJaOEVPQVVxbTJsUmk4NWpiSmpXREZMczQ4TTk3?=
 =?utf-8?B?bWd1cWR1TnZpSnVZWmdpMnNyNTQrRzRRSi9YVTE2VzRJQ2d0emhoRFVBVWNQ?=
 =?utf-8?B?eExyYzdlY3JyNnhyM0FRQkJqOUZKTG9oc3hzRy9nY0Z2MzBjWmZtMFFlSE9G?=
 =?utf-8?B?eHF5U3lnQ3RtN0RKRGVGbVBHV3V0QStvUVkxT3IwYlBrMXVnaEU4TFBZUm5i?=
 =?utf-8?B?UDhRSjZPcjlsUWtEUVdFRGt2NkVtaUt0QlI4cXQ4TXNtVDNZWjhvUGZXWmJZ?=
 =?utf-8?B?OFNsdHdaS1hzYXdTQlFiS05zZGwvS0tRVEoydHc0L0MxS0xUcjZJZXdvUXlt?=
 =?utf-8?B?NGx3c29kZGhIeDNPa3p2eWRmbWJ5Ulh6RHAvU3BVUkJzdllvdFY1Y1NHRU9Z?=
 =?utf-8?B?dWpvOHVVSTJWKzZFR0htcURwek5mbzlxNTRCRjloaTFTRjNva3J6SHZkV3Bt?=
 =?utf-8?Q?I+mPTTJr6o4rsayjsbKZmow=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e6c8e94-3fe0-4f25-1761-08dc269cde6b
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 22:50:36.9434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b70UWYv795RtvwVLTZD5rilV+/8uq40L6x9hf1tKaV2gmN1K+UHUOhjumK7ZVx8nK960AHRJkdrNN9/jKCc3cxtdSKVFvFTunDZrfvtgYbk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8303
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



On 2/2/2024 12:37 AM, Suraj Kandpal wrote:
> Enable HDCP for Xe by defining functions which take care of
> interaction of HDCP as a client with the GSC CS interface.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 188 ++++++++++++++++++++++-
>   1 file changed, 184 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 0f11a39333e2..eca941d7b281 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -3,8 +3,24 @@
>    * Copyright 2023, Intel Corporation.
>    */
>   
> +#include "abi/gsc_command_header_abi.h"

My original idea was for the users to not include this header and rely 
on the size provided by the emit functions. I see you use the check the 
input size, which I didn't do on the proxy side because the buffer is 
sized to be big enough for all possible commands. Overall not a blocker, 
just consider the option.

>   #include "i915_drv.h"

Do you actually need i915_drv.h? You shouldn't be using any structure 
from i915 here. If you just need it for the pointers to struct 
drm_i915_private, just add a forward declaration for the structure.

>   #include "intel_hdcp_gsc.h"
> +#include "xe_bo.h"
> +#include "xe_map.h"
> +#include "xe_gsc_submit.h"
> +
> +#define HECI_MEADDRESS_HDCP 18
> +
> +struct intel_hdcp_gsc_message {
> +	struct xe_bo *hdcp_bo;
> +	u64 hdcp_cmd_in;
> +	u64 hdcp_cmd_out;
> +};
> +
> +#define HOST_SESSION_CLIENT_MASK GENMASK_ULL(63, 56)
> +#define HDCP_GSC_MESSAGE_SIZE sizeof(struct intel_hdcp_gsc_message)

this define is unused. Also, intel_hdcp_gsc_message is not the actual 
message, but just contains a pointer to the object that holds the message.

> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>   
>   bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>   {
> @@ -13,22 +29,186 @@ bool intel_hdcp_gsc_cs_required(struct drm_i915_private *i915)
>   
>   bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915)
>   {
> -	return false;
> +	return true;

Shouldn't you actually do a check in here?

> +}
> +
> +/*This function helps allocate memory for the command that we will send to gsc cs */
> +static int intel_hdcp_gsc_initialize_message(struct drm_i915_private *i915,

Having a drm_i915_private here that is actually an xe_device is really 
weird. I understand that the aim is to re-use most of the display code 
from i915, but if you need to different back-ends maybe just have the 
function accept a void pointer and then internally cast it to 
drm_i915_private or xe_device based on the driver, or use struct 
intel_display and cast it back to i915 or Xe with a container_of. I'll 
leave the final comment on this to someone that has more understanding 
than me of what's going on on the display side of things.

> +					     struct intel_hdcp_gsc_message *hdcp_message)
> +{
> +	struct xe_bo *bo = NULL;
> +	u64 cmd_in, cmd_out;
> +	int err, ret = 0;
> +
> +	/* allocate object of two page for HDCP command memory and store it */
> +
> +	xe_device_mem_access_get(i915);
> +	bo = xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915), NULL, PAGE_SIZE * 2,
> +				  ttm_bo_type_kernel,
> +				  XE_BO_CREATE_SYSTEM_BIT |
> +				  XE_BO_CREATE_GGTT_BIT);
> +
> +	if (IS_ERR(bo)) {
> +		drm_err(&i915->drm, "Failed to allocate bo for HDCP streaming command!\n");
> +		ret = err;
> +		goto out;
> +	}
> +
> +	cmd_in = xe_bo_ggtt_addr(bo);
> +
> +	if (iosys_map_is_null(&bo->vmap)) {

this can't happen, if the bo fails to map then xe_bo_create_pin_map will 
return an error.

> +		drm_err(&i915->drm, "Failed to map gsc message page!\n");
> +		ret = PTR_ERR(&bo->vmap);
> +		goto out;
> +	}
> +
> +	cmd_out = cmd_in + PAGE_SIZE;
> +
> +	xe_map_memset(i915, &bo->vmap, 0, 0, bo->size);
> +
> +	hdcp_message->hdcp_bo = bo;
> +	hdcp_message->hdcp_cmd_in = cmd_in;
> +	hdcp_message->hdcp_cmd_out = cmd_out;
> +out:
> +	xe_device_mem_access_put(i915);
> +	return ret;
> +}
> +
> +static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
> +{
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	int ret;
> +
> +	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +
> +	if (!hdcp_message)
> +		return -ENOMEM;
> +
> +	/*
> +	 * NOTE: No need to lock the comp mutex here as it is already
> +	 * going to be taken before this function called
> +	 */
> +	i915->display.hdcp.hdcp_message = hdcp_message;
> +	ret = intel_hdcp_gsc_initialize_message(i915, hdcp_message);
> +
> +	if (ret)
> +		drm_err(&i915->drm, "Could not initialize hdcp_message\n");

Don't you need a kfree in this error path? alternatively you can use 
drmm_kzalloc so that it is always automatically freed.

> +
> +	return ret;
>   }
>   
>   int intel_hdcp_gsc_init(struct drm_i915_private *i915)
>   {
> -	drm_info(&i915->drm, "HDCP support not yet implemented\n");
> -	return -ENODEV;
> +	struct i915_hdcp_arbiter *data;
> +	int ret;
> +
> +	data = kzalloc(sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&i915->display.hdcp.hdcp_mutex);
> +	i915->display.hdcp.arbiter = data;
> +	i915->display.hdcp.arbiter->hdcp_dev = i915->drm.dev;
> +	i915->display.hdcp.arbiter->ops = &gsc_hdcp_ops;

Does this patch compile on its own? As far as I can see gsc_hdcp_ops is 
added in the next patch.

> +	ret = intel_hdcp_gsc_hdcp2_init(i915);
> +	mutex_unlock(&i915->display.hdcp.hdcp_mutex);
> +
> +	return ret;

Here as well missing the kfree on error

>   }
>   
>   void intel_hdcp_gsc_fini(struct drm_i915_private *i915)
>   {
> +	struct intel_hdcp_gsc_message *hdcp_message =
> +					i915->display.hdcp.hdcp_message;
> +
> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> +	kfree(hdcp_message);
> +
>   }
>   
> +static int xe_gsc_send_sync(struct drm_i915_private *i915,
> +			    struct intel_hdcp_gsc_message *hdcp_message,
> +			    u32 msg_size_in, u32 msg_size_out,
> +			    u32 addr_in_off, u32 addr_out_off,

Those 2 variables are unused.

> +			    size_t msg_out_len)
> +{
> +	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
> +	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
> +	struct xe_gsc *gsc = &gt->uc.gsc;
> +	int ret;
> +
> +	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_size_in,
> +				       hdcp_message->hdcp_cmd_out, msg_size_out);
> +	if (ret) {
> +		drm_err(&i915->drm, "failed to send gsc HDCP msg (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	ret = xe_gsc_check_and_update_pending(i915, map, 0, map, addr_out_off);

This returns a bool, so you can call it directly inside the if statement 
instead of casting the return to int.

> +
> +	if (ret)
> +		return -EAGAIN;
> +
> +	ret = xe_gsc_read_out_header(i915, map, addr_out_off,
> +				     sizeof(struct hdcp_cmd_header), NULL);

Note that here you're only checking that the message is at least as big 
as struct hdcp_cmd_header, but if there was an error and the only thing 
in the message was the header it'll still pass. This links with a 
comment below.

> +
> +	return ret;
> +}
>   ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915, u8 *msg_in,
>   				size_t msg_in_len, u8 *msg_out,
>   				size_t msg_out_len)
>   {
> -	return -ENODEV;
> +	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	u64 host_session_id;
> +	u32 msg_size_in, msg_size_out, addr_in_off = 0, addr_out_off;
> +	int ret, tries = 0;
> +
> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
> +		ret = -ENOSPC;
> +		goto out;
> +	}
> +
> +	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
> +	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
> +	hdcp_message = i915->display.hdcp.hdcp_message;
> +	addr_out_off = PAGE_SIZE;
> +
> +	get_random_bytes(&host_session_id, sizeof(u64));
> +	host_session_id = host_session_id & ~HOST_SESSION_CLIENT_MASK;

Can you move this host session code to a dedicated function in 
xe_gsc_submit.c? that way we can re-use it for PXP.  You can also drop 
the re-definition of HOST_SESSION_CLIENT_MASK because that's already in 
that file.

> +	xe_device_mem_access_get(i915);
> +	addr_in_off = xe_gsc_emit_header(i915, &hdcp_message->hdcp_bo->vmap,

Note that this function does not return the input offset, but the next 
writable location (that's why I called it wr_offset in other code)

> +					 addr_in_off,
> +					 HECI_MEADDRESS_HDCP, host_session_id,
> +					 msg_in_len);
> +
> +	xe_map_memcpy_to(i915, &hdcp_message->hdcp_bo->vmap, addr_in_off, msg_in, msg_in_len);
> +	/*
> +	 * Keep sending request in case the pending bit is set no need to add
> +	 * message handle as we are using same address hence loc. of header is
> +	 * same and it will contain the message handle. we will send the message
> +	 * 20 times each message 50 ms apart
> +	 */
> +	do {
> +		ret = xe_gsc_send_sync(i915, hdcp_message, msg_size_in, msg_size_out,
> +				       addr_in_off, addr_out_off, msg_out_len);
> +
> +		/* Only try again if gsc says so */
> +		if (ret != -EAGAIN)
> +			break;
> +
> +		msleep(50);
> +
> +	} while (++tries < 20);
> +
> +	if (ret)
> +		goto out;
> +
> +	xe_map_memcpy_from(i915, msg_out, &hdcp_message->hdcp_bo->vmap,
> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
> +			   msg_out_len);

here you are copying msg_out_len, but you haven't checked if the GSC has 
actually written that much, you only checked that you had struct 
hdcp_cmd_header.

Daniele

> +
> +out:
> +	xe_device_mem_access_put(i915);
> +	return ret;
>   }

