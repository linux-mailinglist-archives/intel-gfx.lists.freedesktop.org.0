Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 227398FF0E0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8AC10E9A6;
	Thu,  6 Jun 2024 15:40:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="npD8jwkG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAB210E9A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688400; x=1749224400;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vO2ah+D6nflbMvN4WpSYzZJBUmIfTdHMyWPN016iQEA=;
 b=npD8jwkGX6/8AXr8QywTgKT4xoHu7UuFRYEW9zqp2OEvBNk8ToOHWvm/
 QfmGgGOIq2jvKBo70tujVjz/zEoDprPX+BBERS+1Zm6dlyno3Nnbl0CnN
 Sdn0xQYOxst3QBuvHzZ6XCrKn0s/JgP+kA7zd9aGlxJASLRtkB3sqwvzC
 sor64TvBgVbCbvIKlYGkO2MXEmGN3UDRmsNxntFTOMiCz+RMUQ+EXMG61
 gQJqSEKBvRTZSX9lfcAq2W0s3ChdmSbbImH44StPCR/ppaDFg5TTz4Fb9
 8W+fEXXFGkIvKn0nVmldVMsal9S4ivNdyIGj8dZlf7KP+MPbSi5T5b+Zz g==;
X-CSE-ConnectionGUID: eZzP1GFOTPebPCUY8NwLQg==
X-CSE-MsgGUID: jBWcfi1tQ829HC3Ge0GvjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14250148"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14250148"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:39:59 -0700
X-CSE-ConnectionGUID: wqbLuUtiTPGPmVuK1AzaLg==
X-CSE-MsgGUID: lKkZhQuITe+b4Guw9RgBqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="69162489"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:39:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:39:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:39:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:39:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:39:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exiFhoa/ydEMzqZRIS4PYp7LSH9N3MnX2ZppyH3w7FXj8d/1wxeFasT4OoYRAv1uKF6mXk1CI3tvMvqHQ4wY2k8KvrKrX/uB+fxIx4ugFse9HGCzdbM6eoeMRLt11OHG45r/C9Eg6FqFBsFqk2E51uruhtwbTHKNyRDE8Zn9R/awEBl2s3Kg7P4NGqhbTbWM1DYAoofVXQcsD0irrE7j0sXgI8+SwszBAgv+bwXzfL+PXaqam4+chLcfmAoTaCHRxrpk0JcNnxfRNHAqkXJraykebJDpmDot2FfnMjKm8rj7fFJjKTAqPer83eexFSkDL81Tn6la1WO6LETTl4Nsnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZH1RX/krJhe/SsK2T054DchnParXxe+WmlflxYzv5pE=;
 b=XByODqcfhg4Ksue8UeP9mMrMZaRVd/s3Q2zTwP5eYB5WCkMpJmgcRJRJbes1qWu9lIs0r9DOBaDkVXVctO/XOBtmRVUJZ7kJvy2RopDZqU+Dd9/0OuPfN24vXdRcYJk/vxV26aqN4yNHirx7Ur/8imOP2y//IG47jJQL9UwHGVe1AtTllkLPPcR3RFFZ4pQSNez2E3GeYF0IWq4PEJkiQAcOl1r+R9OT84TL1AfbzNKNNwfvs+dUADNkLgt56KcQIyEeJUMlA1y3en/L8ClrH00Hd4HUruNj1ff9dE5x4jUEPnZu3N0Hjtt2P0vwH36+CTbIhfRczeXAiQrEYQxiIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:39:51 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:39:51 +0000
Date: Thu, 6 Jun 2024 11:39:49 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 13/65] drm/i915: pass dev_priv explicitly to
 PORT_HOTPLUG_EN
Message-ID: <ZmHYRSpEaOf_wNrC@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <3f4c3fb108f62db5d9b6bdabd0fbeb6650e14e82.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3f4c3fb108f62db5d9b6bdabd0fbeb6650e14e82.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0059.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::36) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: d4c8755d-a6a5-4fe3-083d-08dc863ee7b6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NhkI0NmK3/GDP3g714YAkKXW12H6rKtrgJgrejOazQFKrnxKdGVmJJg8T+8L?=
 =?us-ascii?Q?APeZHhzUa686OtDtYmQhjPSpOiTY3l2FHQ+nwaJJmaRqt7FakgJRRfM4T+rY?=
 =?us-ascii?Q?yQECTS9hKnIk0D4mNowMy0F5XndUZRJUOj/NRCTqqciZfofbjE0lmCFViqdl?=
 =?us-ascii?Q?wvADdl/iGlWL3ILdOgBgRWO2NfAD5VrKoEDcANCNwFEG5lpHzqh2YwbW0hJ1?=
 =?us-ascii?Q?KgTkv7a8Yu7PtV8z9w+tM58+ACnE8AZOXTHq4o3E0+KgGfit3m6qODj8G60l?=
 =?us-ascii?Q?NBUL0xTMddM03V2jfK1T7gKzHZ36k+Ya+5JEaOk206MRl+CaLZRrTJAfLAN9?=
 =?us-ascii?Q?G36FCXPNh+EhPgp36dtLfv6KTBoI/KEyTUxEzzEB9LdYJE6vN+7L4lfq0j/z?=
 =?us-ascii?Q?M3YVCTN3yN3C/2FrMAz4bHb/zFssTiUOOyWGrzO37tcoDx8znyG1Ep2b4Rrh?=
 =?us-ascii?Q?Bke4bS6ncccZFs3q332w/YwrhcpvmHilAzPCZ24c/oXLYgT/w57Sy6i4MOEi?=
 =?us-ascii?Q?/61/W4NrPhhxepHqMlzAD1R6ZGuJp8mgJH+/qazjQPm99x+PkGT2Nm1GNTi7?=
 =?us-ascii?Q?isiJcPy9INvUsXZje/YnjRW5tWqumDSo8tCriKU0auVlI2Op3g6u/EoonJTY?=
 =?us-ascii?Q?GU/oKUyKKooJnVkpJOLgDURqI8ZGOG+E/DIHzLEgtbGqRcOxGD71DnxkxDNW?=
 =?us-ascii?Q?7JzTvcqG9XF328axGqn4Ic+Ngfb9W4QuQNhjTfantD9gLslZ8gWBBkzSiYqY?=
 =?us-ascii?Q?HJWD7k0oBbsX2Jy+B8JPBGU8MvckeLA1LsAASuZMpXJ/rS4oY4wwZwuBFa9S?=
 =?us-ascii?Q?zFPTmGoAZlJ7WvAjYSeVXUXAD9k/ASekFBTQY49Kse2MnUrXA5bpeFdsWSMO?=
 =?us-ascii?Q?4reYdLYnqiDJSkqdJHe/6WYeHwYqAtZANNR1+O3kAL2JXAY+9Q5f+lYZ3OJu?=
 =?us-ascii?Q?C29qzN7nzY0FG/vDa9YX+HzXr/qkvGMmX/6t7lJlXUYkwfN91IvDZrOTDC32?=
 =?us-ascii?Q?gk5Rt3syfMn1Ktc/gQ/K1ZMRvS8ZKHpCgqZzV+kMm6X8kk9ZYF2hS7+gUSPz?=
 =?us-ascii?Q?qI74KKYBdAFwMprcv1M+bQJG6U7wf7A/PMWUEVjPlDZQxHYLsNCoDe+HcEH4?=
 =?us-ascii?Q?DXuuBF3ipN3SRdL9LJqNiEnHpEyvZUK2j+o1dnGAMy0MffracaobjxCnaSkU?=
 =?us-ascii?Q?/sFNZWpb1nb1J6yXCsJq+5lsw1FgSZTIXtTQLdXUajHdwYo9fDwjzzvDmn5r?=
 =?us-ascii?Q?VcDwTFroten4jR2yxqtCnsZ6q6npPXLHfWLnHhmcS5Mfjlz38iq7dxey6kHn?=
 =?us-ascii?Q?ICbtgm44pcg/fSAdUQ9lkkA9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ODYyHmWUfmzd2fhsbjkk2qaFsae9m7hj89nx8pbOu8y66jveCbRWQdep4Gyc?=
 =?us-ascii?Q?aFv5Uwgrrw3waTfxMHuRIM1EP1S0WHzP9Qci3LU7wjpNTAx2AvWvwdt4pZ7k?=
 =?us-ascii?Q?x/7Y7zeqPgXVXa20O/X+QLtjKeOA+ba3gCW/TzV9NwJe2TbAR7KK9XKWEAaQ?=
 =?us-ascii?Q?hv57CJrqBG+lxTYz0QupkDRXK9TBFyK935SOdcfrQhAX/KA4e4j42GTHemZy?=
 =?us-ascii?Q?jfd44Se8jJKDcmvyStNVOT06wsBkV5C8t5Ymp0kA7E80v2ek2rfAcXeuB7aO?=
 =?us-ascii?Q?oboVL6iSXyRgSufSR9dB3zI0Pqas5qtOH+u7dRC5gV29zMLPOG/fvAgKWRDg?=
 =?us-ascii?Q?UPwI2J082mbOv2dyLqsbx4bYmpgSYPZ+D0tZSAfG80Hccf08liHMvE55uiMR?=
 =?us-ascii?Q?dqTdBLrE0cGadvQh2pbP/rpZwG/JCeS905wDiZOxNwXtGsgtgsQojjaCX3nI?=
 =?us-ascii?Q?QigtemL5ltCog73ZccsQes61phFE3RbBS/72GxeQfUDuAuS7II/Z4hpxJugy?=
 =?us-ascii?Q?fajwIT9j5anQHQMakqCQo5F2K/24VzOzyFAD9DVlqb7/M47ZL/qGi6rx5MWV?=
 =?us-ascii?Q?ZzFA9AsSgXZrWuuqZ0kQ17phY7g//UnOjaHgg9PjQR11obXtgVQKhmazLSTX?=
 =?us-ascii?Q?qaJyyALEmgzcRBhmPVTIluKsow3n/nJ9JSCegVm5UL/+upg1p3rnNSG+m6cp?=
 =?us-ascii?Q?WKvla9p3DCTtjmVFQdQ2Y2NmvZNRKdr5TFegYZ0KIq6xTmItpNJFkbb9Dmju?=
 =?us-ascii?Q?JjpOL+i2Q/0lBFAgXJJI+sSrTSR6ROhEJPe5MTd3dWnLrwsuemxwvZP+oXPg?=
 =?us-ascii?Q?34AQYQK8mqRPU4TppanabdBKNOrwO/XkdCTqrMPvEH13VL0MOn8ZEl5Cfo0w?=
 =?us-ascii?Q?IMkq8ilpDBSbWQtsQMCSDmEKKuJca7BgKnJZSBO2mNZSWF58aowPQ2ljcvLf?=
 =?us-ascii?Q?4TWQaIvIeirTTqjo2U4fBZ9cTIcyCE31Bp/nDNz0G0tGNCS6g4DH5u4V3xYc?=
 =?us-ascii?Q?dDMf/sNysQ/VlhrjKjUmIgXdXKb0l/e7VFIE46ejJmAEwE1SJ+k/Kdr82V10?=
 =?us-ascii?Q?nTaNYLpqIjTZ3/0FrC3EV7rQ9s8qUYuNvAFL79I7IT49xMG40Uwd8YRmlZGn?=
 =?us-ascii?Q?oKAtUrAPmwHM8xfLiEeuKTU932xBXxhVtls+Q66BOneJ2U7CpXecL4WJINOA?=
 =?us-ascii?Q?GSUoI03kUyD/zxf10Noc2yGUfotvjpKNWXlIRGrNlcZeYAD4KPcxgQe8vR7F?=
 =?us-ascii?Q?r6QaOa533honHMzS3B5wFSXJe1wR1J81RYPKDAiXkczEetWvrDDIjlQnrAjr?=
 =?us-ascii?Q?B5Q3rr/tm6hJgyXOAiW/p9AIKUwTfgyFoTrleods7nyxBldRmdkMnz+HhJ9P?=
 =?us-ascii?Q?vsLf9A6zo2yIZpGv0bJpW23jVptD94LlG/ha1IEJMtemRYlSRXxKUnHBSVPE?=
 =?us-ascii?Q?4LpXKlEjmh3CQsot64YLbK2CZLXdJ1qLg4JOiMNpf6sQoG9OlmXi6RLujmFR?=
 =?us-ascii?Q?JxbbQQw99Yun9kTmj5JkUJe/7LZ4S583VRU0tpdFnx01AYrjaxWFNg+qISX/?=
 =?us-ascii?Q?Xp5ol/ptlWuiuYFy0be/fuExNnHw5waWjT1R36RV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4c8755d-a6a5-4fe3-083d-08dc863ee7b6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:39:51.5063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jgo/3GU6X803hZA9tSzxYecmrnXPTD1rS7VHvS/fCDL1W96UdmcaZ4eZkFEVHbzOS7knCeh8HI7VTNWJXbaJhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
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

On Tue, Jun 04, 2024 at 06:25:31PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PORT_HOTPLUG_EN register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c         | 2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  3 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 2660c4a53e6f..b7eab52b64b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -603,7 +603,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
>  					      CRT_HOTPLUG_FORCE_DETECT,
>  					      CRT_HOTPLUG_FORCE_DETECT);
>  		/* wait for FORCE_DETECT to go off */
> -		if (intel_de_wait_for_clear(dev_priv, PORT_HOTPLUG_EN,
> +		if (intel_de_wait_for_clear(dev_priv, PORT_HOTPLUG_EN(dev_priv),
>  					    CRT_HOTPLUG_FORCE_DETECT, 1000))
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "timed out waiting for FORCE_DETECT to go off");
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index d270bb7b9462..90fe5f8538e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -186,7 +186,8 @@ void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
>  	lockdep_assert_held(&dev_priv->irq_lock);
>  	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
>  
> -	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
> +	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN(dev_priv), mask,
> +			 bits);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3bb895d030ab..4508c535f320 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1378,7 +1378,7 @@
>  
>  
>  /* Hotplug control (945+ only) */
> -#define PORT_HOTPLUG_EN		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
> +#define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
>  #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
>  #define   PORTC_HOTPLUG_INT_EN			(1 << 28)
>  #define   PORTD_HOTPLUG_INT_EN			(1 << 27)
> -- 
> 2.39.2
> 
