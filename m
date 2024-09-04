Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 187D996C1FB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 17:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5856B10E7E6;
	Wed,  4 Sep 2024 15:17:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cotuy/RZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC90310E0BE;
 Wed,  4 Sep 2024 15:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725463026; x=1756999026;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GM5uTMKHhwyHheQkgL2zqm6PkPX9HzcsZaPCqIxZiSA=;
 b=Cotuy/RZ7cXLQpDTBm1Bjd33EeeqCEfrbr+Mo0iHNAhtSonCW987Qi1m
 2c4c/nFPTRiBXf+Hp8ZtWfj7a/naIiVUQ7NyDSuZRFXT0b0TCSD9626oy
 cFb6FUxiUL4nx6P0sPHvNj6lVEpWYYmGTfrQl0U/mmc/CftouqADb3kPI
 ro1rn0nL07m65fTd7z0Hz31SKbuIHwWaBz8PAtAeqJuCb8G4WH1JmwCDx
 8Fg4dj37JTzLCJSZ8s2GdUTsYz+v7tENYbtnfl/4HCu1BS9gg+z8EGMpg
 mMSOCm5v1t3awTAzYHZ9X4r6ao87HG10wnU+/fb9WsZXWf9/kKvD8ILXV w==;
X-CSE-ConnectionGUID: M9RkVRCATSS6Ul0lJXztFw==
X-CSE-MsgGUID: RTxGOOVvT8aOWGPpzUNzyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24292218"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="24292218"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:17:06 -0700
X-CSE-ConnectionGUID: iRr5+IP5QVKuEvf+rgyp3Q==
X-CSE-MsgGUID: +hZP912QRdmu0b2TfDp2SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="69470859"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 08:17:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 08:17:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 08:17:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 08:17:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 08:17:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MltBIt6ZrniL29oLPygN40b1ONEWeIxCi01q3Ff3o8pKLb30US3tljo95J+tMDLcHVfcNpA7BhicGa9Tb5or4LHyk/XjWK66rDNudXcaEikvXO6yVtMe7x4CoRkO8nOLKubYQ0MO9FpkVb/Wg42ZMXHiQAH2V/zG7Uim5s1FLs970afBwPyD+DoQ3xNfYqPQJHo6r4iezWYMc+U/ZXC6bCSm+YEpG1ohCpcR8h7U+LWHhD7vEQmLhtjhOunMIp+R1TjHRrQvJZsE9dXdk+FqYdgRfp5Js6E352d5eNWByAdnc5wwUtJBrM8VCCjUm9Wt71hsOSXeuUkd2wn2OgROpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wxy1YohBvv0SqK2CCM3M67f5iMIrcJIyXw3CL573gWY=;
 b=FNsi9sM8mXIgISWXk9trNoZiJ5bEYq+lanJvzVh9MXYaEgCw5XmZFqAoXWwAgl2XCN4MDXk/G49vj2708Am4BLmQl0E0TM/vJRspbJit0wtksLH+mw5NE95rMd5+aPtMYLHRvZM/4mAU2JYbDWd8LXU980SolAadQHnINzro5J3HNjrmN1adjCQpa4NFr/sfCWNyAHGyVyQks24jtqlpbsHZjwB9sxeS8sVRFW1nRDq+pzd1wTLd/b6a47Qihz1f+RpkCNo9xnL0OBtEJ/UqwkJyyHFm8G71xEbrIaerRLNpKZNUWVVPzZWSnO3bNC7zCjQNJguesnot5XOayUngNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7847.namprd11.prod.outlook.com (2603:10b6:930:7c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 15:17:00 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 15:17:00 +0000
Date: Wed, 4 Sep 2024 11:16:56 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Vinod
 Govindapillai <vinod.govindapillai@intel.com>, Imre Deak
 <imre.deak@intel.com>
Subject: Re: [PATCH 0/4] drm/xe/display: Clean-up PM sequences
Message-ID: <Zth56C3s8lPQMEBB@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
 <87wmjrssez.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87wmjrssez.fsf@intel.com>
X-ClientProxiedBy: MW4P223CA0006.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7847:EE_
X-MS-Office365-Filtering-Correlation-Id: 42d1b35d-8374-4a62-4cad-08dcccf49fc9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OiCVH5QEHK8Lmrh16Ffwnc3HpCvyoS/jzoF4TgE0N4D1oQOAU0BNUyaRXrx7?=
 =?us-ascii?Q?5Wr0cFz4zxtYGOgp7rC27r3+Rn0hoT2m/D+g6S6+rYMuWVRbmV96O0Cl12Q5?=
 =?us-ascii?Q?3fE9KzVgVpcaXvJTOZDOKgPofdOipAgsZ3aP3HrhJUT6K0V5XAr3pWZwnPXg?=
 =?us-ascii?Q?5DITAl5FZaVcdKB0BeGF4cWldhT1ZBSKYn8z6gfUt6OYmuYhJA/md9Hg6Etf?=
 =?us-ascii?Q?6fYofVjSypMP4w2+dKJ8/4lpNTlByJeoQ3iuXNNuKrmXKu1Y5MMolNUxpK+s?=
 =?us-ascii?Q?SZh1Xg35ImDOOAxJgD6DHE+i0Nv9RNTaeulJth/6g3GdE/HBNjyWJ07Eth98?=
 =?us-ascii?Q?taQv5h2MrTjzJdJt1hw0lgw5l2k9xYge5O3zN4cA6b8bPV5/ractCpn6l2AB?=
 =?us-ascii?Q?ykeb767YDOvBgCUGHXVlk2sv4h1xR8XfFhQLxZWaHZ6XffHK4N/Rx+V0jj0L?=
 =?us-ascii?Q?3hfvfKeGZ0DROddDE3wUWMucR55qiJknvYBHR0AMibzPLnPBqtnBD4x57eN/?=
 =?us-ascii?Q?okftGI05f1TB8xE+ZFQW3nEQOGbU4UPK/Z/RfVDAsiLMcPqPO/4I/QqOXNw5?=
 =?us-ascii?Q?qLl/xIUpZB8k6FbX4jEwSkhK67gK/zmfpeD8cx80WdHvdlLffZf58v1Zb9Xi?=
 =?us-ascii?Q?QBsE3YGTiCiAr8Io4NO445X41VLsjB2fFwlz1xhH9UYgMjpTcaN0NaFaqqs9?=
 =?us-ascii?Q?vVfou1fhZ1sHx8t5jpwm/ZB5j8au9hpOGe3Mv1sOz1zldZr4Gzo8qhpyuvk1?=
 =?us-ascii?Q?o3imeoYjIWH4URX/stz3zjmaTaYrmtx5MoLiLFB+KG9Am1euDKbLzY9karqu?=
 =?us-ascii?Q?7MTc+py2rcDTCvfZ4rs7tbdMEhlZHwxjhiWLkgAJ2BY+4vFib4NizXBdVlBz?=
 =?us-ascii?Q?7lyiayeWfHrPeNBKwrmtXQXO4ldNhH8D1G13t1NxXXOzk476CrFPBW5r+N4V?=
 =?us-ascii?Q?RR52gLQHPdfjcfaIjR2qvEQpUuLn0s3qKlQ8znLi22D+6S5VD0Jz1ntDkLP4?=
 =?us-ascii?Q?+ykG+w5N6EYxSAfjN6VQNCLIEJ8mGtY9RCr/mVjDwXjFoJl3lizfvCQHygDn?=
 =?us-ascii?Q?rcxCOD9+dCmtYEQxinJpPt/G5ZAaAeY2Zy53Zwix3wB4LAhE8NMkn1KUJn1J?=
 =?us-ascii?Q?aX2qFjENJrB3r2UAxxbyUX5GnsXyFC5pGEs+cV7wum1FyYOQmd/FM8OD4wTe?=
 =?us-ascii?Q?AV7T/GZD+m5Ty3qqVO14Ykk0hFMrzqKqbSROZRL0BEXr1YOzmNo6TsDr585F?=
 =?us-ascii?Q?OzapWfdx3w0Tybjx1WDuB4sCzExbNgHL4VP/qO/HaYX4Bg8tukBYXjzRAMkv?=
 =?us-ascii?Q?3ra2jAcWg7wU1ETWd/SPspB0Sngx+7bLDSNRYVgh2VKGjg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3WnzZb1MxhL2qeCIZSvugWRIA8KKbGFJLOZKV43ZjdiGWoRE7buvSEgUiEyv?=
 =?us-ascii?Q?l5xj9iCakxiZfdvi9BOzDQsLGWkHKXnli7Gq+rBoUnQGdXBgk5NNE5fn+wSM?=
 =?us-ascii?Q?+XYxtncwyEH5fNWHfkwUeDFxQ8X7RqePItmVvJxoF0D1XHKXXR0l9Hxe3AvH?=
 =?us-ascii?Q?bKFuzl1I4iJaptW0OOouV1u20W4L0IS0wOn5tQOPvn3SuqTRWffwN6ozJlsF?=
 =?us-ascii?Q?aVKMCuBCZw7oa+Fd28Se+4fjOqsvDLO9cCYREMYY3ZwXvu9UOLc8bNtgdlxo?=
 =?us-ascii?Q?Pwi6gEKZcBgVHg5E6P35phR3prBeXRONjQYsBS2J5Jx9GinaPIxg/GSub7VA?=
 =?us-ascii?Q?NqLoyvQO1jovU1JD+gk93ioj16y/2nLFwZZymgPtpJlGkm7446WgH92e6YOO?=
 =?us-ascii?Q?0sy06kXCm8cYqNEDJbD9FRxLerlVzyQzx9AfnxGYKye6SQ6yanatyMCz7xiR?=
 =?us-ascii?Q?wmxbzSvVhBC0V7z630Iq/IYXzXIBKT8DqLXagGc40TU+cKU0Iwhv7fJdnSmG?=
 =?us-ascii?Q?vPRSMx2wG0Ol0cOc30jlSLuy2uIEdPLDEN+hHh3+NoDoN+Pm43hgazkUJYHy?=
 =?us-ascii?Q?XmPmL8hOuWjYXWSdhIfl5DvngmlIZSlP+/nZiqlr0TkDPpqe4EHtv9e6GnIj?=
 =?us-ascii?Q?+zP7GpjC6iqLTiKv4hZgXEIScf2NldCZJuL99n6X4XZw3PUQIKXw8P8zm0xq?=
 =?us-ascii?Q?sn3lSH6TBaAp8XVXUzHtz57oMyHRu9Vu8GfxrLt8PDV0zUbZGdEWrqJTzmB/?=
 =?us-ascii?Q?TgbuZGNs1VK96p3weatS+JyV6bCnLfrGbtBQLwaC3xv+EUfKn51bxZznbn+G?=
 =?us-ascii?Q?NQEiXfqDHHQZJyv7B2Y/DOtiBKudwrfPDyyt1hAMn7TfByiXo/tC1CbrjBea?=
 =?us-ascii?Q?HLAqcDlZxoTaiKan1Du94I5NTJmmxEYLIvWGyEpNZl+zhrLjifg0PYfUFALi?=
 =?us-ascii?Q?068n+fUPtpMOhQkAPCbIhv/8olqnN/dBMlG6i2ggNGQT6aEJmmbBbP+XK9fm?=
 =?us-ascii?Q?KMNmOPbmUU22ynv1jAU3nqFrzctCE4JdEZjV61iJId0G9BHsmkK9X9Glzxbp?=
 =?us-ascii?Q?reW7k8UY1Xi0nfp4Gndr7r+1kbjTDd9LPfPuubzQFP8c0lSQIKXvrldyer21?=
 =?us-ascii?Q?VzpS6xGnKPZD4AkBUhe1OeWAfppZoGoR7kTJFyU4HLmCXpaFZ91H3CbwBjLU?=
 =?us-ascii?Q?oEQEQcqvsJrmeSY5C488YJZEDRUY88LG/eesU2F9HwTbkIspePNMase3qItv?=
 =?us-ascii?Q?241i4cQWR4Nj4JIrQqDsnkg5PPEv4LXbKFkmVZhKaSKiE6pgp4LQx02MjgkK?=
 =?us-ascii?Q?Zqfh0DHx5MlOzxHBp6TtaTWOeLgRTPr5IDBW3irqpw5fMX2WX5LCExq1Slq/?=
 =?us-ascii?Q?8RkwTXft2ZH25ygcqUlWGUndJS7TkJ/1fvsWKkza1X0PybABx1xrl2Mt8cmZ?=
 =?us-ascii?Q?5byVB5VAgtPUclEbjwJdldi1Gz4P5U8iJNAWjEDmGChjq/1UH9gcGY15Rqzc?=
 =?us-ascii?Q?dZ0LRQA9ymf17+ntWv2rjHW54HOKq41T/oPLkU7jPZOlW3Mll5ePxFvv8ka2?=
 =?us-ascii?Q?e03Yz7rsMXrsuXneD6eYA5T0aT8UQUAkyjq8FC9IzV4dwwmgBE+obqx06g+j?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d1b35d-8374-4a62-4cad-08dcccf49fc9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 15:17:00.6660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p0duMQcdD31+9lTM8fV8HJkSF9+VH1xQii9NBILx+f67/s1gHwOWOKC9Nm4ropF5Ux9zUBulOfOKNOLRXr4JBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7847
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

On Wed, Sep 04, 2024 at 12:02:28PM +0300, Jani Nikula wrote:
> On Tue, 03 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > This series aim to bring a bit of clarity in the display PM
> > sequences and start a clean-up around the runtime_pm ones.
> >
> > Specially around D3Cold. There are some ongoing discussions
> > that we wouldn't need all the sequences that we currently have.
> >
> > So, let's at least split them up to separate functions so
> > we can individually scrutinize.
> >
> > For now, I removed what I'm sure that we don't need in a
> > d3cold scenario where we lose power and that I could
> > validate in my DG2. Any other attempt to clean-up further
> > at my end failed badly DG2's d3cold.
> >
> > But again, let's at least bring some clarity on the
> > sequences before we go even further.
> 
> Taking a step back, I can't help but feel this is stuff that should
> really happen at i915 display level.
> 
> Yes, i915 calls display all over the place in i915_driver.c. Just look
> at the display/ includes there.
> 
> xe now duplicates that in xe_display.c. It's kind of better, but really
> not.
> 
> We should have one clean interface to display probe/cleanup and
> (runtime) suspend/resume used by both drivers, instead of adding
> slightly different glue layers to both, each directly calling various
> parts of display.
> 
> I get that this clarifies xe_display.c, but that should also ditch
> almost all of the direct display includes.

Yeap, very good point. I'm going to try to start wit this
only to get visibility of the sequences, but then try to align
everything inside i915/display/...

> 
> 
> BR,
> Jani.
> 
> 
> 
> >
> > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >
> >
> > Rodrigo Vivi (4):
> >   drm/xe/display: Spin-off xe_display runtime/d3cold sequences
> >   drm/xe/display: Remove i915_drv.h include
> >   drm/xe/display: Kill useless has_display
> >   drm/xe/display: Reduce and streamline d3cold display sequence
> >
> >  drivers/gpu/drm/xe/display/xe_display.c | 109 ++++++++++++++----------
> >  drivers/gpu/drm/xe/display/xe_display.h |   8 +-
> >  drivers/gpu/drm/xe/xe_pm.c              |   8 +-
> >  3 files changed, 74 insertions(+), 51 deletions(-)
> 
> -- 
> Jani Nikula, Intel
