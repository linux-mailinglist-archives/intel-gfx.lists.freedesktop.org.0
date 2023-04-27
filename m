Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 786CE6F09AB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 18:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4A210EBB2;
	Thu, 27 Apr 2023 16:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06B610EBB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 16:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682612260; x=1714148260;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JJdt22nlOFOZk/y8Z6g1JqCZDna5xIykM4j+Ey0ZSTA=;
 b=RXMLN7lFjzqquMZpmipp3jwXOkucb2Q/SlO2F/LsCvPxM/t6NGmn8m36
 EMXvR6w2LIxOsLEh9gTA1fT6b9/NddL2QXy6shJxaOxgHeWnX7En1jkox
 QXaUDuFeIgsEdXcUjiiVjlixbynE2Sn/G5vCcyypV7tjs/BvzzSmr4COS
 0ZuFmPYoegqbgZlu2ceER0OBP/tsAfKLI2o8AUt7w+qEBJwux2tPK7yzS
 m+0dOoc3HHZbKDHMiYg19/9O3gGxWEtOYIbSrHw0B+xQKir+tEfAImeKX
 PjmuYzFbTvQLJPPhSeEO6xNhGUKjBUE6d1E9Hpq+umb1eMOCW48fPYXGh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="350366747"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="350366747"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 09:17:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="1024179738"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="1024179738"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 27 Apr 2023 09:17:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 09:17:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 09:17:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 09:17:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKraByjXQNfC7bGCBXsUdTEMYsR685hQB3EP5hyXPcr2emVkgqqsTpYEg/S4jzZg3yQp9TjVdNp2caXIaDAMdOiEO+B/6Rgu8WhoIGkVw6xwbn1OZOYA4BLtQFLmf0DFa0FBmnoiTBB2WOli/EQf9O+eEVE5j4heNTQFI1v3wWTFpidj9xweQSBOpn704wsH41QI289puceWL6rppxy0GPCZ8wOrKys972YSXdxEW1LiYqkwDjFcHvcpaXt+kU+oCq9CO1TsVKxD1kGTrLrmfZlOx218+RWYPF010QFP8OvlZ5hpSaXpKMuQY/yhMXCK0rnhlhLJOQH6yRP7VWRKVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5/4SuKN2luxJIiJf9ReoUK5ubOGsScuAgy8xyNgzR3Y=;
 b=ZaDNFloEarL5WbzWgl8jVrjWEPFCVnF+g31q3neXXvreo2yWH81eSCL+683Lr12J1SHEYvNedBs4TqpGrd3fzIEwAP1fVNMqBaZ2t61AK1y8lRVDyAkM16rUobwfWbcLeDq631rdURb4DlQO3jVlUfG6jFhCkQNY5xvaNMri1zbd4S2mKvqHaeFeoUleSJy/XSrDIpUwFWh6dnRX58btw/UAnk9nPi59oo/wfPWVTGi4ARvhzn3yTKlpLKOCUJg/Cpq4JQ80ai0qmD/PukfcLHpKta+4WQkzNUNIIXU/KerCZc6sgStQoXcXSFJ1SZVv7WIqnkCYFhjngK1182z5VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4226.namprd11.prod.outlook.com (2603:10b6:a03:1bf::12)
 by BL1PR11MB5464.namprd11.prod.outlook.com (2603:10b6:208:319::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 16:17:35 +0000
Received: from BY5PR11MB4226.namprd11.prod.outlook.com
 ([fe80::c7fa:f42a:e213:8324]) by BY5PR11MB4226.namprd11.prod.outlook.com
 ([fe80::c7fa:f42a:e213:8324%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 16:17:35 +0000
Date: Thu, 27 Apr 2023 09:17:32 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZEqgHLtxgk9F7S6K@msatwood-mobl>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-13-mika.kahola@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-13-mika.kahola@intel.com>
X-ClientProxiedBy: BY5PR20CA0017.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::30) To BY5PR11MB4226.namprd11.prod.outlook.com
 (2603:10b6:a03:1bf::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4226:EE_|BL1PR11MB5464:EE_
X-MS-Office365-Filtering-Correlation-Id: b3102306-a42e-46ea-e7d7-08db473ae96c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YU8q2bPjaKOsEN916VnbkyqjCTKZAbxxfz3HHZFSPLZWERvtfkQd8rnGQPhkkSaq3+iTBSmRs70uM4EK/Lgg9i7Nbldap2wVBh2cDMA/Bb2vO6NC7xoF4yTjb5KqRgdHY3lES0Qk2V9kfcq8JKkGM/i+QCuEwzVBYsiNASJprTYtylmGYencdhE9Azg+CkVclPW9Y3EPH/SlSAghYVco5v0G2bH/Q89o+mq9RzIyZ8Gifg/XtfboMO/oGcSxt0A70Q+6s2dfyg3zUu5cR9jH6YNMfHa/yqBPFKABMQWKcny1zPTE8w4KiF8bFyuBeTEMFYmNDgQr/I3axBAQsbVKXqUp9etVmlfurX1It/bH/0UkQyKgJ2c9U8DVzvO6Arc5E2lblSIHzQxDAEHieH5tH9Vl4/Ea6PdFNz8Z0wWnevl0A4QMRozBzPER7anGEAic3RNDn85jgtekqWlQ0Qeb7N+7z5JSMopzYLDXrTXWvPGpd3467I/fEhF1bbqQHCH/tjRkD+lgpgXpq1g3Eqy7g9w6OIxsw6uK9+KebmspHVM5DpfZep56ZqZtj4EdGOFX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4226.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(136003)(376002)(39860400002)(366004)(346002)(451199021)(4326008)(316002)(66946007)(66556008)(66476007)(478600001)(41300700001)(6486002)(6666004)(8936002)(5660300002)(8676002)(33716001)(2906002)(82960400001)(86362001)(38100700002)(6512007)(6506007)(26005)(9686003)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVE3SHFrcm9KNTRZTG5ISEJNcSsrRGdaSW1hMTEvMjRzcnBUNEE4TWdmekFh?=
 =?utf-8?B?M1dxVEF3bW9iMmFuYzNDYkRNSWtMOHI1MHNFaUZGMkpvQ3BYTkRoQ0hXVkI5?=
 =?utf-8?B?MTVNc2dLUVBWRFR2RVYyakQ1UkRvRmRBNzlPZmF5NjlLOHkzcTJUV293M3Vk?=
 =?utf-8?B?WEE4QkI1ZXE1bThUODZiaGVZK2M2Vks0dldrQVd3eGMzVkxzWHZ5Q3NaQU5M?=
 =?utf-8?B?TXNjNGIzSXZQemVLcm1KOUFwR1diMTB1eWpTOWppTGFLcEw5L3NIUmRPOWl6?=
 =?utf-8?B?RTRJaGg3V2tHWWhiWFdIaHJEMFoydHdCanNJbkluYjhuQnZhU0VmL0tZWUlj?=
 =?utf-8?B?eTZqSVZQRjkzb3o5cnR1RVhoMFdMd2VjTGdCTjB3WGg5bVhaQVNtNVRSVnVv?=
 =?utf-8?B?aXZ4ZlAwNTNtNC8yL2lZWXllMW9DZVpkTzhsNkxVQVpPYjNSb2Fjd0hLQWRn?=
 =?utf-8?B?UHg2WW10eGtteTNGVitmbTRYTlUyeFFzZVFXaSt0cHlsRktaRjhxb0tWZ2py?=
 =?utf-8?B?aXpHRjB4aXJIYVhjcXRGRjgyU3VucTNhaVJoRUNhYmpYcUJUWUJBaUhTWFdX?=
 =?utf-8?B?RURUL2ljT3JvdE1FTDRCTjZNNHprWW1PSmlaVk1EL1p0aWZtOXhyZEhJSEZD?=
 =?utf-8?B?TVUvdWVjRFh3YjlxQ2R2ejV3c0lHZ05KSTFvYVptMk1GRWVIc2djTFB0NkF3?=
 =?utf-8?B?SWtmUll3QnRTK0RMeFNsZjlDbmRhR2IrRjZaV1NPVGlNdTdtSXBtSTh1aTFk?=
 =?utf-8?B?Nisyc3BiQ2Fxcm9hNDVWS1h2RWo5YVlzSlJZWUtJOVp0QjZ0NVhwZVZUOEdz?=
 =?utf-8?B?aGhaWlhzN0JLL0FJTnYwL2FiUExoejcxY0pVbjg4Nm5WdElvZ3FKUXNHcEpi?=
 =?utf-8?B?Mm82eFhEMlV5Nk5ZUWthYXhuL0Q4ZUptVVlReFBvVEgxVTZsaERCOHoyZWZ4?=
 =?utf-8?B?UHkxaDZveDB5TUpHUXpWdmVhalBNQVRkTDF2WVQvUHJjU01WWWc3TXZ4d1B0?=
 =?utf-8?B?djQ5STcvbS9LSDlhbmdMYWhSRTI5T0lPbmpkdlFhRDd4WXQzUmdQZ0xqTHpN?=
 =?utf-8?B?U1Vpay9Rc0pZQ3dZeklFUTVpZUZwWXZiZ3B3UmdGM3lmbTFqZXlSVzExT0dn?=
 =?utf-8?B?MkRQZkFVUFpNbEEydUtRNTJrcWRjaGZhckJPaXJOTGVjVHJweVcwaVhRZWww?=
 =?utf-8?B?ZXF6UktpaCtQdllNaEpyWXUzdE5kYTRlUkFxSlVuRFZzMjVVSjhjeU9JY2Vz?=
 =?utf-8?B?Z2NJTU9lQjZ4M0lOangxUUhhc0l6ZGxkV005K2c5ZERVVHpVY0ZIZTMyMFRZ?=
 =?utf-8?B?ODBNcWhOb0doMS9yVHlXbXJwaUZmeTYyNGQxWnVTbFZnMGQwT3Jha2NGUFE5?=
 =?utf-8?B?ek8xU29tSUVDZ24yYlU5amhWZjI3blBzWENjSGM1ZEZ2UExUbHE4UXVGVWwv?=
 =?utf-8?B?MnBZWGZaa0gybUNKWmd3c3NabUQxRHgyV0owZmRISFhzdG9pUk5hSVdtU1RW?=
 =?utf-8?B?WmpTQ3AvRHd5Y2NCZno0bTNCRkx6eDNXVlZvd3NudjJuY0xiejNsOTlsS2xz?=
 =?utf-8?B?Mzlnc2hMSkdrb1IzTE9pb2JEQnFmN2RLaC80ZW1JYkdLZmFac1AxTGp5YnlJ?=
 =?utf-8?B?WGNtT2JWSm5RaEJ4VTZOVUlCbjM1NGdJWHltK1d1ekVYallmZjFjajExcnFW?=
 =?utf-8?B?VFhqUDZVMUpHMm1lNnlGSHYyZFNpcEQ1bHQwRk5PVEpQajBuMUxHbGhTODBy?=
 =?utf-8?B?U1l4S3JHU21LVkdHTkxiZHB6SVhnenRyV3FDU1JVKzJaSmFpY1REdW5PWTJy?=
 =?utf-8?B?YjdkUllNSGpPbVFrdVpvZWNBaTdHM1FtY0Z0b2xldkZzM1RQeGhQV1M3Nk43?=
 =?utf-8?B?bGNCRGlKSDZhb0xLRWljc2k2Skh0T2JPZHVXRUxZYlJTaklWbDdnTDRwczFH?=
 =?utf-8?B?cU1hZmswSHVkcXFKZ0wrSUluVWtWcGxqN3NCU3BzQVlYQ2VLR1hRL0pQa3V3?=
 =?utf-8?B?bzhLOUxuRUE5ZldTajRHdmJTQks1eVJLcHJOMWtaSS9XdVVDRXJOQmw1bWMw?=
 =?utf-8?B?ZGRDa1RwU0EzdTRSV3RpeVI1K3ZSNUVPOThOMU1OalRwSEZyYUo2UlQ2TE1W?=
 =?utf-8?B?S3VFM1hVN29yUitORS9EdU1GK2g1R2svUmJSNzlxNjErT0t6b1JKcjl1ZUh1?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3102306-a42e-46ea-e7d7-08db473ae96c
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4226.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 16:17:35.4336 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ch8X37sP+9uPpOUqeuu4vzsUyVK37lPC8dhl2OpTOm+kMFHr4Z3Ty90zHEbtXQrWITkVcbcFfXGk5EHRpdTFEWrlVztO2bZnZw0+ERaRKeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/mtl: Pin assignment for TypeC
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

On Thu, Apr 20, 2023 at 03:40:49PM +0300, Mika Kahola wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> Unlike previous platforms that used PORT_TX_DFLEXDPSP
> for max_lane calculation, MTL uses only PORT_TX_DFLEXPA1
> from which the max_lanes has to be calculated.
> 
> Bspec: 50235, 65380
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 28 +++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index b192265a3d78..4fca711a58bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -16,6 +16,10 @@
>  #include "intel_mg_phy_regs.h"
>  #include "intel_tc.h"
>  
> +#define DP_PIN_ASSIGNMENT_C	0x3
> +#define DP_PIN_ASSIGNMENT_D	0x4
> +#define DP_PIN_ASSIGNMENT_E	0x5
> +
>  enum tc_port_mode {
>  	TC_PORT_DISCONNECTED,
>  	TC_PORT_TBT_ALT,
> @@ -281,6 +285,27 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
>  	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
>  }
>  
> +static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	intel_wakeref_t wakeref;
> +	u32 pin_mask;
> +
> +	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
> +		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
> +
> +	switch (pin_mask) {
> +	default:
> +		MISSING_CASE(pin_mask);
> +		fallthrough;
> +	case DP_PIN_ASSIGNMENT_D:
> +		return 2;
> +	case DP_PIN_ASSIGNMENT_C:
> +	case DP_PIN_ASSIGNMENT_E:
> +		return 4;
> +	}
> +}
> +
>  int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> @@ -294,6 +319,9 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
>  
>  	assert_tc_cold_blocked(tc);
>  
> +	if (DISPLAY_VER(i915) >= 14)
> +		return mtl_tc_port_get_pin_assignment_mask(dig_port);
> +
>  	lane_mask = 0;
>  	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
>  		lane_mask = intel_tc_port_get_lane_mask(dig_port);
> -- 
> 2.34.1
> 
