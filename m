Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67645787496
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:49:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A1610E58D;
	Thu, 24 Aug 2023 15:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A9710E595;
 Thu, 24 Aug 2023 15:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692892189; x=1724428189;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IabrY2GkcPBmKuvV6lyCPPI5S2B+i6HpsxdaNqfc8m4=;
 b=BwBQpu9pDxe8QPXyDh6YK0AXzNiOmAxsiQqXoKSsPYe9nMPJRDJ+/xHj
 L6my33VmXiCW7hrsAle42zl/eoJmo94YktYBnn0HJ/Uk2w7LbyBAK+b40
 WYEdFbNHywXrhDIuJIRb0XZTGts4TWOWFqVE/sBh36M0gIhdEKZWNKStn
 WnRuczBRXWhzrDyOOOZ4rzFrqnNMFBpiITSPaPynwMAyr6p2Egn3kW48/
 zDtzsDqbXPO+x5jwdnmPSADuodaC/mMaEna2fepDlkvEMkV0pLBvSnnuS
 WQjn3Z93I4m0mVCfqeHH566/ekotcNTTnKnvTeQ2UsMNQ0DsNvVm8RL4y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378255151"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378255151"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:49:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="807170801"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="807170801"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2023 08:49:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:49:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:49:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:49:47 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hB1974gVAuRQY83ploaKEAzB/o/tbn8mCzydcqueIraUp6XHK7t8fS6LCrIuswENJ1HtamO0AWj4Bp4PIR6iR0dkjWVA2dyG+pvII98EE00oWFfLC5hWFpDHYuK/+AXxzwK6cZ1AdB4HGarp+Gw+kniYAMSb/PCFZ6E2RYld3p2uxbfpyZ5IGzc9MgIYUmyVQSbGsytvSOAKE2zRrlk7v6SnBcEg8N+c0Ed/j+49Z9sGYqTVXkkvxIX4z5Q3gcUVknw79OJeT7YUmW1+pVbUug+U7xReLwSP6mCghmBQqmIP1BxqhnsVmG7pnJeFPFeQP1ysZKC/EXykpdQmPPxk/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UyQXivHNsnVydQsXV9eNwBDJc9JQnUOFCxMMkDEg8Uo=;
 b=Y+6xFynzkkKYz7aeM/e11AqN0qltwb5u7BzA9PaN3MzEXRbJYBaKp00BCegippweD3vUyjw8OO4OT5CQOBitcK3T95ql8/bkBZkF4BDxG9OvONY6shSaXvIAD0ZAwR6aVqx5M2I5zVcAC0QN4wvgKlA5tQxVQ6FByDImGKqHmOOB6M8yULOdhyTn62RHemC8+ob9oQoQNm2tHqupDOIyoNFQwd6QIj88hMGg5LvzKoDa/gUCct6kWcDgShAv5saZwaLuE9oefRjfwUMKaPlKiFTm3MtW2j5wML8cu4AzBI6K6aol+KAxNHu2DWrWAHK5qY2pamnnk4fosjiapIy2ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:49:45 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:49:45 +0000
Date: Thu, 24 Aug 2023 08:49:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <e7pyyuqstsofgsjv6c4tsrjpienmhr4rmbesw7g3nmr2ru6gne@rrtdpxfsr2jg>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-13-lucas.demarchi@intel.com>
 <20230823180342.GG6080@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823180342.GG6080@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW3PR06CA0006.namprd06.prod.outlook.com
 (2603:10b6:303:2a::11) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS7PR11MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: aa8ee264-3edd-44c8-7417-08dba4b9bcea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oYQpgB+Y7XyhafnTuVlkROsqw+T0CfwPf+B7RAiuETAOKdxD5GiBEwEVJZ4AV6eLwJDlmusbkVf7gFNNLU93OOkL88EvK+IKEyRAcv3fMnqwVIHhiHZq3Ins4x6YVsQAZALxZnQBGQnpRhqmddLC7K7d+jbHgohL7H7epVAJvMiS5Mi1qbArj+75G5bYJdnTuyS4c87pCd2f9Ouoi1jTLO5msENP0yQEwMsu/FZWBXJ01+FIe7KedKS9gPHFSbjvY3VkC7OBJvEI6EZ2DEM6K/eXzqMDVtlM3b8P6ZYOV4NwQGsg45bZZJUuQgP5qbvb7U3+CC/UKZYFrbdYH8wXK4xd3QLNA6aUCl2hhrXl6VAD0nmaRhs6AVNRexhwWBOIgRux7qVWTOYLhh2q7Dr4AtbSOm/AWnKFOBcOqspALfsVC9jZuyAKeNeyXCivatg7/54ySgLjsPubxZCrbXJbRCpg5Ftvma5U6plw+PmgxAz/ntjpOP1RAh0rOOWLRlZHaRwD1btUSfEYWTet8dieSukjReoCS3r3sx3kofiXBcCc/dx7Pgxm38CVVBv4diqE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199024)(186009)(1800799009)(33716001)(6636002)(66556008)(66476007)(66946007)(316002)(82960400001)(478600001)(26005)(38100700002)(6666004)(41300700001)(86362001)(6486002)(2906002)(9686003)(6512007)(6506007)(450100002)(8936002)(4326008)(8676002)(6862004)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G3i2XUD2b9RXUNWdKxbJq/kHUHh7IkBtgpBimQyTv250HbCpyLp6PNv5S7RA?=
 =?us-ascii?Q?ZtThPp5yHKlzDSoOUPuP8hKj6WYbEqXfK+o7GfgIFZMLdNLqLF+EVOkJQXb6?=
 =?us-ascii?Q?Uk+V0fAztp7zruqhAFxkJHwGo6d/g4gFrVI7cX5dnTvXigV4KZHO/CqnM4dp?=
 =?us-ascii?Q?KCjZvA6RPb8EsVDyuj2xdkjnoDRCUH3zMTXzkDXzWQB6T6cykYCxUFKQyLX1?=
 =?us-ascii?Q?9j0Ap4lMbQ3KIecYQPCg1MniHvBceETMzjSKNu1c/a2hAhxvnnZJHAJJdLa+?=
 =?us-ascii?Q?lZtamJxxYsivm1nt1D04SmgPXqKbl4JdWJ7OkNnHCk+OZ4ZDUAeYtPOcCKRw?=
 =?us-ascii?Q?5kHTZRI0A6LTMTIPIDw0KnmwGdLdCD/sg8kLyWNnA13xEWjQGyFIVJCgJmYP?=
 =?us-ascii?Q?4tnXQH69AfzAVL1Cs1hgy0mJpGPM8RolH+nArr0oZ9WED3uor4suiI23dsWa?=
 =?us-ascii?Q?h1E4Ye4TY1QCZE9uiPusGGSlVhyMWRd4Qcz+mRQ4CngLnMbDcgDjG1M1o23U?=
 =?us-ascii?Q?C8DbaZHgz94Q/zjXYJMndYTTRmSL0CIyWPoLKsvgjivpvtV2kyVhSm3AhEog?=
 =?us-ascii?Q?h6fO4tBhx74uy5N8mWh4UCQYWVJQ5qYMti6LrvlA35lzW2Y7JoHW6gc/L1tD?=
 =?us-ascii?Q?Lq+G4tYnhhJtGlK4YhhrPrFLwjSJ6V1W8cw7CiI3JwK7dJATfVQ6V0dwjFJ0?=
 =?us-ascii?Q?XEYerg2vi75Avor7c3gZXPFSsgWLnTcUtoEWc3vusvxO50pQAk6/HFWOs+tr?=
 =?us-ascii?Q?ZigH8e/rC9sci9sQvBOEaCl5746nG7e15Ks1zzG1lVyBjJqsA0n7hHCVT1iB?=
 =?us-ascii?Q?6BHEFJB6xNMq9KXQJQtLhha97dNIQvorKC3UZ7DEcVjhrRG/YZo3hnKlkTkj?=
 =?us-ascii?Q?cVP4uJAw2LpMnT93BFSAkcgG2N/x5iVP+HdPfrdT8LJ60izZYt7XQiv/Dy7B?=
 =?us-ascii?Q?BVRUFzCsIik36bE5kLwDfnhbpUVNgIuXa0iimJYGrMJqC7ZqqwEfZe7d2ZRp?=
 =?us-ascii?Q?c1G5rimMjsLZi8UxLV3towPFEZthPRCdigHH7TWRnhpUA6gdeMSn4+GDLO+5?=
 =?us-ascii?Q?azAgMFnc/Vss06mXdlHr9wH1My4ud10EEdcWuNUJn5FuAmZWEV6ZTrYE3Zho?=
 =?us-ascii?Q?Ff5EuQeH9toiiGZ5gryxSfVYyprPR3nmLhwbynN2Gh8wbhQ4Zv0DC2Zcsu7D?=
 =?us-ascii?Q?ZitHmedMVmF69XJONbhQYPcv5gwSLgsHr+3kVBk2ieDyFrJKbq/55jR2QOf8?=
 =?us-ascii?Q?xSNda1Sw94AFr6/dXZ/rDp/NON37Gi7Ho28Fc714BMwEwVhF0X9/FLk7Lr5a?=
 =?us-ascii?Q?JqXjFr2SksA9yV/0ISE2HZCU/vAU4DdpYkgvFw0ZLfaf0aJ17d971leDUWlu?=
 =?us-ascii?Q?Tf2CIybeFtYg9+62VxBSwz3qJYriCuIBRMreD7HRrjiu5MX6lgojXT/YQ1xV?=
 =?us-ascii?Q?e7IV0qLCUT7ynCbZY3nnBa1e3Xyn7Q5M8KFYOTQtIwMXtAoZQQEEbuQeIOy7?=
 =?us-ascii?Q?+k1nlk1rI9KA1+wGth31/hNnF3SumPhv/XUtfRQtGrPH4gTet77t2OT12sQy?=
 =?us-ascii?Q?y+JuYegYxV5sHYMsaskv08Im9bX9cs4cYi3q6eemBDbvXzJojtxKzncL2Wmh?=
 =?us-ascii?Q?rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa8ee264-3edd-44c8-7417-08dba4b9bcea
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:49:45.0595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tYi9tqNQPEbezkcThVJl7rLpzwdCC149IG3fBzAwsfST/7lNDBs0jSATKNtejaY6BsP81fkbWbV2bNgEVDqdg2Qu+9f8ZhjRPD/2CKobziw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 12/42] drm/i915/lnl: Add display
 definitions
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 11:03:42AM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:10AM -0700, Lucas De Marchi wrote:
>> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>>
>> Add Lunar Lake platform definitions for i915 display. The support for
>> LNL will be added to the xe driver, with i915 only driving the display
>> side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
>> i915 module.
>>
>> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_device.c   | 15 +++++++++++++++
>>  drivers/gpu/drm/i915/i915_drv.h                   |  1 +
>>  2 files changed, 16 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index f87470da25d0..b853cd0c704a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -727,6 +727,20 @@ static const struct intel_display_device_info xe_lpdp_display = {
>>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>>  };
>>
>> +static const struct intel_display_device_info xe2_lpd_display = {
>> +	XE_LPD_FEATURES,
>> +	.has_cdclk_crawl = 1,
>> +	.has_cdclk_squash = 1,
>
>XE_LPD_FEATURES, crawl, squash, transcoder mask, and port mask are all
>common between Xe_LPD+ and Xe2_LPD.  Maybe we should add an
>XE_LPDP_FEATURES macro first, and then re-use it here so that the deltas
>are smaller and it's more obvious what the key changes are with this new
>IP?

ack

>
>> +
>> +	.__runtime_defaults.ip.ver = 20,
>> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
>
>With Xe2, FBC is supported on all pipes now (bspec 68881, 68904).

intention was to only do this after
"drm/i915/xe2lpd: FBC is now supported on all pipes". I guess I can
reorder the patches to bring that one first and fix it.


>
>> +	.__runtime_defaults.cpu_transcoder_mask =
>> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>> +};
>> +
>>  __diag_pop();
>>
>>  #undef INTEL_VGA_DEVICE
>> @@ -795,6 +809,7 @@ static const struct {
>>  	const struct intel_display_device_info *display;
>>  } gmdid_display_map[] = {
>>  	{ 14,  0, &xe_lpdp_display },
>> +	{ 20,  0, &xe2_lpd_display },
>>  };
>>
>>  static const struct intel_display_device_info *
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 07f79b1028e1..96ac9a9cc155 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -574,6 +574,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
>>  #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
>>  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
>> +#define IS_LUNARLAKE(dev_priv)  0
>
>As noted on the previous patch, we might be able to drop this completely
>if we update the fake PCH and gmbus code to match on display IP.  Given
>that PCH isn't even involved in south display handling anymore, that
>seems like it might be reasonable?  If anything, we're more likely to
>need to match on PICA ID (which has its own GMD_ID register) than base
>platform at some point in the future.

ack

thanks
Lucas De Marchi

>
>
>Matt
>
>>
>>  #define IS_METEORLAKE_M(i915) \
>>  	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
