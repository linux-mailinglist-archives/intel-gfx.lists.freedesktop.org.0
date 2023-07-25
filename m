Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1DE761D0D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 17:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7962510E140;
	Tue, 25 Jul 2023 15:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3680310E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 15:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690298017; x=1721834017;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=U9YE98ndBb2XlQpOMltk+R0VkZxcHHauqApjimFetFY=;
 b=QUC+5qi3EMIpQMy9IP0Ul2uak4F1iu290kd7f3+WuYq4Rqsq5uz/ZZBL
 n1+1KJfh0y5ASPZXT4MxucxlV/r3Al+ianl8DUs0ilLvudw/aUinx3UoO
 igaBeJcJN50YtDwCtc35i+WCsoE8Lw9Yeoa8r1yqTNcgyaCRtXB4CCtSC
 2DLfDRQfbAVXm1dfY/BGKh2g3k6qFUIqsyjgS9L11eO987qYX4nRPbxqq
 yW0Ven3NBSGDe1deLi7U6j2cD10SNQRbYM/sgf1IL2CFJgILJLZe4Dp5L
 3ogTqkWZ+6vHryvgAk6awhSQuqIUQfvlOB4HGCeejSLU6R9zAcJod0ASN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="365219164"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="365219164"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 08:13:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="869509015"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2023 08:13:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:13:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 25 Jul 2023 08:13:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 25 Jul 2023 08:13:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 25 Jul 2023 08:13:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TeeXZugLSFNiNRHxG6hNPWBY44i8TbtqOdF30ANT4hKgtHiNzlXJ9Hrna2pIQ0r5vFNeEhtdPV3E3mnKcSeAWK4u93e0pg2vuv0iQgCd6nHgHNRkbQXyKUBnaAUGhwg+YMBcpyCP0SXLWtItUEVEdM+sRzUAO0a2u0Bi9qGZ+DkI6hhq2W36rzllkTa2fPGIbIHbW6stWsm+UryCUGxbX7unLs5e4fpuFji9dmWZFytdfhZGbMzgQZrNsMceWg4Gnto6SzG+PJHZhbsKyP2WeRDZlgzcqUY6R71DMalUA7gmrgOXWu4HOeqYmGiwcM+IEeQCRVCSRC5FhPO2ppYLoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6UpmHS5xl4Ejcch5PKJ8luWl4gdxIjnueNT2RpsGPWc=;
 b=Hun5IxKOpeIoDhcgeZyBmBaeEphtisOylpnv+Zod7i/pZiGyPlpBhY5qtOX5l/xlLGAPu3Zt9DFEvNYqsQlte1kSptSnCnayPCJOMh7YhRJ+W5v59aeQzoX4sWqzbNzzkbHbXo7b/9FDos60kwUDVOcOAwbwxGCPv7E7lhr1gyeEtoES4c4UnGXXsEw85lT5iNiXplqfgXN6ZGkAXW+kedyTFzY/OH+RPdwH4Sr6YsUZlxoc32u8oaxJ1quiEfRp13AE4PCdEMBrLTiWuO+gJlb8K03DF+Z+jUOg5Xf+6GYe/my72p54NrfeIAgYHquy0M4sD08a76kSD1NHvhuc7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB6867.namprd11.prod.outlook.com (2603:10b6:930:5d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6609.28; Tue, 25 Jul 2023 15:13:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.032; Tue, 25 Jul 2023
 15:13:28 +0000
Date: Tue, 25 Jul 2023 08:13:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <20230725151325.GF138014@mdroper-desk1.amr.corp.intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
 <20230725001312.1907319-12-matthew.d.roper@intel.com>
 <ZL+UHpaX+7Gz2SO9@ashyti-mobl2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZL+UHpaX+7Gz2SO9@ashyti-mobl2.lan>
X-ClientProxiedBy: BY3PR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:217::33) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB6867:EE_
X-MS-Office365-Filtering-Correlation-Id: 296a8a58-9310-4617-ec04-08db8d21b330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tPRwU/mOVI4zD9J0N18J1ZpfdojiyDTVCojZPBqMw70APdhFXvZK/G+tCWOVKhFhgjXMSbK4Yb0hUfufO+mxclx/pdUnHc3JvpK3zCHYBl1mMHm96AZZmTCI5LQOng7vGvQC++q4m4zXe21x9MrUu+nWoDjMa0nuBoHNKoDQAE0XZtTPw9e/n8iJbswoKmkUH8PfxMwT0ZObFPsZqd9NtuSRydXPH5jLQyV1zsxnDMDHYbvTa5yAIIbrQ6P9CA8r1byrAbqD9mBImPXASt+uWTrzU7ofP+V7T2TcPnmyHds4E/M1e8Z4ZSqoKHw0YnMVWH8wnPPGIJ8Du7jTgBI+0vpVW4gF90cAobWEu2Ho/5oNMlN8fCQ+3KcGCSGYovKn1Mb4y9P3hYEoSd5+EECDpgr9pLChwLFAdMqHj75v35R1upPj40KkfjRs1TfLtlwGXWbyKEvXrarZVV0RByFprWhRphY7+2m/r1Gc/GauRNEbNXFEBnwaSI0ZRNtRrK5sSU+eu3WPrL62EiNY/K3xUUC0wPXiXJX7ZwAOYVryUxlgF78UPP5ip/jrQjKRfInc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(396003)(366004)(136003)(451199021)(5660300002)(8676002)(186003)(1076003)(26005)(8936002)(41300700001)(6506007)(33656002)(86362001)(82960400001)(38100700002)(316002)(6666004)(6512007)(6486002)(2906002)(4326008)(478600001)(66476007)(6916009)(66946007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vt8LPTQD2i/ghBtt73nlx3uXlyQw6e2wi3P1pUxPjk8biA6wWkyqLXO+/sZa?=
 =?us-ascii?Q?8pKDcxDy3ma6WJtV5B8j6nVNkOkzkWxGuqiNVwXlyiPaxzGL1Xcz0Jb02d1z?=
 =?us-ascii?Q?6pADxSQ8vdoLHR7qc31nnsOa7elq8JzgYy+uDn96+afBFP5CaqAlnUh73acs?=
 =?us-ascii?Q?qzXoXtugq5EvZCdNrkAfwNi9svJJpv39SIeT5CpnSa7sPghBONcz3+nUqmrj?=
 =?us-ascii?Q?vlTXHCmRG8XZuV4yvRbNl84e9JEdpxMGloYcjEzXbr8gRM3M+Aie/C012FS9?=
 =?us-ascii?Q?kdtUlNLUnTlY2+IDXTbwJSEJuJQlm64LKCQ4cS7KBTA9wEA+y5x1G6EGAu+9?=
 =?us-ascii?Q?sCDFEKgKtvE8ZMZK9YZ+TkmhcoBKSslmtQ81Nc7wFV2HNEhDbaywmN413hDv?=
 =?us-ascii?Q?WKttGmaSEg3b7RKm1n0jNrqejGEXE+0W91UKwfpKpmEfcjbwr13GeAA1rf+P?=
 =?us-ascii?Q?6O8GxrdGQh2IRgNAxl1PXpvNKB8JfrHPpaz12ih8hcUimksp6ctCJi7n8Ti3?=
 =?us-ascii?Q?+CgK8vp2vL5phLKbo8Hd77kC+r6HgZ3FzkrhSOdDSZqM7ZQDwqfmoiiNkBD+?=
 =?us-ascii?Q?R81aTXBcNVbkJ0OXpFZa7/KLKxbe+WUb7KNVxgcBcmuFLiyEHfpRA4hcU1Jv?=
 =?us-ascii?Q?HX9lYGQ41kybdxxTCnH9djNW2+yeY8qZ0L7fmFKhpR2fNz9p0XavXJ7ynRZh?=
 =?us-ascii?Q?KazdpTmqOv8O7o6wp3ktNKkUd00gNeZ4xl+r7CSktQSpfaoNDeKSyzI26Uyc?=
 =?us-ascii?Q?Mo1+KvhzhTKuDQdjdNNZLv3VecmvLjdg2Mnp1Y4GaPVc1zMOYGb/MvVaDwgF?=
 =?us-ascii?Q?Cu1RG9jQxiTtHu9AVA/HVUooy8HBwMDDw+ANxsGuOqvx/Ok+JuZfNdEVTnXk?=
 =?us-ascii?Q?wFrKp6kwo0m1FrJZYxUJi1i65fINCwxup9rjE+r0HNURGd2zsCAEopYmVUKk?=
 =?us-ascii?Q?sFrwqxaH97C+vG1ZCG0nF/x8vxRHdlWCYGxPQdgS0Gi+317tgIkg3yp5QlgG?=
 =?us-ascii?Q?C34xMy+Ckm78j7ORHy5F1k1RNz00SIL8CTJVp3isx8Bsje+TMOA0lRhVR5cZ?=
 =?us-ascii?Q?ewBgNlGQrPhAq/ApELtO00jYeypuYVSDjs2fTnzqtfi6tV9ChluWsrftVgtq?=
 =?us-ascii?Q?ixEMrVLw4pVwYbNf9vrJrRibZCF5O88sRvMCmIlZBSmtQRIbjwj5AsFi5bVT?=
 =?us-ascii?Q?y5hKSdmiXPFBkokrvi/Oc1koMHaAZMNVCKbgDUFVuNgXeL7fJrew48+jboC4?=
 =?us-ascii?Q?YiXGFoWT7zUUgSpkFMw8BBeeeF0gzhXfvz69t5LNhREnmHFQySgvaCq93UyU?=
 =?us-ascii?Q?qXBwdBjdp+DTosiWepL0b3EGRxkbG4aWa7ttybh6PfajjXw9eCGxoxCACDET?=
 =?us-ascii?Q?G+m4ACtg7gazOTDDVh2eofvJVdBr65EJyZMQZXRCAbSdodaxUSNOjnFuMyQ4?=
 =?us-ascii?Q?euLyA8yD+yl4+u5+cuIQt4VDuRs+/CcNv81+dTwEXmnvhxYu9AQ1w6/qT/zl?=
 =?us-ascii?Q?6mKFKuIsh7xhSL3X292p2GafJaBJrq2jI1I0i0ONfLtbZ5PoE7knLY6CHemm?=
 =?us-ascii?Q?MFF9mq6tEUhXTnbxWY5YsY6IzTOKSv/luNAsC26MgwkfAhM89U79WQeHsFY8?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 296a8a58-9310-4617-ec04-08db8d21b330
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2023 15:13:28.5201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d4PB3+ZuZn2N4hmWcLbr2bveCXmX7kZDDO2cUeXOGHkNI9YzzJFNzdGP+H1kmMAwmw0B5bjtxFxQTwDEtWRnXlvwRxZ8ZQ/7Dl/VD61teh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6867
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915: Consolidate condition for
 Wa_22011802037
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

On Tue, Jul 25, 2023 at 11:21:34AM +0200, Andi Shyti wrote:
> Hi Matt,
> 
> > +/*
> > + * Wa_22011802037 requires that we (or the GuC) ensure that no command
> > + * streamers are executing MI_FORCE_WAKE while an engine reset is initiated.
> > + */
> > +bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
> 
> I've seen this format in a recent Jonathan's patch and I see it
> becoming a pattern in the future. Should we already agree on the
> naming? Would intel_needs_wa_22011802037() be sufficient? Or a

When a helper like this is static to one function, I usually just use
needs_wa_#####() as a name.  But when it's exported and used in several
files, I think it's best to give it a meaningful prefix where possible.
In this case intel_reset.c doesn't use a consistent namespace like some
of our other files, but intel_engine_reset_* seemed like an appropriate
prefix that clarifies where this code comes from and what it's general
scope is.

> prefix as intel_wa_* for all the similar functions?

I had a series a year or two ago that disassociated workaround bounds
from workaround implementations and changed all workaround conditions
into something like 'if (I915_WA(foo))' but we ultimately abandoned that
on i915 and shifted the effort over to the Xe driver instead (where the
"OOB" workarounds follow a somewhat similar idea).


Matt

> 
> Andi
> 
> > +{
> > +	if (GRAPHICS_VER(gt->i915) < 11)
> > +		return false;
> > +
> > +	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
> > +		return true;
> > +
> > +	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> > +		return false;
> > +
> > +	return true;
> > +}

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
