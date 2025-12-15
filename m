Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A88ECBDD29
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 13:33:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539B810E2D7;
	Mon, 15 Dec 2025 12:33:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cocCaZ5e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA48110E2D7;
 Mon, 15 Dec 2025 12:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765802036; x=1797338036;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=kpKXqr+h04GScx5/4KL52ucRXF4d/yFybltQzmJKnso=;
 b=cocCaZ5eyZoINStyL3NHbmWnX75o5noJi8iIvR+sYBLjkzuhxQf6MsCu
 s8YB94KRgUYm+ApPpEdCwa35C/VnwH8Z0vQH20xto0pKp+kRVMl84x6ZQ
 1nzUFZtIFqI1OMHAJ/aeHy4t+hccXa4Qzw9oWEtRz1WO7RXSmQnwwWI8L
 DcdtPKYcEWZRNo/nXB7Cixu6O7pUASYY3rX4Dn35/4e4GOd+PZ7hx22yQ
 oRTh6OPxoy42oWLMWqaVX3ZKydlnFz6ISIl1V2u0yxFQxHRx3T+AHdq84
 TnxckaEhZyQEP2lDEvjLuXhc5ngtUQ4UKLTP4FS9cFlNrI3/TwtPEXyjY w==;
X-CSE-ConnectionGUID: wXStqIwaR/O8tNQE2r1b7Q==
X-CSE-MsgGUID: nRqLaHOnT8ap8spAQAS2Sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11642"; a="67770897"
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="67770897"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:33:55 -0800
X-CSE-ConnectionGUID: /Tq982OpRhm8gERXgWLXxA==
X-CSE-MsgGUID: jYIf4XVITD+z3qa9Tpf9Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,150,1763452800"; d="scan'208";a="202128000"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 04:33:55 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 04:33:54 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 04:33:54 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 04:33:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H4w7n50FdjHxJEMMAmFTxFPoKePZ8dNwQwJUOUQ2SQc8lu5tFaD0kcZ+VOOfzGvzrPpH9yws4dQJN1qGRWlfYubMc5qDjBL0DAe7wODUZ7JwiwO3glI6Be0MorXmdRzCuC7GMcYHKyBpcssRComGGL15D9zZW5Oct+e8QC1I4AuViTumo0zugNj6Mu/Yd+sX0j9/ky2DgAt3iJrYVL+uz2gUpZXUbS26/Qo/8x9oRklcx2Ai32Ujdjjl0U92cHwrxgXS8m4ElC30IBHoQt6BwjGTuLB04K1i9SGvZ2onU1/uqUMF5OYiAcKoJeoSTwY5o8BsQsWaGtIJw5soEJHJiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VP1vE+9x3lISshhwWAk9wcgI/vRo4IcuLYqTDzDwZoI=;
 b=qyk9M8cjRKt+thtGGvoCNPm9T+sGPRBoMo128xGJhS7XiZDZCutaW4BHbqRzWa/WoaqM6IUdhewl1slsYpqomjQUiXWDxGi+6pm7SLYAizRosH9kgTFNLHXy8lwbfAoSed3f9KIe/1Sl2Rj1nEsDvUhUSKwXjzyqAqUP8APRpQH0UBk7CFYhH12LAJUxeezOT2ZTpoLKrWZUrOI3qjX3Bro1enpKuZWUJOYaTpuygK7761YINnW7+FemDc27AeF6TeK0q26/BtAmq5LkHtS1ywJS3rExPCuU4dF88geni9jvhec1NqEBTFA8M0rp2ZDoA1aaxJ5bWCxGq4/0FoB12w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7417.namprd11.prod.outlook.com (2603:10b6:806:345::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 12:33:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 12:33:47 +0000
Date: Mon, 15 Dec 2025 14:33:43 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 14/50] drm/i915/dp: Factor out
 align_max_sink_dsc_input_bpp()
Message-ID: <aUAAJ-euFM1NoVfA@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-15-imre.deak@intel.com>
 <bd03d373949f5cb07e6b5d9314dd002fe7483be9.camel@coelho.fi>
 <aT_2t7DhxNmURqLc@ideak-desk>
 <a45bad5ec743491abe27dbe5ce3b6a13f610710e.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a45bad5ec743491abe27dbe5ce3b6a13f610710e.camel@coelho.fi>
X-ClientProxiedBy: LO2P265CA0076.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7417:EE_
X-MS-Office365-Filtering-Correlation-Id: cf5ba499-9008-42ef-00e0-08de3bd631af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?R1+XJ5pD74c9xCpdovkYjzbP8uAoECYQSgAEwYchzlq3Uio/lxbYSqNufyGQ?=
 =?us-ascii?Q?HnXmAhBEEk7rxLFeOMzND8s/9lGk14thAEg4PJR+JRucRyN1l2aOrPT5ay5G?=
 =?us-ascii?Q?zmHa9dciwDOk3mSdMCg1FLJDuvikP5zDtLxJCfxLZTjuC28SjS1jyh2NU9xC?=
 =?us-ascii?Q?7GzUa8w+8ux+810dmZkmFv/G7rvXrQ4WyxCsxJ7O3tYTnkBQb7qTLYJ/tsJC?=
 =?us-ascii?Q?KzPq2Thi2Yv2JnAMB1T7iWhJmwoQTZBNdzB5T0o3nNnbb5WmjnNdT6L8I8zX?=
 =?us-ascii?Q?9V/qHIE7RoZsb6X/do5QMpfw6jmDbgJbHemzqjORtZbUawazneEw8cLBc0ar?=
 =?us-ascii?Q?0bchZwwAeoX1ntJWPQSF5hyMgp+jJ48T85B3wRpCFQsU8EUbH+t0B1VWTlkE?=
 =?us-ascii?Q?B/JDj/S0aUNT4OQIeml/92OSUInf0RNM+eNMu7Bcl6WiZW44USKnO7egTXcc?=
 =?us-ascii?Q?ILfA7QaIverboJYcpSeuhB+EKHYJKKjHN1J4ffPANPi07dXveF5sNdmzm9Du?=
 =?us-ascii?Q?lQ+5QneKoAJnyjOhqdqjqP1UJx7QhaL6WIXqqOHXeW1BUmLAG6WV4MePr+lk?=
 =?us-ascii?Q?cUUtOPnOIuDYw4CSljqKwmNoHcFfl+u8ubxwyrJNNowhqRTbGXt55e4aT6H0?=
 =?us-ascii?Q?LIWVGTlHEtXFdplLc2oQRodyhnSZHOW6l2oJWuhoba7NeG19dq3WrWcns8wV?=
 =?us-ascii?Q?OwU4xdxpvaMCXUCR+BjoFw+NIhHClBgvIm4SRkOCLI7pPw606hY0f9s1xfiC?=
 =?us-ascii?Q?M/nht0Z3De+AcirdlgkZfVchHiDp7u7Cd+J2lsTLbrnzM9++lL41gQdZdn/d?=
 =?us-ascii?Q?xgqjWJdyONy3kV2dSwNZYB6/nLgHV7ewLhxjVQIzDkfX8g4h19IyAdLlp1+U?=
 =?us-ascii?Q?SPmRcdSGdc0D2fDTMfPimXVzu+GCi18PQxYiE8rlbf5X691NPGf7rYblFNke?=
 =?us-ascii?Q?Uz8nLcV2Cqr7WXK8gaE0djGaWh9PPdJOotrtgCdTGUxEKimVAZtCjzW8Bb9e?=
 =?us-ascii?Q?lm+lunX8SkEvplXVY7j3yTqg5nbKh6oD1tk6REiJVoHS0jjQbdU8lQiXWExd?=
 =?us-ascii?Q?1yP6TFfM7wTUQOBrEoVrgVsDWcr4/KQ3GrhLDSPtCgSDRJkMlZkGTwXc7COz?=
 =?us-ascii?Q?0UHyOUYXD73lDLcRpV11ZuOPuQj0iSnxLb+3/WrQg39eXmbxOZ9TqrZT/X/Z?=
 =?us-ascii?Q?dyNF/YVoSOxt9kf6zempn8KojJhswo7lxN/yMLGNFiqYQf6sJ9kdHce+6/c0?=
 =?us-ascii?Q?9NNDujMxCJxC9jSLMHFcHG50/lMAmb9V4mKjv1PVFv99YbxX5/8tCqYR7NCU?=
 =?us-ascii?Q?U5v22Un9VU9A35IAyXv39f2EAAk/eTrDzi6RrGepXGOa7Do2odbGVqUOGz8V?=
 =?us-ascii?Q?V/veL/ZhpSs9+OBz8XPxy8CCzo3oZi3WPn09/I4gZwO0nFOqzC+nUCvLZLQV?=
 =?us-ascii?Q?mzZL0xeb6dsrw9ByP76yJQftCFf4irdC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rct+t9xBsJ8J+1V+nSXFHGzvrlFCm9/5D081aJW/x2Zbl4CmbD2XcupLojD3?=
 =?us-ascii?Q?+K30yWlCK7T3E0h3I4R7SJvIMR+fpUr8oIYg8S2ygJnWDjEafr4LeCfuv/Ld?=
 =?us-ascii?Q?WNMILK7QyE3sOg0rFL8R/NXpeIGF54DQH9dow+ktFDmtE7c+M4FP0aFOXiSs?=
 =?us-ascii?Q?WlibpMZqXLqt/iv2TcGV4rrXNYiOQC3Rx2gKMd0V8sAr7RnYFhgIqYiHozmq?=
 =?us-ascii?Q?oR/kwrfavMCocP6F0KbEeVesCGVx13U+nq6mI2g7ty99z7gBdStuswRlboo/?=
 =?us-ascii?Q?lp3u1m2wp3loLI43y5QZIHlmwEW0PSRICyQtsklFe0A53p8/eQVdfNTCeV84?=
 =?us-ascii?Q?DMknMyKfmJtnkPwGpxevSsWulcEUaW9d7TgaoSUzeBsvLvwUi94hwVLgTgMx?=
 =?us-ascii?Q?cTM8c+kqwxgquY3avDDJkM5B8mHR2q5VyfdO+vCKIoGitWkF7sujKWZ/2zRW?=
 =?us-ascii?Q?i3ac5raGf7dst0BZXIJ+vCtzlkHrYYcNJNAuXisDcUK+nFq3T1n/VHP9rNPJ?=
 =?us-ascii?Q?BM9tdZs0to+gPE6wD9p5wQ1OHJn1SS3jBm8YEHp9ssF8932lbV1UgZ7WuxP4?=
 =?us-ascii?Q?pak3Xd6N8Tr0B48/mJo97hYWNZ3OjD5m2O6KR29HapR+V+6BtHl+wGXMA7Lz?=
 =?us-ascii?Q?SemFWy+7C9VfGhCivqYKXdiPUetGxgT8j+M0JCXGfX8brliTXOjKDCPz7U+F?=
 =?us-ascii?Q?8aeckXt5HUeVg8gGS7KBMXWjlkloAeTADdd0iV/G8AmWIiRbq1GJfSrUHkcm?=
 =?us-ascii?Q?YSqMXlD6LTfJEOCNsEBG6PZZ2VOx7VLWr8dTs8CqrvUCWDi5yc/MixHXPCpA?=
 =?us-ascii?Q?psaankT65qQ+LbzmtMJL+GQUJDLGggod33s/5ndZlxm1Be6iy9oL2oGYn0sn?=
 =?us-ascii?Q?y6bk6HeKgEh1PZNBErZNyNLG2LGU+yRzaN4sQH2uGYv6CRTrizgnW+9+Mv3/?=
 =?us-ascii?Q?/ZHX/gqaNCCMjGsxfXPX/AJpl5bCUF8Sue9NpN2YEEsNkM5ECo7tW71O6qcw?=
 =?us-ascii?Q?OIzbNVFfRYGewfI3gvX15oiAJ3M18iSygpwQBx76KXVkI+PgnJiuU23kuOxI?=
 =?us-ascii?Q?zVeaORUxRpEK1U9lL7CWxI/JP0Sz32Zf3tluJ/5X3Lz10dzgwi7ij+IqmFDP?=
 =?us-ascii?Q?tE1GJbpDcvz6Kn+AJQJH5OinUnkPQA0AvqKu/NA6Fa/q2B7ni0s1J4I6sEMW?=
 =?us-ascii?Q?YhI/lBfGAazZZs6hYdVBLH+k+hx4MF7JhclUKlKT/DA0CseZ7wEDnJB1k8tR?=
 =?us-ascii?Q?qWJOv7Fn7QLVYSHboLi8lP/jWcGrQVbVo5fj7MSr51BSSUD2OK4pb/22USgH?=
 =?us-ascii?Q?HEYT3YhQxyvVZ3EmF6M/ZDask3nDWb9MgXvljocdQoZmRwpbJtclDKVxLOj0?=
 =?us-ascii?Q?pKCTYrFfBUN1ZHLWIWXrahyJMrQyktdEYaGBR7yJqlqRRxM7OHsu+GrrZMCh?=
 =?us-ascii?Q?eM305M/tihCasYCrp2eCxPmuK0I6xPzkr7d9T50flvrDip2WHt8IcJONsXye?=
 =?us-ascii?Q?FDxuehUSQvBntttA2KAfNeNvsjw8EYu7nrmzx6Gidqg+efx927Nxrhq92Bog?=
 =?us-ascii?Q?+eqG8RJpg+QkZ5zqPoSF1gPIMVuJ8SYz7jv3CVZZ9cTjVJMTJ4cW6N9AqOkk?=
 =?us-ascii?Q?pBP5oXA4kN1JBrvES0C6V0vcjGbjf3QAfqmQHp3LIXyn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cf5ba499-9008-42ef-00e0-08de3bd631af
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 12:33:47.6965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hDVZCEzH8SHQqlNsmw2ow/Eanh9hP4hQZqeeG7SX/1wQvfHU/lysKnZrlxm/Ha/DI+0lOY7wOgrNVqIjNFivwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7417
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

On Mon, Dec 15, 2025 at 02:02:07PM +0200, Luca Coelho wrote:
> On Mon, 2025-12-15 at 13:53 +0200, Imre Deak wrote:
> > On Mon, Dec 15, 2025 at 09:46:24AM +0200, Luca Coelho wrote:
> > > On Thu, 2025-11-27 at 19:49 +0200, Imre Deak wrote:
> > > > Factor out align_max_sink_dsc_input_bpp(), also used later for computing
> > > > the maximum DSC input BPP limit.
> > > > 
> > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp.c | 28 ++++++++++++++++---------
> > > >  1 file changed, 18 insertions(+), 10 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 000fccc39a292..dcb9bc11e677b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -1893,12 +1893,27 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
> > > >  	return intel_dp_dsc_min_src_input_bpc();
> > > >  }
> > > >  
> > > > +static int align_max_sink_dsc_input_bpp(const struct intel_connector *connector,
> > > > +					int max_pipe_bpp)
> > > > +{
> > > > +	u8 dsc_bpc[3];
> > > 
> > > I think it's safer to use the '= {}' we had before, because that zeroes
> > > the array, so in case of any stack leaks, you won't leak aleatory parts
> > > of the memory.  In this case it's only 3 bytes, so hardly anything
> > > important could leak, but anyway.
> > 
> > As for any other variable I don't see any reason for initializing it, if
> > it will be initialized before its first use. It will be initialized
> > before its first use by drm_dp_dsc_sink_supported_input_bpcs().
> 
> Fair enough.  Security here is probably not so important, and as I
> said, it's only 3 bytes, but in wifi we once had the activity of pre-
> initializing all arrays like this for security reasons.  Your call.

I don't see how it is more secure. I think any valid reason to zero out
variables on the stack for security reasons would need to be a guideline
explained and mandated in the whole kernel ubiquitously and should not
be considered as an opt-in practice. I'm not aware of such a guideline.

> > > Also, since this is 3 bytes long, it's theoretically better to have it
> > > at the end of the stack declarations.
> > 
> > The compiler is free to reorder the allocation order on the stack and
> > is expected to that for optimal alignment.
> 
> Of course the compiler will do this sort of things, but it's just
> better practice IMHO to keeps organized in some way.  If you had said
> that it was in alphabetical order (it isn't), then it would probably
> satisfy my OCD. lol

The ordering rule I follow is the readability of declarations, which is
better if it's in decreasing line length order.

> In any case, these were just nitpicks, so it's up to you.
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
> 
> 
> 
> > > > +	int num_bpc;
> > > > +	int i;
> > > > +
> > > > +	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
> > > > +						       dsc_bpc);
> > > > +	for (i = 0; i < num_bpc; i++) {
> > > > +		if (dsc_bpc[i] * 3 <= max_pipe_bpp)
> > > > +			return dsc_bpc[i] * 3;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > >  int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> > > >  				 u8 max_req_bpc)
> > > >  {
> > > >  	struct intel_display *display = to_intel_display(connector);
> > > > -	int i, num_bpc;
> > > > -	u8 dsc_bpc[3] = {};
> > > >  	int dsc_max_bpc;
> > > >  
> > > >  	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
> > > > @@ -1908,14 +1923,7 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
> > > >  
> > > >  	dsc_max_bpc = min(dsc_max_bpc, max_req_bpc);
> > > >  
> > > > -	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
> > > > -						       dsc_bpc);
> > > > -	for (i = 0; i < num_bpc; i++) {
> > > > -		if (dsc_max_bpc >= dsc_bpc[i])
> > > > -			return dsc_bpc[i] * 3;
> > > > -	}
> > > > -
> > > > -	return 0;
> > > > +	return align_max_sink_dsc_input_bpp(connector, dsc_max_bpc * 3);
> > > >  }
> > > >  
> > > >  static int intel_dp_source_dsc_version_minor(struct intel_display *display)
