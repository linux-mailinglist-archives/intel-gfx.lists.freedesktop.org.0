Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A9E9CF5D6
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 21:22:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DBBF10E8B7;
	Fri, 15 Nov 2024 20:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emWivhV0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5696810E8B5;
 Fri, 15 Nov 2024 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731702153; x=1763238153;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HqxJJcwvpSPmJ/fOBqq/BlnYqCgS0aH8bctiOHdAwKk=;
 b=emWivhV0QGY9crdLFCzvUCr+IzcwnSxcKv8Ekhb98GIjDlHCrwhP6v9k
 AczLlnzO4meUWL/BHcPAl+p7JVyLzArHqXfjSWeniOUq5C6wNkzCpedym
 Ydf4KpT/xiCZMxRPty0ibR7J21cVBUCf5oXDhBsuIinrZBd4XQX7mmUUo
 JmppN721mbjDYj8pl1eE4Kpk0cQ/54o6VZUiFN9RkVA0xHm233U5qVS80
 rpB9ds4XTeXnj3EItQ4Joeh4hVvQcQVls/rlMyusHgDHJs+sKvaoR2tc7
 og6tBRCCDCjgMyFeIAwnqH7yhgBFtWfhRQrbFmdxH5crXgXa5BnmWSEIj w==;
X-CSE-ConnectionGUID: 7n/C9AI4QHqkb//lJPcJ/g==
X-CSE-MsgGUID: GOuONMV3RGW/EANtVtvEPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="42803815"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="42803815"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 12:22:33 -0800
X-CSE-ConnectionGUID: Aj7QDnXhTLWeLlP5qBw4Rw==
X-CSE-MsgGUID: ZN5hgDuNSYG4yNN9jZ0HQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="119598115"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 12:22:32 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 12:22:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 12:22:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 12:22:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t9qT7SHynNCAoMUMSjGWxN4y3ZbKtU/hGhZC5moq6H5bcxQXXjqpGOd3Y9+YEYEiTghhYAUEYMqbBhB0UOIRh1KKhjMiBdRXMxPaefohLxzfLbESA/lVRABrsgb1RQHazVoS1COpHnjHt/Z+CoAzwOLCwk37bVjJrD48xdG11Ngle+dXceK2anveKKH/PNfQdHvfIcsE+g85jcUoNut7P7DwC+J3SLsPJEsTSzesW/2xysuo5cv4IbspQfuwZYF3tuWYhq0JpW8UoM4KNhR29rga89MmviNoLc/QdDj1l4hHSYtJsoT4WcDIPFWAAvlWxnAHupLNRNFSn5x0oXw42Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iD48BQ3UJ8TTjFo2maANbt46jvXw0KitQaXJK7JlDOM=;
 b=d5peKd92o+11dAs18/B4c+BW0acE8gvux9UkgMaxto+xNIS3+W4OD6YDLEo94lmxSIQVb4zte600DTcLsaCI35CRJpnszZSJOW8y2zct77Ofm5/jy0OYePmfcu9/E0hLT8oyy+BapGRP5owafJjXvJXKbq2Yq/LW0InFmm/gPMBLIrj38MnFnpJn3P0PtdjKSG9eQ80hnWG1T4hFEVNTYJaI1I16ilGKTTjGJhdb38DvHO90cg7c6a/VAgYgllTprisvnW+Ne/0AMKQIwKfib1GLw+bJORB2+FqbTjI2TgIe5gobxj6863cNzDkjmz85WRB2ruvBQwkUQYFlqJ6NpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by LV2PR11MB6048.namprd11.prod.outlook.com (2603:10b6:408:178::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.19; Fri, 15 Nov
 2024 20:22:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 15 Nov 2024
 20:22:09 +0000
Date: Fri, 15 Nov 2024 15:22:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Imre
 <imre.deak@intel.com>
CC: Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: Move shutdown sequences under
 display driver
Message-ID: <ZzetbStBHPMO9-yj@intel.com>
References: <20241114202252.239652-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241114202252.239652-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: MW4PR03CA0204.namprd03.prod.outlook.com
 (2603:10b6:303:b8::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|LV2PR11MB6048:EE_
X-MS-Office365-Filtering-Correlation-Id: 32491e91-5ace-4077-a391-08dd05b32e3f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KYNRrxXBnu0/rwtOemlSuXmI2sULPMS00g8NwWdKuzJ7HMn+i92CIoBGRk5y?=
 =?us-ascii?Q?3SLz8qAWgTQfgbTzvnhNukCpxrluvs+WpBDOMOs5mTURjBJM/yU9zIRcEJ88?=
 =?us-ascii?Q?+HqJmxK+p3XsSqcED2ZTnEOBpq+5mi5EOQJW/hZP47l6RnEgoJJy0eHCMSEw?=
 =?us-ascii?Q?z+0Skmn3vq9NjrzXlAeBJ6FqJEZoPLII+dGnkcnxWb21Ooxb8JWH3KyVWSh3?=
 =?us-ascii?Q?K3GjQ8uDEv4QUGICiD3Wv3tMc3dB4oZPMAnYFSUt4C1wQCf0Br6G5O6x9dvY?=
 =?us-ascii?Q?vkFpDi5auxw8HVq1QsbcXhRjuhApyifLzOHU3+2xDcmLBC6TIZaLI1JFcbE8?=
 =?us-ascii?Q?Z1gv9KmpZwBYhUSwuE6FE1iN6vELN7gQ7m6IcHSQ+wXSkKkLVFz+43tm67Z2?=
 =?us-ascii?Q?hdyzLwvuI7gipRyzZTNIhguA6nUoD1mo0N6UJw8h/W80aC1H2xEmsAimPnEZ?=
 =?us-ascii?Q?vIqSmGd6mwnb2GpI9DpZ7zLRoCrPxFkfWt/vXHzYgP2Qa4EiYnq58vr3SRy3?=
 =?us-ascii?Q?KuWsNpt54etFSWNy2ZwbA23vzsMYtrPI06mCmcH6ZThVl9prjOYgDc571b/G?=
 =?us-ascii?Q?K4GhLpTGbN6GyGNPamehbtZF9SBrVBSOJcJBjFLQ7aKHZOsqcCfwz3zbJNeW?=
 =?us-ascii?Q?xowc7kK3dyPNHcfEdDPOdEZ6dMKQptAHBb3u+Cw80a0w5nfdRU+Br1flP9Sf?=
 =?us-ascii?Q?3a5yPSJl2menV41pyUDDI2itlxFDLB2fpbGhL9lkTlWDbaY9Khpojb3aTOCF?=
 =?us-ascii?Q?i+M43J8dgj/d7fuHhOJkWJIIjZ44Lac0iIqbCgOog1ePsZVItEz8FeO2mbAV?=
 =?us-ascii?Q?Ucq0r8CkPfvI9akooFx8VeUJrNZcFIbwU3LxObShuBYCuJoOIj8r8df7Zoc8?=
 =?us-ascii?Q?any/nuyJFGNrOpdoRmxoARfpAlopRaMwfEhFvv5mR1+1aM2R66Xw+kExqhAl?=
 =?us-ascii?Q?pUAQTpp5wX7Gz/3jDhzbCpHzmozu+W0YgUk1tcC8GA/hCZff8yefrjhlXw8A?=
 =?us-ascii?Q?quhncCmIufyyl+pAguW1zZ29D51WEWh5OwlTM3h5sCoo/LSv3lJ6BrifJrue?=
 =?us-ascii?Q?D9SCOsNJpwNe2WhdQ2MYvVrsUNLmsDpfupAl7w1MYmffPFvflj7EBIShsi1J?=
 =?us-ascii?Q?vHdPWOMzj0SO7BBNC99Ybna/hH2yKm6KwuIuUTnFfksm6/etBNG5BybQY6Dt?=
 =?us-ascii?Q?hOOzAERA+kLrQlrePjigPI3y7FhG9psT/QXSFJi5GlZ9yiX/EZRT5QaMuH+f?=
 =?us-ascii?Q?MAxo92Lt3VWMkhVPt9GFXebSciofziATZphFDFePzPr4SBA/QsfnbcCQGXYt?=
 =?us-ascii?Q?7yLNKgTW4O+Y79EDaLYKz8k8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3bSBG588/pVWuV1xRodh08jpnAdku0JKtxVgAcNph93tDmXiFx4Sb5k/uNcY?=
 =?us-ascii?Q?DV8cPWgCnQ2rgxvmpZjcdSX9Ps5MsTYVmATg+pFGOuE7jWaxY52XexrwSMF5?=
 =?us-ascii?Q?FiECajSLfvkNt8tjcwss/n6vdcYA7qlJVvNrEQ17ZxyM5qGnufLnCOgKeq+Y?=
 =?us-ascii?Q?4bqSyUJwwqyqFhsg+dTtAWFfPYtGJwVv4Qr7AkNGPpNSx3HhxXAjwzSZ0p7W?=
 =?us-ascii?Q?MvtVsNlAabnjnMLfDxv2fAQgzCZkWUZ48Wbvv1hA3aAzMLppdZ35YThXzCEJ?=
 =?us-ascii?Q?xx79zerbk5jGKhvpioHaxBjdyqArpixb1SmXjv6CFCWO4IpWd6MKOij6VeXV?=
 =?us-ascii?Q?GO4e8n7N/793r21JlDDrSPsM+Ohdb4d/dn50Kw0iGuWYPMqSkMdl/sfvCiN8?=
 =?us-ascii?Q?P0ra8i5NBfVQfT2KA4uU+CSU1o8jFIi8TbJe6AhyzU9x7/avV4idBo4JZReI?=
 =?us-ascii?Q?MWN6cSA1X2Hp/v2C+4VFwI1oinMjlHh4pfj94h21nYwYxs4dedB+7Xac9Bmz?=
 =?us-ascii?Q?JI6G6wsumlYjQZibl6Mb1pS+a9RczbEdIVbOWMg3KHGYPDbjS3RsQJ53/Mh2?=
 =?us-ascii?Q?LmItoNQwSI5XfDb58NKx4RmqTGGAhmsCUmPSA0Akhon9ioM7+a3lSxeEIf+7?=
 =?us-ascii?Q?nOofnDBliLCq/n8beS6PDgpfk9K15/Kdm3cBB7QpxGxyoJySvhrBikP8R61U?=
 =?us-ascii?Q?M6nB1C3P249SYUrVY7L2bkqsnH/w11w8c2eINgmNRYedQrtu00B4pz02mIm9?=
 =?us-ascii?Q?oLrGkuZe2kjRqCTbrbD6m4IX85eLqjsZt4XxeEtuydGf4liJApC755WwkB/3?=
 =?us-ascii?Q?9XEUBnyef8xIuMcYG5Au9Rh+jpEvG7tQ/ZiN2f9VGjT866VopyX+TywoyBmU?=
 =?us-ascii?Q?w7z56myxyhzaINzZX9wLjHzxMlhOF4h7sPxnb+VMKhKA/oHeXiI2KAzZfi7R?=
 =?us-ascii?Q?0Yso3qEA7C7xllKubQHH3VTzBUirizipUKoUMMAmIru/5NxP+zS/4vg3OAkY?=
 =?us-ascii?Q?v4NcfF9+N5pvKqaVHEtSRgr8bdVFPgzSOCN8g6HiUNqq79BsESHMlHv1HRHN?=
 =?us-ascii?Q?naj2Ek53P0eDFGTqbv4d30BjR+QN6j9sw3Jojxdl4a/nb8P0y750riLRk3me?=
 =?us-ascii?Q?8PEKqNw5UHCa330TWIjINOFpNzNxLXMHDCKCyCQlBCRGaLFec5KO8G9wWzzB?=
 =?us-ascii?Q?MEDkhrMV0ZAHDakHVGz6Pf23wVF8ESm6ospp7Nbou0i9COsjhaSI2YpnAtPD?=
 =?us-ascii?Q?0+s7H6fphAmcosmpcoef7d7ZfztnV0ZmFnhvnAoEmt5nO9iSzHZBZhIavah6?=
 =?us-ascii?Q?l1YmGFqDmDZm3lGEcPQgfyqrn5bpPaawTu5pmNXgL8xg+e0AOIt45qnjsxwN?=
 =?us-ascii?Q?GuYIdqZJcvauieAygqnjA2JJSdEyJ20RXvJfWd2zYDBSJe5vP16rk/EF/lBy?=
 =?us-ascii?Q?/13KzHqFPBs7NkHraLEfzaZoONne9Zj7jELFEiUqxrwVs6lRHuNWQ7ABy8tE?=
 =?us-ascii?Q?5N4zAtBrlAOd0tcGM+6wX9PXbIrR+2HGGrPpu8IqQQi1PvEGcc9hEARxdTNl?=
 =?us-ascii?Q?M/B2JfEQRPUXUgA9aIVx5DsXA8y3gms7iB9q+p7T5rl16xXvrFq6p9zWAVo/?=
 =?us-ascii?Q?Fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32491e91-5ace-4077-a391-08dd05b32e3f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 20:22:09.2097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pHPwrhlEPwPairTNL3x8vBVgUZim5hWnD3PNTs4ixFDi345HtWLGa0qc2u55g4Uc8YFTIsqD5SMIW59af9JHMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6048
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

On Thu, Nov 14, 2024 at 03:22:50PM -0500, Rodrigo Vivi wrote:
> Move display related shutdown sequences from i915_driver to
> intel_display_driver.
> 
> No functional change. Just taking the right ownership and
> start some reconciliation of them between i915 and Xe.
> 
> v2: - Add missing _nogem caller (Imre)
>     - Fix comment style (Jonathan)
> 
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v1

Cc: Imre Deak <imre.deak@intel.com>

> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  3 ++
>  drivers/gpu/drm/i915/i915_driver.c            | 27 ++-----------
>  3 files changed, 47 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 06a60be649ee..ee2cccff6e5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -39,6 +39,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
> +#include "intel_encoder.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
> @@ -762,3 +763,42 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
>  	if (state)
>  		drm_atomic_state_put(state);
>  }
> +
> +void intel_display_driver_shutdown(struct drm_i915_private *i915)
> +{
> +	intel_power_domains_disable(i915);
> +
> +	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> +	if (HAS_DISPLAY(i915)) {
> +		drm_kms_helper_poll_disable(&i915->drm);
> +		intel_display_driver_disable_user_access(i915);
> +
> +		drm_atomic_helper_shutdown(&i915->drm);
> +	}
> +
> +	intel_dp_mst_suspend(i915);
> +}
> +
> +void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915)
> +{
> +	intel_hpd_cancel_work(i915);
> +
> +	if (HAS_DISPLAY(i915))
> +		intel_display_driver_suspend_access(i915);
> +
> +	intel_encoder_suspend_all(&i915->display);
> +	intel_encoder_shutdown_all(&i915->display);
> +
> +	intel_dmc_suspend(&i915->display);
> +}
> +
> +void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915)
> +{
> +	/*
> +	 * The only requirement is to reboot with display DC states disabled,
> +	 * for now leaving all display power wells in the INIT power domain
> +	 * enabled.
> +	 */
> +
> +	intel_power_domains_driver_remove(i915);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 42cc4af6d3fd..1ee37fb58d38 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -26,6 +26,9 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
>  int intel_display_driver_suspend(struct drm_i915_private *i915);
>  void intel_display_driver_resume(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
>  
>  /* interface for intel_display_reset.c */
>  int __intel_display_driver_resume(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 2013962e446c..3b241054ceb5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -945,43 +945,24 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	intel_runtime_pm_disable(&i915->runtime_pm);
> -	intel_power_domains_disable(i915);
>  
> -	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (HAS_DISPLAY(i915)) {
> -		drm_kms_helper_poll_disable(&i915->drm);
> -		intel_display_driver_disable_user_access(i915);
> -
> -		drm_atomic_helper_shutdown(&i915->drm);
> -	}
> -
> -	intel_dp_mst_suspend(i915);
> +	intel_display_driver_shutdown(i915);
>  
>  	intel_irq_suspend(i915);
> -	intel_hpd_cancel_work(i915);
> -
> -	if (HAS_DISPLAY(i915))
> -		intel_display_driver_suspend_access(i915);
>  
> -	intel_encoder_suspend_all(&i915->display);
> -	intel_encoder_shutdown_all(&i915->display);
> -
> -	intel_dmc_suspend(&i915->display);
> +	intel_display_driver_shutdown_noirq(i915);
>  
>  	i915_gem_suspend(i915);
>  
>  	/*
> -	 * The only requirement is to reboot with display DC states disabled,
> -	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled.
> -	 *
>  	 * TODO:
>  	 * - unify the pci_driver::shutdown sequence here with the
>  	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
>  	 * - unify the driver remove and system/runtime suspend sequences with
>  	 *   the above unified shutdown/poweroff sequence.
>  	 */
> -	intel_power_domains_driver_remove(i915);
> +	intel_display_driver_shutdown_nogem(i915);
> +
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> -- 
> 2.47.0
> 
