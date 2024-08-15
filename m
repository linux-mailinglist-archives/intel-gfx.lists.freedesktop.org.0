Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C360F953AC0
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C6F10E512;
	Thu, 15 Aug 2024 19:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kK0npTHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7227A10E512;
 Thu, 15 Aug 2024 19:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723749369; x=1755285369;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Gp3VyJg0UW+ZdMHwP473aEIEXbI8Fj9eCeXS9tUp2xQ=;
 b=kK0npTHXpHH094Kom8t+toGeBIREmfvE47EezGLYWEWxEeSBiA8G2WEh
 GryLR3VpYLfHznSadGKZRVkFvdPgVU+ukkO1fiAhzHV0l6xSVFYa1n0mn
 Mh792JJKhQN7AXM0SnJsg83YfJ2kKVR2+o/tyT9BcEJkAUGHIuvr7/4j8
 paAB/nNUFXQLwBTEnqxVT3B1QD88xkscQp73gR18NPdU68vZPPzVZjMT8
 qu9UHNJk999VpQ4BI0gUi1eLvSwWWIaj+EyhpfHF2Ho/fHVGr9NANfd5p
 uKi4wQg1cXmBejik2k8BNTWCJzjY8Y2MGwCzLvRxzjByruzaSNm+/MqbH Q==;
X-CSE-ConnectionGUID: zd7mA80SSBqbnswcyBeuvg==
X-CSE-MsgGUID: k9rGYygNRzed6fRBUXA6EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="39544035"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="39544035"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:16:08 -0700
X-CSE-ConnectionGUID: EENMrOQ+RbigXpQdRc4HaA==
X-CSE-MsgGUID: /+mVmn+bQh2psCc+Tw8Fmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="60014696"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:16:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:16:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:16:07 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:16:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvDLy+MCWtH8jHCsiJkkRnV8MH/iCL6y4tKPaVgJgzTfmXMouU8bMuXp8AtjRBGGGmoy8jlz3Ip4IN8AkTgeeDd66jLlPOcBs6hTGVTZG77EDhjmYii5iVU/o6f0w2rVGz6Orr0ffzObzMuZa5PYCv7C0jpcSmeUANC2IJhBGiX4GqolGT4IGiXbjknIi/0SI6yKd/5bb3otehLIuvwRAM9A+6xLDDNCWXIM3fje45X9Jnc2KZpbZMTo9wGtgHB45n9OkMrDZ3FDeiu2I5HQz1SrtfRUh1/Nj4X3UMZGg5k5RJaap605wvLCMQZ4wcWzVi1cqcp/qT2KjTt7n7ZmlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zS7rHm/IFEkMQ5uQYVr7YGe21lOk+8j99qnW3ZiymYw=;
 b=SubvOsvMTaODQwkuFImFGDlhtM2jk1WiSy5PEkFHHm+Vg1HOaZ6c8DEvoNTmSptyE7RF4DXVjCTPpUjFRs+hUTT/yyKNPQ53baDFIvaKp9C0G6DPuCPkQh0AIZ+kfUMqOcdb9B3iG8+XualnNJHjn8Dvw7HoRA9C2gPhc7+nb+5jdgfi1vrGg5RdncIRd3RxwJkYLtqM4Oq8WMYQdlRbMRgeXBJegy+0Ywglt2dVommoEorKuqPKucEA5ksvZnuHrZgRnawHBZG/qaAGJ83pJg9gaxEOjH7R4ji8dtdqznhcKUe3+riwznYgFiyX7W801ACQdf3mGnI8ZqHuOGYX0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6513.namprd11.prod.outlook.com (2603:10b6:208:3a3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Thu, 15 Aug
 2024 19:16:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:16:03 +0000
Date: Thu, 15 Aug 2024 15:16:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915/display: convert dp aux backlight to struct
 intel_display
Message-ID: <Zr5T8K-zQyFD5k2c@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-6-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-6-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR04CA0014.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6513:EE_
X-MS-Office365-Filtering-Correlation-Id: 5840d696-3668-4b70-7355-08dcbd5eb456
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?1MwjFiagJU/Rwen11+yPjUJKOb6WqCrmI4w3U3+Ywoi8CzhB04D4Izn6rjBn?=
 =?us-ascii?Q?8Rd8rdaJjtgUjB+oA6XZtQPomV7iHBMVYGCTp6/UMJmvIFJH5RjHsm/FEXSS?=
 =?us-ascii?Q?u/5ANw/gNNVoHvLG5aHhKan67Wh05gPESQMGUPX9/RAL9Ycz4U57eLtCW5d4?=
 =?us-ascii?Q?VxbG6EsyvZC6p1vN380bybmo+3eUAr/wpsD0fdrXuyHUAXFfSCtSUdT0LN9N?=
 =?us-ascii?Q?uMdgN+ZcVmLBai5vHaFfiFCBVxjgBAtVSvt319q/VJhS1QT0d3IoADVPUXGe?=
 =?us-ascii?Q?koeKljxTpMqGWSEMX63wrdr7j1zHdoinRJAjZ+XFoixdCn1JmMiwumNrHC0v?=
 =?us-ascii?Q?44CUO0I9ovbgKGvm1idG5L+es7uUUZZqV1kAgKWVgKbHn2d6SESFKhO1QNEE?=
 =?us-ascii?Q?DA/FpNrXwhgsh4Sk1Y2K9iyPJIdEYzsvXgdnR6w63rOurTrN+pS6q+NPgZeL?=
 =?us-ascii?Q?lxd9oeTdbTxZ7fT8+wf38y8gz8fPn3k1KDU0ty2n0m5REYQXbgjTuxrO9/I5?=
 =?us-ascii?Q?NY+PnqYMd9UptCvm6jsRkiRBuB9qvFxur/sJKSuZ4jWjBIrS6LboGjlhSSzD?=
 =?us-ascii?Q?XAt3SnNkSwGHOM8xGZTBkH1ccFvoyRXhwN1K9Z31UzK1lGeg+6FqyLzz+uP7?=
 =?us-ascii?Q?P5HLvTQTv1hNLRUoM8vCa/rtLvEXylj2F8CYsDDAeetIi20QqI2axoOxDr2L?=
 =?us-ascii?Q?kK6MQqUTFLpVzb/vZROGd/17hxJJy7C7+7AW4poiXLsDkPScXs7VZrjvCEBI?=
 =?us-ascii?Q?JWf8/aTXIslSH7wsdL+gZPwcxGWIoa/2OAA8YGTaQ7sexvPqAonENFmFXW1d?=
 =?us-ascii?Q?1rQ1D7Gul3pEQTLj9rW5ndAuTUgCrgyRT0NMpLPaGCNPSaqWF3TP/Qod31S9?=
 =?us-ascii?Q?C/oNAVGpMyxBi6bySDUAajlDlFS6cdcY4ga4+LCX+KITOi85mwxz6WdXv9a0?=
 =?us-ascii?Q?AAaJJAg2Rk0rR9gFS5Hy5/iUGW4zqTudmsXPKFSeRyorzcA6x/jvaefqjXj2?=
 =?us-ascii?Q?VI5Rhijb18DjglzyFNnZWleAu5buyOKB08/Bv3anmuVquJACENWJXtOJLd0x?=
 =?us-ascii?Q?MUwfPjAanDzufONkbrAmY6W/L7Jkh1KmSDI1FES6BJpCRTmEocETYzhQXBf7?=
 =?us-ascii?Q?gSPug4kYIYQZDgZb8SWrQo24qaGo7fUDf7EpAQXSbeS1Ps07nxym0jOSTB9f?=
 =?us-ascii?Q?Yw6wsJhnJRKezfRNvQNEPF7ZwuN1SuDO0ZsNNIgUpKj9MTd8ObMdVgf/2G4/?=
 =?us-ascii?Q?9S0E3fM2HD5o4gD0c0L8zWNDQmWzaQ3j6mnuSeqbpaP+FmuJMBrm9BPpzsn7?=
 =?us-ascii?Q?1byohM5s/xBXxEYMWGcwIvyVvHDuI1NNgHyssY5hX3udcA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aAkyeDJ1q95ojZtCPwYxvzbMsUmf6yACQI9EZhrUe2cI7eo5tQ3SEuumyvPp?=
 =?us-ascii?Q?Mo5M0vJbBM+m8NJhRRxRKk9W35klrASrxV/WofBzQSRU7oAes4IbivKz+nkb?=
 =?us-ascii?Q?4H30tRx3qoV6JjZgerDj6OuzsK5fR4ePNyT7+ZCTvWxUAvyJ0hV822+ML5lF?=
 =?us-ascii?Q?1tbjWXA5f+8TGpu1TXCU8zu0AqpY/VVrYvCspGEN9xojhiv7wSozRVEog7eu?=
 =?us-ascii?Q?AkIgfCuzkwlxVSqq1T9DK7YBuYvTJN7bcpPkA0hHGEL2bVdgxHOs7YYfxn99?=
 =?us-ascii?Q?ZIh06S9qtLcBDxyMkNkEavqQ6Qq6tfdrPC7bft82pkh7jOWCBF8ALyLSzqzo?=
 =?us-ascii?Q?3CNFmkRH84Qm1Qn/0d/FwVn6kCB61jqID8aWAyUTmiJ1o+4K3upVR4kRQLmO?=
 =?us-ascii?Q?83d+58q4RWbjYTof8gbNcjIGedBMaoxH8500eOccFAHc8549b/SQi1MGS39D?=
 =?us-ascii?Q?hvHkHLBHVQXaC0rpxghit+DbQUyL24PNEV1kwjx7qBMNPeB9tQgwhLV0wRZG?=
 =?us-ascii?Q?aj1XRrgFiGE5H3brHcfeAuVysGNEn3qjgkVwg8dV0St/k92totFT4n+i7Pvm?=
 =?us-ascii?Q?oOl9eu4jDMXWaE7e3dOJGbt40K0mMEdG1MeHj5ySU9zoCLBNtSr5XT3FW/FH?=
 =?us-ascii?Q?p+7bLXCubrymi7AqX8DnnHpJbvbaCFqmQabwxZzKuO8izVb+DuPVNPYOJcsE?=
 =?us-ascii?Q?EjINRWQ/MHiap+vSKQ58CcHpUkKkH0nP8wsBohvpXdytOjaK6xZTwKBfgOrt?=
 =?us-ascii?Q?AGzEnTj9EWT4icUr8/JVMPipOfeWbwXgSvqE5Vxw/PV7vcd2epIuIeVULidd?=
 =?us-ascii?Q?GbJQENmabcDNF2x/iQ3451gdfdBn6DMVnhlcecpwoM1t0zKOjEulpnRTUEoZ?=
 =?us-ascii?Q?aM0fKXWZs516myc/fwjE3P0lxVRU5Bmmxn2NLptLhZW9uPuU+YlkQpS0k6n4?=
 =?us-ascii?Q?BcNeOO8FkDQx3cJocj1gselK7jf7Y+9rU/IHArP5nmM5tlOyLOirwrSMcBC9?=
 =?us-ascii?Q?fKuQ/HkSNMkJGkCE01fvixIJsWy4hcfWylbSTvJSMwcRXC3zbxFP2E8LHLf1?=
 =?us-ascii?Q?13AyTbApWIIb+MKaVBj2RNr2rEsyW8UCAqVtgi0uqCIt5Mx7wwvd67otx5yu?=
 =?us-ascii?Q?gw6z9wkrCNg+ctFiWNGcPOJB+33yfw36nLBfV0ARTKNOdefj1PVLeVuTXSVj?=
 =?us-ascii?Q?P6woQ970qkaDGljtGycQVuUfT4/HQobOBk1tnSrGN1Gl6pUvjy2JdH7RYgFY?=
 =?us-ascii?Q?0wko2xzLe/vWUm3WOXgKe0wZJRp26dNZ7nGwb8J0cGJk4la64IDEm2VyveIj?=
 =?us-ascii?Q?d8MjZSmc/pfQkQB57q5EYirjPSnoOkM6ANoeup3gIRwngg6Oft8rfox1znLh?=
 =?us-ascii?Q?t7WZK1RrvwO9mHdEBtlt2uEZ1jyfZA+aEP7HmPIuYUChk6RuTPeNrvxn1dM4?=
 =?us-ascii?Q?dfK4pM/1DCu5P0ulOfyypUwYOjrQM4EcMfASywfp/NZL4LNrWR1hTBWvJPtO?=
 =?us-ascii?Q?QjfyEVT643AGjSqHKkCFqXI04HZhBBmMMxkyydyWlSu8daO3G3lz66cM7hU0?=
 =?us-ascii?Q?CFcyEMpkM/Wjc3bNQLhFjqsQ+s2f8yfyc1Idxb+H?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5840d696-3668-4b70-7355-08dcbd5eb456
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:16:03.3063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xa1TBqjjbPvN4cw0KnvePBwXqy6s714OQHD2pxSb1UK1j0KXrgphueWkgfXb72RzxabLj/AkR4cAqkMZBHimZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6513
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

On Tue, Aug 13, 2024 at 07:41:22PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_dp_aux_backlight.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c | 70 +++++++++++--------
>  1 file changed, 40 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 8ce60d53dcde..33f72db99b58 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -109,7 +109,7 @@ static bool is_intel_tcon_cap(const u8 tcon_cap[4])
>  static bool
>  intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	struct drm_dp_aux *aux = &intel_dp->aux;
>  	struct intel_panel *panel = &connector->panel;
> @@ -122,7 +122,8 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  	if (ret != sizeof(tcon_cap))
>  		return false;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
>  		    connector->base.base.id, connector->base.name,
>  		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported", tcon_cap[0]);
>  
> @@ -141,10 +142,10 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  	 * HDR static metadata we need to start maintaining table of
>  	 * ranges for such panels.
>  	 */
> -	if (i915->display.params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
> +	if (display->params.enable_dpcd_backlight != INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL &&
>  	    !(connector->base.hdr_sink_metadata.hdmi_type1.metadata_type &
>  	      BIT(HDMI_STATIC_METADATA_TYPE1))) {
> -		drm_info(&i915->drm,
> +		drm_info(display->drm,
>  			 "[CONNECTOR:%d:%s] Panel is missing HDR static metadata. Possible support for Intel HDR backlight interface is not used. If your backlight controls don't work try booting with i915.enable_dpcd_backlight=%d. needs this, please file a _new_ bug report on drm/i915, see " FDO_BUG_URL " for details.\n",
>  			 connector->base.base.id, connector->base.name,
>  			 INTEL_DP_AUX_BACKLIGHT_FORCE_INTEL);
> @@ -170,14 +171,15 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
>  static u32
>  intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	u8 tmp;
>  	u8 buf[2] = {};
>  
>  	if (drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &tmp) != 1) {
> -		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight mode from DPCD\n",
> +		drm_err(display->drm,
> +			"[CONNECTOR:%d:%s] Failed to read current backlight mode from DPCD\n",
>  			connector->base.base.id, connector->base.name);
>  		return 0;
>  	}
> @@ -195,7 +197,8 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
>  
>  	if (drm_dp_dpcd_read(&intel_dp->aux, INTEL_EDP_BRIGHTNESS_NITS_LSB, buf,
>  			     sizeof(buf)) != sizeof(buf)) {
> -		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read brightness from DPCD\n",
> +		drm_err(display->drm,
> +			"[CONNECTOR:%d:%s] Failed to read brightness from DPCD\n",
>  			connector->base.base.id, connector->base.name);
>  		return 0;
>  	}
> @@ -253,8 +256,8 @@ static void
>  intel_dp_aux_write_content_luminance(struct intel_connector *connector,
>  				     struct hdr_output_metadata *hdr_metadata)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	int ret;
>  	u8 buf[4];
>  
> @@ -270,7 +273,7 @@ intel_dp_aux_write_content_luminance(struct intel_connector *connector,
>  				INTEL_EDP_HDR_CONTENT_LUMINANCE,
>  				buf, sizeof(buf));
>  	if (ret < 0)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Content Luminance DPCD reg write failed, err:-%d\n",
>  			    ret);
>  }
> @@ -280,7 +283,7 @@ intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state *conn_state,
>  {
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_panel *panel = &connector->panel;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  
>  	/*
>  	 * According to spec segmented backlight needs to be set whenever panel is in
> @@ -291,7 +294,7 @@ intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state *conn_state,
>  		*ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
>  	}
>  
> -	if (DISPLAY_VER(i915) < 11)
> +	if (DISPLAY_VER(display) < 11)
>  		*ctrl &= ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
>  
>  	if (panel->backlight.edp.intel_cap.supports_2020_gamut &&
> @@ -311,9 +314,9 @@ static void
>  intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state, u32 level)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_panel *panel = &connector->panel;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	struct hdr_output_metadata *hdr_metadata;
>  	int ret;
> @@ -323,7 +326,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  
>  	ret = drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &old_ctrl);
>  	if (ret != 1) {
> -		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight control mode: %d\n",
> +		drm_err(display->drm,
> +			"[CONNECTOR:%d:%s] Failed to read current backlight control mode: %d\n",
>  			connector->base.base.id, connector->base.name, ret);
>  		return;
>  	}
> @@ -346,7 +350,8 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
>  
>  	if (ctrl != old_ctrl &&
>  	    drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) != 1)
> -		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
> +		drm_err(display->drm,
> +			"[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
>  			connector->base.base.id, connector->base.name);
>  
>  	if (intel_dp_in_hdr_mode(conn_state)) {
> @@ -377,7 +382,7 @@ static const char *dpcd_vs_pwm_str(bool aux)
>  static void
>  intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	int ret;
> @@ -392,7 +397,7 @@ intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
>  				INTEL_EDP_HDR_PANEL_LUMINANCE_OVERRIDE,
>  				buf, sizeof(buf));
>  	if (ret < 0)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Panel Luminance DPCD reg write failed, err:-%d\n",
>  			    ret);
>  }
> @@ -400,20 +405,21 @@ intel_dp_aux_write_panel_luminance_override(struct intel_connector *connector)
>  static int
>  intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pipe)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
>  	struct drm_luminance_range_info *luminance_range =
>  		&connector->base.display_info.luminance_range;
>  	int ret;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
>  		    connector->base.base.id, connector->base.name,
>  		    dpcd_vs_pwm_str(panel->backlight.edp.intel_cap.sdr_uses_aux));
>  
>  	if (!panel->backlight.edp.intel_cap.sdr_uses_aux) {
>  		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
>  		if (ret < 0) {
> -			drm_err(&i915->drm,
> +			drm_err(display->drm,
>  				"[CONNECTOR:%d:%s] Failed to setup SDR backlight controls through PWM: %d\n",
>  				connector->base.base.id, connector->base.name, ret);
>  			return ret;
> @@ -430,7 +436,8 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
>  
>  	intel_dp_aux_write_panel_luminance_override(connector);
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.min, panel->backlight.max);
>  
> @@ -501,9 +508,9 @@ static void intel_dp_aux_vesa_disable_backlight(const struct drm_connector_state
>  
>  static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector, enum pipe pipe)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	struct intel_panel *panel = &connector->panel;
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	u16 current_level;
>  	u8 current_mode;
>  	int ret;
> @@ -514,17 +521,19 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  	if (ret < 0)
>  		return ret;
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
>  		    connector->base.base.id, connector->base.name,
>  		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable));
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
>  		    connector->base.base.id, connector->base.name,
>  		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set));
>  
>  	if (!panel->backlight.edp.vesa.info.aux_set || !panel->backlight.edp.vesa.info.aux_enable) {
>  		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
>  		if (ret < 0) {
> -			drm_err(&i915->drm,
> +			drm_err(display->drm,
>  				"[CONNECTOR:%d:%s] Failed to setup PWM backlight controls for eDP backlight: %d\n",
>  				connector->base.base.id, connector->base.name, ret);
>  			return ret;
> @@ -553,7 +562,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  		}
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX VESA interface for backlight control\n",
> +	drm_dbg_kms(display->drm,
> +		    "[CONNECTOR:%d:%s] Using AUX VESA interface for backlight control\n",
>  		    connector->base.base.id, connector->base.name);
>  
>  	return 0;
> @@ -562,11 +572,12 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>  static bool
>  intel_dp_aux_supports_vesa_backlight(struct intel_connector *connector)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	if (drm_edp_backlight_supported(intel_dp->edp_dpcd)) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] AUX Backlight Control Supported!\n",
>  			    connector->base.base.id, connector->base.name);
>  		return true;
>  	}
> @@ -591,16 +602,15 @@ static const struct intel_panel_bl_funcs intel_dp_vesa_bl_funcs = {
>  
>  int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_device *dev = connector->base.dev;
>  	struct intel_panel *panel = &connector->panel;
> -	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	bool try_intel_interface = false, try_vesa_interface = false;
>  
>  	/* Check the VBT and user's module parameters to figure out which
>  	 * interfaces to probe
>  	 */
> -	switch (i915->display.params.enable_dpcd_backlight) {
> +	switch (display->params.enable_dpcd_backlight) {
>  	case INTEL_DP_AUX_BACKLIGHT_OFF:
>  		return -ENODEV;
>  	case INTEL_DP_AUX_BACKLIGHT_AUTO:
> -- 
> 2.39.2
> 
