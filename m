Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E0FB4FD89
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 15:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6237B10E254;
	Tue,  9 Sep 2025 13:40:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASX7LzgM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EE5810E254
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 13:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757425237; x=1788961237;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NrK3H6quo5Vdapk/7NgQk1Qjjz2OVxKxMnQ+epRnOhc=;
 b=ASX7LzgMT1CdR0FuUtxaVt7ltcvT3zVW/SIoELKp8PR8ty33Ro4y24N5
 8/JokFUQ8LCxwqKhHUOIAHSMGbEu6RgoAc4nSy5xDBVw2RmhUPIuuIxhi
 XLKJCU6SjNjxJWHQ6JJZRw+dmmeC1Dyyk5iC4dsOHdyopR98dRum5R2Q7
 oKQ8LckrJymOgEEM9sdtw3Vwl0V1PGcAcSBJK1+Sj7OeDI9BV4EUtwA0Y
 rh6votT0tNA18j9q7ys+u2lYq1Czl+/9IeGQQY8rTmE+/ObhlyCMPrAKM
 4sMuHQerUQnIjqRh9ayNgWwb6ncaRQbp+xjqPJiWDvrFozC5lcO90KWy8 Q==;
X-CSE-ConnectionGUID: 5Q5nFdAJS0acVgj+8cIPiw==
X-CSE-MsgGUID: SOXn0ZzcS7e0BTrMktgKCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11548"; a="59854818"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="59854818"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:40:36 -0700
X-CSE-ConnectionGUID: lPIaBj37R+CQi7OxIQt3pw==
X-CSE-MsgGUID: vyJpZ9NQTvavJmbtb+a2Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="204075047"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 06:40:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:40:35 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 06:40:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.86)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 06:40:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C3goMGrnrK84kmOGoVaFe25xqBytqTJ6ypA/j+5913r3Nlj9RrXgQHv/Qj2aQbM7KoH9Et8w5mlfuA8MlpmWXuqgHgPs56SAXSPwCi5VCtEUKiIkXdxLnHJ2rqZnbBRjaIkjXrmncNrQfd1irCJoFrv6fy/uSuweN6O9EFTxDC8dZ657moRRCKBMf0rms8QJg8TIHElc4Y6+LwaO2k96uSHFJWpX7UpK/z+cnmlwp1tluy1H2sXLjUNkGerAgULGWENLAkp+L6cawir6KPpAZAR9ThP3Ssm+S/XP1+Zl0kxyD12YDPJe3FYDGvPTiLnIqo9jBh5tbhRW++ECMG6Slg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vezgl4PnMvOLeVBYSFAITZw2F7bwWRxEVJ7cMPbwE3I=;
 b=mKfg+X33ogRTvThMOsCr+OLLI1at8BHJS+2MYKGjSJnekkaFdwdRhTLlMkLleLlxiW98NxYZLse3Keww947gzVV15qTazPeaBoJHmlliTyYZ+w2ijG486cj7snWnE19gC43YHVgfOj95Tc7OQ5KFJduO1VFzrD/DRTsWUVME/Xhi+507sJOe+H+VZn67CX5LKRAwa4kkHFvEMXZR9GQCs6jhVDew2/cm4Dwh2GBW+wrehEtzy5Gi36C7xyyhadLCYP8kJess4DM/x1SeR8rBCsNdSVNriInRoo4ESADC93uLSbKyIq1XBomll4/6yR1m09PFDu1gL30VSL7MnquUKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA3PR11MB9135.namprd11.prod.outlook.com (2603:10b6:208:579::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Tue, 9 Sep
 2025 13:40:32 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 13:40:31 +0000
Date: Tue, 9 Sep 2025 09:40:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915: split out i915_wait_util.h
Message-ID: <aMAuTHq8uyHWAv5l@intel.com>
References: <cover.1757340520.git.jani.nikula@intel.com>
 <7845cd4643bfa1caf4d177d9c8bab28a6c2c9998.1757340521.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7845cd4643bfa1caf4d177d9c8bab28a6c2c9998.1757340521.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA3PR11MB9135:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eaab415-c24f-4e4c-d04a-08ddefa67215
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?s3L/N4MvdlI8QhD0NMIEHSgkGYyLeS8rgUcOyQOPKKwcNAvIEab9W2K1yN?=
 =?iso-8859-1?Q?6tb2dKG/VIIMDxX3HyIXe3uuSZRQj1rQcG5i+Rp5aI/yFGIk0Q2lomPkMm?=
 =?iso-8859-1?Q?9e214gzbvx3TAzX5f4uefRgdJwHlRQAZJl6lVO/rkav8yXs53qe5dwilbT?=
 =?iso-8859-1?Q?Ge0aMXNX/EPUHT3pMnxcwrcv/zMKveJojLCEO82EmVarcokseXswQNaeyU?=
 =?iso-8859-1?Q?sHNyCNlaIa4U6BQK1EBP0nSX3MtoVbuiXvSPJYZdzrQKwmVXdfkz20fcYY?=
 =?iso-8859-1?Q?QypVOwr3pUgD5xBmJLSOo7iugX84qOIvLPLCdENmWhOt26GCFq7x+bdxV9?=
 =?iso-8859-1?Q?I7QDn3H+WlGxipHW9PSxyv3HqUcihO2KDsArHDJGWeuYcttgOO5Ms92be9?=
 =?iso-8859-1?Q?JQ1x2Pcr5lDzFT0OuO0BhXlBOCD152gsflxC4kdQPNSFLZqvTsxD59HKG5?=
 =?iso-8859-1?Q?CrEVj6O4kEgEO0T+3mySQPh0T4LY2Um7o6/Rl6r4QYaPWcJ0LXjj3E9o3n?=
 =?iso-8859-1?Q?MYLCPSQnwnxG0ydRsU/Bbl9UiByh1kVH5OyS9AQJzBWLh6aMYmhYAbDI7Y?=
 =?iso-8859-1?Q?u1AzXp9lAPjD72zTiGbcc7F4NgRc2qzL5v0fsNqjjEO17mAXVp4HEcjVbo?=
 =?iso-8859-1?Q?47jJMd3fQ92iEIOPHLBkYyMJiT0JsOQRonV5lCfEdxm3AGYRy3ASwM3isX?=
 =?iso-8859-1?Q?/xZlqYJz52QjfWvVi7MPyVS0c2WyxNGW/j9w0qEnauapL7eXkmxfXGWzWP?=
 =?iso-8859-1?Q?eh+1vaaULTChQLF2MdI2BcQfFvTZ5q3rkIqYycm2cvfzEyAvbTdFmcHSx8?=
 =?iso-8859-1?Q?xvFmzDGKqBpDnwuRs9swh2S9hzTjm+TtUoHvYW9EjrQZgMRF6bv31z+EeH?=
 =?iso-8859-1?Q?SXzB1hbuFJ91YbUB82JH2riTCW97MQLhdIRoGhalADUsltJDMr4mewlvwW?=
 =?iso-8859-1?Q?h7ZaFuQevgGsseVKLOqLrCBvBUG8qUfOk1rAYYTfzX9JStkUTRFp7g4iRY?=
 =?iso-8859-1?Q?AcboQRUtjn+iH3XkLvB8mHCDgu5NZBafwrOrG21mKWODp/NFQ0jOvc8xdY?=
 =?iso-8859-1?Q?x8sOpnNtvrHzy/idru3Ax6pKjYPVU1qPnGWiTGMm6Ck4I1SRCyoElcrlqo?=
 =?iso-8859-1?Q?e5notRlPtMtZFwPBW9aZnPOlyFcubLVLINsrvntJcmMkg4fCWUSJgDSWry?=
 =?iso-8859-1?Q?DvDIqDrU7FLlY1wFnZ8FZLnz9t5hf6TQhiQwVzN+T1aY+cdPjxKvaGVvoc?=
 =?iso-8859-1?Q?dIKi8bAvO5NNVW/zMsT2LdN6jkXeF5yKlKtJlQRSQPMitwu+L9bt95+b3d?=
 =?iso-8859-1?Q?DRietcVSUT+lTXwoPOGDRdGlp7OuYA1fDErQnrjEDxvXZKhx6QysiqTqK9?=
 =?iso-8859-1?Q?2R3Mdn+7c+biMEKQMcbyp0NY1+vm3O6kxzbflfK3QPcAO/sGKRAJ+cI/jx?=
 =?iso-8859-1?Q?cGevmnr55crRHeS3vbZ3VuGDCAde/k/ues5CSdPDpa3kKUMg1EM1TSHnZ2?=
 =?iso-8859-1?Q?A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?kRUFBWCP6KG6XwEQoF55Kjsl8lq3Bzw3bTJNIy8IA2dTSzX6tbzuZ+O+L7?=
 =?iso-8859-1?Q?1Efij8bOmMq7EaUULmzuwmxiEyc0JHLDHvKqBIEpbxbkUiXQAht9rmMG/1?=
 =?iso-8859-1?Q?JIOTLSA5ZQWgwo0HG6knt+H7II3e/eZyCq3wCjC3cLiam2de6zT12ZvFrP?=
 =?iso-8859-1?Q?LsG6bURi7IFTIaPzmVQXbaSJiDwzB55ITJNfMVILtYmXzcCHuGWhvxRkUV?=
 =?iso-8859-1?Q?z9oDheveX8mO1TLAkIlTt8923zvdo0CqhR4gpwxi89GydjllAUPNdNXMbK?=
 =?iso-8859-1?Q?6u1Dv8uHnoZRKLTO4HbKZw/K0lI6nxC5eg+1cV4W0vQ2S7MQl6vhOY82g3?=
 =?iso-8859-1?Q?uPvE0+SXxKAGYyuo5Zugb6budNXHiOae7ZsM4mLM3fMRM+KW3FQy+A0QIp?=
 =?iso-8859-1?Q?8yGlKUJ4+7Mgavgwdd59vr9obPkUR1ZRZeeoOdbnoBYfxn/wOCktRnS1dj?=
 =?iso-8859-1?Q?eQr2UDRHo7ZU/wh6dBuypQelCsmo6iegeoZGJlpXUKYUdUj92q3CmeckwO?=
 =?iso-8859-1?Q?Dwv4mD8+Qi05E1F2YdGPJxAoxqYT0hrEnqKjUYr1u+OPZ8L82DhbU5cBTY?=
 =?iso-8859-1?Q?W3St3d3kXsNkg4nIBA4sumDW0Mz4CKPELKic4gXrtAjc73R64/320QiK/k?=
 =?iso-8859-1?Q?hsWlXrK29cXqrR7p5cVU5+Nl2UgT66FxeaI/aPiXcmDd+s2D5JrvRXXLbu?=
 =?iso-8859-1?Q?1ImIfWwoLP5ql1EeTXdL4q9vZbIsZkpfeI11/FZRgxdsHEa9kBdhEgzOmy?=
 =?iso-8859-1?Q?sl1XTVbYcR+abZetPz65UMKOUfnH1KLlKx2eEY9pkVmq0mByB9HDle0PgM?=
 =?iso-8859-1?Q?rjZPbclbT/o3oE5V+vzO4rfD0Pkfpy7FAz9N9noo/X9gbonDecpI3zrFM/?=
 =?iso-8859-1?Q?2g2m1M2nD9mRqbD6tNJbd782wje+9NMHAhgXjT9Wua4v4rWgvA4FSHGDU5?=
 =?iso-8859-1?Q?3jKl5sLU9fqEx0jIbs56oYCfleTdonvNj8yd3QhzlNEYaEr/+jMXGxJfBQ?=
 =?iso-8859-1?Q?2HUpZjsh6Wp7TuL0UCUNFebT8Cla0QRmI3qrJsLKK12/QVDrMk0Io3jJ78?=
 =?iso-8859-1?Q?o0TieKEN5dOQu047ThlSVpnz6hc0mRyZVYWCn+A6VFOxbe9jA51PPwQh3a?=
 =?iso-8859-1?Q?Ra/VSwOqR57/oXX3xWfIwcE7PurPS0omfeOx0dL81UikbKktc4sXjnPkJm?=
 =?iso-8859-1?Q?GZLNqGud0+8dXREh3PgwaNL8sKAwzlyWs/tA88hX2DsGLFPYxRQDZQ/OCl?=
 =?iso-8859-1?Q?p4E9WuOJCeBzkU/IR061Vpk7Ni2bR9f+opk8uEn/A6jgV936VtiZmiXWtZ?=
 =?iso-8859-1?Q?JKGPR5BFnxyxT9rgFqtCyT+///Lg9+bXzUTOQEDbhb8lfLUDP03nxYBMfW?=
 =?iso-8859-1?Q?RgCWd/A4RSiQHW1jPpWHrvR8uX57A0D0/2CvH7LoWR6eBTnKRNXC61uK68?=
 =?iso-8859-1?Q?UV7BT9vUrtUzJSCO8LeKrEozDa6Yeocyu4RQspNDOZ0QVkRY6qCADEc+i/?=
 =?iso-8859-1?Q?iY/XrHjagSOQHs3RdsQ7Me01sBfOXyzXRlYVPzutOcNeMp4MnoifjuCnur?=
 =?iso-8859-1?Q?Oi7KiCfx0a49UgyHDGTWQe4awKFQzRhuIR5uQXiYX05DhtKgh8V3c5fqHY?=
 =?iso-8859-1?Q?Ay7xynVaLE6gB4jEWUuN4l48feCY7xNz3LaiCzOseyanYvGS6Hikdg/w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eaab415-c24f-4e4c-d04a-08ddefa67215
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 13:40:31.7088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RhWxW2LPxrDdSFt0t7LBHHAXUBxFAkW3eiZqx6Dt7PIAXhn3ySs5FS55FIucZEaoG1jiR4gP//Hp54ZNKyLr5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9135
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

On Mon, Sep 08, 2025 at 05:11:49PM +0300, Jani Nikula wrote:
> Move waiting related utilities from i915_utils.h to separate new file
> i915_wait_util.h. Clean up related includes.
> 
> Note: Many of the various wait macro usages could likely be refactored
> to use poll_timeout_us().

I hope so! :)

nice clean up overall, although my dream is that we
could get rid entirely of these utils that pretend
they are core kernel.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  |   1 +
>  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |   1 +
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   7 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   |   7 +-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   2 +
>  drivers/gpu/drm/i915/gt/selftest_tlb.c        |   6 +-
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c  |   6 +-
>  .../i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c |   2 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   8 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   3 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c     |   4 +-
>  drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  13 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
>  drivers/gpu/drm/i915/gvt/mmio_context.c       |   6 +-
>  drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
>  drivers/gpu/drm/i915/i915_utils.h             | 106 ----------------
>  drivers/gpu/drm/i915/i915_wait_util.h         | 119 ++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pcode.c            |   1 +
>  drivers/gpu/drm/i915/intel_uncore.c           |   7 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c          |   4 +-
>  drivers/gpu/drm/i915/selftests/i915_request.c |   5 +-
>  .../gpu/drm/i915/selftests/i915_selftest.c    |   2 +-
>  drivers/gpu/drm/i915/selftests/igt_spinner.c  |   5 +-
>  drivers/gpu/drm/i915/vlv_suspend.c            |   5 +-
>  24 files changed, 183 insertions(+), 150 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_wait_util.h
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 0c1b2df02d26..7f389cb0bde4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -117,6 +117,7 @@
>  #include "i915_timer_util.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> +#include "i915_wait_util.h"
>  #include "intel_breadcrumbs.h"
>  #include "intel_context.h"
>  #include "intel_engine_heartbeat.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index a60822e2b5d4..c3afa321fe30 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include "i915_drv.h"
> +#include "i915_wait_util.h"
>  #include "intel_gt.h"
>  #include "intel_gt_mcr.h"
>  #include "intel_gt_print.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 4a1675dea1c7..41b5036dc538 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -9,18 +9,17 @@
>  
>  #include "display/intel_display_reset.h"
>  #include "display/intel_overlay.h"
> -
>  #include "gem/i915_gem_context.h"
> -
>  #include "gt/intel_gt_regs.h"
> -
>  #include "gt/uc/intel_gsc_fw.h"
> +#include "uc/intel_guc.h"
>  
>  #include "i915_drv.h"
>  #include "i915_file_private.h"
>  #include "i915_gpu_error.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "intel_breadcrumbs.h"
>  #include "intel_engine_pm.h"
>  #include "intel_engine_regs.h"
> @@ -32,8 +31,6 @@
>  #include "intel_pci_config.h"
>  #include "intel_reset.h"
>  
> -#include "uc/intel_guc.h"
> -
>  #define RESET_MAX_RETRIES 3
>  
>  static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 2a6d79abf25b..8314a4b0505e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -15,18 +15,19 @@
>  #include "i915_irq.h"
>  #include "i915_mitigations.h"
>  #include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "intel_breadcrumbs.h"
>  #include "intel_context.h"
> +#include "intel_engine_heartbeat.h"
> +#include "intel_engine_pm.h"
>  #include "intel_engine_regs.h"
>  #include "intel_gt.h"
>  #include "intel_gt_irq.h"
> +#include "intel_gt_print.h"
>  #include "intel_gt_regs.h"
>  #include "intel_reset.h"
>  #include "intel_ring.h"
>  #include "shmem_utils.h"
> -#include "intel_engine_heartbeat.h"
> -#include "intel_engine_pm.h"
> -#include "intel_gt_print.h"
>  
>  /* Rough estimate of the typical request size, performing a flush,
>   * set-context and then emitting the batch.
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 006042e0b229..4da94098bd3e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -10,9 +10,11 @@
>  #include "display/intel_display.h"
>  #include "display/intel_display_rps.h"
>  #include "soc/intel_dram.h"
> +
>  #include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "intel_breadcrumbs.h"
>  #include "intel_gt.h"
>  #include "intel_gt_clock_utils.h"
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 69ed946a39e5..a5184f09d1de 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -3,17 +3,17 @@
>   * Copyright © 2022 Intel Corporation
>   */
>  
> -#include "i915_selftest.h"
> -
>  #include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
>  
>  #include "gen8_engine_cs.h"
>  #include "i915_gem_ww.h"
> +#include "i915_selftest.h"
> +#include "i915_wait_util.h"
> +#include "intel_context.h"
>  #include "intel_engine_regs.h"
>  #include "intel_gpu_commands.h"
> -#include "intel_context.h"
>  #include "intel_gt.h"
>  #include "intel_ring.h"
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> index d8edd7c054c8..e7444ebc373e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
> @@ -10,11 +10,13 @@
>  
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_print.h"
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "intel_gsc_proxy.h"
>  #include "intel_gsc_uc.h"
>  #include "intel_gsc_uc_heci_cmd_submit.h"
> -#include "i915_drv.h"
> -#include "i915_reg.h"
>  
>  /*
>   * GSC proxy:
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
> index 2fde5c360cff..9bd29be7656f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_heci_cmd_submit.c
> @@ -8,6 +8,8 @@
>  #include "gt/intel_gpu_commands.h"
>  #include "gt/intel_gt.h"
>  #include "gt/intel_ring.h"
> +
> +#include "i915_wait_util.h"
>  #include "intel_gsc_uc_heci_cmd_submit.h"
>  
>  struct gsc_heci_pkt {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index f360f020d8f1..52ec4421a211 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -8,15 +8,17 @@
>  #include "gt/intel_gt_irq.h"
>  #include "gt/intel_gt_pm_irq.h"
>  #include "gt/intel_gt_regs.h"
> +
> +#include "i915_drv.h"
> +#include "i915_irq.h"
> +#include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "intel_guc.h"
>  #include "intel_guc_ads.h"
>  #include "intel_guc_capture.h"
>  #include "intel_guc_print.h"
>  #include "intel_guc_slpc.h"
>  #include "intel_guc_submission.h"
> -#include "i915_drv.h"
> -#include "i915_irq.h"
> -#include "i915_reg.h"
>  
>  /**
>   * DOC: GuC
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 380a11c92d63..3e7e5badcc2b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -5,11 +5,12 @@
>  
>  #include <linux/circ_buf.h>
>  #include <linux/ktime.h>
> -#include <linux/time64.h>
>  #include <linux/string_helpers.h>
> +#include <linux/time64.h>
>  #include <linux/timekeeping.h>
>  
>  #include "i915_drv.h"
> +#include "i915_wait_util.h"
>  #include "intel_guc_ct.h"
>  #include "intel_guc_print.h"
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index e7ccfa520df3..1bb1491f90fc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -13,9 +13,11 @@
>  #include "gt/intel_gt_mcr.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_rps.h"
> +
> +#include "i915_drv.h"
> +#include "i915_wait_util.h"
>  #include "intel_guc_fw.h"
>  #include "intel_guc_print.h"
> -#include "i915_drv.h"
>  
>  static void guc_prepare_xfer(struct intel_gt *gt)
>  {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index d5ee6e5e1443..fa9af08f9708 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -3,17 +3,20 @@
>   * Copyright © 2021 Intel Corporation
>   */
>  
> -#include <drm/drm_cache.h>
>  #include <linux/string_helpers.h>
>  
> +#include <drm/drm_cache.h>
> +
> +#include "gt/intel_gt.h"
> +#include "gt/intel_gt_regs.h"
> +#include "gt/intel_rps.h"
> +
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> -#include "intel_guc_slpc.h"
> +#include "i915_wait_util.h"
>  #include "intel_guc_print.h"
> +#include "intel_guc_slpc.h"
>  #include "intel_mchbar_regs.h"
> -#include "gt/intel_gt.h"
> -#include "gt/intel_gt_regs.h"
> -#include "gt/intel_rps.h"
>  
>  /**
>   * DOC: SLPC - Dynamic Frequency management
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 127316d2c8aa..68f2b8d363ac 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -25,16 +25,16 @@
>  #include "gt/intel_mocs.h"
>  #include "gt/intel_ring.h"
>  
> +#include "i915_drv.h"
> +#include "i915_irq.h"
> +#include "i915_reg.h"
> +#include "i915_trace.h"
> +#include "i915_wait_util.h"
>  #include "intel_guc_ads.h"
>  #include "intel_guc_capture.h"
>  #include "intel_guc_print.h"
>  #include "intel_guc_submission.h"
>  
> -#include "i915_drv.h"
> -#include "i915_reg.h"
> -#include "i915_irq.h"
> -#include "i915_trace.h"
> -
>  /**
>   * DOC: GuC-based command submission
>   *
> diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
> index 2f7208843367..0b810baad20a 100644
> --- a/drivers/gpu/drm/i915/gvt/mmio_context.c
> +++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
> @@ -33,14 +33,16 @@
>   *
>   */
>  
> -#include "i915_drv.h"
> -#include "i915_reg.h"
>  #include "gt/intel_context.h"
>  #include "gt/intel_engine_regs.h"
>  #include "gt/intel_gpu_commands.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gt/intel_ring.h"
> +
>  #include "gvt.h"
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "trace.h"
>  
>  #define GEN9_MOCS_SIZE		64
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 23fa098c4479..c2e38d4bcd01 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -26,11 +26,11 @@
>   *
>   */
>  
> +#include <linux/debugfs.h>
>  #include <linux/sched/mm.h>
>  #include <linux/sort.h>
>  #include <linux/string_helpers.h>
>  
> -#include <linux/debugfs.h>
>  #include <drm/drm_debugfs.h>
>  
>  #include "gem/i915_gem_context.h"
> @@ -54,6 +54,7 @@
>  #include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "i915_scheduler.h"
> +#include "i915_wait_util.h"
>  #include "intel_mchbar_regs.h"
>  
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 4a6437d6e00e..a0c892e4c40d 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -134,112 +134,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
>  	}
>  }
>  
> -/*
> - * __wait_for - magic wait macro
> - *
> - * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
> - * important that we check the condition again after having timed out, since the
> - * timeout could be due to preemption or similar and we've never had a chance to
> - * check the condition before the timeout.
> - */
> -#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
> -	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
> -	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
> -	int ret__;							\
> -	might_sleep();							\
> -	for (;;) {							\
> -		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
> -		OP;							\
> -		/* Guarantee COND check prior to timeout */		\
> -		barrier();						\
> -		if (COND) {						\
> -			ret__ = 0;					\
> -			break;						\
> -		}							\
> -		if (expired__) {					\
> -			ret__ = -ETIMEDOUT;				\
> -			break;						\
> -		}							\
> -		usleep_range(wait__, wait__ * 2);			\
> -		if (wait__ < (Wmax))					\
> -			wait__ <<= 1;					\
> -	}								\
> -	ret__;								\
> -})
> -
> -#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
> -						   (Wmax))
> -#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
> -
> -/*
> - * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
> - * On PREEMPT_RT the context isn't becoming atomic because it is used in an
> - * interrupt handler or because a spinlock_t is acquired. This leads to
> - * warnings which don't occur otherwise and therefore the check is disabled.
> - */
> -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
> -# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
> -#else
> -# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
> -#endif
> -
> -#define _wait_for_atomic(COND, US, ATOMIC) \
> -({ \
> -	int cpu, ret, timeout = (US) * 1000; \
> -	u64 base; \
> -	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
> -	if (!(ATOMIC)) { \
> -		preempt_disable(); \
> -		cpu = smp_processor_id(); \
> -	} \
> -	base = local_clock(); \
> -	for (;;) { \
> -		u64 now = local_clock(); \
> -		if (!(ATOMIC)) \
> -			preempt_enable(); \
> -		/* Guarantee COND check prior to timeout */ \
> -		barrier(); \
> -		if (COND) { \
> -			ret = 0; \
> -			break; \
> -		} \
> -		if (now - base >= timeout) { \
> -			ret = -ETIMEDOUT; \
> -			break; \
> -		} \
> -		cpu_relax(); \
> -		if (!(ATOMIC)) { \
> -			preempt_disable(); \
> -			if (unlikely(cpu != smp_processor_id())) { \
> -				timeout -= now - base; \
> -				cpu = smp_processor_id(); \
> -				base = local_clock(); \
> -			} \
> -		} \
> -	} \
> -	ret; \
> -})
> -
> -#define wait_for_us(COND, US) \
> -({ \
> -	int ret__; \
> -	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> -	if ((US) > 10) \
> -		ret__ = _wait_for((COND), (US), 10, 10); \
> -	else \
> -		ret__ = _wait_for_atomic((COND), (US), 0); \
> -	ret__; \
> -})
> -
> -#define wait_for_atomic_us(COND, US) \
> -({ \
> -	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> -	BUILD_BUG_ON((US) > 50000); \
> -	_wait_for_atomic((COND), (US), 1); \
> -})
> -
> -#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 1000)
> -
>  #define KHz(x) (1000 * (x))
>  #define MHz(x) KHz(1000 * (x))
>  
> diff --git a/drivers/gpu/drm/i915/i915_wait_util.h b/drivers/gpu/drm/i915/i915_wait_util.h
> new file mode 100644
> index 000000000000..7376898e3bf8
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_wait_util.h
> @@ -0,0 +1,119 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __I915_WAIT_UTIL_H__
> +#define __I915_WAIT_UTIL_H__
> +
> +#include <linux/compiler.h>
> +#include <linux/delay.h>
> +#include <linux/ktime.h>
> +#include <linux/sched/clock.h>
> +#include <linux/smp.h>
> +
> +/*
> + * __wait_for - magic wait macro
> + *
> + * Macro to help avoid open coding check/wait/timeout patterns. Note that it's
> + * important that we check the condition again after having timed out, since the
> + * timeout could be due to preemption or similar and we've never had a chance to
> + * check the condition before the timeout.
> + */
> +#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
> +	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
> +	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
> +	int ret__;							\
> +	might_sleep();							\
> +	for (;;) {							\
> +		const bool expired__ = ktime_after(ktime_get_raw(), end__); \
> +		OP;							\
> +		/* Guarantee COND check prior to timeout */		\
> +		barrier();						\
> +		if (COND) {						\
> +			ret__ = 0;					\
> +			break;						\
> +		}							\
> +		if (expired__) {					\
> +			ret__ = -ETIMEDOUT;				\
> +			break;						\
> +		}							\
> +		usleep_range(wait__, wait__ * 2);			\
> +		if (wait__ < (Wmax))					\
> +			wait__ <<= 1;					\
> +	}								\
> +	ret__;								\
> +})
> +
> +#define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
> +						   (Wmax))
> +#define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
> +
> +/*
> + * If CONFIG_PREEMPT_COUNT is disabled, in_atomic() always reports false.
> + * On PREEMPT_RT the context isn't becoming atomic because it is used in an
> + * interrupt handler or because a spinlock_t is acquired. This leads to
> + * warnings which don't occur otherwise and therefore the check is disabled.
> + */
> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG) && IS_ENABLED(CONFIG_PREEMPT_COUNT) && !defined(CONFIG_PREEMPT_RT)
> +# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) WARN_ON_ONCE((ATOMIC) && !in_atomic())
> +#else
> +# define _WAIT_FOR_ATOMIC_CHECK(ATOMIC) do { } while (0)
> +#endif
> +
> +#define _wait_for_atomic(COND, US, ATOMIC) \
> +({ \
> +	int cpu, ret, timeout = (US) * 1000; \
> +	u64 base; \
> +	_WAIT_FOR_ATOMIC_CHECK(ATOMIC); \
> +	if (!(ATOMIC)) { \
> +		preempt_disable(); \
> +		cpu = smp_processor_id(); \
> +	} \
> +	base = local_clock(); \
> +	for (;;) { \
> +		u64 now = local_clock(); \
> +		if (!(ATOMIC)) \
> +			preempt_enable(); \
> +		/* Guarantee COND check prior to timeout */ \
> +		barrier(); \
> +		if (COND) { \
> +			ret = 0; \
> +			break; \
> +		} \
> +		if (now - base >= timeout) { \
> +			ret = -ETIMEDOUT; \
> +			break; \
> +		} \
> +		cpu_relax(); \
> +		if (!(ATOMIC)) { \
> +			preempt_disable(); \
> +			if (unlikely(cpu != smp_processor_id())) { \
> +				timeout -= now - base; \
> +				cpu = smp_processor_id(); \
> +				base = local_clock(); \
> +			} \
> +		} \
> +	} \
> +	ret; \
> +})
> +
> +#define wait_for_us(COND, US) \
> +({ \
> +	int ret__; \
> +	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> +	if ((US) > 10) \
> +		ret__ = _wait_for((COND), (US), 10, 10); \
> +	else \
> +		ret__ = _wait_for_atomic((COND), (US), 0); \
> +	ret__; \
> +})
> +
> +#define wait_for_atomic_us(COND, US) \
> +({ \
> +	BUILD_BUG_ON(!__builtin_constant_p(US)); \
> +	BUILD_BUG_ON((US) > 50000); \
> +	_wait_for_atomic((COND), (US), 1); \
> +})
> +
> +#define wait_for_atomic(COND, MS) wait_for_atomic_us((COND), (MS) * 1000)
> +
> +#endif /* __I915_WAIT_UTIL_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index 81da75108c60..55ffedad2490 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -5,6 +5,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_wait_util.h"
>  #include "intel_pcode.h"
>  
>  static int gen6_check_mailbox_status(u32 mbox)
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 4ccba7c8ffb3..8cb59f8d1f4c 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -21,19 +21,20 @@
>   * IN THE SOFTWARE.
>   */
>  
> -#include <drm/drm_managed.h>
>  #include <linux/pm_runtime.h>
>  
> -#include "display/intel_display_core.h"
> +#include <drm/drm_managed.h>
>  
> -#include "gt/intel_gt.h"
> +#include "display/intel_display_core.h"
>  #include "gt/intel_engine_regs.h"
> +#include "gt/intel_gt.h"
>  #include "gt/intel_gt_regs.h"
>  
>  #include "i915_drv.h"
>  #include "i915_iosf_mbi.h"
>  #include "i915_reg.h"
>  #include "i915_vgpu.h"
> +#include "i915_wait_util.h"
>  #include "intel_uncore_trace.h"
>  
>  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index f8da693ad3ce..27d545c4e6a5 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -2,15 +2,15 @@
>  /*
>   * Copyright(c) 2020 Intel Corporation.
>   */
> +
>  #include <linux/workqueue.h>
>  
>  #include "gem/i915_gem_context.h"
> -
>  #include "gt/intel_context.h"
>  #include "gt/intel_gt.h"
>  
>  #include "i915_drv.h"
> -
> +#include "i915_wait_util.h"
>  #include "intel_pxp.h"
>  #include "intel_pxp_gsccs.h"
>  #include "intel_pxp_irq.h"
> diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
> index 2fb7a9e7efec..48cd617247d1 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_request.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_request.c
> @@ -22,14 +22,13 @@
>   *
>   */
>  
> -#include <linux/prime_numbers.h>
>  #include <linux/pm_qos.h>
> +#include <linux/prime_numbers.h>
>  #include <linux/sort.h>
>  
>  #include "gem/i915_gem_internal.h"
>  #include "gem/i915_gem_pm.h"
>  #include "gem/selftests/mock_context.h"
> -
>  #include "gt/intel_engine_heartbeat.h"
>  #include "gt/intel_engine_pm.h"
>  #include "gt/intel_engine_user.h"
> @@ -40,11 +39,11 @@
>  
>  #include "i915_random.h"
>  #include "i915_selftest.h"
> +#include "i915_wait_util.h"
>  #include "igt_flush_test.h"
>  #include "igt_live_test.h"
>  #include "igt_spinner.h"
>  #include "lib_sw_fence.h"
> -
>  #include "mock_drm.h"
>  #include "mock_gem_device.h"
>  
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index 889281819c5b..9c276c9d0a75 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -31,7 +31,7 @@
>  #include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_selftest.h"
> -
> +#include "i915_wait_util.h"
>  #include "igt_flush_test.h"
>  
>  struct i915_selftest i915_selftest __read_mostly = {
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 8c3e1f20e5a1..820364171ebe 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -3,12 +3,13 @@
>   *
>   * Copyright © 2018 Intel Corporation
>   */
> -#include "gt/intel_gpu_commands.h"
> -#include "gt/intel_gt.h"
>  
>  #include "gem/i915_gem_internal.h"
>  #include "gem/selftests/igt_gem_utils.h"
> +#include "gt/intel_gpu_commands.h"
> +#include "gt/intel_gt.h"
>  
> +#include "i915_wait_util.h"
>  #include "igt_spinner.h"
>  
>  int igt_spinner_init(struct igt_spinner *spin, struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
> index fc9f311ea1db..221e4c0b2c58 100644
> --- a/drivers/gpu/drm/i915/vlv_suspend.c
> +++ b/drivers/gpu/drm/i915/vlv_suspend.c
> @@ -8,16 +8,17 @@
>  
>  #include <drm/drm_print.h>
>  
> +#include "gt/intel_gt_regs.h"
> +
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_trace.h"
>  #include "i915_utils.h"
> +#include "i915_wait_util.h"
>  #include "intel_clock_gating.h"
>  #include "intel_uncore_trace.h"
>  #include "vlv_suspend.h"
>  
> -#include "gt/intel_gt_regs.h"
> -
>  struct vlv_s0ix_state {
>  	/* GAM */
>  	u32 wr_watermark;
> -- 
> 2.47.3
> 
