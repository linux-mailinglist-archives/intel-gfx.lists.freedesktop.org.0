Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF2BAE0366
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 13:23:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C977910E05C;
	Thu, 19 Jun 2025 11:23:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpsCp+nB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F45310E05C;
 Thu, 19 Jun 2025 11:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750332210; x=1781868210;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=iO6CuqQvYyWnKalGoPT2vdQUtsfgwx6sNbeWLP5momg=;
 b=UpsCp+nBJEG4QZaAQ2FSb7o8HodieFu9o3SIvRYRhwTskhJT6JuZO1pN
 U+pgkWjw5vTrublN1vvS4sgmR0Xo/+uKDakH0jF8GaIvAFvc88mdfBYn6
 BpCChS88bWMj1XsMEHlMdDrHFX8EKyvoiVgLVCGmx4pRGoF8j7akyHyi2
 PpjkutQ6CHwpwWJdWBEpw/84fbk3kdv4OYMo5AMascgEyAA1stOUkSTZ7
 Js2fSCOkEgsCwyGWluCKqRXhm2htjM51IXt4pe7ihMV2zW9RhZsqEpm/w
 8sFmnTleClTfc+TU66q8wiexwbnJ7vH2s8vibOl/MkE77dyU1qtaVirSO Q==;
X-CSE-ConnectionGUID: Xxnet2p1SVKkGzY6A5fOaQ==
X-CSE-MsgGUID: TDRq6yBdRoaeYkits6YH5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="51814213"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="51814213"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:23:29 -0700
X-CSE-ConnectionGUID: 5FmQyACIQ9CU+9PxWFSB3g==
X-CSE-MsgGUID: xshuxxe9Tka+gEXvrRL3Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="151308570"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 04:23:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:23:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 04:23:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 04:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gdp/9gRGGkSsw89eNLaLI6XfBgD1onPuQdRSgRQ3HiXJ8NwFDXoX/U3E0jXYU1TeZxMvsQlhqPBYwQRqaDO5DXbkKsDWkKpNlVPScCnwpv0FELVEODemZjLxo3ELXkM4vP+0GqsBDKEtbpjB47AzXmrzDYlzlrv40ROMU54AUKNjENJEGeP3YWm52hbqG0rg+Wf/yMp6xpjzpig3AepAoOlxAJDyrHFlex2Q77nZo4T49zD4y4IlT860fbVEnYUqTmc62iqlMrdak8di+le+n8Yx2QTyKfXrdGH2BzUANABu6yrdnILOU75FcS90EiHf40b9bquBTlJXb8yWGZH/5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVlI394kaDqfBNydaZqcnmCzx0ZePlxpXovpmLFQp9Q=;
 b=uAcqkq/27J1MwV//870rNWb8h1uGbdVxPdT5ges/0YZeoBWKr31ezV7ccKGkhvb2diNs50y1F5okg/7RsM2VSLf/bAotNDJUFvcPMC1ynVRqaj/Fh2de7V/5i0d8/E4rpqrsCWog3pKCKykFRMh5OQcvA0q8kOw3jGKqC6xtc9LRry++/S001r8KqL7PsPu6WzgeGBZ9FmWqckqz80gvKzAj78V4hTpx3qDi2VEQBnC9Ld3J8fXUMv+gGiUy4waPesVJseCrD2GsWFeDyGlwAxLjEneBAxhAoieabGvVfi6QUy7peYD801DF8wFXihWGw2KFr2XrwJBGcsovk+ZTpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB8272.namprd11.prod.outlook.com (2603:10b6:a03:47d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Thu, 19 Jun
 2025 11:23:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8835.027; Thu, 19 Jun 2025
 11:23:24 +0000
Date: Thu, 19 Jun 2025 14:23:19 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 15/16] drm/i915/cdclk: abstract intel_cdclk_actual() and
 intel_cdclk_actual_voltage_level()
Message-ID: <aFPzJ5EyRb5YXqFt@ideak-desk>
References: <cover.1749730224.git.jani.nikula@intel.com>
 <b282cb46ab35f4e0a6e2cf6c57cd8a2cd5db2647.1749730224.git.jani.nikula@intel.com>
 <aFMCudrkm1wjb1v6@ideak-desk>
 <223efae2cddd35d932e439e051362c2f77f9c919@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <223efae2cddd35d932e439e051362c2f77f9c919@intel.com>
X-ClientProxiedBy: DUZPR01CA0273.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: ba182725-037e-462d-5892-08ddaf23b49c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zkCbJSTzP1ATx8+r03M0LFYjJzh26vtqXtexbw+g7I2Q9nJbVOpmtXdLBqYt?=
 =?us-ascii?Q?iRzeE6C+77B8XaaRPmkTxQ90PlFNmKxEk8RXJhdSAHph889RLQx786jf6s57?=
 =?us-ascii?Q?2OaR9cLeTr2Kc+CmdcXPUNTAHC7n83bwe4RMqNFpja2oBa3YF7jKiXJecx0a?=
 =?us-ascii?Q?Q0ACASR6IMp5ih6sk3s23cHjgRnJ0mL3MOmkGAky7nOVcOxR7iN4D1wfP1TK?=
 =?us-ascii?Q?61VVOsZvuMYONq/b0P91SGCc3KnAdMK56DLTtx3WEEfTb7pQL3FuHTSuM9Fy?=
 =?us-ascii?Q?hneKnpSHcpE56M+aN70sjkzDvMSYSSV8W+SvPk5i267Z2We9YGdQFahEl+Lk?=
 =?us-ascii?Q?OZSTq5sjQxY+uAYnTS2J/UXbLhRwNPVOtqtw9Gm5gJOZrZEIM4Wmq++SIcJc?=
 =?us-ascii?Q?LFLxU73XHKhTIzZFCxZV/o3YOA4OjXbyytFgcwmaKSDPDy+jaZ0gKC3rjsnV?=
 =?us-ascii?Q?SPzd4HCxoAMZFJBFSic9q5CpZhAN4OFTaWsf6tt14L7y8FeeTJyUFv6C00ok?=
 =?us-ascii?Q?c8rEKerDUSQsrs+GyinOy/askIq2PI9txfok27yCU41IS11+E75aaAlWAipZ?=
 =?us-ascii?Q?fbE2o+TNbgmOKcHBQCIv5gZD32zGKdvEYhBZ/wI2Hka27b0lihJIqYWcfXTU?=
 =?us-ascii?Q?oWrS2p9lvMTcA2ZejtxKDlKLaEYuSmY2Ht6w8SaG39AU3WBM6GHv7gfxcbmj?=
 =?us-ascii?Q?NNaKg61ykQIVZTLKYy4Un5VjoQe8fJpq7lmviIASsNPMPW6hvsoSGvlF0kEp?=
 =?us-ascii?Q?9Mwu5fDSCzSOx/wxOggespK/4ntOrWenxrh6RupZv4KjVJ9q9TLZkq76M4dN?=
 =?us-ascii?Q?1ZkYWYi6rjvKZAhYe1vYxe4XzzS3S6Nc4wgg7DMsg5AOgZldV4CP4/41vxmN?=
 =?us-ascii?Q?XGDHCb1Vz2QLSulaHywZogbH09LRW54Vd/WDtN8dDEdJGdNsg3mSnqC+0ySK?=
 =?us-ascii?Q?N6yT/BqRB8+4Hy5DIp0l4CekwOgv+d8MEyo6/+iHiIIroak72NPTtfjX1+Jt?=
 =?us-ascii?Q?QWTtUJsh8WrXVyxYx5qlNUhzGXO44d8Y0rYjsnof5uQCvlOYSdxK98FjS8JJ?=
 =?us-ascii?Q?ShLpkuxFinUPQVYcAyBW8jVLoundT/+vC49A1Cyy6RbbAQchlx5Tu3Ot2AT5?=
 =?us-ascii?Q?3+A4P8wrWCk5dMVvmdOPo/NDowkhXUnHv+Q80Y4I+q/BNoMx3VrD/yWb9yRx?=
 =?us-ascii?Q?z5s72T624JLv/rDEuGMXnUogNIwUlkdNGIc9+G5Zqm3xRMxTzm//MAKTx95w?=
 =?us-ascii?Q?vY+Bnn1CntAiGa1EoG8Tgy9FYywK1XYy3tK52NylKzmZeHNVZH1KPXRXt5HE?=
 =?us-ascii?Q?y+EoZ/8Kdtvg/HqP4wVRY9IqWmRFKVxbrfDN6SAHCxOnsuqyS+c2jLO8LlCk?=
 =?us-ascii?Q?h45m3W0+k+VVB6cKeAOJhtrfCp9erTdiEu8kC1JrUKrda/z0GITEg+9o5WvE?=
 =?us-ascii?Q?KPn1P3Ai348=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W368Go9LDExHeUStXYwOI1cJJ1rVDx7a5s9RvN/O/s2tyUIVgtEAQVYbDeS0?=
 =?us-ascii?Q?oeOFinCc9Q2rsTxVBciajuclLqvjuq9x9cSpOF5ZP6sbD/4ChlkycP1QbgED?=
 =?us-ascii?Q?gqUBC3+L8YrDF33nZ7EuS7QGJ9cdhhlVnYALTPdgvJV273ohvQEksknMqFDl?=
 =?us-ascii?Q?Ldj3GwToaOIg/vNkxASlbMZONySNBly0HvUaMfvhc0z22ChJ/mcp51D1ujLu?=
 =?us-ascii?Q?bAtNkDDADcFe4QNLR46L9oSN4zT4IgrrstaZkLAKH+LE9VA7FUCO+iKm5ThU?=
 =?us-ascii?Q?H4nUfnLND2X6J7J51C7hjiwr+AHAZFCedJkqPUfGWm6gmdU03tOelF9XkeWg?=
 =?us-ascii?Q?UWn5JoXOLl7TkfaU9FDj5EkLrseIjjUwwCGot3z0/HU0jTx+T9xvsBh1IFOu?=
 =?us-ascii?Q?6NnvobhTU7LNQX5SSg5vq7F/Gq8Bx6KQ6qtHEXyTsFwNf0WQL1g3cMooD9Ez?=
 =?us-ascii?Q?2Tvj7aFfWypI2xYdcpxmai54J4zfveQXfy8Lclt7kKY2huhK2StMpKm6RQEB?=
 =?us-ascii?Q?+hynmwu1Bjzj0w1P/ZL0IOgqd4/rmbchMO+OpD48GuB6R5tuNFqwFoOaeeDl?=
 =?us-ascii?Q?S3Iu+XsqfK7N/39NqPjGbFyiTie+eYcBu1mnSCHQW3iv9EH8N2VBjNqc1SK9?=
 =?us-ascii?Q?mm7PqvoCWMGxjgaLdnXrEbwNXmwptrzwlfMRy6K68A9Qbl4iNnV8xrFzqSyz?=
 =?us-ascii?Q?xKItrjrE2BZMl6tQFxnBtlAvQGNSw3UpQmPOHhBpsXXfDKkwxU2CMvTRTFwB?=
 =?us-ascii?Q?JlDdXGMm1fJtviai+Z9qBjzpZ6m3HXPFhQmbW1cs9cZSxpH9LlxHnBBxqzl5?=
 =?us-ascii?Q?31QzdQk6qfrXZ86RgpV1qKQkadVyS+TfOC4mCCPkWY3w/E887BrWRoiFugSo?=
 =?us-ascii?Q?1fP+lBuH38PSGpu5sqH1YEvVKQHQ68thTHwoYINOX9406MGHxaUD3Wd6LERN?=
 =?us-ascii?Q?oUoavgn46UQon5dTBKS3iJ9wDk2TI4IzQhfhdAWprmjXbaghNaPxgoMyG/1W?=
 =?us-ascii?Q?bQ1m+t+HH3jkqIfH4v3tnb6ZdsnTR2aSdpzVrsd2fdcaM5OTo3uUgcoNwEJ1?=
 =?us-ascii?Q?224+uI52dTEXV2+HqEM0cSU1euIWanPYUk60jsXo1y5XgviZg1cUNFXIkw+/?=
 =?us-ascii?Q?VcvZoAv9M3O6f6kHJjPTRLc/jv/+mtbM1FFraIAbl+d/VpIAdVX3OD78vUeg?=
 =?us-ascii?Q?PH71sqtJ6qSOwN9N8gcyR77DbeNYFlx1uvVbO1BJrsbT9i+2lnyN273Vn8AA?=
 =?us-ascii?Q?F0mXLwNAY6yqfC0D/gtloq8AD5P7GDXSyKXuCuQdbO/YEPaVxot4F9C58c89?=
 =?us-ascii?Q?MDoDnmhzWIWmE3Vuio2c4LutjY39guphlBB+UEScKsxuLi0HUHLeppwLyMqi?=
 =?us-ascii?Q?CQs3u0RdHEl5V0sGMsHYQnz3GRh7+0NB9ERvCpDv3LElSM4mZACOzN86A9OO?=
 =?us-ascii?Q?CkMG06Tw3Yc+dSlVGGVQqdb0VLM73bD4DPqHi3VbmsS/sH6AFxAPOsWN1SoG?=
 =?us-ascii?Q?FIPZPNvcx7GCOf4Dof5v2kZPvGQVl7JYsnEplMDYWhf8xIxc/R0SlpNScWfN?=
 =?us-ascii?Q?EPEAfNi99xf4NxsoEBK0mU0uP+EY3KKRXKLMClX4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba182725-037e-462d-5892-08ddaf23b49c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 11:23:24.7443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MCiAjce4oFVVOhNDjgDJzaRNkKR8RF62ls1UrP9hl98yUMMY+mPyA9O9ZU3TGWyuGDm3Kgit/gvMRvkRGM/tdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8272
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

On Thu, Jun 19, 2025 at 01:11:32PM +0300, Jani Nikula wrote:
> On Wed, 18 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Jun 12, 2025 at 03:12:10PM +0300, Jani Nikula wrote:
> >> Add intel_cdclk_actual() and intel_cdclk_actual_voltage_level() helpers
> >> to avoid looking at struct intel_cdclk_state internals outside of
> >> intel_cdclk.c.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 10 ++++++++++
> >>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 ++
> >>  drivers/gpu/drm/i915/display/intel_pmdemand.c |  4 ++--
> >>  3 files changed, 14 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 994be1d0e20c..2e8abf237bd1 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -3884,3 +3884,13 @@ void intel_cdclk_read_hw(struct intel_display *display)
> >>  	cdclk_state->actual = display->cdclk.hw;
> >>  	cdclk_state->logical = display->cdclk.hw;
> >>  }
> >> +
> >> +int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state)
> >> +{
> >> +	return cdclk_state->actual.cdclk;
> >> +}
> >> +
> >> +int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state)
> >> +{
> >> +	return cdclk_state->actual.voltage_level;
> >> +}
> >
> > These could've been grouped better after intel_cdclk_logical().
> 
> Yes, changing that.
> 
> > I wondered if it'd make sense to use
> > intel_cdclk_{logical,actual}_cdclk() instead of 
> > intel_cdclk_{logical,actual}().
> 
> Mmh. I dislike the repetition, "cdclk logical cdclk"...

Yes, though there's already intel_cdclk_min_cdclk() anyway.

> > Or *_clock() instead of *_cdclk() in the above and other helpers.
> 
> ...so I set out to consistently use "clock", but then it didn't feel
> right for things like "intel_cdclk_min_cdclk" because it's then compared
> against min_cdclk in a number of places.
> 
> I don't know, leave it as it is now in the patches?

I only pointed this out since intel_cdclk_actual() is strange wrt.
intel_cdclk_actual_voltage_level() for instace. But sure, this is not a
big deal.

> 
> BR,
> Jani.
> 
> 
> 
> >
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> >> index 0d5ee1826168..f38605c6ab72 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> >> @@ -103,5 +103,7 @@ int intel_cdclk_bw_min_cdclk(const struct intel_cdclk_state *cdclk_state);
> >>  bool intel_cdclk_pmdemand_needs_update(struct intel_atomic_state *state);
> >>  void intel_cdclk_force_min_cdclk(struct intel_cdclk_state *cdclk_state, int force_min_cdclk);
> >>  void intel_cdclk_read_hw(struct intel_display *display);
> >> +int intel_cdclk_actual(const struct intel_cdclk_state *cdclk_state);
> >> +int intel_cdclk_actual_voltage_level(const struct intel_cdclk_state *cdclk_state);
> >>  
> >>  #endif /* __INTEL_CDCLK_H__ */
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> index 16ef68ef4041..d806c15db7ce 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> >> @@ -360,9 +360,9 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
> >>  		return PTR_ERR(new_cdclk_state);
> >>  
> >>  	new_pmdemand_state->params.voltage_index =
> >> -		new_cdclk_state->actual.voltage_level;
> >> +		intel_cdclk_actual_voltage_level(new_cdclk_state);
> >>  	new_pmdemand_state->params.cdclk_freq_mhz =
> >> -		DIV_ROUND_UP(new_cdclk_state->actual.cdclk, 1000);
> >> +		DIV_ROUND_UP(intel_cdclk_actual(new_cdclk_state), 1000);
> >>  
> >>  	intel_pmdemand_update_max_ddiclk(display, state, new_pmdemand_state);
> >>  
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
