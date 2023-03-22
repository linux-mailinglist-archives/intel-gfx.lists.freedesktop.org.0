Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 656926C5933
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 23:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C482010E413;
	Wed, 22 Mar 2023 22:00:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A363B10E413
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 22:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679522437; x=1711058437;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BPtYV5VxBEdVk2HW0weTKLVJPfHZtJsiOQ3aSnPrZ7w=;
 b=Vuik2/a7apBUDajU/X4BlW1+p/zuiD1JzVdiDZxsi2az64JKc9UUAyah
 uia4PgkmQIzwaS+NTeTcw/sq9qy4zXTALBKngJDCJP/OjiLTflStnu7WY
 foQ68ANgWBXAW6lNwjxDlWxFlU6/XdorRkTNF/NSze4FSkU3BHUjCaW4H
 xzgv4f6JE7d8L6d5UtvO2Sl078IpsnMm32+VomVZ3wJrLVM5hNjJTULvX
 lxIvRF8YkU5/dGumFrOxNGNJK8PjDeSRowOMPl83FEuPw4BW3M+4bPKHV
 ohXBLUFP1Cp4CLMwuBGfEiB3DJBHj0RykybXr79EsagNInI020aO2pUMr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="338063199"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="338063199"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 15:00:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="675455756"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="675455756"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Mar 2023 15:00:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 15:00:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 15:00:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 15:00:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 15:00:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hKBMbeer1OYxkr86Ul3wMJCgGyCE65QawJPVFWRpE5ooBCQbQTovmNzMjpRw5WcNqplDRt2rfDg46C9ocC+5re4HbbO+jsP1SZCSqfSTCcqmj1hftwMQe3zj/0w6Krg5pbgxlWFZTP5Gq8NalwBAwOxNXkrDtvNRbRER0HuYRkHimwb37+bcyUCrgj1ox3C3x+asUzcOWjxeWP0JrI4iz2aDwirJcrJ1triJId6QpL7x7Spm/SqYHen8PXDEfTJyoEFMEJGs383qwG25exAom0J3IbHh0RDIyjdQkJT1rOyRQcWrH4BNP5gctSBG1AvpqFjfuZ8Uq6+lgJ/62K93Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o8HATzxGBXu2gNo8p/Ka8tMC9yJwvYnK9vo9B0dTU9o=;
 b=RqoiyWUjjw4IndUFgczxOTGyg4rpzh4hxSp5KHYWlkRF4kfxZOKZpCDJvtW77NrZxFf7iZh0hDpO5vz7qraQwR3lusFuP8dIxOYCxDx+hQK9k14n+Vh+INhGDwxHUkKI1TNymOQoCXbMkRKElx4YfPwuBNUbJ+EjwTLqqOyZSs1hoK7d1BZ7XT6MefMyQD/ebY1V1irIk/1z+DnW0B7WMAQmb3R1F+7Mq6D+0x6vCL+EIMrjJPBDy2Sd2A6ifXyaEjCfPlcA16pO7IKye9Jl+Jp+Ov5r/a24U01H5pL46nk6Wp73pZBTN1KFDCFghkQLPjLL6gD+A0inH4vx6mQugQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB6925.namprd11.prod.outlook.com (2603:10b6:510:227::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Wed, 22 Mar
 2023 22:00:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 22:00:26 +0000
Date: Wed, 22 Mar 2023 18:00:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZBt6dtHiJL2Y3o7t@intel.com>
References: <20230322181219.5511-1-ville.syrjala@linux.intel.com>
 <ZBtmuYJ2re9NkvQX@intel.com> <ZBtxsHKk1ztYLB84@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBtxsHKk1ztYLB84@intel.com>
X-ClientProxiedBy: SJ0PR03CA0107.namprd03.prod.outlook.com
 (2603:10b6:a03:333::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB6925:EE_
X-MS-Office365-Filtering-Correlation-Id: cafc8ec5-3e6f-44d8-f7a6-08db2b20d7b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j8GQU17B1W9qhdhjk8QaEKtaaAKEKJ7dmZERZQj1kpN0kwzrZ+XgmMtPYxXrf4m8lSxXNFBe07ChGWd5SQvqJmJrd2bSGn9FFKpCJNw9oGwxNAR46YrAHIhzvzi3/eVbQI5wRR6B1Qvcgz8T6FwLZ4wMNgu+hkx7wnMpFIl1oXDqWTfqGapaIT3ZcM1JuiEQXmLELBI2HVcbvgugcWx1VHnqOBemiP5lMYeK/KI/Bhj9W1vk9D2EhnXiIwt/gxo1kLWTGYmRTAP3ZfNVx/m0c6yY1bKuSIQaHUSL9Bg1JgCNGnw0Howt6linshQRNNg6SkjAuOr9Dy4KnfUTolcbr4DsIzWHCZUXB25NoPRTddilFsm/xoS0BAXE07Hgsn9ZY49Ns5rwZAfvAIMAACa5wFR5RNeFsSvVyLDGb+h7EYY7eXiJIlik06YQUUhGVMAnedyzE4+TskuzGzHENvvddB4cTja+nV0LNC3yJCvG+ftFFYGqIOIFDtkM5uyGIRP3qRWB1O/fBLO2r212SxboVeL5gj/zSxjKPvD8Pd55xBNXRFYiKZewNDc7ScBVhIuE5MHuVPfuvnj7U8p8+OwzcXCVgeh4Q4pn5fzy77RCYVAesGQR8N1yL60/03MkOUsQSmKl8rshT4eVoXVG9zCBDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(396003)(366004)(376002)(136003)(451199018)(38100700002)(6506007)(8676002)(41300700001)(2906002)(86362001)(36756003)(8936002)(82960400001)(44832011)(5660300002)(83380400001)(4326008)(2616005)(186003)(6666004)(6512007)(66574015)(316002)(66476007)(66556008)(6916009)(478600001)(6486002)(66946007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Ogjm3LtcBwvX93Rq8dhiMsF0WoHQjH8zw39jkwQA7sh14z8Ec50MFE8L22?=
 =?iso-8859-1?Q?bv8E6VpOO1LED1eyf40nGL+ZfqBv1+XoDgtylnvdgeKajxh6gMwAdSwWQx?=
 =?iso-8859-1?Q?jS5BX4jbGAvfzFYAjA1jtyopijRxSJMGoFV2jyvaYy4aGAI9LgweNRaWqt?=
 =?iso-8859-1?Q?8DlJiPBsJ4aPWca1UW0/qEpNHboqnvB22zml69xpyiB9fjC+8ITr2laOks?=
 =?iso-8859-1?Q?Hz4xQ+XumZv3hVJ0cqFK7PScHED6D96e7jtCU7VNdpXeaMOXhPAxopbkZI?=
 =?iso-8859-1?Q?l3x/DJeindDOGxAu77Ut/RvaQJvo6dhaCDrgiRBu4UpW1o0qY1i8C7NFEY?=
 =?iso-8859-1?Q?dGVoyiLVP/7/lKi+sw+8ECOSbCd34U22inBp3VsL6EN06sxmKyrkrsDX8r?=
 =?iso-8859-1?Q?2uQ9kz0OK6pU3ycF+P90lLZN9x77pYVdG0Vj3Pv96cZ/nC1IYtJmk92avL?=
 =?iso-8859-1?Q?ROc4dnZUbgTMtlt8TTPJYOLgG1U0um9sn2DLI5ld1tuOAApZ9l4HHqQINs?=
 =?iso-8859-1?Q?yAISyJZE5Mfxvdl16DDkAFcSWlJV3JgHWjRKe7zboEOYdFGTWg4ifnpRvr?=
 =?iso-8859-1?Q?n8uxLrqGtYQJvyYA+BmtQnu5yRHBcL0if3CyT9/pWB+LZUFT87Hdi0V4jd?=
 =?iso-8859-1?Q?QBHFd5tL/cOMoLVZKgtUhiZf4+5ub/GcH7/rOofgAqXykZBLqhlSN6QuQt?=
 =?iso-8859-1?Q?wKyh8quCTVD7W7Eu+vCP2LYNAXYbjhHgtJIlJf6WdNqSZRjj25x1SmFvBD?=
 =?iso-8859-1?Q?DMuzHI0BslsdDJz10Lcu7tLXEFVccKSklgCXqImjZxqI4uQjo82022iHil?=
 =?iso-8859-1?Q?Vez1bYQeV2Y8nJv9TJ+oCEwSqg+zcdtcF9LeGRnn+Qvstcf9BThSr4JOg9?=
 =?iso-8859-1?Q?jq/84r+j3ruJehIQ3BfYpSqJ0EKuznCRAmI7kQ2/JGdvNFFdW2vsP7g0tz?=
 =?iso-8859-1?Q?BAIVUcr2xKJRSpaVDypwCwCWXzsCz4XkVzACGDNX/bTUcyKj5p6wn+vNfL?=
 =?iso-8859-1?Q?thjbcRpYegMziQy5aNlCU8IQlpyjEhkMz6W5YEGzrxrs4lIB8bXcPtTaeo?=
 =?iso-8859-1?Q?inovj+0pabLmMMgA2qAWiQ2LhLzh9msrWvQ3wRBO5G1ExG0kAwXhiSc/rX?=
 =?iso-8859-1?Q?1ClO0uZF27rd8ELrTDj9/oLIayHo8LQoMCe4f/gS09jtGkeUbBdOGX18tb?=
 =?iso-8859-1?Q?1RODH1NGfkLvH3wpCoXn7T+jIRmu08IC8UuGTCxU8goI6HEhA6ruLQA5bN?=
 =?iso-8859-1?Q?eyxMZgygFARvjiT7RH0mXwQrs6ZTRDd9WQdo/EDQ9o/DLPZBDytnYa40Ym?=
 =?iso-8859-1?Q?0xcIslorzhXqDTtv06KaQdonT+UPB1RJsZPZ4QLD4JsazR4mnLtg9yiCMM?=
 =?iso-8859-1?Q?AcQO4EG8/ad2T7lkGjU0sVTxcvSE5Efv2E5FkCeMCozs08pST+I1dBCulk?=
 =?iso-8859-1?Q?3lxU10YgW2qrx4aJDxOT1eT9EzzCqe+NJeVtqaWVpDg+yHrju7NHnbFYN9?=
 =?iso-8859-1?Q?orBFCzlHggLFPNXlnNlTmW7Hbs+yaPFCi3JcFNryyKAFbHgkB0h3gYqtnb?=
 =?iso-8859-1?Q?zbEcq9EwRfDH/ipjEQInQrMGWkgzxtNHlBlvPhF8R+LQFpVlYntqpMx/nv?=
 =?iso-8859-1?Q?tQC3HWr2AIV2CIoiRNY0kRRPI1AgLjvqrGqwNC0eXsJRhu7AjCjPC34g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cafc8ec5-3e6f-44d8-f7a6-08db2b20d7b9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 22:00:26.6293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OrIoUFY2V26OtFP9kMP3xmHfKMPdOw4BhC4+ZKbKEToIGegbjGKnVJqvt771eXCjjr3W7neH/QdMV8SuBQOwhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6925
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add i915.enable_sagv modparam
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

On Wed, Mar 22, 2023 at 11:22:56PM +0200, Ville Syrjälä wrote:
> On Wed, Mar 22, 2023 at 04:36:09PM -0400, Rodrigo Vivi wrote:
> > On Wed, Mar 22, 2023 at 08:12:19PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Currently we have no sane way to forcibly disable SAGV, which
> > > makes debugging things a PITA. Manually poking at the pcode
> > > mailbox with it's various SAGV/QGV/PSF formats is no fun,
> > > and likely to be clobbered by the driver anyway.
> > > 
> > > Let's add a modparam for this.
> > > 
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++++
> > >  drivers/gpu/drm/i915/i915_params.c           | 3 +++
> > >  drivers/gpu/drm/i915/i915_params.h           | 1 +
> > >  3 files changed, 8 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 50a9a6adbe32..ff70225c0263 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -411,6 +411,9 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
> > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > >  
> > > +	if (!i915->params.enable_sagv)
> > > +		return false;
> > 
> > would this be one more ifdef for xe?
> 
> Why? xe needs it just as much.

yes, I know... but the param will be different...
open like this we need to have ifdef, or we need to hide in a macro,
or have it in a xe/ext/display/ duplicated file...

it was a comment more to raise the thoughts around items like this
that impacts xe... definitely not a blocker or anything like that...

> 
> > should we hide this on a HAS_SAGV?
> 
> If we have no sagv then we're not going to enable sagv anyway.
> Doesn't matter if it's blocked a few lines earlier by the
> modparam rather than falling through to checking the other
> stuff.
> 
> > 
> > anyway, let's move on:
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks
> 
> > 
> > 
> > > +
> > >  	if (DISPLAY_VER(i915) >= 12)
> > >  		return tgl_crtc_can_enable_sagv(crtc_state);
> > >  	else
> > > @@ -3696,6 +3699,7 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
> > >  	};
> > >  
> > >  	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
> > > +	seq_printf(m, "SAGV modparam: %s\n", str_enabled_disabled(i915->params.enable_sagv));
> > >  	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
> > >  	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
> > >  
> > > diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> > > index ade744cccfea..66141906ea05 100644
> > > --- a/drivers/gpu/drm/i915/i915_params.c
> > > +++ b/drivers/gpu/drm/i915/i915_params.c
> > > @@ -121,6 +121,9 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> > >  	"(0=disabled, 1=enabled) "
> > >  	"Default: 0");
> > >  
> > > +i915_param_named_unsafe(enable_sagv, bool, 0600,
> > > +	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
> > > +
> > >  i915_param_named_unsafe(force_probe, charp, 0400,
> > >  	"Force probe options for specified supported devices. "
> > >  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> > > diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> > > index 3f51f90145b6..6798b5c2363d 100644
> > > --- a/drivers/gpu/drm/i915/i915_params.h
> > > +++ b/drivers/gpu/drm/i915/i915_params.h
> > > @@ -56,6 +56,7 @@ struct drm_printer;
> > >  	param(int, enable_psr, -1, 0600) \
> > >  	param(bool, psr_safest_params, false, 0400) \
> > >  	param(bool, enable_psr2_sel_fetch, true, 0400) \
> > > +	param(bool, enable_sagv, true, 0600) \
> > >  	param(int, disable_power_well, -1, 0400) \
> > >  	param(int, enable_ips, 1, 0600) \
> > >  	param(int, invert_brightness, 0, 0600) \
> > > -- 
> > > 2.39.2
> > > 
> 
> -- 
> Ville Syrjälä
> Intel
