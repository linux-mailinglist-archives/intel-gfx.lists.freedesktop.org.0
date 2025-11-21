Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFC5C7A906
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 16:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898C210E176;
	Fri, 21 Nov 2025 15:30:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cRweuQI4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD6AD10E161;
 Fri, 21 Nov 2025 15:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763739011; x=1795275011;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=mLSVl72J9msijUafzHUnOH0MhlTWwi17PNtw/Gc06Ro=;
 b=cRweuQI4bwlut79c43QiKoZuI88tpFUiJRZ24gSDeMycnwHmHOTGpOW1
 MEcfi+Igtm74dWuSmZcjs/3rfsWOcHHZj/Qf23C3A+3HVXgTBJzwCsAXV
 Ld7zMOGsKnA+QChix5Ai18HAWaazEvnTJHx3/pwQbZkYu/bddhuGERNMV
 CM03leYswQio5XufkqyEVbxZBJSgesRchlmfbVx7sQl5Far9SERqlqwXa
 BxgXWhjkMyvtVlAKFSNDznO5CnK4F2d70ZSNj1FLYaYCylVEfd/+6a9uA
 aGxpDuw2iy5Ps2Zt1xuY56xiii0U8nQ0LGGIAC9En2to3vae888gFxZ0d w==;
X-CSE-ConnectionGUID: quCMGEduTBqPhnul2B6EAQ==
X-CSE-MsgGUID: 0fMxmCQQSSSKQdr/WPpx9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="65771512"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="65771512"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 07:30:11 -0800
X-CSE-ConnectionGUID: 73qKUyl7Q6S7qELoV2wvgQ==
X-CSE-MsgGUID: Hg2GE5nlTya0zKIrbV9Eng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="215084234"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 07:30:10 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 07:30:09 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 07:30:09 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.0) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 07:30:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p8MdMHtj+seHms2xpJaxyRroftHZsc4KU91UZ+VU7OmDy2E4/5nCVkhDhk6FZqvbRucKDnktdYS4aclh8oHhvOYvtyFdA6KXb4iDFaZub4P72SXmZUjSdZqATV+CXnSkryuBG0l6OnR+KssFTB/wuzV8gPtI6852opKT7zLca6/SWSQBnPrRE5jaGLPtUoQYBYda+E47YNm83/7PmsYb2zJ5ZT4SDbnc+o3RJtKxXB6bDfCeMZ2iL+ARQd+lOKeKadPiJnUcYdcdaGz8cLGvFof8Y/Fu/5jTUbI1Rl9Xe0481+mrmweJXRGs4A1ImAi+pyTyEMS8e/+K0PmUL7R8Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1NiUYpkoqnKrbXN/k4ucy5zMdu3hIAbP3WRDgVMgPA=;
 b=njpd9BGZ+kBTAzZCTp9i7dVhbRXH2Qpr7lJcJqNxhyF8yG84FX8YK4nCNYi5B8eTQy1jEx7PyKa2icQ+z6j8c/CLXombF1iNxVi51mVk0VYyf0821R+wLtS4wMjFNr/bzjy/PlSBiz2xa3+WCA46OVXABn7AyTgK9QmTF8h9hDb65xpjO3FL9Gz9ratclYQzqrG33KH0UQPK5tH5/5nKUUFlwqyQYUEaWKgZMt0bfHmgcEE2dDaouPzzk/vWvayspS793d6bidIFDH5oX3xqi7rIkEdMt3yRUcCkTLe5dK9xPdGE/l8b1S3ajEAeXvOfYShW7dQtsLlAbkdyG3jqkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5080.namprd11.prod.outlook.com (2603:10b6:510:3f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.12; Fri, 21 Nov
 2025 15:30:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 15:30:07 +0000
Date: Fri, 21 Nov 2025 17:30:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH 3/5] drm/i915/cx0: Use intel_port_to_tc() instead of open
 coding it
Message-ID: <aSCFeuwSdSQSCMKo@ideak-desk>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-3-imre.deak@intel.com>
 <beaa8835608335700c0a1026e0406e715887b799@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <beaa8835608335700c0a1026e0406e715887b799@intel.com>
X-ClientProxiedBy: LO4P265CA0024.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5080:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c36781d-764c-4487-cb54-08de2912d992
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?q1jY35Lhc8tlC5KxpjqS3CnA2PF54PuRkJ5UlfgqqVp2QkbJm9g9Z1+2JTtw?=
 =?us-ascii?Q?BHrrxz3bWlnhkRo776p2/lPKG2LhcsPnJ07C+PoPKdNWYa3WuH5xbk8kPPMB?=
 =?us-ascii?Q?5AZ2/vt9ds3QoM6saFuP/5vpEpEgpj+MvKPYqzbB4Bsm1lGOGo+p5L3R3/oM?=
 =?us-ascii?Q?N39dlMyb6LBv21i5k3zl1xoj8zg4cqGiG5QuFCgDZyPEG3PkZhJSDoEmC7ij?=
 =?us-ascii?Q?NjdXYnolGySXt3DKXCJAjqNyUUAy1c/kKBjRJ++/f04K2vHL4qbbV+kSxW2x?=
 =?us-ascii?Q?mb9k44BVVcpstyr7K31snu/L+3vmGssfFQr6y7A7u3A/jPiO/AskTRpD7wrW?=
 =?us-ascii?Q?g6wZpu99nPsqpmDIha8e2Ht0EREeYNWb5vSrYsTbXw/DO7llxn3f4Td3D610?=
 =?us-ascii?Q?Hz/7Fl4QJFNZC/F28wjLF7c3wvgVduA0HciZlrhK+apvSq1KS32tK30Vkwei?=
 =?us-ascii?Q?RomlIxc7DqS32IJ1J+8k9uUCX+0YsQ9l6yercfn0Q8UPvJKjDOIPwlvTpZM7?=
 =?us-ascii?Q?1FPZBT8yBr2sYRLFW0YSs+Az885hizSKfObByGZDTQMVmS2MDjgj0W8wTkOj?=
 =?us-ascii?Q?srlsp+G27B4qfw2/Aoqk5AnoT1cTYNnZBnNIi/PDhRd4Pj+U9H6kXiSlhV/u?=
 =?us-ascii?Q?GYIfurVoZOvJX6vGQiRBdXanfXX7yWDWqRhkf0+Ato+ZgFxGzz7s+tv1AYdn?=
 =?us-ascii?Q?3ZrIPniYRrbbW06vwbAbftJl4TKHQSHgaMBGg6JRWr+EWuwAqsbR3Qw9XnHP?=
 =?us-ascii?Q?94zVSf+1exU2+nZ0K+CiRsvyWRqOraH+cIjn+X4gtOadtoKw9+cSiCyoctD4?=
 =?us-ascii?Q?HeNI+FFgpvvKrUZhtNzLWHU8ADbaQJQjh2gTj2VBFonpZJL50NnyegNABDi8?=
 =?us-ascii?Q?t98ifaLHI9NU8fTqYIyzUW4+Pwu6VtoWL73S0r7ebPFHUQsyXXYPNPJ6vFW6?=
 =?us-ascii?Q?QVjEhOsH9JpAK0KjyZw8v6YEvM2t7jUsE+ZPCrUoHEFvqdK1Q6MuzT11F7tn?=
 =?us-ascii?Q?GfbdCz2bBcTUeoRIiZ0+LLmhW8QXtiYx5RMrbfpCp2Z5euEtXe3pKeMB1c0h?=
 =?us-ascii?Q?mjWD/Gmp4Yum4fwZ6tgEnVRpXHalv9sHBFR0N9sLMYXnj2siIuQ6X72vHyqR?=
 =?us-ascii?Q?NLBKFWFK49SwY7NO18qkvBsZxYlSNWOThtSg5EsPNbfGgidOFkCR/2UtvoQS?=
 =?us-ascii?Q?Vm+otoW/AJU9u3iYb1XozDsRSj3UqDBTDwR+vvkEIWcmKqK9hOZ0UzIXtLDT?=
 =?us-ascii?Q?4kmj4kNzKPALeDaD84vgWP7EVHYzn0zGGyva5BktLlaZ4o1u5JBeIAmQ2jx7?=
 =?us-ascii?Q?pVc2uwW+Z5ymDiyCv/TdH2CrKNmNqJAJZ6t5oTjtVlc8eCwsnTbWgAZyv4nw?=
 =?us-ascii?Q?WmPwPx6YZL9iY10+8hA8kjVOgJNPJQuYf8IaG4/G7erLveNazk+Ey8nW5OVk?=
 =?us-ascii?Q?0rzgKuwH70yM7n5McXh4vSx2m523Kom1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2rky24D0ZPVU3/ELi6xvdlYOkD0Zvk71tZ6tl7AGLkGqSgMk4OquPVprghmC?=
 =?us-ascii?Q?RbxrFUAdZ9rykFRU5tuv9n7HbXfadbKMH7WKv37/tIOT2s1gJ7+YpMrEgF2P?=
 =?us-ascii?Q?vSbPDB60ZDrcyPbCnvssM/nvv1OSF4WIL6VEOP2QZk3DpETctGwDy6Re8OrS?=
 =?us-ascii?Q?74Tgfk62UqM11DinzfDrnt+20LEXn5YWAebGO/T5N9HKP4HpKz9przJAfjsa?=
 =?us-ascii?Q?YYymiWbtPWligy1ycu1wdj5MM4+DTXBzrcr5Fm3k3kkoBV1SoxRz6C3h0h+X?=
 =?us-ascii?Q?b4SdiI+MccmAhyIK4/b3t9R+h2A9SWBbuPaYusOuC2bjGPj5iEX8sj2LBTwS?=
 =?us-ascii?Q?p71vb8cu23iopaYFxr9gO5OIWi3aSLqDhxbdlkrnZRemJQfCs5/dQvl78lGN?=
 =?us-ascii?Q?3wr3W21U49icyyWt84JwD8zGavF/n+6uNRhDRjRUYp95YagjamS0ij3XBDli?=
 =?us-ascii?Q?TpycbX/PDbplzQ3g6KnqVGAgRQUX1Zyw49V18Od4eJJLenTnSIbgfIE1mOQs?=
 =?us-ascii?Q?MnDYOcr50fvUb6jBP95JAYtStYLfZL1fAAZBkh+rNSPI6X1zGcjME7E2BOu8?=
 =?us-ascii?Q?cwO7mZtEXhLy1PZ65tGvjjLs5Q4Ub/NO5cDoRecziy8XzpH5hNtRa8Hw5QBj?=
 =?us-ascii?Q?0pPC0LFAhztud4LQ6nVd8Q5Rlx+PCQWf0S9VdjStvNKNSrc6PD8jzmcbs++b?=
 =?us-ascii?Q?ET4Ofq5pmCXh/a122ocdpx0Y/leGig8QAPtkqjVjSfcBfhXMm0eoQjD+XYUa?=
 =?us-ascii?Q?sBjuSHIcDy1MNyWk0A5waHUCszNI1s2OaGczp+2k7TWomSMI8r9JJZxMVDSl?=
 =?us-ascii?Q?KLr6GK+rAlA+ccMFlMOme6Y0t+aEAtaqnQH00nET2jmVMUQ0s4m2dOg4BtlS?=
 =?us-ascii?Q?lcRIjXhhNsDw/Htfb5CcIN7VmlvT6yErQn0nuUyAiI0oLniqgOCXUcqDGDBq?=
 =?us-ascii?Q?rF0Oocw3XN//us9YpnMvlSBnVkhkbVVkf9zSVSYSFKEna/kFjQXPWDgOEkZ9?=
 =?us-ascii?Q?4GUh7uGHlNray9i67Pg8Dj6zO9edLXKTyTmqQGiCg+C8VvSbZ2Xpwa6yGT4T?=
 =?us-ascii?Q?BQYl44MmlHrF0XG1RAIRnKQIHkdxMm4h8w51aHW8VE6/sxYuJSunEjrcS/Go?=
 =?us-ascii?Q?yueesoGBcK1+0s7844SlmgFkGEeoR5K3FUkhEYjdu66Te74jdtuVEEoCdxe/?=
 =?us-ascii?Q?G3of6qCqryoDkbBmKV9/zNOohNRkZxBhS0Lpbh7wH5ex9po83K+aad+ohyPk?=
 =?us-ascii?Q?sWxP9jFdWSDHOVRIXUeYoZpbhTxZOB2t6Dkidiyq3vIONHWLa9x/oJy8kpvo?=
 =?us-ascii?Q?4qWryStM2/tf3Vbt6ZSjhQNT8hKZUDMuQlTsx5UmMN/0J8om4fpmWth+878X?=
 =?us-ascii?Q?7Eb53mIu4BD+uZkMpew+Fqyy16wx1GsKqGV7QLGEg1WAhQMi+fvhkvzeGEnv?=
 =?us-ascii?Q?SuX3Db/aYG1FxiMa8YS7dRMmG6GSDAqOlcXRzNBAuUke7IyPWxxBYGtaqi1O?=
 =?us-ascii?Q?aj0oxw/BpCuWzH3wEQkQbFI5xVK9iKoFbNlfP31RMEcRTLXzt2LOSrZGO/Hj?=
 =?us-ascii?Q?KuCUxyoULjJa144wvYXS0UzgiqmJow9wWnXriqVJQE7yCN48+yDwlS3ub5ea?=
 =?us-ascii?Q?yfh/W/OncN6D/rJTD3mH2sXz3bSFp3mLrLYwot3WPPFe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c36781d-764c-4487-cb54-08de2912d992
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 15:30:07.0930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1CkhWP6MIYlLM8kc/9OgnqC63serSYHBqCTm4NbxDxz3C3VSve8f3+WjI5SseZ1oozVah0j87SeAt0XFHyxiCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5080
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

On Fri, Nov 21, 2025 at 01:28:03PM +0200, Jani Nikula wrote:
> On Thu, 20 Nov 2025, Imre Deak <imre.deak@intel.com> wrote:
> > USe intel_port_to_tc() in mtl_port_to_pll_id(), instead of open coding
> > the same.
> 
> Patch 1 just open coded it. Why have this back and forth instead of
> starting off with patch 2 that directly fixes the issue? It's not like
> we need to backport any of this anywhere.

I still wanted to keep the fix itself simple, as it has been tested
already by CI without the rest of the changes, to make both reviewing
and merging it simpler.

> BR,
> Jani.
> 
> >
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 8ae8cc7ad79d3..e0e5e5f65d193 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -206,7 +206,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
> >  enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port)
> >  {
> >  	if (port >= PORT_TC1)
> > -		return icl_tc_port_to_pll_id(port - PORT_TC1 + TC_PORT_1);
> > +		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
> >  
> >  	switch (port) {
> >  	case PORT_A:
> 
> -- 
> Jani Nikula, Intel
