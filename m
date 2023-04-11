Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD2D6DDE80
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 16:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8763F10E582;
	Tue, 11 Apr 2023 14:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F9110E57F;
 Tue, 11 Apr 2023 14:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681224674; x=1712760674;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HlZIN0qjT6ti5vGcDa+kZsRcalNch5jQqKCuP/Fqlq0=;
 b=R3I27MpZf//5uh58//kJVc72J4jl63CYlN/6U4JpyNusIJzSAyHEd7qg
 Ts0nL0fu7M2WW2dCRSJzopFNHvJigS/mY695xNngg259sIDYz/s7FDyDA
 QoHipOT1gHD+iwPyPrnEjb6hOriXs3jQkcuYldtUVySezJV83LrP5ex/F
 iplybsI3sLwjlk5WxGFw2bdaJgSePIYJQn7gqFhEfvNvCkcXts4I7/+5k
 aUMf7FHuEx4fRDu2aSIa+6sz7GbCPaIgBv1HNNGPwp6TZHKcW6yBGHV+A
 u2FW++r9UqvIL8NSg/ZctiWW1eOZfHEo+9pN7q4qFt9Gt69yJ4PPGO0YU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="429926145"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="429926145"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 07:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="682104849"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="682104849"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 11 Apr 2023 07:51:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 07:51:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 07:51:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 11 Apr 2023 07:51:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ix/Xp7OrxWPTjkXC3rh4HrqH1pw6gsaIWR/D9qNJeeICMrw4jpn2K9Km6FKptU0Dix+hYen3k/VA5dKo3hHuWLOhex1PdVWeECTwRS1x3KdGMEegrqNkQ7QxzCJ6c98/ymyodenLB6DZ4HSt6NAyOhKwe0J4PAKcPnWF6lBQ+46HtnDVGN+2bMdrO/aZNW7c8mSxl0W5pIvzAI9mAFtgdSg4ZZTlT4bklcsQkGCYoJUAuqcsXGDwRJ123nSmADGMuyO6fEGs29ahXhC1tiaUBcZNbUxhTRokDlwbcLLTNIcs6c4axXkTno1frS9A6RMKztim9Vy/xg0inayB6GfV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zgjr4kwNNv7skW092gxfIHvZnpcjc0K5tSEhY5M1SAw=;
 b=VbaI1Fq5S6LDkhj6qU8be6LVLK5TgdBSDydptCZLntovb+fpTXJA5MHgIPWTkJtGB+rwrxtmN/vp2CmlFmw7XMMnQkNTs7F9hkSvVgYrcZWh6k1oRO7/PveZ0gs5R35BFZZZwLhxbSA1jIjWiOWGGrhY16pPSi9Jc5RHxgUtIvykUy6JqNFuMHnnZJelCyAPlEwYWTiBTdGJTE5vd8v4VYZk9EnDEb9yDSHz75KwSQWZY+YbgU1FwPm8zgjcbXNvmzJSMjRqinu8PrMG3S+Atgq+82hN57YoCWEcwAiRSVBILA+MLt8rVZd8dZiL9JeBrpAasJR/Hh8aViLHEbQ2fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Tue, 11 Apr
 2023 14:51:08 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Tue, 11 Apr 2023
 14:51:08 +0000
Date: Tue, 11 Apr 2023 10:51:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZDVz2Ppm1DgVbZ0p@intel.com>
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875ya2eq6b.fsf@intel.com>
X-ClientProxiedBy: BYAPR07CA0069.namprd07.prod.outlook.com
 (2603:10b6:a03:60::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM8PR11MB5624:EE_
X-MS-Office365-Filtering-Correlation-Id: af12c5b8-735b-4203-1134-08db3a9c2f27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dG6Ne9GmkP6w4rAVKI9zuNvx/9SO0J68QrARx2FIMHkq2odZsdL1u+tQJa3i1Ifc6bo2xJTzpqvjO9Tv19P7x36wy/DsGJ5KQyS0nV/PLLvyhjtFq05dJ01A76DC9rGDUyHZNAAq9wxIq2A3B8WVrW/Uh7Vrj0Ct5hBaAdvds9XtBVpi57fOPAr4XkuAIQDTbycz6gRSJJRfFSDtQ2M2yhgGIdKaLCZY/hJuA2lgtgDdJ67K7+isEcdDWP+rOywnd4yK4y5NaVPJe6lvf2nDfKDA0skq1xVZPRwyL4+JyLf76l+k9AQ03J4W7B5tREkS30l+Rn89s2QX1YhRuTr8Av1HWKd3wT3BizN7MJAMmMPb1rbNQ20Ov+wOtQa2qMD6NHrSWQqjlk4R1qseIhaJ2Y5H5evLkjDqsFZ5AYCudlSPVKhnOER85vaIPcqVfMQbjMrY4qogt6g2tSeTmd29uSRN4XnXkI7WXCELa4NPETqnXcx/iDFRTexb8BIBYT2m29HmpcC723+E7TXxXIbyRblU0AM1UPM5L7+5GEqxSbpkEKcf+ivG9W+xETp+v9KL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(376002)(396003)(366004)(451199021)(478600001)(86362001)(83380400001)(66574015)(82960400001)(36756003)(2616005)(38100700002)(6486002)(2906002)(6512007)(316002)(26005)(6506007)(186003)(44832011)(66476007)(41300700001)(8676002)(6666004)(6916009)(66556008)(8936002)(4326008)(5660300002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?zD2TkF0SzUkmEBQl83fe5PBGrWMhTbrPvM7QvCP0eWzsZwv/8tJL+r2bAN?=
 =?iso-8859-1?Q?P+ByB5bqGhCq2knKmht26qZ0S9N39hPBmR/R6lRKWJE9ucGPGVZdDBRlET?=
 =?iso-8859-1?Q?4DooXCAcV/EZI2gZhzCKbgSS42xuORlPDVQSHc2ILsttWWQr4snUqUJlsZ?=
 =?iso-8859-1?Q?gI9OXIztJvfu2tu4/7/WG5iTvufyY5jnI1uH3wMOQxAY0rNGHa+0pp4atG?=
 =?iso-8859-1?Q?ZCd4oN9/NvR6GpGnUBAvB3c4Unh3+fUfLY8jlgzdQe0DRRbMZBsT5RHwml?=
 =?iso-8859-1?Q?KZdbiKuwMVDKQ+y2AOHn5iPGrKoPWLoZzI10Yn7EbiXjdtgaflkvZQ1p7z?=
 =?iso-8859-1?Q?7qzg0c9Fiw/OtPNPhpuKaFWrmeIi63h5t7aKAEzmphp8omaLOtSAARzgfy?=
 =?iso-8859-1?Q?YINB6P4BKgsyS6uBWnrjy58J50oXBYsBcxs7diJHm1+yJGIe6FKG2sVlWw?=
 =?iso-8859-1?Q?d/RaQV3C0+uGCNyr169zPQ4BHkOJtA71siT8NNSQiB4sRtCfTSFtN03nJa?=
 =?iso-8859-1?Q?QISS35A+TcBD4VdLJ2VbavlkJ1M/X09TPBYSqUuPAC2ZxMJdDh0wR2OGxp?=
 =?iso-8859-1?Q?QRkf9G0TRGIlDh2LJxyRhKQjWBSqkZmC3uiuW//1ufVMMgep2m7HHQ1Huq?=
 =?iso-8859-1?Q?glhxPcQg5wkmxVW1HeOu7FMfzZgWUWlcK6eitnx+jb92kWKIeSWk2T74DJ?=
 =?iso-8859-1?Q?o2G7B1pgGvBWU7C2BLQturGXFxNFgnuCqF9TsNosWrUfLTBaBpf5CkyCGN?=
 =?iso-8859-1?Q?b6/fbqVVUCZnYcDIOMTp8qSbv0GSB05i+ICQNd2Ds70T3/hfCzSaCUKxJB?=
 =?iso-8859-1?Q?B9wZr08SW7tzeRGuBZ2b0RWgJPNGsr9Va1705nGUbFPORfde/AmaxZn7uH?=
 =?iso-8859-1?Q?U3r/hz6z3kGZhVc6Ol3fD07z4lugSQZdcUYmoG0fsCTdTsMnmB59ZS3zBL?=
 =?iso-8859-1?Q?CAX3y7MKkjJoZeoAcLfkmPmSiCEFtbSTmfKVRJ/QrFfpQ49o5J+YExoSCN?=
 =?iso-8859-1?Q?91CyV3lJmC1mApRGWy+xrr12dQQ7wdpVLwCiihXwJQU2IP3UmBkBPxxBdH?=
 =?iso-8859-1?Q?B/4MijqWVxqH3tIvlEnvVpToJleiAq1re67nOja9C1fFpuCPhJSu5e7E3A?=
 =?iso-8859-1?Q?n65aTWWfObweNugh2JhNKaeChLw5aHEI/jaOXYf9UnBm1DFvcTtgUMqKg8?=
 =?iso-8859-1?Q?zI3fXW4B+59oerY6Kvt+JiWu9lLA05HkqsLIHUaP48MrPz9TfAiGlubYnU?=
 =?iso-8859-1?Q?oSrVRt16shAVPk1hh8EECkzU7Gs5CL0RVFHeJYLp9/e9aa7i0uyF+JDb7c?=
 =?iso-8859-1?Q?/TqlEuOdz+akTe/eHh3TtXW81F1gMElwlky6lzeS4guLMxmWktTtu79QNc?=
 =?iso-8859-1?Q?lGOr8q2bypsjylfsGRQLHKts7aEeepLCQGIH84yh+bf9f0HGY8DW40Ua5y?=
 =?iso-8859-1?Q?1j9EhR+DogecblM8TYzh57r3rHeZCsNd0RdzVZekH0PHxROzqlUSoKUvZZ?=
 =?iso-8859-1?Q?zGbfhT4wg502/bV2vlPsGv74A/d2lFSp79KbnaBnquqrhGhQ88CUJ9Mvb0?=
 =?iso-8859-1?Q?906gdJhJQK8el5bAFRXFvLMu+nF5O0CuHyTJiBZg7eAvOwS/zsJ9vK9Zs4?=
 =?iso-8859-1?Q?PPtScJ311NjRddkwC6TIfQ7Gty2UcTvzCWhz9JHC8bMabMIAvtZ/juqw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af12c5b8-735b-4203-1134-08db3a9c2f27
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2023 14:51:08.6380 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: opHieZPxooi9MllNsNBcmQ2fcvtT0GXWT/rCRcZtVkP1ybdf4VUyqERlBQjA8NizTolXdcygzw7QA48yKi0/Fg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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

On Tue, Apr 11, 2023 at 12:14:36PM +0300, Jani Nikula wrote:
> On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Apr 11, 2023 at 11:51:33AM +0300, Jani Nikula wrote:
> >> On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Mon, Apr 10, 2023 at 11:32:14AM -0700, José Roberto de Souza wrote:
> >> >> Start to move the initialization of some lock from
> >> >> i915_driver_early_probe().
> >> >> No dkl function is called prior to intel_setup_outputs(), so this is
> >> >> a good place to initialize it.
> >> >
> >> > I disagree. We don't want to sprinke these all over the place.
> >> 
> >> I'm thinking if only foo.c uses a lock, foo.c should initialize it, not
> >> someone else.
> >
> > Perhaps. But I think there should be some consistent place in the higher
> > level code where all such things get called instead of dropping each one
> > individually into some random spot in the overlall display init flow.
> 
> Agreed.

Ops, I just saw this now, right after I cc'ed you in the other thread.

So, probably good to hold this and do the entire refactor together of all
those locks initialization so we find this common consistent place apparently...

> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
