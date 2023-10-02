Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6AC7B57B0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 18:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66FEB10E2E0;
	Mon,  2 Oct 2023 16:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C08E410E2E0;
 Mon,  2 Oct 2023 16:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696263209; x=1727799209;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=70/Own53Ybr+vVMs5iKNzL+cYDADXLtXi9Z42gVWZuw=;
 b=Sp/aP/uoXs6tp0BsHYXcenp3MduVaPiHsy24fALN9fjWWfnaSvnsZtMR
 xzezGQbX6wH4MeAZjfvYPSZCkWtJ2wttlF6RuJKZSvdzbHe5k0ffDh4kL
 TH0LHwYWNpAhFe6YMfD4233RdmtSZzrP2m9PJOL6D/msWWpfbRWwuonRG
 hddOO6yVJS5CEvQdeca7tYTy8c3dF6vThPeG+6gsodS8cecyQa/R/TyWJ
 nMr7kG5OAWlScmynJvLJdFxd7V3FeY95W8UHcfpIaMCRdKj4anD9H9i1R
 poHLXOcSwRfN9p+7rh0zW9S1q3HRL9KIMiVdpOWd1UKtGaC8xo8JXWlDa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="413591275"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="413591275"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 09:13:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="820928365"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="820928365"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 09:13:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 09:13:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 09:13:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 09:13:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 09:13:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W1D7hwAFexcRoa9+N6+MNO0UE0UCK//l6I6ise1C6HEvaiy72fe+VYRf2hvY1QbSbEnnmEC28h9yhGwrVuq5IKztbSOFMGav3rtaUx7t5xkc0llee7WPXS/5O53LtMKMZcmSVGfC9sXIEc18RS0JBBeJbPgaoWHxeNLXtvPDO8rF6d++fDIRZyGHiIZgjDpWzpL0SxNldEKrksiQlRwOZ6c5+cVCa3ThXwJAjn3r6YNLWviKTEOQFKukp7dnwKmXho4DcFW/8c8VT5zwVHWAGytrbf9vCy8Sc/ntm2ARqZMnM0O9MhUNNRTaevxnEf544hUkYGkS/QBOXmQBk+xrmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ri2Zw7/QMr5+omqSt7P1l0MWhQVrNtYaT1ngTfQMtRU=;
 b=cDsyTaH6N3oNGO+qZccwoxRSXWcjcnglXPJkJ7YvqMy/gR0JG8RmYQ0jnuOQw2C39rTpEnduA5ZW1fyVsO67Za+4xAQz8Z5w9fgl6EQ5LQ6DOq3bNomJecG6hPK+9HStp6bJQcM36bf9qrcL6ny5W0ycU2bFN9QnrT0xWd9zyBQlMgcthT5CoADgaoKe73GnUxgg9yiGwkbS0RjwLJthLtxGr7e1OEJrth7484hT/CBpMugvfj21pR5Ttp+xceVhUxXoF8gEOuCeYzbjZl1WcOEGv4K6qBF9GxJH1mRSS9MTjXJuAeyamUBDLqZUVXEKktKLWHHayIvPX/fyFu5v5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.25; Mon, 2 Oct
 2023 16:13:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6838.029; Mon, 2 Oct 2023
 16:13:23 +0000
Date: Mon, 2 Oct 2023 12:13:17 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRrsHSzer2hNO9Ua@intel.com>
References: <20230929205023.1202735-1-rodrigo.vivi@intel.com>
 <871qedii91.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <871qedii91.fsf@intel.com>
X-ClientProxiedBy: BYAPR07CA0101.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA0PR11MB7257:EE_
X-MS-Office365-Filtering-Correlation-Id: 7405a95c-b713-4604-5da0-08dbc3627fa4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xh4Lk0HoNP6WeUZvF12lwtBpp3cWpLDAdMXN0/tTTcGGEhcLnGdJHRRBe3nnL5KQxtYGJN+Ypwhcqs9G0tqm4Ny0wVoti37gvkR7d3e8yzp9ui3moo5ucuSGOgFxH6Y3My7anSFaIdfUhVAlz6USEocu0IZ5J+Yr7TZN3mAxEeT/9mqa/+XekuMl/4l1w4iDfk3hIgpdsO+fhZ2MQXF9itYPw+NvRSUE7GWuvX7WvhROAABq5GJ5dfk5SbbgLwVk9gmPbjAYE42R4NyhnT2pLov0WpUDQpow9c4Bbpkb6NsnPAM7YotnF0IXr5un1hSo6nlgWue7wvIoBVcJXKlyQfT7Vqu8H0XnLxR6zuTwcJJ2qr1Rdq6ozw89paRaiCQTirOfMk6HOVmy/RRB32REwDmj6kUwQiuHGoK6+5itWZGxvIQh/14R4D9kjsbAvG+qiq7yDNvz1W20tT5vAnRgDv/3jzj2VztGVH/wxdPOwZm6yt9QFc03uoVHspy18kov/WX+mgchOrfg3l+dWLF1nytEW8uFzYIxDFzpaMk4avloKut7ADGUWtEXDOxGcUl/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(39860400002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(6666004)(6636002)(41300700001)(8676002)(37006003)(450100002)(66476007)(316002)(66556008)(66946007)(6862004)(5660300002)(44832011)(478600001)(6506007)(83380400001)(26005)(8936002)(6512007)(6486002)(2616005)(38100700002)(4326008)(36756003)(86362001)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?75CAQmXR7vsE93MDTYCr3KQ6eH2eoJUF3wQ76swk2LlD6gJyA0wp5sNiS4Qb?=
 =?us-ascii?Q?yweZLFxqpDfzUubFMT5e/58qE0cNtpK+PU1WjMQo96YIOoCDkbKaUdFEVFY/?=
 =?us-ascii?Q?yRBiCjOv79H+MDIRUbHj842irSqfTkz8YRv5dp4xREeDDv7mRcq0w78hARSv?=
 =?us-ascii?Q?crSu//Lr6jHUjBmNNCfYtcbDviTnognUpd/h07bCTL+XCzbegNwvxfW33EtU?=
 =?us-ascii?Q?AAUYX9/pQuUflkI2Xx3nxx8ct5zKYJABqP+VQTfMffD2DupASZhpTQyKhd6Y?=
 =?us-ascii?Q?PCyqaPuTOWva6YNH0YrUCR4LxZu5AtA78RQO6om1BC024m2n6EUeZRYvXIrU?=
 =?us-ascii?Q?Ka9YjhM8PrhDTESUXhHC5GYzTYHZs+dB4zrEUrwF2gfF0JfN2sE5VIvDMruM?=
 =?us-ascii?Q?ueEwnAZhtHeeM5wpoN38PYvu4789tg3akeZBQG286b2uUZEk0YuExjBFKajM?=
 =?us-ascii?Q?yhe/QtmwiClFqNuoNDpLIkYqMiBUfCvzI9vdRLRnxoLQmz5HC5ouTYUKzvVD?=
 =?us-ascii?Q?IKZtXp/fCJUfSD93CJ+IbGEXmiImdzum/ZZ3Pz33hZMdRDApxQpcEDkHueah?=
 =?us-ascii?Q?HFnw13yVekY6LPTVa1UuYWR3dxaYYVKXArgYlU1IJdaaAxmez/Czo1EgYAb/?=
 =?us-ascii?Q?9E1crUI1Rln8Qy5gAUZ+olaenhyLCcsjnq63HKBFimzJfNsfDP4Th+2nQkZg?=
 =?us-ascii?Q?c3ZHXrHSLH84W46VdeeI7xmTQMBswwTY7mftQ7yQd25Bn/UEYjq/b99vHuc0?=
 =?us-ascii?Q?QTutJn48SvskJFA9jgqlJloruFN88nJXAm3OguNljc32MyDsEBt/e4aTXQpW?=
 =?us-ascii?Q?JAh47TnsxHUI/ypQyoz6AmDjwzTFUilCf/gPiByIzf8ufAoDChm/csTJolyC?=
 =?us-ascii?Q?szFkU20Dlc1lXj0/dJEy4hxNOSsXaGW9y2ONYc6bz9b46nQM4XwaCOQOjLQy?=
 =?us-ascii?Q?Wkiu/cge1Bu4P7YX/QpiGwGaaGnEBOUKbTmr7CW57lNWBeCx2xk+A9EpJO91?=
 =?us-ascii?Q?J5dodxKdctTbLue2lhAFNEXK/d3La2iIxQPCuke2Zc2jAhkl/QSzLHJKZ5b+?=
 =?us-ascii?Q?yMR5xfIJfpH6RDikvlWnDhQK7zCCYdUoKS0YS87JkkmeL8xHCfo2Alq8a/D4?=
 =?us-ascii?Q?NnrDt19TvLtqvmxsTgfrfdU41MlQM96NTJVcKRElkbrJVdA7wRBAQ5bsewbl?=
 =?us-ascii?Q?N+5yyoj9oyz9bPX7qyGrxM31nrTauOh5/7YwPdgHTBvNsGWbiBjbPCQ2bVFX?=
 =?us-ascii?Q?TzIIb8HUXlaYOYDXpWgaRMncnkO6lNvDyuIu49fsyk4th6dmDilsqSzyIx39?=
 =?us-ascii?Q?aZ7pmn4A/c7Rq36iMXuu8U+rMztXwGJm+kL4vm4rVoK1cXBmtSqGWJC97JGm?=
 =?us-ascii?Q?KbTQYjtSSa8OkNOKmH2l3PgRL37urVx9U6CWunkcr096xmDSQJ2FWQKbg/AW?=
 =?us-ascii?Q?NyRoL0k+j3pSWspgSrWQRw2j8+cjJv7LtqnEW4ZgjjAYrriEKXSmr4VyUisT?=
 =?us-ascii?Q?5hfX7RWYBubuEMg+46WKkMmQBartZJ5vCdai5FE/9OYai/qQGqsO+K6yPD9m?=
 =?us-ascii?Q?yf5Jh3/j1vXyMLxyHjJyt5S1vJv9+8RYwev92RsW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7405a95c-b713-4604-5da0-08dbc3627fa4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 16:13:22.3887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GCw10WcMOAozfLX4bqtcOlSMb3j0ZTFRzlpxzbAw+w3EkFiG50+SbabS/hRdBqTH2ipqMrSZ67LIDKlvUNAkpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Abstract display info away during
 probe
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

On Mon, Oct 02, 2023 at 10:41:14AM +0300, Jani Nikula wrote:
> On Fri, 29 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > The goal is to have this function ready for Xe to use
> > directly. So, let's use the available macro.
> 
> Seesm wrong to use DISPLAY_INFO() as an lvalue

to be really honestly I don't like that either.
I barely like macros, specially used like this.

> and I'm not sure why
> this wouldn't work as-is.

I should probably had collected some logs and added to the
commit message. But the thing was that without this assignment,
(xe)->info.display was NULL and the memcpy below was exploding
with NULL dereference.

> 
> But *shrug*.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

thanks, pushed as is.

> 
> for merging to i915. (xe should come as a backport with cherry-pick -x.)

and sent the proper backported cherry-pick to intel-xe ml.

> 
> BR,
> Jani
> 
> 
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index a6a18eae7ae8..ce55b968e658 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -926,7 +926,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
> >  	else
> >  		info = probe_display(i915);
> >  
> > -	i915->display.info.__device_info = info;
> > +	DISPLAY_INFO(i915) = info;
> >  
> >  	memcpy(DISPLAY_RUNTIME_INFO(i915),
> >  	       &DISPLAY_INFO(i915)->__runtime_defaults,
> 
> -- 
> Jani Nikula, Intel
