Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8CD8A56C6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 17:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE1B410EA52;
	Mon, 15 Apr 2024 15:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wr384DQp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B444A10E802;
 Mon, 15 Apr 2024 15:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713196195; x=1744732195;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WCgQ1gc5fcVBgDCTGwlw4+P7O/siPOM7o7/rpIXyTVU=;
 b=Wr384DQp9V+SM7gnnhr5RahYZs/gnvNA4+7bOFjMHG2gps/7Vgacmxym
 DEJc6WXEAjB36rlvGCqlqZmlYhstfhGrO+f0PIQwAne5W/cYp9DEK0Ulp
 nFqGEY5AgsPC4zIJMSk1Zqh9v7yPHZibg9ctJbDviZ2w4EXzhUd0Pp6wx
 hQI0b34YV2ljAo2G34xQzAURbpZakDN2NAL2EQ6n/dsa8gwf3L81UzL1M
 7DwLyqB4ieKClfh0I41gN6pG1JQhIOL6iq1N1jokA6GPdd9MSPz8tn67v
 cwJj13MwWpUOhZwSogIlUhkjQVQuWPrJOExlwkpLSxp2kM2xNIpj7XPUW g==;
X-CSE-ConnectionGUID: jrzM6SLkQE6gy4xYia3ZEQ==
X-CSE-MsgGUID: dEtkTkE5Q7imP0/Zxlc8Uw==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8456477"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8456477"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 08:49:54 -0700
X-CSE-ConnectionGUID: MhwgIwYyTvGKKe+SiENzQA==
X-CSE-MsgGUID: AqSJCeJGQTejpWmn/Ej0UA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22046127"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 08:49:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 08:49:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 08:49:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 08:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cIkSExVoRSy2RIhBYMFHwrWAHDscD3WljDxK2gB+MlIGfd19jTHE8Gbybi6NNI2MayoGmCfQKbDgrnA5o3F32xIprThtCy0DW/HtcgoSZxm/zsllc5v8GHwiILKwGfO/PNH+oNNS/d/l6OkAUNv7Mc3y04Fa+O9Gq5Sl2ymTxsSvfkeJETBKfwVSyevOvgpAFhU6RjfI5cpG+wXLTp3j+kgn9up/ILXQm5/h5HzVrM6uNlKfQSSzGinvz+bAj8bwk3/LTpgvKdS150CllBBnIZng1NW4PGQLZ10DBV1pNvg1P5Zj0DNpg6NNqkdpJ45xlIMMNY1dSYjx9tHhSKv4OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F6Y670ht5JdTOW6TvP1NVkzHotXQK4JwCoz6RXomwhw=;
 b=e1SDm6WD40Vi+e34tH2t9HIMu7LxgRIYm+AitNQrXNLELhodDOnfOH+3tdEplbMAv8CXMCxClI0US5KpGURlWJKVWbZZwksEINMXOo1HeTFQ5WyEG2fIOK+wbtwB2KiXJOXxdeSM+KDhjAuN4Mfp5snoT48ObyESrAdo8HfWFuX7sQ1Yqb0LfejbSIcWs4y5qItyGa3lMVv+RT+yscab1iN8yO15+ZbZXHNkHVsgtg3eLV5N0jrWJSLi3+bbsv9gGtjiR+lJ76r9D8wAueG+77jZeGTtYjUFkwI1obvdI+xsVYj1HmRn5EiuIAoPrpgBIKbTIDyGr1SKqRT27vN/rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7348.namprd11.prod.outlook.com (2603:10b6:610:14d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Mon, 15 Apr
 2024 15:49:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 15:49:51 +0000
Date: Mon, 15 Apr 2024 08:49:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 02/21] drm/i915/display: Enable RM timeout detection
Message-ID: <20240415154948.GB2659681@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-3-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240415081423.495834-3-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: aa915dba-0e02-477a-fd03-08dc5d63afc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nOh0JtF6gyEcqa655aqhm5rYErqm2A+9U27A+mDJOSZuTFRJwEUW9PBRPoZ6oVxKpBUsfAAaehnatoEXY1gZKdquZmL50g6HwdwPHPxGXQ8R8j9Wp26hBMs1V3V6eSCCEMLxZbyeERkfath/FQzKLHST3CagzL1Ibk/H00F4UkseVQ2973zXHQ+WhQe7v3qVKKQ14RoWCbXI4ENpfDja1tC6mhmdIe7bK6jEF3EGQ+JRLlJtAyVzbK9jcOwhM12dhQkFV6KFTSBC5DyBzuuvvU50JQrCyCjKYn9n5GiCEeWOIBw0E4niiAsoAUdo8BWQjXg1SlBaxmNdB5NgdNJubWrnRezAUrdmGP9oosNat1XVwpu0G4ueBb/dMsWEeW5rvchYoH21fPyIjN9KWKltkhnc5qUhEhryGViG2Pq5wT0T6B8gEwiZCNGWsRK95q+gIlqbFdRFQqysDFxMxD057Bhum+W5ZexdyPY2BcGVTaxJlXVSoh/zmgXq7QjUnAFQ6CIpSQS1FeTO2G9Ifym5fT5XH1hi/Eihc+/CiqtS0ONPqkjnuP0GFwK5NHTvxpvLT7lb12tPAtFqm3eLAp/XY0alboQ0byl+lkX8lKv2eB4h1fzHMQre6ETne2jRv8ghxCmbE5Gw7jJN9doNFxjnlE3W86TKfyiiKnEnrLzVgbo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5RyrAEg5T1+x9g0yU49YLH6T9GXQx7ojapfMzMgnz3Gp5hQFtDmLtc9mbBxD?=
 =?us-ascii?Q?3OCGfXI6CnCAiadmwEVS5VtICA08kdismRyvM4PtxIMUmfwYXogDGLVXbYut?=
 =?us-ascii?Q?XZQ+bQ0ccF4Nz/wxxx4vFyBXkXpzHinW90PvcnrAWMZCj2gxNXFqWop1+GP0?=
 =?us-ascii?Q?JVBfOdj1MlF55f272oSnxJh3esBUlNgDlcWt2xLRnV4kNk9fYc6RQXIVXTSP?=
 =?us-ascii?Q?rKDUMklblq77bEJB5Y4yRCJ9owt2bnxY7LidpR1pmIM7nK9oNrrnpk653OZE?=
 =?us-ascii?Q?emCgV9CtObvB7rtTum+zqm4C6+p/jIitszSlSYRaGVyc0ss//PEdKby3awkp?=
 =?us-ascii?Q?PmRsS7JkfeODQcHI9+joY851QZLE9kQQyvuB2CP5prZvd1CpRyHH5YBREwuQ?=
 =?us-ascii?Q?iRBGP3ROSVL917Ty0MUB3JsCXJXwyzBVhGG5w/TFr9PCALalrDqT9up0HrPi?=
 =?us-ascii?Q?FTueQsBy5GJAtpuhPzGXor+q0f1iH3tMmUuwvbhWB3euXzZpFlSD/MQ0I9Vz?=
 =?us-ascii?Q?GZXWYJ4QDZ83rQ6XF1gThxwNkqxKZRT+TsuXEPrCNAGpJB8Ioa8+MTL8hAxE?=
 =?us-ascii?Q?5Ovu3aI8BiNIMwA9uiNGn0PFJruSak4SpDXUS2WVHbSW93CbhTKoDAM4glwQ?=
 =?us-ascii?Q?O+AxYHlrB2f07FzACZVj7ugd8H9/ua4O0Rmu91Gi9Hz2G10CTbd3jXOgqCw8?=
 =?us-ascii?Q?nvE9j+QWluBHjzpCgwti5JNQsemJ7Vtf1jbK2sg3iVOHykYUC6xbvfA69GXg?=
 =?us-ascii?Q?FyeVnKgcYNggHw/jS3ItssHeNDFroxZjX33nQu9iq8VsmgM7BQ9m6tGVQO0i?=
 =?us-ascii?Q?VSO/4Ud8S4ZIO3bNVryeUqNG3YhttmohKlqV7TuoQuvJU5rHAcs494mEa5od?=
 =?us-ascii?Q?X3LYTJ/KDNlxx1o371jQ5fGDotHldUwId+QWXL9wNrERUjmgbWeOQJwscUtF?=
 =?us-ascii?Q?7sWrYiWDidINPRqsAUuk8vYir8Uby5Fyx5NNeJL31N+qNDdL0bhbiyE9Z9Qh?=
 =?us-ascii?Q?cQmWKEKqf6jqqeseQNcNMvMuI+iyxDImhV63gItfK/CNte8QoRpMhL98FTUU?=
 =?us-ascii?Q?XzksY5qel1BgL9d6YKCyAyfKZS80Acfz9SkvTos1wZg7TXEwX9NB3S24CEBs?=
 =?us-ascii?Q?+HY5FOR5CZ+2rWGG92B8QCoQG4WQi9SwZhGk5uo9GNQaSUROHBqUp7xI8t9g?=
 =?us-ascii?Q?MR776rYwm1AmidUWqYQKSqFER8i7KPB8EPnMnEaPo5i6xNgUbsnltzW8zIM2?=
 =?us-ascii?Q?wBlz3TgwsFCiIVd8R/fL+DE/sY35RH01e3ZvAd3bTeaqhI3rDJcSMM7+XIgh?=
 =?us-ascii?Q?xArYiSqcTLWICoiPIENLC1OoSvoEYE1ghHnEtI/h9LndXOYgsA+5TW4AaLiv?=
 =?us-ascii?Q?sLuhtFhiwxpxtae4u8mOPwn9jO2TqI5lXV1b3GuIdkjVb3gi/NV5he7TGmLq?=
 =?us-ascii?Q?ItT7GKG4OAhY7Ccg25a5io7M5d+hQTcVgQj4BeVUWhL5I9Ux3JJb4hUGeMxX?=
 =?us-ascii?Q?TluDhr6k6AYz58kN7dFv6TQSEsxZTxVUStJpzNfE5WKCDC8i/yWXWiWyPkip?=
 =?us-ascii?Q?7K3aRA3rSZLNxQ4UdnJ1Ej3gFPotqE9HjsVWPelMjlxOnf8C+X2ombOrp7gY?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa915dba-0e02-477a-fd03-08dc5d63afc3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 15:49:51.3152 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JXh//GD0Q7V+elsv+ObxUE7p9l+8UmAA4lgiG8pR1royY4Zp37VZozpRBtsQlSdJBBr8S5swUGpro9aOwp+eDA9LsAKAZqlg+1iLp+2ZGeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7348
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

On Mon, Apr 15, 2024 at 01:44:04PM +0530, Balasubramani Vivekanandan wrote:
> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> 
> Enable RM timeout interrupt to detect any hang during display engine
> register access.
> Current default timeout is 2ms.
> 
> v2:
> * Modified the IP version check to apply on all versions starting from
>   14
> * Improved the print log
> 
> Bspec: 50110
> CC: Suraj Kandpal <suraj.kandpal@intel.com>
> CC: Matt Roper <matthew.d.roper@intel.com>
> CC: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index c337e0597541..9c65e9e32fca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -852,6 +852,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
>  	bool found = false;
>  
> +	if (iir & GEN8_DE_RM_TIMEOUT) {
> +		u32 val = intel_uncore_read(&dev_priv->uncore,
> +				RMTIMEOUTREG_CAPTURE);
> +		drm_warn(&dev_priv->drm, "Register access timeout for offset = 0x%x\n", val);

Have we ever actually encountered an error that caused a register read
to timeout?  If so, was it a one-off error or did it cause a stream of
errors?  This seems like the kind of thing that might trigger repeatedly
once hardware goes off the rails, so we might want to use either the
rate-limited or once form of dmesg logging.


> +		found = true;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
> @@ -1667,6 +1674,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			de_port_masked |= DSI0_TE | DSI1_TE;
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		de_misc_masked |= GEN8_DE_RM_TIMEOUT;
> +
>  	de_pipe_enables = de_pipe_masked |
>  		GEN8_PIPE_VBLANK |
>  		gen8_de_pipe_underrun_mask(dev_priv) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3f34efcd7d6c..a8cdabd07b04 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4225,6 +4225,8 @@
>  #define RM_TIMEOUT		_MMIO(0x42060)
>  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
>  
> +#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420e0)
> +
>  /* interrupts */
>  #define DE_MASTER_IRQ_CONTROL   (1 << 31)
>  #define DE_SPRITEB_FLIP_DONE    (1 << 29)
> @@ -4411,6 +4413,7 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> +#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)

The "GEN8" prefix here isn't appropriate.  This bit didn't show up in
hardware until Xe_LPD+.


Actually this whole patch should probably be titled "drm/i915/xelpdp:"
to make it clear that this change applies to Xe_LPD+.  This patch
probably should have been sent a long time ago and not mixed into the
BMG work...


Matt

>  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
