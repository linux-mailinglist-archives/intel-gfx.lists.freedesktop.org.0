Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F327BA21B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 17:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C9410E170;
	Thu,  5 Oct 2023 15:13:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957A510E170
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 15:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696518823; x=1728054823;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MALuQtTR7M+RjIKAg0hsnKqW38vyQQrcynk3AqXxXOE=;
 b=ME5YzPRNp4x50pI6Yw2gbf5st2KCYwytBn9/Qao2xt3TzKwsS6b2ZCUa
 FDXHpLVI/9R8iCaloAi8M64KQM7VEGPOHKbx4adkdLAM5BYTC09/+Bzsr
 aXoy7pYehDQXUzB667TJDakWwutVUNsCyr3PJhgTbeEJA4rdnK/8TijwN
 I/oANdCrcXzqPI+OB7WeTcSZfQagfaRn2Fd3EOhx4a2k9fdnmIIsu6Ko2
 BsEi+4s+whW6O/aQrxktkuzAeUp29qrf4SkCFzmANtLz04ijzZMsRbLpS
 kPpUSUVIhALODm5w0znMEZmGPYCsvDIW5EfjfwJyezMOPdoyo26k7aV6L Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="414489568"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="414489568"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 08:13:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="751797157"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="751797157"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 08:13:42 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 08:13:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 08:13:41 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 08:13:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lbd3lrOtv6QIENbZfujWLxFP0Pho56oNWoTz2Or/LS+hifqgA0Do5lrVUnIzeIgTfpPJ8QNW+k5iGT3WoQuXaoQkcTn4k9QmWXeGBq+VAp1IVjMPamFJ72mIJ70zqP5JAzMSwB/Ugv27LfapTyaVHySDP+w1USyN7dCLCp70GEZViaI86c1T8q/8atw7MY36L8spQy7CeORNa3at6mZ0ob4dlsdM9gkTW9I6tSATr+92LUcf6U0J2Ipm9ELV33+lobC/VIG7lKA5LF6f9AJP85NLdeMXLdEbwnQZRc2A22Mrtwycgn+2jHUTXfhTw75yhpJmyJ0zrqPqL8xe2ToAsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NjGuGQB9RpliSCTqyId/CJMzst51RtX4Avr2jLaIoJQ=;
 b=WJv2E2zchrRbYUBCceMHg3mjjIu1fzqJHJwSWMIOaxz/FlnAAJjW4y4ASxtkRzbwCQu/ZbZA6TYh8OdGpO0VYruw4Cm9mUmeXAw9TFt9+d60VRl4pXDa4wIq97klxq4Q4gmvonAn+G4RSohyC5AVcMOim/yP0Nc3pN3QRe6uIF2PBLZ+SAAoUuGQwAa2CHAAqr3ADrBs+kxrnm8ReDZsfj0zoMu3WfpWpjYwB08SjzatDu7fRmYqEt+WBUI3xdmjTQ9tJxqUe1LTS3VDZKbsyu79BLRqFgncdC1w9ujfb1mzk0u4YXzELf7Sd2s26gw0tNLuG1TgsEiLjPxWErn+fQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Thu, 5 Oct
 2023 15:13:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 15:13:39 +0000
Date: Thu, 5 Oct 2023 11:13:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <ZR7Snm5Fnt9hOFEl@intel.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
 <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR03CA0217.namprd03.prod.outlook.com
 (2603:10b6:303:b9::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB7691:EE_
X-MS-Office365-Filtering-Correlation-Id: fe72c45f-8db9-41fb-3038-08dbc5b5a789
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ye00UaaY7kW4r+OcJUJIJiqYlJyc12WiQoVVQ1niza7wKHwDAxLc93yf/UG76L9gbsrEcT+M2PP8IQK8AmoWKBaQcIlTI64MBdO7B1GDR/PTvF2dXdPTUNYeYXzsD5JGB958zSnYlN+VqbGhizszV3YxruBG91v3Q/BozMlRe4Lk3Sf1ylNFNJzWjM9VZHYbP+KwhjFsfFLlp/CYJoSEA6LQS6dYWy1MAI8uQimBRC4JlY8w20BSgnTVfd23LOQxNDHP+g78/KMsiW7EyWm5gauj6BZzPZ+7682L1yatnLXMDs31Me9NT0WxRCJmmTspR/vsb0z8lHNmt0EtMFs8qF+y+CFl9hfhsBk1EUseg2phL12yOEPz9cPc9AeFhwpZFItfdbB6RjRin6fSzrLuHYTVJdYbp9iW/qZGM7UbSQbYzNSRfzJ1kISDTRU1m7P05OomKMTTn70OAox2M8gepO1hcYle4Q2nrqWLmXu05gRX0BYBz0B9E/Fz9ScuQqBTbBbz8p5JRSh7DLCPGuVqgUhvxQ8b9z1XvEhEkKlVmPVq5SlDGAuD49hJNaf/7ynTtvRgYr1icScVZA2bJoiAJyuKRiC/Sasq7u2sPa7fPEA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(136003)(366004)(376002)(346002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(53546011)(83380400001)(15650500001)(6506007)(6486002)(66946007)(66476007)(66556008)(6512007)(6666004)(8676002)(6862004)(4326008)(8936002)(5660300002)(44832011)(2906002)(26005)(6636002)(2616005)(41300700001)(316002)(38100700002)(478600001)(37006003)(82960400001)(86362001)(36756003)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3kfaE1Eu4zL5u9+KAlM47+WAsB2SaHJPKwKiH8vfCXC5LbsN23ut4skWGKNl?=
 =?us-ascii?Q?64NECLOcvASlePvAQDxkXACDMEA5dK8PPzEWzu6e+QuxLHEtpi06bf8dHn3L?=
 =?us-ascii?Q?CdL8TslXnaeRehOhlA6a0JZA0/JAXgzQKxjGlVrzsBpN+IjdLYDGufid5eqk?=
 =?us-ascii?Q?/j7+UlaIHiitnA/1+CeMU8htLJyBiIsDxDqP62tYOT8DrN2GEq88WAsZzhet?=
 =?us-ascii?Q?oJtnsF1i5bMipHniNtqiwykhlUnUV/rTN9ikBYfKZZ62veXdo3OvRRemPEqr?=
 =?us-ascii?Q?dHOBcTEVhBC5tthzvsBqsuziQARTStwtwbeE/xAaaMCUAYxkf+Vvf57c48Pz?=
 =?us-ascii?Q?rwHJl4fZjXAaHdQkACQO/V2NsHpQV1X96Hf5RlMHlP/r1kCFQey12knyOh2u?=
 =?us-ascii?Q?bLv3TTjhSqnUyVFVvyltLYs+duv3j8s33KBN8zQa1okg0M7VLGzliNZ3l19O?=
 =?us-ascii?Q?BR0DhDvo12OuFb6x0BJdip3cuN2AXIrc1e0LqkoXZoXrCZD36ZGtMHzZwMvM?=
 =?us-ascii?Q?dx/efs4bmYdiqdyNb+E49vbTYRPfbrTLZVoeCSJm4c5QjyCr9tWa5JxQh5zs?=
 =?us-ascii?Q?3DRIOJglmJ54wXZtoVxuji6ah0yrwIVcGncxJv5PxV1JsqOzvbZYaAU75ggY?=
 =?us-ascii?Q?U0ZIwCj/W6QyTplR3Mlpk/jd1SjwaNFlKQZeFnDvbseLOZE43xxUaRKdKCN8?=
 =?us-ascii?Q?xyhPRa4hlpuFbMXq3Eneop2VfK7Mdn1Nn+gFIcTyMQdOiafy8n2lqFsz3b4M?=
 =?us-ascii?Q?bTnz64+sa5MAzUAU8A7Y25D1xn3U836R+da3Qg0OnNZ3gPayNw+9PjZ8ZlT5?=
 =?us-ascii?Q?jII7BTm5i911iXt7PT5+2Hza9YBWx0N1TxVQdgZBBbwn7YqGanqaq1IxD8qJ?=
 =?us-ascii?Q?tR3aywR9wDK3GlF9s6TMWgNZgFSuJ/v1Y7A53/EdWU4+/2AZWuiZiPH1B9gu?=
 =?us-ascii?Q?NjGxV/pV8n8vLrPm/W6RaE+OjgajHEDMm6F4BS6soHBMEzWTWOBEbJtTO1mB?=
 =?us-ascii?Q?Wt20OzvCKcq+isPxW3WdgB7TMcg6DV3Re0Dvka3FOiAyE2V5UUT5SS3C9MzT?=
 =?us-ascii?Q?N8HZ1pf6EcYng6O+6hUU0VM8YQsO/szYqq0tSP+rMqhYBIeM1yhAZMn6wm76?=
 =?us-ascii?Q?cGD5tV28V3gTbm1pfAAmFHyGUnM2JgcC01w46haLfkCtMpPGMHLKprPR2vG7?=
 =?us-ascii?Q?D0rqPpi/2jwyAM1Atu1SMP2CQFHhk2h9CZKf/FyXINP3Jv3yCETd790yxTzO?=
 =?us-ascii?Q?IT1steh4OsNOoTaoYRKdPrEXWvn8pGPnZllmhdFMh9BgZSAZvQCD/MyThNiX?=
 =?us-ascii?Q?cknBJOeT0jzzSgTHBOllUbDxyHuuYkSy7ibeMjNjhynIZITaA2vcgdA/yIHL?=
 =?us-ascii?Q?KOyuv/AzFOqTEvXhgUXApjKb23vs2rHxnXsWk6UM00bv/+7X/MVE6qdlFi9+?=
 =?us-ascii?Q?epHCQSt7vlVI6Gt5UQgLN6nmG9AeMN2ctma1efZsaXdkayG708JyP0jlVPvW?=
 =?us-ascii?Q?ZQyMkZ4AqEUbbDrwWpwampAWnE48cMd0ikGHjmXkjc2W2Wze2jM3vtJddXDq?=
 =?us-ascii?Q?n1Rkkil+XMhPToqldcR0/WNq4BiOudbKd6q0XP/W1xvren2enhJjYOQyJm0H?=
 =?us-ascii?Q?3Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe72c45f-8db9-41fb-3038-08dbc5b5a789
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 15:13:39.7182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JsV7ZiZrG1XhYx/tMPWE3/2KjcDRTtKgOzJ1mm0V/bXgIuz0ymgD0tOaerykDG1TmxWyMo3BTiYOGQwKs5+x+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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

On Thu, Oct 05, 2023 at 03:05:31AM -0400, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Wednesday, October 4, 2023 3:56 PM
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after each read/write operation
> > 
> > On Wed, Oct 04, 2023 at 01:25:04PM +0300, Mika Kahola wrote:
> > > Every know and then we receive the following error when running for
> > > example IGT test kms_flip.
> > >
> > > [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
> > > [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
> > >
> > > Since the error is sporadic in nature, the patch proposes to reset the
> > > message bus after every successful or unsuccessful read or write
> > > operation. However, testing revealed that this alone is not sufficient
> > > method an additiona delay is also introduces anything from 200us to
> > > 300us. This delay is experimental value and has no specification to
> > > back it up.
> > 
> > have you tried the delays without the bus_reset?
> Yes, we have bumped up the delay, first from 0x100 to 0x200 and then as per 
> BSpec change 0xa000 and I have tried 0xf000. Increasing the timeout reduces
> the frequency of this error but doesn't solve this issue.

what is exactly this BSPec's 0xa000? where can I see it? So maybe you can
update the message above removing the 'no specification to back it up'.

Oh, and my english is bad, but it looks to me that 'empirical' might
sound better than 'experimental' for this case, since you really did
a lot of experiments before coming to this final conclusion.

> 
> > have you talked to hw architects about this?
> Yes, HW guys requested traces which I provided but based on these the sequence we use in i915
> is correct.
> 
> > 
> > I wonder if we should add the delay inside the bus_reset itself?
> > although the bit 15 clear check should be enough by itself and it doesn't look like it is a hw/fw reset involved to justify the extra
> > delay.
> That should be enough. To me, it looks like when reading/writing to the bus maybe too fast, the hw cannot handle that and we need
> to reset and let things settle down before trying again.
> 
> > 
> > well, at least some /* FIXME: */ or /* XXX: */ comments is desired along with the messages if we are going with this hack without
> > understanding why...
> True, I will add these the the patch.
> 
> Thanks for review!
> 
> -Mika-
> > 
> > >
> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > index abd607b564f1..a71b8a29d6b0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > > @@ -220,9 +220,12 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
> > >  	/* 3 tries is assumed to be enough to read successfully */
> > >  	for (i = 0; i < 3; i++) {
> > >  		status = __intel_cx0_read_once(i915, port, lane, addr);
> > > +		intel_cx0_bus_reset(i915, port, lane);
> > >
> > >  		if (status >= 0)
> > >  			return status;
> > > +
> > > +		usleep_range(200, 300);
> > >  	}
> > >
> > >  	drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d
> > > retries.\n", @@ -299,9 +302,12 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
> > >  	/* 3 tries is assumed to be enough to write successfully */
> > >  	for (i = 0; i < 3; i++) {
> > >  		status = __intel_cx0_write_once(i915, port, lane, addr, data,
> > > committed);
> > > +		intel_cx0_bus_reset(i915, port, lane);
> > >
> > >  		if (status == 0)
> > >  			return;
> > > +
> > > +		usleep_range(200, 300);
> > >  	}
> > >
> > >  	drm_err_once(&i915->drm,
> > > --
> > > 2.34.1
> > >
