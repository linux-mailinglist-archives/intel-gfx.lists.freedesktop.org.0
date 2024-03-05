Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD628714B7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 05:27:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2356610FC8A;
	Tue,  5 Mar 2024 04:27:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="er8PogZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C9E810FC8A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 04:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709612823; x=1741148823;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=i2pU/+EuM/GQjngJ45GfJUQb6ZUxJsMLShJmXPDPAfQ=;
 b=er8PogZGzfLq6mMEmQdU3OnNI9jVx8Vak5GOREfRrfqMYAlof4FRxUdc
 9hvqjohAp9c/Q2gQz2kuNsoCR4PGgmx0geJhLmfebjYiqyvsh0ZMFhstI
 S22HM5G/9EwWEcySxN7O38GKB79I2304fy9mjdn3aVdS2JYocpAnOIicD
 TojbODFJrrc2SJJ7OQLvjO9C5Jl/ePKd6dbWBsvQnZdBnk79UnKobC+cA
 zMpR14N1Pm5nNmFGKqbwW6BNBeP77qHBZlBC7d+/uQ7IFPJeUXo0y8bui
 03UiXVGwIf3yPETbHfd9aPtJPhlVgLuavgEwaXXsOwczS9wlH3R5Vb0Zx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4724819"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4724819"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 20:27:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9147254"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 20:27:03 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 20:27:02 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 20:27:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 20:27:01 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 20:27:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iopMHgLeDUNkPnWyrorNHignOJiwVcjnKSMPrnSli3H/sAp1cKfTTmJPsRa9350l9twfAwNZy1ipEZrpgpEhKvWYLnjKUSEPTaCrIze5RSM/4ysneAdyvUlROWrljXpHvVBI+sfmTZU4Hkn3ovfYmvsED8MOp9YlzZpAZMzvbSF32Ur93QnH8pawjsanDB2MO1ZuEKCT0B43ZPqDY0unxK3pZrGiPUmCh22ImSbzjngz62KTgw0j11jRhgdPh1XEFa0k1i4McmcNbMu4Q2+tNVc2yc0/nQtaFF1T72MKtz4sCi8dnEi3RckTJf6xWS9oNqbvPAuyv4ZWUucPi20o8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vys6yQOFdZes+Qm//qYTFI9DYrx8GFuSo5tlJKGkD4w=;
 b=XkkUVtdK/gVSHsH/X8wWnTRmxM9YAtucuvRXPLmb6LUOyZoxgkFD3RlXctz1HuoeGSlzx4duLcuvQfSUizGy2GXHFW3wjafBLRfDJRhnxPrCr+zpJuWFYvHVa8FRHOIyrTO3v3sNH4W6rIEBZSM0ABiL+Ki539JfjLwgnF2XaR3fhgpAcadY3z+8ZtQ2GVr/NadDZgWJkuuURKy01VFMhDEgTOsC/nJjD3Vp4dsrkLCtUAyFHSBB9/Nj/gVj9tFkXsFHzuwmguFMpWBC4IsCEPO5eSH82bZikN88d0lv1C9xJ2PYRi+Y4+IC9U+pk5zUxdcRKOxe8cGAXoPzLI/fnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Tue, 5 Mar
 2024 04:26:59 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::ce60:5b9:e62f:ed8f]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::ce60:5b9:e62f:ed8f%3]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 04:26:59 +0000
Message-ID: <f9a638c9-86ae-4595-9d19-85b3eb66ac58@intel.com>
Date: Tue, 5 Mar 2024 09:56:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drm/i915/bios: abstract child device expected size
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240226175854.287871-1-jani.nikula@intel.com>
 <20240226175854.287871-3-jani.nikula@intel.com>
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20240226175854.287871-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::14) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|DM6PR11MB4722:EE_
X-MS-Office365-Filtering-Correlation-Id: 11cd3a7c-a98b-46f6-2c4b-08dc3ccc7fa8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 66j1uk7kOM8JrsWF11SLP3fnobaTPH+P5Q08fwF52dAZEOGSXtWS10Uo7e0QKL2EXSR3pZDkbibAPqAsm4ROzDqOz9t7oz3nGOD+AmN2BcVRJTgI6v158F/Y9bf6S8zP/Ng5LxuVo/GP1oMTy3mE2DtWhiyTC3WM+sPLzFh7kTqygTt8PJdCgPvjbBK40n+pCmQppny20dEZKjwYJycjZXMkp4rghcAPEiSn0CoFhfYy7wEjIvGtDi3H+PtWFz6c+qrBlasNZJA/pjgCaRXXM1gwoE6pFeasR8ro2wEo2miO+kQsExJHLb2f5oeXCMPtzha/DukYZbe9PdbTh5RK41pfs0esBbAwYbsdd8emgNi9IOLKtiHFh1X9pN5Uc3QvfjI95FlfGYM0VnawhnNX2FHDBUPnpL7cgSJ2ALD+HY286ezo80lXR12lzCjGc/tEayuKtC+BzBPHcabE2NMN5ZjoFZwvR5xuJKbcfQUtXe+4rDysofMiOFkeB5KRCXIystJ/XJl344rTNmLMHHjWvnISMmIgnTyA4NDe3sfUcmKApLYSWK8ZA0jjjK5qxdEiK9/zU1P21VBKTEeEJP6oeCYDCK7vnIs4oe8AhZJeoq+rYv3wTOUuXIgleoOVb19/r15ceL2lA3XL/rcwXlnKIfcMXjkbMChOLVPuA4I8x+Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1Uvck5EZHRObE9vaTY3QkJNc2ZxQ3RvU3h6UkNOVWR1VE5samZ0ZjQwdGF4?=
 =?utf-8?B?eWVNNlNtMGdFY0w4WldQODJpRitZekJHSWFQQ1ZZYVkvcnFydEtNNXkxZUxk?=
 =?utf-8?B?OVdhd29vaENkeHJnUms5czVUZjBmcXZIYzRJZ3JMMEdETmtZQStLdjdUeVU1?=
 =?utf-8?B?QmQzSTFKeTQycFIwc0NQWm5XcytuYzBkcjlPTGp3blZUdGFKV0ZtU2c5U3hZ?=
 =?utf-8?B?UzRTY3RBelBVNHNyNEhZM3pZSmxjTGgzd1U4aDk5Y1J1dmE0SlRJbWV1NTUr?=
 =?utf-8?B?cmZQTHNITEN6Wk4xNWpnSEszVENOOVlwN0FvMUJ0eDltdjVaTGZJSW9CTE9Q?=
 =?utf-8?B?dkgrMzg2MHRWVjFPZ2tYOURweGlGQWJ5cnp3MHNZL3VNUS9hWGhUSDNrdFlL?=
 =?utf-8?B?Y0lEdHYycVVNZ2prVThZTmU3WnJTU0ZWNjhrbFAyeGJRK2ZRNkRFU1YyMDhw?=
 =?utf-8?B?M0crYmNDaEJPazhNSUpCU3g2WURTdXBsNVlzRktXbmNUcHV2YnF6R3JjTzEv?=
 =?utf-8?B?c0JaNlhDa3Y5S2xiOW42T2dqT2FwZElkUWk0ODZYTE9IYVIrMUJleVRsZFBq?=
 =?utf-8?B?YWVzRjF3T3JGOWJobkFacnptVkFqajZ0dmx1aXZKd0EvblFaY2xwR3JTcWd0?=
 =?utf-8?B?UGRIWWR0YkVRMG9KSkcreTAxdDlaaHQ2QkxlZ2pmaVlRYlFxTnBNdmJvajJN?=
 =?utf-8?B?TVVHWDQza0VncWVaNVVScEMzd3pZSncwVDArNWNabjBKd1NvaXc4RzB6RGla?=
 =?utf-8?B?RUsreDJLYXYwVnY3NHFicWE4UVpMVEdCYStubm9jUFMyOEFwQjM1NDZQYlM1?=
 =?utf-8?B?ME93NGIraVNTOEZKaFQyREJiWC9zVGVFNHZybTJNZEZ1NzFNWDBMQnhFVHpC?=
 =?utf-8?B?YVNrU0VZRzlxcUdsM0ExejdnM2JRbVgrV1JRWE5IVHM5bDhGbXIza2lHMndM?=
 =?utf-8?B?dVFJdG9EejE1NFI3YTYvaHUvVllPWUdJUVVLZ2psa3Jsd3ArNVg1Z08rdHI4?=
 =?utf-8?B?aXdqbk9BSHdZejlQR21hajB2OXNHZVUvUk9PcWpPWGtSUERVN0JxNldPNlQ3?=
 =?utf-8?B?cERsN0pOUjR3cVZmeFV2aEdlMmRTeVZsTitZb1praDFUNDAzWDhXclpUNm16?=
 =?utf-8?B?YS9qNjJ6cXE2bkYvMWlNVHc1eUIwKzNscVJ2VXptZ3l2d2o1Y0w4N0dVSDdX?=
 =?utf-8?B?Yk5BZStmbk0zRDRNVDUxNEpKaVQzZWw1bDFVZTV6Vnk0L2s0Tm0zdTc2TVds?=
 =?utf-8?B?akt2RTlFeFp5WWdNN2ZKNm9jUVNqTUZBUGt3bC91d2FqaHpacHBrZXgxSnIw?=
 =?utf-8?B?SDVLOC9HL3htaW1KdmJXZFY3S25TYVJaVk5HaHRjVXRkajlKMmJLRFlrS0NB?=
 =?utf-8?B?VUhaRjZnTlF3TWNHRmtuZ3ZtblBDZExwRDBzZGNOS0Z4cU9RQjJDZzIwN2I1?=
 =?utf-8?B?Tzk5ZlFFN0dBSVhEbzc2b0VmaFIvVlBEOGhtdElEcDY0cXdQRGVNR0VnRjFa?=
 =?utf-8?B?TUkyaWFjS2o4N2ZWVEZHZzRrbjZkbzNQNTVJOSt4b0VJRGw5Q1RPdlA4c2hM?=
 =?utf-8?B?WXVOMUoyWkU2cGZEWlZITzducDJFYjFDanpvUGhpZWNjbms1QVdZbkIrYTAy?=
 =?utf-8?B?MitRQUdiQ08yeUwxSmVKODd4TEo5MDg2OURMTlpWNS90cGhYR0JOdzZndVV3?=
 =?utf-8?B?STBiSnpud1N3Q05sYkNJWGxNdnA1RUZvMGQ5N1ZQeEc2SkVrZzBIM0YxaUV6?=
 =?utf-8?B?WUJ1SnVCOGZSelZveG1XemFjMEk2YUpIRTJ0cWRyM2tYUTViSTBqZlRpL29q?=
 =?utf-8?B?WlRWT3VTa3JleGxSVTJ0M3RwUlNVY2hFL3pONVF5bXMwZG5IQkVUY3c0aEdt?=
 =?utf-8?B?UUFKRmVFVENkZDV1Q25YT1FldjlkUjB3Z09LMEZMSGRNYzJiQ2dLbEc1dkV0?=
 =?utf-8?B?UmRtVTJEeExzZVc0NEhDMVAvWktscGxWNWtBMVhzYko2N2RRWlI1WlBRalQw?=
 =?utf-8?B?UHFWRG5jbWJNWWlQYTZQTXZJdTNkYmx4KzdoN1g5R3c0NW5TTHowZjhjeTB5?=
 =?utf-8?B?clZEdE9lcGw5Z1E2SDRmN3hYT1Z4SEZkWG5qbG5ZOHFBeVY1TTdKUGJKSmM2?=
 =?utf-8?B?aXVIMkhKdmNIeUVmZHNRTzB5MEpjOXJ0MjEyWXFQSXp1QjZucHAzaTRJM0Mx?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11cd3a7c-a98b-46f6-2c4b-08dc3ccc7fa8
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 04:26:59.5384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M4tqpLVdmDmnElKkVj8cKBbmKLyUMfo/3jXOyymuaHBIS/c+/kwVFRLxlG7U0xO5OBRKzNjvpFfvlq7HA3sKdTAVpWExIVln0sSELwCgebo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
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


On 2/26/2024 23:28, Jani Nikula wrote:
> Add a function to return the expected child device size. Flip the if
> ladder around and use the same versions as in documentation to make it
> easier to verify. Return an error for unknown versions. No functional
> changes.
>
> v2: Move BUILD_BUG_ON() next to the expected sizes
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_bios.c | 40 ++++++++++++++---------
>   1 file changed, 24 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index c0f41bd1f946..343726de9aa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2699,27 +2699,35 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
>   		print_ddi_port(devdata);
>   }
>   
> +static int child_device_expected_size(u16 version)
> +{
> +	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
> +
> +	if (version > 256)
> +		return -ENOENT;
> +	else if (version >= 256)
Correct me if I'm wrong, but isn't version >= 256, a bit cryptic after 
the first check?
Would it be wise to make it version > 256, return -ENOENT and if version 
== 256, return 40?
> +		return 40;
> +	else if (version >= 216)
> +		return 39;
> +	else if (version >= 196)
> +		return 38;
> +	else if (version >= 195)
> +		return 37;
> +	else if (version >= 111)
> +		return LEGACY_CHILD_DEVICE_CONFIG_SIZE;
> +	else if (version >= 106)
> +		return 27;
> +	else
> +		return 22;
> +}
> +
>   static bool child_device_size_valid(struct drm_i915_private *i915, int size)
>   {
>   	int expected_size;
>   
> -	if (i915->display.vbt.version < 106) {
> -		expected_size = 22;
> -	} else if (i915->display.vbt.version < 111) {
> -		expected_size = 27;
> -	} else if (i915->display.vbt.version < 195) {
> -		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
> -	} else if (i915->display.vbt.version == 195) {
> -		expected_size = 37;
> -	} else if (i915->display.vbt.version <= 215) {
> -		expected_size = 38;
> -	} else if (i915->display.vbt.version <= 255) {
> -		expected_size = 39;
> -	} else if (i915->display.vbt.version <= 256) {
> -		expected_size = 40;
> -	} else {
> +	expected_size = child_device_expected_size(i915->display.vbt.version);
> +	if (expected_size < 0) {
>   		expected_size = sizeof(struct child_device_config);
> -		BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>   		drm_dbg(&i915->drm,
>   			"Expected child device config size for VBT version %u not known; assuming %d\n",
>   			i915->display.vbt.version, expected_size);

-- 
-shekhar

