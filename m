Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57666634319
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 18:57:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE0A10E198;
	Tue, 22 Nov 2022 17:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB78110E198
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 17:57:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669139849; x=1700675849;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TMhYMSo2nRTDctsjFKKTpTOLB/UifAOubd9YQXES6Qc=;
 b=DQPGNOmcmKYn7529KG71hdqC6H3nkof5XmINBw438k/TGIWpWA7DJjWK
 Rjh7vZD5i6/hLM7c4NxOT0iLKb98R/kuUtZyMDNhNuYCOPhLS0l1CjU5I
 qgq9YZpO3n9CCroyu0qvCr5y6qSJ69llkJcIJSsrsKduozVyO02+kakxH
 xRK+LCzZP54KkFoqS08Fxefbazf+flJmC8a6Wd/Ca8jixbtqRNyP/6xO8
 fkbEf7rJ7NaHxnG9cNWYgDOW5uRwEg5Ah9Isw63ZBzJxUBV8hrmsrY8SG
 +mR4l3+Trtb54MeQSc9c1CLVVxgTLm+GpgAGRPdZe45OxL2MPCNtWb/nd Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="378135161"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="378135161"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 09:57:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="705051029"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="705051029"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 22 Nov 2022 09:57:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 09:57:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 22 Nov 2022 09:57:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 22 Nov 2022 09:57:28 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 22 Nov 2022 09:57:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UxyIFlafs7bxUMWXhHuYpwyJrJAn7Xu8IjBZvkZRH3OOGfzNkTUY+m50e6xEmC9JvxsPCvYtQI69vWr5WmEsb6aM9d9dQ8ECZS9vzKcOBNuNnv92YJ3ey8zFbo2sgRoIuEK07VPxQhC/rmjWg64UJf4STgyQBxjIERCYRLkjO5KarJeupel/meJsJ3YZVZyNWMb6mjxY1lU3wS6J4oqFZc0B7A/c7NMlG1UkyP7hmF28eX92qykpG1wVnG8Asmp64Zw/wWEZ9+V+BH1KDgp7IJIoLbOmvIXB7sMHNVgT6iyr2bSDGwBtwBrTJbb5uPVhUDKv4bjND+lt4g7bDD+oQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZcegvo+0nTK6FKgJLohkHf0D2n61KD2vOu4Shx4jRI=;
 b=MpXwVjCK9WliTmlXlbzNHqqgNsR17+JdQjZmJ4ytPzPLGrSV6FFAxExkzNJncDekBclpNFlM1/VhbdS8RGF2qqYZOFQS7U4YlKDWaa0tZ8FBhcYw5P60SwOMvx5wzj8wH7RsSo4Nudo2QXwd5ggqac/iii/9QhVGYVx56DjkpmY76xboXIUpBaDaZuR8sK6r7LsXFv/3td+K1MlkZHHB5b2KPkq8xXqHaVqbBWUK0yPQ4alIVFxB60C4E8htuGPQFXEOAMHuEaWidQYrhz+Svd5xEPQPcEe/rrAxJeG8Q+Q9JYMEvGYQCk0h0Wjgb5C+vMJ4pA1Yn+hTC9l4ls8OwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6134.namprd11.prod.outlook.com (2603:10b6:208:3ca::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Tue, 22 Nov
 2022 17:57:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5834.009; Tue, 22 Nov 2022
 17:57:26 +0000
Date: Tue, 22 Nov 2022 12:57:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <Y30NguDBLK1eoroO@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
 <Y3ZbLA2nenwp29u/@intel.com>
 <0067b884a5787ea4fbf5d6dffc5e7d4219a23585.camel@intel.com>
 <6e6219c3-8d9d-6033-5f23-6008c66ac9fa@linux.intel.com>
 <6d2a56e248730f4489ba8615843ce5b9fc36279b.camel@intel.com>
 <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d40a8d45a3486208b52e55384d2f5220213523d7.camel@intel.com>
X-ClientProxiedBy: BYAPR06CA0058.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN0PR11MB6134:EE_
X-MS-Office365-Filtering-Correlation-Id: f1b124cd-b04c-4b0f-761f-08daccb303f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qPE7WBtV/ocs9k1eJMJ4oOXfi6VoZBn73+mHyOsHrKja0qJVcWwZV1/PH6FD1raksbj8Xny1J+aBjU1wN60Fht+4yIL7LndqWSbQhd+brsLYBfT6su4uFEzeba0WXvWAWCbo9qpJT39Tw3Q6DggreNGT6IrOZfruwqHfttkuAh1UrEXuAT4SfyZF8NLs0dBTsFsyUJx9MBoyho5gsJkne2CCSv6VieOX1EcCUCH6DbuGqggmDhPbH9G2ZExGl9jo8+4cjZ9yw6QgMRLnWfX2A1RwM7RYmXnf2yiFGji8hN/QjHucAvEfj22pyjoH/U5KlbVFNvcRlNGcAOEa+AcIgQcmObfowf1LL3J5/O88kJdUS8x19IkwLHXh9pVMRWJJF/yiSZ8U23C5IMt4ABEQGq4mrNjIw9Na4/QKTTDL41dEwbkH4DS9N0cExQD9VViXRTvZBTK2vV4n8F3PxYOW3R7btCRMDC49iQwSAqu+ovOc5M6NU83LjU4dj1O6YD4oNTK1XhlvcczKsMOX6XusXGVkBF4jd0UWwNQPOa61TnUzi7VHX9rvXgFN47wx8YPzbAtIdro5Ul99UsqdSmDUXLOdxHJlFC9paMCa9NsxCT4uBX0/JSE1UpefDkXJp9M6s19Vv9mye9nos/Q5wYeAiA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(39860400002)(346002)(366004)(136003)(451199015)(478600001)(36756003)(82960400001)(38100700002)(6862004)(5660300002)(26005)(8936002)(86362001)(6486002)(4326008)(186003)(2616005)(53546011)(6512007)(6666004)(83380400001)(6636002)(37006003)(54906003)(316002)(6506007)(2906002)(41300700001)(8676002)(44832011)(66476007)(66556008)(66946007)(4001150100001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?AsNp/0oRpvtudxF7WI3y/b5ghIBQ3PYRjMInr5qx92KamGRmdHPKsyVdZN?=
 =?iso-8859-1?Q?jQHqLPaiOUs3gy9rnuaIyOhKT8EZ5Uj9BM4o3kYFdUzq+2fo/4gwOWFSIQ?=
 =?iso-8859-1?Q?ltjuY869oB19M6Ln3n9zVvAPi3Ej8PqiuMCmThPgrCBcaHc4nEPIUdLpB9?=
 =?iso-8859-1?Q?Hnd9XQ+yhz7Msc3LinndL0dkhmopHMCLR6TO+O0jbNWWUsdvaE50SNjXEG?=
 =?iso-8859-1?Q?m8h+RLTQYz8ht6BGtPp+PfVQU+7+jeOQc/dKEl5U9gfOothz1WiDif7vfq?=
 =?iso-8859-1?Q?thJD087QLdX3khM1Su+VZZer+SLJZtQVmqp3Kll9KyCXtQw5luavCLx4Xd?=
 =?iso-8859-1?Q?pXWKySljN7/AC1uAmBaCDJehcd+khXxbB1RabLEjes252jJYzdlxj09j7K?=
 =?iso-8859-1?Q?N5CGKaZskN3yoge4zxEFa5YAw5g4pwQ2kMkB2idhGloo4zHet7e+7MmabT?=
 =?iso-8859-1?Q?9NdCa8p/Dys6jKXfH38xL+a/onKRIOZK3Nhni3dAJd0gsqQJHrJIUobHe8?=
 =?iso-8859-1?Q?SAGOmdzGeg2tsUNGnd7VBWBijq9bBGuX54t1TyOABsvCAV/r5zolA27qcB?=
 =?iso-8859-1?Q?pCD813ZaR01GDC6UB25kX79DoDyVxsAQSqV0WWlwHKY3g/Wd0OvchJrbfe?=
 =?iso-8859-1?Q?JH1YBCBx3eaZksX2wrwZhrfPGgOK8Vmq0U184NXzIkUE1dZCvnDxYuLVzC?=
 =?iso-8859-1?Q?YxAc0APskBl21Vw9pXgqE3ovh2gmGd+xRfOCfkuvNVM+YLDBTa5Lm1ElFv?=
 =?iso-8859-1?Q?za+oERHP91bD9PSl1HkzuMWfSOLoUzNyJgu1GyOdjdtq3ILpjH8fw2Wgu0?=
 =?iso-8859-1?Q?8plQfbMVeqb4eLH49FIkPjHuwPw16UVnnakpxBlF4rI3fx3+E/kRZgMvfT?=
 =?iso-8859-1?Q?g/QdrM/kLk4COs6w0vwC5Guv/Qaqmw+1ucUGbUVkZLnwq5cRUv3J5EJeJi?=
 =?iso-8859-1?Q?yERuZQpGjF9vRnRhWt6J9KOMiic41wkJPku/G6mnfrb4ldA0DZM+zbc/2D?=
 =?iso-8859-1?Q?hxqW3oTQat4bQcaRpaILgh0aQEsIa1O5TMtTgovoSmCsO69zAQ3MglGdyU?=
 =?iso-8859-1?Q?sZICcywBDYWHGmePprnZOVRRTaVbDe5/E76bVz/rGm7Bw4pfSsIRa3hTuw?=
 =?iso-8859-1?Q?wIXRwaZBqk9/Eo4Ydhl5gRSxeSNWSYqMvgxbe2iA+nvFiPByYgGKk0dhzg?=
 =?iso-8859-1?Q?T0oa03So0QLbt5Aj3Kd6Mf0SbL1099HjLHC0XiAxY++vAAxCKWr6ehH13a?=
 =?iso-8859-1?Q?xYMobUER92/skwPJTrvzimwzMtXsEAlGIn/WGY9PbEH/NdFaYjeWYGFQ2L?=
 =?iso-8859-1?Q?HRJOzlk/68iHtZMoC7+Bnq8BfsxNUXLCC7I0Lm0QEY5jsJ8rxs/q3sGiBi?=
 =?iso-8859-1?Q?PBj6uU4KGC77NcfjcgOnEKlvcDpPV7agDUQcf/UBY322z18cbJ8xVf170N?=
 =?iso-8859-1?Q?4haFQ8G3wroYT14aWvqrOY2GtXEw6pcty9GiZAnPSdTvSnUUeuNV4mOSu3?=
 =?iso-8859-1?Q?kW4W5EyZZKB5y3m2Tx2ikDUB1IVDRe+AlD6ZW2CKY2r6AIPAaYToE7lsUu?=
 =?iso-8859-1?Q?NyNbUUgnDWPnph1tm2QA3+xNqEtgR5C1GDeshwoqNzL4UpJUapbpnksdye?=
 =?iso-8859-1?Q?P/nDZiwseeF1fsG0ngzxLRbkzwIo4gcWyA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b124cd-b04c-4b0f-761f-08daccb303f8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 17:57:26.5110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: saeg0YksKQiVCq2ZQDllRl5YDRIpvdTN46jx+0NR1T7viWFoyCwtWE0ANSFpVQ7NYrFN3UYlmM0In5vGiHO6nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6134
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

On Mon, Nov 21, 2022 at 05:51:36PM +0000, Teres Alexis, Alan Previn wrote:
> 
> 
> On Mon, 2022-11-21 at 14:06 +0000, Vivi, Rodrigo wrote:
> > On Mon, 2022-11-21 at 11:39 +0000, Tvrtko Ursulin wrote:
> > > 
> > > On 17/11/2022 22:34, Teres Alexis, Alan Previn wrote:
> > > > On Thu, 2022-11-17 at 11:02 -0500, Vivi, Rodrigo wrote:
> > > > > On Wed, Nov 16, 2022 at 04:30:13PM -0800, Alan Previn wrote:
> > > > > > In preparation for future MTL-PXP feature support, PXP control
> > > > > > context should only valid on the correct gt tile. Depending on
> > > > > > the
> > > > > > +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
> > > > > 
> > > > > If we are asking if it is supported on gt, then the argument must
> > > > > be a gt struct.
> > > > > 
> > > > I agree with you but Daniele said above is more consistent with
> > > > existing ways that is considered the standard.
> > > > Respectfully and humbly I would like to request both yourself and
> > > > Daniele to show me the coding guidelines somewhere.
> > > > 
> > > > Honestly, this is one of the first few hunks of the first patch of
> > > > the first series in a very large complex design to
> > > > enable PXP on MTL and it only a helper utility function.
> > > > Respecfully and humbly, I rather we focus our energy for review
> > > > + redo  on more critical things like the e2e usage and top-to-
> > > > bottom design or coding logic flows or find actual bugs
> > > > instead of debating about coding styles for internal only helper
> > > > functions.
> > > 
> > > My 2c/p is that the intel_pxp_supported_on_gt the "on_gt" part reads
> > > a 
> > > bit clumsy because it makes it sound like the two are independent 
> > > objects. Like I could pass one pxp to different GTs and ask if that
> > > one 
> > > works here, or maybe there.
> > > 
> > > I am though a fan of intel_pxp_ prefix meaning function operates on 
> > > struct intel_pxp.
> > > 
> > > In this case I don't know what is the correct relationship. If it is
> > > 1:1 
> > > between intel_pxp:intel_gt
> > 
> > Yeap, this is my main point here. It is not clear what is the correct
> > relationship here.
> > 
> > Or we make the intel_pxp under the drm_i915_private, and then have the
> > associated gt (always gt0?!) link inside the intel_pxp.
> > 
> > Or we keep it inside intel_gt as is today, but then we run all the
> > functions gt agnostically and then skip when not enabled (!gt0?).
> > 
> > But all these functions to check "on_gt" makes the code hard to
> > understand the relation and hard to maintain long term.
> > 
> > The argument that we have more patches in the pipeline to come on top
> > of this series here just make it stronger the need for a very clean
> > start.
> > 
> > 
> 
> Rodrigo, this is the jist of the contention - something Daniele and i discussed months back, and the direction we picked
> with Option-1 below.
> 
> 
> We have Option-1 where we stick with the current structure hierarchy - i.e. pxp is a gt-substructure. But for MTL, gt0's
> pxp is not usable and media-tile's pxp is the control point. This means that backend code that accesses hw will be clean
> (always already on the correct tile) - but then gem-execbuf / gem-create / gem-context (which are tile-agnostic layers
> right?) are forced to pick the correct gt or have a dedicated helper to redirect from i915 layer to correct gt-tile
> depending on platform. HW wise any context / buffer / request on any tile can still access PXP feature via batch level
> commands.
> 
> Or for Option-2, we elevate pxp to a global level (or use ptr-to-pxp in gt) so tile-agnostic-layers call pxp without
> needing to care about which tile. However, since pxp requires the ability to send commands or touch registers of the
> media tile and not there other tile, such backend-code will be need that additional layer to pick the right gt. Also, we
> will need to ensure the flow of init/fini and suspend/resume are "aligned" with the gt-tile level init/fini and
> suspend/resume. So that presents another level of convoluted code to follow (when looking from a top-down e2e flow and
> what params are being passed into different functions). 
> 
> I personally would prefer Option-2 where we elevate "intel_pxp" to a i915 level sub-structure. Based on my discussions
> with the architects, they assured me that for the foreseeable future, there would always be a single "control-point" for
> pxp feature and access to the backend firmware - i.e. "single" here meaning one tile only. 
> 
> In either case (option-1 or option-2) we will always be presented with one form readability confusion or another. Also
> in either case we will likely have both types of function names : intel_pxp_is_enabled(pxp) vs
> intel_gt_has_enabled_pxp(gt) - where one is a wrapper over the other - so we ought to keep the "enabled" part of the
> name the same.
> 
> I havent thought about using a gt->pxp_ptr (like MTL's interrupt code). Lets consider this Option-3. If you think that
> is an even better alternative, let me know, only the "pxp-to-gt" helpers would then need a rewrite but the init/fini
> code would also have a tiny bit of kludginess since we will have to skip the allocation of said sub-structure for gt0
> for MTL but not for ADL.

As I had told I don't have a strong preference, as long as it keep clean
and without these many helpers of something "on_gt"...

If this stays inside the gt, just make sure that you call for all the gts,
but then you inside the functions you can skip if pxp not enabled... without
asking if enabled on_gt... 

> 
> ...alan
