Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 893D761F818
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 16:59:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E57CD89137;
	Mon,  7 Nov 2022 15:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED9110E437
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 15:59:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667836778; x=1699372778;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yZJLhLl1+mIukdo790+Pmq/jaikzLzclP/jH2eLf10E=;
 b=MVEjhxeCA3ewUGlMbN5weTTJUqkf458i1xXDwJcyVBsg3YzspNs/QRLB
 8atlDGFHFs5VaP+0uoAaxCsJP/L4hRc83JI/ytJ6hS08IO5oxOrchOiRU
 R+E+CyvY9bWEoT45XHISmfcSbdVt5jBAEU45KPvGloYWqxGzO4qOORlUu
 eVnU9xpI7RCFlDKVLpkQCsiSN21z/vch9tVQnVA1Jv4g4KvzWJzXonC9X
 XzUepsCuBXLSfJ9iFCFhBe+Z6FvZD6mgaxeQhDV1njYmAp2ByrOgCzSxP
 w7wHc7jYkCFT/8AEb2168N5RU1H+6XIDzsMznQHrjoRnQYdAnpbGWZvZ7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="396741167"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="396741167"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 07:59:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="699521317"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="699521317"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 07 Nov 2022 07:59:36 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 07:59:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 07:59:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 07:59:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jHTrficg0VObyjYHyXuTRJPEcsL+iZ1qv3TnF5udaYZl/jsWvg9gqexD3GjwbpRd5UVR821SpTRrnYjyq4FAbzCCBSEdK8uTsrfV20mb/yBXWeityBax8Q501i4s6RucJQ1dTsnAQo4N+oE/9asw3zUYRM0LP73IKz/XntkTE2XLg/45+1p8w3mWHHLimmMJe0ffLQYPnQ9K/J7HtBWa5/cvOXbOpMOmh95ryxy+GWcLVn1K9yZxITsw+BaZ15Ln6nutMKCXxac52ObM8neN9/QcfXL2UbwQIAA2nHX5ijmM4umBXeIwwkxmI2QCCqqQFAfAx0RHLlkUVPNHJkguPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+kAL8s9kyOjNnn9zcNsS57Q+U3e4oc/BgEiGtWciK8=;
 b=mlIisktHBGN1PLX7/Yvpjd0RgHtsjEaZOcW3QksHyXw6HNc+4v55Ro6FqOQU0inVtl1IvUvKVxia0yXm/0EhAIMdaWasZh9vlDW46R1J5IUEvgvbaS8S1fUx6by+bdPU+IMeatQ8Pl9rwXDvXllKR4Ye47RwkxDMsauNiBbJATqjzAu60dRUyYD3qHs6IyfClK6l21+4jxculLot6ghp4Bn6rPR4sFEVsUslButhzGRwO+X7YdrjAEJ3R79b/nMJxczM1EoQuceeE7paOVpytfv2/ANUgdPnITC4sj7lmjxGbTCbBl4VdPENbiesWljA3GNNlD47fFY17xrOkZO6gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 IA1PR11MB6290.namprd11.prod.outlook.com (2603:10b6:208:3e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.25; Mon, 7 Nov
 2022 15:59:33 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%6]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 15:59:33 +0000
Message-ID: <25f12419-bec3-d8af-c784-fe1582436c66@intel.com>
Date: Mon, 7 Nov 2022 07:59:31 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221107140454.2680954-1-jani.nikula@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221107140454.2680954-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0159.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::14) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|IA1PR11MB6290:EE_
X-MS-Office365-Filtering-Correlation-Id: 97c69d56-2570-4ba2-b983-08dac0d90fcb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wzye2TVBz3ughAz3p1pg/mXBzSsEOCt2xB7uqZLXxwyFZ3itd/rbRVOPGTfXQmVxpZFA8xkX5LtWZrj0HZD14lSUT/L442dQLWka2FAIPIPOrVW/uiIX6NkpsP2wYKUVbX6zHjczEKJ6lSsVnoXSSD7LHJXqDIaDRkAIpOPqDDglsk86fGiFCSxdSc/VP8Gd9uTpkygkmtHR2p+FNGzEzAmAGtyZfcmCVBJ+SunvN5pZMNUyQW0VFx3TchutKpb0/ktH9UpL1Em3F/iGAAemqSmHnv+kyKanmNOp25wN2EngsH7PsEy6F6ZnY5347FaKLkbt8WMKH99ZxN+piDMUl538ygoJmz56w9Te2EK09vuCAmW6rpJbJiyKbDZ15RHDe7ObhLO985VW/IKlkldepo4+3DivAGF31IcSx5Fzm18FXtG+ZJBscDWdxWyL9H3KhJVKEhu853Ka3icAdgjjMooBfITJgBv0rsnGbJu4riW9pxwQDdX60V4pjA0Xv6bBgw+RtHQsyE7lMKwbRDbDpgpCqiV/TeH1G5PeAo43POuElM6KCbHf+43EgPgBv/5FBDcGMUWFdezqjLkPasYuAbL18Ly8Ws5vPkrNuyunLTmVfvFHW3yXRZLac7izO6/bEUgbVrLuqquuy3DVJ8NosuxSi2uscMkFiXuZZ/YCnPk5o03YO+0eE9c0bdSv1ERSKm3zI7H10Jm932KIHIIcyamV3f/qPbz4TyJQ2WFOy3KuFMyXUyTfTTrH7x5JE37Sc8yh9qV/2zC9NXEUwSZPGCk9Pxz5mOXDS6b7oMZIByk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199015)(31686004)(5660300002)(8936002)(36756003)(107886003)(82960400001)(6506007)(2906002)(4326008)(66946007)(66556008)(66476007)(8676002)(38100700002)(316002)(54906003)(86362001)(31696002)(6486002)(41300700001)(2616005)(53546011)(26005)(6512007)(83380400001)(186003)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ukd1TEJwSzZ6QWNkNE5JNSsyL3lkczlyRllCVGF5WTkvc1U4ZEF5UytCSGYx?=
 =?utf-8?B?WnAyUlRiZmVSVHFXQXhGUkp4bWFWeDBSSnBKRm5abnlTOUhrSTkveXRkZkxG?=
 =?utf-8?B?MzhlOU9UVWZiS0M1dUlqenVYOUR6SVgxSVlrMDExWWxtOXd1Ym9ScXV2TVc1?=
 =?utf-8?B?cFU2Q2RKam5NNUJpelVPc21BNzZFOEY2ZlorT0pHOEJRUS9Kc0dqTTFUT1I4?=
 =?utf-8?B?S04vSi9WWHhkTk1ZK2tUSVQ0M3pIckZJVGgwektvTjd5Z2JkRys4dXF6WVo5?=
 =?utf-8?B?MGwva2ZpMUJRbm5SU1laLyt6ZklKQzVOUjRHSGZRTmdoeHpqT3pHR2g2QTBq?=
 =?utf-8?B?WVNmZXJlQ2ZNQ0pXQ2pzTDVONjdBRnFvQ08zM0cyckU0ZExIYmlodXpRbjFk?=
 =?utf-8?B?S3NZeXdJdTB4WEFheDZpQnVrZ000bUlSMlZoaGtFd1MrRVhocWpzcnd4ZmlB?=
 =?utf-8?B?cCtRczZHVi9GY3lPZVYwVW5IZUNFbDdkWkQvcXNEdmEzaGk3aG84alp6dkN0?=
 =?utf-8?B?N085RFVjeGNTUTRaZFBqOGFnYkFHMmJZbmNiempKMTJNZkJVanFBaDE3ZUVB?=
 =?utf-8?B?QTNWRXA5Q0RlSjdHRDVpbkhmNGRVSGVERnUzTzBtNHVEN05MWVBpaVQyY0pM?=
 =?utf-8?B?MWJFM2p1MmZwOXRDVTY4THBKTWFpQ2pxUW9JVEw1c1dkVkt3UFZSVW16alh2?=
 =?utf-8?B?MEJnTkFvZ0F4alM3N0xUU0JyRjV3WU9WMVNRdmpyMGgwb1ZDVTFGZ2hQNXRG?=
 =?utf-8?B?OGdadi9XdUp3L3JIOGVjdlRBVjFOTi9VaFF5MG9DcXBZMHI2aExsNTYrRHJ1?=
 =?utf-8?B?cGtieVRCdmhsRDA0UFZZWE5KN0pZL3RVRVM1MnZBdXRybG5MUVNzcWp0aGlp?=
 =?utf-8?B?ZktwQzNPT3lDUVNUdlJST28wbWYrYS9XYk1aUm5DdkRCMGR0UTY4ZXR3dm1u?=
 =?utf-8?B?VzA2bFo5SnNKUmlsR2lHRTdGWXluMFhwaUc5YUxrdDhEczN1cVRaZVlVZUV1?=
 =?utf-8?B?aUhlWlF3U0dNT3dFVnFmVVJnTjhkTUVZQVRDVGhxK0djM1JRdnJ6YlAxaUZI?=
 =?utf-8?B?WC8ySWFPcktZbW01QVJTd3oxKzFOU0xKWGpzTW5KTUVFQjNYZXRvaDB0eFJr?=
 =?utf-8?B?UHpoTUdGM21rc00vMFNnSUcwRk9rdzl1ZHdHVWVMbGRDTEVReDBlZ3VzRlJK?=
 =?utf-8?B?TFlieGlMTVlNdEZGcWVIRkFzc3RVR0p1QXpjQ2lacTdlSUsvL2s1TUVrVHYz?=
 =?utf-8?B?d1ZlVGFIN0MrOUNlRmt5RkxYcG1aQjdvbE9ibXVPbFBLMHdGZXdxUnowK0hw?=
 =?utf-8?B?STZLWG9neXNyRmZMekJQNTlrS01SbzJEUHl2NHlQY1JSbmlrcGRtMmF4Vkly?=
 =?utf-8?B?YnJ0bnhtR2pYZ2t0VVN0RDNWYlBPNXZZb1F3T2h2dCt0SGFRRFdYdXZBdXdR?=
 =?utf-8?B?NzJacndiZEVQNk1lVzRQR3U5RUUydkR1bUF6QTFMU3Z1MmVTYWRzNEpnWEJN?=
 =?utf-8?B?QmlKK2hHSVNVdkhvTDZUSUVMQUVWMzlucEtqQU5QOWxMQ2M0WEZQTTFvTXZJ?=
 =?utf-8?B?R05zZWtBa3FPMzM2dDhreWhZMDlnbFhabmdXRzN5dTRqanhTWGNKbFY2NW91?=
 =?utf-8?B?VmJ3M2I4WmdUbG8vZG5CbDRKOXRLcGpHbkh3ZEEzVUxaQTg4THNGZksrQU9Q?=
 =?utf-8?B?QzZVMEFPNm9HQ1FHYXd1dmhpZzNwQjVWOFRWRDJNN1NPTzNHNE40SGIxVUJL?=
 =?utf-8?B?ZUVuODkyUjZWbm83bG52MTlwY1lRVTl5RG9vZjV2RXlVTjRKV3lMQWFaWE9w?=
 =?utf-8?B?TWgrVGRWS2lYem5uaUpvZ082VWptU3Z4a0hTWTJKU01wZG1zWWg3cDBtQ2dP?=
 =?utf-8?B?K0tEMmxNY1puT09hYVM1NDdqcytPVFd0dzZ1SStKY1YyemxCTzFNcmp2amM4?=
 =?utf-8?B?K2JWRmUzUWs4ejFycHJaeExmSHhNTTVKdGhRQjFFd0dWM1BQcU94Rkx2L01E?=
 =?utf-8?B?NTBUT1lRcVZVTjhEc1FhdW9mcFNiaFVyVHBUbWcvcEwvbEFzdktDN05yb1M4?=
 =?utf-8?B?RE0zeGtWQUkzV1NsRUN3U1dHa1hkWk4xT1lFRGxHL3RGRzNhV0g5ZjRFSUxz?=
 =?utf-8?B?UFdZZ0w0QXlhLzM0bHI5bkZaZFlxZE1TcXlDOE8wc0xCYjcrR2xvMG9VZ0U4?=
 =?utf-8?Q?nImVI8UtyoCFjTRr5qhW1eE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97c69d56-2570-4ba2-b983-08dac0d90fcb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2022 15:59:33.3666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yPQ03lr6noPikTHupNppdJEgOptuBySEUfnnNmiyId14uAkL8HwNH1/xKN2d0FWPzVVoiuqhWZDS2qDcUurO6mHWpY4928oXrqMLj2ZhSaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6290
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: use <> instead of "" for
 headers in include/
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 11/7/2022 6:04 AM, Jani Nikula wrote:
> Headers in include/ should be included using the system header #include
> syntax.
>
> Fixes: 887a193b4fb1 ("drm/i915/pxp: add huc authentication and loading command")
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Vitaly Lubart <vitaly.lubart@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> index 7ec36d94e758..f6a3f53a1d22 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -3,7 +3,8 @@
>    * Copyright(c) 2021-2022, Intel Corporation. All rights reserved.
>    */
>   
> -#include "drm/i915_drm.h"
> +#include <drm/i915_drm.h>
> +
>   #include "i915_drv.h"
>   
>   #include "gem/i915_gem_region.h"

