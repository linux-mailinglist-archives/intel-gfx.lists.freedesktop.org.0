Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8E8A3A050
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 15:45:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE2D10E70D;
	Tue, 18 Feb 2025 14:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AvLEzf8R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A22310E6DB;
 Tue, 18 Feb 2025 14:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739889954; x=1771425954;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WrVFwyAUBqt7CAQsUe6YW6JQFif1DUtJD+YA6KCAi6Y=;
 b=AvLEzf8RVyA/rDyRumH0k3Zvgz+vyUskx3wdhjnORBXNtLtsV07/StrA
 mAhFy5kHXe/7B8x1rtOXfk9utwi/R6qVY3aTdUECjXDghbw8WW07/KzdW
 ZOp0Mwos/Af8ca5iFXIhTtqNnrAd0vZHvmVtUYtspsvXaMlZZMDwOizkQ
 JPMqs7tDn9ko3f8RkDMgxk9/DqrAlAP5bu88BkpDQRqkeBEWcm6qiV5he
 4z/E+h5Wntg+xS2SsN9MolPwU3UUuQcMasieZzQF2GZc5UPA2h3RFc4L+
 KPn5TrFNrpd0jiRon2uLDxEcQQ5GNHz6inchOJVlGnasLyuBdCWx5lzkz Q==;
X-CSE-ConnectionGUID: 9SfEzGoJR4GPZkYqhdK5eA==
X-CSE-MsgGUID: 8N7BvKyuRw2hyWclC1tp5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40509298"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="40509298"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 06:45:54 -0800
X-CSE-ConnectionGUID: CIhRMzddQ3+TlsMiPY5bDw==
X-CSE-MsgGUID: SpG3ZmVPRWG7XxxiQU5Fzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114149554"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 06:45:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 18 Feb 2025 06:45:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 18 Feb 2025 06:45:53 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 18 Feb 2025 06:45:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvylxG8kwvFCNQw4hdhKh7RqKieg/7FTp8Qzs0sbsIeOj1daWSMLb9xpZfbi9WMluROFVZjm5i8GbqzhGJom6ITz3WgwKdCcl+9XwCRt9hJAJqTyeymEDaMIarF62Tc8Tavn9JuJV2rIibhV+BKTGi/xibZnSs93iPS9+5NavSiwuB3GLVijOYR8AfS/nfiHN+Ry/Gn0dA64wwxaUTPyKO1aUrvfOxWIm7kMTYIj5pVKLcYuf5QTnpiZRcy8EgxxTGjokmVV/ooLoI154jazbai9USxyQke0b6JM+DaZWSV4nCKTSZA/ODZc8X09b6nMNF98LbTnHWuGhHOdfJ1NJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vr8Z6pTeBhycBADGhgU+R3KKdw4VxFPNS5z8vkDgYYU=;
 b=CxPO/De8xzX/j6jGipl+l6TrzpCTcUdLhe4fldR/0UB++mQKZLwcYAhg7uln1i/EGGuhCrcLAjDsBHqOyRus246U4LTitBswpUkS/K9XmN53DxU262ERmqcMxRizrvmUA45/S/3AyTjccviYudEkO/viq98xEEnM8iZuyv8pTpmC3Q1dT/b24TxA9rEsvzeWR/LCMFNV6TblOH355kG8dwBnFJ1VbA4HtuNzQtgMitZiI0z/PXN2UreYRo7mZfa50RF62u4LA6saxx+ruAKED+PjLscAxgS+rT0eBi3C6oIpr83h4Tr/DTE+G+tVcCoIm79/JOtGnyyXiQYhoVWJhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH0PR11MB7423.namprd11.prod.outlook.com (2603:10b6:510:282::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Tue, 18 Feb
 2025 14:45:50 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8422.015; Tue, 18 Feb 2025
 14:45:50 +0000
Date: Tue, 18 Feb 2025 09:45:46 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Ville Syrjala" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
Message-ID: <Z7SdGtcVfduRSkNs@intel.com>
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
 <878qq3o36t.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878qq3o36t.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0069.namprd04.prod.outlook.com
 (2603:10b6:303:6b::14) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH0PR11MB7423:EE_
X-MS-Office365-Filtering-Correlation-Id: 8502dfbd-86f2-46d7-1e9e-08dd502aefff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?mSHuGJToCGQ18UkXgfSDViIwAq5bZk6ykm2O1H3OC8dM+r0DXeMWNDuAyJ?=
 =?iso-8859-1?Q?DzhEYCulrWKmD3nKxTrbjPngSyBaed32Mng0Zv3L+wjtvp7eDAfS5sBuTK?=
 =?iso-8859-1?Q?UTvTHV8e0IqihhKm7ktLFGbgWiwKPHIn8g1dXnYc1cY47BvRDwLHRY9pZe?=
 =?iso-8859-1?Q?i0lANOnZPtJe4J47B1XdP/q9j527Woem6UAO1hOeIMqd2lGEan5LYFCJh3?=
 =?iso-8859-1?Q?tgvNFPjiFIBMb7KGrI1deH7Ub851bij+Ijt5ggbgvRLDMJyeMj+XU3dOFH?=
 =?iso-8859-1?Q?zHfnenc+3uxyeO6nTVfj9Er1E7bu+bphvubZFk5v4Moi+ASCVmb9+hMRZm?=
 =?iso-8859-1?Q?jpKyNnGxJ4CybTbA6SjX6wojFm/WsmeKfjXRPpkV48iUW3di/5FDvs/QBn?=
 =?iso-8859-1?Q?lOvuOk6VlFl3CQUjTpDLISUPMQDRP4yxd2ZryK4UvHOgSzgMlBNa0w61L9?=
 =?iso-8859-1?Q?ZYrcVUs9AyuY4Nk2VWHZ5vhFVJ/a8hi/2s2wOkazlBbXXmMlctaWl/g76E?=
 =?iso-8859-1?Q?SKThytiDx+ufCWYvD7i+bDhbw9g9mmt/3kFHnUESAu5WlqkF3f8N/YaPXH?=
 =?iso-8859-1?Q?i1lIz+gZ5dGixr8+XC7qG61TvKznM05mMm22ls6cIdXYoPHbHxTxxjIULX?=
 =?iso-8859-1?Q?IysyGHEMgmONz20BNETqGmXFZGgsOFUh3ACFGXL1OhJ+aKy9rq963PLtd3?=
 =?iso-8859-1?Q?hW8tKauq1eZWIvGE2nQuXKadrQZ9ojMq0yaaWhzAqMKWaX01K9I3ZSJ43H?=
 =?iso-8859-1?Q?R4YWpwDP6kdyH1mqVKlsmQPGvjcuTKSChamADnLczy0F7iBwYHth28JygK?=
 =?iso-8859-1?Q?XOgeIzchw8PHmL+G4KodSGFAhs2gHpJ99Lbn+CS+TjMyhn6rHPJDhk5Cxd?=
 =?iso-8859-1?Q?e14FYDSj6gvVEyKJxKmbKxpJglDlotrCcltNyPqq3h5VO8nm/ycP8d3xch?=
 =?iso-8859-1?Q?huWypoFFgvPYq237GuoZBX6t9haq7WYID5S7panQmeSB3knrVNjdpGKrjQ?=
 =?iso-8859-1?Q?k/NVxXG9fQOCUjnyldsBoZjxnGLLrk+Cps7S/RTQzQdZcrPBRPlxFGg1k0?=
 =?iso-8859-1?Q?kTJxvWUbtERE/ah5VfJAlYgEJGH9Q+0KDKcdQpTiw7N8LI7x7eECMI14nC?=
 =?iso-8859-1?Q?ZlXD6X58ORNwizGUDw+mZYmm2gEegq9maKToEUHBgV0yGryjzrf+FY+9JH?=
 =?iso-8859-1?Q?SHNCN+4V08QkDpRWiPeroKc05FG821nqrnhAooWMO9NX/GzM7GB1j90pZg?=
 =?iso-8859-1?Q?x7KhMgXbyTyD/xKJ4jksWvUKt53pvz824+ECMFiJM3d3nC46FITCHQ11Nk?=
 =?iso-8859-1?Q?/DB5aBrR5wjnqDYy4CIfkB9RTAT/QckdGu+/bsaxYOU88QTMtDbwHEzrJb?=
 =?iso-8859-1?Q?ho3Pkv62LcFw3tIbppSvK+yRoSyLGYE3KofSPTMqM0I3b7Zw9zeK7oSAC2?=
 =?iso-8859-1?Q?RJyTVFqGR6wWfMrI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?bH4W3rHkGyWE+yFWlhkYGgqT+MZ7pOiwMruiFeJbOfoHd3xE3R4th3MVEd?=
 =?iso-8859-1?Q?5UzKO1pPLPPvoU4Q/P9NEkmtrjtc3GzIZ86KTv4Y88AVFcVSrvKiNw6hDE?=
 =?iso-8859-1?Q?gO2R2T7d5QrLyeuHusIPF1UgLYNOLPoI4E2HLYB7b9BjJNiyrjUVH5neM5?=
 =?iso-8859-1?Q?Wt/LVkJ0GhV9/61ICWKsl12LggjzOWPpnDAwmmOApi6gzQEoba+xkAd353?=
 =?iso-8859-1?Q?I5nptpwpz58TTfm9Vtn436F1danc2HzVIygtxqd4Tx0zl4foSEUhB7lGf1?=
 =?iso-8859-1?Q?0i7H+SYSnxwpM1/BG9U6LlV7WcPm3PyK3dP9lGkX2ufoiC3fZ4vv7kBlrp?=
 =?iso-8859-1?Q?1sb1CZAvcn1y3bunwYOAl7RXOwduWXliVJ/v9eAyQOI8z4LUydiSxQhJWA?=
 =?iso-8859-1?Q?MAnE1qV1ngb/uRpPianj+iBXbzf2BWM75iB/voi76Vcg54oS+OA5etvZv6?=
 =?iso-8859-1?Q?4W9aJ0KgjqetSH9b4LP7ERh4j6zAsz/33Ac/s66fOjmAemfl1ZTREn2Zwn?=
 =?iso-8859-1?Q?jJ+BRCSt8Xd+10rxHFAcHdarCKUieA9c3w79Dpn88BoFA40sGwlV9WN/Zi?=
 =?iso-8859-1?Q?P/RkYa8WCalDZjiGRDZIva5Ja7qbSDuj7cTcqqmCLQPLfyD1juACAhEZUv?=
 =?iso-8859-1?Q?z1I6ZD7HL6BpaSKuzSD/fjpUauvgchSPRc/03SC1fFxUH5Vo2srYRkih+m?=
 =?iso-8859-1?Q?XLCVH22LiSy0MZq9NSmojHWdqYVjHsoDtYczmp95x+aPLVj5yOMNsmMekJ?=
 =?iso-8859-1?Q?pYPoJ6Klhrja5MSHpSjXzBgDF7MOOAzTZAhCigV2GESB1OemLlhsLt3Cnu?=
 =?iso-8859-1?Q?nAJic/vL1+UwxKXBOHAlMQhWcJgCQYU74CDRGDPwQgiA9XBdh0F1MRWN3l?=
 =?iso-8859-1?Q?rsrNDP+wx/hCyO3Oq1rFUrgSzvViJP3l7aUeN7BlpO2TbftErb9P05YU8j?=
 =?iso-8859-1?Q?3NY5FJxTEe48hRIc/syQOVICjnd/x//v/Yv1Zo/5324Y67md8zcDMFDA8a?=
 =?iso-8859-1?Q?qr54yPLjLbxSViTJXlHt87DOOggNBxD/j6R26qJa/iRRo8lcgF4DpejeAY?=
 =?iso-8859-1?Q?UcMO7elQbBCfLwKxPDvRAbUnje6V0M/rAZJUerWKs+znSe+yrCVkuBL/Y8?=
 =?iso-8859-1?Q?Ga+mddDBzIb8KQ3Iy2eOZY0lWIXgDE0eBTKJ+SRE0SJxMslIbsRdDnqF0d?=
 =?iso-8859-1?Q?28ZDFWvZy4dVDK1g7Qj+qWRB7vc15Q65Ey9YRa9qjNU3IoJMwbCql1Z/QL?=
 =?iso-8859-1?Q?0I7Dgk/qtUnDq59IcfpOmU8JR5dqKK/nnqdUNvDCx/74MCFKqvBOuRXhV8?=
 =?iso-8859-1?Q?qwUIFumaJyxJsVa6DTxct9fCHBhcFnPYXZC0SNbrxbMzSZTv17GRyOA8gk?=
 =?iso-8859-1?Q?7AaAcl1XyPxib9IkBdd1v5sHIbH2uObZLiUV/HqbMaxbblYrkTtc2kRN41?=
 =?iso-8859-1?Q?/FSZaC+jes0Y4nZLMUwRnC9oiWcP5XOK6EUMsaD7KpKxVJeyx6tdfAf+A5?=
 =?iso-8859-1?Q?J4eZM+sAvY2bvKQ4qWdLrCedfeFerpx/fPLDXf2et92InJi1ABcPW4AjQ0?=
 =?iso-8859-1?Q?R1sjLJ97UFRkKzIUnSpN8Ebf4SkZZLrHqQvag+wd2LeSuKDg4aOBy9+9Ju?=
 =?iso-8859-1?Q?SPN0mPrUfkDXoG8WLGdflxy7eaSIJghQZwsPl/vyTM4ib8qSSDXJtaAA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8502dfbd-86f2-46d7-1e9e-08dd502aefff
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2025 14:45:50.3931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q8Nu5WdpG3vfT/9eGeW/IvSmnvPWfNAIcBksbdnrC2ytYu7puoJlNk0Jtw70B9Sfu4zWYNqYwE8u1eZmgbwa4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7423
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

On Tue, Feb 18, 2025 at 02:19:38PM +0200, Jani Nikula wrote:
> On Mon, 17 Feb 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > The only usage of the "PCH" infra is to detect which South Display
> > Engine we should be using. Move it under display so we can convert
> > all its callers towards intel_display struct later.
> 
> Yeah, PCH is becoming a blocker to finishing the conversions of many
> files from drm_i915_private to intel_display. We'll need to do something
> like this.

First of all, I'm sorry for not sending a cover letter explaining more about
my thoughts here and also for not tagging this as an RFC. And thank you very
much for jumping in the discussion.

I started this, exactly because my consolidation of display pm now is
blocked in some HPD calls. Then I checked the IRQ code and I have some
ideas do organize that, but that got blocked on the PCH, then I moved
towards seeing what could and should be done to PCH and these 2 patches
is the initial of my conclusion.

> 
> I was eyeing the PCH checks outside of display, and frankly many of them
> are plain wrong (done to check stuff that's unrelated to PCH, but
> happens to match desired platforms), or should be in display
> (e.g. gt_record_display_regs()). But there are also legitimate checks, I
> think in clock gating.

Yes, this one in GPU hang was one of the most strange ones, but then
I noticed it is inside this function that should be moved to the display
side anyway.

Other cases are:
drivers/gpu/drm/i915/intel_clock_gating.c:

This entire file should be in the display side. But I got super
scared now because it looks like it is not getting called from nowhere.
So we might be missing many display workarounds. I will investigate
this more later.

drivers/gpu/drm/i915/i915_irq.c:
This is exactly where I got blocked. All the PCH calls inside it
are display related that I need to move to the display side in
order to have a proper split and make the display to stop using
the irq spin locks directly.

drivers/gpu/drm/i915/i915_gpu_error.c:
good idea on moving that entire function to display anyway.

> 
> The thing that gives me an uneasy feeling about this patch series at
> this point in time is that i915 core still depends on the PCH
> detection. This won't work for a future independent display module, so
> what's the story for that? How will that pan out?

No, it doesn't. What depends on the PCH check to be done earlier
are the IRQs setup. My thoughts now is to move that to an early display
probe function. Unless I find something else better to do with the
IRQ that we could delay it.

> 
> It would be logical and great to do PCH detection near the end of
> intel_display_device_probe().

That would be the ideal indeed. I will try to check it out.

> 
> Cc: Ville
> 
> BR,
> Jani.

Oh, one last thing that I'm not proud of this series.
We have the existing intel_display_pch.c, and with this patch
series we get this duplicated.

I had tried to merge all of these here inside the intel_display_pch.c
but that broke xe compilation and I preffered to start with the easy
path and to consolidate them as a next step.

Thank you so much,
Rodrigo.

> 
> 
> >
> > No functional or code change.
> >
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                          | 2 +-
> >  drivers/gpu/drm/i915/{soc => display}/intel_pch.c      | 2 +-
> >  drivers/gpu/drm/i915/{soc => display}/intel_pch.h      | 2 +-
> >  drivers/gpu/drm/i915/i915_drv.h                        | 3 +--
> >  drivers/gpu/drm/xe/Makefile                            | 2 +-
> >  drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h | 6 ------
> >  drivers/gpu/drm/xe/xe_device_types.h                   | 2 +-
> >  7 files changed, 6 insertions(+), 13 deletions(-)
> >  rename drivers/gpu/drm/i915/{soc => display}/intel_pch.c (99%)
> >  rename drivers/gpu/drm/i915/{soc => display}/intel_pch.h (98%)
> >  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index ed05b131ed3a..3bac76059ba9 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -52,7 +52,6 @@ i915-y += \
> >  i915-y += \
> >  	soc/intel_dram.o \
> >  	soc/intel_gmch.o \
> > -	soc/intel_pch.o \
> >  	soc/intel_rom.o
> >  
> >  # core library code
> > @@ -281,6 +280,7 @@ i915-y += \
> >  	display/intel_modeset_setup.o \
> >  	display/intel_modeset_verify.o \
> >  	display/intel_overlay.o \
> > +	display/intel_pch.o \
> >  	display/intel_pch_display.o \
> >  	display/intel_pch_refclk.o \
> >  	display/intel_plane_initial.o \
> > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
> > similarity index 99%
> > rename from drivers/gpu/drm/i915/soc/intel_pch.c
> > rename to drivers/gpu/drm/i915/display/intel_pch.c
> > index 82dc7fbd1a3e..37766e40fd1c 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pch.c
> > @@ -1,6 +1,6 @@
> >  // SPDX-License-Identifier: MIT
> >  /*
> > - * Copyright 2019 Intel Corporation.
> > + * Copyright 2025 Intel Corporation.
> >   */
> >  
> >  #include "i915_drv.h"
> > diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
> > similarity index 98%
> > rename from drivers/gpu/drm/i915/soc/intel_pch.h
> > rename to drivers/gpu/drm/i915/display/intel_pch.h
> > index 635aea7a5539..b9fa2b2f07bc 100644
> > --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> > +++ b/drivers/gpu/drm/i915/display/intel_pch.h
> > @@ -1,6 +1,6 @@
> >  /* SPDX-License-Identifier: MIT */
> >  /*
> > - * Copyright 2019 Intel Corporation.
> > + * Copyright 2025 Intel Corporation.
> >   */
> >  
> >  #ifndef __INTEL_PCH__
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index ffc346379cc2..2a2db0a6859e 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -38,6 +38,7 @@
> >  
> >  #include "display/intel_display_limits.h"
> >  #include "display/intel_display_core.h"
> > +#include "display/intel_pch.h"
> >  
> >  #include "gem/i915_gem_context_types.h"
> >  #include "gem/i915_gem_shrinker.h"
> > @@ -49,8 +50,6 @@
> >  #include "gt/intel_workarounds.h"
> >  #include "gt/uc/intel_uc.h"
> >  
> > -#include "soc/intel_pch.h"
> > -
> >  #include "i915_drm_client.h"
> >  #include "i915_gem.h"
> >  #include "i915_gpu_error.h"
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 5ce65ccb3c08..df30c4385403 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -192,7 +192,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  # SOC code shared with i915
> >  xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  	i915-soc/intel_dram.o \
> > -	i915-soc/intel_pch.o \
> >  	i915-soc/intel_rom.o
> >  
> >  # Display code shared with i915
> > @@ -267,6 +266,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  	i915-display/intel_panel.o \
> >  	i915-display/intel_pfit.o \
> >  	i915-display/intel_pmdemand.o \
> > +	i915-display/intel_pch.o \
> >  	i915-display/intel_pps.o \
> >  	i915-display/intel_psr.o \
> >  	i915-display/intel_qp_tables.o \
> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
> > deleted file mode 100644
> > index 9c46556d33a4..000000000000
> > --- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
> > +++ /dev/null
> > @@ -1,6 +0,0 @@
> > -/* SPDX-License-Identifier: MIT */
> > -/*
> > - * Copyright © 2023 Intel Corporation
> > - */
> > -
> > -#include "../../../i915/soc/intel_pch.h"
> > diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> > index 4656305dd45a..2586ffc4909b 100644
> > --- a/drivers/gpu/drm/xe/xe_device_types.h
> > +++ b/drivers/gpu/drm/xe/xe_device_types.h
> > @@ -30,7 +30,7 @@
> >  #endif
> >  
> >  #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
> > -#include "soc/intel_pch.h"
> > +#include "intel_pch.h"
> >  #include "intel_display_core.h"
> >  #include "intel_display_device.h"
> >  #endif
> 
> -- 
> Jani Nikula, Intel
