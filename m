Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2878A714B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:24:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7022D10F1DC;
	Tue, 16 Apr 2024 16:24:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PqQ56DZY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B6D10F1C8;
 Tue, 16 Apr 2024 16:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713284665; x=1744820665;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tDyN4/DFIAkq8qiGfpyaXbVWcX9YNQk2hTqQXpdcYJA=;
 b=PqQ56DZYjma7XPktRdNhnMfa4TXVPzJTbXrIerXuCPHmtYwHfjkJ+Fb1
 o9ak5amzed+OhHBuKmqrqnWVnPyV810wAUwfQlMkQlDJdRi8PTeQ8B9vX
 kh4bepHnt6caeJIsVjWHFBOSCCd+KV4s5uHxVeqHp1NnFpG7hBEmMAazZ
 nbsv0n0rxWawgvnJz42kN743Z+fnH36Zi/D/oM5L7ZT9GEKC8C8QvnG7a
 eAuRVytPTLFPAn64LAvwYmDytBghttoesduOWGsbtpy29mDHIUA4Oz+Ko
 Y6LpJnw/WvIubEUgXSbu/NLrzkPzQGabXJBuMKxcR5bMr1LbMqi1xvNW/ A==;
X-CSE-ConnectionGUID: TgFRnkRwQqWmNO0n9fQHnw==
X-CSE-MsgGUID: rL3X5zwPTd6CXAitJfxcUw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8905502"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8905502"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:24:24 -0700
X-CSE-ConnectionGUID: VlJiwjFFT8q8k75FVdEjzA==
X-CSE-MsgGUID: pITuuq5EROCNh6zAQVl+tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22368976"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:24:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:24:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:24:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:24:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OOeu6oIsvP8H3KAWj4Vx4o9d1NrKo4adUX7egpl/OgCmqY87q/0Rr1YLXYzOImpZ/E1aBjtklwZ7nWaJocMCu0AGooyHnN9Gwnaf2jchXdBQaX366eek/F7qFlIl2CXAmv5ZGvJBP2dwULh9j05SmiKjgIS8WiLngqZ7ZLMWbp1UUWL8o1K6j+JIpILdd7G0MzudW9/udg1hzuvU4OdnSGpdx38v252Amgv2ALNSy8ABZtsPnMgIqQRMDVAaXYycnvQH+tmQbMaO1bei3iUgymP4g6YZggBP5DpZimzg5noNTiAJXHuELzJicmO+y7QyYcoOcu9ui3gXpxYkBv5gug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5gG8+WwZXos5fFEfN8ctZQOQdCBbmwMgLlWh8OVqeLY=;
 b=jV1Jm3msShg9Gs1eJThHky8aNvxan6rKY3YQvK0ROOz/W6do1HS9irHErMg9zDekAJovhobp7dmoghCLeYOS9iyE+CafJl0is04/4ZyHyJZO0ZZfZNs3EXye0P8yFf2IhiiDzhvwTcP0flzrhE2OCOlCn5SFnDZ49FJgx3tuCGPTWsKbCQFmjlbZssf3j4vZgV82xd+pAvTZyPARF9qXRPUKEH3Agfzv4IO79dEiWi05WOMD7iKt8Xj2C/KomTQWhk041LIABFaIqyiw0yWLBLJoWp3xGVBx6AADvuGmhlS+COTad/2286reJycHOlKH0MqhyobJLYMw5JEhhV9a3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by MW4PR11MB5869.namprd11.prod.outlook.com (2603:10b6:303:168::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 16:24:20 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:24:20 +0000
Date: Tue, 16 Apr 2024 12:24:10 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 0/7] drm/i915: better high level abstraction for display
Message-ID: <Zh6mKo4SltBU99ba@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0067.namprd08.prod.outlook.com
 (2603:10b6:a03:117::44) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|MW4PR11MB5869:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d308d37-d115-4ba8-822f-08dc5e31ab0d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vEWb6Ek5PyTq1vbT6Q5zTpQ/xKx24SPcVwigaAtfZzU0hcw0saaZEuR8AstLomHrILquagYyXGbtB+PrjeUvOLtME6ItSZLK8iJsmML46MKNxyHHPtt3ErCRgiG4DvG4vioRDh4YkEEiHpngtK2QShv//f9YqHXyfxDydqNFXPUnRCcXdMOyaxLn+VcCzcylWYwuKIOs/U8PfEQJ8Jkmru599egk/iRg6Csvl+aPjzmZvcRrCdncjmVNoR9NA6t2hvis7F/iOQ96ucGIdv7HakJghpvd1eQls4ho9kQm8d4bj+mEim3x6vk1QSxQLosnQuR8jlReujvGXP/3f5LP+xjsmRKb2mMyI+9dVRS0GfvUDxdMvksFc/WvJQ92nNiVzn1N848B/EhuvoIsDCs8QfmqSYwRmu875PpGXFdxrFXvA2f3QbzLv04N9qWoVdQH+aFs2EodYW7ATOpAztC6CbO6qsMx06/vOKymJ79e1CF/DieHHnlxJfZFHqKCClORELzROPWbxkHLGONyn+ZC5tFWkHrJEHE4RrXg7I9786WLufSoSUaHsK3xbGF6mt6szO2vGpY8lUjhaGO2lDsFRZFpGgxrLYcaYQZgJRXVVVsXKWq8mpc+Gq8QlHeA8GWY0MoU1627S4effsnJ4XRXG9bv39v42nLEVsqlu6hjymc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CUqXQK9mnMsctPtJuXgLADbZD08O18ZoyVbU8fhJUK9xvuvtNxKwt1lTAnjm?=
 =?us-ascii?Q?hfk/l3r+/TaYzoIZgYzSYOMFV1XOovjRAt/f0YwBOaYtkXhnekhp2cl9JDVR?=
 =?us-ascii?Q?utKqIU4sqs8fp0HRkKItUE/qdrFYxoVXxWd5gQHrOo5xw2PkxKT91JkmEO6S?=
 =?us-ascii?Q?ThyzcflyVNJmUSoIENO0HCJqjCug30Pz4hpvxl1m/wI2mDj9PAtscUO5EouN?=
 =?us-ascii?Q?xezM3d3ebFHsPKXiN+WtBpMCY1742hcE0akp/PrXqbRI5/tBqgm9TXhPr8uR?=
 =?us-ascii?Q?9y9KXpK4TQPghaIPJgQKRgzyw5pwpUCPsFVUDglwpwXG+MkCpNcgv3CPnEmB?=
 =?us-ascii?Q?JI8OUvzGrd/jRzbOaYpsmipLwIJiq+A6qEtkCVLv8pzrbGju4LgueUAxrzrN?=
 =?us-ascii?Q?ZgHkUNDw/TXI9fSRVjXhRzzPnCDMYfhuWYdq8sGwS1ykk2M067RkbdrsmwPi?=
 =?us-ascii?Q?ViwhsX6pOi9M5eZW2lh+9APFbduqXtxyTzNnIx80ekzhcbTpg0uZmZ/iAyEq?=
 =?us-ascii?Q?BzyJtWdzAhrvagubITrMI+pQhTnutxWQMaxpfOg4uE9X3JsLqDTFzTaiFXrf?=
 =?us-ascii?Q?Jzl0GPTZum7YVa+NAUOwyqVaF1j2ub3k7PPCMlnwl1Qy1Wi04SF1Q5TrrPp9?=
 =?us-ascii?Q?+9zzKRjo6HOE4aP/Pz6GU0+P6Dih8ooP6jfUjyVOMkUP5FRPo2323SRYZf5I?=
 =?us-ascii?Q?Gzh+ZVZDrlANBQ2erFUnZa0w/gEBjLaKXIIdqw+TyizSp/ZHzfasctos8wcX?=
 =?us-ascii?Q?XY8+xQcKnrBBSdQS1jpiVa6c2Q5jSss65lA8Ip/mXkEVeC2HuCAC2i0JcRY7?=
 =?us-ascii?Q?5mEOod5+JyyrIRWGhmZpoW3e5o+Yp6TA2t5nFt4OGM3Y6DgdZLR8hVv9yOkX?=
 =?us-ascii?Q?QiTPGqgT503jGSrv/QMvyfm/8bO9tSr3kQqIUxJ27woZwS3CQ/6HH03t/xVA?=
 =?us-ascii?Q?PMYEAr4444Zx1vFeQn44zuXNMCUYKClUWJTfTCN8JtzP0KwFjY1YvCqMAthj?=
 =?us-ascii?Q?aofNSfCdaGNRvys8/tGHknFcSLEx1C62J9XfL6UIzlfG6v0Tu8WjpwFpF8U0?=
 =?us-ascii?Q?A6Ihg1tmEIdfFZjcI2m/4Dg7PIJPpIO5s91ipYzJOWX684iTqv6XKxtmEOH5?=
 =?us-ascii?Q?BvlCagxzgwceOHcsHmqzSmU07+EA7Sbw2kC5eRm+2/bXtkFpQEU3q0JSEjso?=
 =?us-ascii?Q?E9y7stOi4IzizjatzYE2hDqcuS9YjhIaB7ItKdIre1Sv8wg1fzNR3iVAnbck?=
 =?us-ascii?Q?bv5gVbTesQqczqaKp/swznrmYO7BNPemTCnt7+NiDoTWAGvY94QMf4eyz22F?=
 =?us-ascii?Q?brEXRu5UrUcYYhBEPqigCDeKzrjLAzgQjw/78z8mGLdNumiy4AD2VuFcnN7L?=
 =?us-ascii?Q?AO3OTqajJGAVo0dcok7BQLxf0Ky+ceZiM3eInxDIsam52MlEx4n0uZPax8vD?=
 =?us-ascii?Q?GkVdIbH3xUroiZUwqtcCDOHQRmu4kZ4/w1L4akj52DusiROQq+6zsLJ9JDcG?=
 =?us-ascii?Q?s/qgS2+wfd4grQe8q+Er2VgClPxp+edX40xxHDYAZDM/gZgPuZYCvTOwvCBM?=
 =?us-ascii?Q?Mz/VBUgnG69/gG5QXGEFhDc70GAvN+XkAdJrvCN/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d308d37-d115-4ba8-822f-08dc5e31ab0d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:24:20.5457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G4ga+hHri/o49D7t9N4merQUvlpOJLSqTO7wcUgybTEBV3J2oBfbLn/jT6/vETv8h1ecx40j5ym5RzL9K44OYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5869
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

On Tue, Apr 09, 2024 at 03:26:42PM +0300, Jani Nikula wrote:
> v3 of [1], and no longer an RFC.
> 
> This is just initial plumbing, and not much in terms of usage (apart
> from patch 7). We could start converting a number of places already, but
> the main blocker atm is that I haven't figured out a decent solution for
> the various IS_<PLATFORM>() check macros.

what about convert them all to DISPLAY_VER?

or perhaps with a legacy way for that like:
s/IS_<PLATFORM>/IS_DISPLAY_PLATFORM

where
#define IS_DISPLAY_PLATFORM DISPLAY_VER(something...)

btw I just noticed we need to convert DISPLAY_VER towards
display rather then device pointer quickly as well.

> 
> I'm intentionally keeping the patches small and independent, because
> they could conceivably be backported to stable as dependencies, so we
> don't cause a huge problem for backports.
> 
> Anyway, we could start moving things forward with this.
> 
> 
> BR,
> Jani.
> 
> 
> [1] https://lore.kernel.org/r/cover.1709727127.git.jani.nikula@intel.com
> 
> 
> Jani Nikula (7):
>   drm/i915/display: add intel_display -> drm_device backpointer
>   drm/i915/display: add generic to_intel_display() macro
>   drm/i915: add generic __to_intel_display()
>   drm/xe/display: add generic __to_intel_display()
>   drm/i915/display: accept either i915 or display for feature tests
>   drm/i915/de: allow intel_display and drm_i915_private for de functions
>   drm/i915/quirks: convert struct drm_i915_private to struct
>     intel_display
> 
>  .../gpu/drm/i915/display/intel_backlight.c    |  40 +++----
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_de.h       | 102 +++++++++++-------
>  .../gpu/drm/i915/display/intel_display_core.h |   3 +
>  .../drm/i915/display/intel_display_device.c   |   3 +
>  .../drm/i915/display/intel_display_device.h   |   4 +-
>  .../drm/i915/display/intel_display_driver.c   |   3 +-
>  .../drm/i915/display/intel_display_types.h    |  37 +++++++
>  drivers/gpu/drm/i915/display/intel_panel.c    |  10 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_quirks.c   |  56 +++++-----
>  drivers/gpu/drm/i915/display/intel_quirks.h   |   6 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  11 ++
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  11 ++
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |   1 +
>  15 files changed, 197 insertions(+), 102 deletions(-)
> 
> -- 
> 2.39.2
> 
