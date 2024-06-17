Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25E490B8D9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 20:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A6210E496;
	Mon, 17 Jun 2024 18:03:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELrJkCkH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27F610E48F;
 Mon, 17 Jun 2024 18:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718647394; x=1750183394;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Nx0/9NvwVPJSnp71Q+wB5QCUGFbYXeJIGnXXHd4DnJ4=;
 b=ELrJkCkHITUy1avOeNetj7ZvhLXZNHsT34TfIdMRIVqqmpURlBV4++IH
 F3R0cIx+V0N+nVfW9bg+ppo5z0HlpHv5bQ33NZp9Hxlw7o17tOu3qx4Dv
 eiIktRn/EIWo6lKUgh82rvbhgfCI76d97uUcC5KRW8TM+1QqJtH0ZuiqL
 iytzAsAR7kqPToyRCGgkt4MvAq8nYqnHiZj0aqoVElm/KKl5MmmcPepAJ
 2gb+w6xefKZW/kcNePJWERoyt4U4iMQCh0yc4YOKi8BfARi8qJXkl9zP/
 ZeXEPYe/u2Aa4GzGlXp4F0me3mwJtujR4GE98JY4MIG9Z/7oHz/+UBTcD A==;
X-CSE-ConnectionGUID: bX9ff/ItQ0qnq1sFej4sxg==
X-CSE-MsgGUID: o99w4sGdSpW8qH0bA5CSNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15455736"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="15455736"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 11:03:14 -0700
X-CSE-ConnectionGUID: 45WNP2+DT5qRAXHJMeNa9g==
X-CSE-MsgGUID: 9VzfEucQQYWL5LOGf6R6Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="41201936"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 11:03:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 11:03:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 11:03:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 11:03:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvScpkpDFeqxhiwd83EJHyZSiaY1N8fbED6XZPmJZA9lkFjkTvap6idYkeWtpR9cQwTf6GLVUZpRcUfkd9GwG9GmuJZc54adSjf01S4Y7HAktnE/RPoXLk9Kp0bcho+xGD4Ltmo5qM3vYXdokAZRZYtFWUmZt+A+HDfhsqgEtukDGESsIM3cQ8aQS+PDt5RjEdXXwxjc0W0uc2c39aaCgDZc1DsZb+URmzkc7PVIu05cRsCEjw1cLEjqUgg0lJ3mVPxAIezWXYS4fz4r12z6aUnNjSpzlF2nSj1BGrX2lgSDYCQ6x1NVcSjoJcfJg2JkPNtWo6geRgqOkcrCjvzrxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=REl8C8qt7mpq5TKI1wFvAaUl6Fch6qWgYD44DWPISpE=;
 b=aKHZoWQtyPl0Lu3NE6fFq9WA3ooS8aQT2RKCTjxA9JhWNYurASZrgoxT/JWqhpYHMV/26gnmVCcsIiAOuMvSW8xj5n+FeouqQZm9DJu6nWVyjkgfMhdjZB0X539FJfeNff+LeqSsEfwU57QDd2XGSrbTW/qNiYcvmFaV+i6KCAl/sEd/jzWi9qZOAz7JT/cNNbf4tUfPvy9Ja3iaGKff21u9al9yWm5RQVF1t3FLBU7UwELajeJC+GwkjE0H6p/9l2Ig8ImVJsq+JSS2iHmkdn90JUnQk4D7vbUf06B500pqTUonGnOcs4Tn3Y+JptqDE7mg2nuy8m9vP5SGKScxLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 DS0PR11MB8162.namprd11.prod.outlook.com (2603:10b6:8:166::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.30; Mon, 17 Jun 2024 18:03:10 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 18:03:10 +0000
Date: Mon, 17 Jun 2024 14:03:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/xe: Use the encoder suspend helper also used by
 the i915 driver
Message-ID: <ZnB6WmdMLXZ-9JEW@intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
 <20240617170356.4000251-3-imre.deak@intel.com>
 <ZnB15p5eH-eVsg1a@intel.com>
 <ZnB4RcurhbUBUdra@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZnB4RcurhbUBUdra@ideak-desk.fi.intel.com>
X-ClientProxiedBy: BYAPR01CA0004.prod.exchangelabs.com (2603:10b6:a02:80::17)
 To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|DS0PR11MB8162:EE_
X-MS-Office365-Filtering-Correlation-Id: 836cab22-55ae-465a-1608-08dc8ef7bfd6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?E+WuB0Rxoj60okIquKTBS1Q1cI1n0f2h1D567YyCek1bMQvUNtrylYjpDg2p?=
 =?us-ascii?Q?D4br1XKZyGq/18Oc0ygQuMWNgzGbkPWniN7ideNpQoQuH60GM/LxzMiVdvD5?=
 =?us-ascii?Q?Iqz6xldDrCRhX4t5+BEEGuaUe3NRPfi2NqsgyKqFdyFTYdYj9F9skXkQmH2C?=
 =?us-ascii?Q?/C/a6HxlQ4ZCz9PeAmMC1XxXFv9rUjmRSZbG5S/gxfgYtMNC3TMjGoEh7Aye?=
 =?us-ascii?Q?VChS9u5+s0rM70q0t/V61TF26+6MfbzV+VWzAuAjZsGnFEQrhhuup63Lfs0D?=
 =?us-ascii?Q?4hjximM1WH5wH5PT7msFKgDBrbhVJNziFOaABdHoyO0P6jaEC3p6fW9yaTAc?=
 =?us-ascii?Q?U3fsytbqeqnuqNYE4zG2zn8qhChZpqIsUiB//MbE1Of1EtxsF3d6K37TtZsy?=
 =?us-ascii?Q?Lcd6YR+A/Mr/rZisKCElb9kOLSEHnszp6xwM+O11+Wa2kOpI8AEdt8qM8pep?=
 =?us-ascii?Q?Qc4Ts54YOq2RbJ/+EgsjXHluCQfB+XRATmGGgL2bjQ7xoKSzbpFzP+N48TUJ?=
 =?us-ascii?Q?nh5G/+L82cOfX4D1HNXqwkZpVTwcciwqZVRKfiua+jtgs9/GGXJzqyyr7OqL?=
 =?us-ascii?Q?+AX3mcFilQkpzUtuVymtoEQYRj7kbP0ZVzHG8lU9T9/uIpcqI5pkC5c90Nu3?=
 =?us-ascii?Q?Ghyg3nN6Z+DGaeyN/X9PbFDqYMy5ogSfjwxa/AsWY19idYK030YAK4wXc8hq?=
 =?us-ascii?Q?Mwh+mnm5U6jnY/PqzwO7hMQMjpEZYKtKkBLGEUT1nwDrMwmc5izYj3Q4W89M?=
 =?us-ascii?Q?/MkX0HRJtJWbcD6+utKhJPGRHOhYvv9O03XOX4J+qTLj3fC+yTmLlH99HTYP?=
 =?us-ascii?Q?JOEz07V3BarGOxxwY9cpy94YAv57PVSMSCd+YyNgdxOuTEfogYwan1YeisiT?=
 =?us-ascii?Q?6AGYuQ0QDHfQael/yBxUXdhNB8bAZIrrma1gsqdEGRV+YLSwEm0575n5VX1/?=
 =?us-ascii?Q?Z+zm8MP4nUNn5kFKokWV+bl/hbE6JWLBi/vJRSLXZuwISK7ffbPv06mlAYsb?=
 =?us-ascii?Q?GLIztyE4zq9PmjA595Ka2CbeUDluE1ijcv7AQLRFTB+cgx73ChFomuaJQx14?=
 =?us-ascii?Q?iUBeD01sd+yJuI5iQoiks931isjDgTILs4vbNI58F9Z93Ura8tkVjELZk2n8?=
 =?us-ascii?Q?3lqcgxZ7luX8BWsXbje2m8qwsVJsW1LJyrSKKnYJ2SJEv8f54X4BQvtIPYbI?=
 =?us-ascii?Q?Sh6kbr/9xbbVx0Pr8Or1gWzR6HvKjcto0t5DT+l+tf+uUqcH8F68cOLrOCA1?=
 =?us-ascii?Q?vvtmZOGxeg87BKUbtZKpR8kxRhrerIcwXEjzjOguTnU4f2oids3YqD8Sz2s6?=
 =?us-ascii?Q?BU2FhJk7HFhnZ4o/wrqrbwO3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VF7aj5zDNX0PGWYwA/6/ygT915U2Cra7kLCNHTMbxYevvNHexEAFaY3q+rFm?=
 =?us-ascii?Q?zkwaFn3Oi+0r0CqIDRkMsBMezH/HPdvvt47etEAHh9Ak4UXZvguNtv4NOKjb?=
 =?us-ascii?Q?J/9+n891WZe5isl/tDVD8MDZkju8aqg6kGbqyMcJzpnoAJYjSRIh+i+02Fzn?=
 =?us-ascii?Q?u5woi976Ar8lev7aBIWP+DyxB93bLChWq0oJCcuinM5m4rhMV6xRumRtiD3n?=
 =?us-ascii?Q?CTiqWPW2iZW1wGgXInOCmYEWKv3CzAT2iBzkIFZgbIjid99tFLdCIibBhfIb?=
 =?us-ascii?Q?5kDVKbbYpu3u43m3CUXwTxef5STEEnoSoh7QvGtjGIaiSruL8n21xo0wcbkG?=
 =?us-ascii?Q?8OIIKymTFSD7o+R8Un6sadxN/OrdwDF6X01PP2vKJwV0QZHSevIHLAX7Plwm?=
 =?us-ascii?Q?o4gHDcItH4bCfgt3fbRXojtEmNT6xsn27s2k0046OlUSvWWkd2L5V+nKe86q?=
 =?us-ascii?Q?fYtoQdOV7KN5D5ijX5Ubcw2u/p6eOeC6HhHFgPWcLG1IotlnVpWxSJgPq9B1?=
 =?us-ascii?Q?JHc9H22TrkwJvaj9Uhh88rXAXYt4fIjTEahkF/44fGfrk6xS+On3YUvGHNlb?=
 =?us-ascii?Q?MYy6RzUx8pg7/4SeODZ25awR9C8y1LLAoecnOfzq/AgCVUfQ1IyTk90t6IiR?=
 =?us-ascii?Q?2BVwBwVPsz9fW8B6YM/5tG95y36JbaoqIPM1gPcpSAtOguI5FJRT5Gs4KgGy?=
 =?us-ascii?Q?TeK6NkAMyRrMEAnQMH4idPIBHyETqJANnkn4MRadaTZvGtfbd7mUgcBlGo1Q?=
 =?us-ascii?Q?Ip+YfoxLsJU9hxypISwQz1D6M9gBlGuebMdIHluEOcsKf+a9lxLVt4CKdgGp?=
 =?us-ascii?Q?iWKnKpQHPUCQT2Oyl+qgYGNrhTov2qK2gXRXAa1lvV9SqiYbfQfxuck5XnwT?=
 =?us-ascii?Q?jb7o9uQvqczwOQ9sg1Mg2l6O8m1K34wOmBtCbjcuXfQbT/fHTzuMBI0Qpkuj?=
 =?us-ascii?Q?4RsxwW9kdQg3hRf1IgaL25DWEho1WunQTrN3mHzG31lNrD2nNgoF77D6fA0Y?=
 =?us-ascii?Q?ZKHqXNxurohg06ZserSwoInQbiRXBTU3SZ87lxAtLdDS+Q7mwJB6VRYu/L8d?=
 =?us-ascii?Q?C4wm5dZgfRMIFPEIiqNdDU3hREMjBTihejQ+d4H6NrqiivO6N8MLv6DFum1o?=
 =?us-ascii?Q?VPZFh7RVV5FX6S1hYXNH8dXGwO8ieOLmd6SLFx8fKhgtGN18eInDohIytPzb?=
 =?us-ascii?Q?+UIuKt6fEgNBzVzDBEUmCYvn30wgR335HuJzEEZUsbHiuPyPvQ11EnxFeuIG?=
 =?us-ascii?Q?nMV+/2vzAcn0Rb94lFU9exuaDlAtGZfZG/LZPPl/I4gDUISe71H5DlOLh77g?=
 =?us-ascii?Q?5Nb+WjrCMWmph4cS5ifCEEnDzkYlhur6Iz2sVhdObgpl2S/TH5U7a14BN8hV?=
 =?us-ascii?Q?7GWKLovxGyAuVpgiSkJlRYomULW7ilwUsdvekOyeRpPZLvwrTRizC/SD3y4E?=
 =?us-ascii?Q?9Dwufdn1gWhK+FddnCeuWZTwIigjtPYU1V3UT7WwpY5eyl1xYx58opClXevZ?=
 =?us-ascii?Q?BJUJ5j4KD5OkOri8OTrBVV8oCTqM7qpIcoUAY1ouPK0iKHzYiDukpW+cQUcf?=
 =?us-ascii?Q?QFUQUBPUakSZBDEziwQavTQs9DYiUms6gx+oDjBn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 836cab22-55ae-465a-1608-08dc8ef7bfd6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 18:03:10.8442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oTFhpf98fz1yWRfrq1MTpce5awdNFJe4tX9d6HhnxCDlNK1HMMvod5kS3gSsjQX2w6Lg49W52kOsI0yzBR9vqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8162
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

On Mon, Jun 17, 2024 at 08:54:13PM +0300, Imre Deak wrote:
> On Mon, Jun 17, 2024 at 01:44:06PM -0400, Rodrigo Vivi wrote:
> > On Mon, Jun 17, 2024 at 08:03:56PM +0300, Imre Deak wrote:
> > > Use the suspend encoders helper which is also used by the i915 driver.
> > > This fixes an issue in the xe driver where the encoder
> > > suspend_complete() hook is not called and was an overlook when this hook
> > > was added in
> > 
> > I believe it is okay to stay in the same line and then break the commit
> > subject in the middle for the next line...
> 
> Ok, looks like done elsewhere as well, will reformat.

nah, not needed. this is clear enough if checkpatch is not complainin no need
to change.

> 
> > > Commit b61fad5f7e5d ("drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held")
> > > 
> > 
> > I wonder if we should have a fixes, but probably okay to skip it.
> 
> I wasn't sure, since strictly the tree itself at the above commit didn't
> have the issue. I suppose if needed this would need to be sent to 6.9
> stable manually.

good point!

thanks a lot,
Rodrigo.

> 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks.
> 
> > 
> > > for i915, but not added to the xe driver (which was still in a separate
> > > source tree at the above point).
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/xe/display/xe_display.c | 18 ++----------------
> > >  1 file changed, 2 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > > index 78cccbe289475..8b83dcff72e17 100644
> > > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > > @@ -23,6 +23,7 @@
> > >  #include "intel_display_types.h"
> > >  #include "intel_dmc.h"
> > >  #include "intel_dp.h"
> > > +#include "intel_encoder.h"
> > >  #include "intel_fbdev.h"
> > >  #include "intel_hdcp.h"
> > >  #include "intel_hotplug.h"
> > > @@ -270,21 +271,6 @@ void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
> > >  		gen11_de_irq_postinstall(xe);
> > >  }
> > >  
> > > -static void intel_suspend_encoders(struct xe_device *xe)
> > > -{
> > > -	struct drm_device *dev = &xe->drm;
> > > -	struct intel_encoder *encoder;
> > > -
> > > -	if (has_display(xe))
> > > -		return;
> > > -
> > > -	drm_modeset_lock_all(dev);
> > > -	for_each_intel_encoder(dev, encoder)
> > > -		if (encoder->suspend)
> > > -			encoder->suspend(encoder);
> > > -	drm_modeset_unlock_all(dev);
> > > -}
> > > -
> > >  static bool suspend_to_idle(void)
> > >  {
> > >  #if IS_ENABLED(CONFIG_ACPI_SLEEP)
> > > @@ -315,7 +301,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> > >  
> > >  	intel_hpd_cancel_work(xe);
> > >  
> > > -	intel_suspend_encoders(xe);
> > > +	intel_encoder_suspend_all(&xe->display);
> > >  
> > >  	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
> > >  
> > > -- 
> > > 2.43.3
> > > 
