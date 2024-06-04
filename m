Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EB38FBD62
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 22:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D18710E5FA;
	Tue,  4 Jun 2024 20:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FNXzeQLp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F0C710E5ED;
 Tue,  4 Jun 2024 20:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717533260; x=1749069260;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NR3Y7J49vpQEkolmgYJ2J/ich7aguNvFchhfIiQHJhE=;
 b=FNXzeQLp6NmyZJWo9vJyCKPuw/tWsUdKCzRnDGdZ8Ao9EhpUxHcWIFm5
 n6q/H9skFu47mcNHwykDe1CnxlNDqK5PaUAuThZI8dIa8PFN9xxEVHHUA
 CGhNLe9uZa6nq1a5ajury51M68oOdkHPh4f+8XtMAmoPXKxVZqwy4ia9R
 ornpLVggqQsADGNwK5t8y9XBwbPXQsreAPu+OwAwoDNUsm1bF+C417qdx
 9aF0DOgz6Mcckg409yebBZH288Cl4SrotTY2BTegIQjpXJ4t003nmQjDD
 z4/Uiu5DMZ/CeR6HfF9D4y8JzEASA9sq/bRWckILbtirgfwucTzWwdhjl A==;
X-CSE-ConnectionGUID: WHgaQ5WbSsKakGkMT7rmlg==
X-CSE-MsgGUID: FDd7/uDHQKSG3Yrn9Fq7rw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25511110"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25511110"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 13:34:19 -0700
X-CSE-ConnectionGUID: mK3Qjih1QgyoPNOW7J4sMw==
X-CSE-MsgGUID: EZRnNA78QImCHzViOXg3Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="60546557"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jun 2024 13:34:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 4 Jun 2024 13:34:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 4 Jun 2024 13:34:16 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 4 Jun 2024 13:34:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1iLioDGtebCOPUcwJ3KXqrg5fevmhdFS4yMZDFB00nF0l0GswnAfDpWkEHLvttG6Khj7SLwJPyoqrbmcLNEscB4lUuq96g7IJbn3WVJSHOKno/tj0vwe4xWVj5aunOzMqhqMzJXwoKWjXrfweZJhE0UeAqutQ8d/gE7xMfieDF7rHiF/eMnu9pqsQbRZq8w7B6KsqFOL6yXY2RVS3hrzvwICs5o/RfFx65sc9jCiQfdVPcQI8MU9gjDlTq3cv0pzjEFjAGuA0XGFp3VzCxRfB0KSGUrlNZApYedIeh7PnwjMfyQP0J24e+3s1UEcDHQ2oU6qVoz9qYcRno4Td7wfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HDiT5HiAL1Am5SwVcdLqUQ2ztyXyhQ3glyxqYiTMzbw=;
 b=fZWftf4QQs4SyvvYP45dk4CDEFpm3KKb8reHLmzUlzdzzacMoOTI8P0umsyIQEIPQ8gdKFZFkrDwX1pqVkSZK7kQgN1XpGArerusseqiDUOQORxGfzuqWpRGLxjNhPLa89TenbycSAgzh2UnG8IT7XirtEQa59rXNNkn76hKw7beaTPCf0VA6WTQ1CWGcOMlvt48gJ9qL+H1jUk35TGYvo2+lpR3rShCqKOlBhGdXR20ttIkevX8sKObp7AwH4bD6MfXD8perjcgBYzQm1aBty/ZdSQ2PrwTV/q1P1payXmIzqRUOKkkprFA6Gto/CBpbAoCwpvQ5Rz7GcKDIpJhlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BY1PR11MB8029.namprd11.prod.outlook.com (2603:10b6:a03:526::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.30; Tue, 4 Jun
 2024 20:34:14 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.021; Tue, 4 Jun 2024
 20:34:13 +0000
Date: Tue, 4 Jun 2024 16:34:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: include gem/i915_gem_stolen.h
 where needed
Message-ID: <Zl96QxcG1CurXnM5@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <6ac3480a8689fda5aaf4007cb604e06e939a03f7.1717004739.git.jani.nikula@intel.com>
 <Zlmum6_8IPuz37Ty@intel.com> <87o78mfas7.fsf@intel.com>
 <87h6e9c4vc.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87h6e9c4vc.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0157.namprd05.prod.outlook.com
 (2603:10b6:a03:339::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BY1PR11MB8029:EE_
X-MS-Office365-Filtering-Correlation-Id: 2815ddf7-4256-4770-6050-08dc84d5b274
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3s7bykCE59OigcAArn5E01AX5CsGnSWk5HClJamhkt+iuOxNmpOZGJvTGA1t?=
 =?us-ascii?Q?5wqAHbeygrS8Rtsva0lHb0uAdmGEZvUSY7xG4uR2wrut3Ydh0PHpgKYS+xHe?=
 =?us-ascii?Q?fnN1N5iVGhwbrLqQlog1WPTc9kMNgh7TcY41J4G/1KNa9L/3pTtcGs+91xNG?=
 =?us-ascii?Q?Yk7aU9YbyNHhdav4s2mWCE8fflhrTxKeqirfq9jf2bzhO/r1EZMZOzYxQ17a?=
 =?us-ascii?Q?Hu1K+s1Z0J/TKk5nHlcpKjGIx3o83nqFa7VCl7fiL56DlUz8o7heqFzlw1Wx?=
 =?us-ascii?Q?wWJ/u9PRLeaA9rB54BXm5Imw/cVZQVXY6BOIlJx6Mgi7MHfh03Sr2BRaexm9?=
 =?us-ascii?Q?oOh8EWfS+E9rCJD9o+d9PeJJF/ghwZVVukANXc2CDNGDT4T4k5a1d1mNEKLq?=
 =?us-ascii?Q?eJJbhM3PhPJ+J9dvPTjoWznuEJcbqkg6aJfy/9wYNJmN2uLzUOnUbAoHdWQU?=
 =?us-ascii?Q?rY3OYNzyQsPCBVPhOCoC8LSYMb2xQItPN2WPPvhZpneowcT/dL159TtDLNAy?=
 =?us-ascii?Q?m0FYp8hqLc+vfz9ivJEqT3hePmdtlZJEtrLRNzy9RV5Q32BHm/86Wlxs5ubY?=
 =?us-ascii?Q?bMsFochEsrl1gB0b5LYTajKrhGDX1WPxCrMszecX9q8esW6MZ1B1X6J0PePm?=
 =?us-ascii?Q?M9PPJAev3D7BkvxL8JswNOx2kjtiJxV5DACXykDeptFqsoKmEtRPdKDxkHtJ?=
 =?us-ascii?Q?wff6n/4nMtYmrtrwPYIxFufK1obt7zWgzK+d5rn02V1Agw2yJhVBfnAq3DR0?=
 =?us-ascii?Q?OHxKdUkl9zmB6Q9MoMFJQ2HMSOrtG9EU9mHMDBCi0S4xm0WYx7pPCRS6RFem?=
 =?us-ascii?Q?9puqL/vtJ/3Nm/p8Jrjq5e9gbK/WZ0RHr24aUCE4lsxFkG4tT90Kc+9gLGZU?=
 =?us-ascii?Q?OFBgz3vRlkWE8kMntojPg4w7lkbExprL4ai/vnp01gtYG3cfxfXpfAzFZWNY?=
 =?us-ascii?Q?WRUK4P0iGsxS3OksPJ8cZ4M+PdIbaXLWTrwy0GwXQ+NoHoRL6WY83sTqKXLG?=
 =?us-ascii?Q?R2R0bHJFKZWvoD6mEf5xIDBgTMxvTcH45HLVF1PlImhqgVu/KF6GJL17X9iu?=
 =?us-ascii?Q?SCWO/8E0dOYSS/DQnT81xG1yOr9rWs0xit9QdytpWDmZEFFELvJgic8q1zUJ?=
 =?us-ascii?Q?MXjB8jKky0V7FTQ1CwuAG0nhSlAAE2Zy0k64XeI37ck+Njykjm5a7HO8lELc?=
 =?us-ascii?Q?YXQOMBX1VxjsdLr/SMDADWGcySc9UnyVILd3V+h/9TNyOjtsJeZ/GkY21lwn?=
 =?us-ascii?Q?vKKHMx0sWXvi4gOWGxFUo7/7S6GfWd9Ig3HlpjMpkA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DiPAN/9VhxlBZtlIXGDfiUeTPjaCqw2tpkcpGfVzIwoKNClb3mTUU5cswpGc?=
 =?us-ascii?Q?p6H6W0YygKYPwDPs19bJ+Q+W+Fkwd1pRebdJehbX0bsc5sZ4hGbdqQ08fprn?=
 =?us-ascii?Q?97W0WX0Anjp4i0K3Z4OOGL0E0lUmb433qbiskkWRuGdcAj+4Uc4bTi876T2L?=
 =?us-ascii?Q?oms/PG9iUDQMVub27pJP89nxbjUoJm0oTa3Q7x44RzyEECZxsVsDXDaRAskp?=
 =?us-ascii?Q?gG9ceLVZLx1/iF5mekDN89GHyE+pX6eBlGH0XhZQxDqmmYDxeJF/pFJKUe04?=
 =?us-ascii?Q?U1oVyar4JA6OXsaPbhmv2EiLaBdApya8MgfvGK4b/X2+HH2+C62+hw0EAckx?=
 =?us-ascii?Q?HVgXCU620DiqOQ/sr4XMQiKD/+9G048YCJI20ALFHMCsfbzbBRg/WsejN/7E?=
 =?us-ascii?Q?I/FrAdfRX/N53jXUXBVgjKzoxkschcB0Qu6UQwaCoxxwHCXwjkZct0JWiUdy?=
 =?us-ascii?Q?HnRik9kTtbHfQSckHcxKFa0at+xgWrjq1z6sOITCAB+8DHlqDSq84jlMD/6P?=
 =?us-ascii?Q?26awz7Fx1qhuopkGMyO4mImub78MRDPZ8HXuK4fSj5Yj8Q0j3t57n52CAsN6?=
 =?us-ascii?Q?coTOA55c6eDXnuFdWrIJgSnWGhnYww/B2Ayld8sfwuYxH6UfLJ6uWq+uwVXN?=
 =?us-ascii?Q?SV9jZnxduCKLhmOfZwXXmxhg3H5V9uHBuyH6d53ryFkxAa3PmJ27Wo0zkZQe?=
 =?us-ascii?Q?x/F2c6DcbSUdIWWimPwlg9U10gc5Q6yGL1otRznqdHn1fYx0S24RPLRWbajf?=
 =?us-ascii?Q?VDiwMOXh1N1wVS/oE74BSPELGeW7k+4atTlIbTPX7EAMoDDZUi43azKWlM/G?=
 =?us-ascii?Q?3bvYbBJ9nAn0HCHRDY9vY9uszIgw1TkWAhpHoNbHCxnH+2jOYnlK5C3e8WVA?=
 =?us-ascii?Q?eBwblEP7sgixDaP2+z+0bM3RUUOqdvZLP264OWdoETdmDqJeTgvC3rUfyO5V?=
 =?us-ascii?Q?cT+WPnYZStjNlhxr8BVKrz/BPMcxB24APaCUeqXI+70mg0LYHZpUi5ZceLJw?=
 =?us-ascii?Q?RqXi39TZ3utw5MI1o6Nr1QZfTCY3vjQvb6nkQB1GlZsntKZiwYjB8w+vJa/E?=
 =?us-ascii?Q?AY7hJxptts+bQVdsPoVU5Zco7qLW/H6L5X4nUw9WgwaWSLAeLta+7O6DGtfl?=
 =?us-ascii?Q?FUZch3XboGzO+xVQ2tbc0jIYZGbQciHl6bEB2YllJtIhY/sWisktWYDv9QEu?=
 =?us-ascii?Q?hxer1LSZDnov6ZkOTO98vulR1Uhe5y3SoZkrZ/Njtyo2r8RjKD2ErUingx8r?=
 =?us-ascii?Q?qPxpAhaltsk4/4hvC6fFTiaxp/0DgXQ7b4/ABfCgcJDUjpA0xl4t7W/zXblx?=
 =?us-ascii?Q?tOeNyfQdxhW1yIat2XipPAuUQEwFuoHpa5jIcYsxHParJAypACIZ6AAQmcc6?=
 =?us-ascii?Q?UK/OYPvSgiGH9w+6tdJEQ13r/Q6kM/mZZD8lCmcJLNRuk7xG3PAR1Fluj8OS?=
 =?us-ascii?Q?kAwTOt2N/SpwDiV4lkQ6w+woMcj21uCyS6NCHaZYAJnyJP3Ddid7L7NK3MNK?=
 =?us-ascii?Q?fhH8bxAy8OIT5aYxLKyqpF3+VHDY5nrzdTXccYeUMgiOlTUfxMFsw+PCrBHL?=
 =?us-ascii?Q?dpPYFta3RvBcuuZpVr1wu1GkaeIZMaw0cJ+Eweyw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2815ddf7-4256-4770-6050-08dc84d5b274
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2024 20:34:13.8933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6qbe4OImypX2u8gQI1Yo7o7Kjh38tRDPIPLT41Sg6Gk1EF6uK/zeGTyISRmis+pa0AXqieOFTxe6wIvZuZnHEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8029
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

On Tue, Jun 04, 2024 at 02:41:11PM +0300, Jani Nikula wrote:
> On Fri, 31 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Fri, 31 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> >> On Wed, May 29, 2024 at 08:48:05PM +0300, Jani Nikula wrote:
> >>> Include what you use. We need to move the compat i915_gem_stolen.h under
> >>> gem subdir.
> >>
> >> The patch below looks fine, but this message here is strange.
> >> It looks like this patch is moving the header file from a top dir to
> >> under 'gem' dir. But the header is already there.
> >
> > Huh, in compat-i915-headers it's not? And that's the point, the
> > hierarchy should match i915 but for a couple of files it doesn't.
> 
> Rodrigo, any follow-up here? Am I missing something?

Sorry for not getting back sooner on this. I had missunderstood
your latest response.

As well as I had missunderstood the commit...
you are indeed moving the files with git mv. it is just that git is smartly showing
that and I'm poorly reading that...
(doh! & facepalm)


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
(for the series)

> 
> BR,
> Jani.
> 
> 
> >
> > BR,
> > Jani.
> >
> >
> >>
> >>> With this, we can drop the include from xe compat
> >>> i915_drv.h.
> >>> 
> >>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>> ---
> >>>  drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
> >>>  .../gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h   | 0
> >>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
> >>>  3 files changed, 1 insertion(+), 1 deletion(-)
> >>>  rename drivers/gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h (100%)
> >>> 
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> >>> index e9189a864f69..6985abeb6102 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> >>> @@ -43,6 +43,7 @@
> >>>  #include <drm/drm_blend.h>
> >>>  #include <drm/drm_fourcc.h>
> >>>  
> >>> +#include "gem/i915_gem_stolen.h"
> >>>  #include "i915_drv.h"
> >>>  #include "i915_reg.h"
> >>>  #include "i915_utils.h"
> >>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> >>> similarity index 100%
> >>> rename from drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
> >>> rename to drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> >>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >>> index cd4632276141..3be3d419530a 100644
> >>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> >>> @@ -19,7 +19,6 @@
> >>>  #include "xe_bo.h"
> >>>  #include "xe_pm.h"
> >>>  #include "xe_step.h"
> >>> -#include "i915_gem_stolen.h"
> >>>  #include "i915_gpu_error.h"
> >>>  #include "i915_reg_defs.h"
> >>>  #include "i915_utils.h"
> >>> -- 
> >>> 2.39.2
> >>> 
> 
> -- 
> Jani Nikula, Intel
