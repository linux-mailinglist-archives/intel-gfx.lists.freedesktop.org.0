Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7C0AAC93C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 17:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9C110E089;
	Tue,  6 May 2025 15:17:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F0VQEfTj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0DB10E032;
 Tue,  6 May 2025 15:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746544661; x=1778080661;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=LhjoUCBDpHRtx5hJwYAaxJ59/OcncISFN1PTKMf/l4A=;
 b=F0VQEfTjcBVkSODX5xRCcWDLMjmnZawZJJjTx2lj1x3m+WMSEk7CeBsY
 l3j7JYrog2KTAXi7NUBcGWR4b8LRmoL/Q57rZ3C0L3+6E/6Dc38HIAw7q
 +yeQitKYvzenk25jz/8DIVXAvyCVwctWI/oj1TLbhJBgFMxOhLCY/yJjo
 4+pBdtonhb65i+lXRO3Ege6AAAhkN9lM+5DqM/4M0c6I6OorkYQ0ia6WR
 3aOb6QAb3A4mDlPCPB7nTLkPfqQfydqyfuOEvidnXVmFStqlx62lPyMy8
 QyIBi/Ho/EVwZtmxWOekfszuWLByrYW3rjpkklEbrHR7kwwiJW8gqJ4Xs A==;
X-CSE-ConnectionGUID: oVYB9p0DQ+KSRT5p5Dx9Cg==
X-CSE-MsgGUID: qKSxsVAXQ0aoJS/Umc+aaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="59615741"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59615741"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 08:17:08 -0700
X-CSE-ConnectionGUID: zhBtvjAbQ2SEZp44YoKEVw==
X-CSE-MsgGUID: AeU6RvrJTuKCZLUYhj96dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135651028"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 08:17:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 08:17:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 08:17:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 08:16:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KDaLJNgVpAPZCq9VB9+XbnnyWUNyWqknQjdwfSg/B1xdbGZDeLvWikKN72aph8SO8H6/z4e/STXaDm/BGFTVgbMTIikV/XX+Gbx5ubjt4fgGSs9yc937K6Hd0zWkCC1E9MRilIvH/LyVStCBtGROYWsNuqaaiNGOVPf/zrL2qjVFaTttPBpJ0lMvBABgE4Z5JJYd5PJPRacERaIKUo4U2IocItD0oI9qrH5TxvDBKOt6Yn0ps4qtEurAx8qFRuBSUnJp3IiVJWLbcdeu/9PfiyRU4eGPJJ2l7QuablXByNCytWUippkctAd1fX3rWtFsmUr5+Mju9gxHgj40yFiC9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9r8TJwa+l1TvIKnIVPMKvg3MPHtZTjhFPkDc+4dJyvQ=;
 b=iPrXHYwqJat5EzbObD+HAAwozSKWIgFOpT9/Tln5qt8AIxWLsSS41YonsCLm0KO0phV+hny5PlD5d78t7eOWP9Ue0kBTfi+4vapLpe3MNNDZIiqWhOW9XUVKAnNUT2IsJGvmy1+Xxzo4lcWOitftFIKhUgKCJ9IOHip/EXbKwTrx56uvnDSC25+nuxyhW4Ww025Pg+nR0KpJ4++Tdg7UUnKTpeh8cmG/DlfSyB7dNk/UDlc0Stnr5QJHxJF7ut7q9u+qOR3K3p7OdgksxDS4CEf/4TZyPod35KwK8Z+jOYGnfAHctPG4isZWemSIThqEuE4apcumIp0VzR5uHvTthw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB6730.namprd11.prod.outlook.com (2603:10b6:510:1c6::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 15:16:52 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 15:16:52 +0000
Date: Tue, 6 May 2025 18:16:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 09/12] drm/i915/display: Factor out
 intel_display_{min, max}_pipe_bpp()
Message-ID: <aBon62ld9JyoRuY1@ideak-desk.fi.intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-10-imre.deak@intel.com>
 <abe21867-4735-4e73-a16a-bee34658cae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <abe21867-4735-4e73-a16a-bee34658cae7@intel.com>
X-ClientProxiedBy: DB3PR06CA0009.eurprd06.prod.outlook.com (2603:10a6:8:1::22)
 To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB6730:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a678a39-d8b0-4fc6-589f-08dd8cb10759
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8Eo82o4UYNfs4MKPkvzirrPEXk26INE7vXcPWx5bUYx+OuzSxodFbl2qzUkz?=
 =?us-ascii?Q?75xTCDmkHN2s0qN2AIRc2ppn/oic8sNUFl+qgCGwC5JIpXoWyG9jLCBGkc3M?=
 =?us-ascii?Q?G8LwpvXQxyVRoRhD7SrilQGr0fDYrU9aHVERo+TB2EooIUshyiwfPvHzGNx4?=
 =?us-ascii?Q?4y0g2yfe50oqUZpmJ3J3yhd4Uq3e7tdpPVt+vG1CxAR3BBiCTLwlZYs5w1AY?=
 =?us-ascii?Q?/LDs8YzSnAnPg90BvoroiJD7T9MK55ROXT+/ZtlCH9HNKSUpVaGmYeDPLACU?=
 =?us-ascii?Q?vaJRahUNE0h0/hr8eL6qfkBJYoDmH5Mo9UeHtow/Vm3C8SeveXf6WjXdx5Y/?=
 =?us-ascii?Q?mTTiU0xle+lGnWyLVA5Q0u/UY8Anx1JMbrME0iLiAsMsb5+c4H2UFc468E3u?=
 =?us-ascii?Q?0xu/QzTuEDZixMN9i67qNxZSTK7RrUJztiiggVoLmfz+kuSkj+g3PbOyiPOA?=
 =?us-ascii?Q?N4DIw+zjmk/5ANuKqXtSYg7wsWVo1vUwjTljCHOhSS1xH+GFg8K5fC/hNcoD?=
 =?us-ascii?Q?dhydqC7yAlPdnd8O7auxjG6p1EGQMQ/saCf31XILg39CDFoZ5BCyGEQO38dC?=
 =?us-ascii?Q?gS7fJm1As5J/svNNDp4nluHavLI+xFJDAOVqCgGWfWoAnIosXoKlf3/YTN1S?=
 =?us-ascii?Q?cJW4RE+D2LYdbSYNnvTf2WsLRqrensPCOIQnX1I7eacvA17/nBP2cXFrPrrN?=
 =?us-ascii?Q?5gb5/VJM4aPHNhPWXJPhDCKLR1OgHihKozQerezpi/M0Sx/SwAGeiujl58Ou?=
 =?us-ascii?Q?K8y1O+LEOL/NGe0mb70or7izsu1F4wraYmmPlB9HE5YlF3hOVJlj+A3RKyWK?=
 =?us-ascii?Q?I5Du6ZCJZcCbQk0skMulQ+X6qg9acRcuhzWXcObOF8mjWxlzyO/bYwKwU3EI?=
 =?us-ascii?Q?f1hTKovQds4QfyPwyE6gluVkD6dcORmfgkHVqcjhzupZGi3NFhM09JuKDnrG?=
 =?us-ascii?Q?b2b0Nwd+OvQ1DJI8qgmC2S6m1XTaAO7wk04A13OiLhQt7R3rJJiwk9VwWdTF?=
 =?us-ascii?Q?L55KjEY/nfM0bCOju9bhkUxOqJrBb/2qThnE3vbxGkRYATWf7JnWpTsBW++i?=
 =?us-ascii?Q?GtDJ4y6BgKdsu7i38F3Mv6NUzd1n9Ct2Hu5qiA6pgAzdJlxD42G/7T3SLvCa?=
 =?us-ascii?Q?KajYj3GeXLZvJDWx17kysa2UNQP3/ZateFZhEr/yMvTi6ukMo5oZeDxAxpW8?=
 =?us-ascii?Q?jR4f//f6FsQS8ztTKyfEe2DM5ZbI+1AOuI+Wa6ZOtiVkPi7ZfwmWrBmIfd09?=
 =?us-ascii?Q?SSdWBgGI50qKTqSat+m4ivaBgS8tx0Ss4MBfST2t85eK/deS6Z57fj/L47bM?=
 =?us-ascii?Q?s9iTqt1B8y9/olXgje7hISkBumgFW33AhGHT7/56ztpkkkzZGkLw92981nyi?=
 =?us-ascii?Q?4ctxH1u9v734Tqgx0yNhvTQZgVoEe9h5dClvA2Ke4lvnyND/TQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C7TbPu0zZpNdEYdDUPiQdmBOdkxrxMM7f9M80n+HzdDxLTttGiJfLLQ4sSFp?=
 =?us-ascii?Q?c6ebCVXTrtBCVhjJOZ4aomn29VBE+ZxLfQ98qDk4jA3uuf0sa9vX11ysXxhf?=
 =?us-ascii?Q?m7E84dIPsWJydoUWwWDJhV+vhdri1Cu7AQ23DsYfIyOoK1w3L9fXmJrwEGEl?=
 =?us-ascii?Q?ePnu8x7e47+63ehOWfTKaZsHU39t1BHcQYnTu2H03Yl15LzioxBnZpzJ9vpZ?=
 =?us-ascii?Q?qkWXjU39CEGJpfpQsT4sglCuSQsaLA+Wld/mSYrau7RykJp0t2KKS6TJDeCl?=
 =?us-ascii?Q?O3EkQeLyeWYAfrTcRMpyH7Z1MNM8JCBmQnIVhezLT+DZ3zigdwJU6gZ2N3eC?=
 =?us-ascii?Q?U36kLD5/nJbHaNM3t0ZC0VKiqCM1yC+tu1+ZUQU6yVQLImGesUL7506gRYVk?=
 =?us-ascii?Q?UxP4ubnbHvlE3zAVHFB44BMLIE4X+JoVKc3Ln1wrML0RsoWD7AEsyv8ZmlYR?=
 =?us-ascii?Q?Q/grkvF64FYZwDiCYW5fVHRFXjwzB7ZalMPk2ep7mXvJIFcAZpYGfpYxOOs4?=
 =?us-ascii?Q?Wo3X4tqRdOb72tjZD+UnoiwoElTDXbAvNn1dpHaNKFhWgirK60nBhqm2BqTq?=
 =?us-ascii?Q?JTIZavSuXkDbb5SALuWh5I5B5xjvfWiDz+jEDLyXRPEGyUaopjX/XsKdJ56v?=
 =?us-ascii?Q?UYCcx9HM4FhcNvfYJHTaT/q0LrYbqzFwMsvDCLT9Sq1Nvqb5PUalkmJlLkJ3?=
 =?us-ascii?Q?mYn9NZAZbRTgJk+v7RARL2ifKkDZgRxstzoyZNFhKL/KQUXJdKR7XUlFj2JO?=
 =?us-ascii?Q?dwtmMwMqzyctV6nOLKxlQTfokjgdhXI6SwZJOtOLeaR9IWATb4cj/FP+Yf+X?=
 =?us-ascii?Q?IhSyvs5Jq27i7HFBHNV+syhNh2wRsQut78b3CBJvKOUfMUokwiPQ7kB8JGrI?=
 =?us-ascii?Q?YgDcJSiXJVnyDCYtEoJiomS97mYtNaKPl9BhGAO72w2bJPR/e/t59VerOl5A?=
 =?us-ascii?Q?Z9DJl9+Y4Uys5zPyLQHGyvQ9BO25eVbX6T30xwC6qvGTK0wQ/D6c4azjd2a6?=
 =?us-ascii?Q?ceOsh/d9FtEbZnENmtA4ukGPPLaAoIx6EgkkXnvoQrXzHJUCQYXpQjCHCZ/s?=
 =?us-ascii?Q?S0OtEyrfGYUUT0ZJk+cEv7bVCaArcUhN3ulkdudID0lg8VZtC25YBJQF+kMC?=
 =?us-ascii?Q?dZGrNLuJh/R6D2mnZL6+09GHmVNUXfAGgra+nIXM+xFvQHRDGRPrij1pwOV3?=
 =?us-ascii?Q?4uAfyFO3tIaEmPSrvJLSwld1FeS4aUB+us1oOygHCWcidEiu/dZG9Toryda2?=
 =?us-ascii?Q?xk42EL1JefOSc77huG+yuuZvENJdUq8/7AgAo9gb5+zsFuMzxUF0XgY1B+gP?=
 =?us-ascii?Q?28tptGLE+BcJgWtUH6B8VMPEpfI5qL27ncOX1DOadQSeB0FCbxOluVHjCVTq?=
 =?us-ascii?Q?9hNarisrJF94SSQjE6AGL6yVqfpvDPHL1QJDGQ3soKTk9SI4e5p5t281/v0z?=
 =?us-ascii?Q?wZTfbtRKvuvYL1QiNrOkeSLzk+mdkL3hERDbrj9iPOEmyWGm+QEsyrwDy1uS?=
 =?us-ascii?Q?rUNpVCn9l4x1C2oF6iQreTQmwAQeQ9HdkX1jeAfkgSECeB7KVU7qjsWFmsLd?=
 =?us-ascii?Q?Iqg1ZHKcxKmDxzarrd5hPtCc5sX5D7TxyUdAa4+o?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a678a39-d8b0-4fc6-589f-08dd8cb10759
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 15:16:51.8889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oy8NZvziwv9ApXrN5sezokzGrVAMxeZBBv59Le+JRo/RIS5s+M07Xc6J8ZpgKuXuzsqVKX6bLmsXgr7vXu34FA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6730
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

On Tue, May 06, 2025 at 06:37:50PM +0530, Nautiyal, Ankit K wrote:
> 
> On 4/28/2025 7:01 PM, Imre Deak wrote:
> > Factor out helpers that can be used in a follow-up change to query the
> > minimum and maximum pipe bpp supported by the HW.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
> >   drivers/gpu/drm/i915/display/intel_display.h |  3 +++
> >   drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
> >   3 files changed, 22 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index b4ddffe53e23f..cf2c11826ffb3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4301,6 +4301,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
> >   	return 0;
> >   }
> > +int intel_display_min_pipe_bpp(void)
> > +{
> > +	return 6 * 3;
> 
> Hmm.. I think this is DP specific, for HDMI min is 8 * 3 = 24 bpp.
> 
> I see this is function is used while checking for min bpp while adding
> support for forcing a bpp for different connectors.
> 
> Would it make sense to make this connector specific?

I wonder if it could be kept simple for now and use the platform's min
bpp value in the above debugfs entry. IIUC the
platform/connector/output_type specific min pipe bpps are:

DP/RGB:      18
DP/YCBCR:    24
LVDS:        18
DSI/DDI:     24
DSI/non-DDI: 18
All other:   24

It would make sense to add a helper and use it everywhere, but it would
be a bigger change. Are you ok to do this as a follow up?

> Regards,
> 
> Ankit
> 
> 
> > +}
> > +
> > +int intel_display_max_pipe_bpp(struct intel_display *display)
> > +{
> > +	if (display->platform.g4x || display->platform.valleyview ||
> > +	    display->platform.cherryview)
> > +		return 10*3;
> > +	else if (DISPLAY_VER(display) >= 5)
> > +		return 12*3;
> > +	else
> > +		return 8*3;
> > +}
> > +
> >   static int
> >   compute_baseline_pipe_bpp(struct intel_atomic_state *state,
> >   			  struct intel_crtc *crtc)
> > @@ -4310,17 +4326,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
> >   		intel_atomic_get_new_crtc_state(state, crtc);
> >   	struct drm_connector *connector;
> >   	struct drm_connector_state *connector_state;
> > -	int bpp, i;
> > +	int i;
> > -	if (display->platform.g4x || display->platform.valleyview ||
> > -	    display->platform.cherryview)
> > -		bpp = 10*3;
> > -	else if (DISPLAY_VER(display) >= 5)
> > -		bpp = 12*3;
> > -	else
> > -		bpp = 8*3;
> > -
> > -	crtc_state->pipe_bpp = bpp;
> > +	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
> >   	/* Clamp display bpp to connector max bpp */
> >   	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > index 3b54a62c290af..b6610e9175a7a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
> >   bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
> >   			      struct intel_crtc *crtc);
> > +int intel_display_min_pipe_bpp(void);
> > +int intel_display_max_pipe_bpp(struct intel_display *display);
> > +
> >   /* modesetting */
> >   int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
> >   				      const char *reason, u8 pipe_mask);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 0f89a301e4a0d..73ca9f8efefc5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1198,7 +1198,7 @@ intel_dp_output_format(struct intel_connector *connector,
> >   int intel_dp_min_bpp(enum intel_output_format output_format)
> >   {
> >   	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
> > -		return 6 * 3;
> > +		return intel_display_min_pipe_bpp();
> >   	else
> >   		return 8 * 3;
> >   }
