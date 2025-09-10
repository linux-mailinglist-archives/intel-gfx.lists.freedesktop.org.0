Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9352B51E1A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Sep 2025 18:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 520CF10E97F;
	Wed, 10 Sep 2025 16:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OH8+37mp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D28710E97E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 16:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757522716; x=1789058716;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5FPbpcoCz1+qmhx9r/YpCj1zA5fY1b8Y8EW4hb88ouE=;
 b=OH8+37mpNdUr9knrUGiP9vvirk/2+MZbmublvtrjGYFetACzq97LpIWL
 ZMRk9OTeQMQVyqa+eYKYCNhOVY0t/ds//6rV3w2hgFeOjCRbtvodEpHTo
 H7bxrETewu6xCFrdo2ezNyeoIhhFHqDQyuA9WTkI6dWmj1OxfEsLqUG4M
 xW4/96qcgQuU9AiJ4Tb4OYhLVcyEBAIFp84g6wozb0alYh5YsvDRQo8Dt
 fqs7sIj7/FP6HiO8xRww+LgLRClASda5UArbTZp2v2dDrlmSBzRWUKCSy
 le87GOkBuSfewlIpE/rMOx0UgDwNV6M+/IKreTVXrs90gVrTnGVpLzIgw w==;
X-CSE-ConnectionGUID: KhRIKu2lSoO9uICUAhA1TA==
X-CSE-MsgGUID: CKyVG0waTJ+PBklsaZofFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="59916965"
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="59916965"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 09:45:16 -0700
X-CSE-ConnectionGUID: pFcVMqa8SBGPcrJlOa70lw==
X-CSE-MsgGUID: s6bfjIfsTmmpnkvXzUOhjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,254,1751266800"; d="scan'208";a="210562962"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 09:45:16 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 09:45:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 09:45:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.66)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 09:45:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qJS6kD0hpp7x7oZ7c7SwDyJWCbmftKv/E9NOAp98P8BwZ6QXQoy4l7ow/A4gAIOJSb1sFuAJTNBp7umYVJopqIBP/e5HGyKHzrh5HZa3+zKc+GRjmi4r19wvNwKO0xNq7qDi7Kx4vPtKNBuB74/RuV0QdHXi1JweYtETHzegBq4zeQpLSyWaUsUds+laDaSvzf3KR7xZ/QcG6Er3YzSSigy6wl5MTeKlRxU4I71OR33z1DxjdWisrQtWYA45Cmzng0YP5ysm4dpOXwa0XMS9z63qqNRf671ypczhniFnbutP0V+jVT70ng2FgTRHAT3NlIwFMHdYUq3MEbX3/LDVPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2aWD3/u77iK3ERrCipgU5zCFJUuOHC9H/JIW4NsJAD8=;
 b=NVrkuGRGhZVxQopQ64pAY99I4z6W3nRUxzJ35jyCSnpqxETj/vORxv8Nxzphs/sUf9C7i2LKQ8k6r96hW3Ang7rhWvEjhssWxLZXlEyP5K715qRxXS77bpcfJneorvYdFSsxucZNv4MHtDNn/jARS4Rb+OcEb7oHPVjjf0Obmtt9PvMva2vbWUZY5JN/mRt4FND5AgMdoFhTBZGgUcGAvoZqgyVFD7uplYILv7DyH/2nyz6XkICa3T0TtqU0Sr4Jiei85lAsocdmHlQuEoerz8kNXSHtPnrYFkW0BouJ51RMMJc1F3srxk23DteHS6sIc5Dtr2L1In1Et1/gnJ93WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 16:45:12 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 16:45:11 +0000
Date: Wed, 10 Sep 2025 12:45:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915: split out i915_wait_util.h
Message-ID: <aMGrEzv0IMjc6OqZ@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
 <7845cd4643bfa1caf4d177d9c8bab28a6c2c9998.1757340521.git.jani.nikula@intel.com>
 <aMAuTHq8uyHWAv5l@intel.com>
 <95099d2538cd2290bf875b264e9e49812d54fe12@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <95099d2538cd2290bf875b264e9e49812d54fe12@intel.com>
X-ClientProxiedBy: BY3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:254::28) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SN7PR11MB7041:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e7a0311-feed-4015-aa00-08ddf089684a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?h91wSYa7OxZnBZJ+ux41iVPU2UdTNlPv4dmxbVOINVbZ9SkrTf//clTZsR?=
 =?iso-8859-1?Q?vfpvqS5936YznC/YJQKijF5EwHlCkptRISRZy3BK98eX2SyGYq5z4A/+vI?=
 =?iso-8859-1?Q?yXnPOX3cq8ZpIGiXq0ZMAnS4l+Y1HZyw+7FAHy0Z/sRPYrzHv/kgIIH56Y?=
 =?iso-8859-1?Q?JlZ4HjzfkmV6ZjwnptPf/afkRqjtSdC5baYEvXZ96lubXvZeEhvJr6xf2Z?=
 =?iso-8859-1?Q?/BOdoZclQ6tKI6Jvg5v1gPjKBVTDZoRU34mUGDsnkV0bYaqE0Oqy6bMFz1?=
 =?iso-8859-1?Q?2GLyZANvu66MjnL2uzktcyJX9ZgLvIXhWhB2Ign3ptq6b1Vc9uAMnmSVVB?=
 =?iso-8859-1?Q?W/2QMFjNgVDe9MWoGuozfTfe4b84fUe5spp5mwOix0TNgT4fbxSsPpHzPC?=
 =?iso-8859-1?Q?EQtSsaVXgExrsRYvYnLOEhvBFrsErtNKRrhxN0w+d2gWWn6L5humyCcKGU?=
 =?iso-8859-1?Q?ANC3+Kr0+eHdLIa5HSwt/CxPes9fnQ3EueINYm86N4c67a2xHG69Gq4s5I?=
 =?iso-8859-1?Q?8amGQWXRdlFO8NeccDpC3kUOIyACsD6tBq1Zd1J1ZXbsIkZPGowy+Z6/T+?=
 =?iso-8859-1?Q?+prdqMIQGFP2oJW3jic0HX/5CkKKlfB6aXckpO0T8rezd7VI6dkcPy0RMV?=
 =?iso-8859-1?Q?rLybWqRXVW2xcfy2jrrznmGaifanN7b1fhpKIyWOd7xtYwAhkc5hZaPRxY?=
 =?iso-8859-1?Q?HackEB8dYrtoBcs5V4BfNVzCdNDEp9NbjsIA7shxOVD9dv18lBI2MA6Q/2?=
 =?iso-8859-1?Q?0f4PPyF+7u2A2YNhfbGVCc536cfIGf/oufFEqzzkrmTB6wITGpwfaqQvXc?=
 =?iso-8859-1?Q?V8/Gvuqpcd54qZytegmUtaZZ3bywBdwXE7NPdr+84q3TvWQsJ5P10BIATy?=
 =?iso-8859-1?Q?20GleZOiq9Q0lizuvg2lWkM2X9jlLSL1qyGFTM/gSHhrnaCvSShdv0tvWw?=
 =?iso-8859-1?Q?6flIX/dRr6DpHZBefli7/DAaWT12kjYbcH+B9WRzuEVpUq5Qt23yaX8dRo?=
 =?iso-8859-1?Q?if+cWWI8r5RhUE7lBhFGT/Zc+Xo09ci3sVOSB4Df3WxLMGc16JtPWXxOhO?=
 =?iso-8859-1?Q?Wgmhe+FiO+YeVQE3Dn9nOPqvlxnYQCZ2acyfswPndB8LB/9NiKTl082HsJ?=
 =?iso-8859-1?Q?aQjaYMpuwpdlJZ3YPiu634XPrP7eTS8W0wXjjrgzRE+/O5Ya3+OFG4FlCh?=
 =?iso-8859-1?Q?dhtcH6soOjFop+HLViFXZtKeis+SAHzGGwyPLJMSArYI09GO7oN/V/lH5z?=
 =?iso-8859-1?Q?Vgi3h4w61k4XkbLQzFX+JLEvtpKyliA0j/V7qzjbQNI2kmGbKRFLXwduFR?=
 =?iso-8859-1?Q?ED7J6n9YWrmuPiNv8LxH2u8vmQ+qw0ApvXmyJ9NTVAcAQpsGLAij1ryJfa?=
 =?iso-8859-1?Q?EVtOi1nWfOc07BXVxxKgpCNKH8ppNP9dbrGyC4clrwjB5fXxVMsf7GSQDs?=
 =?iso-8859-1?Q?paEPawy4pb3YXu0kW51lAasqY+N1tMwpCEMYBDM5WtL4O2Yz1mFkLwhDiB?=
 =?iso-8859-1?Q?0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?/Kr7jwIFoYZedk7u3fzwkLTl7IKg/U5iZ7b/HZxTO9scn1CjNIj1kK4gdg?=
 =?iso-8859-1?Q?dpheoPkKQ9XndJQekR8uttlpANSby9PPYKqYInIdtuK+v4qS12WhXe4eaU?=
 =?iso-8859-1?Q?k5w77Po2u8mkTVTZTpSsO1SxAwYsYA/xPKyhOICnZ2N3oPYA37yDhioOx/?=
 =?iso-8859-1?Q?npn3OmCWN6N5ul3g0Fwh4a/YwJqEEf2RCcHQiTF1HAOaf5dTGHpvzRw6Xt?=
 =?iso-8859-1?Q?xHzs/EH73U4wfEwJyXm+68ZxzHmzJlEx3uxH4Pcaf/e889Kr7YWjUSWfJx?=
 =?iso-8859-1?Q?E0o3Uhyo5NGrEXCO+yXRqIJOfY0j3fD6QyBLv65nC5DFyC2VTYRiZuuQ62?=
 =?iso-8859-1?Q?b/SA4dO7+4WyL1daEPMephCdgW8Mafp+D0q+4/UgOj5q1LS4OT468x008H?=
 =?iso-8859-1?Q?5IGOcyYNTd49b+EqgmKhrvOW34hy161B4jFQCCfvSj7MnMRyAj2/78gXqy?=
 =?iso-8859-1?Q?7R4W95yUOWJdBxzE4WaX5vdLxMpNDvPA1QIOoomwSXSpnfU1exGR7zliti?=
 =?iso-8859-1?Q?cKKsKhlJi08sbAXR4YhHAyPmhBHvLrFYLlHMq9nW4hDiAQYkNYRuRwIZyu?=
 =?iso-8859-1?Q?NzA4vlBwGWcm48bAjRTNb/8Rf2r2VvoRsWpaSqL2NsYYqZ6jAchoyF0mTE?=
 =?iso-8859-1?Q?u1sVrAGoakbvIC2I8NLLZJRsR9AxBUsCRnBH9j0sx5A9c+e710Xyphf+wD?=
 =?iso-8859-1?Q?+x6FfsjIRN4D9mVXZlDjNA3/UBtA0umC3so2IScfX/oBNnxl3rIYsLFbSJ?=
 =?iso-8859-1?Q?AVk0umXXgEtsaF87AHPSDk6fG8Ru8ZH27zvOWSNfN6LHRUpsvOdrH4b1Gj?=
 =?iso-8859-1?Q?AOPuFxQyLsv+QGa3lbqjdziZ1xpNpiD+WOO5NEq7ASpC8+KC/6+BnvumI7?=
 =?iso-8859-1?Q?vbrDqV1zySrUmZoKTxeOqEom5P14+S7LXPuCEZg5LzW2vnHJWBVXXHqJQY?=
 =?iso-8859-1?Q?Px1F1nhoF7iXXDFFcQvlJc0CN/ShZWdoUT+OxkeMGCEr01oPoEbIVU6b8A?=
 =?iso-8859-1?Q?zRypkWJEifkTURwA7bPMjTIJQbT3oCo9f+YmRsYDoMWlvkKRTt52wWUN9o?=
 =?iso-8859-1?Q?0s6qosmcpc5cQ8l3B0WjZce3oJ68uL16FZ7P/ItoFLTuZBiiFgOJPLRnXk?=
 =?iso-8859-1?Q?KjM3kVt4Fl4Hfh0S/U/E8G7FJYF53aGJPQG842GH4uzoXMoTys/wltKOqf?=
 =?iso-8859-1?Q?9oqZxZIjsAwnaYZG2BaX+zUdXyZ3ZbD9LnT2vtgLnVhOm/esEwPdwtV5DD?=
 =?iso-8859-1?Q?z41dX3p7aZOr6VCuQSt6o8YKS+2Ld3VlH7BkW3J/tzLFAW60jEF0c/eO80?=
 =?iso-8859-1?Q?SRVFxLX+gc2je9rCBoSQtopSgs/C44Zn/WiEcGFZgVh1Cm7cH6RqbLvk1l?=
 =?iso-8859-1?Q?A+u3uzNoMvo1GwqC1V05WuqnZIwNTPTFnWIZrOExd+28ywbnXl1UBszzeZ?=
 =?iso-8859-1?Q?7vMs6QqQE+LH91sh/0LtRN5hme+AMkwri1LRrFKKa+WDR0h+6+DEq1bHq5?=
 =?iso-8859-1?Q?LiLOaDZl1BjtoZ1sJ3LGi+KvrOzwfsZSabp/9LVhl50sXsCqChgbOqhiJz?=
 =?iso-8859-1?Q?iffEaGcdSSlhZJJZA8GSROE5VIHYx6FAJREnCPSnmAJz5MSIBBZhIiFFOW?=
 =?iso-8859-1?Q?YgGeb87sOxCiR4Swye8BWTJlsIFG9m1QGO0QnNws8re5LJgAmgXnTZEg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e7a0311-feed-4015-aa00-08ddf089684a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 16:45:11.0632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0K4LJkvFNp5YFFuQWBGtOaxC9IJYdcSkDG2njmqjukJUq6XWyoanKj86CvcQrCqsY4W/0da0lB9tej86OyTA8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7041
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

On Wed, Sep 10, 2025 at 03:06:56PM +0300, Jani Nikula wrote:
> On Tue, 09 Sep 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Sep 08, 2025 at 05:11:49PM +0300, Jani Nikula wrote:
> >> Move waiting related utilities from i915_utils.h to separate new file
> >> i915_wait_util.h. Clean up related includes.
> >> 
> >> Note: Many of the various wait macro usages could likely be refactored
> >> to use poll_timeout_us().
> >
> > I hope so! :)
> >
> > nice clean up overall, although my dream is that we
> > could get rid entirely of these utils that pretend
> > they are core kernel.
> >
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks, but no dice. :(
> 
> I didn't realize GEM_BUG_ON() uses GEM_TRACE_DUMP() uses

sorry for missing that too

> __add_taint_for_CI(), i.e. 
> roughly everything requires i915_utils.h.
> 

(facepalm)...

> Maybe I'll post just some of these and drop patch 1.

already a good start anyway ;)

> 
> BR,
> Jani.
> 
> 
> 
> 
> >
> >
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/gt/intel_execlists_submission.c  |   1 +
> >>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   1 +
> >>  drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
> >>  .../gpu/drm/i915/gt/intel_ring_submission.c   |   7 +-
> >>  drivers/gpu/drm/i915/gt/intel_rps.c           |   2 +
> >>  drivers/gpu/drm/i915/gt/selftest_tlb.c        |   6 +-
> >>  drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  |   6 +-
> >>  .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |   2 +
> >>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   8 +-
> >>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +-
> >>  drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   4 +-
> >>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  13 +-
> >>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
> >>  drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
> >>  drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
> >>  drivers/gpu/drm/i915/i915_utils.h             | 106 ----------------
> >>  drivers/gpu/drm/i915/i915_wait_util.h         | 119 ++++++++++++++++++
> >>  drivers/gpu/drm/i915/intel_pcode.c            |   1 +
> >>  drivers/gpu/drm/i915/intel_uncore.c           |   7 +-
> >>  drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
> >>  drivers/gpu/drm/i915/selftests/i915_request.c |   5 +-
> >>  .../gpu/drm/i915/selftests/i915_selftest.c    |   2 +-
> >>  drivers/gpu/drm/i915/selftests/igt_spinner.c  |   5 +-
> >>  drivers/gpu/drm/i915/vlv_suspend.c            |   5 +-
> >>  24 files changed, 183 insertions(+), 150 deletions(-)
> >>  create mode 100644 drivers/gpu/drm/i915/i915_wait_util.h
> >> 
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> >> index 0c1b2df02d26..7f389cb0bde4 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> >> @@ -117,6 +117,7 @@
> >>  #include "i915_timer_util.h"
> >>  #include "i915_trace.h"
> >>  #include "i915_vgpu.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_breadcrumbs.h"
> >>  #include "intel_context.h"
> >>  #include "intel_engine_heartbeat.h"
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> >> index a60822e2b5d4..c3afa321fe30 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> >> @@ -4,6 +4,7 @@
> >>   */
> >>  
> >>  #include "i915_drv.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_gt.h"
> >>  #include "intel_gt_mcr.h"
> >>  #include "intel_gt_print.h"
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> >> index 4a1675dea1c7..41b5036dc538 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> >> @@ -9,18 +9,17 @@
> >>  
> >>  #include "display/intel_display_reset.h"
> >>  #include "display/intel_overlay.h"
> >> -
> >>  #include "gem/i915_gem_context.h"
> >> -
> >>  #include "gt/intel_gt_regs.h"
> >> -
> >>  #include "gt/uc/intel_gsc_fw.h"
> >> +#include "uc/intel_guc.h"
> >>  
> >>  #include "i915_drv.h"
> >>  #include "i915_file_private.h"
> >>  #include "i915_gpu_error.h"
> >>  #include "i915_irq.h"
> >>  #include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_breadcrumbs.h"
> >>  #include "intel_engine_pm.h"
> >>  #include "intel_engine_regs.h"
> >> @@ -32,8 +31,6 @@
> >>  #include "intel_pci_config.h"
> >>  #include "intel_reset.h"
> >>  
> >> -#include "uc/intel_guc.h"
> >> -
> >>  #define RESET_MAX_RETRIES 3
> >>  
> >>  static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> >> index 2a6d79abf25b..8314a4b0505e 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> >> @@ -15,18 +15,19 @@
> >>  #include "i915_irq.h"
> >>  #include "i915_mitigations.h"
> >>  #include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_breadcrumbs.h"
> >>  #include "intel_context.h"
> >> +#include "intel_engine_heartbeat.h"
> >> +#include "intel_engine_pm.h"
> >>  #include "intel_engine_regs.h"
> >>  #include "intel_gt.h"
> >>  #include "intel_gt_irq.h"
> >> +#include "intel_gt_print.h"
> >>  #include "intel_gt_regs.h"
> >>  #include "intel_reset.h"
> >>  #include "intel_ring.h"
> >>  #include "shmem_utils.h"
> >> -#include "intel_engine_heartbeat.h"
> >> -#include "intel_engine_pm.h"
> >> -#include "intel_gt_print.h"
> >>  
> >>  /* Rough estimate of the typical request size, performing a flush,
> >>   * set-context and then emitting the batch.
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> >> index 006042e0b229..4da94098bd3e 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> >> @@ -10,9 +10,11 @@
> >>  #include "display/intel_display.h"
> >>  #include "display/intel_display_rps.h"
> >>  #include "soc/intel_dram.h"
> >> +
> >>  #include "i915_drv.h"
> >>  #include "i915_irq.h"
> >>  #include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_breadcrumbs.h"
> >>  #include "intel_gt.h"
> >>  #include "intel_gt_clock_utils.h"
> >> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> >> index 69ed946a39e5..a5184f09d1de 100644
> >> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> >> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> >> @@ -3,17 +3,17 @@
> >>   * Copyright © 2022 Intel Corporation
> >>   */
> >>  
> >> -#include "i915_selftest.h"
> >> -
> >>  #include "gem/i915_gem_internal.h"
> >>  #include "gem/i915_gem_lmem.h"
> >>  #include "gem/i915_gem_region.h"
> >>  
> >>  #include "gen8_engine_cs.h"
> >>  #include "i915_gem_ww.h"
> >> +#include "i915_selftest.h"
> >> +#include "i915_wait_util.h"
> >> +#include "intel_context.h"
> >>  #include "intel_engine_regs.h"
> >>  #include "intel_gpu_commands.h"
> >> -#include "intel_context.h"
> >>  #include "intel_gt.h"
> >>  #include "intel_ring.h"
> >>  
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> >> index d8edd7c054c8..e7444ebc373e 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> >> @@ -10,11 +10,13 @@
> >>  
> >>  #include "gt/intel_gt.h"
> >>  #include "gt/intel_gt_print.h"
> >> +
> >> +#include "i915_drv.h"
> >> +#include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_gsc_proxy.h"
> >>  #include "intel_gsc_uc.h"
> >>  #include "intel_gsc_uc_heci_cmd_submit.h"
> >> -#include "i915_drv.h"
> >> -#include "i915_reg.h"
> >>  
> >>  /*
> >>   * GSC proxy:
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
> >> index 2fde5c360cff..9bd29be7656f 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
> >> @@ -8,6 +8,8 @@
> >>  #include "gt/intel_gpu_commands.h"
> >>  #include "gt/intel_gt.h"
> >>  #include "gt/intel_ring.h"
> >> +
> >> +#include "i915_wait_util.h"
> >>  #include "intel_gsc_uc_heci_cmd_submit.h"
> >>  
> >>  struct gsc_heci_pkt {
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> >> index f360f020d8f1..52ec4421a211 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> >> @@ -8,15 +8,17 @@
> >>  #include "gt/intel_gt_irq.h"
> >>  #include "gt/intel_gt_pm_irq.h"
> >>  #include "gt/intel_gt_regs.h"
> >> +
> >> +#include "i915_drv.h"
> >> +#include "i915_irq.h"
> >> +#include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_guc.h"
> >>  #include "intel_guc_ads.h"
> >>  #include "intel_guc_capture.h"
> >>  #include "intel_guc_print.h"
> >>  #include "intel_guc_slpc.h"
> >>  #include "intel_guc_submission.h"
> >> -#include "i915_drv.h"
> >> -#include "i915_irq.h"
> >> -#include "i915_reg.h"
> >>  
> >>  /**
> >>   * DOC: GuC
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >> index 380a11c92d63..3e7e5badcc2b 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> >> @@ -5,11 +5,12 @@
> >>  
> >>  #include <linux/circ_buf.h>
> >>  #include <linux/ktime.h>
> >> -#include <linux/time64.h>
> >>  #include <linux/string_helpers.h>
> >> +#include <linux/time64.h>
> >>  #include <linux/timekeeping.h>
> >>  
> >>  #include "i915_drv.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_guc_ct.h"
> >>  #include "intel_guc_print.h"
> >>  
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> >> index e7ccfa520df3..1bb1491f90fc 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> >> @@ -13,9 +13,11 @@
> >>  #include "gt/intel_gt_mcr.h"
> >>  #include "gt/intel_gt_regs.h"
> >>  #include "gt/intel_rps.h"
> >> +
> >> +#include "i915_drv.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_guc_fw.h"
> >>  #include "intel_guc_print.h"
> >> -#include "i915_drv.h"
> >>  
> >>  static void guc_prepare_xfer(struct intel_gt *gt)
> >>  {
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> >> index d5ee6e5e1443..fa9af08f9708 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> >> @@ -3,17 +3,20 @@
> >>   * Copyright © 2021 Intel Corporation
> >>   */
> >>  
> >> -#include <drm/drm_cache.h>
> >>  #include <linux/string_helpers.h>
> >>  
> >> +#include <drm/drm_cache.h>
> >> +
> >> +#include "gt/intel_gt.h"
> >> +#include "gt/intel_gt_regs.h"
> >> +#include "gt/intel_rps.h"
> >> +
> >>  #include "i915_drv.h"
> >>  #include "i915_reg.h"
> >> -#include "intel_guc_slpc.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_guc_print.h"
> >> +#include "intel_guc_slpc.h"
> >>  #include "intel_mchbar_regs.h"
> >> -#include "gt/intel_gt.h"
> >> -#include "gt/intel_gt_regs.h"
> >> -#include "gt/intel_rps.h"
> >>  
> >>  /**
> >>   * DOC: SLPC - Dynamic Frequency management
> >> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >> index 127316d2c8aa..68f2b8d363ac 100644
> >> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> >> @@ -25,16 +25,16 @@
> >>  #include "gt/intel_mocs.h"
> >>  #include "gt/intel_ring.h"
> >>  
> >> +#include "i915_drv.h"
> >> +#include "i915_irq.h"
> >> +#include "i915_reg.h"
> >> +#include "i915_trace.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_guc_ads.h"
> >>  #include "intel_guc_capture.h"
> >>  #include "intel_guc_print.h"
> >>  #include "intel_guc_submission.h"
> >>  
> >> -#include "i915_drv.h"
> >> -#include "i915_reg.h"
> >> -#include "i915_irq.h"
> >> -#include "i915_trace.h"
> >> -
> >>  /**
> >>   * DOC: GuC-based command submission
> >>   *
> >> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
> >> index 2f7208843367..0b810baad20a 100644
> >> --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
> >> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
> >> @@ -33,14 +33,16 @@
> >>   *
> >>   */
> >>  
> >> -#include "i915_drv.h"
> >> -#include "i915_reg.h"
> >>  #include "gt/intel_context.h"
> >>  #include "gt/intel_engine_regs.h"
> >>  #include "gt/intel_gpu_commands.h"
> >>  #include "gt/intel_gt_regs.h"
> >>  #include "gt/intel_ring.h"
> >> +
> >>  #include "gvt.h"
> >> +#include "i915_drv.h"
> >> +#include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "trace.h"
> >>  
> >>  #define GEN9_MOCS_SIZE		64
> >> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> >> index 23fa098c4479..c2e38d4bcd01 100644
> >> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> >> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> >> @@ -26,11 +26,11 @@
> >>   *
> >>   */
> >>  
> >> +#include <linux/debugfs.h>
> >>  #include <linux/sched/mm.h>
> >>  #include <linux/sort.h>
> >>  #include <linux/string_helpers.h>
> >>  
> >> -#include <linux/debugfs.h>
> >>  #include <drm/drm_debugfs.h>
> >>  
> >>  #include "gem/i915_gem_context.h"
> >> @@ -54,6 +54,7 @@
> >>  #include "i915_irq.h"
> >>  #include "i915_reg.h"
> >>  #include "i915_scheduler.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_mchbar_regs.h"
> >>  
> >>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
> >> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> >> index 4a6437d6e00e..a0c892e4c40d 100644
> >> --- a/drivers/gpu/drm/i915/i915_utils.h
> >> +++ b/drivers/gpu/drm/i915/i915_utils.h
> >> @@ -134,112 +134,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
> >>  	}
> >>  }
> >>  
> >> -/*
> >> - * __wait_for - magic wait macro
> >> - *
> >> - * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
> >> - * important that we check the condition again after having timed out, since the
> >> - * timeout could be due to preemption or similar and we've never had a chance to
> >> - * check the condition before the timeout.
> >> - */
> >> -#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
> >> -	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
> >> -	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
> >> -	int ret__;							\
> >> -	might_sleep();							\
> >> -	for (;;) {							\
> >> -		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
> >> -		OP;							\
> >> -		/* Guarantee COND check prior to timeout */		\
> >> -		barrier();						\
> >> -		if (COND) {						\
> >> -			ret__ = 0;					\
> >> -			break;						\
> >> -		}							\
> >> -		if (expired__) {					\
> >> -			ret__ = -ETIMEDOUT;				\
> >> -			break;						\
> >> -		}							\
> >> -		usleep_range(wait__, wait__ * 2);			\
> >> -		if (wait__ < (Wmax))					\
> >> -			wait__ <<= 1;					\
> >> -	}								\
> >> -	ret__;								\
> >> -})
> >> -
> >> -#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
> >> -						   (Wmax))
> >> -#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
> >> -
> >> -/*
> >> - * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
> >> - * On PREEMPT_RT the context isn't becoming atomic because it is used in an
> >> - * interrupt handler or because a spinlock_t is acquired. This leads to
> >> - * warnings which don't occur otherwise and therefore the check is disabled.
> >> - */
> >> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
> >> -# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
> >> -#else
> >> -# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
> >> -#endif
> >> -
> >> -#define _wait_for_atomic(COND, US, ATOMIC) \
> >> -({ \
> >> -	int cpu, ret, timeout = (US) * 1000; \
> >> -	u64 base; \
> >> -	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
> >> -	if (!(ATOMIC)) { \
> >> -		preempt_disable(); \
> >> -		cpu = smp_processor_id(); \
> >> -	} \
> >> -	base = local_clock(); \
> >> -	for (;;) { \
> >> -		u64 now = local_clock(); \
> >> -		if (!(ATOMIC)) \
> >> -			preempt_enable(); \
> >> -		/* Guarantee COND check prior to timeout */ \
> >> -		barrier(); \
> >> -		if (COND) { \
> >> -			ret = 0; \
> >> -			break; \
> >> -		} \
> >> -		if (now - base >= timeout) { \
> >> -			ret = -ETIMEDOUT; \
> >> -			break; \
> >> -		} \
> >> -		cpu_relax(); \
> >> -		if (!(ATOMIC)) { \
> >> -			preempt_disable(); \
> >> -			if (unlikely(cpu != smp_processor_id())) { \
> >> -				timeout -= now - base; \
> >> -				cpu = smp_processor_id(); \
> >> -				base = local_clock(); \
> >> -			} \
> >> -		} \
> >> -	} \
> >> -	ret; \
> >> -})
> >> -
> >> -#define wait_for_us(COND, US) \
> >> -({ \
> >> -	int ret__; \
> >> -	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> >> -	if ((US) > 10) \
> >> -		ret__ = _wait_for((COND), (US), 10, 10); \
> >> -	else \
> >> -		ret__ = _wait_for_atomic((COND), (US), 0); \
> >> -	ret__; \
> >> -})
> >> -
> >> -#define wait_for_atomic_us(COND, US) \
> >> -({ \
> >> -	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> >> -	BUILD_BUG_ON((US) > 50000); \
> >> -	_wait_for_atomic((COND), (US), 1); \
> >> -})
> >> -
> >> -#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 1000)
> >> -
> >>  #define KHz(x) (1000 * (x))
> >>  #define MHz(x) KHz(1000 * (x))
> >>  
> >> diff --git a/drivers/gpu/drm/i915/i915_wait_util.h b/drivers/gpu/drm/i915/i915_wait_util.h
> >> new file mode 100644
> >> index 000000000000..7376898e3bf8
> >> --- /dev/null
> >> +++ b/drivers/gpu/drm/i915/i915_wait_util.h
> >> @@ -0,0 +1,119 @@
> >> +/* SPDX-License-Identifier: MIT */
> >> +/* Copyright © 2025 Intel Corporation */
> >> +
> >> +#ifndef __I915_WAIT_UTIL_H__
> >> +#define __I915_WAIT_UTIL_H__
> >> +
> >> +#include <linux/compiler.h>
> >> +#include <linux/delay.h>
> >> +#include <linux/ktime.h>
> >> +#include <linux/sched/clock.h>
> >> +#include <linux/smp.h>
> >> +
> >> +/*
> >> + * __wait_for - magic wait macro
> >> + *
> >> + * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
> >> + * important that we check the condition again after having timed out, since the
> >> + * timeout could be due to preemption or similar and we've never had a chance to
> >> + * check the condition before the timeout.
> >> + */
> >> +#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
> >> +	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
> >> +	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
> >> +	int ret__;							\
> >> +	might_sleep();							\
> >> +	for (;;) {							\
> >> +		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
> >> +		OP;							\
> >> +		/* Guarantee COND check prior to timeout */		\
> >> +		barrier();						\
> >> +		if (COND) {						\
> >> +			ret__ = 0;					\
> >> +			break;						\
> >> +		}							\
> >> +		if (expired__) {					\
> >> +			ret__ = -ETIMEDOUT;				\
> >> +			break;						\
> >> +		}							\
> >> +		usleep_range(wait__, wait__ * 2);			\
> >> +		if (wait__ < (Wmax))					\
> >> +			wait__ <<= 1;					\
> >> +	}								\
> >> +	ret__;								\
> >> +})
> >> +
> >> +#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
> >> +						   (Wmax))
> >> +#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
> >> +
> >> +/*
> >> + * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
> >> + * On PREEMPT_RT the context isn't becoming atomic because it is used in an
> >> + * interrupt handler or because a spinlock_t is acquired. This leads to
> >> + * warnings which don't occur otherwise and therefore the check is disabled.
> >> + */
> >> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
> >> +# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
> >> +#else
> >> +# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
> >> +#endif
> >> +
> >> +#define _wait_for_atomic(COND, US, ATOMIC) \
> >> +({ \
> >> +	int cpu, ret, timeout = (US) * 1000; \
> >> +	u64 base; \
> >> +	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
> >> +	if (!(ATOMIC)) { \
> >> +		preempt_disable(); \
> >> +		cpu = smp_processor_id(); \
> >> +	} \
> >> +	base = local_clock(); \
> >> +	for (;;) { \
> >> +		u64 now = local_clock(); \
> >> +		if (!(ATOMIC)) \
> >> +			preempt_enable(); \
> >> +		/* Guarantee COND check prior to timeout */ \
> >> +		barrier(); \
> >> +		if (COND) { \
> >> +			ret = 0; \
> >> +			break; \
> >> +		} \
> >> +		if (now - base >= timeout) { \
> >> +			ret = -ETIMEDOUT; \
> >> +			break; \
> >> +		} \
> >> +		cpu_relax(); \
> >> +		if (!(ATOMIC)) { \
> >> +			preempt_disable(); \
> >> +			if (unlikely(cpu != smp_processor_id())) { \
> >> +				timeout -= now - base; \
> >> +				cpu = smp_processor_id(); \
> >> +				base = local_clock(); \
> >> +			} \
> >> +		} \
> >> +	} \
> >> +	ret; \
> >> +})
> >> +
> >> +#define wait_for_us(COND, US) \
> >> +({ \
> >> +	int ret__; \
> >> +	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> >> +	if ((US) > 10) \
> >> +		ret__ = _wait_for((COND), (US), 10, 10); \
> >> +	else \
> >> +		ret__ = _wait_for_atomic((COND), (US), 0); \
> >> +	ret__; \
> >> +})
> >> +
> >> +#define wait_for_atomic_us(COND, US) \
> >> +({ \
> >> +	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> >> +	BUILD_BUG_ON((US) > 50000); \
> >> +	_wait_for_atomic((COND), (US), 1); \
> >> +})
> >> +
> >> +#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 1000)
> >> +
> >> +#endif /* __I915_WAIT_UTIL_H__ */
> >> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> >> index 81da75108c60..55ffedad2490 100644
> >> --- a/drivers/gpu/drm/i915/intel_pcode.c
> >> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> >> @@ -5,6 +5,7 @@
> >>  
> >>  #include "i915_drv.h"
> >>  #include "i915_reg.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_pcode.h"
> >>  
> >>  static int gen6_check_mailbox_status(u32 mbox)
> >> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> >> index 4ccba7c8ffb3..8cb59f8d1f4c 100644
> >> --- a/drivers/gpu/drm/i915/intel_uncore.c
> >> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> >> @@ -21,19 +21,20 @@
> >>   * IN THE SOFTWARE.
> >>   */
> >>  
> >> -#include <drm/drm_managed.h>
> >>  #include <linux/pm_runtime.h>
> >>  
> >> -#include "display/intel_display_core.h"
> >> +#include <drm/drm_managed.h>
> >>  
> >> -#include "gt/intel_gt.h"
> >> +#include "display/intel_display_core.h"
> >>  #include "gt/intel_engine_regs.h"
> >> +#include "gt/intel_gt.h"
> >>  #include "gt/intel_gt_regs.h"
> >>  
> >>  #include "i915_drv.h"
> >>  #include "i915_iosf_mbi.h"
> >>  #include "i915_reg.h"
> >>  #include "i915_vgpu.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_uncore_trace.h"
> >>  
> >>  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> >> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> >> index f8da693ad3ce..27d545c4e6a5 100644
> >> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> >> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> >> @@ -2,15 +2,15 @@
> >>  /*
> >>   * Copyright(c) 2020 Intel Corporation.
> >>   */
> >> +
> >>  #include <linux/workqueue.h>
> >>  
> >>  #include "gem/i915_gem_context.h"
> >> -
> >>  #include "gt/intel_context.h"
> >>  #include "gt/intel_gt.h"
> >>  
> >>  #include "i915_drv.h"
> >> -
> >> +#include "i915_wait_util.h"
> >>  #include "intel_pxp.h"
> >>  #include "intel_pxp_gsccs.h"
> >>  #include "intel_pxp_irq.h"
> >> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> >> index 2fb7a9e7efec..48cd617247d1 100644
> >> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> >> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> >> @@ -22,14 +22,13 @@
> >>   *
> >>   */
> >>  
> >> -#include <linux/prime_numbers.h>
> >>  #include <linux/pm_qos.h>
> >> +#include <linux/prime_numbers.h>
> >>  #include <linux/sort.h>
> >>  
> >>  #include "gem/i915_gem_internal.h"
> >>  #include "gem/i915_gem_pm.h"
> >>  #include "gem/selftests/mock_context.h"
> >> -
> >>  #include "gt/intel_engine_heartbeat.h"
> >>  #include "gt/intel_engine_pm.h"
> >>  #include "gt/intel_engine_user.h"
> >> @@ -40,11 +39,11 @@
> >>  
> >>  #include "i915_random.h"
> >>  #include "i915_selftest.h"
> >> +#include "i915_wait_util.h"
> >>  #include "igt_flush_test.h"
> >>  #include "igt_live_test.h"
> >>  #include "igt_spinner.h"
> >>  #include "lib_sw_fence.h"
> >> -
> >>  #include "mock_drm.h"
> >>  #include "mock_gem_device.h"
> >>  
> >> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> >> index 889281819c5b..9c276c9d0a75 100644
> >> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> >> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> >> @@ -31,7 +31,7 @@
> >>  #include "i915_driver.h"
> >>  #include "i915_drv.h"
> >>  #include "i915_selftest.h"
> >> -
> >> +#include "i915_wait_util.h"
> >>  #include "igt_flush_test.h"
> >>  
> >>  struct i915_selftest i915_selftest __read_mostly = {
> >> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> >> index 8c3e1f20e5a1..820364171ebe 100644
> >> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> >> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> >> @@ -3,12 +3,13 @@
> >>   *
> >>   * Copyright © 2018 Intel Corporation
> >>   */
> >> -#include "gt/intel_gpu_commands.h"
> >> -#include "gt/intel_gt.h"
> >>  
> >>  #include "gem/i915_gem_internal.h"
> >>  #include "gem/selftests/igt_gem_utils.h"
> >> +#include "gt/intel_gpu_commands.h"
> >> +#include "gt/intel_gt.h"
> >>  
> >> +#include "i915_wait_util.h"
> >>  #include "igt_spinner.h"
> >>  
> >>  int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
> >> diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
> >> index fc9f311ea1db..221e4c0b2c58 100644
> >> --- a/drivers/gpu/drm/i915/vlv_suspend.c
> >> +++ b/drivers/gpu/drm/i915/vlv_suspend.c
> >> @@ -8,16 +8,17 @@
> >>  
> >>  #include <drm/drm_print.h>
> >>  
> >> +#include "gt/intel_gt_regs.h"
> >> +
> >>  #include "i915_drv.h"
> >>  #include "i915_reg.h"
> >>  #include "i915_trace.h"
> >>  #include "i915_utils.h"
> >> +#include "i915_wait_util.h"
> >>  #include "intel_clock_gating.h"
> >>  #include "intel_uncore_trace.h"
> >>  #include "vlv_suspend.h"
> >>  
> >> -#include "gt/intel_gt_regs.h"
> >> -
> >>  struct vlv_s0ix_state {
> >>  	/* GAM */
> >>  	u32 wr_watermark;
> >> -- 
> >> 2.47.3
> >> 
> 
> -- 
> Jani Nikula, Intel
