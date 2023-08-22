Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DDA78388D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 05:30:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA11010E2D3;
	Tue, 22 Aug 2023 03:30:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E782E10E2D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 03:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692675032; x=1724211032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4qhuveJJuDZAczk1983x74gIAgN/tJgusvmRJQaeupo=;
 b=YBWa2cQfzZkld/IiU8pWw0QNSh/OgcKck1HVN4tXJKEBI2IAo2YO6fNK
 cbalz7ameOq7XgrZDq4H83v82tNZtFrfrvepXP3130SCNfxauaAuOu+cL
 HKFwI82+9fkNlZJ3y7s2J7MFLWtgZHu7lkUJszsfsQmL5yetRkbGnlkH9
 w4GPWuQNmERcud/uvisD/RJ5NxjSZ9OPlYxeBfps4bplc+/Y2cqzZmTcp
 nrg4hlzmHho1eLYe5xrCEd/aaeQPUQaYX69imkUXX8jxvNwluqcJ9oSau
 Fv+qleSFT2FDbUyssDsWvhS3wfpLtIHaJO/xZyU9Ult6ogKGxNL43RMUP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="373737511"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="373737511"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 20:30:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="739148215"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="739148215"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 21 Aug 2023 20:30:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 20:30:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 20:30:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 20:30:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kvZ2y3I94zT27+dAO4DIIXhJBLcpCUK25HSUW5yzLZ7FZ3Zmyjo3PibcjKcRh+phvsYRpb137ournKDVyWBXYOqVWnYBcNathqUZkuEA5qdET6rmyQgudLY63FpWDZZg7oSi/+1U/wFOSJV1J82FD+HVPEwF19/WZ5/b6/JEYFJaXN6yrIm/7yFrrWFlVpr+514bUMYZROCUv348QBaox9EbEaMsU68kFn+A1+dJCq8hjC+eOYaVoatDg7nK/f+u+X7n+yM9uLxPVHzxYxZGwlVPe9LLYImMwEBvttXEhWIX+lP5ISXops9AAkgOBHLDwhFv7JKY1dFJCk+psVNm4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GG/mxOZJ9dMcVbdljZLgBFNZ3Ej5tKIOBn5OOszfKOI=;
 b=nqUoIEFHURBTDYjupnu4q/rkQ0Z929zd9PWoHoctWuVQqC+3iE29SKJcflWlySKDWx5gds9Dg79g7w+mhRYkYOoD/V3z0O857WckfZklvBD6ScrNksJNiLVfSLSUvDE3PjP8soZgynNfzjTBWi5ZUwe+zPrzaMDdVdD5Nb4L7a/EeFUFMRnb42i601a1MwMNeXmfZk9R8qHz06+TXCGlgs97eY8tR6aS1E0LmKQGgIW/1Ik2KtK9t7vp2899fLdTVEHMLef/yuYExVK+GNUl35quqmWvT7hphhZaSg2RsmirYD9KsunlWdKJFmA6j4LAPI+ah3dT3MXLjeg16R6okg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 03:30:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 03:30:22 +0000
Message-ID: <c3b1245f-56c9-6b99-9c69-3fbf99f53985@intel.com>
Date: Tue, 22 Aug 2023 09:00:11 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230817083524.296571-1-suraj.kandpal@intel.com>
 <20230817083524.296571-6-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230817083524.296571-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0217.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4581:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e1926da-9346-4d77-7740-08dba2c01e15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yjWiBQOop/xJbUpeiVOn3ZYg9R9V7UyEc1psKF98WT3ttj7MeAzYZlgIRqKrCipmmzm9SGiQHaZeDow/NrQjg/jFUDmNVa+G8DRIj/A3owFrI0XtdOY+6/jfllZo5zGixhUYgh5cw9c9/ABYFY64+NTprFKb8s3Z17ANyFp+z3HHj1JcXLBdWlocapjK8AY/era9DPwOKXOBxRZ3TINTFiC+92/o1jtWIOSu72RhYAyhUC+vnxOOtYJhYfUM1sTgCBscU5YO6muY4SBX2UyGFF269LwoQHo+YlfOCfORU1SuOBKkr1Y+GwmvHK5C8FyMUp/91f3xMQoCPNgLnCy33Y/fRawaSdYXQSo2rnCSwpTbssCf58yDFBC4fSaxiD9jO2XsfG8WyufHDnCVKhyNnYLmVnxAfrUCoRGHkQOKnTVt7BtBvLMcjePDrzGlxZ8AVsbc+uzyuruzZ4oHLL+GBxkfKzpEMvRx1lxztMpaMg6tcWAIWq6vGSS0Ub19s7/fNyVOM4RvwyIM0jK2s6OGjWlEZ29dXHldYc8uRYyAUOYryrwyJO8tLwZS8XQjwLOtZO9sgQneOMIqqIkM5UeljYCjNJqGNXyWbQCAqwX56EMQ2LNrkiDz11leWX4U82Lx0rLQKrlxhN7NNNp8cV4xWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(376002)(346002)(366004)(1800799009)(186009)(451199024)(66476007)(66556008)(316002)(66946007)(6512007)(82960400001)(8676002)(8936002)(2616005)(4326008)(41300700001)(36756003)(478600001)(6666004)(38100700002)(53546011)(6506007)(6486002)(83380400001)(30864003)(2906002)(86362001)(31686004)(31696002)(5660300002)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnZhakhsSERsMjRNM24wMTJnOXI3ekRVdWlZNVpCWHNjMjBZUlBpVTlUM1Rq?=
 =?utf-8?B?S3VSVjU0N2p2VzhCYXFGdGhLK1NIdHFMWmVRS0hVMDlENlVyVnFFQXBNNCtu?=
 =?utf-8?B?dHBpMEYvdkxYelROVU1UWXIvYTRKZnBEdnQrMk82dU9uR2QzRUFkOWNvWEpJ?=
 =?utf-8?B?R2d2Z1JzaytwMWxpRGt0UkFQVkZRSFo4NGhrbG9acE1HSXhUd1IvSnUvRXR5?=
 =?utf-8?B?NDlhbjNZVkE4TnNIUUloekF2TXczbzJvaDg4Z0EwYXFsZGlnRW1aN3M2L2VS?=
 =?utf-8?B?ZFZaY01mREI1Z3ZMS0hRVFRnbis2eERHZlZoSVhCQk9ITUVZNFNyc0ZCUzJI?=
 =?utf-8?B?cDc2Q3NXc2cyWnVQTnp5YlFJbFRFVExrRmlUeWxXK3dvUWc3ckhtR1dBSDhj?=
 =?utf-8?B?ajE3aXhLaUp3eWdaalpQYzBaMDhZWi9FUXJRTStqMGovS3dDTFVSZGh6YzMy?=
 =?utf-8?B?WGdtejFnd29WZmRFM0RGN1BMQzRsYkpma09sR3VoOEsyWHZObFJFbUtPazc3?=
 =?utf-8?B?RmROR1J4Z1JNMW1xRVNVSk1zd0xQemRvdGhwN0JSTHgrUVVVVmtQVmdHdEdL?=
 =?utf-8?B?aVNuQ2hqNzVvRkdTL2FMTEFVbWVYOGZ3SEZGV0NJdFdqNzRwdG5pK25kcWRG?=
 =?utf-8?B?NlhjZkJ2MW5rVXNlZjJzZ0EyRkVDelZUWUROMlpPVE9EaFY0a1g3OUdvMDB0?=
 =?utf-8?B?d2VwSDlnRWVqUmRYSTJvcW1neDljQklmQ2xRN2tVaGlNS2t4aVBTQzBCaU44?=
 =?utf-8?B?Z3d5TDlqYUtTd0ZLSEVBSE5nT3RTUXd6YUZYdnFrZnpwVTJJUlFQUW12NmIv?=
 =?utf-8?B?VUQrSzJFSVZEKzBscEV3WFpaVUw4Rm9BbXhXSW5QVUh6eDZOR0E5N0NLN0Y3?=
 =?utf-8?B?MVFJUmVOMzFjM0Rub3VzU00xZEVkVGF5ZHFtY0hsT2FCd29aOWFaeVVtc2du?=
 =?utf-8?B?cEFoRmRiU1N1S1hoV0RIYmluKzhGT3hwWGVFN1pzQjcvVjllR051SFF5NDlk?=
 =?utf-8?B?cXgwbkdVeHBmeE94bGRGTUdqL2o4cjkvQmlEaTNUZWV3cktZdmI4dzZPMjBZ?=
 =?utf-8?B?YXIxMkduOE9VYXJraVRxeWY1R3JTSEFRVUZ1NXFaWWl2K1lTa1MvbWlNbXJ2?=
 =?utf-8?B?U0FLUGFVRloxalNiL0hUU1lmZHZ5N2xWTWJlME0vVDJ5T3V3cm5NYm9qL2tB?=
 =?utf-8?B?cksyTWgvYkJTdWFIZzdZaWdsZXV4ZzlkYW5Zd1lUS05ueWJRaks5blRLZVRZ?=
 =?utf-8?B?M01YeXM2WVZyZHV6NWdsdFAzSlNvQXk5MkU2SU0rRndPM0hjaFQ4amVvVlBQ?=
 =?utf-8?B?c2p6U0wxMHVuZUhVVnBydUxYV1Y0b05FTGRmTkR4amwraEV3KzliYnkxWVZR?=
 =?utf-8?B?dUltZERJSlVuekFrbGx1aEZURDgzaWFUay9mME5HVFA1SkRGVFc5TWRrM0RX?=
 =?utf-8?B?SmVoR1RtOFlOQTEzbkFzL2g1UTFaVkVVZExUWW9mYTFTYmhnRUllMEQzMjd1?=
 =?utf-8?B?K1lEOHpJSTd2OElEZk9kNTF5cGlHQWxtR0ZUN3BOa0lCdEJTR2xMQXlPVmZu?=
 =?utf-8?B?REhqMGEvS01sOTE1M1B0VkY5R2dCaVFZY0FaT2lxejFocFBUK3ZDMllNRkFI?=
 =?utf-8?B?V21LRUEwbU5ZaDlLTlZmVjRqWmVVTFRKWVlzTmZhZFd4T3pxNENxNm5OaHFU?=
 =?utf-8?B?Qmt0VDJIVS9XZE1OcWI3K1l0cktvOFh5L0doaDhvalIyVktxbmR0bFA2TENL?=
 =?utf-8?B?ZVlpSitlOG1SZ1F2aWVQNVJpbzZOTUFlOHpVdTdrYTZ1NmdFZTVzM1FWa1Qx?=
 =?utf-8?B?TGxIRVNHWm1tNCszT2RBSUMzMEo0UHUxZU9qOU93cWJFczhWNzYxVDNyWHZU?=
 =?utf-8?B?WUZCS3NoTWZVVkhlRUMyVnNIRlhRZVJmSTMxcDllVUl4N05iVVBUbi9XRTF1?=
 =?utf-8?B?eStJbDJwOEI5ekkxKzd3UkpENHBZUUlmSVZxRGxrS2RSck4rdTZBQ01JcUhE?=
 =?utf-8?B?RFROSXU4dExtYlNvS1JGY0JPYTdDb1c5WEU5Q1lKYXY1K1NQN1cxUG5zeWw2?=
 =?utf-8?B?S1QzbUszZUlnU0NlSmRzVFlOMU1BREVzaS9DbXR1SjB0clNTeFhSbTlGNkpT?=
 =?utf-8?B?NVROTFRPcG43T2VFbU5kaHcxZDdRRDV5T25uK1UvM0gzUG5yeHc5SmpzOGla?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1926da-9346-4d77-7740-08dba2c01e15
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 03:30:22.8586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xpUA1nyzcSpvu1MI3nJgg8Tlg1rGDfEXUO4rga/mOsvHbNSB+KOn9gPmwHFBK0DjEs19PESMPbZtv1FAnTew90Wl4aNuAPeRgwb/vfGiQBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 5/8] drm/i915/vdsc: Add function to write
 in PPS register
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


On 8/17/2023 2:05 PM, Suraj Kandpal wrote:
> Now that we have a function that reads any PPS register based
> on intel_dsc_pps enum provided lets create a function that can
> write on any PPS.
>
> --v2
> -Changes need as PPS enum was dropped
> -Remove duplicated code in intel_dsc_write_pps_reg [Jani]
>
> --v3
> -Use dsc_split instead of num_vdsc_instances [Ankit]
>
> --v5
> -Changes to implement the new dsc_reg array variable passing
> [Ankit]
>
> --v7
> -Pass no of vdsc instances to get_pps_reg [Ankit]
>
> --v8
> -No need for dsc_reg dynamic allocation [Jani]
> -Change function to void as no return needs to be sent back
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 272 +++-------------------
>   1 file changed, 30 insertions(+), 242 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 27ae70b5849f..e6c2d3ae60aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -393,6 +393,22 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
>   	}
>   }
>   
> +static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
> +				    int pps, u32 pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	i915_reg_t dsc_reg[2];
> +	int i, vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +
> +	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < vdsc_per_pipe);
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);

Send ARRAY_SIZE(dsc_reg) here instead of vdsc_per_pipe, as mentioned in 
the previous patch.

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>



> +
> +	for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++)
> +		intel_de_write(i915, dsc_reg[i], pps_val);
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -428,149 +444,41 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   	if (vdsc_cfg->vbr_enable)
>   		pps_val |= DSC_VBR_ENABLE;
>   	drm_dbg_kms(&dev_priv->drm, "PPS0 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_0,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 0, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_1 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
>   	drm_dbg_kms(&dev_priv->drm, "PPS1 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_1,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 1, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_2 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>   		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>   	drm_dbg_kms(&dev_priv->drm, "PPS2 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_2,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 2, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_3 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>   		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>   	drm_dbg_kms(&dev_priv->drm, "PPS3 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_3,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 3, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_4 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>   		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>   	drm_dbg_kms(&dev_priv->drm, "PPS4 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_4,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 4, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_5 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>   		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>   	drm_dbg_kms(&dev_priv->drm, "PPS5 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_5,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 5, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_6 registers */
>   	pps_val = 0;
> @@ -579,100 +487,28 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>   		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>   	drm_dbg_kms(&dev_priv->drm, "PPS6 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_6,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 6, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_7 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>   		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>   	drm_dbg_kms(&dev_priv->drm, "PPS7 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_7,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 7, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_8 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>   		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>   	drm_dbg_kms(&dev_priv->drm, "PPS8 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_8,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 8, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_9 registers */
>   	pps_val = 0;
>   	pps_val |= DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>   		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>   	drm_dbg_kms(&dev_priv->drm, "PPS9 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv, DSCC_PICTURE_PARAMETER_SET_9,
> -				       pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 9, pps_val);
>   
>   	/* Populate PICTURE_PARAMETER_SET_10 registers */
>   	pps_val = 0;
> @@ -681,25 +517,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>   		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>   	drm_dbg_kms(&dev_priv->drm, "PPS10 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       DSCC_PICTURE_PARAMETER_SET_10, pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 10, pps_val);
>   
>   	/* Populate Picture parameter set 16 */
>   	pps_val = 0;
> @@ -709,51 +527,21 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>   					vdsc_cfg->slice_height);
>   	drm_dbg_kms(&dev_priv->drm, "PPS16 = 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
> -			       pps_val);
> -		/*
> -		 * If 2 VDSC instances are needed, configure PPS for second
> -		 * VDSC
> -		 */
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       DSCC_PICTURE_PARAMETER_SET_16, pps_val);
> -	} else {
> -		intel_de_write(dev_priv,
> -			       ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
> -				       pps_val);
> -	}
> +	intel_dsc_write_pps_reg(crtc_state, 16, pps_val);
>   
>   	if (DISPLAY_VER(dev_priv) >= 14) {
>   		/* Populate PICTURE_PARAMETER_SET_17 registers */
>   		pps_val = 0;
>   		pps_val |= DSC_SL_BPG_OFFSET(vdsc_cfg->second_line_bpg_offset);
>   		drm_dbg_kms(&dev_priv->drm, "PPS17 = 0x%08x\n", pps_val);
> -		intel_de_write(dev_priv,
> -			       MTL_DSC0_PICTURE_PARAMETER_SET_17(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe),
> -				       pps_val);
> +		intel_dsc_write_pps_reg(crtc_state, 17, pps_val);
>   
>   		/* Populate PICTURE_PARAMETER_SET_18 registers */
>   		pps_val = 0;
>   		pps_val |= DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
>   			   DSC_SL_OFFSET_ADJ(vdsc_cfg->second_line_offset_adj);
>   		drm_dbg_kms(&dev_priv->drm, "PPS18 = 0x%08x\n", pps_val);
> -		intel_de_write(dev_priv,
> -			       MTL_DSC0_PICTURE_PARAMETER_SET_18(pipe),
> -			       pps_val);
> -		if (vdsc_instances_per_pipe > 1)
> -			intel_de_write(dev_priv,
> -				       MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe),
> -				       pps_val);
> +		intel_dsc_write_pps_reg(crtc_state, 18, pps_val);
>   	}
>   
>   	/* Populate the RC_BUF_THRESH registers */
