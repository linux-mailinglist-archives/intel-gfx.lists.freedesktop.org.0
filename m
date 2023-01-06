Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 690576600EE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 14:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5BD610E154;
	Fri,  6 Jan 2023 13:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC6F10E154
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 13:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673010411; x=1704546411;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9wk1mkXwwMkhkJq6a79qPQftnx7BR9Tn8Hgk4oiZCgM=;
 b=O/FY72iYUAqJ33L0oPgNDZP8N+rCWFfHMLr/Tm7Sjsk2RiAZfj8EQ5GZ
 hAuDUU2qt+h35VONDrQmz2LBoNjzarpzfJJr144tR+ydf0jIWOtxwL7Dm
 f6IgQCDDdxaorRuIIW3Zv4OcoqaVC2kmE9nFxSXCtGkG67ikBqyPIn+Fi
 +H1Gco+QBIDZNax6cASdNEgEMGnrsiz3ctYBGoBG8VOx+e8q8p5ZgCya3
 VhmCWGe/beHLP48sEIieYpWtj9xZe4QUFos5QZwDEOVGtFlAais2exuh1
 cE05lkWn38uKmi+V4m+BGxkDXaAfCzxR1b9PtaNULWNGQ82Zk1M9OVST7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="302837209"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="302837209"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 05:06:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="984669024"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="984669024"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 06 Jan 2023 05:06:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 05:06:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 05:06:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 05:06:49 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 05:06:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWmS1kSHX0NSqe8FNtgF1F+KYhQ3pXsdKC8a1+F+thjZ1nYnYibPdjpVCPOled4tbFx7kUzAOuV1Pf7+eLYH2qrqjAUVFHLRRppZ7jbZTLv2Bvv4sdC7ypt05RYgaGJpAAaKXhsVC3isPbLOzKRsIZW/v5J2GtzWVR/Tn6Dz5TprwXP6B+oiA3j3oIFmqCDgYg2CK4MS2Iik9j0K0lt72cXPnQRqghZwXG8pC3m9HJ0X4y4uImvII/8cHj3wMLBkne7C37UYLg9ke1paxUfTNSyt2yzKnRq7hydvlyBDrX42lYa1nme8vCRzj50YQLKWtPav0DlpCdjXhd4eRm+vFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6OTJFA2uc9G5wyLztwXHkimkFieP+nn/LCiwbAjPpDg=;
 b=ldkFtAAkuEHdI/7U/MLTbIdt+I/hbFf3EluwDmWzfj8E8W4rLzFDOZ/hzd4ZehisBXWXbgZ+d7M07gXjXbEIzMLZXIJMpo2bl8zG9YaEHJfSOnvPO2FeMf23hxAs1VGib6JAFmgn01qGKjthgDdcS6dj8yQdSyrWFpTN6rKrSRGM70DxszyF9g3w+Mlf1dX6X2SG5AlHI1z2ivNe1EqL23oAwdCU4d+PW3AL9O0hkpM11y2+uMSObMgpDTUcFq+YHvvuDRIi9/A61dN3NbPPCa+QpWMV8egJ9x1ETTR+P/4RhOsPyxwAr20CmCeMDLYfQWvNF5kQ+Sf622F/XEJ1+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6774.namprd11.prod.outlook.com (2603:10b6:806:265::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 13:06:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 13:06:47 +0000
Date: Fri, 6 Jan 2023 08:06:42 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Y7gc4nf8rJKKHvam@intel.com>
References: <20230105203843.30663-1-nirmoy.das@intel.com>
 <877cy0g15y.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <877cy0g15y.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR11CA0101.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6774:EE_
X-MS-Office365-Filtering-Correlation-Id: 97ec39e0-42f5-4972-30c7-08daefe6dda1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /AU3Nx7LO8OVnUtLhK9FhJDj1piyWbr2f+Q+Xq0yYqnmMl7sVoVdMia6O1odvcJiAifwO8FVHWB12xMVprMjdHw/2A9J0+B/L0G1UK2HijIIARGCa4yQS48RKYSCkju0CW+n3qnBMcAjf0Ihw0FcbIY1ySXXJwVnB/KSpFbp3uPHc4PzTO5krdfg+FmX50W6uvplXhfnLNvquSF0c2w2TGdPvtnktTK7kblvbxE//+ednPWJSKXYnm3T/ukJEDlK3LKv1KqG5O1OWbEWOx+zYFwDihMJaA9hXYcUqeoqfsJLwH0uzHkB+9ZQaNfxst97O//cIhqfdP/AWsKYP0Ewpt7Tu/eZ67qBHQbs7eLxNLkEC/IHznOr5WIl6MjtHRXf/ak/1W8W8dN49G+nEXnQQfXisjBsYtdk3tpusdhduPO/4uc7vYBJm/IdErxJSgICznPKPRAyhn865Ibh01HsbQZhxIG84EZ5dRRLpMuaMbmeUPGRSD4zqbEEIrCeKj17YWUbWrYj/g0oWmksGSstl1m1fQWXsoX2JBu32DfsFHWSTgdY31R3nwhVg17piK0CwZBH41H5z1ugHV7faDuD+KfHHSpz9EUHi/h5i6lMQ6DmQzijC1Cbud9+I49SVhGjnFwUoynl3VbDB4yBES15IA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(396003)(136003)(346002)(39860400002)(451199015)(6636002)(6512007)(6666004)(316002)(107886003)(26005)(8676002)(37006003)(186003)(478600001)(66946007)(2616005)(66556008)(66476007)(4326008)(6506007)(6486002)(38100700002)(41300700001)(44832011)(83380400001)(6862004)(5660300002)(2906002)(8936002)(86362001)(36756003)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aoNKhfhbKL0Y09LtGcrKt4qHXqj0X6RzZ+g13e+6H3B/uz1YKLi3fm8ra0bv?=
 =?us-ascii?Q?sff4CD4H20KBCTMNXIwR0uAake5qeCdLfjySeFfufEDNiUpJRlqsdrPn3UBG?=
 =?us-ascii?Q?p/iQHvKbFAj9Q748U5gixwA9pacjWGfF/DOoPhjppATruXSl9lcWIQ+7PX+a?=
 =?us-ascii?Q?neRYKuu4U6e3RXbY6ctI1gjmC6pIsaa9vwdTFHwnoytSWOV7OaHMR6j612uO?=
 =?us-ascii?Q?K72m0bszvoTkaYCFnFMThDi+51i8WP3JjUC59pxRzQYRdzq27+ZlVD2XyCrl?=
 =?us-ascii?Q?Tv11RznN92RtoWHaiERev3ZJ6l3VSH8HKiXZMi62m/Hm1Y57BeOWDLalfRxg?=
 =?us-ascii?Q?bigzMAValmXVO1tWL1B+/KeqptYOHlvkwDi4zKgpx5B1cncLFpZdAwWieRKo?=
 =?us-ascii?Q?Ensf53jARHnITGR/kTIPSZvwuG+q2lDap1/lK8mD2tFsE5oAl5L5i6kKOQUt?=
 =?us-ascii?Q?gaP8ozDbkpRBRT0JfqCx9NSBE1+cNOJQcVOv6n97pOndLPrnn8pSrcsjzlmW?=
 =?us-ascii?Q?DoqN6BWquiVMOdRJRoWbwesUgaeSVlcuQ7Q7eWlxGq9g02tw6YQp0O9tCoMQ?=
 =?us-ascii?Q?2b4zFoXs5GDvMlDyRP1SmgIlMtgdvSvVg0ObCqud+8cW/uAlym7T7D7zo2dT?=
 =?us-ascii?Q?pCbrXjp988C3xvifNa4L+0qNRlRHp2KmwjvKg+nayLMCt6YXHo3HA0mjy5u/?=
 =?us-ascii?Q?jA3xqgSEZ4LqRzNz7Qy0n0TPCFxbp+U+k6WBH/7V/cPpIXTaWSv/CyMF05xd?=
 =?us-ascii?Q?QyJ7KpyWPfdMJTGfX9Jw9Il/Oj6AG7mEVgYc2bt37vj8L1W5nbmlvfkkpNWP?=
 =?us-ascii?Q?K4K/lz75nbHlZdjW1t3Kw2EVBtu1utEqUfNNrkQv8k/ByQI9QoVJbVJjIKsm?=
 =?us-ascii?Q?MW7KpoMScLp/yLflkc+kTreXI3xb1K2pYxy1do7m08KdiciQd1814MoaoWfj?=
 =?us-ascii?Q?UIAJmYoFwra+3vQYuYUdYkb1J8eixngPMc1fdSZx/tjHfSTQyDCVkiYa2/cY?=
 =?us-ascii?Q?Wetdg5gaq88vzZBQ0BbxfOeq8T7gRQhyQGtfVitQx1GhpdSQEhD+bSmtCjZO?=
 =?us-ascii?Q?ZizdOfKAmiFPVhPuBWqgejfGsGiRgWoogDdKjqtIqzow2aSP6B4lYsOrMEFC?=
 =?us-ascii?Q?alK7Zo36kerDqprvPyrhfuQNikrp+hmidvYNFaLJsnlpIYkPQFJ+ff4qs5Rg?=
 =?us-ascii?Q?yd7frnZe7A1M4Yk2+DBiUYxk97OPcxqdqUyWTRzERovFV5BbLt+n7WkvAUOr?=
 =?us-ascii?Q?m256DcaiYM3AkQmLi3N2Bn4RR+GCAMfyM8hJ8uEWXVPi6OFgalBKR9EHpj4t?=
 =?us-ascii?Q?bsfJoOqWlSeCBoqmTbBFeb5DI/rDHU2sC0FB6B3y/j4ngMrszwAO0aoK+V78?=
 =?us-ascii?Q?68QtAuxjkxsmfdr2lOVt+r41fp4TKrWuqw0+ewwTXKf4+ua4lu3AFEnNip2I?=
 =?us-ascii?Q?61eep6ijRnrfu4XZkypmi5A9S6t2WrVbA6/xVqmsCTGEB6hegl/PEKsiXyvP?=
 =?us-ascii?Q?dSB7wOVlXaMyasP0+W2Ygx9WvuILG+K2XqWig4TTAk3xcyO8ZHzgJRbX4sXl?=
 =?us-ascii?Q?ZL9b+4OTvDZRjGruottPuySSsJ5k02dngpFdsYvTC19euvY2HbWn9KpU6jR4?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97ec39e0-42f5-4972-30c7-08daefe6dda1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 13:06:46.9628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: utGdKuGSwZdQCulIk1IrkOXlNp1mG5TZnDOiWvDAObtLSHxqYMUkifwzmEeqkp/hq+f+j6FXAlXBs1ilF86H6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update docs in intel_wakeref.h
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 andrzej.hajda@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 12:46:17PM -0800, Dixit, Ashutosh wrote:
11;rgb:0000/0000/0000> On Thu, 05 Jan 2023 12:38:43 -0800, Nirmoy Das wrote:
> >
> > Fix docs for __intel_wakeref_put() and intel_wakeref_get() to
> > reflect current behaviour.
> 
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

pushed, thanks for the patch and review

> 
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_wakeref.h | 21 ++++++++++-----------
> >  1 file changed, 10 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> > index 4f4c2e15e736..71b8a63f6f10 100644
> > --- a/drivers/gpu/drm/i915/intel_wakeref.h
> > +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> > @@ -68,11 +68,12 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags);
> >   * @wf: the wakeref
> >   *
> >   * Acquire a hold on the wakeref. The first user to do so, will acquire
> > - * the runtime pm wakeref and then call the @fn underneath the wakeref
> > - * mutex.
> > + * the runtime pm wakeref and then call the intel_wakeref_ops->get()
> > + * underneath the wakeref mutex.
> >   *
> > - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
> > - * will be released and the acquisition unwound, and an error reported.
> > + * Note that intel_wakeref_ops->get() is allowed to fail, in which case
> > + * the runtime-pm wakeref will be released and the acquisition unwound,
> > + * and an error reported.
> >   *
> >   * Returns: 0 if the wakeref was acquired successfully, or a negative error
> >   * code otherwise.
> > @@ -130,19 +131,17 @@ intel_wakeref_might_get(struct intel_wakeref *wf)
> >  }
> >
> >  /**
> > - * intel_wakeref_put_flags: Release the wakeref
> > + * __intel_wakeref_put: Release the wakeref
> >   * @wf: the wakeref
> >   * @flags: control flags
> >   *
> >   * Release our hold on the wakeref. When there are no more users,
> > - * the runtime pm wakeref will be released after the @fn callback is called
> > - * underneath the wakeref mutex.
> > + * the runtime pm wakeref will be released after the intel_wakeref_ops->put()
> > + * callback is called underneath the wakeref mutex.
> >   *
> > - * Note that @fn is allowed to fail, in which case the runtime-pm wakeref
> > - * is retained and an error reported.
> > + * Note that intel_wakeref_ops->put() is allowed to fail, in which case the
> > + * runtime-pm wakeref is retained.
> >   *
> > - * Returns: 0 if the wakeref was released successfully, or a negative error
> > - * code otherwise.
> >   */
> >  static inline void
> >  __intel_wakeref_put(struct intel_wakeref *wf, unsigned long flags)
> > --
> > 2.38.0
> >
