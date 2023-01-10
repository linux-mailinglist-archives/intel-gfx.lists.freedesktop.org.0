Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B28B8664502
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 16:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2C410E5EE;
	Tue, 10 Jan 2023 15:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B956810E5EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 15:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673365022; x=1704901022;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HbvhGwl7WGjEnWtKfnqTUElVVvK6teEAgEPNM7rLWis=;
 b=cXzgpHLM4fZASoW+uS3V5Xx/zpjuU5RPJ/C5P9KvYPl1konCiIUxfeBn
 e9QLMja4Tr2FDPmdOMInLkhps1ed5oRjP548oAhVa6WpaU0q/k86V3DrC
 tpZx0qwBsFxmRHRVsSFaiVsN8a9LmAaXRuoBHo/lCnVWJyjwZpj8/CZFm
 oQepLGtUCgDcNFOZ7wn+xiI+Ack4HyzzxPCbGQ/soWH13hDDqF4ItT5VK
 i/9K2p6EwnfigG+99wuTkodnE3bUM56FEfm+Y9eYlD3+tBZbVF3LsTyso
 u6cKPaUs/9C/OM1kXWeXIdCrocZLDYVeTKODwQtgJmXmj4OiNOWxqA2KV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321873733"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="321873733"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 07:37:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="606997837"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="606997837"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 10 Jan 2023 07:37:01 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 07:37:01 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 10 Jan 2023 07:37:01 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 10 Jan 2023 07:37:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 10 Jan 2023 07:37:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IfnDmYHbQn2MFwvIM9DFUa2F1wXkSja6X4FCJpPGZtW9VDgUuIIrF25zt8s788qez6ehy8Ra6cOWdwURKdJ+z4avIrDj/460CXV7VH8IZiVdQVVt3AT25GD6fe4oMeQdl3hCMR6YkUwtYMJT2Iev8zODkvcod8osIOurerl9mn8t4sjIpgCcWRSaC70RbOmwZsVAIeBVcVDdzqtOfHQQApZRmDQQ+mR8Yghx4LtsOama5LwIv8Gm7S9g9wBQlWItpkfNnmeD0eBSS5ZAqhzXaqTeZWztGubfF/aMxUGheb65RjybEjfcwuA9IFuy99wWveaPbGqBXl8e3KkO1HfVqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1U9XTejAAVFYHGbeeEMqhT/fbWPbcMOKDEeXHz9080=;
 b=muqh1a0RkHmz7dURCpjKlDRW63tsFaQRGhCtG/2vsgHt/tEmpxv4548z058oPgYT7WPNMxZVu2TBrqNE5IILFX/shhe+UIZyFZnx0dlEt/A1AcZjP0Od8MjYKyUjoXdwo03Za8o2hxPvi+il9XW7acMt3m351kUJRj8ktNaXPBhCU0pmlwMy9FZJU2FrpGmtw09EjV7QtnJoXlm41L42yIMYQVXQ+kKaybm5fI0cwicwzUIxJvttxgZyL5UMwfLcluG8nG5G7zX+ZcjH5spVFU/jcSGffP4am7YEX1eZ07D1x8StOhXVHqI4z9PG8kKNRnw9LnChfY8KIPF0GneqDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB6910.namprd11.prod.outlook.com (2603:10b6:303:225::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 15:36:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 15:36:59 +0000
Date: Tue, 10 Jan 2023 07:36:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y72GF2CgEVDElPwD@mdroper-desk1.amr.corp.intel.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-3-chaitanya.kumar.borah@intel.com>
 <875yde21yx.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <875yde21yx.fsf@intel.com>
X-ClientProxiedBy: BY5PR17CA0070.namprd17.prod.outlook.com
 (2603:10b6:a03:167::47) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB6910:EE_
X-MS-Office365-Filtering-Correlation-Id: b7597ed7-1c62-4cdc-f879-08daf3208302
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S+DyfK1pog7MGxbDw39Toqj48TTuZEeUD+TETU1t5taFk26OUZ5y2wO7eNy8SNj8qgXMVEMC2CwJl5gX5+N6t1qTFx2jxFrqdQ3Ga1NrUk74Oki0/XvYzxxJVNP71nIhZCYW3eigFWx2ZPBlE9qBZLyZsMS1Ee2trtpbMUTIg5l0AUS3ht5zXettTvs5+GgnTnuSj7TG3bRQZ1L7rR4XnyH9r5To6rSBUPoz0p4mkkyjM0u5OhV5eyod/eyepvQ54dZSj6YF/xnMXMmorv7QzN/LohiZTrnj0AmvODcxAn7dnYB1oN9w/6s7vNkqeFnaUT9b9aFIiLtWsEJ1ZzH15uVk5+pvydjva8Idf8qAN/ujQyz8P5Nep4zrfwnUCHiH6flqtehxfsZgow09hk1rbE++vYtkWfbh4+Tgeej208i+V3Lem65l9xhYmsV6yGCtug5bazyKw5phkHnERf/j209fD96NvSHF6fwAYN4wSwOt9oY6+VoSIqNSWO389XslrqhsmNnXkFmhMbrx/hcLkw7kEho22UE4YgdkeLNovLRIymzQUmrkjGZBpEtnVCjEfwHWA433ZM+uwZRYGwnG0LDSzxQssjGBeAG15Jh6Oa0ygKbQkQNYrZ5BPQ7x+P4PnpwduGhaihU8cChc7cvaGg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(39860400002)(396003)(136003)(366004)(451199015)(186003)(6512007)(6666004)(26005)(6506007)(478600001)(86362001)(6916009)(316002)(2906002)(41300700001)(38100700002)(66476007)(66946007)(8676002)(4326008)(66556008)(82960400001)(8936002)(6486002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BpcM8aZ5BMnWqJ7kasRkd5zhkcXPsTbvci0bFgB3eVn66VWBkhkb7Vw7zVoG?=
 =?us-ascii?Q?/xTbWQSj6ML9TSWAC1BjbYVNmF4MF11QfXif7XsmlEG0AB1QJzR7wJlBXyhr?=
 =?us-ascii?Q?RcksDJkOCLssHxs1pi3QKLp3c5RvLSvNZgRkqlpS5I7ed1ZlLvsQamarLR2v?=
 =?us-ascii?Q?gKsqwMX0b7r6DccmSLhs+V7IGdMWHUniPlc12ZXfXr6GEaum2+qCYQBA/mtV?=
 =?us-ascii?Q?+kFMSRcMa2rjodtT0X69Cn03mOhf7VwpuS1yJ19fi45n8igXb6nc/quFfwRA?=
 =?us-ascii?Q?/EExVbQtX3bH26Gbdk4LAVEVkB/oC6/t4MfroDbXeLuuSALL4qq7uMbAOnab?=
 =?us-ascii?Q?kDsZg0nUW7UA6/Ctqzvi2xnbvZo46eqpcRFPtO2I5KShwDMvO8yoXuJKaKbV?=
 =?us-ascii?Q?A0zfZG/hUw90NuOmNHY7wVwq7XilE7frTbij65knSK+YUfRJief4CzAGb2/3?=
 =?us-ascii?Q?JxUUAn4ITaNhtk+8iXJ+CglCWwhgxC29bV+7MD10z+u/uTNgqrT8av9j2VB5?=
 =?us-ascii?Q?vG5niSBw8Ufx0YGffv/7KSSvmP2AiwzkWPmSR14Ll5eCrJMFmE4hgCSR2mXt?=
 =?us-ascii?Q?EWpPAqflOEC2MgdLPPTIkT5/mKPu4AFG+glsgJ3sqv1AIuleG2paS0jPKs1F?=
 =?us-ascii?Q?xCmjfp5JLJHGmc4fPMxQ+RxdUQY2PQC4p4l0J5VQrFZ8VhmiKstLNGFN7nsk?=
 =?us-ascii?Q?hfx0jakuXCTBmjalp+aITZR+/Gw75hyS3QBYojs8d/kEr311hgTOWnch4rZP?=
 =?us-ascii?Q?sVLa49XL138pZ0ySmGb/HyC77OxMwFVxAah9B3+y5OQCzVTYXZm0RISVHb7q?=
 =?us-ascii?Q?lKihyK7+7wf5Yo9xk9/krN0fru+pcWnlqDswrzxNMKtH7Ey8/qDEHk748Y6w?=
 =?us-ascii?Q?RQQ25P74ZEWgUaggq5ZGi+mbjxiztNcwY5CDrY/qMbICL3QLejs4CEILu20Z?=
 =?us-ascii?Q?w8h9pLnvhoMzQkBKrdTeprp8vrV1C5MkE0KFDoMKOiP6Xsb1HKSleng3cZXI?=
 =?us-ascii?Q?n0DPMvD5jbwUBkoeJaEoD6m8MSY5q8QNtYJZqOxtuNNwOTL9KY8aDSm7jqbO?=
 =?us-ascii?Q?0oFREMckMNkQ3N9iC8l4mKNKG3GDQT061QFCgx6H6I8cIcCe263QFkViG9jq?=
 =?us-ascii?Q?qhM1Kk/NlmT7FNJApsX+KubjHTIhmc0h1CueCNdUNeRfiilwas/OB3ox9RA+?=
 =?us-ascii?Q?C/tTCvbeDzQc2UyDnIIwTFH1oas9OYIllbBFXWvIsaTlY3WdvIe9PpgUxYiF?=
 =?us-ascii?Q?8PygXKtTGBa7DqVK7wn/Dh3s6HZS4sJU+i4NR9ctGWeMqM8OdZ2O9UANJbdt?=
 =?us-ascii?Q?LNS3z2wUVO/U64Vb6EFpIxwikcob5zepHs2coIekuk53Nr5JbvSjkdKOol62?=
 =?us-ascii?Q?3LMcNai3n0fOeWa9nJphzkw+TAZ4Y9w4AiO5dDaw1bOOdGz+9hHiV5np4h82?=
 =?us-ascii?Q?/FKUlnJuTxq10TgvCVG8doA3ARs/5PPoL7j+wOtGF1QMvYUSAYUjWDISksRL?=
 =?us-ascii?Q?D97XQjmHTtxJ6MDkUbimwKSc/+7ThV+yX/huEWAgXPDJd6DGEc5VTGhP9U8N?=
 =?us-ascii?Q?8IllkWHXxnbuBipwL0StscihqMrR/1YEncA/kN4/qGngpONlsGTEciRNQZVT?=
 =?us-ascii?Q?aQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7597ed7-1c62-4cdc-f879-08daf3208302
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 15:36:59.0109 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a0agCHU5/G0uV2cPeO6a5DrTBP1eIiCHsnknn5jT+xCSde49VxF/jD72UuUCgJGBU6aybSBg0MbaV4WAzZLoYdkVunV14sz5i1W/i/sfggo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6910
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/display: Add 480 MHz CDCLK steps
 for RPL-U
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 10, 2023 at 11:06:14AM +0200, Jani Nikula wrote:
> On Sat, 07 Jan 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> > A new step of 480MHz has been added on SKUs that have a RPL-U
> > device id to support 120Hz displays more efficiently. Use a
> > new quirk to identify the machine for which this change needs
> > to be applied.
> >
> > BSpec: 55409
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
> >  1 file changed, 23 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..a437ac446871 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1329,6 +1329,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> >  	{}
> >  };
> >  
> > +static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> > +	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> > +	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> > +	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> > +	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> > +	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> > +
> > +	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> > +	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> > +	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> > +	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> > +	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> > +
> > +	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> > +	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> > +	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> > +	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> > +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> > +	{}
> > +};
> > +
> >  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> >  	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> >  	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> > @@ -3353,6 +3374,8 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
> >  		/* Wa_22011320316:adl-p[a0] */
> >  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
> 
> Are RPL-U A0-B0 going to enter this branch? Is this the right thing to
> do?

There's no such thing as a RPL A0/B0.  RPL continues the stepping
progression from ADL, and all RPL parts have E0 or newer display
steppings (bspec 55376).


Matt

> 
> BR,
> Jani.
> 
> 
> > +		else if (IS_ADLP_RPLU(dev_priv))
> > +			dev_priv->display.cdclk.table = rplu_cdclk_table;
> >  		else
> >  			dev_priv->display.cdclk.table = adlp_cdclk_table;
> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
