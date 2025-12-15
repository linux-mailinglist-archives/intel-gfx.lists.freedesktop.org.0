Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70919CBDA10
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 12:53:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED80710E459;
	Mon, 15 Dec 2025 11:53:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="inSQw5uh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F4B110E445;
 Mon, 15 Dec 2025 11:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765799615; x=1797335615;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=0w6CDC6fHyXlxZngHVFizrVIJJXd/temSo2++f3uX7s=;
 b=inSQw5uh5Bvs1YS8udeodMh+D6X58gO1zVPyrX0zzxV4hw9Fv2EoF+pK
 pLFETLGfzsdmDEwRubDO6DfyErAbeI6rvrny8aOsSrtb5C0UIJh1w4xO4
 q2PaWyB4fY61Pm1FUHdHQzC3oCuuKxfOEhJiJEARYVHVmdqeUqiNkiD56
 mp3hwiwDUxzMgikcVyI4f9+36EWimADN9NmT9vpC7OclFr7jfmxFbkXA5
 m3LyuL4mnktQuB/hMMImZmTerkY8txuLoVkUjcsgI5owBhsx+1EzaVz62
 O1RhtJAW2ILcn8ocX+wtgdGoz2D1MVvaBQQsjNsQcbfSActOdbgRLiD7p w==;
X-CSE-ConnectionGUID: MoYwuPXOSAeTjitkzaNMTA==
X-CSE-MsgGUID: 1gjBWcXlS32sdBWcLV3SgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="67659931"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="67659931"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 03:53:35 -0800
X-CSE-ConnectionGUID: ohRL2beGSyWox3Bp3hSWPw==
X-CSE-MsgGUID: W5JE8+XvTaGAJcNyvoXXrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="197973753"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 03:53:34 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 03:53:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 03:53:34 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 03:53:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pTFMXMUVNYkEdpz7zf2GBsPrKKak6uxgcolZgUwen7OvE2KEv6o2e8/0IkoHXOQDbbmt7OsI/APLm2Bjv8gjpg4OthQ6UNqtRWt7fKd+8+ACy324s6qIsQWeTtfTEajbaxlL5pNzKUq0mBdD6jLuGaHuc+LKQkaiMY/UGq4v3+NM4utMiHloU2X8o1hn3LKRpSiK8tkjGZhS/zA4uupBlRGKdLDq9QmSaMn+3Zom5SW7TjrQLOLqFtDzBXZsyXMf2meS/HyUExI8TaBLDrAK/hEyQQjF9p47V8UL9fFx3pHoObv3qZFGQBF6RtEKwepMT5EiMPRtdaCEO4w8ANMorw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8fmBCE5jX32venFl9DaX/m63R9EmrYhmuBfw2CMmYQE=;
 b=BH6MOwxwA1S2aYI65k6rs9ubByEBSeIaeqX+/5L4gp8e2RVgwizJPbGQnXiVAryjbVGXG18ku16KF7fJWx8hs/WqN57hzc6AGIm/Q0Ahn73MGEGfmcIyl39/1i0QUg/X1S2qjaILXWFsLenvnhwo/m+qwsaLvBsMTFvtbJkbJO8Zu5yQMjYG4TegNznEoQ4Boyvr1IQrEWB1cXKhbmUWPycEN05GtADut6CFVsnrMfk+yHnEjy9WqaxULe/WTCuxMiayAXI/um+7fVJ+FM/Eh2bSo07vZJhzq8ovh3lth2w5z4aDLcOQNWq3m4EFc+NUwP3X3NbYAA7KWlD+dJZEew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPF058255456.namprd11.prod.outlook.com (2603:10b6:518:1::d06)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 11:53:32 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 11:53:32 +0000
Date: Mon, 15 Dec 2025 13:53:27 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 14/50] drm/i915/dp: Factor out
 align_max_sink_dsc_input_bpp()
Message-ID: <aT_2t7DhxNmURqLc@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-15-imre.deak@intel.com>
 <bd03d373949f5cb07e6b5d9314dd002fe7483be9.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bd03d373949f5cb07e6b5d9314dd002fe7483be9.camel@coelho.fi>
X-ClientProxiedBy: LO2P265CA0355.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:d::31) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPF058255456:EE_
X-MS-Office365-Filtering-Correlation-Id: cc07486d-b8c4-44da-f086-08de3bd091e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nEVw0BbwU0E6yc/KwW8tHFeZsICqGdOubvnTlikGdL0wcDOGz/Pd1o/ZuR7p?=
 =?us-ascii?Q?fDNLPoU4nTbqx4X+350+eUMCB09NuJ/BwmhyGtHgerBdLWrq2ZJYzMSk13cE?=
 =?us-ascii?Q?xY+Oj1qfbbiwf03Rc94Iy87pAwMchmNj/Qz6BAhneWLCY4Q7wrTJ4p7Qh6NL?=
 =?us-ascii?Q?XIZFINuraAEjJAA+T819+1iPCleOefvbMwpmzcULE28zXCn2XX88Jx7QybBU?=
 =?us-ascii?Q?xzbgs0QaGpsC1JZPfiflpIH9yj/6D8oIUWMWN7eZKVXvYSl8tSxCsDdclb/n?=
 =?us-ascii?Q?ICCkZZtigAJpSxlNfH98vAlCgDGQmQEgP185zb73U/TNr010R8zeFpPnpFL4?=
 =?us-ascii?Q?aqbx3LQMEg2jcoPjzKXEJyR+nl9Vj9OlV8WISrW7iasc5pXl/d0xifHMk4MG?=
 =?us-ascii?Q?QoPhb5XPiElbJ7OHX3mdt9botvPumCIK0o6uosOr9Ghl0rFFJHUIz/3hqilG?=
 =?us-ascii?Q?Kr4nsMHh2mHoc+vMKKjeS5JawK5OYxRpnM3cZrmvyjRtGRwMRhxfxxZAOJ8x?=
 =?us-ascii?Q?v2ZQJXU4a1MwQoPelYcZMGxMV95FdMDQz6B9Z4veWg990nxPiTa2JBofY3eg?=
 =?us-ascii?Q?24HMMdOxCZzmIVXN/pa3WgLX3EgVbVxjNqBe6MY9B04LiJKgFB1lURK1zKZg?=
 =?us-ascii?Q?VCYIv3d6OKaTlGC3qhbzLij3ezuvjF9dkToNWD8E9qif76tjWvCbwli22qBb?=
 =?us-ascii?Q?hR1gP+kCPXzI/GyOl2xsS0lx7Pcxyi7zrozuQUqzGx7G94/re+4Us0N+ktyB?=
 =?us-ascii?Q?4Fv20xf5IMCAptiSLTlzj9Fqb9qv2fuLRBAqnc84YavfcXwyy1ZnZ+ZBHrzk?=
 =?us-ascii?Q?jpzECPi0ru/EE+OGoc6bqnG/VU2kRDfjmH48xiE5G1PyVvwfccoBT6HDxJPZ?=
 =?us-ascii?Q?QrQ7ujsisKPp1wvfNO5UoHbehxUpBg27vpJ9AWP+nfqcrCWpxHb/mFpx9fzR?=
 =?us-ascii?Q?hEa4JUfcFAO2kCUQO0Q9nCazi6BC3iuc2PfMGLw9cLfYw4nv7PrxoTpo0RwW?=
 =?us-ascii?Q?NX6Gl3jZGZk1w3iQQGCq4Hnl6Yq9fejf/94CWljWa7QNPG91++NPwX0F0sI0?=
 =?us-ascii?Q?K6UIy55M0Go/HmeQEGFnzv02uWA/OVDiytvyNfbiP2NEZQkcpwK33hwNxTV6?=
 =?us-ascii?Q?Ycjy5PxE0GK8VHmMD307PqdkAAz0KL8MgZVKh1QQwlW/D5s26Ty1rdEi+6Z4?=
 =?us-ascii?Q?+LHuVLuw6c018NMF/ig8jRUf8g0zQvr0F4ODDGM2jlhVZqSEdpIf6YBmJURS?=
 =?us-ascii?Q?AlY158QhKGQmh/hEpYpPFyLLM052UgQxvGLPjWEAYvFISSRdnhnkgQ87eZYl?=
 =?us-ascii?Q?WvvKKdI+nfTGsOoJUDvQORF9tQBmRZUWFNAOH4yn9Xv1yKhPwO+d+yX/h4Df?=
 =?us-ascii?Q?gSCWlt/RWmO9hh5b5ssm6+aKKGxDOvGE+nWKqihRxEPEy0cY4v4wjGey2iky?=
 =?us-ascii?Q?Wrn0y318aQA1ejNmk0Gh5WMvMt32k9TB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tQBeirxIdPX15dQMrl7omIo1o6WmwSPqrBaLW8swRn9it2CVsoTGl3W737/q?=
 =?us-ascii?Q?yqYZkxfTlOu6T4N/d4A5DZ3ZtnH/SM0IaGaAFyzjuOsqHtYfpyA0d1y3MtWO?=
 =?us-ascii?Q?z3wQIqDHm3zfjIhFMfuT4vMxm/ELJD9KcTJI3AdfkqcmxixlJygm5N5SApa4?=
 =?us-ascii?Q?dbd3nvUSdZcTYUsE4opzgUbOF+ILX6FviUYFTVK4/k4c8ivZI/YvWiZZygZi?=
 =?us-ascii?Q?rq0jV3pbGBgW5zMKfSkq5hSbJmkGAmdyNOm6rZpEOd9zVISWC4ROjx6tfM+9?=
 =?us-ascii?Q?covLZSnAOiCyhGxkbJXrR1Sf0gq9ABd7ILX+ONsFf5mNwQOEZ7XsWOO7tbqf?=
 =?us-ascii?Q?l3IUjXGSF+hF5rJSKCxnquK0TVom89No/ChgN/iEwe54AqRtvX3F5cuTlPC0?=
 =?us-ascii?Q?mJ7c1E9Teg3ZYpHUpNbsr3zIUi1gL0cDGRtGEVQggq4kyJlCueLEoWdZdPaQ?=
 =?us-ascii?Q?HuISxzbU68J7rF/utM2Ld6M1shcAtr3XlN65TAEncv3HqbZ8vv/lb8n5jq6q?=
 =?us-ascii?Q?uFu6FrnzDWYsmpoJoZCtaSr0FUFd6kOUrUX14CHp7LginpRfH5pNkOCqNYmz?=
 =?us-ascii?Q?dBKi2SIdz5gfmqHl3F0YMK7RCG5Lqpq54LeefXsx9NOfy6uOjN2DwwsFvhci?=
 =?us-ascii?Q?Wt3O6cU+CMJXU4oRVdAjCDocslGX6YbdgP2wMciS2Sr9k0aYFzC87nAPM78a?=
 =?us-ascii?Q?FsWxmq9ZWLaytuVyJ1FlCA9kdeZku/DZm9LB35/DoB7cQskRGNXp3BCJp9DV?=
 =?us-ascii?Q?d7F58+zycAEpvAZZIwlq/gOEEtBmyZs786daHtxfYgoLFGyfdGlwM9fGWojW?=
 =?us-ascii?Q?CQyZVpgK7OqI/Cajtwuircd+BYoj88+5tNfDKYKC2FVWwX8TR+18iErpAqm+?=
 =?us-ascii?Q?1NTYXx9DfRdQxdXKxUsdZXMNdkngaEcMP/V7xGoG2fZgfIWLw7waPFgg1bzI?=
 =?us-ascii?Q?SWuOf3d+PlfOuI2oTOfSdgd7KaTQFeI6Mv+LhLMH9x4tGHtl8UaO9DaradMo?=
 =?us-ascii?Q?WjgRlVkUmA59l0azTlAV/+QAPUixnjkxPsA0rvz/thWg7ufPmLDJT1xV1b+t?=
 =?us-ascii?Q?gmXrT3fhR3I1BKnH6zna2wdVMghzzHo8Jx3gdUpD5oMJcSB3oijj2wAaBUQW?=
 =?us-ascii?Q?uNWXJGrkS5mb11rBEa4EDWb4XaPyyZA0Frm1xAZKqTo8bjGduIgnrD2xjiOL?=
 =?us-ascii?Q?rpTqrdc1DW+CDpBp/XVVbuuEg4Um2y9U7n2+tJcJxrI1VeKIBFhanp0NH2yM?=
 =?us-ascii?Q?CIB/fanZ/DgLEcLArWcLdZ5PvT2X70/DR5JPV9etenBEHgY4fmg4VLSNytMZ?=
 =?us-ascii?Q?dQgHWhPp8XMfuj64Rid98+38n2C7ckfdQ5AnM9nEGpzz5VmVqikXf+AOC1nt?=
 =?us-ascii?Q?4l6dLV6zLDFj5dhykwD17/+J+ueasKsZNaRZY3WupfhLi59Ps7oDsg/L0UTF?=
 =?us-ascii?Q?02qqXsEFL0PhkD8DrcOYnAg4jHrSWsryCE7VqUxWx94xg7sXCxo5j+xO5Aqh?=
 =?us-ascii?Q?dSaouWn2th/1EyaJQDjpXfE1OJ9SDwb50CQpVmjUBzv38izShLGTjG+vP0wl?=
 =?us-ascii?Q?bK0FEEogWrxgvB9/gJF5Zc8dqn7bmdLV09iS3POQceGRFJZBcFjsCjPaty+p?=
 =?us-ascii?Q?wHz+xtMNG63R12IGWSjCdfRCHOIugzN9sF2DJRGhaG5K?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc07486d-b8c4-44da-f086-08de3bd091e0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 11:53:32.1552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bx2cYiP9FJfjRV2koEJmGtH2+67Y9ojj3tEs/A7dTRl2rpctfG+bI6Yb7gRtvjc4IkrQvGJo8UKTkFATb2dGKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF058255456
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 15, 2025 at 09:46:24AM +0200, Luca Coelho wrote:
> On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > Factor out align_max_sink_dsc_input_bpp(), also used later for computing
> > the maximum DSC input BPP limit.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++---------
> >  1 file changed, 18 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 000fccc39a292..dcb9bc11e677b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1893,12 +1893,27 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
> >  	return intel_dp_dsc_min_src_input_bpc();
> >  }
> >  
> > +static int align_max_sink_dsc_input_bpp(const struct intel_connector *connector,
> > +					int max_pipe_bpp)
> > +{
> > +	u8 dsc_bpc[3];
> 
> I think it's safer to use the '= {}' we had before, because that zeroes
> the array, so in case of any stack leaks, you won't leak aleatory parts
> of the memory.  In this case it's only 3 bytes, so hardly anything
> important could leak, but anyway.

As for any other variable I don't see any reason for initializing it, if
it will be initialized before its first use. It will be initialized
before its first use by drm_dp_dsc_sink_supported_input_bpcs().

> Also, since this is 3 bytes long, it's theoretically better to have it
> at the end of the stack declarations.

The compiler is free to reorder the allocation order on the stack and
is expected to that for optimal alignment.

> > +	int num_bpc;
> > +	int i;
> > +
> > +	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
> > +						       dsc_bpc);
> > +	for (i = 0; i < num_bpc; i++) {
> > +		if (dsc_bpc[i] * 3 <= max_pipe_bpp)
> > +			return dsc_bpc[i] * 3;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> >  				 u8 max_req_bpc)
> >  {
> >  	struct intel_display *display = to_intel_display(connector);
> > -	int i, num_bpc;
> > -	u8 dsc_bpc[3] = {};
> >  	int dsc_max_bpc;
> >  
> >  	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
> > @@ -1908,14 +1923,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> >  
> >  	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
> >  
> > -	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
> > -						       dsc_bpc);
> > -	for (i = 0; i < num_bpc; i++) {
> > -		if (dsc_max_bpc >= dsc_bpc[i])
> > -			return dsc_bpc[i] * 3;
> > -	}
> > -
> > -	return 0;
> > +	return align_max_sink_dsc_input_bpp(connector, dsc_max_bpc * 3);
> >  }
> >  
> >  static int intel_dp_source_dsc_version_minor(struct intel_display *display)
