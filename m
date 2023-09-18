Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F527A55D9
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 00:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32D510E117;
	Mon, 18 Sep 2023 22:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B79810E117;
 Mon, 18 Sep 2023 22:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695077044; x=1726613044;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mLEM4lb9H7yrxmAgsdIUpdvU4Xf9xVpd/aTuiizTHFg=;
 b=gd7qdcOboimVu8BdA39eybigIwBZ8HHHON9ZbCxZLux5ClzZqtf/Ydr3
 lsI6+H7m7F0hnuBe7z9pbWgSZgTx7lAEB1MEJmnMAVoEmuOhhLqnLvpFy
 xF/Huo7fLgj2u6RjctYGs9U/kNjWPynuh2DEkqtEOZO3qUxg/XoX5iT3E
 2WWf5wrFq2ZXSVBI8qQH+KjguqtVtPlZi7jA1Q3TX+AsXom3SecPLN7Bj
 ZlHWLvymSAv/KIMpM+CbmdWG14UFbZXClBA5DvCabDrY7hV46WdVs6m5j
 +cthz9AGAz4Q0T3nVvmZxmySmedMLCYDy1iiwbpeIczH14OnfFeIc82oY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="364846913"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="364846913"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 15:44:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="745990386"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="745990386"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2023 15:44:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 15:44:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 18 Sep 2023 15:44:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 18 Sep 2023 15:44:02 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 18 Sep 2023 15:44:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIAO8OVKTeBH0/PVO4bgLiMUa7csHLCIeQun8njgJgZG6Xa9pIwRlc9NOXCj4t+UtEyE2pifSYQvIjfgoBB4JgxoRPjSQmvBiksAkivnN/RtRTeWZX8kRtDwpUgM2PRgyhB1y4bWM9A/m6/iy1h4uP2hWMPaJXDDsoVghB6wSckOQ66qh4UJvGo1e6tKo07fYeXB7Vgt6ADWwNPuzqPzf8xFsvIO/z49RnzMxEiOkPOtBFFvByQN+PhX+m4bAOF6l3Jb/BVNXxQREBTJ0NkqI1O1H3ds5VP+/CHiKKAEoRmBkzyJWt7ArXoV5PYjAKCJ/+gsCdhYNQdgd4KHCZEH/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EC9mRTinvk2eKExKBDMPRVIHk5zVmLtB69g5ed0QYj0=;
 b=mTgy8RGUnzzDHhP8iTqX8aDiY+CcmSD71IXX5Xpuf4fu7xwu5aRa3pTZhOUIp5+TKwJwH4btvqm1Ueh11ldgBaaRLwX17NGVnVd587uSTmGo1G3CWpyNi+tl3IMxLztHs2O/vXAE+AHC24i4wLyE2i/QLaYA6IYLPLQEUvw0rGgGJj9Cnsjvjn8tVJlzr/UbxI9sdMfNt/5t+rc2w0FQ9CdGCTHnz5BU/MehytFQI41kxFxTkUQXyCcsaVG1r5th5ouxmG6BNhGaWqos5Cls0EET/mqDLyYJDpIYDIDsas30Ih4ixSKi4JHg/k8Zi/uRtJRx/kAmhoqWLpwGXlyFZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB6690.namprd11.prod.outlook.com (2603:10b6:303:1e8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Mon, 18 Sep
 2023 22:43:48 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Mon, 18 Sep 2023
 22:43:48 +0000
Date: Mon, 18 Sep 2023 15:43:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230918224344.GF233750@mdroper-desk1.amr.corp.intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
 <20230915174651.1928176-11-lucas.demarchi@intel.com>
 <20230915195041.GG2706891@mdroper-desk1.amr.corp.intel.com>
 <wr33dalqsh4xbhht37se22q5gfss3txbgm5qymlqyi2dy5hl7k@4qy6gx4md3ub>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <wr33dalqsh4xbhht37se22q5gfss3txbgm5qymlqyi2dy5hl7k@4qy6gx4md3ub>
X-ClientProxiedBy: BYAPR08CA0054.namprd08.prod.outlook.com
 (2603:10b6:a03:117::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB6690:EE_
X-MS-Office365-Filtering-Correlation-Id: ceeaf587-ebcf-4b29-99d9-08dbb898b8c2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z8xaPml/zVQhDx8QbifX0U0X+i6IsdHOYx9Hm5JKkp0TIqFtf3GO7//88pQwKLmhrOruEo97pJEzgmBC92oM/D+eyxeLqBWxo14/LCRPdVn/GBWv1+wxIyGEotmIUJVNdMKqZV+EII15Pl3DykZ4EAdL1yUdEaZ/JWthFElUwuXMyXNDYa8/evpFcyHFV3CtKKceYZJACBk05RVsyrn+lxuvW8H1SCJdk13fY+TPZkG42KXkrht6lED64m2F59ekeK8knHUjo6zgDvZd7m9LnNsrEQaFJq1UBOflUId+LlNR1LZLl0WMrnEeT1X6JieYD1F0XR/aLpqqSuJmrNladARn87kiZL5DTploQJkdxzqudgEzqQoyIYPoeGzf5jge4MUpmObP/UW/9QibLMVOcj4TrzUflJUOn4pB7UCBMBgB7fjrbFE9KErDT/Gf5QClQvqW/bHvSpyNt6GTwQRY76vDeIn/t0kQ1HdkUdqqk1J8b7DQJ5OQfJFYhSO70clU6+m+v2UC1RXntmWFDzMHPcaTqfzfWSmERo1BOUO8r9g1xqDIihwehkON1q29aHPc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(1800799009)(451199024)(186009)(4326008)(6862004)(5660300002)(450100002)(6506007)(6486002)(8676002)(8936002)(316002)(41300700001)(6636002)(54906003)(66476007)(66556008)(66946007)(478600001)(6666004)(30864003)(2906002)(6512007)(1076003)(26005)(83380400001)(38100700002)(82960400001)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NLXmPPdCnejy7TbWBvMPy/5PYJ/I6D/+mbSX0xuPiq+VvmBY7mcO7no0LOs7?=
 =?us-ascii?Q?7g5nl/oHOkWjxkDJFi9QZ1ia0vuD/6nEmrNR2VCOTTsz4K0JugCaXggE3JWw?=
 =?us-ascii?Q?6XQKwrJligXFL1tSZFvg0SMK5+quKsfSmLY/V7kpeW3J0XaVjuKh+HKUrEqv?=
 =?us-ascii?Q?Q8slynTt3lZ2CVvXbHEoj5TE19BzwmGjUWh0EBGSYw6zG78FeC0k6CszBZby?=
 =?us-ascii?Q?Kqxsba9EhA0qdPVTjtBy8NW0adDLaR+oejYUK8n3EpaO8JH1NTnu/+4Kn+65?=
 =?us-ascii?Q?i9CsSUWlcnd1ki1PkQLwqPruqJMf9IC0fuQ74M/s7OIXPxkPs43d3fIGQX1m?=
 =?us-ascii?Q?IM0VplQKgzcDSsFfb2i4kAIafgUCUAYeK5HLO4L5TJ+rSikrdvFJa9xPgr6d?=
 =?us-ascii?Q?hEdMCti5Eslb+xQVd8gj4X1qgeEI4j0GeGA0ej0Et3x7VJ45zxr4gMCrfnYA?=
 =?us-ascii?Q?hUihi46hIB3WIYit8JMsJurGi33AltvskTKKx/82Ezu1cdfF67JV5kDr/mAi?=
 =?us-ascii?Q?nFHl8AUgPgsYp7m3kiBu+IUcg/ZdRGsqa1YGkqiakTSzRq68TAeXZ6WeeGHP?=
 =?us-ascii?Q?Z4uoIN7EeiZGfFOLhIsg4XHdQl/DrG4imW9rgNW+QFTqeZ6oy+4yL85LwuT6?=
 =?us-ascii?Q?XZqqISyO75YRIRD7AIkSeqpryvXfSSood/yzwqBDpYwst613kAaM1u7eKldh?=
 =?us-ascii?Q?odStCSgcyA9XPXZOnfROB6H3VxsLiJztaqZbpb0l3hP+E99q33N0CWAITlBf?=
 =?us-ascii?Q?+7IvU+UwauVvzhHQLsC0rgFDBcoY4nHUKoQkepKdee+eHHKva6WDeoKN09yz?=
 =?us-ascii?Q?UiuPl7Boe+al+rZ1prd6aDGPu2ulwA/4CdUU3lVHpgAweB612+A9B7V5UwZP?=
 =?us-ascii?Q?9ZazV6sZCMvXd84sb4aYe8oh+QYVPNaeE37Gy5epAJb969Nbm4TTkxv/Hdpe?=
 =?us-ascii?Q?M1Jh4gAC7OK2ZtguyOHuBBMV2TPLIyZMuBTZ9QFHcOLpJnUTA0DXQuTb6siq?=
 =?us-ascii?Q?G/bUUElhPMYy0Btrq/KJt1eBfuaAYvmMWPNEtZoSOgk6K+9isiz8Tc2YMZwz?=
 =?us-ascii?Q?zD1fXTJH3HiNIg6LBmxw1pGovVWNa/YdI+BhUb3jz+FhHl7WeL/ATCRmhqDC?=
 =?us-ascii?Q?bFLue80mXdtKVtHKf8/nOBceh/Sl8HZKJLZFFrFz/EaQnVDmsL8piMI02AIJ?=
 =?us-ascii?Q?As8dEbuwlTeQs7NSL+W66FfrRZxqt25+75MtrXvKslPkZc+ufA4Ttiiv34Q2?=
 =?us-ascii?Q?CsWfO9+psb39/xKV/cQ4dPpi7CsFOPTPq5n8Ecupr8FQ0nQ7VDSvcR/4Nlbf?=
 =?us-ascii?Q?QfAOhDCLfNn11d5T1Mc2eMTOgzCjfBHwPcbfD+tkMqyeaTf9p9b5Qrrg946m?=
 =?us-ascii?Q?q3x6/HIp8XarO1fhtECRRH9ycouJkRfVWZgYU5EKNY/02QoM51EqGo3GPf6+?=
 =?us-ascii?Q?H/gxlU8P0GQWk3LaVBiTTaWc7+2+2RbtJBSiSzi9wFy8W2bOe+OU2O6B6rsi?=
 =?us-ascii?Q?wdrYEcytO3z/UyCRmCA3ypuFRGm1zPUrmgLtowV5a+ESlXTh7E0OOt3RQ3XZ?=
 =?us-ascii?Q?8er8yE0DnOtLVpIW5xrDmXCvowlps9QFG2WIri3WPpGedgsa1e33VEzxrMId?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ceeaf587-ebcf-4b29-99d9-08dbb898b8c2
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2023 22:43:47.9528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bAfMvX+iio39nEWGJISHdhdrxD+eg++T+NQQBXH/yR7Oa53MYoQho+aS0o5IHyBRtIYQ/bZCay9LIR0XjxEJRjeI7BjsN3Sx/h6hLvcMv3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6690
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 10/30] drm/i915/display:
 Consolidate saved port bits in intel_digital_port
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

On Mon, Sep 18, 2023 at 04:06:58PM -0500, Lucas De Marchi wrote:
> On Fri, Sep 15, 2023 at 12:50:41PM -0700, Matt Roper wrote:
> > On Fri, Sep 15, 2023 at 10:46:31AM -0700, Lucas De Marchi wrote:
> > > From: Clint Taylor <clinton.a.taylor@intel.com>
> > > 
> > > We use multiple variables for HDMI and DisplayPort to store the value of
> > > DDI_BUF_CTL register (now called DDI_CTL_DE in the spec). Consolidate it
> > > to just one in struct intel_digital_port. This is a preparation step for
> > > future changes in D2D enable/disable sequence for xe2lpd that need to
> > > save some additional bits.
> > > 
> > > Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> > > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > > Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 36 +++++++++++-------------
> > >  drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
> > >  2 files changed, 18 insertions(+), 20 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 4668de45d6fe..29c9386659ff 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -325,26 +325,25 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> > >  				      const struct intel_crtc_state *crtc_state)
> > >  {
> > >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > >  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > >  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > 
> > >  	/* DDI_BUF_CTL_ENABLE will be set by intel_ddi_prepare_link_retrain() later */
> > > -	intel_dp->DP = dig_port->saved_port_bits |
> > > +	dig_port->saved_port_bits |=
> > 
> > Before this patch, saved_port_bits was a copy of DDI_BUF_PORT_REVERSAL
> > and DDI_A_4_LANES, either based on a value we readout from hardware at
> > startup, or based on VBT settings.  So it was a value of some
> > fundamental settings that we "saved" once at startup time and could then
> > just re-use thereafter.
> > 
> > If we're going to start saving per-modeset information (such as lane
> > count and link rate), then that's a pretty fundamental change to the
> > purpose of this field, and "saved_port_bits" doesn't really feel like an
> > appropriate name anymore.  We should probably rename it and add some
> > documentation on the field explaining exactly what its purpose is and
> > how/when it gets updated.
> 
> I will let Clint chime in as the original author here, but from what
> I can see this is basically a saved value of DDI_BUF_CTL(port), to be
> written when appropriate. We have more than just
> DDI_BUF_PORT_REVERSAL and DDI_A_4_LANES.

I think you grepped the wrong tree.  The output you pasted is where
saved_port_bits is being used after this LNL series gets applied.  The
usage of this field on today's drm-tip is just:

  drivers/gpu/drm/i915/display/intel_cx0_phy.c:2706:      bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
  drivers/gpu/drm/i915/display/intel_display_types.h:1827:        u32 saved_port_bits;
  drivers/gpu/drm/i915/display/intel_tc.c:362:    bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
  drivers/gpu/drm/i915/display/intel_ddi.c:333:   intel_dp->DP = dig_port->saved_port_bits |
  drivers/gpu/drm/i915/display/intel_ddi.c:2259:                  dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
  drivers/gpu/drm/i915/display/intel_ddi.c:2389:  if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
  drivers/gpu/drm/i915/display/intel_ddi.c:3214:  buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
  drivers/gpu/drm/i915/display/intel_ddi.c:3221:          if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
  drivers/gpu/drm/i915/display/intel_ddi.c:4505:  if (dig_port->saved_port_bits & DDI_A_4_LANES)
  drivers/gpu/drm/i915/display/intel_ddi.c:4543:          dig_port->saved_port_bits |= DDI_A_4_LANES;
  .--
  drivers/gpu/drm/i915/display/intel_ddi.c:4965:          dig_port->saved_port_bits =
  drivers/gpu/drm/i915/display/intel_ddi.c-4966-                  intel_de_read(dev_priv, DDI_BUF_CTL(port))
  drivers/gpu/drm/i915/display/intel_ddi.c-4967-                  & DDI_BUF_PORT_REVERSAL;
  .--
  drivers/gpu/drm/i915/display/intel_ddi.c:4969:          dig_port->saved_port_bits =
  drivers/gpu/drm/i915/display/intel_ddi.c-4970-                  intel_de_read(dev_priv, DDI_BUF_CTL(port))
  drivers/gpu/drm/i915/display/intel_ddi.c-4971-                  & (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
  .--
  drivers/gpu/drm/i915/display/intel_ddi.c:4974:          dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;

I.e., using it as a cached copy of DDI_BUF_CTL is a large change from
the existing code; previously it was an unchanging stash of just those
two specific bits from startup-time.

I'm not saying that it's wrong to make that change, just that we're
using it for a completely different purpose from today's drm-tip so I
think we need to document that carefully and make it clear what the
intended new usage is.


Matt

> 
> drivers/gpu/drm/i915/display/intel_cx0_phy.c:   bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |=
> drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
> drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
> drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= signal_levels;
> drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> drivers/gpu/drm/i915/display/intel_ddi.c:                       dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> drivers/gpu/drm/i915/display/intel_ddi.c:       if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> drivers/gpu/drm/i915/display/intel_ddi.c:               if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> drivers/gpu/drm/i915/display/intel_ddi.c:       dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> drivers/gpu/drm/i915/display/intel_ddi.c:       intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> drivers/gpu/drm/i915/display/intel_ddi.c:       if (dig_port->saved_port_bits & DDI_A_4_LANES)
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_A_4_LANES;
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits =
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits =
> drivers/gpu/drm/i915/display/intel_ddi.c:               dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
> drivers/gpu/drm/i915/display/intel_display_types.h:     u32 saved_port_bits;
> drivers/gpu/drm/i915/display/intel_dp.c:        dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);
> drivers/gpu/drm/i915/display/intel_tc.c:        bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> 
> Lucas De Marchi
> 
> > 
> > >  		DDI_PORT_WIDTH(crtc_state->lane_count) |
> > >  		DDI_BUF_TRANS_SELECT(0);
> > > 
> > >  	if (DISPLAY_VER(i915) >= 14) {
> > >  		if (intel_dp_is_uhbr(crtc_state))
> > > -			intel_dp->DP |= DDI_BUF_PORT_DATA_40BIT;
> > > +			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_40BIT;
> > >  		else
> > > -			intel_dp->DP |= DDI_BUF_PORT_DATA_10BIT;
> > > +			dig_port->saved_port_bits |= DDI_BUF_PORT_DATA_10BIT;
> > >  	}
> > > 
> > >  	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> > > -		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> > > +		dig_port->saved_port_bits |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> > >  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> > > -			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> > > +			dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> > >  	}
> > >  }
> > > 
> > > @@ -1450,7 +1449,7 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
> > >  		      const struct intel_crtc_state *crtc_state)
> > >  {
> > >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > >  	int level = intel_ddi_level(encoder, crtc_state, 0);
> > >  	enum port port = encoder->port;
> > >  	u32 signal_levels;
> > > @@ -1467,10 +1466,10 @@ hsw_set_signal_levels(struct intel_encoder *encoder,
> > >  	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
> > >  		    signal_levels);
> > > 
> > > -	intel_dp->DP &= ~DDI_BUF_EMP_MASK;
> > > -	intel_dp->DP |= signal_levels;
> > > +	dig_port->saved_port_bits &= ~DDI_BUF_EMP_MASK;
> > > +	dig_port->saved_port_bits |= signal_levels;
> > > 
> > > -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> > > +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> > >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> > >  }
> > > 
> > > @@ -3145,7 +3144,6 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> > >  	struct drm_connector *connector = conn_state->connector;
> > >  	enum port port = encoder->port;
> > >  	enum phy phy = intel_port_to_phy(dev_priv, port);
> > > -	u32 buf_ctl;
> > > 
> > >  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
> > >  					       crtc_state->hdmi_high_tmds_clock_ratio,
> > > @@ -3211,7 +3209,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> > >  	 * is filled with lane count, already set in the crtc_state.
> > >  	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
> > >  	 */
> > > -	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
> > > +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> > >  	if (DISPLAY_VER(dev_priv) >= 14) {
> > >  		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
> > >  		u32 port_buf = 0;
> > > @@ -3224,13 +3222,13 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
> > >  		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
> > >  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
> > > 
> > > -		buf_ctl |= DDI_PORT_WIDTH(lane_count);
> > > +		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
> > >  	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
> > >  		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
> > > -		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> > > +		dig_port->saved_port_bits |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> > >  	}
> > > 
> > > -	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
> > > +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> > > 
> > >  	intel_wait_ddi_buf_active(dev_priv, port);
> > > 
> > > @@ -3448,8 +3446,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> > >  	mtl_port_buf_ctl_program(encoder, crtc_state);
> > > 
> > >  	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
> > > -	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> > > -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> > > +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> > > +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> > >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> > > 
> > >  	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
> > > @@ -3499,8 +3497,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
> > >  	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
> > >  		adlp_tbt_to_dp_alt_switch_wa(encoder);
> > > 
> > > -	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> > > -	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
> > > +	dig_port->saved_port_bits |= DDI_BUF_CTL_ENABLE;
> > > +	intel_de_write(dev_priv, DDI_BUF_CTL(port), dig_port->saved_port_bits);
> > >  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
> > > 
> > >  	intel_wait_ddi_buf_active(dev_priv, port);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 189c5737e63a..2346cd32f5a7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -6025,7 +6025,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
> > >  	intel_dp->pps.active_pipe = INVALID_PIPE;
> > > 
> > >  	/* Preserve the current hw state. */
> > > -	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
> > > +	dig_port->saved_port_bits = intel_de_read(dev_priv, intel_dp->output_reg);
> > 
> > Isn't this going to potentially clobber the lane reversal setting we
> > determined from the VBT near the beginning of intel_ddi_init()?
> > 
> > 
> > Matt
> > 
> > >  	intel_dp->attached_connector = intel_connector;
> > > 
> > >  	if (_intel_dp_is_port_edp(dev_priv, intel_encoder->devdata, port)) {
> > > --
> > > 2.40.1
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
