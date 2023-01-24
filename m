Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B5267A195
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 19:43:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9852D10E03F;
	Tue, 24 Jan 2023 18:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2A6410E03F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 18:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674585795; x=1706121795;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GtbPxVCjDPhbFdcJW1DtmZtDNPng1rxx66/H9JLfrRs=;
 b=XpR9TJiqiYvctalNEQC58YRt9qlO13si/EIKFx09Zg2XlWEd2qpDHAnq
 cnrJG2VfF3Cvn6uhQNHP3OruucHCjsZfsr9GLBUKu+hw0UXWEvyKklnTD
 8+hrhb0ieun5jefh831tZX+7/mTxa/+/xS8sQPtYmhkwbs4lU6J4JXll6
 wnXhmII0kLlZLp4F72cCjx94mlx1BLynTiyv4sxh3qQTvp1rooRP7Jm7m
 PkfpnbgHC3pASgeWtwbNB/HWyKbZy47fHdHi7bKqOyLaWwBeK89jhmUUF
 A6jAP+n++zB08qfy1xcBFqbcLEYfc2NqeitY7W4s6OMxo6PYry0axnauS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="324073091"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="324073091"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 10:43:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="907615122"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="907615122"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jan 2023 10:43:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 10:43:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 10:43:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 10:43:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQXQLvrTDGEUsVgiLRrDvwJVSVc4qn0VrsOAob24/1RpcI4+2PWpbwDJmaUvSLnyMDdcKZe64OI6tuRMeQ+8u5ioCJB73vn40VT+nlQ3lIgIY54F1EVt0dmdm8ylCGQ6PMw4JivHDDbh5zr2MewjoQOWfpvwiFHvZGCIbCMUgYU9rcUMbvMW+O6DR0hE5XgsYUcRCz/obANXk8KvST20KFWtT2cSGluHE9g4TtfFets0kvrDp7juRPNXHoXTzpM5phQfZUfh1B9/w153tz5bPSnGyerO/9P9um+tcWex4vn0IiQMk6q/aUK4fF4K8/TFsZzCLZODAgXpAHRhhwuUHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UY89VQVTO+JfXKmARfpV2pMOupAzFUO8mou4k5HRujU=;
 b=mE+/DpyhtGRfBbJMuxmjnxxcS1uvNeeUDfGfv077+WHosomTrWvGMJa51c5nSAuxUpcq9glc139sJreKrBP5JOGtaLpJ9QSiqd8BwtQoT78k/vCxoGj3HWihYHNkKrGy2qYY0wxdG6dmsocJPr6x16876SHkpmQalb4tpqA+/GYH+jMvQeQjmpSJrBrLX8+jY6wPKVb2y6JlHH//cDBvwxNS3+gQni4BQ5HfbALRYQTfnidqcLiBb2KbzXD6qDlRBrmwkjuPUdbJpuhVtC1slGNJeTpeCrbS1CZVo76ja35HUMvWGxqO4LXoOzO6fY4qMEGcyeLmjm/w8g0ZIF2MVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 18:43:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 18:43:04 +0000
Date: Tue, 24 Jan 2023 13:43:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y9AmtJtmmcFfL/N+@intel.com>
References: <20230116111937.875-1-stanislav.lisovskiy@intel.com>
 <20230116111937.875-3-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230116111937.875-3-stanislav.lisovskiy@intel.com>
X-ClientProxiedBy: SJ0PR13CA0163.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB7854:EE_
X-MS-Office365-Filtering-Correlation-Id: a272a2fe-d6e6-40c3-84f9-08dafe3ad38b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kn6udd1cuas9iFDyllmbd0QQcC7anV8IeIY8cItzhaMRsCJS2TnLe7t3oC391LFOJpstuKad/a5X51uAmMolHZQe3WTJRyvoUkai9kxaC6SVSFgSqMnBdfY+OrYzXCULp0i+hX2/oOX5ZmF1UM+8FX5TkKQQRDHgsGAGCxwLdjLBVBEpK4HJC2zUbSS6oue9JHIzg3/rPTL+PI0A5YOJCEA3R8liTKVyFmf2xsHbyiK+WlTkihtyeNWkT3gmJVUiqWTlb3/8vm2UfhU4Y74DvcjOEoa3VSLmp0S4HskQXfAka2BtgxX8vv9u9WqIp/TScw+LbulbK/eVYNE0eXjcqOJOKviXp7BdTtT59ua6kJawVKCWLKaHlOpmKWRcM+rpbTAWLnDoi0lG9gR8XAKrZRapi+CiL0hlFdahi5S3gBTkNTUJoBOlX4fwu5C7Wmiove8xxVhsAtjBvMy+NneKLHrVkH0TBaoWSYOHzF2mjqQ7ua5Y8RE2XUy6HNG3C0a+yCdQCMcL/eidNh8d+7muS5/x4kmsnSazNE8pEUmakb3YBVCzAx4UFGhdFRABSxTrn74gYSeQjZI85/IKfKQos+4KAeVjTNBjUTVRfBv4owdPMoBRp2AKaf1AUMrs6DqWnL68TVQTUOInG4Smc8DKWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230024)(396003)(39860400002)(366004)(346002)(376002)(136003)(451199017)(6636002)(8676002)(6512007)(186003)(37006003)(26005)(66476007)(6506007)(83380400001)(6666004)(86362001)(66556008)(4326008)(478600001)(6862004)(82960400001)(2906002)(6486002)(2616005)(8936002)(44832011)(36756003)(66946007)(316002)(41300700001)(5660300002)(38100700002)(66574015);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?s8YdfSBig4fn5NxRZmCau/I8+XW7TgNjJbxJO9F3mjFBg8e4+CUHwmrq4o?=
 =?iso-8859-1?Q?fHcJ93zohWpQan5q35Vs7CxVKCgA728uBGxg8MVo4yCPoZu5df92K2RV8f?=
 =?iso-8859-1?Q?MNW0vf28CR45l1WQBqOT1AfZsDmw3pfYMgP28oLwDLphhLVVwqcGjnOM0C?=
 =?iso-8859-1?Q?YFk0N7h00eGv8dGuuqbSK6u3EcaVqXleS0fZ/8YlZs2xlz1dTT/Nuvy8r/?=
 =?iso-8859-1?Q?hz9GszSQlKuYZHPwU08cBnYfLkfNzpALTZyRd0W7H0ptBbMMIuiN2I8OGq?=
 =?iso-8859-1?Q?tOBwj2mrHNTV1B8wp6q9HXt3xwaz29fwpcY68l4cj9yuAFrATmtc0gU1HI?=
 =?iso-8859-1?Q?G4ADG8R02ge95EZPFc7jxYRXKJS0ypEO7WcKdFBi1LpG0O1kAzAFnfg8B9?=
 =?iso-8859-1?Q?CAkK9veW9j/rq5DsfPxkjf1r9cl4FJC3YUbFvqmfAE/1iT6nuDrtCft0am?=
 =?iso-8859-1?Q?aKki0HDjsUsCQGlWcWnvP910j9ih0sCZk1CXda1Ux/vc3OukJQPJ8X4NGb?=
 =?iso-8859-1?Q?gA3YxuVXRwlPHsO2S4+olPYWX9f3NFcbi/j2Oxt4w+Nl3GpwgHInkHy2Jd?=
 =?iso-8859-1?Q?TaTtSaXiLKZvcr29r+l/7132OB1h9RnDde44wLuFFt7Ry+sLMNGeC6VHPa?=
 =?iso-8859-1?Q?AjVJWoappg5eocgOa0GYVg+ttbH3wiTF2C54aPiFxhwtRpVgTtXwH/Wz+h?=
 =?iso-8859-1?Q?Cpfy5P/GeUVVUJsZhx4JCVOFqGXi+YmweoXTd0SpPm627H3Abxm9U+9V24?=
 =?iso-8859-1?Q?Z8qF5sRBAy+wl2UvQyMJO/lenNCIWKnIRxxTEOkXm3kqwMGYKQhtXOmcW2?=
 =?iso-8859-1?Q?Mxdp3mnlJB6LiqrcnQKBrkk1KNktXsw7gFlwnFrwpR56kzRTYTsm1EXjw8?=
 =?iso-8859-1?Q?3r3r1o10nr3EM9+bJhB4bmblObjjrnOm5LI2INoCFOqLrsg0tmMaL1aosx?=
 =?iso-8859-1?Q?3I3CrnwHA4NiyPFJHG0P/wsqnx2bbOjZ+E3koD6csA6HE3tAdv+40tkgH8?=
 =?iso-8859-1?Q?keWh39KzSGImeX1VRVEAsgOpqj8FWq/7F/XLBxSo5rEfNiAPsIqxevQGhs?=
 =?iso-8859-1?Q?ANPKFuMP+uyo4DriUMyYBj4HAjmLEd/4vXoCB/5TRM5zBDLPbnkL5IaKd0?=
 =?iso-8859-1?Q?jxOjVm/9AYFS2uVET9i//gPKLBd5Y7tPH7TD1pBA5Tv8meR/weTeWq3BNk?=
 =?iso-8859-1?Q?0BGfehuTjh7tRW9A8vkdIUJXARbzL+/ekJTCEk5jXb0zFPsxcU6+M55mc7?=
 =?iso-8859-1?Q?2Ai0fleS4OeUnEBOOUrGY4rUheQgzRtjVSyak6xX0/kLDUM8MxbsT6M7wX?=
 =?iso-8859-1?Q?XYhtMf6izTY7GuXGGcPG3BXvCULwwr1rSriElCSv0S9ZWzLef/Nzbz6l5/?=
 =?iso-8859-1?Q?gNccK0DR87jP7C1WlV15r01agzp4LqG7QkQsTpQvKsYeVUDls2KePVdlYh?=
 =?iso-8859-1?Q?0S4lZbun/+yPu2XfPHmXWsFzM6hg4lzyIFXqFcgxOQKA8osVNypXUgXGUx?=
 =?iso-8859-1?Q?t9/VMe31F/m+hryW6+s3zV9Xxsf2jsxpr3WrUkt1MkAoymp/PR93Qy9oGN?=
 =?iso-8859-1?Q?Rvo/heuShIYNAkjsU+7vyApZA9uXwPtx2lyMJyTBtKGMDis+FfZ4Ypd68v?=
 =?iso-8859-1?Q?VATntvM/LcRVc1XtrEOpgdjV+qp3IfO0RV6JZmmgWlzW9izfgNBFzw6w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a272a2fe-d6e6-40c3-84f9-08dafe3ad38b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 18:43:04.1102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CB3SIcRlWhR5xOqnmLBm4rogQLxFOpyFORIggSbw/CQ73CvOtABAPca7Wp1d1c9eFZvS0nVar1jALw48sMaU0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement UHBR bandwidth check
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 16, 2023 at 01:19:37PM +0200, Stanislav Lisovskiy wrote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
> 
> HSDES: 1406899791
> BSPEC: 49259
> 
> v2: - Removed wrong comment(Rodrigo Vivi)
>     - Added HSDES to the commit msg(Rodrigo Vivi)
>     - Moved UHBR check to the MST specific code
> 
> v3: - Changed commit subject(Rodrigo Vivi)
>     - Fixed the error message if check fails(Rodrigo Vivi)
> 
> v4: - Move UHBR check to new helper function
>     - Now both for non-DSC/DSC we use that new check as
>       one of the constraints, when figuring out output bpp
>       to be used(Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e3e7c305fece..b95051fed23d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -47,8 +47,19 @@
>  
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
>  					  const struct drm_display_mode *adjusted_mode,
> -					  struct intel_crtc_state *crtc_state)
> +					  struct intel_crtc_state *pipe_config)
>  {
> +	if (intel_dp_is_uhbr(pipe_config)) {
> +		int output_bpp = bpp;
> +
> +		if (output_bpp * adjusted_mode->crtc_clock >=
> +		    pipe_config->port_clock * 72) {
> +			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> +				    output_bpp * adjusted_mode->crtc_clock, pipe_config->port_clock * 72);
> +			return -EINVAL;
> +		}
> +	}
> +

the check looks correct to me, but let's wait for Ville to comment on the placement
since he was the one who first noticed the other one during commit was too late.

>  	return 0;
>  }
>  
> -- 
> 2.37.3
> 
