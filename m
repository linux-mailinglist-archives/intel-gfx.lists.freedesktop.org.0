Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 793FD79D11E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 14:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D712010E229;
	Tue, 12 Sep 2023 12:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D030F10E229
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 12:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694521913; x=1726057913;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/9nYpOZmmjyHyaYC8LTfV5ftZUfWTm7MVR+Bn3PIw5s=;
 b=ZKQy8H0riyvCzl9eBghdy6nanoP0XS/mrdZhKi0zNjTbWl5O3j5dpXNk
 WXd3jzwtLXeMHO37AC32gsA3rflaRnf/+1/Umoxov0el9Q6mYPfSXKv3r
 4ZJycZqB2KwL859tzXUUPVnS0tSFOR8T89lQ3hjbkSDXVgptkeX7NfA9O
 c7vE19HPV5jP4NiHAi7cXRd33lVjkxeslcl0i1YhvAHD6OeJwM5FNPtRq
 FlialHw1H8rwQBcNmsn0DYXYXVNGB3wuJ89Zp64Rlzrj5YVb0LVTp2pVv
 /2cp6z8/5opZtISU1uW+6IiSuwq/YabPunD1st+eTG66irDKcgOOaSnRk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="357790961"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="357790961"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 05:31:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="886918536"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="886918536"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 05:31:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 05:31:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 05:31:36 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 05:31:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9dw9SMcwBWl9xwBDXaGC8+giWL0bcpkR66JEuOMeexjM9EfqJb+eL6jhG0R0s3WXdhUjVph9HOxxPGhlUGACx8QcSYnk47VfaH2zE8paWq5Xv9gdPzP8eSPMdOJiTGavkMlg513A/j2V7v+KK04GwFtARQv+T1IX+5wol/IhvtNvYxwRAA4U0ifT/b+7C9ZFIQhg7W5drMt2VR+0tnUKxA6vuqyT7Q/mD1qIvKEqhPmgU7nzDcX27Qum2l86ciueUYBFP39xqDbrMtQMBErB1TPJwFokPIMuMzpicohUSY9F9Bc2tFcsPiKxzbq5AfthTbUpDD2uErM5vUEQp5iIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HnzKXX7QTRJnb2BBQgsqmUbIwzxTu6b8tjt2S7N+rAk=;
 b=lLlp+5ZWQaz/UAHZdopg8KWU0JNRYEwQpUZvq6RXiwazeQW97blB8//AlR4XdxGYE5NJJRg+79aUwZN3RerntWlMpx7Q0xdDYZEVPeaou09jmgXwguy7YyvmPIf66q9MjYQlVKR4VKp6aIeTbZ2H6xD96UFZZtGVmOhz+YGiis5R6msTT5MRkkFd1z+WzYMMGei3flxo/QEXHSPlzjpkgzHKalN1BXrAubpddbsMv00CPjPuILsdtDZJQQU98PgY4Uryrzw+bcnCmjNUpQDyu4qb7nkzfDf9eMHXYdEpIbbDMxHhaZ+R4NSyArzrYkO9tTQnIl2XPF8+apCTs3T9cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 12:31:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Tue, 12 Sep 2023
 12:31:34 +0000
Date: Tue, 12 Sep 2023 08:31:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQBaIWoG50ycOLKq@intel.com>
References: <20230912120537.2158209-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912120537.2158209-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0140.namprd04.prod.outlook.com
 (2603:10b6:303:84::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7788:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a987b1f-15da-4446-fc75-08dbb38c32f0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: opRlpr+rP4rKgd93eFlCvKoZtlNDYv4TCuvOvoMe2ufKzB7KBXhOvUmdO+d8/n1u2u/Zf4WStYJ+Z6CSJy5sal0auy0B5kE06AqIYgjjC2712E/3ZvNTtjcr6gaXjEDl9TMKOZpj/jelakSwaKAs9H6YpBvL+Xu7Ab9cMToXjLR89fGIR/ygq3UzHm7/PSVRrpMRwfgqAML7atxLI7s4k3NtdjztE1dfm8AmQOP04PVHjbBs0u/OxcHjYojs6pgWnermr2kDuwBMctOMOOujmod3RZVw+4soRgns/K3yQZFxRiN/uz+rRBY+AG8zVK41qMSKGlxmOHWmVCtkn+4fBXTjCiOnliWUXo44djqyoAoiZNqXsVfG6b5vKBp5pT9lqbc81ENs6yeA5SuUeOCe8cagblTsMZFeNxXiCjd2l2BBQncO03jX4DCjBwkxdbbUT/LCbkV+WaAdaHQWRzEJPRx4YvDpQSAoUKETjeK5M+1ozLcS9CQ0405GtURQCiHeVWpoxpcIkYHYDn2WrouTtCWsL7R/B0R4KqXXEFTkuajLHxgujr3yyPHjOAToZY+b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(39860400002)(346002)(451199024)(1800799009)(186009)(8936002)(4326008)(26005)(6862004)(8676002)(107886003)(5660300002)(2616005)(83380400001)(44832011)(6512007)(41300700001)(6506007)(6486002)(66476007)(66556008)(37006003)(6636002)(66946007)(82960400001)(6666004)(38100700002)(316002)(86362001)(36756003)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CvXXftSm+/Qd252OGE2YfIFwcDgwoCpxM/C31hN+vuY+5g0yn302aMMAM0/i?=
 =?us-ascii?Q?7PpkvwZTGf5EXn5uOL+4yppIMIl5hir7UmADOSnT/Fz4oP4VC3q/YooTfXn5?=
 =?us-ascii?Q?CJvOSoUmbfgR0t73gAWmeSNWeXbhWoMhG/HnzTUSGmd8JHf5t/ExDTNKgUPo?=
 =?us-ascii?Q?crhIuxdjLVTNq7S/sFmr4pt3ZbC5EnSFLJCLkP3Aq7opcPGRLQAetn8Z6Pec?=
 =?us-ascii?Q?8OAEWhEstyOhaUNWNU0qM3qkEqACUSCn0kL2boSL3K/8m/91Kv0e5GxC9RBH?=
 =?us-ascii?Q?ro+6sZb+F4tIJsvMIYB4ey03Fr366/5ROVRg1FZ/Fe6epva7RMkLsvU0V2KC?=
 =?us-ascii?Q?MlLXsjCv/I6HaBuJ9wj58+6EXdO7rGpuvq9iKHzvgaDlYtSV97YE2NAp+XMb?=
 =?us-ascii?Q?nzhFqR2tPHsaMpfHpD2wi9quY7XPQB+KwIwft3SxBzCjGELUbNhPgUM4LV18?=
 =?us-ascii?Q?n5n6+K7jywoQBclxBvimf1bijzDkth8Vo5tD48WPPW9MTYxHnxwZw28ipWQa?=
 =?us-ascii?Q?FCu7HQ7EKec21nydZhbU2zpXD3ezvILTXcb3QqcbZhGFYQrx3f5PMnrsVoOP?=
 =?us-ascii?Q?BYdGFczOVI+P1TNikws/SAiRE9N5UDid7JnEdvmBbjww8Wo36uN0S20/+ff2?=
 =?us-ascii?Q?carh8QcqgznoiC91tJ8IN6xBEGFMZccrWJHxIH4f5dYXzOFjJ9ySxoNAHc1c?=
 =?us-ascii?Q?IJxf9EmDB+xSIflOQV3asOaH1O2LyUq5Bc1YjREMS1umnUIr4R7TKAX9kl5K?=
 =?us-ascii?Q?D7x2fU0iFUZ099DdgmD84Y9vuLXOImJuNfR6TjSlfNcDhCt8VRkPg4ndhXOY?=
 =?us-ascii?Q?BJLu5g8hbCKH378HgB5lX7oIdcwkEunJbdr4z2BdUKDKNdtMSNV7cVJYnVzU?=
 =?us-ascii?Q?f4NPCKWMY/BDw8Csj0lEpin6n3UORvTykWtmX9XB8pHAdVgzzDXcPhmVcIwz?=
 =?us-ascii?Q?2lrJ9naBDpI8W5JG6hNFYXlg85SFvR8WKO9ZahJwlZm3DlC37udQcDL8FjMm?=
 =?us-ascii?Q?k9JqbARQpf4xfDr2KaDvNwHwmgFjzsp9YtnyPAV1GVqEzJvGSFLgqwmfoZNp?=
 =?us-ascii?Q?s46LfZcEa9Z8b6RCUUyp2aUu2NPbHDRkYg0C+74p7L7nAJyqZKoGXXDS/3sZ?=
 =?us-ascii?Q?2XosE9YSckNH/+OkYtwxQ9ezfbFaKBhAPPoDApP9iMULl4uXbyboJZa8b/EL?=
 =?us-ascii?Q?vG75mUU8zSSoAq/yoyFz3zA7Kax+5gGFcVOjnmoUlzVQlFrGuPd9FRv4IcLH?=
 =?us-ascii?Q?h66nxEFurouGL/C9oHFpNUEvzT1W5TJgFr2RQrmPc/H6KaOVQUUA+F3z92Kp?=
 =?us-ascii?Q?3i5Q6eHBJlvQ3I4A/pYwOpZ17SK/2TKWrrKkw4MEcd2RERrycUbm40JbhXiG?=
 =?us-ascii?Q?t2vOCEIAV9CdpxdyN0WtH9zcqXcaJAiL65Y4crxrUcNrEiug9w7oXtOeySYh?=
 =?us-ascii?Q?t84z3O9BvUkFXrSIfdOi6NHOpTfzfjNYR6CE2mUJ1cIQRz4AyZSjhGy+YR/P?=
 =?us-ascii?Q?ugdS3KRo6EoPlwDZ1pUWANbwCnG2GIQHv8d0gg56YvSIR8yebFXGS8aak8DT?=
 =?us-ascii?Q?qNrtSK/o5RQ12rsHQ1tMp1qc9H4B2ly39Y00SBGR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a987b1f-15da-4446-fc75-08dbb38c32f0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 12:31:34.0522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uCRVh5nX3r4eIgJiSy0KsnYUgosiPPgTSWAVnVFxaNqkKOtpt9CNUAlkHzrJVj/H0y0HFwro9scZ2KdrC6Sy6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: move more of the display
 probe to display code
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 12, 2023 at 03:05:35PM +0300, Jani Nikula wrote:
> Initializing i915->display.info.__device_info and DISPLAY_RUNTIME_INFO()
> really belongs in display code. Move them there.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   | 24 ++++++++++++++++---
>  .../drm/i915/display/intel_display_device.h   |  4 +---
>  drivers/gpu/drm/i915/intel_device_info.c      | 14 +----------
>  3 files changed, 23 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index c39f8a15d8aa..ed564566e31b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -850,9 +850,9 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>  	return &no_display;
>  }
>  
> -const struct intel_display_device_info *
> -intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
> -			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
> +static const struct intel_display_device_info *
> +probe_display(struct drm_i915_private *i915, bool has_gmdid,
> +	      u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	int i;
> @@ -876,6 +876,24 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>  	return &no_display;
>  }
>  
> +void intel_display_device_probe(struct drm_i915_private *i915)
> +{
> +	u16 ver, rel, step;
> +
> +	/* Probe display support */
> +	i915->display.info.__device_info = probe_display(i915, HAS_GMD_ID(i915),
> +							 &ver, &rel, &step);
> +	memcpy(DISPLAY_RUNTIME_INFO(i915),
> +	       &DISPLAY_INFO(i915)->__runtime_defaults,
> +	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
> +
> +	if (HAS_GMD_ID(i915)) {
> +		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
> +		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
> +		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> +	}
> +}
> +
>  void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>  {
>  	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 8198401aa5be..a7b6469b43a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -149,9 +149,7 @@ struct intel_display_device_info {
>  	} color;
>  };
>  
> -const struct intel_display_device_info *
> -intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
> -			   u16 *ver, u16 *rel, u16 *step);
> +void intel_display_device_probe(struct drm_i915_private *i915);
>  void intel_display_device_info_runtime_init(struct drm_i915_private *i915);
>  
>  void intel_display_device_info_print(const struct intel_display_device_info *info,
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 9dfa680a4c62..b9b8b22540cb 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -410,7 +410,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  				     const struct intel_device_info *match_info)
>  {
>  	struct intel_runtime_info *runtime;
> -	u16 ver, rel, step;
>  
>  	/* Setup INTEL_INFO() */
>  	i915->__info = match_info;
> @@ -419,18 +418,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  	runtime = RUNTIME_INFO(i915);
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>  
> -	/* Probe display support */
> -	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
> -								      &ver, &rel, &step);
> -	memcpy(DISPLAY_RUNTIME_INFO(i915),
> -	       &DISPLAY_INFO(i915)->__runtime_defaults,
> -	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
> -
> -	if (HAS_GMD_ID(i915)) {
> -		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
> -		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
> -		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> -	}
> +	intel_display_device_probe(i915);
>  
>  	runtime->device_id = device_id;
>  }
> -- 
> 2.39.2
> 
