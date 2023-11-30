Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF527FF1D7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 15:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D7B410E32F;
	Thu, 30 Nov 2023 14:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4F910E32F;
 Thu, 30 Nov 2023 14:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701354702; x=1732890702;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LUSPwU10y0ebd47vCuwCt/E9DJKbNBAyzYIW3D2cKlY=;
 b=EOuQ3gbb3bRXqevGOxY2JiaaS9b+jV1cj6AM1SU8jeIkVWj21XbCJeNz
 e5PLT5VmpfksaTuJDt7jjszQIVOD4Du2mMu1CIpxda34jpGvwDPdztoD8
 VZOKP/Jc5A/HVYnA3RRDb2qkKi0v5EfeKX0/HG/PIqyIx0cZkZnRIevNz
 IHIEwmSDynpM7pAije0YJiPRZcGAwuwtJhpvqvPY3pLp1p+evHYdqR5WO
 v5On3kAyAdGZQkmYpu+WIugr3bS/vj6KaG9SaJuQi/QbjDEc77g/BJ0+2
 S4WEA8blgCPkRulJDJKUl4cT4SGzUOANc0UBhB/rzIcJplfP7z44BtS7y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="6605952"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; 
   d="scan'208";a="6605952"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 06:31:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="1016647606"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="1016647606"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 06:31:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 06:31:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 06:31:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 06:31:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7sL4SiRkO5Q08u8+IGcet7Vc4zTidK6CmS3byklzDBCeCPcncykTt0QFquCfTlW71+p7+x4ELcS4b8SR1oxL5U5xQ01WlaViP0zeD88qWbeIx7vOgvRLK1sEhwyGbPO6XAwBBvr82z0we8TSlu5+pjyKegSwmCYz8FmYtIEXxwOuTzjm3gWIOGn17VlfYjdtDcp+notAdLK1RUzQjFjXaSFMljevaw8CxiI2lVI8WSczQXEHlKOTvrIKf6zSphULnlKCuJp72zC3AV9+mWpZL+u5iDvR+lNkzpVMUPKtrISqL+5dLPBoVSQE7fqPB+sjV7YFcdKsDdzng67OcP65w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UVC9dD5s8LFFyUdBr+skOsPeXkcmeAzcNxGWtldcuwY=;
 b=LrzkbehQYR45ilYbVrzNtnr9jZZwVIEvmmc7tm6fwmntz9q4VF+E4Rt99ku0sXbdfO4wVPB7czW63u0LpxkZMiTlfERjcmqW2vUC0b3D3TnGWQl7uTGIKGjiRiuIEJJk8muAeJUrNczzTziWaKpKLs3zjupQpb5mbWw+JbHosDePdPKHucJ+zfzmRAhcb9n7qiKel0CgadRKHvTbiu7n8sgBpH5IYDYFRbe/DMJvzgKapCs7ltLDO+JJuiQ+4stSvUpAsyucE+ig7So0GBoka1hUdtpP/jGIGxzsmn8i0Y6QpLZTMhtOn20cHPhInOPdZJzSygNhhROs74NYKkXb3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8575.namprd11.prod.outlook.com (2603:10b6:806:3a9::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.23; Thu, 30 Nov
 2023 14:31:40 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Thu, 30 Nov 2023
 14:31:40 +0000
Date: Thu, 30 Nov 2023 09:31:36 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <ZWicyNETXC6iB1e7@intel.com>
References: <20231130113505.1321348-1-luciano.coelho@intel.com>
 <812728f3-15d2-4327-aebb-79a032d3a2ce@linux.intel.com>
 <c579c861463fba1e24285c034d60f14aeff6d3df.camel@intel.com>
 <d6a5ece0-05c8-4108-9e25-4ad886325ba8@linux.intel.com>
 <e41da80b791fd97d86afe2d4da72a0f244563446.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e41da80b791fd97d86afe2d4da72a0f244563446.camel@intel.com>
X-ClientProxiedBy: BYAPR08CA0069.namprd08.prod.outlook.com
 (2603:10b6:a03:117::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8575:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b7da424-50b8-41dd-e5b2-08dbf1b110f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GUkzEuRDrk+t5+7e93O1Ks0yE1/crldsxZZ/7sPj4WbcIBzc57Pr3R6CHTSj1bH7Yv1jD0q6vYZgM4a8UKaRlTj5lvnWUrZSDIySTBlDW+cCGPWYa/5E+kISwr9CwbNX8jEikExY129dXW5MciJjNkKMY9V86JeolRJVWftQ/dAxVitWYRpfwBvooF5un8qXyvJRutMhYPoue1rhoIE5t+rPRzox2zUlmlcpoYxt3aachlCwcC6POx3NaGxgTHqGYtRQ+XQLlsprjNvYQ9XrYmnFZ1HTv744TbA/jtv/AC4Gau1FTEB1MfwdeYMasV5ya9mBcfAuLEJcPKHSBygsFiM1gUEdT9DUboA5TYi01o/+OLK595KvvPk7DhIuzJHWVPO64rCLK0aGEnZY92LvPsR4H8gYQyiLOfBHCYKoe/0yUxOIxD7jXCYLDrJS2a4oohl+FlhxdTO6/NYPL031vzNUxEXr5iaawZCWejq84U34NSO1GR3ekRFcUvYZBy01R4xse/TKkx57VVoSZI1u0NT/Du6fwuQRIjuV0sdrtmNzzXEM7EBY7uuJ6ZBh8VCo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(376002)(396003)(136003)(366004)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(83380400001)(2906002)(4001150100001)(2616005)(26005)(66556008)(54906003)(37006003)(66946007)(66476007)(6862004)(5660300002)(8676002)(8936002)(4326008)(86362001)(44832011)(6506007)(6666004)(41300700001)(6486002)(478600001)(6636002)(316002)(82960400001)(36756003)(6512007)(53546011)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MIbyGPmJdpoz7op6hjzj3SfWczNRhDr3Ic+hFECMdm7yDKUmreeNIPM5GVQd?=
 =?us-ascii?Q?EPQsRZsZarQn+l64p65ADp3Lw8B4QtWpmF3boKtJZJRIeoIMI3hO0WV2UHDY?=
 =?us-ascii?Q?O9FhSWy0pWyc4MyutzByRRmDQt2CW6voL0kmZjXQcQ+pr1mfZCQUsrepa+C6?=
 =?us-ascii?Q?0r7NRqNLdMSz2+2Qicb/wNTwKjCyLJvkQ9H+b3M5+ffF7Kpk2NW4OJw0Df8S?=
 =?us-ascii?Q?s/pLQrK/SOtpS8wHigsLxb8kqUJhMrL3ON680I6b1LH4QndGNDuC+FcGos4s?=
 =?us-ascii?Q?NEKtgyZfBcj3Wo5Zfuq55+SUvr3RcUKCagZjaeqCn1ekZrii1sIV5oknrd8j?=
 =?us-ascii?Q?424up/zh1t1A01a8dhX03/o4FA3FqG7G3oeBAXcJq1XrluP3TnwIxn1/wLZ1?=
 =?us-ascii?Q?BNGPmYYgOfD0BrsPCJKC2BaGE8gNuKJWDisxvxLynm0mlWUBgXORwEZCiVmH?=
 =?us-ascii?Q?fG+p/rBS1n2ltTTAdd9lNeBBrGRHxt4Wx55ztOR+DG95rTzIiFAckh5HoXH3?=
 =?us-ascii?Q?BMHjl2QIMvmO4t+7VO18pr7XHLh9X1jtqVd7eWIMhE0154/fOzSiXh1XCv1E?=
 =?us-ascii?Q?FWJk0CIjjwHi+2MvfPrMHG6vcv1N7vZhEQoCItg0dmnSY4LvXpyhn411Tqsm?=
 =?us-ascii?Q?IMjREK1C04C6eNh24vjIvyj3S2aXgkPObujuTWUqV/vphucybOx1go7foEBW?=
 =?us-ascii?Q?oSsUliNbGkMYGIj1NMq/sj8asqK5/IqjZ+C4AZVqesektjnQU0dbRvBLdFSg?=
 =?us-ascii?Q?tOHov4oI+xIeUu46t4mMII/GbKg4a4NZk1GWaNFB/K0ZrqYH6RMEe58Wh5Ef?=
 =?us-ascii?Q?9Q3TKwvwGSVWWlikuO0naCMlXJu+P5AhhMR7G+sRxETon1wE/62Nr8FgT8pn?=
 =?us-ascii?Q?Pr3YML98qf8yMvNwwKb3iG+6rNiAAwYcStHaXAIV+iP+PDvwqf0FI3sK07Ox?=
 =?us-ascii?Q?zpPHB3issBsNBMc+CjFcytTis9+JVf+rV/KaR6MDbZ+K9Fa3bJaEvhCuXUdz?=
 =?us-ascii?Q?yggE5fDHQP3rgIa7SuO1U9v2R3nfYFLWIT7B+wDcTW7w0BRIJg8vWLE4B2ds?=
 =?us-ascii?Q?XIMnNOqfSXEjAedwo/l53soeMZVBTSVIMz5NDNbOkfizivVSrrS8aJ38woFC?=
 =?us-ascii?Q?nmkuozfVSRh3FkRDmrRykqByuOijqJPAPbzyW0V3EqZ9uORMjDR3NKziu5+D?=
 =?us-ascii?Q?E6NnyV9H11arWB6Ur2wP9TVRqH3mLYksRb1HBS3jyMwDibMYLJbp9zhLmOPT?=
 =?us-ascii?Q?61oYYO2ZESqBRAJYJtpjY93zucAi5ngQygN6xyHbb2Dz3YvjoQvNFhdyN0iq?=
 =?us-ascii?Q?eCTWG3qeNCNflyJVbKMjKx6ORRkqCXvKU0/KP88XhHu0E18PHbUPGstKTAhY?=
 =?us-ascii?Q?hTHi0DGpRPgIA0vkZEnh2TKo6k4k5LHz3po5blLh3rj+PIr63QLtLrth80yn?=
 =?us-ascii?Q?tMHzfLTVd5udDAGtJxqbjaqTtZd8+j3vQdrOE3jRiRDbRPzHJ7MThB3Ej6on?=
 =?us-ascii?Q?YfxAmYbl0hKQOo62867deNvPgMaqCL8WsyLQdEtZ63OI4PNmgDXQv62wkKls?=
 =?us-ascii?Q?IEmO95ANQFk4yYTLld4NTH/7ERFieoOMz/DpF/oY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b7da424-50b8-41dd-e5b2-08dbf1b110f3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2023 14:31:40.2551 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F0gerktQPoz3QS9rQgJtKXTYKneMw2jaO+2KsPbKupVkLPCn+LpZ8P21d2oWriBQl3WVYcaMBpaHP86BisJ9Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v6] drm/i915: handle uncore
 spinlock when not available
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 30, 2023 at 01:54:13PM +0000, Coelho, Luciano wrote:
> On Thu, 2023-11-30 at 13:24 +0000, Tvrtko Ursulin wrote:
> > On 30/11/2023 12:26, Coelho, Luciano wrote:
> > > On Thu, 2023-11-30 at 12:21 +0000, Tvrtko Ursulin wrote:
> > > > On 30/11/2023 11:35, Luca Coelho wrote:
> > > > > The uncore code may not always be available (e.g. when we build the
> > > > > display code with Xe), so we can't always rely on having the uncore's
> > > > > spinlock.
> > > > > 
> > > > > To handle this, split the spin_lock/unlock_irqsave/restore() into
> > > > > spin_lock/unlock() followed by a call to local_irq_save/restore() and
> > > > > create wrapper functions for locking and unlocking the uncore's
> > > > > spinlock.  In these functions, we have a condition check and only
> > > > > actually try to lock/unlock the spinlock when I915 is defined, and
> > > > > thus uncore is available.
> > > > > 
> > > > > This keeps the ifdefs contained in these new functions and all such
> > > > > logic inside the display code.
> > > > > 
> > > > > Cc: Tvrtko Ursulin <tvrto.ursulin@intel.com>
> > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > > > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> > > > > ---
> > > > > 
> > > > > 
> > > > > In v2:
> > > > > 
> > > > >      * Renamed uncore_spin_*() to intel_spin_*()
> > > > >      * Corrected the order: save, lock, unlock, restore
> > > > > 
> > > > > In v3:
> > > > > 
> > > > >      * Undid the change to pass drm_i915_private instead of the lock
> > > > >        itself, since we would have to include i915_drv.h and that pulls
> > > > >        in a truckload of other includes.
> > > > > 
> > > > > In v4:
> > > > > 
> > > > >      * After a brief attempt to replace this with a different patch,
> > > > >        we're back to this one;
> > > > >      * Pass drm_i195_private again, and move the functions to
> > > > >        intel_vblank.c, so we don't need to include i915_drv.h in a
> > > > >        header file and it's already included in intel_vblank.c;
> > > > > 
> > > > > In v5:
> > > > > 
> > > > >      * Remove stray include in intel_display.h;
> > > > >      * Remove unnecessary inline modifiers in the new functions.
> > > > > 
> > > > > In v6:
> > > > > 
> > > > >      * Just removed the umlauts from Ville's name, because patchwork
> > > > >        didn't catch my patch and I suspect it was some UTF-8 confusion.
> > > > > 
> > > > >    drivers/gpu/drm/i915/display/intel_vblank.c | 49 ++++++++++++++++-----
> > > > >    1 file changed, 39 insertions(+), 10 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > index 2cec2abf9746..221fcd6bf77b 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> > > > > @@ -265,6 +265,30 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
> > > > >    	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
> > > > >    }
> > > > >    
> > > > > +/*
> > > > > + * The uncore version of the spin lock functions is used to decide
> > > > > + * whether we need to lock the uncore lock or not.  This is only
> > > > > + * needed in i915, not in Xe.
> > > > > + *
> > > > > + * This lock in i915 is needed because some old platforms (at least
> > > > > + * IVB and possibly HSW as well), which are not supported in Xe, need
> > > > > + * all register accesses to the same cacheline to be serialized,
> > > > > + * otherwise they may hang.
> > > > > + */
> > > > > +static void intel_vblank_section_enter(struct drm_i915_private *i915)
> > > > > +{
> > > > > +#ifdef I915
> > > > > +	spin_lock(&i915->uncore.lock);
> > > > > +#endif
> > > > > +}
> > > > > +
> > > > > +static void intel_vblank_section_exit(struct drm_i915_private *i915)
> > > > > +{
> > > > > +#ifdef I915
> > > > > +	spin_unlock(&i915->uncore.lock);
> > > > > +#endif
> > > > > +}
> > > > > +
> > > > >    static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
> > > > >    				     bool in_vblank_irq,
> > > > >    				     int *vpos, int *hpos,
> > > > > @@ -302,11 +326,12 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
> > > > >    	}
> > > > >    
> > > > >    	/*
> > > > > -	 * Lock uncore.lock, as we will do multiple timing critical raw
> > > > > -	 * register reads, potentially with preemption disabled, so the
> > > > > -	 * following code must not block on uncore.lock.
> > > > > +	 * Enter vblank critical section, as we will do multiple
> > > > > +	 * timing critical raw register reads, potentially with
> > > > > +	 * preemption disabled, so the following code must not block.
> > > > >    	 */
> > > > > -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> > > > > +	local_irq_save(irqflags);
> > > > > +	intel_vblank_section_enter(dev_priv);
> > > > 
> > > > Shouldn't local_irq_save go into intel_vblank_section_enter()? It seems
> > > > all callers from both i915 and xe end up doing that anyway and naming
> > > > "vblank_start" was presumed there would be more to the section than
> > > > cacheline mmio bug. I mean that there is some benefit from keeping the
> > > > readout timings tight.
> > > > 
> > > 
> > > The reason is that there is one caller that has already disabled
> > > interrupts when this function is called (see below), so we shouldn't do
> > > it again.
> > 
> > Yeah I saw that but with irqsave/restore it is safe to nest. So for me 
> > it is more a fundamental question which I raise above.
> 
> Sure, it should be safe to nest, but it seemed a bit ugly to me.
> 
> I can change it, if you prefer, as your point seems valid, but I will
> wait to see what Rodrigo says, since he had already given his r-b, lest
> we start ping-ponging on this too much.

I believe we should go with this patch as is, because this brings absolutely
no code change. Even though we believe the irqsave is a safe thing on that
side it would be a change in behavior.

So, probably a follow-up patch to also convert the other case and moving
everything inside the new vblank_start/end functions?

> 
> --
> Cheers,
> Luca.
