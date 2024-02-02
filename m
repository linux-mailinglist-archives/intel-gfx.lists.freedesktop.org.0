Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0128E846D61
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 11:09:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2B310ED7A;
	Fri,  2 Feb 2024 10:09:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kCP2BdLo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Fri, 02 Feb 2024 10:09:17 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E5810ED7A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 10:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706868558; x=1738404558;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rtW+/dBeyVoGI0ed6L0v2rU/ebULeD0L5smvwoYgs1U=;
 b=kCP2BdLotaILOLz6UQA9XwXsVntVBIF9QZTASCKW7sDpo6iv8uoP1Rgn
 ALMoqSL8AW8OV3kA/hiq0ZETNe/GlnIHhmRIJT1n6Be9t7Rw90cDncwYQ
 DF7Re8H+BBsZj4FCKCd4IB5QRuE1vKkolIR9g8iDbtUFF+SmpbCEWEf1S
 FvIsipYyrQ+M1jZtW3r2m6XB731MdtGeNb/qh1pAmUVchWv1ShMyf43rx
 IwaMabs3UGNtznVImPRHlvKlfudc+G9M1+eVut8/hoTGGbFBdsm3/FcUW
 LbcGyQPp6x/z3K/UZUZME88DF+7qlFZyBh4aIooHvyA1OP1PSaBZG1HDp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="32537"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="32537"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 02:02:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="43108"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 02:02:10 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 02:02:08 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 02:02:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 02:02:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MbF2euk/nViZV/HZgVVSqaMi3C3KNQxhedOswyCSSaD/a1T7A9WrruMEzfbTrJUzc4uGdscrgyI1ey32A648OfUDHvf8+qpSIq697b0UYSoPuINuhyMbmqrBmhKbaIq3a5GmicrmPxK9gYk7WAeq22iT0KieFxpw9DUTFgorS5Yr2Sy25GzXWqanZGlXgZampoOjDew5tPdUgYiQT+3zHHnNkhkFuVrvBEySzWtsxJ0pk8rZ0zAaxiuTddc/3ekCegknVFlnbxT3MaOiDx3kBQViELdIHQ8PCn9wemgIuu22fsggJAyeVlgRTxQ5yZBcFHJQhIx5F0+aHmJO76hWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DcyZ1nRzM6l0/AdQ9VBwx0AICWsUF4jiahWO0sfEI3Q=;
 b=DTA7+MvBzo8IgK+M9Nnfhaugl1+JpTY8/yoHro7U4umfCa+QmJfBJpDOfDpjWM6GX43dmXh56TT3WeKJsNXala4qcDDgY0PyOHIPHrm45NwechfL6EeJnL6RygZ4g0/KooajTMx8rnYtwE0Qe52OPMBWzc2Nim4HCjOrcPXqFIApCopWTpowEQS0cVlk+6bHqa7NLJITV3e29caNlQAAcxSo7edFo/LqTCYHz1IPXf9Gg8xveVOCKCppeybcG3imRLRJASVghgC42CZXL8Tz102753EXTt/PLvXkkeEKQADOfcgAxVnKtrFVHPZMDN36XbTtumqRyMER/OJb/lJcZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB6919.namprd11.prod.outlook.com (2603:10b6:806:2bc::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.23; Fri, 2 Feb
 2024 10:02:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 10:02:06 +0000
Message-ID: <223fda9f-197f-4cd8-921e-f3b126b8f4ac@intel.com>
Date: Fri, 2 Feb 2024 15:31:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/hdcp: Add new remote capability check shim
 function
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240202063852.1076862-1-suraj.kandpal@intel.com>
 <20240202063852.1076862-6-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240202063852.1076862-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0193.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB6919:EE_
X-MS-Office365-Filtering-Correlation-Id: a1e2484e-4583-409e-673d-08dc23d602f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k2tXc0VRCkc+rkA5QnRc0Nge5GvYtAU8qgOGTAsfRhobg5E9d19JxThXnKX5FisFZwH7h636cKgijABO2DoFIQYQgAV9gc1Z9pkfUOx83F9AzW+7USg5PvIlCyBEd1rt2AsXmm61FnArK+RU06z4Ugpoy6Uv3V4yf/+4XzD4Eup5tbbomgsErnSryTYaJrLyXUu/BYCcHzUgeoDEmZCp67vpmsqAdBF1FpzKHBzPc6dLK8DXSbdo1IJeRpURHJDzbWVHBiebWPh6AWpUW+0WiTyGyzmdIiUZjWNrOrWI3zwZaQMxdnhvwlr2ae6WFT4P3VBTjx3uvIAeaoVrWJ5dmWcMynZvtlkPgt5Jiujes+mpHBojZoS1yZUbQfovum6gTKGHWvDrQVikiwQuzsT7vmGhRCEDzE932VqbjN0CytWpk+AOa6P2VZ2mXSOd4hK6mb9hp7edmbht1XnTHzbWiADLGBt4cQ+PycFVg5cP0y5XX4SC5oBAuFww2Xol1gaFxvM/aS9AliR5XxWt2hPxFGlw3HoBmZokb9OkMT+hGXQvundPiKCFdjdeP8DFv51ZKCkbWYg2ti+sSymQ39X185ztuLY/Wpx45Kdl/Xnt+Q8C1CkuzFvNXckQIwbqh1e0sA07t1HygO61Xl3g0MIRKg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(376002)(346002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66946007)(316002)(66556008)(82960400001)(66476007)(2906002)(8676002)(8936002)(36756003)(4326008)(6512007)(31686004)(31696002)(86362001)(5660300002)(38100700002)(83380400001)(26005)(107886003)(2616005)(6666004)(6506007)(6486002)(41300700001)(478600001)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1IrcVJ2cHFVem05VlR0QVhXVnlhY2xJL2tDYVEzd3NucW1ITWV1RW0rZWpk?=
 =?utf-8?B?aVN1My9pL3J6cmhlQ1VZNmFiSzNqMzFuMUhEbUowL1llaEh4S09pNS92NjN4?=
 =?utf-8?B?MjZGMytFcnA1OUhvdkxLa3FhQ0N1UytJTzFoUmI3ZEgwM21NZjdKcFVpd2xw?=
 =?utf-8?B?NDU0M0NEckIzdU9kNGw0L1R1SUt5c2JUUSt6dExNODBxcU9MQ3dHcDZKRXR3?=
 =?utf-8?B?WFZmbmxYNzZzOEExL1pCdGxjZWYveXpYUVpJTW5PYWg2UjFCYWNEblpnR01P?=
 =?utf-8?B?dXRLb3I1U0JCeXdYR1AwdFMwbXh4S0N2N3dmTTQxTjBwZnU5Qk85OE5aUHpu?=
 =?utf-8?B?Y25nd1NTY1BaM1gwWU9lV3lIb2pYRzNNdGdBeWVER3lvcEhLYVFIMXllWkJm?=
 =?utf-8?B?Vng4UkFQQ2NUKzgxTCtONSs0dXRDalVsQ0NtZ2xxemRCYmxWd0VNbzYxQjBW?=
 =?utf-8?B?WUJ5WndHQ012YitKeHFvOWY3c3hxMkhGYnIvdml3TThBZXo1U25aa0FYdm15?=
 =?utf-8?B?M3piaDRwWXFlTHlxdytnOExaWDNkOHZxLzhzZ1hsL1lTcHBZOUlPVTFQVWhr?=
 =?utf-8?B?bWVMdUs0Nis0MkRiaFozajRyRnFPQlgzTlJJN3FSc0s2eFIvTE9FMjQ4WVpy?=
 =?utf-8?B?QmorazFEODVWdGF4Mm95QWw4NlNBNUJiTFJueVk2UFA0aFlxUE4yeElKSXhH?=
 =?utf-8?B?cVRGWmQ0NmEzUTZkdDhhUEVidFFaVHloRENuelhaVWdmWU9qdGRzSncyR1hF?=
 =?utf-8?B?UUdwTFBDcnZoZGMxT0ZSWVlXTFowNzd3cTNtL0tXUU9Nc1BkQ01aSnB0NC96?=
 =?utf-8?B?WS9aWmxLdTZwWFRpNHhUSTM5a1BYKzMrZlJFNERheVdNRDFjMTJ0cW9acUIr?=
 =?utf-8?B?UjI1eUZhd2VrQmU1ZnNDUHNwS1Ivd2hhREp6MWg5Umc5L0VrNVpZcU5rVWJY?=
 =?utf-8?B?UTFFRXdpVGg0QkFuRytiMndmMzVJOGlxbHBVbXRrYk95YWlkZEZLVWxnQi9o?=
 =?utf-8?B?TjRDMGdmSUtjTWpjZnJQZjJJSGVuRGk2aFc4MnFJZjgyWFpGU25UQ2VuMklV?=
 =?utf-8?B?ZDQwV3FQN2dHbE1UbW03TXVqVC95emJubFlCdFlabXpVUnc4aXdRTlphVlBv?=
 =?utf-8?B?NmJIU2xzb3VCUWR4cDBzUi9EVEJGN2hnMzN3eWdsZEcxMHlPRGJOV2Zkc0hR?=
 =?utf-8?B?MUl1YVdhdUNXRXRZUjd1VGtlUjF1c1psSW5STS9lUll0bEY4R0JhbzBUSlBU?=
 =?utf-8?B?V1VPM2J2SlUraEd3WkJuajN5dk1UYk05MVR5UEs2MmpqcVQzTnBZMDF5Z292?=
 =?utf-8?B?ejl4OUs5OVBqL0FZQmQxTTNyMHVQUG9QVWVFWmtiODRlODhiZUpqY0x5YzUy?=
 =?utf-8?B?UlI4M2FoYWUzNDBXeDBRa0trVG5meDl2VXJaUEdiVS91bEVvNjFiQW9teCt0?=
 =?utf-8?B?VEwrV09lTTZWNEJZVFl5RWNsUTZXVU9QUFBzczdFNVVDNDM1TUJKUFYrK3kz?=
 =?utf-8?B?b0cvTy9XUjBXZUViNFQxZHdnblZzVmdtNlFTM0ErVHBzNjBqNnBzV3F1NHRt?=
 =?utf-8?B?Rnd3UlhwQmU2c0Fpb1ZsZWtvTVhQZDVaaHgrdThaTUV3blo0Y3AwRjUrRGdG?=
 =?utf-8?B?MWhySDhqS0FiZTRIbGpuUFVQaHl2cS9BYlM3ZWMwUSsvWWVKZVRNSzBEUncy?=
 =?utf-8?B?cUZXUUozb2hYbHNKRE5uQTViaVFKeFB5am1kK1dVNit2VElwRmt3dlFIQ2JU?=
 =?utf-8?B?ZmV2dTlybzdYQVZhb0RWdTVPWDNMNXJoTUYvMitwODF5bzlKSU4yYUpRQlFs?=
 =?utf-8?B?U2Nsdjh1dFpTRlZ3bE5wcm1pSU5OMU95V1l1MTgxbVdDMkJKMlNCNDRzNVBa?=
 =?utf-8?B?cnM5SVF6LzZwVGFRczFLdVFCZFNIZ1cxZ3MwNGFnV3RRMXdpTFRENVA3eS9Q?=
 =?utf-8?B?ZHZhYVRwcm9vUFZ4cjhabUpqOWtDenVTN1Q5d2VISEd0dEpTb3pQUUlZUUx0?=
 =?utf-8?B?Zm0yYTZtMEluWkY5N3ZPS0tibDArZXhabjBLRWRCKzFmdnF5cGJiZDBwSW9Q?=
 =?utf-8?B?TU11cC85b0ZyS3NieTVHdUdudSs4K0RENHhkc3kxZmdmUmNRK1gwVm54cTd5?=
 =?utf-8?B?ZXN5ZkhBcW4zOERHUG1pMTg2NXZWVzloT1B1Mm83VitycEwzeDNjdWxlOGFV?=
 =?utf-8?B?NFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1e2484e-4583-409e-673d-08dc23d602f9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 10:02:06.2723 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zunAFIp09r3kTlVr7r17n1aUNjNAhXz0zmGzNybwVI1APw6m2Hmpwlb3NCKGL6tPX164hR/lG6Kn8l00SR264FGLd5mOfGSmKWxgEfd6+UM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6919
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


On 2/2/2024 12:08 PM, Suraj Kandpal wrote:
> Create a remote HDCP capability shim function which can read the
> remote monitor HDCP capability when in MST configuration.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  4 ++++
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 22 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 16 ++++++++++++++
>   drivers/gpu/drm/i915/display/intel_hdcp.h     |  3 +++
>   4 files changed, 45 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d69..7e7a370a3b30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -532,6 +532,10 @@ struct intel_hdcp_shim {
>   	/* HDCP2.2 Link Integrity Check */
>   	int (*check_2_2_link)(struct intel_digital_port *dig_port,
>   			      struct intel_connector *connector);
> +
> +	/* HDCP remote sink cap */
> +	int (*remote_hdcp_cap)(struct intel_connector *connector,
> +			       bool *hdcp_capable, bool *hdcp2_capable);
>   };
>   
>   struct intel_hdcp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 261de01aa5d8..56019b29fb49 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -666,6 +666,27 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   	return _intel_dp_hdcp2_capable(aux, capable);
>   }
>   
> +static
> +int intel_dp_hdcp_remote_cap(struct intel_connector *connector,
> +			     bool *hdcp_capable, bool *hdcp2_capable)
> +{


We should perhaps have an assert here to check this is only called for 
MST case.


Regards,

Ankit


> +	struct drm_dp_aux *aux = &connector->port->aux;
> +	u8 bcaps;
> +	int ret;
> +
> +	ret =  _intel_dp_hdcp2_capable(aux, hdcp2_capable);
> +	if (ret)
> +		return ret;
> +
> +	ret = intel_dp_hdcp_read_bcaps(aux, &bcaps);
> +	if (ret)
> +		return ret;
> +
> +	*hdcp_capable = bcaps & DP_BCAPS_HDCP_CAPABLE;
> +
> +	return 0;
> +}
> +
>   static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
>   	.read_bksv = intel_dp_hdcp_read_bksv,
> @@ -683,6 +704,7 @@ static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
>   	.config_stream_type = intel_dp_hdcp2_config_stream_type,
>   	.check_2_2_link = intel_dp_hdcp2_check_link,
>   	.hdcp_2_2_capable = intel_dp_hdcp2_capable,
> +	.remote_hdcp_cap = intel_dp_hdcp_remote_cap,
>   	.protocol = HDCP_PROTOCOL_DP,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4593ac10e2fa..2b739249b60c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -205,6 +205,22 @@ bool intel_hdcp2_capable(struct intel_connector *connector)
>   	return capable;
>   }
>   
> +void intel_hdcp_remote_cap(struct intel_connector *connector,
> +			   bool *hdcp_capable,
> +			   bool *hdcp2_capable)
> +{
> +	struct intel_hdcp *hdcp = &connector->hdcp;
> +
> +	/* Remote Sink's capability for HDCP */
> +	if (!hdcp->shim->remote_hdcp_cap)
> +		return;
> +
> +	hdcp->shim->remote_hdcp_cap(connector, hdcp_capable, hdcp2_capable);
> +
> +	if (intel_hdcp2_prerequisite(connector))
> +		*hdcp2_capable = false;
> +}
> +
>   static bool intel_hdcp_in_use(struct drm_i915_private *i915,
>   			      enum transcoder cpu_transcoder, enum port port)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index a9c784fd9ba5..213d286ca3fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -40,6 +40,9 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>   bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>   bool intel_hdcp_capable(struct intel_connector *connector);
>   bool intel_hdcp2_capable(struct intel_connector *connector);
> +void intel_hdcp_remote_cap(struct intel_connector *connector,
> +			   bool *hdcp_capable,
> +			   bool *hdcp2_capable);
>   void intel_hdcp_component_init(struct drm_i915_private *i915);
>   void intel_hdcp_component_fini(struct drm_i915_private *i915);
>   void intel_hdcp_cleanup(struct intel_connector *connector);
