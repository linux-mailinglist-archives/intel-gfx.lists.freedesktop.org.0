Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B41E7720BA4
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 00:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AAC10E64A;
	Fri,  2 Jun 2023 22:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDA110E64A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 22:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685743298; x=1717279298;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DL9vTt/0M3x74z/LKTR5K9nQGTchFK7o3+DyJvrMUlg=;
 b=dQlJJuYBfT+GVosUUX4vdp6TiY9iBy7ccDoKKfCD5kU6m2N6aalPXBAt
 N2U4sG+n+5w9Pr6g9nZ8CPlZVA3o5+CEtnkiyP7QU9eWhnjw120EEQoZN
 xYtIFvDcpiXCDt0K0WDhT0k54eWERMtooEaEFjLba6Ob8RGLJSPWJsCWV
 9eNIVaSyrql58CXaYse2peMNXQIqlRgCER7m8bC3H0IMoEEP6rQ4rHOA1
 oP2qJGBAoCt2DOGM7HLepJYt0UY+rkUMe7/UjI/EkHSLhG6HcR5p2Akkb
 1HzYZAS24btHQeFaPSYuJlEZazIZ/9H37Qe55fNb3IE2OdXLXF2RZ8qcz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="358415383"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="358415383"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 15:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="820437689"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="820437689"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jun 2023 15:01:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 15:01:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 15:01:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 15:01:29 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 15:01:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L32AWJZE1H2RJHRHfpzk7x8q5Po8F667ft5U4s1iT3t38yaStwoAZWpU6uZCdEQs7v09p7b6tT/rfPuAexw53MCW5K4wXMbS0GzYa9Styqclxr2OquRtYvNHBq3blMRuPmMZkTxDQYZsMoiUdk2i+cEuCqM57ZDbE1EzpV2rR8yxencZEJoakXAeWiUNSj5HFuQe/mx4lj3eYmwDKQMg2Gm4UV7m5ika502CbfdhYKv5P1OuLnbf81kN3PcxTXBPj/OR0sn3aOdWSK1K/PCNj0Ejb4fgKV4KxXb1ua4KuUvy7DnCE4N6f2Km7DTEaM8/kt8yy7HCPExx7HtoJim11Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M46vde4tdnk+vQSM7HlecGXJVpmu35HF1575IkpnTi0=;
 b=jjTmqE/yB0tqU3uybcBsxss6DURoFwLuGkDLACppsfj4pZf3rTqU1EC8V5wFQDdQkqn7uYNny4OgxkX2c5xbOSKv9zFQjfONQhiZTxwJgHBakCXEzmYRgzcANpBWRu+PUKkjXl6+MHJ78eym3sWt/iIWvZZXblruJTGODLiAGeiP6l3I2EUdmBmtobp+CbjjdsfvhyRt1JtZF/1Lg8RLJ0nj8c6cZLpuTxeCRPmNlkq4SOZVcYtM2JqHgtxX8KRSALUGHThGsKxi4MJs7pgk1zup6JGd3O6syNEnACON6itR+V3jHo05I8TM36V30Gykr0tkaG9P+BZ3/IazWM0R6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB7150.namprd11.prod.outlook.com (2603:10b6:303:213::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.26; Fri, 2 Jun 2023 22:01:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.027; Fri, 2 Jun 2023
 22:01:26 +0000
Date: Fri, 2 Jun 2023 15:01:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <20230602220123.GQ6953@mdroper-desk1.amr.corp.intel.com>
References: <20230529060747.3972259-1-chaitanya.kumar.borah@intel.com>
 <SN7PR11MB70412EA6407414E20629DC3EEF489@SN7PR11MB7041.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <SN7PR11MB70412EA6407414E20629DC3EEF489@SN7PR11MB7041.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR07CA0062.namprd07.prod.outlook.com
 (2603:10b6:a03:60::39) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB7150:EE_
X-MS-Office365-Filtering-Correlation-Id: dca441d9-c749-40b0-0da7-08db63b4e921
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4gaGttrgkOFKnW/0QQDGd7ulJ6mNO5Q9ahdHMYY5pmRE8ldH2w0zjMbMHIBitGikHS/zP0xgMV3X7zoJhzKQr888t58G1oO89Nh9djDml1wox73FeMEOqTe0jXVGsOpcK2Jv+FiKvPbsullb6S8OKEiXqaCNqpqTZZ/9rWtHOU+Xy/5scUy2OXB9xXxKdTeXGRf15T+rr5NVVoEHp5VbjDwwk0xrb4DPnDjuGuFNl4nUr1OT0VIxq53SdE5XZRe06snXJY3O+k13vOPkvmoR7CyFW0fae7+6m69ruQqvblf0CfzZ/2JBWDBBmCQzBaJ1xguZYzqW0L2O9lxvYBD+lm9xCtanPtNW43hfqGWj5hoMAoekcZucPhdr6SVUhnF4Zhj9HxyYu6OHMQOvxtgO5lXOy2MpFBD0iCjHCqqb2PE/Dtngu8fLtZosTRJuAvH38BtrWMKPTHjcJS+cIK5Nj4rn2GpjBm1tvkQAF5t9BNvfDGew3gzFREk/l5lr/4bBzfamYYqNFzqsHr2zgr801ze3kLvp9P1jk0ft/i3DRHGQjulodvRUaG/O2pPXN3rP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(366004)(39860400002)(346002)(451199021)(86362001)(5660300002)(8936002)(8676002)(2906002)(38100700002)(6636002)(316002)(4326008)(82960400001)(66946007)(66556008)(66476007)(6862004)(54906003)(41300700001)(33656002)(478600001)(6666004)(1076003)(6506007)(53546011)(6512007)(83380400001)(6486002)(186003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ikw5XhNrnaN+I/VFAhTEGFNnx3166Otu8QfwKk2JXcBO6GU0H6SDb2eFDUba?=
 =?us-ascii?Q?OH0RZ3fFmdBJDR+IdujfIxpcNTTqaem7A1DnLHn8FCPa9uFaNNh9kPj7DMB2?=
 =?us-ascii?Q?Ojcp3d2uSvB/nne1CZ0SEL17OyPar1l/czisIojpgGTdcbw5l8f+neLDI8ZB?=
 =?us-ascii?Q?rggCq232BLfKO846YFjbQS9qauuE3AlOcnoebf5O0ZTjcXYSoxPx0vYZ6PLP?=
 =?us-ascii?Q?k2oMp4MQAQsECc8mXDwusx3sDGcPj8HdIDOU6hW+FdiAhku3BSSESdpsjcLH?=
 =?us-ascii?Q?t0hpfJzMC30+Jbrkbbk7HJf35ZAHAQfMQy1bO+V2Vdd/GfABFcAYWwiis22y?=
 =?us-ascii?Q?7gdqfSlKsxSTedQkalnFTF83/hi3DYZ5GkJSgcLEBBCJAeYTvdc19Jq2Qy/B?=
 =?us-ascii?Q?3xihuRiQV99uZiifxkWmybY/fVvOh8nmVXkarqKYQe32Shuiz8Ett6ExoiJh?=
 =?us-ascii?Q?Xi2Lk+2jcaex5lW8KTuuOy+WQn7L/G7cuCieCkrRSo4hKIWV/dp3flKrNAIc?=
 =?us-ascii?Q?/DSoeeO3L9OhLpTyXNfympMH8Xm2FeX44fJNmwxIvJM4jW3U9KIQsnglkPQr?=
 =?us-ascii?Q?sQQdO5qaPUkmq3kR0Sd8Q46qT0KmG4KumuYTTbiyO07Atp4+QExCrT3okouP?=
 =?us-ascii?Q?Pm1MQOzfLQQP/INbDLuo+KkwxSzRKZedmblTImZ4wiRet9kk1qVCa8w5bkQY?=
 =?us-ascii?Q?Oku8Kp/oRhjZZua33DRDOXLa6OpihJ+3zmOLh8ICboczzYtGZWNE1hAnxVsx?=
 =?us-ascii?Q?H4zmoSAF50SNlH3DYggA92U+rY7wwp8p7BIopN5t04/m838nZp8wuh72dPg6?=
 =?us-ascii?Q?71VGW5wSb8524aBq1BD2cNLIcMw8/bgsooEpE/em78FZ6OZLvdpPtuBG8GnG?=
 =?us-ascii?Q?X3ZJr/Uvltw4NM/5XisGFoFyEZIRPJkk/YnhzlscVY8z2zwrPMaJE+j+G4iG?=
 =?us-ascii?Q?vd9zYvdC4XGNpHIoENLc2ol6BOLLSoo2BBN2WXfy+BFDk9CsBjjebgizdK9S?=
 =?us-ascii?Q?+pF5jv+Gh5YLf3T2UJTRPv6UXYzYRcdNMFo9sWK+/+NhAT1iKQpdKTuMTfQZ?=
 =?us-ascii?Q?Q0ovWywUB96/jfagTmGAM2svyB8txW+ntefad6xLNrw0L59y34OqaH4Z9H5C?=
 =?us-ascii?Q?XwJoh8m71brddshuwKsLhgII2eFZv8NuRE9cQoZ+j0wzOMp6GlFm+/G9SIpj?=
 =?us-ascii?Q?hXserExBA9c+L65J4NRmcT1rk3Ib2gh84hgf3F1J3aHMXK+CjMflxdQBm/r5?=
 =?us-ascii?Q?hF+jQNTWhN8KnZ1Wm7K6+kzjJsHYM+ga9VyDeGeEV7Csyb8OpueFZJZ2rNNo?=
 =?us-ascii?Q?yK1puOzKWxz+1fcay3wONs7azVbTC67jDIYacHLgvjCyJdfm1u+44bFJzikh?=
 =?us-ascii?Q?Wiu1X5DKAzapQy42YSNt2RypJmpWK7Te/EQ1hU/sfl4VwEVjQKeHzp848fU1?=
 =?us-ascii?Q?upJRSKNjXEiUMuFHHbKjF+XsFaBu5ovRrIlDeiraBJcRaqxmrkQz5nJYinWg?=
 =?us-ascii?Q?5+dGppFE9iaNv++gGOTCGJEjikCCYF+hLymsbMIUqYtNuJAfH0hildtoJrgl?=
 =?us-ascii?Q?CdlTMCdE+zs/kQT2Yojrl1MynGJIgfE2xxhR0EIbJLZ/A8YdPcyLUYLexej2?=
 =?us-ascii?Q?Sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dca441d9-c749-40b0-0da7-08db63b4e921
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 22:01:26.2202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iD05lP1ozN6ShtfF6OOOJi5DDRnIm1IxHzRRXL7A4bVUgBxJ+865U55swoo2mVhCYXoJO9nL+bOpB6c2PjRGBciClO94qbch3ae/fJiP9qw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7150
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Set correct voltage
 level for 480MHz CDCLK
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 31, 2023 at 11:08:12AM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chaitanya Kumar Borah
> > Sent: Monday, May 29, 2023 9:08 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> > Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Set correct voltage level for 480MHz CDCLK
> > 
> > According to Bspec, the voltage level for 480MHz is to be set as 1 instead of 2.
> > 
> > BSpec: 49208
> > 
> > Fixes: 06f1b06dc5b7 ("drm/i915/display: Add 480 MHz CDCLK steps for RPL-U")
> > 
> > v2: rebase
> > 
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 30 +++++++++++++++++++---
> >  1 file changed, 26 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 6bed75f1541a..1a5268e3d0a3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1453,6 +1453,18 @@ static u8 tgl_calc_voltage_level(int cdclk)
> >  		return 0;
> >  }
> > 
> > +static u8 rplu_calc_voltage_level(int cdclk) {
> > +	if (cdclk > 556800)
> > +		return 3;
> > +	else if (cdclk > 480000)
> > +		return 2;
> > +	else if (cdclk > 312000)
> > +		return 1;
> > +	else
> > +		return 0;
> > +}
> 
> The spec defines that we should use level 1 in case of SKU supports 480MHz cd clock and max DDI symbol clock is less than or equal to 594MHz. I didn't spot from the spec a scenario where we would have SKU with 480 MHz cd clock frequency and the DDI symbol clock rate would exceed 594MHz.
> 
> Therefore, the change looks ok to me.
> 
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
> > +
> >  static void icl_readout_refclk(struct drm_i915_private *dev_priv,
> >  			       struct intel_cdclk_config *cdclk_config)  { @@ -3397,6 +3409,13 @@ static const struct
> > intel_cdclk_funcs mtl_cdclk_funcs = {
> >  	.calc_voltage_level = tgl_calc_voltage_level,  };
> > 
> > +static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
> > +	.get_cdclk = bxt_get_cdclk,
> > +	.set_cdclk = bxt_set_cdclk,
> > +	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
> > +	.calc_voltage_level = rplu_calc_voltage_level, };
> > +
> >  static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
> >  	.get_cdclk = bxt_get_cdclk,
> >  	.set_cdclk = bxt_set_cdclk,
> > @@ -3539,14 +3558,17 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
> >  		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
> >  		dev_priv->display.cdclk.table = dg2_cdclk_table;
> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> > -		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
> >  		/* Wa_22011320316:adl-p[a0] */
> > -		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> >  			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
> > -		else if (IS_ADLP_RPLU(dev_priv))
> > +			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
> > +		} else if (IS_ADLP_RPLU(dev_priv)) {
> >  			dev_priv->display.cdclk.table = rplu_cdclk_table;
> > -		else
> > +			dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
> > +		} else {
> >  			dev_priv->display.cdclk.table = adlp_cdclk_table;
> > +			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
> > +		}
> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
> >  		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
> >  		dev_priv->display.cdclk.table = rkl_cdclk_table;
> > --
> > 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
