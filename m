Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 724F7761E3D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 18:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E411F10E152;
	Tue, 25 Jul 2023 16:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8680310E152
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 16:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690301805; x=1721837805;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jwJ4zKaUEI2QVFUO9Rb15ae9az6RaNUd3ZVu6AMfL5o=;
 b=Jn0cmJhKEd258vBFgQrAl+LzULfSOrKZNVrwulqztJAUhOngCwWe4kpF
 ZzrzY0dvEGxf8i1TPGCIYtWyOCllmr8YLQtXgOW5am1Z+dt1JzZUujhKx
 j8Jk/aqDtRaKckC7lXzgBdGZo60rOCW0nYTdjd64JRVpFuq88twCEQqNJ
 Xkm7BR1O1G/iWmR3XkCFKbp6IaGF3DuNArryrSt28fwFEPGvlc6Y3sOFs
 ioR2CfP1cunKf9Eu5soj8kcO53lv5BnWzyZZPyO9Q/FFP5ST2VPXT3i0e
 nfeb/QCkh38HDT8YGpx/8zjdXA7yXFKHqrnCZnSIssWBWrWT6AU884rnA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="367804322"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="367804322"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 09:16:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="676283171"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="676283171"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 25 Jul 2023 09:16:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 09:16:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 09:16:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 09:16:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7SB1ahoV4nmUEjPihkkqi3RYWfwRqykblPK2Vn7q385BEr737ZCYUHGAxnA4OgTFXa0J1XE5hvxat9fCCw8KgN9w9R9xG2JMTHCHEDzv44fsIQgQvs5iUj/eWLvPmrQl0XzX+kv8hLneGdvpmzwE+w4jMFOtvUvZZ7cC+ugDNZDp9XcKAbU+yB4+8wdT6Cki13HegsXUXrocLHZR3MU+0KpbtuYy+97ONRvZQ29vhxhxDGGGFB04Ve3sx44w2Nc/Z3Bbm9EBGB9lErk7ibz7uKU5gjwDYZA+vXV32sjlR0uv/au7j/lok2YXQiQZtmlTvVY38C8kJEzDAe5MhMEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zLSMIGTOaldEmrEKIcfLCuxnm/27XWtNsSeVwtQXjFw=;
 b=cy4B0Kp1HfWpzwo2PlbrXEc0tK9HUt2uqphgLOnFYo1bI+wEvud2p+ErAXKdQAd2dkq88BKV3YunOj9SmrqPq51vQBk5GimcvTCOKLjE+gDsNL+V9a3XHsyVzCuZoAIRTOO22nEp/FmR6AAv+HrU9e0WQFjUuD/I9h9G4/TLfv2otXlLp9xeUSv1yxaMKB6D+/hM1FMXpOGfFcp+92rPhqCdU6OEiW0W9XeXY8lMxtAugJlnEe9NrwP0yhgNU5W+nZ5mGefY7/PM3FyQap1XJwxMbNt3PzdZZDq6YNAfS1s9LGvUnjIkuXaIs1HvMWVACvs+bAONNFr87hWDuQuJNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB5562.namprd11.prod.outlook.com (2603:10b6:610:d5::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6609.33; Tue, 25 Jul 2023 16:16:27 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 16:16:26 +0000
Date: Tue, 25 Jul 2023 09:16:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20230725161624.GK138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-20-matthew.d.roper@intel.com>
 <ZL+fim4rTH2zo+1u@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZL+fim4rTH2zo+1u@ashyti-mobl2.lan>
X-ClientProxiedBy: BY3PR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB5562:EE_
X-MS-Office365-Filtering-Correlation-Id: c063876e-90ee-4b7e-6fce-08db8d2a7f37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dKyLomJgBgeIYzb52qbgLz3zIGx7lwXnJkljyPqnQfiYHIuh0gIKmYgCnnK6Q4B0rovDc35ESMIdYQXjxCg4XCwPXmP5pw2DqzN3qkiuR+jeyyXPebglg41sVZGIQQMyDM6vr3Y9iIBZEhV36kau6nyfOMuFg6pyHac4cfrv5I/B7fOgS3a5/1b616S2T+jNkVQyevjynz7UoEf4eivJlw1R7jwryW5zbyjrnGIYWnfbdKN/H7ds+whaHkLpkH6rnZIHKfbvfsD8SY95nWXeyhJyV9iAIkjEMpJs0hlfgEQaEIMUNbOS11LycBoIUSINIPyW3oCu0oTH4eC9H8JlEvXiF6BzAECcnwY1rl8QAjf7LiQnVGA6WxZamx8nHPZ1mLh5KpafobzYaVe+c3pPWZyxCVUh/9YZQZOaw9sa89Yd9ffBH+5CCnh+X+oZRvFn+9nTvkIw8A0cZ2wVcWUcdN6gqwB0Ym66Yo42oNH/RpT7XVYJm/WD8waolJxaBlmFXEqyyuA8IrsDfMcen9dGuA/lwBU2rw8I+BDubm3LNfUhL+liIgQMzBZrM7buWkSM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(346002)(396003)(376002)(451199021)(86362001)(33656002)(2906002)(83380400001)(186003)(6506007)(26005)(1076003)(6486002)(6512007)(478600001)(38100700002)(4326008)(316002)(66476007)(66556008)(66946007)(6916009)(8676002)(8936002)(82960400001)(41300700001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pUmV0WRLNlxok9cCwA8femx0XQTL7dvtIR2winQSdXrqZNY86RqruWJRCKwQ?=
 =?us-ascii?Q?9QemdPtiMqIiyji7DxrcCXXJgnHWTt+qbIdAHjXafdkV3egiaBh38m3xkX7t?=
 =?us-ascii?Q?w3GNDweGRDsDyi/AIserZlIxIbI1y0+Nyy9IEG16qd4pzAub5yNMViP73DXO?=
 =?us-ascii?Q?WJIim8wllU/DSNlmnzi+oXtwGXV0oHrZc57cOQ3A7lQ1qTVy8peVaA03YZ4D?=
 =?us-ascii?Q?S0+znt4hoovHh4zPuzl+9ScXTu+SJvNTNET1FC16FAeA9NraXZzaJU0YWL3+?=
 =?us-ascii?Q?Hn+pQ9kGRanq4XqNvKf61WWK7L4Qz7TlOkbrpFqqnf0wqpd+x+aG+NxkUAK5?=
 =?us-ascii?Q?e8PA3OLFGo4LMz2Bkz2WP7h2i60agocluTihs2pTn4YZEvJ3QiGuPSzEGupR?=
 =?us-ascii?Q?irPDCgjoN2BC2uom8ymTbrqs9Hqlw2cdzPdUCSkauY3DTL4GLQ6jVLqwAgmi?=
 =?us-ascii?Q?cGXWNAd6BCUKN4FmJnlR99feD+g9IMI/aS2ys6IY2JMIcaFR03VAh0nCvA8O?=
 =?us-ascii?Q?FnL/pCSn/IdSrsnHFEwpbmGUZdDC9yWj3VJ3PuwPbbD73yDv0vUOanirsWZw?=
 =?us-ascii?Q?rAu5qxoYWrdvGTeSoZvFkJWk8e+AKz/XY8mvvqkF1/7KdOC0unEduMjK2CCo?=
 =?us-ascii?Q?HtCYQboJVj6SEub9UcbVCtV2MKF5XHL5VV+39qiETu1DE2ODfJfObl1oMlq3?=
 =?us-ascii?Q?fVfZbXyx/kidywJLTMIlVg8++ykFLsA2pZclDmSwBaWc9Q7uBWqRhEn7KnIk?=
 =?us-ascii?Q?fIjTDGsDGRcGOQ9VwNw8ytsT97mVaXMGFmgOmncIcTGCgUAbXQ20Yi/41k+X?=
 =?us-ascii?Q?R/0yawNiruR5YSWXaj7bE8YXKoXvhpAu4LX4c64F07i3QYScR9+/ABRhsYDZ?=
 =?us-ascii?Q?Qt27yeCjIZIQVziRHX8gun2qTTZVoiE/yJ/brtJHJFZmSD+K8ScbmxUGCFJV?=
 =?us-ascii?Q?4ec4HNmi5FxPP5BtW8ZeVDQC7Kzbh41uu7enRjTOmiFt16yi0Me4fdc1KluV?=
 =?us-ascii?Q?xBshgL9MffmnQCAhsZK2w0AbNkF2cpwPfufE7RpRnWTHdr+3bonjdj7SGnyc?=
 =?us-ascii?Q?Y8nDSSAlGKkWya7mREhUJDNnXpjZeI33L8mUfL3fQSfnHV+sZXiibwU5LylI?=
 =?us-ascii?Q?uEFRnoam1topq0txP/Q478GYD0lUs0wgZ4RNmJ8lmQWvuB3vq0pTXC4sC96E?=
 =?us-ascii?Q?ewqHMSPGzLbAE8q5FiIZl88rTiBW4tGByrxGQgkectYOypvi4IWMrLpYe2b8?=
 =?us-ascii?Q?Iff9rM55PNodNV0laLtp+/SqAlWYF8qJ4zaPS0QCmPx8s0Y35JBZGqFUTjGG?=
 =?us-ascii?Q?n5/XlZPOFu9t64KxL3UoSJR5AwWPgEmTzHBqWi+xrfnm4N8J85CA5pVM/J6c?=
 =?us-ascii?Q?+anV+GNFSe+7boX13ti2WL3GiDhgr9tbgVmp2vNDdA81UidPNY1esUUmmkDk?=
 =?us-ascii?Q?2rJcVhC691YD1ltl33cZhD8UO24ZwrHtwbtplU4nH8CihzLJ0oDKU88juPl8?=
 =?us-ascii?Q?T6Xm8BKahn/JvcNy/7u5YkJRfsoaZJfAFXqSzZ0yV/x21Feg10xZj4tqQo48?=
 =?us-ascii?Q?1jkFOFVg2y/wP66hSjHY5FSe9QGd/DsCf40BxQqi3c/ZUv7CDQjei8CnA1yI?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c063876e-90ee-4b7e-6fce-08db8d2a7f37
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 16:16:26.7227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0C3/t/N0jamM73XyhWqghAR2PuAkDlx0TOaUucWAdV7QcN8AU58mRZaUvtee5ps6O4XoPTMdM8gRxeF62dcrJCUnC1ZyDS89JIDrAVzx0pU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5562
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915: Replace several
 IS_METEORLAKE with proper IP version checks
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

On Tue, Jul 25, 2023 at 12:10:18PM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
> > @@ -470,9 +470,13 @@ enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
> >  					  bool always_coherent)
> >  {
> >  	/*
> > -	 * Wa_22016122933: always return I915_MAP_WC for MTL
> > +	 * Wa_22016122933: always return I915_MAP_WC for Xe_LPM+
> > +	 *
> > +	 * FIXME: The scope of this workaround is too wide right now and
> > +	 * is applying to objects used solely on the primary GT.  We need to
> > +	 * take into account which GT will be operating on the shared object.
> >  	 */
> > -	if (i915_gem_object_is_lmem(obj) || IS_METEORLAKE(i915))
> > +	if (i915_gem_object_is_lmem(obj) || MEDIA_VER_FULL(i915) == IP_VER(13, 0))
> >  		return I915_MAP_WC;
> >  	if (HAS_LLC(i915) || always_coherent)
> >  		return I915_MAP_WB;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > index 21af0ec52223..24060278e7a2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> > @@ -21,7 +21,7 @@ static void intel_gsc_idle_msg_enable(struct intel_engine_cs *engine)
> >  {
> >  	struct drm_i915_private *i915 = engine->i915;
> >  
> > -	if (IS_METEORLAKE(i915) && engine->id == GSC0) {
> > +	if (MEDIA_VER(i915) >= 13 && engine->id == GSC0) {
> 
> this is a bit in countertrend... why isn't this
> 
> 	MEDIA_VER_FULL(engine->i915) == IP_VER(13, 0)
> 
> Like all others?

Generally we always assume that future platforms will inherit the
behavior of the current platform.  The exceptions are things like
workarounds (for which every platform or IP has its own unique list and
we should never inherit) or things like TLB invalidation (where an
overlooked hardware change can go unnoticed in general system usage but
have serious consequences).


Matt

> 
> Andi

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
