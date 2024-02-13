Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E137B852888
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 07:05:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBB710E08C;
	Tue, 13 Feb 2024 06:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nI/gqgD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82A5C10E08C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 06:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707804315; x=1739340315;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Aw7g7jSnC9p02X6bUSBJZeg7qd4X9AJiMen8cmCMpXo=;
 b=nI/gqgD2woHavVwWrUjTb62OrT9+Z6pgqDbOoZSYPpT7BFmKJdiRTOTe
 P/FNy5h2HSr1BECxLSM+audYdCLjXbBhE77z5P/O/kl2vEcRzfp+sKjFG
 h4DGkqV8ttyLd7fGVr+CbE80sCUpV8LdV+EirqzSu7N4d85r9feGM2GGx
 YFiYm+I459etQR6IcuSJWrw6foYhedO+v1s3XGwf696ien7UcFmJmnLae
 U2Wsxeih5SETGd5l+e3+MSqXg0ERT0r/F4cEo399AVTB5Yb9MA+cvRRyr
 vDv0sl86E36DfyvYDSZEtLfUTUf/8MKkJWFFdnWwOOF7axRTbNrOzsdJa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19314312"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="19314312"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 22:05:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="911701571"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="911701571"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 22:05:10 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 22:05:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 22:05:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 22:05:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kTlyyQUnT/QBfhnqkoF0EbIaVcxWJx38V+SjES1rEUdieaTkO6Nz9EglpiuMZhfkzp8yLW4p/wcYsgcU06wQz5P43IF0CRy8oQ2ZuFr766ro+NytQuUEFY3E7GCjg5R85fONTtgW1i+WJNUtimwIDVxYPbvu4pVxFHEEiSN/q1vVgBQdYV2misZmZpxkxYEAEZvB2izkGwaNt6yxBuhqHUSasCUYgeo1MW4AS/rkyBwsTtHIEKj8JbQPkfzHS2EtRCYNp7QbHCm2ZyJ4BJPeZGLsg+vid36dslXxxz6IL6q0PgOQzkEasrzkl8WAQ9BWjOfsOUKRWm10x655cd8vJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q+p1yor3fS3+6gIaoYraxhDPLyOiPaAF2tLMyKM7GxU=;
 b=Vm/D9OMMq8J1KjraRYreNfafHrmr0LBd2x4bpX/pIyw8bvHdT877wnVKfehQL9gbwupRFfzza9VRltjXw3i4QVyocT9B5M/abz/IgZbhjphRI1sKXz64D4Rkp8CA/6XvRhTEb8VOgI+tWHtuV6OHf4iUUWm4ey+/REErdPqn/pK1R1KTS7RoztTI92b+aqoiB8wl/Op5Wf7b4XWA6XhNb/k7StQFAp9bmiZs+egyfjOg1j97k6fccIwH1FgzEHses2Rud+LtAVH5jN+20ri8BJ7aHfza99t1VH4X6KmoeiMS0Ils1atlpK+1EE1iUyNitg+q0tgKtrUQZ9WVw+eqiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7524.namprd11.prod.outlook.com (2603:10b6:510:281::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Tue, 13 Feb
 2024 06:05:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 06:05:04 +0000
Message-ID: <4b341489-8c73-47a3-90bf-637d89f10606@intel.com>
Date: Tue, 13 Feb 2024 11:34:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm: Add Adaptive Sync SDP logging
Content-Language: en-US
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240212173623.1464540-3-mitulkumar.ajitkumar.golani@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240212173623.1464540-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0196.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7524:EE_
X-MS-Office365-Filtering-Correlation-Id: 29289036-4c4c-445b-bf46-08dc2c59b87a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ihi89L1Sfwa2plFo6wp82ViyyWrTjE2P3ZaRCW9wiNCGBc7IDgR+s5CiwqDVtnT6JFfH8aPa/uSaHp1C/7sf1FWdGfih/fsX0GESAqMmB+yjDnP8DzJWnnGs0idbEZjtzld1ufy1BZCVDjpXZmkx0iysaxAn0ZJWtgJSWWHlp4mFQ+dmCftNHQd280dtWlntMI/1jTpPgdviFIwl9v5mTtN3xhiPALsMkPMhXNYqNAQ6ZO4ju+RZveIZulfmhmv1abqI/yansvuWtYiRCaHU8PyTWq3ou0qHlRWH5xN03297Y5jWWfJvPdq1DiWzp2YhzVAd0avPv/z8aeGnw+mbQwJebtE8J1JEc8Viwrub7yEn9CIwY81XPSsECcz+xDQvealybad+zA95vHc2iwTSFMwUKpzd+H6sOqs7NA8tc8uacoVwTF8PMxcNiqcN79mc27iKCevhHluD9H6xRbiGUmUXS47rxJ7n864pD9aGQpmoWAkqDZGAFXutZGcrsr1A3jlNyXiiQiBftEeRnlxSiVw+RC4E22Da+OaWLK36bmODZ29quNcW1chdYqviPyl/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(39860400002)(376002)(366004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(31686004)(36756003)(6512007)(6486002)(6506007)(2906002)(86362001)(5660300002)(66946007)(31696002)(38100700002)(478600001)(6666004)(53546011)(316002)(82960400001)(83380400001)(66556008)(66476007)(2616005)(26005)(8936002)(8676002)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UldCcmo4WGNwQk1wVjhGOFVib3pNWFlkTFAzVnp4V29QZUpLU1VvSVBmckl2?=
 =?utf-8?B?Q1N4SzFOT3kzbCtRRjBESGFRSllveVBJMzB5Z2FMc0t4Q1poQXBTVFNoUWxq?=
 =?utf-8?B?K1AzbGNURDZDQnFFbDIvQWNJaXM2a2tUenVjMVhRbWxOUjJWTHE2bTloUU1B?=
 =?utf-8?B?T3lEZ0RHaE9UaEpwWXgxRzQvdy9EWWltOVR4T25YSG1SUXRLNUdWd2VzRUtQ?=
 =?utf-8?B?d0RaaXlRM29IazFpMkdlL2tsVFJOUllEVXg5TDBneGIwb25KNE4yQU1BbkVy?=
 =?utf-8?B?VHkyd1ZYNG1vWUVKRnQ4amc1bFJ2YktpN3dlRlZZeEJEWTgxcXpaaWpzaHBD?=
 =?utf-8?B?bWUvdmZzYjYxTDlsa210WWJubm14RlJBeEt5NDVmNXRxeExYVWhUaC9rUi9p?=
 =?utf-8?B?bCsrMkp3a3dDZEdOZjI4NGNtT2k5NjZlSVNHYURrRTZNUmZSSWhMblF3Tlpz?=
 =?utf-8?B?S3d5RUlWcG5kWHpCY1ZDdGllL0F3MmZWMUJvRFNvRkVZS1pONWRoUndjQ1VQ?=
 =?utf-8?B?VE1NUEErZkx3TkNVVXA1NW5TYm5HbENVc2xuWEIwSmlmQUZqOE13d1FlN1lI?=
 =?utf-8?B?WEZFbmd5L1pVS3J3bGdvdWw2Zkl6UVJaVms4OUF4dmxYTWNNWWxwQ2k2b1c5?=
 =?utf-8?B?Zy9PeFF6b1lJalpZeEdSanhMNWhhbjBsdDRlTnBTVHBEd2YyMC9Rc2lva2lJ?=
 =?utf-8?B?dUJJTk84SWpRWld4ZzkrRjZYcURXOUNkanZQZEhYMFJaWUwvQ3BjOXQySitQ?=
 =?utf-8?B?UHJ4KzJ5cTZGeHQzeUJsdGJBZlQ0WkMyaWdJVzZCTHhhdXhvZXJZSnNaamVE?=
 =?utf-8?B?M21nNHZLKzk1T2Y0Uk4yWHR5c0ZId24vQW45U2Vpd0I2RUNWWDVXNlNYem42?=
 =?utf-8?B?dzJmNmNxTkxxdmxxVWFlRncwa0VrNXFJajkyVlNLTmpvcnBEQmhSaS8xcUIv?=
 =?utf-8?B?UHVOQVRjZEQyclNhOU1JOWN1aXlzQmRlKzh2MktNVUZKcXJrOE5aR210cUdB?=
 =?utf-8?B?enBzM3pzVXhkNG9abzErN1cvZ0NmOHgvWC9LUGx6UEh4NFRuVncrNFdxcFNu?=
 =?utf-8?B?M0pnUkszcXNEVVo1WjVWQksvb1RDYkxDblBPNWRzcmR5NFJhZ1NkKzJiajhL?=
 =?utf-8?B?UFJLdFBJTWFSYmlqQ2o2ek9oa0hENzF2b2hmcloxZjJiVVYzZFNuNzlraGtq?=
 =?utf-8?B?dWxvSWZpZTlFNThETEt4ME52MGZFU2duN2QxNnhtQlFjYXorRFc4YzUyWnBt?=
 =?utf-8?B?NXFJeThseFZBNXVheTZuWEhTM2RXTlU1b0dHQzhtdzJVWDBYeUZsQm9SWStn?=
 =?utf-8?B?QysyVGhRRnMxVExDYjRuendsU1ljQ1hQRFMyQzQrZWdOdEc1d2twc0NVZFl3?=
 =?utf-8?B?cHdvenloKys5Y2F2c2lDRkpUOVVMUTVmRWxPcmxTalNKeTNpeUQ2U0RBdmFE?=
 =?utf-8?B?cXA5eXVJVU81VHBDMHZxdTFjRDhqYUIvMHJWbWVORjJ5cGxyVnlMSE45SU44?=
 =?utf-8?B?aXhlZ1QrS1R2UjV1QUNFdER1ejhlK3JLZmh0L1pKcWVIVFVzK1JaSFlpdm9L?=
 =?utf-8?B?YjJxdTQzektOSGcyKytYeklkaTdnTXNWM1BTaDg2ckZ0T1JpMnN3SGRXY0k0?=
 =?utf-8?B?VWNqd3c1TDlCU29zUUNja1I1MFp6dFR2aDNtclF6VU95eWtUMlJIV01VRGRF?=
 =?utf-8?B?QVJFdEhjNVNadTlkdkJUdmlVWXdlTTNOV0lzVzJURE8wclBkcDRGUTVUMGZo?=
 =?utf-8?B?eGhQanFRM3hwZEc3a00xOGUyeXFTMWZNUncxc3YxR0lOSk5Zd1dFdkVTd1dO?=
 =?utf-8?B?QkhYcmhMekRXR3lqa0ZxRWZIYjhodUsvVWxDUlFYWVlTM2xHRjZBUGJZMkpB?=
 =?utf-8?B?Sjh5NDNXOGYreXJ2WkMxa1VIczNMN2VsVUcwV3VKUU9mTGJlWXVPZWJJUVdK?=
 =?utf-8?B?RGtPbEVRdmQ3d2JBclRhM2xyL20wOWhlYUh0RDVYb09tZkp5OUdFR0F6c0xC?=
 =?utf-8?B?UTZ1aXVBWEI3aTVhcnRaOGNGcEhvaVBGTXE1MzJUd0hVZGMvZ0wzV2pYTFpx?=
 =?utf-8?B?akFRS0FwM3JTQ0xiM3hCWGVKb2l6TEphWUc2czl1Tm00TkRGRXo2K2pHeFdY?=
 =?utf-8?B?MmIyK1lTT2E0NFVOZlZLdnZOd1ZtQXFhN1VWcmlEbW0vSW5vcHNzNXdDTHJj?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29289036-4c4c-445b-bf46-08dc2c59b87a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 06:05:04.1603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q6LfKHKKeTwBl2sL4LHrF/6kA2uzxHr+XzaCeQ1GK0NWVmo0xJ52ZLX/mrHWH7XnLFq69wC5dsgyZ7xRLruj0rilZE40/7CnU95wuScaYvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7524
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


Needs to be sent to dri-devel as well.

Regards,

Ankit


On 2/12/2024 11:06 PM, Mitul Golani wrote:
> Add structure representing Adaptive Sync Secondary Data
> Packet (AS SDP). Also, add Adaptive Sync SDP logging in
> drm_dp_helper.c to facilitate debugging.
>
> --v2:
> - Update logging. [Jani, Ankit]
> - use as_sdp instead of async [Ankit]
> - Correct define placeholders to where it is being actually used. [Jani]
> - Update members in as_sdp structure and make it uniform. [Jani]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/display/drm_dp_helper.c       | 12 ++++++++
>   .../drm/i915/display/intel_crtc_state_dump.c  | 12 ++++++++
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   include/drm/display/drm_dp.h                  |  2 ++
>   include/drm/display/drm_dp_helper.h           | 30 +++++++++++++++++++
>   5 files changed, 57 insertions(+)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index 8d6ce46471ae..dfaddd865514 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2913,6 +2913,18 @@ void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
>   }
>   EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>   
> +void drm_dp_as_sdp_log(struct drm_printer *p, const struct drm_dp_as_sdp *as_sdp)
> +{
> +	drm_printf(p, "DP SDP: AS_SDP, revision %u, length %u\n",
> +		   as_sdp->revision, as_sdp->length);
> +	drm_printf(p, "	vtotal: %d\n", as_sdp->vtotal);
> +	drm_printf(p, "    target_rr: %d\n", as_sdp->target_rr);
> +	drm_printf(p, "    duration_incr_ms: %d\n", as_sdp->duration_incr_ms);
> +	drm_printf(p, "    duration_decr_ms: %d\n", as_sdp->duration_decr_ms);
> +	drm_printf(p, "    operation_mode: %d\n", as_sdp->operation_mode);
> +}
> +EXPORT_SYMBOL(drm_dp_as_sdp_log);
> +
>   /**
>    * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
>    * @dpcd: DisplayPort configuration data
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 4bcf446c75f4..26d77c2934e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -60,6 +60,15 @@ intel_dump_dp_vsc_sdp(struct drm_i915_private *i915,
>   	drm_dp_vsc_sdp_log(&p, vsc);
>   }
>   
> +static void
> +intel_dump_dp_as_sdp(struct drm_i915_private *i915,
> +		     const struct drm_dp_as_sdp *as_sdp)
> +{
> +	struct drm_printer p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, "AS_SDP");
> +
> +	drm_dp_as_sdp_log(&p, as_sdp);
> +}
> +
>   static void
>   intel_dump_buffer(struct drm_i915_private *i915,
>   		  const char *prefix, const u8 *buf, size_t len)
> @@ -299,6 +308,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   	if (pipe_config->infoframes.enable &
>   	    intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA))
>   		intel_dump_infoframe(i915, &pipe_config->infoframes.drm);
> +	if (pipe_config->infoframes.enable &
> +	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
> +		intel_dump_dp_as_sdp(i915, &pipe_config->infoframes.as_sdp);
>   	if (pipe_config->infoframes.enable &
>   	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
>   		intel_dump_dp_vsc_sdp(i915, &pipe_config->infoframes.vsc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c73a0037f6c8..7d074e21bb21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1330,6 +1330,7 @@ struct intel_crtc_state {
>   		union hdmi_infoframe hdmi;
>   		union hdmi_infoframe drm;
>   		struct drm_dp_vsc_sdp vsc;
> +		struct drm_dp_as_sdp as_sdp;
>   	} infoframes;
>   
>   	u8 eld[MAX_ELD_BYTES];
> diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
> index 281afff6ee4e..af6790fb4791 100644
> --- a/include/drm/display/drm_dp.h
> +++ b/include/drm/display/drm_dp.h
> @@ -1578,10 +1578,12 @@ enum drm_dp_phy {
>   #define DP_SDP_AUDIO_COPYMANAGEMENT	0x05 /* DP 1.2 */
>   #define DP_SDP_ISRC			0x06 /* DP 1.2 */
>   #define DP_SDP_VSC			0x07 /* DP 1.2 */
> +#define DP_SDP_ADAPTIVE_SYNC    0x22 /* DP 1.4 */
>   #define DP_SDP_CAMERA_GENERIC(i)	(0x08 + (i)) /* 0-7, DP 1.3 */
>   #define DP_SDP_PPS			0x10 /* DP 1.4 */
>   #define DP_SDP_VSC_EXT_VESA		0x20 /* DP 1.4 */
>   #define DP_SDP_VSC_EXT_CEA		0x21 /* DP 1.4 */
> +
>   /* 0x80+ CEA-861 infoframe types */
>   
>   #define DP_SDP_AUDIO_INFOFRAME_HB2	0x1b
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index d02014a87f12..37045a903d89 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -98,6 +98,36 @@ struct drm_dp_vsc_sdp {
>   	enum dp_content_type content_type;
>   };
>   
> +/**
> + * struct drm_dp_as_sdp - drm DP Adaptive Sync SDP
> + *
> + * This structure represents a DP AS SDP of drm
> + * It is based on DP 2.1 spec [Table 2-126:  Adaptive-Sync SDP Header Bytes] and
> + * [Table 2-127: Adaptive-Sync SDP Payload for DB0 through DB8]
> + *
> + * @sdp_type: secondary-data packet type
> + * @length: number of valid data bytes
> + * @vmin: minimum vtotal
> + * @vmax: maximum vtotal
> + * @duration_incr_ms: Successive frame duration increase
> + * @duration_decr_ms: Successive frame duration decrease
> + * @operation_mode: Adaptive Sync Operation Mode
> + */
> +
> +struct drm_dp_as_sdp {
> +	unsigned char sdp_type;
> +	unsigned char revision;
> +	unsigned char length;
> +	int vtotal;
> +	int target_rr;
> +	int duration_incr_ms;
> +	int duration_decr_ms;
> +	int operation_mode;
> +};
> +
> +void drm_dp_as_sdp_log(struct drm_printer *p,
> +					   const struct drm_dp_as_sdp *as_sdp);
> +
>   void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc);
>   
>   int drm_dp_psr_setup_time(const u8 psr_cap[EDP_PSR_RECEIVER_CAP_SIZE]);
