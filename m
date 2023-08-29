Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 332BB78C94B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 18:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 646DB10E437;
	Tue, 29 Aug 2023 16:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601F710E43D;
 Tue, 29 Aug 2023 16:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693325078; x=1724861078;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=buXl8a5ufnqMkH02nmBgjhrWqO19cbO+QkXp5Og6Rk4=;
 b=niRIZ2sD6rBDk1c7YU6JMl2X7q0upKt2oivPNOSAZ6QkgmmN50yZaw6s
 QWAK+HG7HTrpY0iRKpFimiq91wk9QvSWHm7qLYXih8ce596co3YiSRAr+
 L++/IYkWdCZ4eIkuaYspLBGpE35EIzw3cX/Qsy3DQUU7IKdv1FpWx34di
 vZ0Yvk8NAM28Vs78I8Y2FaWKSWjV1ztmQAvmfp+LObCQRGo8AJGQ2WeZS
 6Z+xNp2ijQe7a84P8CL4uQJbZOrE4AQt8DCQ6kuj5l9pYqAdC5H8j+2M/
 WH07ZmlmDAstjU47JVtVXuiszF56x5PlAxx6DRVwrfQ+fps+jYpKa0uTs Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="354922996"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="354922996"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 09:04:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="912474569"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="912474569"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2023 09:04:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 29 Aug 2023 09:04:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 29 Aug 2023 09:04:35 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 29 Aug 2023 09:04:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P+B3HdQj5TcQu66m8xeh8+xxcG8UFc9YUeu2YZyLT5PpymZuIfdBMDQyrBdH4OxOykgIbtPQRu3NziIZ5ieIr/OnQ09kR3T/C8OF8OuwclMtF2pPVNyjrAXrJMeUXYUKJBVtZZCIoCv7d3pekN2tLebEdv63UMqqed7oLh12kFOo8+xj/NOhOebNpWjjoJe0rB/MQQPXVjos3libyfTNxlZUmUkQzW+cou9ERnccK484wDTrlP9xjKxrman7j2n1h+K6mnxfmoIei8OoT8O2v9P3aSdJM6j1F7gZBCdWaMza5Bv+DeTmmYMfJa08PwDvIuoaQekvv4T9InKJmr8C9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ph7VivE9u+3y9c+vOb20idjFnmXXPMPl257LxQtSHQM=;
 b=KFLjDKdVaOeAaApips7GQ9ddhDv4yZd/qPmQMjWsrX07goG28MLmGCPL3MSW79cKzpnfVTQV7bsAnwdO2Z/86mKB3I/KjRrmHjkkzGz6XuZ4doZ66bWnu+suUOezA9ESlg32pyU73VA9Zwy9wNTZjabcl+EWT7C2R3RcoOoWLCqjJgqtvEnrwCBr4XCIm0lP6IixVv/vJHS5WMJhViqrjD9fXZWSCDJ2z4XmnDEwmEoalwsh213h38icicYI0m8YnDiQVWVyVtP95+ItMfMuTUHcAuVPIwwA1KLpV8jib2NEQApuPv4CdzrvMK7n4hZuicokcYKiht74tCIPxulWMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Tue, 29 Aug
 2023 16:04:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 16:04:31 +0000
Date: Tue, 29 Aug 2023 09:04:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <20230829160428.GI1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
 <20230829001604.GQ6080@mdroper-desk1.amr.corp.intel.com>
 <58c721715af42c1e71f80af2bb655021a648b426.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <58c721715af42c1e71f80af2bb655021a648b426.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0051.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::26) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 130f44f6-47b0-430c-40a4-08dba8a9a159
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oxgIqjI+f77PJRbNrT0I5ZxMQhy7tNrUsFupFBzMjA2CyNhRlEzJQ7Tug4n2vGCzpXAwgsTmmlh5V+tqf7yy7huR0Kvz7YMHxvHxuVuVAbmXDjsdjYySwBks4KhCyexE7i+ZnRhoSye2VZ5wO3OV7+FbJyWwFmlH1fxjLCRSyZei/RQeqYGtB+e6AsEXPajtkTNf4nksBhR3H5+/K+Rh7+cSwrTTUE95+ZHPfQZnD535FEiHi7b2TUtM4+e1cgvtnaiExL8NZ/5/V0WyvtxNRMSwQ/4WEJXVzlvX2n043c/VR01aUlNC5MnoCUmYmTySgECsvYNQuwzg4eF1xHRRIbMlc7OE1cTCZKDL3GDNUCJcHORailf1FKQT9cC69iCzIZ5SGSYI15vfsYl/Q2/K3Jta1e5ZHfSYArwanHn9Wz8K7vZzvaH5ZvWrcUBe2Iz5cN4LFlR9K72tlUvN7jqGBQBTiUm3ACL4Do/U6kKoIfx5H++NzaqBMhGIv/0xPe5wLEpBeJIC5knqTqtmhsZj6VOlxr2F96SpKMWIUk9+ZZY9hLd05MwR9K+HbVqzQ3pc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(136003)(39860400002)(366004)(1800799009)(186009)(451199024)(450100002)(8936002)(6666004)(66946007)(478600001)(6506007)(66476007)(66556008)(54906003)(6486002)(6636002)(38100700002)(316002)(41300700001)(82960400001)(6512007)(26005)(8676002)(1076003)(5660300002)(83380400001)(2906002)(86362001)(107886003)(33656002)(4326008)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?CUx0f4VZi8CVNO15S9TnW89tMU+45NP68bAgzTAJMLK2qNOZa9a1QhzOno?=
 =?iso-8859-1?Q?DdERxHT+Epvym3aU+vUHL5EOw+ekSzrdIN5jEspseCDdnSzN77szR7TVKz?=
 =?iso-8859-1?Q?Yj0H5lnBYDuNXCLUT7qMoFtG8h5gYzEVsrd7fRu8WCT3LLwf7KStZ00XX3?=
 =?iso-8859-1?Q?sHP+MGAiQxZ2pqr+OkbWWHyinPsjFdVcNP25dXYRXdAvRl+l8IwwhWJy1/?=
 =?iso-8859-1?Q?P/VmBNyU24yJtHbwfCGvmphyiuscXEnyK9zAmkDTWtOnGReiT4mj0Xs24S?=
 =?iso-8859-1?Q?sJ8BRY2hBKt7y/gZTMno74qZBOMD+rO/PzenKsc7T48+SFekrVWBqxfAQV?=
 =?iso-8859-1?Q?fWNMj+rrTyl1TWUnD/aKyhHCVcxS3mQVMubcwNc4mX3MYwDpYHhPspciPo?=
 =?iso-8859-1?Q?JMa/5UbxtSdD0ZG7kbRZkSDvOcb6+demxG2XBQCz/WrVxJ4CsWEe+cy9Pz?=
 =?iso-8859-1?Q?al9kNf9KSG+U2PnfkF17tKftWVAujQ70qxHpVl1mgGQnm+COeiJJEUY0/i?=
 =?iso-8859-1?Q?cpY31PPDf6pkyXMDdzqP0MYE0lhKQm6aFMfszvf9MhohlK46RcTC0wpyVh?=
 =?iso-8859-1?Q?Tu5HiJiA1GEJ72oq02zrb58UlfTlw7xigciSsMZVN9dzkHKlVXfwm6CFIX?=
 =?iso-8859-1?Q?iFJ7Rv1/u2zhrJG2/f+kb5DBu2jTqU9nebuuu+8KBF8HCeqc0aRoMz4p2J?=
 =?iso-8859-1?Q?LHcgmLWGPETFxUkB5wyqQEHqYhdLMRPMYroRx0zqVVuVkqXEDDLqO3jTfL?=
 =?iso-8859-1?Q?S4Nm58NGg3ZSxSn4mQHOywaCaLkL3reNKpHeCK+klLwht3HdmYs7xTI3vT?=
 =?iso-8859-1?Q?RtM184PV/3HMmcars/1e9l5qOeC30p9N4GVPwPD4DidmX+GYIFlvxWN1OM?=
 =?iso-8859-1?Q?JNuGFW/IrTVDtCGp/lwkPoZMvrvEVbVtxjXKqGo+YTt0uVd5mXTwlxTpEs?=
 =?iso-8859-1?Q?NyADZC6megvdBlg0TQf7w7XGAGb2kfvAYCAX6RFdenQPYLW+DAHHUqPUVY?=
 =?iso-8859-1?Q?jjl4BFKVCcToQ5f1qzA9K0aLRGQYByrfLu5bUopv050hzHcKcdBUqX8HR/?=
 =?iso-8859-1?Q?ZAsDRI80yEG32jzUfvYtT0zVdEm74lnOAnOzWJKZJ68iOmn3nBtpwlvbQG?=
 =?iso-8859-1?Q?XU8KjYawBG5jt6yuJlbaLLVQAZUwElxPD84UT+itjPviPtKd4SVXv80mrT?=
 =?iso-8859-1?Q?zk0EruQPz0km9l0A9QDD+yULKZu6iD6xg5JGLTkBvx3xohGHizjcIxhNlc?=
 =?iso-8859-1?Q?oUHwyawOjBxLSNl+TGfKLWVOwzaU7z8SvpmKqPnsu7Fi0GS8pKh4ET9rEx?=
 =?iso-8859-1?Q?j1ecA63jFRT8kPu/y60qfyZiK0GNX79NGE+2r5MUwYtWmT1Llx5h+DGu+E?=
 =?iso-8859-1?Q?NUJiS+9xvfhJNMJ72ODZNEmRKRS4OsV7Ld+Ru7e0sJpOahzGKA0TpRggCe?=
 =?iso-8859-1?Q?G6/UobjrToeuWGt47dgR4V5jHDsxyel+rXD3gLiAsA/LaYGdJUE2pCfkoq?=
 =?iso-8859-1?Q?TLfy5dhbZuVJTmI7uGJuJJUWohsCLiDDrcUTJ6MzTeR7Muu29Tvg67jtnF?=
 =?iso-8859-1?Q?/z9A82WDFsOcl879E0TXVBYhqBwa/VHUN5SAuwshf8Bjnk06/iOvSaTQTJ?=
 =?iso-8859-1?Q?5jNr3yyUsQ7WfHHBWBmyLHbIlcOBqjHgtYW9pOV6o7TlftfACpJCfpkw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 130f44f6-47b0-430c-40a4-08dba8a9a159
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 16:04:31.4755 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nXG7U4qb6m+TC9sf+qSQ5iu0IaoLLnSxAilsQzjUW7vYztNLRRSSuVrRDNHA/yyKbyEMhHGaYkYI/IkXw7bAMAJIOgZitMQEtk7ROc3xdCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 29, 2023 at 06:50:02AM -0700, Govindapillai, Vinod wrote:
> On Mon, 2023-08-28 at 17:16 -0700, Matt Roper wrote:
> > On Mon, Aug 28, 2023 at 09:20:34AM +0300, Vinod Govindapillai wrote:
> > > In LNL onwards, FBC can be associated to the first three planes.
> > 
> > The title of this patch shouldn't say "any plane" when the reality is
> > that only the first three support FBC (the upper two do not).
> > 
> > > The FBC will be enabled for first FBC capable visible plane
> > > until the userspace can select one of these FBC capable plane
> > > explicitly
> > 
> > Even if we add new Intel-specific uapi to select this explicitly, is any
> > userspace actually going to use it?  Would it make more sense to try to
> > come up with a heuristic to guess which plane would benefit the most and
> > switch to that automatically without userspace needing to be involved in
> > the decision?  For that matter, do we have a real-world use case lined
> > up where we can see that switching FBC to a higher plane is beneficial?
> > Even if the hardware suddenly has this capability, it isn't necessarily
> > worth adding the extra complexity to the driver if we don't expect to
> > get real-world benefit from it.
> > 
> > BTW, I'm not super familiar with all the FBC-specific details, but it
> > feels like if we do go forward with this, the decision to select a
> > specific plane for FBC usage should be handled more deliberately during
> > the atomic check phase.  Right now it doesn't seem like we're really
> > making a firm decision on which plane to use, and we're probably not
> > handling all the cases where the register needs to be reprogrammed
> > if/when the FBC moves from one plane to another (potentially on a
> > per-frame basis).
> 
> Hi Matt,
> 
> Agree with the comments about the subject line and also about your suggestions about some code
> changes, will update accordingly.
> 
> Yes.. the logic for how to choose a plane for FBC is still open.
> 
> While discussing with Uma, it was decided that we split this task into two where we first have this
> possibility to associate FBC to first three planes and then decide on this logic to select the plane
> for fbc after discussing with Ville. ( Jira VLK-19372 / VLK-21508)
> 
> In this patch, "fbc" pointer is associated with first three plane implying those three are FBC
> capable. And because there is no selection logic there, I choose the first available fbc capable
> plane for FBC and the rest two to have a no_fbc_reason as "fbc enabled on another plane" which will
> prevent them from being configured for FBC.
> 
> Ville has done refactoring to FBC code earlier and I think the current code flow should handle
> disable/enable/register handling etc. Ville had some comments about the approach I explained above,
> I have asked for some clarifications
> 
> BR
> Vinod

I also just noticed that there's a workaround (Wa_14019417088) that
requires us to always bind FBC to plane 3.

        "Plane - FBC binding is fixed to Plane 3."

And it's marked as a permanent workaround for Xe2_LPD.  So it sounds
like even though the hardware was designed to support FBC on any of the
three planes, the reality is that we can only use it on one specific
plane for this platform; moving it around will have to wait for the next
platform down the road.


Matt

> 
> 
> 
> > 
> > > 
> > > Bspec: 69560
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c      | 29 +++++++++++++++++++
> > >  .../drm/i915/display/skl_universal_plane.c    |  5 +++-
> > >  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
> > >  3 files changed, 37 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 45e205a0f740..62f59630d410 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -649,6 +649,21 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
> > >                      CHICKEN_FBC_STRIDE_MASK, val);
> > >  }
> > >  
> > > +static u32 lnl_plane_binding(struct intel_fbc *fbc)
> > > +{
> > > +       switch (fbc->state.plane->id) {
> > > +       default:
> > > +               MISSING_CASE(fbc->state.plane->id);
> > > +               fallthrough;
> > > +       case 0:
> > > +               return DPFC_CTL_PLANE_BINDING_1;
> > > +       case 1:
> > > +               return DPFC_CTL_PLANE_BINDING_2;
> > > +       case 2:
> > > +               return DPFC_CTL_PLANE_BINDING_3;
> > > +       }
> > > +}
> > > +
> > >  static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
> > >  {
> > >         const struct intel_fbc_state *fbc_state = &fbc->state;
> > > @@ -660,6 +675,9 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
> > >         if (IS_IVYBRIDGE(i915))
> > >                 dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
> > >  
> > > +       if (DISPLAY_VER(i915) >= 20)
> > > +               dpfc_ctl |= lnl_plane_binding(fbc);
> > > +
> > >         if (fbc_state->fence_id >= 0)
> > >                 dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
> > >  
> > > @@ -1250,6 +1268,17 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > >                 }
> > >         }
> > >  
> > > +       /*
> > > +        * From LNL, FBC can be assigned on any plane. Until a provision is
> > > +        * provided for the userspace to select a plane for FBC, lets select
> > > +        * the first visible plane that is FBC capable.
> > > +        */
> > > +       if (DISPLAY_VER(i915) >= 20 && fbc->state.plane &&
> > 
> > Isn't the fbc->state.plane here redundant with the plane check on the
> > next line (since a NULL plane wouldn't match there either)?
> > 
> > > +           fbc->state.plane != plane) {
> > > +               plane_state->no_fbc_reason = "fbc enabled on another plane";
> > 
> > If you set this here...
> > 
> > > +               return 0;
> > > +       }
> > > +
> > >         plane_state->no_fbc_reason = NULL;
> > >  
> > >         return 0;
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 4d01c7ae4485..1291351c9941 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -1962,7 +1962,10 @@ static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
> > >         if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
> > >                 return false;
> > >  
> > > -       return plane_id == PLANE_PRIMARY;
> > > +       if (DISPLAY_VER(dev_priv) >= 20)
> > > +               return plane_id <= PLANE_SPRITE1;
> > > +       else
> > > +               return plane_id == PLANE_PRIMARY;
> > 
> > ...and also point all three FBC-capable planes at the pipe's FBC
> > structure, then won't intel_fbc_update() see the non-NULL reason and try
> > to turn off the pipe's FBC (even though it's being used on a different
> > plane)?
> > 
> > 
> > Matt
> > 
> > >  }
> > >  
> > >  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index aefad14ab27a..b207774f3c33 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -1327,6 +1327,10 @@
> > >  #define   DPFC_CTL_PLANE_IVB(i9xx_plane)       REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB,
> > > (i9xx_plane))
> > >  #define   DPFC_CTL_FENCE_EN_IVB                        REG_BIT(28) /* ivb+ */
> > >  #define   DPFC_CTL_PERSISTENT_MODE             REG_BIT(25) /* g4x-snb */
> > > +#define   DPFC_CTL_PLANE_BINDING_MASK          REG_GENMASK(12, 11) /* XE */
> > > +#define   DPFC_CTL_PLANE_BINDING_1             REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 0)
> > > /* XE */
> > > +#define   DPFC_CTL_PLANE_BINDING_2             REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 1)
> > > /* XE */
> > > +#define   DPFC_CTL_PLANE_BINDING_3             REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 2)
> > > /* XE */
> > >  #define   DPFC_CTL_FALSE_COLOR                 REG_BIT(10) /* ivb+ */
> > >  #define   DPFC_CTL_SR_EN                       REG_BIT(10) /* g4x only */
> > >  #define   DPFC_CTL_SR_EXIT_DIS                 REG_BIT(9) /* g4x only */
> > > -- 
> > > 2.34.1
> > > 
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
