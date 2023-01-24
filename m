Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0071D67A31C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 20:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C146610E140;
	Tue, 24 Jan 2023 19:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED84710E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 19:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674588937; x=1706124937;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=//lpHEK2JGonXAXH6/VwQeMwmzTvJlyISUzK1np25yM=;
 b=amN3BqDkTQo1wXOl+yh5QA6M5rpQvMG9XFJhQOub6FiNiL00sg2ER1LL
 2/hLRGm/dXbKCwXSeoAK+hL77zmsS7xrKXGhpUalqp/slwnILZCdCAcQu
 D1KctmycEV7NNgyfkeVcbJtt9Gb3OdlPWG7fAYoKzl5bV7jR9gS4Uk8Ci
 bAi/8ql5VgMTpAIh+vF0c56r0R1nNVPirTOT3FqLuv7AiHrlaAwOkIRH6
 WQrItWaU7DJctw5bUMHhWtckWlgzv+Df2W/boLyY9WydWPPLnhkI7MfdF
 rv1wAdcQQcXNmuLhk/hka+bcfrA+OgNADxxVoOchWD6kUN1zrFngMlcVl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="353667050"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="353667050"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 11:35:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="664214359"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="664214359"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 24 Jan 2023 11:35:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 11:35:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 11:35:29 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 11:35:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BSjFcY5/DHHoiVyHnUhTxjvoX1cdrEA56OhdNIQNM4S8tsXz8uwp1LUnGe87sKhYbzLTfbs2wSrfPKfGXZjpaREVXCz6EHaHGfUDlg3lr+3RJPFxcT6yZKtRL1nWvtrgdL1ScVsy3Ub+mfTWjDz1ff1yFrGvAJAIJhL0FQVQPXLSPJOQZCjZLdC+8sEO3STy290atkB+owzZ+xBxaUkgPvz7csLxcPg7Iqzwc/Xe/lekZv2JV+4R9/msLeSXHRV31AnFIbuWWLwpKR7+rGC6yIM4VHJGqyhl7tjKQyXc00Ery9CSboFPzJD5B811eR9sARg470yAEfAhwoaDVVK6QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eB6UCT4NCgvB235F2Ios1B4mJnjmADPjw+abxLZdo3g=;
 b=QyWd27AJ+a5nfLAouMXbtNYO4wQ06Ozm377pARREe92L4x9ekzrFwaXgOSxCxdioaNxKPx9zHrgS920ax+WsLgGWpuSQHP14KBIAv9LSrdGz8h5ysxb9PNCYHAbmLoCgv1IxeKZT1dKFye2ICLV5C3dgIug+mbH6D7No0lRgI1I7E2hm5Z2Az0UZDqpvBIySJ6xQJp1Rh5G7X1x09dUbRssOFQBJ3JTaXBi0e7PEsQA7KEXpX72aX5698743nZSUl2U/T4NXNPPaWfbO0rVnvlyXgeRrXB+STj3Z/QOQSOSzqzpTCzElIFQkjMdhw10yEUUGUM+e6GoUNr4NRnNk5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6503.namprd11.prod.outlook.com (2603:10b6:8:8c::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.28; Tue, 24 Jan 2023 19:35:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 19:35:23 +0000
Date: Tue, 24 Jan 2023 14:35:18 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Y9Ay9v276gC5Bi+B@intel.com>
References: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
 <Y87lhZqx33Lva//7@intel.com> <Y8+L4Kp7QKR7j5wG@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8+L4Kp7QKR7j5wG@intel.com>
X-ClientProxiedBy: SJ0PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6503:EE_
X-MS-Office365-Filtering-Correlation-Id: be242c56-8242-4d10-9941-08dafe422261
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 95TUIA4/VIVzi5oWeRNYtBfi6sh9tbAkkar3Y2C3LP2H3xup6jYGC9pUyplyzudxNH7a2CiR5JHDc/9f0/mivcRDyOmqtvjcKKIGuJt1HAd4kKLkUb760VORVDlRughrR26nHYqRY2qsbyy+hN+Wl3zZojvrHiyFNAsMfkW8eJ1EMFdKALa4i5/jvVt40KHL5uVe6K5/JcsPNA/luQus809AJQzWK8bBWTvAYpVlHzjSZOyJWvwygM1lQ24srlGnQ2qbFO1EYVlNCIIodADGmawcBNshmU3bysJIHA+E8ZvpDAA6hxJW7wiXRgFPrs4YzBXFcof8xiAy04zppfilrcEk9b73xcOiLPy3wffhnD9cqrPKyCmezwj8kPwMApdm8bYW5dusz8Wbzi3iBlq4j/57ZdQE5waTMaqypxGKJBdfA+cCM8l2vrfgXz5uE0HcbN6SMZ8azagcKP3Yq3PHmZ7Bgwf4n/g7Us5N3zWB+C65TrRv/iLK5EuhKEcwh0zj3xQGPktAsZPFF2xEjAfrcfQkKmOX3r1LjaQPxDPhkR3iCQccIvdLM3GIaXmlBPrLdUMWjWrkPR1tpsD+MJBWwyH1X5nr/h7n8ckSFDgNFOcAi/iq8pdsTs4z1iIY7oJgqwuB9XXlqtFzXE7uVJ91qRJUutn/TnWcocTlxTVRWt0X78mEm0VHJ44wHyh09d8R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199018)(44832011)(36756003)(66476007)(6862004)(4326008)(66946007)(66556008)(8936002)(8676002)(2906002)(5660300002)(38100700002)(37006003)(316002)(6666004)(478600001)(6636002)(6486002)(41300700001)(186003)(86362001)(83380400001)(6512007)(2616005)(26005)(82960400001)(6506007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nLQVlIViaLpIVF4PN5CnjH9DYMNSZ1ZfJadCs+akqptuJ+7aW2FZ67GZp6Qb?=
 =?us-ascii?Q?C9wdXeM8FxmPYz4BJMiMoWisOhuS4NakTbG+bHV+cdIJDi6rbgDYu1A1LIZ6?=
 =?us-ascii?Q?LuE0DiAXGGHyAnIxaVtcbkHJMI4S+3JOLlTcugtoDLcNYsIJ1oYFFydaUD+9?=
 =?us-ascii?Q?yqi/CnwR2kZF+vWsiJmvnsvOeTFWAMC1UVcfxVfLN1rDlxPuSliM4Z3/Hyp4?=
 =?us-ascii?Q?6D0MdRs9N5TIa8qBHKiwYDTmV2l8Jh++hkQbuMPQcUCVgyQR0LXBEgJKceMc?=
 =?us-ascii?Q?lGFYsjJeacj5q9TvvlK2BWqYwUhliMNPEeVF+twLqCqBM6MYTzNrjrL07rkA?=
 =?us-ascii?Q?VzmvNNqlApqEZQhvBmn7AEHuVjmxZBquCfc0k2v1tS/MWWdFgWIC4QGiuqWN?=
 =?us-ascii?Q?hb+zGGZhYQ3ub6qIEGhV015+pC1pHYm1F46NGbguc9fUH2RIuO38rDiQnqR9?=
 =?us-ascii?Q?eji3ubXxBoGyNVa/S50BWE/ZL9Vh49SikMtbT4dN9lj4vg409GlRKLUfA3Yf?=
 =?us-ascii?Q?MajSqfvflOcJPMW0Rh8kujN27nUnxCAv3pT695qfPlLhqvjA3U9ztyCI+aNJ?=
 =?us-ascii?Q?7fYu1/IvnZxcXeUBCGP9skkarDvYyYAbz+0eRiiqCknYQRyI+i9+GoIbP1CZ?=
 =?us-ascii?Q?DvCuS9Q1lWt5pZ+rKgGEDaiXM2hSXgnUsx8OwJap3lmt3VH6MJDWX1ZtdnlD?=
 =?us-ascii?Q?uDAhsVSbjTs2dDFH4rldqnXPKlgRstARXPoh8XuD/itUD5xluCC45GfHo/tI?=
 =?us-ascii?Q?aCM+myL0780tziJLMpPNR2jbf9DsqHlDaOXbMLuVDzudWlZFjFyxube+C8nW?=
 =?us-ascii?Q?Y7JkW/oOzJjG61aBox1H3GxzEEBx1Wh9mjSQrR3328xMSpDFjob9vwCY2EMj?=
 =?us-ascii?Q?ucXmLbe3KGbnyDp5kBJsTnaA7lzkfj5XDmqoDWvCQKRU5M74ESGju0DiwIIO?=
 =?us-ascii?Q?qUI8D5iienOMG+y4GSkMDrmCBlrQFwwXCeBHPZAYBKmpalRFEuPeiPLjdNS6?=
 =?us-ascii?Q?fcvfY8D99IawiwxHnnV/8N5woV0hKi/rwCFvIMlFvP5V+QE5xww7tYlwAP5u?=
 =?us-ascii?Q?TiaCg/mn1jsTPLN+Oq3ZnQNW42BLaM7wU2zP5S4ILW35oOnpJ7vUhqCf4pDh?=
 =?us-ascii?Q?rJCkEYUuk52PFJjheccuOkngGc2+nD+Al2FOW/ZYcSrDczcdFwndO67ibiko?=
 =?us-ascii?Q?cwtK5SdfV3Iq9VIV4ng2EFHxuKBufxm2PVR8Pa3uC9b4w5vNP2VLt0dyHme9?=
 =?us-ascii?Q?VIMIXcXWvRumNAnbAqAk2/jYC+IJ+5wjD5OEVgCv245eAfEqPhqt7lS5k/mh?=
 =?us-ascii?Q?Q/LjYo5txQLHezLI+INYc/eX6f+CZKSyuTcxsYFJbk1rq4DxjxDszI6KXlCK?=
 =?us-ascii?Q?IVRvJ+NV94lhn0QF6TdRqANFoZhHXFyn1GmfXiMcazPZ8gYwz3apT9Tsb3Yo?=
 =?us-ascii?Q?ytTiuPCGS9G8yT7NqdXotdICGESRYWYu6X6oXciHmBZDvDyO9hCoA4Bd6VtS?=
 =?us-ascii?Q?JdnVdRj4Z4JsK604TSGvZjQni3/HMxiD0rtezN+ZH2Lm3vtKWMtCtpXQ/d6p?=
 =?us-ascii?Q?RQr1jDwDbQKZBHSl/PpQ1Es4+LTGZInoK4TRhEOiiOqn6TZnSFSUG8GN+uVw?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be242c56-8242-4d10-9941-08dafe422261
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 19:35:22.7901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ssuumHVT71o339u4fljqcUnI9j+lkmdFPx5eKcnsRSTattiWV4/JBFavWzLgrCcAPTV+3EMpjlVJShTulHYqEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
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

On Tue, Jan 24, 2023 at 09:42:24AM +0200, Lisovskiy, Stanislav wrote:
> On Mon, Jan 23, 2023 at 02:52:37PM -0500, Rodrigo Vivi wrote:
> > On Mon, Jan 23, 2023 at 03:16:11PM +0200, Stanislav Lisovskiy wrote:
> > > It was reported that we might get a hung and loss of register access in
> > > some cases when CDCLK PLL is disabled and then enabled, while squashing
> > > is enabled.
> > > As a workaround it was proposed by HW team that SW should disable squashing
> > > when CDCLK PLL is being reenabled.
> > 
> > What's the WA lineage for this WA?
> 
> Not sure, what you mean but HSD is: 14017300873

For this HSD, the wa lineage one is actually:

Lineage: 15010685871

so you need to add the wa line for reference, something like:

/* wa_15010685871: dg2, mtl */

but looking to the related ones there I don't believe it is
yet confirmed to mtl...
although it looks that there's a possibility of this staying for
display_ver >= 13....

But more than that I'd like to get someone else from display team
to run a deep review on this. Because I see that you are disabling
it after the cdclk is locked up.

> 
> Stan
> 
> > 
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
> > >  1 file changed, 12 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > index 0c107a38f9d0..e338f288c9ac 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > @@ -1801,6 +1801,13 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
> > >  	return true;
> > >  }
> > >  
> > > +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
> > > +{
> > > +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> > > +		&& dev_priv->display.cdclk.hw.vco > 0
> > > +		&& HAS_CDCLK_SQUASH(dev_priv));
> > > +}
> > > +
> > >  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > >  			   const struct intel_cdclk_config *cdclk_config,
> > >  			   enum pipe pipe)
> > > @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > >  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> > >  		if (dev_priv->display.cdclk.hw.vco != vco)
> > >  			adlp_cdclk_pll_crawl(dev_priv, vco);
> > > -	} else if (DISPLAY_VER(dev_priv) >= 11)
> > > +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> > > +		if (pll_enable_wa_needed(dev_priv))
> > > +			dg2_cdclk_squash_program(dev_priv, 0);
> > > +
> > >  		icl_cdclk_pll_update(dev_priv, vco);
> > > -	else
> > > +	} else
> > >  		bxt_cdclk_pll_update(dev_priv, vco);
> > >  
> > >  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> > > -- 
> > > 2.37.3
> > > 
