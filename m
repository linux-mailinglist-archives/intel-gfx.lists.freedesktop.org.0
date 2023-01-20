Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65252675F22
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 21:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C946B10E1B6;
	Fri, 20 Jan 2023 20:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF1C10E1B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 20:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674248042; x=1705784042;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DM058eP6cHGytQHsoaIblX6BInb7cTlyVVXRxca2lc4=;
 b=YXrGe4yy8pvK1sdexyDCy+i2WDVSNWOP176avWpIaIji02iW+pfJcVyo
 GwvIpAEu77w4K4m42VtrplyNgrg+QVHAlvG+8K+aBbvf6i+gvvUDZ84Y0
 /fO+LdHUJTDWPWlL7vDsejo7iSlE3o1g2kZ6kn1mHDKMkd6dnJrO44wBj
 I94w6EKFId/DW3tcgkW7ldbg4BAEKgtcheDB/Amh7nqbmzOmuEICUa9CL
 aXxtypmJNt82Eb9tEW4jyIAqUlQcxRyAymu3Ir0Jna1HmJqKSTPH+Sz8S
 GTGMZm20ACgNQzA1BGcrubztedSKEq9Ef3lizd4S9SPI0orDYQeCowuHX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="305360567"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="305360567"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 12:54:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="660718007"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="660718007"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2023 12:54:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 12:54:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 12:54:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 12:54:00 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 12:54:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QzRE2g/TDMv/aOr1RUpwCetZva0GT2UYhJzA+Lb+sJNxSxXQhn3VpK/B8sCcIv6T5LCqa//r1BeD2/Svf+uXcvKQ+yqGokZ5UijDLdmTt6w83hc53bAECmqqhohWwLa2BOrJdYVxZdFnX6k7YT4lMxF0ub4wQxsOkUFxErzDpjtRffqoiOqH354fgwgC6YsvZwWAgQcbpHB7BDPf/VDx7RpMlm+Ai6/nK1oFatYR2pNq0Wr2u3mG+u2R6MxtawO8MQY3f1We0a7hK1PX5qm3HRjZYItCJTLpywZ2GFy/kJQCOIzHtzrRV7HxjtCu1CGMEuP2VJZFmvALBWOsm6Hx5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PkdvTi8kBrpmGY/hz+dCTQZ4eDRzdOQr3QBFujXYnP0=;
 b=ejz/abn1xV+GUN+NbRuT4GncpG708pxydiVV7nQZ15lunSpP3+KUonpgMdXIeTd54lltbeV7rwk9IGUthJP9jr2I7CA+1oIOxB4KHBZiG8ehVICNckx5QRdA4+NAXkagn6PnGNsqT7HA3Bo5Ju5RxRA6QJUzN0S8oOkkOX/0oPvh31VwpPOQmglNZT8QgOPoC7WEh/c49x2fEtXnBFzmXgz0EHRGjgLx2CpUXbXrbufJ+zDRdWSeVwKfiKCcI8K4vciu0oPdO1vHWfAr7ff3KExlCUfumlVYdCmDVyoBssvrYbPnTWLuoOGc7MmqrxoaB8vTwCerPDErfilsizu/qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 20:53:58 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.013; Fri, 20 Jan 2023
 20:53:58 +0000
Date: Fri, 20 Jan 2023 17:53:50 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>
Message-ID: <20230120205350.2prnvfnkxnhfnnep@gjsousa-mobl2>
References: <20230102183324.862279-1-imre.deak@intel.com>
 <Y7RRcyjbRvS0VhIK@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y7RRcyjbRvS0VhIK@intel.com>
X-ClientProxiedBy: BYAPR02CA0055.namprd02.prod.outlook.com
 (2603:10b6:a03:54::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ2PR11MB7646:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f4398d8-c794-425f-e4e2-08dafb28736d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TH9i6FBok5jc3QPVezyKVxgeESF7L7qImE7EduUkS1ZxS8CYTePoQu6kOlZRsYXThF0Ll6lF+epDu23d08pshUltArdX27nfVAEKb0qEkRNncJRTh8XkbBI5JJQpLTKA54jadeWk6TjZFFFkGSpweLd2m4WEBdS5wdhKV/psyFory15WA1aw6LOlha+3iHLA6ePgwCkbu8NWxFB2LbCAIB3XBMOm8xIgktJd+Yj0AYDMhRk93qy4Z7Jh9LyGucb+4LxK+sgeJkvffjB6sajpEauCctx8xLrezFceXo6DYhXivD996gVDvcj3iAnmviegFbDvM+MTRKJtfBpD/ruW8imm7d0pod1ce36+shtPXRgz2v+Nil3GM2S6gjsY76CRF6O59zGkCYuAtDeF9HaRETFJv4qGfDotzcwOA2PDTtoEymqDlVLPsCFBepx3hKz971L582u4DdfQRAoUAPhNtfO8TkSWbXKVEsa3zcPFRNkszTRutXCJaiP/gwsncUvwfNcn1y8HUEaC4V9MMgbLAvuYgJgBtP6+WTztl+t16/lOiKdNjHiQ0OKRFxOJT4GVfl16YiL6413dw1BhTNW9IApUgYbG8u8NntCec2j1prsD2ScyMj9i86yKlwi2oM9ah/ghAVJi+16Ulg+5wXHRxA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(346002)(39860400002)(376002)(396003)(366004)(451199015)(6506007)(478600001)(6636002)(6486002)(6666004)(110136005)(66556008)(66476007)(5660300002)(66946007)(186003)(316002)(26005)(9686003)(6512007)(4326008)(8936002)(41300700001)(1076003)(83380400001)(2906002)(86362001)(38100700002)(8676002)(82960400001)(44832011)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h5vEmmZ60j2RTRYslJsE4cxIAdAsDD7OC9IROieQRGmSjt0fs2bsPBWoFsMS?=
 =?us-ascii?Q?4ICMD47Y8uuDYeY/Zg1A4EjgbzajYaJkxX7h4ZbDCVve96XQubUsq+dbtF7b?=
 =?us-ascii?Q?u+mCDplCBr2djnd2YsHVwO38U2DbU5uzGKUXOSowGlfRcF7IFdE/1awUOOsl?=
 =?us-ascii?Q?GAzQsy3r7/fwdtUGVPQs07LZTwWiDc5ylr7vzSU1LjVjnpiNyWCbHMgUGpJ7?=
 =?us-ascii?Q?lZcxtUFtmFSJIt48lcjhumniFpiCMhpQDfqSLuRsilI2q8Y+jI0znewqxgRk?=
 =?us-ascii?Q?kA1gyR9Wgsw679oPU8loIg3rNeKbNvkp041p917dFmgfpOv39K5VMrSp03H5?=
 =?us-ascii?Q?ZUHGddKbnjcWklu5bSjfk5F5oQH8t6I+06gdR6NZiHnxHF7hbA+Xy77fcUYS?=
 =?us-ascii?Q?Fr30VyNMF0eY4jrg38uM4WjiSq8fh7GZwh5KtdY2BywjNKrvqYR1w5vFWzv6?=
 =?us-ascii?Q?RgQ1p4sKUt+dyVd42jMJIMnTXyEZA0OqdXHW2ylG89A/M53D95a4ncI3j37v?=
 =?us-ascii?Q?JDb2qlbU/G6YPapYNcDCc3aNIBXIdEpemX3ACuAngTGaGD+2ECSS+BRvkfdS?=
 =?us-ascii?Q?X9pkHArINnYYNv8ZwdfWEVfHex1VwTBzCqgo5+YcCMcQVyNTzZcHSjzdC5D+?=
 =?us-ascii?Q?/M5CkWnt8emc4Xy5hOdTe9a0bZGBSwBGZ3eIEazOnqRfjCHvoMiGDueCPnRf?=
 =?us-ascii?Q?uk32OL+wT6U0iRDOdEhujw1KegVfK//squsVD31BPy0xV8vRaGYCAvkUzXPx?=
 =?us-ascii?Q?wgAWte0cmZUF9zR9IkPJzuWyIJk7guCqzHntuWtWNtvRRoNlQ12mF1WOGuu4?=
 =?us-ascii?Q?qRB4LoAv/RbzlIXDedRDy60FhFnOjyzk/SrozGBIMQtFw56CZ9MyJlqO/y3W?=
 =?us-ascii?Q?u6dPsfLhXkP/Rxd8MWkc8n/zYzRD6wir4alRyj8T4jNKczhfZY7T0B8BwWg7?=
 =?us-ascii?Q?E4It77b2+PL4wMmw+tvec+4M/ifD9p8zasjW9Ax90oI4cVkt1y6e0ADpTrDa?=
 =?us-ascii?Q?H3XSyZkgvZ/axNm+kxvO3sImmlD1jm7szjS8fc1z4yWKMEAivYT+neS6rf0G?=
 =?us-ascii?Q?bz/Wyg6owXIpK7JwkZ/9DxDzI4enoN+4z2Q2HBV9bCcjdFepjgnMA3g+/lJH?=
 =?us-ascii?Q?rldfagT1gDjIUc99YmT+8isA5PjJJ5rVEeELDZj0Wne1i9p1A8OEhrGZr1EP?=
 =?us-ascii?Q?P1h60+jTjv9DV/RryWwc2c5J2Av1j5wD0uIduJgcdz7SHhGCK+iLRfkTBIO3?=
 =?us-ascii?Q?+H00blfnanwtYUDyDrQa/PDn9930ZV3LCECuvZGJ2SYmUAVJDTMD0KEf3L4A?=
 =?us-ascii?Q?3+KkpyoYrZCP4m3fDvkPtSQoudGWSLpsZFVXAAHU2Q3sYan3UH0R+eb4UYLd?=
 =?us-ascii?Q?UTV1J0tzDItDBvZXr3nE1eQBAysKoqIrurYb6lJVtI9IWNiSUZZL/E8WWN6V?=
 =?us-ascii?Q?dhxxaxsxsLxz8QC++YVKkiSZ4CVjm8iioMyhQufCzZuc4b3jtF5mqBCj+bjh?=
 =?us-ascii?Q?i3CTS1kgCPeYTH2d7f/+Sxyow+WMPvDSAuiAVjZ8wZkqrL48+v6B7pFN9kd3?=
 =?us-ascii?Q?LSKWYqzBRfwdd6++Y4HmF9YEN0SwB80oEje+QNk+Qtb5bJyOD/SXFE42/kwP?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f4398d8-c794-425f-e4e2-08dafb28736d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 20:53:58.2379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NwUbfZGugvEem7zklDAMA2znk5dTrBIhCRArq/aUpvcKooo0PcDpt5K0XNOSpe0QYl+Fyr9wPZMfZ+1Vj4SkWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable a PIPEDMC whenever its
 corresponding pipe is enabled
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

On Tue, Jan 03, 2023 at 11:01:55AM -0500, Rodrigo Vivi wrote:
> On Mon, Jan 02, 2023 at 08:33:24PM +0200, Imre Deak wrote:
> > Make sure that PIPEDMCs are enabled whenever the corresponding pipe is
> > enabled.
> > 
> > This is required at least by the latest ADLP v2.18 firmware, which adds
> > a new handler enabled by default and running whenever the pipe is
> > enabled at the vertical referesh rate.
> > 
> > Bspec: 50344, 67620
> 
> mlt hw looks a good register clean-up! why multiple registers for single bits! :)
> 
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

I ran some tests with the fast-feedback IGT testlist and can confirm
that this patch fixes tests that, without it, would fail or timeout when
using ADLP DMC v2.18.

If the above justifies a Tested-by tag, then:

Tested-by: Gustavo Sousa <gustavo.sousa@intel.com>

We need this merged before using the new ADLP DMC realease (v2.18).

--
Gustavo Sousa

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_dmc.c      | 24 +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dmc.h      |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 11 +++++++++
> >  .../drm/i915/display/intel_modeset_setup.c    |  4 +++-
> >  5 files changed, 47 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index e75b9b2a0e015..ddbf22d5667a6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1918,6 +1918,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
> >  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
> >  		return;
> >  
> > +	intel_dmc_enable_pipe(dev_priv, crtc->pipe);
> > +
> >  	if (!new_crtc_state->bigjoiner_pipes) {
> >  		intel_encoders_pre_pll_enable(state, crtc);
> >  
> > @@ -2053,6 +2055,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> >  {
> >  	const struct intel_crtc_state *old_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  
> >  	/*
> >  	 * FIXME collapse everything to one hook.
> > @@ -2062,6 +2065,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> >  		intel_encoders_disable(state, crtc);
> >  		intel_encoders_post_disable(state, crtc);
> >  	}
> > +
> > +	intel_dmc_disable_pipe(i915, crtc->pipe);
> >  }
> >  
> >  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 905b5dcdca14f..fe8a8941dbf3a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -108,6 +108,8 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
> >  #define DMC_V3_MAX_MMIO_COUNT		20
> >  #define DMC_V1_MMIO_START_RANGE		0x80000
> >  
> > +#define PIPE_TO_DMC_ID(pipe)		 (DMC_FW_PIPEA + ((pipe) - PIPE_A))
> > +
> >  struct intel_css_header {
> >  	/* 0x09 for DMC */
> >  	u32 module_type;
> > @@ -407,6 +409,28 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> >  				     PIPEDMC_GATING_DIS, 0);
> >  }
> >  
> > +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> > +{
> > +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> > +		return;
> > +
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
> > +	else
> > +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), 0, PIPEDMC_ENABLE);
> > +}
> > +
> > +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
> > +{
> > +	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
> > +		return;
> > +
> > +	if (DISPLAY_VER(i915) >= 14)
> > +		intel_de_rmw(i915, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
> > +	else
> > +		intel_de_rmw(i915, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
> > +}
> > +
> >  /**
> >   * intel_dmc_load_program() - write the firmware from memory to register.
> >   * @dev_priv: i915 drm device.
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> > index 67e03315ef999..c65a5769879fc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> > @@ -13,6 +13,8 @@
> >  struct drm_i915_error_state_buf;
> >  struct drm_i915_private;
> >  
> > +enum pipe;
> > +
> >  enum {
> >  	DMC_FW_MAIN = 0,
> >  	DMC_FW_PIPEA,
> > @@ -48,6 +50,8 @@ struct intel_dmc {
> >  void intel_dmc_ucode_init(struct drm_i915_private *i915);
> >  void intel_dmc_load_program(struct drm_i915_private *i915);
> >  void intel_dmc_disable_program(struct drm_i915_private *i915);
> > +void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> > +void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe);
> >  void intel_dmc_ucode_fini(struct drm_i915_private *i915);
> >  void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
> >  void intel_dmc_ucode_resume(struct drm_i915_private *i915);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index 5e5e41644ddfd..aac4f5465c6a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -11,6 +11,17 @@
> >  #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
> >  #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> >  
> > +#define _PIPEDMC_CONTROL_A		0x45250
> > +#define _PIPEDMC_CONTROL_B		0x45254
> > +#define PIPEDMC_CONTROL(pipe)		_MMIO_PIPE(pipe, \
> > +						   _PIPEDMC_CONTROL_A, \
> > +						   _PIPEDMC_CONTROL_B)
> > +#define  PIPEDMC_ENABLE			REG_BIT(0)
> > +
> > +#define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
> > +#define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> > +
> > +
> >  #define _ADLP_PIPEDMC_REG_MMIO_BASE_A	0x5f000
> >  #define _TGL_PIPEDMC_REG_MMIO_BASE_A	0x92000
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index 96395bfbd41df..52cdbd4fc2fa0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -698,8 +698,10 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
> >  
> >  		drm_crtc_vblank_reset(&crtc->base);
> >  
> > -		if (crtc_state->hw.active)
> > +		if (crtc_state->hw.active) {
> > +			intel_dmc_enable_pipe(i915, crtc->pipe);
> >  			intel_crtc_vblank_on(crtc_state);
> > +		}
> >  	}
> >  
> >  	intel_fbc_sanitize(i915);
> > -- 
> > 2.37.1
> > 
