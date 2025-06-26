Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B65BAE9BF9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 12:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 699BF10E84C;
	Thu, 26 Jun 2025 10:56:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMxMuCRH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E35A10E84C;
 Thu, 26 Jun 2025 10:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750935418; x=1782471418;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=rdFGZBdxlFG5//9KT6xrCnKBNX3ilBAWPkfKfS1p0ss=;
 b=kMxMuCRH0V+HC3oE6cc+fxcmdbLWS3XaYC1kbta0KJUdxxGywZcHgbQL
 0rMonnh6CW01GAXhZFj5XKdfeEjSXgWZ7/+ve5CD8J2egzuxceJi4ZJRN
 8vvWf8bpN6NB+frQhaxTok5/P143713/we/9RpMTpPJKsKHCysvIEvvLy
 aUX+o1v9dzdF9krnpwFwXoxK2/GySNoyD7hSyAcYjcHGvKvmM/HryURta
 a0+7ueH1Zr/Z3mOYw0jKa3UFUFfCnJbfeY6pOHL8vNDG75fRZaflhXUrQ
 xdLe9E+w6UqLLcuV4VilAx/jPUpNC1toDVIL9eDq0E8i+ItxbQGS1ohOx w==;
X-CSE-ConnectionGUID: bIUKSj1XTfaHBeaVWBun1Q==
X-CSE-MsgGUID: 5nQ2aav0QRycuN9B+iqjSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="78662673"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="78662673"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:56:58 -0700
X-CSE-ConnectionGUID: LtQZl0tYQdSBe5PNSY0htw==
X-CSE-MsgGUID: 19FXXChKTK+skHybaZyJaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="183373553"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 03:56:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 03:56:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 03:56:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.56)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 03:56:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cdu/YTrJEHW+lemOokmVOeX7aOyk669IQFU7iUQiG4ZHZRKc3NK6J255PqH0R+BbIP6Gh9p+vAr4+fsKy+l0rPPvUK4vOuDETyEKjuwGkXlBBAXetoGmpbeQNYPChzenuQ2wJatxjt7YmliwjQ4o1MgqLDCReOK+juwUfJCV9qTqzy3d77qG/ER6m3wAhH9cd/Hhi0M1hJ5iQ/z1BUCE6XILrLo7joq0cYO9XRDh8vgT1QTLxRxN49IEZW5nkzhMysdqfe1qDqYV7a/MsAscWse7NarYgVdPQeLfkNJtgSO6njheqJEvi+EWsE9oWfgc/grEHEXydJ/dZ3/gqBFPGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKop5lVOVpdDqfIBRR3KHH0ZC3c/iURZChf56HW1UUY=;
 b=Nt+Z4Gsh8Pe6uPsvNR0npTRtdPbuSo/C9AC0ya7g5JBfd47dO/pvQIivktDkwRH9D0IXoHtkoSVsqfxYhrhPO8qlea6CJs2BFE8XGMIM9XKk3haWYZ+AlvZs/TvLOjlvTf4P9P+u8TrP2Tvj+A7UdwMboUDYJrW9/50hzSySa4zBm2FOLOJGCHw0OKXXPWRwbZ/e82VbRzbSIvoSb5GggQRBSXMTN9yfjzXTR72VAE7eXElBbFkYls9VOg5Eaz1lLFsRTff+3EY78VyZ/uYTxEuuDQsH/ruYvrffnVQX2RfLhpCQft/XOXw/dkQxKqUwwPIeUpinxKbkG7OFYTaaUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Thu, 26 Jun
 2025 10:56:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 10:56:27 +0000
Date: Thu, 26 Jun 2025 13:56:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
Message-ID: <aF0nVObjLtsjcWBx@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-12-imre.deak@intel.com>
 <625ce1c9c46ba93027fecadae4803fc86450ad50@intel.com>
 <aF0UbRD7DLIwZRYe@ideak-desk>
 <9ef664aa1e833ee6c3f97533da4a0d828a03f9f2@intel.com>
 <aF0kbmZ34PeclKW_@ideak-desk>
 <9cef5bf7a30fca73313e9b178bf65f1ac2842141@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9cef5bf7a30fca73313e9b178bf65f1ac2842141@intel.com>
X-ClientProxiedBy: LNXP265CA0078.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:76::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 95adcc60-9203-4e5c-1ce1-08ddb4a0192a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sBCd62HOeMtelTQmScuGu2+kP2vvPIo5V97mAkfeWg10IewWJUOPyPPGUnZQ?=
 =?us-ascii?Q?QS6x3Kv+YPu9QuDhXY5kl+Muoowak05BHz1h8f9U+p0hCpW0P3kZDqjw6oiQ?=
 =?us-ascii?Q?Gl7hhEJmHvmTKlNkL+LpJdMzw+h1xJt/i34QwNSbvvJ/gmWOUysjocf26I5m?=
 =?us-ascii?Q?pp7nySxGDr7CGElTmaNVKzDYxFWI7GFG1eal/kgkOrcqCBkXSTWQ/IWlkd+h?=
 =?us-ascii?Q?Wl+IQdW9Va4MJHxHZpBNorrzU7PJXXhyrUvN+tsiNCW6xb3b/TufWyEb0Hrv?=
 =?us-ascii?Q?7ztq/mnCD2rVXiiFy9pzTTA9gWY8O/23T3Ee8fQ4JVayrQa78NZpa0xgOf/6?=
 =?us-ascii?Q?WMMb5gRyn6xPPfQfZpl/1x8lwB/1wnsly8qcG/al5vudp2s9vPtobQ2bHZcf?=
 =?us-ascii?Q?Oa63D4kNRECpWNVxSm4BBUDDFI109jj0DDZN573TEEpNA543Lz93x+D3z9zJ?=
 =?us-ascii?Q?UyC+6zVE1U75UVcMe//kZh/tWKN6WgVMEoAtgxtWyXUxeQefMCw1ByM/yOTD?=
 =?us-ascii?Q?FeW53zupH6MlcGvmzxxoIUgYEdkZar5fsZMZHo+aGi4lwa3CNGY6XVsEPLxE?=
 =?us-ascii?Q?VIdnhBwuW7hpO68xGfamvJ+8u8hIhEZIkmiDgKWnTN29Q24WRhFbQlRsNa2b?=
 =?us-ascii?Q?miN7qMNH4iQWseoS6mYNDvdShKUQbSJtrSPqdX/koUvHYVJnGnF8K+jUpoF0?=
 =?us-ascii?Q?7FsW98UTrSomiZY2W8CJ+0xhTKiGDzGROrzhVI8Wvhme3jWJPSNMqfgvQvws?=
 =?us-ascii?Q?XYk2Gl86gEz3AQcj5oHCBorKTxDfgMg6lXlNG6pTPY1o3hFfMIkXTp/n3jmZ?=
 =?us-ascii?Q?bO05DbbwwmYxzHpJEwNnZ/7Qx4Adb70d3OfexjdFA/wBPEuHlUbAvVXNT0O+?=
 =?us-ascii?Q?1xGP6JQ7/k43Jr/5tqAb1nG6r0Ir9J+d/LHcSlDdIBM9E7DnXMwYaL0+i9iw?=
 =?us-ascii?Q?G8Si9pcRQw53Afi4uBgixK9Bfx4v029kxsb2kmwk6X59x8AoyoGHWFlOL4V8?=
 =?us-ascii?Q?yI1Bs2Gs4eD1O3uQ+bWblRohOpMUj+3R+MgaQZH3o8Y1o2aLiXINjEN3PAqQ?=
 =?us-ascii?Q?2NjJnr6uBibGLO6ESDF31OwxCxf23XbtNZ1w0wxcJ+aX24P0U2v3yyLOA6/U?=
 =?us-ascii?Q?oJ5/k30QVh3HlFfrgA9tR+mW7RTMprx19znafEEmRXKqrFLdiZWpYcysyrgE?=
 =?us-ascii?Q?S6BNu4ZMW1LtsDaar4PxDWnY3N4TY4Z3jvpI2XAvAS3acUCeO3uQdDHwot4r?=
 =?us-ascii?Q?LlDsmk+fawro78g2tiQP1HxmQg9ZtFRywZoF5GQgZKRMikbgLHOZAgykYcPD?=
 =?us-ascii?Q?Dc8tiSJwls4UaTgVCZDBo8GEMgLEODaPuENniC5GTK1Jf2cwZfw921jVxXwo?=
 =?us-ascii?Q?Vk0++4poeZRVknotgfiP3hrU0fgopjioAaehkiyIZ8ee3rxMBIDXsZajcX4C?=
 =?us-ascii?Q?EsfTWwULKNk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aajPjgUmTx+C0O0U0czF7pmiZ0TRoynMiDOEbWXoTL78oPlm7XY6KaeoCetT?=
 =?us-ascii?Q?6w5ZMTm7SuOuPRR/jOB/jLlvaWLzV/ETfvqsW17UOh8Uv/3o0YwcGzE6RXhf?=
 =?us-ascii?Q?ageEv3yzn/Loop8XK7lc5gBJ046RdBHremeTN41sGq7D5XdbhMiqBf7b666d?=
 =?us-ascii?Q?BajnY3rhdmBdTCi2qScGjo/slhMH4OWKj7pdzWMbE0cHQ6+K5+K1FSrOcz3v?=
 =?us-ascii?Q?s1f4WzkYoCgh/Oc+IiDivDAfYLtqZEKt+L2tNhDL0EsxBhin4jSzi2bZpG2T?=
 =?us-ascii?Q?lp4/UTmdVpiOKZd3u6x7789AejK3grL+r/Dz42TvQGAigV5e1hIXh1XaatWU?=
 =?us-ascii?Q?xokZnfMMUMmj0RAbqMh6Fx/GXEzUSh5aDOwAK5v5zzgUVKXb06ywD9TSdg1V?=
 =?us-ascii?Q?JViLZ5LskQq3D3xOdHhv3EbpFxhG7TD0jGfR0dMoiyuEa23I7D0XlQNTUDSP?=
 =?us-ascii?Q?E/KbXcPGcDfVp3bIVtv/cxp8o8LRxO1dRta/6tEaMHT3Md74yedXsWVjQfoS?=
 =?us-ascii?Q?+Xi4QSDjmM+KPeJP0JnBvETuh+bZC+GxxtHxah+ODqfRRnC1MHwmWNpi4eQa?=
 =?us-ascii?Q?Eh+hQilXiOdc5B3tkHAaTFYdr2yVbntO3w8SfJtEV5GYVVMMNcdZFegRe+zK?=
 =?us-ascii?Q?2oCrd0RPUUF7L/KHSPg0E52P3MYAV2ll1aNpaE9qp0+R1gvytdKV8gXu0/8h?=
 =?us-ascii?Q?rSsM/WxeowoLdQpvqQWcNT347a9q4DBbkfxLk7QTv54Nm1FF4zn7Dzm/FGAs?=
 =?us-ascii?Q?baPhjUbOuCp+F5kTY7qzMcEefn81kx/jLyY3DvFMlQgOIAOj5gdF1+HJ9dNC?=
 =?us-ascii?Q?4xDUkWQXukT9n6DhkjysfU70r5LY0wtZG4yhDVcD7mm2e0XgsDmdjroc3ruP?=
 =?us-ascii?Q?IJ8vtVZ0iM8bi/U1Snmd/ukV4tbXnRyylCJw6m3ug7wcO1wneCaWiklmKi1K?=
 =?us-ascii?Q?kDbJYH7LVipQCxZzzw93YN6isGOUvovHyB15pu9GgbEA4m51vwz+ln76H89A?=
 =?us-ascii?Q?kTax/UVAWGJlPgOOYjdxacXtzmc+z3OK0Wp7F9J+nBL14UiP0AdZ1A3AtVi8?=
 =?us-ascii?Q?hDYrRsCUi6T67kVDhqWYiI1+0liqZYxzV/B+8xXYft2T5m2rt/zPrKU8HiE0?=
 =?us-ascii?Q?8pZeboyWnhQCNlGxGscy1g+jABSCTpnGmW/wY6tzah7bHUVyxf24Nc8pyqSp?=
 =?us-ascii?Q?qN69b9hPcAXIb+3HIKY/FXtq7YmsARWczR7UzirV+m5HFKlE8b4AiDrEDxoS?=
 =?us-ascii?Q?7guIoXP381xhHtJKSRxDNu+xnihMzURb/xV/Qwp8MtsseZAIqIdlfYZqI69x?=
 =?us-ascii?Q?vIL5WweV+r708td5K30pxfTCCYNgxJK+gvGAjfe+0DO4oTEpCMbs2gItavbE?=
 =?us-ascii?Q?6CA0lnhn/FGD8c0tSNEeWWWWuSENZkN9qegTNCmvRbMG/s6vDQt0GZ9PvmD/?=
 =?us-ascii?Q?0Sf2HeqEYSedQlez9xGZjKTmtPLovxtrP56nnfh/79hEQ9JCLLtqPPT4nX8S?=
 =?us-ascii?Q?QrpUy7fnsTVCVrp1X3N/grYyRjZhP4XyBRFUeo3upz29TaRFHXEE2A7SnaV+?=
 =?us-ascii?Q?UnFfXEMDvL/LgZiBS5ReX7AmOE+irbjWIG+CImq+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95adcc60-9203-4e5c-1ce1-08ddb4a0192a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 10:56:27.1936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qPbAHZlx5RTmeIFe2TL0zqOsIfOLDMHeupdIgYKg1Nqvo65U2Bd/jIOfhBM0gJRN6YOU4YWO9ARJeUDvKf+UIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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

On Thu, Jun 26, 2025 at 01:46:27PM +0300, Jani Nikula wrote:
> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Thu, Jun 26, 2025 at 01:23:12PM +0300, Jani Nikula wrote:
> >> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> > On Thu, Jun 26, 2025 at 12:12:11PM +0300, Jani Nikula wrote:
> >> >> On Thu, 26 Jun 2025, Imre Deak <imre.deak@intel.com> wrote:
> >> >> > From: Imre Deak <imre.deak@gmail.com>
> >> >> >
> >> >> > An AUX access failure during HPD IRQ handling should be handled by
> >> >> > falling back to a full connector detection, ensure that if the failure
> >> >> > happens while reading/acking a device service IRQ.
> >> >> >
> >> >> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> >> >> > ---
> >> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
> >> >> >  1 file changed, 15 insertions(+), 6 deletions(-)
> >> >> >
> >> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> >> > index 7793a72983abd..7eb208d2c321b 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> >> > @@ -5393,16 +5393,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
> >> >> >  	intel_encoder_link_check_queue_work(encoder, 0);
> >> >> >  }
> >> >> >  
> >> >> > -static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >> >> > +static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >> >> 
> >> >> I don't think "check" is very intuitive in function names. Check
> >> >> something, but then what? Is it like an assert or does it do something
> >> >> active or what?
> >> >> 
> >> >> What does a boolean return from a check function mean?
> >> >> 
> >> >> It's not obvious to the reader at all.
> >> >
> >> > I agree, but in this patch I didn't want to change the function name.
> >> 
> >> Arguably adding a return value changes the meaning already...
> >> 
> >> >
> >> >> 
> >> >> >  {
> >> >> >  	struct intel_display *display = to_intel_display(intel_dp);
> >> >> >  	u8 val;
> >> >> >  
> >> >> >  	if (drm_dp_dpcd_readb(&intel_dp->aux,
> >> >> > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
> >> >> > -		return;
> >> >> > +			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
> >> >> > +		return true;
> >> >> 
> >> >> Looks like true means the check failed... while usually true for boolean
> >> >> functions means success.
> >> >
> >> > The function returns true as before if a full connector detection is needed.
> >> 
> >> But it didn't return anything before! And that meaning is not conveyed
> >> to the reader in *any* reasonable way!
> >
> > This function is the counterpart of intel_dp_check_link_service_irq()
> > both functions having the same purpose, reading and handling HPD IRQs.
> > The latter one's return value is true if a reprobe is needed and this
> > patch doesn't change that, it keeps the two functions behave the same
> > way.
> >
> >> The absolute minimum is to add a comment (mind you, kernel-doc is
> >> overkill) stating what the return value means.
> >
> > The function name will change in a follow-up patch and I think that
> > doesn't require a comment on the return value.
> >
> >> >> 
> >> >> >  
> >> >> > -	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
> >> >> > +	if (!val)
> >> >> > +		return false;
> >> >> > +
> >> >> > +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
> >> >> > +		return true;
> >> >> >  
> >> >> >  	if (val & DP_AUTOMATED_TEST_REQUEST)
> >> >> >  		intel_dp_test_request(intel_dp);
> >> >> 
> >> >> Whoa, it's not a *check* function at all?! It actually *handles* the
> >> >> service irqs.
> >> >> 
> >> >> Can we rephrase the function name?
> >> >
> >> > I want to keep the function name in this patch. In the following patches
> >> > I will separate this part and rename it to
> >> > intel_dp_get_and_ack_device_service_irq(). 
> >> 
> >> Right, saw that now. But even for that function name the meaning of the
> >> return value is ambiguous.
> >
> > All the get/ack IRQ functions in intel_dp.c return true for success.
> 
> Argh. You just said it doesn't mean success/failure, it means if full
> connector detection is needed?!

intel_dp_check_device_service_irq(),
intel_dp_check_link_service_irq() -> return value indicates if a
connector detection is needed.

intel_dp_get_and_ack_device_service_irq(),
intel_dp_get_and_ack_link_service_irq() -> return value indicates if
getting/acking the IRQ succeeded,s imilarly to
intel_dp_get_sink_irq_esi(), intel_dp_ack_sink_irq_esi().

> BR,
> Jani
> 
> 
> >
> >> 
> >> BR,
> >> Jani.
> >> 
> >> >
> >> >
> >> >> int intel_dp_handle_device_service_irq() and int returns maybe?
> >> >> BR,
> >> >> Jani.
> >> >> 
> >> >> > @@ -5412,6 +5416,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
> >> >> >  
> >> >> >  	if (val & DP_SINK_SPECIFIC_IRQ)
> >> >> >  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
> >> >> > +
> >> >> > +	return false;
> >> >> >  }
> >> >> >  
> >> >> >  static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
> >> >> > @@ -5476,8 +5482,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
> >> >> >  		/* No need to proceed if we are going to do full detect */
> >> >> >  		return false;
> >> >> >  
> >> >> > -	intel_dp_check_device_service_irq(intel_dp);
> >> >> > -	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
> >> >> > +	if (intel_dp_check_device_service_irq(intel_dp))
> >> >> > +		reprobe_needed = true;
> >> >> > +
> >> >> > +	if (intel_dp_check_link_service_irq(intel_dp))
> >> >> > +		reprobe_needed = true;
> >> >> >  
> >> >> >  	/* Handle CEC interrupts, if any */
> >> >> >  	drm_dp_cec_irq(&intel_dp->aux);
> >> >> 
> >> >> -- 
> >> >> Jani Nikula, Intel
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
