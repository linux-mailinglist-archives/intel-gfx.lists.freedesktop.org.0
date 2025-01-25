Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E4BA1C45C
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jan 2025 17:32:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE01D10E044;
	Sat, 25 Jan 2025 16:32:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bz2bG5K7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE5A10E044
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jan 2025 16:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737822763; x=1769358763;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NyPV9FhztxldLjBerT+u6WWDZ2oTgxUvGusv1nFAGc0=;
 b=Bz2bG5K7viP40H/8SurQDXtTbLp/YgXKXzYHH97jDV1XKE/g1PML72cA
 j1rdaHiiR/7KHzp1usDySeUz9EFs2Fob0Fqq4GGg3RNwA/IzSWoKVnTuE
 SCnVqa6APhVruqKshR1TkPyLxXXB+oum+1+Je73ot+t1BRIvowu0U0T31
 OXeKrxeH1eSdBChW7k4oUGQuBmL9cTxjvKjQiChZowpi1BBgr9tEu9Hw1
 Uag1ctP2yuA+KTEEQoosw23EHk9bJmvlIwZmmb6ViG+PWnuUmEOGDRxK7
 XDqeXjzX6gUgBC2Yw8BwJVNiqO9XVUdS3NV7a6HcJ41BjpTs9tGPVrqfl g==;
X-CSE-ConnectionGUID: xNTM4U5iQtW2dBeBvZJRyA==
X-CSE-MsgGUID: RUihh69zTQO8bSG3Yz/uJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11326"; a="48843860"
X-IronPort-AV: E=Sophos;i="6.13,234,1732608000"; d="scan'208";a="48843860"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2025 08:32:42 -0800
X-CSE-ConnectionGUID: NS5AnEC1TgKR3ZYh9qP3JQ==
X-CSE-MsgGUID: lmYL3gFJReWHhuV3hopoyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="138901611"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jan 2025 08:32:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sat, 25 Jan 2025 08:32:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Sat, 25 Jan 2025 08:32:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sat, 25 Jan 2025 08:32:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BqkSPfMnIHsdK759KBQNd/b1NycP34ivZgMHDXkuwkrMEBS1AfCBHPlkPHWH5HxnH1RZLVvdKsGTHVs5g6iQIA3aRRlkrZP/4UQru9i9X91i7LOb0GRqIzieFrs7Fo1YhNhR9/4lFGheP1JcFzqrbLwfGebXFeMljL9LWF0XVNgF/y/DUgM740IJzywfK2zb6jh0U7VXdmQr10KtK/jDfvZR82JfjqHFkP8SOmaQ/9HfiezzcZH4sEo+VBJDQnqRKZrxWj+3fW232Yhsbdt+9QzCZK9wpoJWeLP8micuHNDQiO7330uaOtCxhYKHpvABeXvH7YKyWkCdxQ7+KkYmBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VXoFiLQmW2rkPwaCiQbRbZZon81e5KCsRNO65cGAYRA=;
 b=Wj1to3MHdULokpYlfdMa4Ptac8WgKALjr427Zr8YMRktaYBa6xaUIuEQtxrARoq3Rm0vieXAibsmb7k+GSKZqVA4gSsVFSs0yjoYK+wSKoW0qPl0cgCSMJl5LrzqsUvSLYpGvR5AfgeLbEvYmxu05bqspUKByK2azDwuQF/kXZ17+/SLSDOBai4msc0cHEecpDjlfeoVPVEJGpi7n2LiTirTl+xx70nEpXK8ZFRUQKIdt5UmP0VgfrPTvNrYVznHYbaFijO4ncHhqIifMNR70m15MFh87oITaDB1grdgSI4jGNjsl0NeVZOEo/DbWhkdFVAYhWi1+3PrUWUizkLrvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5096.namprd11.prod.outlook.com (2603:10b6:510:3c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.18; Sat, 25 Jan
 2025 16:32:37 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8377.009; Sat, 25 Jan 2025
 16:32:37 +0000
Date: Sat, 25 Jan 2025 10:32:11 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
CC: "Liang, Kan" <kan.liang@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, "Peter Zijlstra (Intel)"
 <peterz@infradead.org>, Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/i915/pmu: Drop custom hotplug code
Message-ID: <qmjmd4dilx2cd5afmptg7yadcge7enno3tmnd5jd6d7o7ogafx@ditz4vnjhrj5>
References: <20250116222426.77757-1-lucas.demarchi@intel.com>
 <aded1225-0022-4e86-845c-283641cf32a0@linux.intel.com>
 <pz7y2i25y5o2ox46s3ua3prsa5ap2mkqqb5chtebw3f2egwk6n@5m4xibw2h5yd>
 <6d4d7f82-7619-40bd-bbc8-58681de54a6a@linux.intel.com>
 <rtmoiu2z4vg42efvz6mwo45eaileyghqowibdzikob7mlnklbm@bz5cc5zkalcd>
 <e15c89bb-88d6-4caf-a199-2febd067634d@linux.intel.com>
 <szokgaqqg22wu7ufam4ab5fnnf47ei62urn6gpgv2rise4h4qt@a7zb3uqvyc3r>
 <Z5Q0XSmvs4PkXg7x@orsosgc001>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z5Q0XSmvs4PkXg7x@orsosgc001>
X-ClientProxiedBy: MW4PR03CA0253.namprd03.prod.outlook.com
 (2603:10b6:303:b4::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB5096:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a091ff7-97af-415a-0959-08dd3d5dd596
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?38vXnIB8Fgx/L9IyJ6CFMx1VrKptkqHB1ivUuz7DViu+8ZA+xj1KoVoRvI?=
 =?iso-8859-1?Q?0NDeW1FMzCNRHwW/9ZK3EKfUX6FReaOhe9FVc8TaEyNMRIKYYl52i/At1m?=
 =?iso-8859-1?Q?HAimC0c9yKW3a7Xd+Bjh1aitSRD21Gt62SbfW0Cgn91kZJ7JmbQ4PsiKut?=
 =?iso-8859-1?Q?Z4CsKOei9ukHu4pwMAmeyoE7YWFTHDM0Uxgyj17g9ca95UeBgJRuYoFvI3?=
 =?iso-8859-1?Q?k2t+xpwkSXEITFUqeTJlT8OFPsyvrdzJ4ZmhBvE44W1/2DhhNBScNEtHwq?=
 =?iso-8859-1?Q?ncOUXWO4WbPEWlLOtOMegj95PyiH0yUpyab+w6X+7xxWv82jipcumnhCE+?=
 =?iso-8859-1?Q?1xkPw8dnl2rmBHz2WeYfR2G8RdS+D+LhGRXgGSfciGY7H6aF/I/O7vWIBZ?=
 =?iso-8859-1?Q?uN3T1KqvQofVtEqC6/8e5huEO58XB1OdPWcxr32u7jXVMGDkjC9LLD/8CR?=
 =?iso-8859-1?Q?N79wwNve+CF+Oo2OYnSQGlSwZsHA9pom0sj8jYFRh53tNk26fzREt6//zY?=
 =?iso-8859-1?Q?eog56OBECqtS8YAyPPj83yKm4mfcc40ExSUoRP5sLkzHX/4K4wOraINmhD?=
 =?iso-8859-1?Q?RP6MGF8enGAG3KqibmFxWhrM2aCJ3lXXKlBtCT5gbgnhTtP4+0Og9xUD2x?=
 =?iso-8859-1?Q?G+/cCeZ0yvq5R/BFIUckbPtQQaatQL4DIGzjslYJPsX0a9FDgY9eNrNTSS?=
 =?iso-8859-1?Q?3rJA2646NnZO4zOjE0stqq5xqDSfHdYgNjC2IddFqP+JlvH2zwBhsfROi6?=
 =?iso-8859-1?Q?YY1YbKjTuMMDgZUfhor2/2Sh3V+O5iIaIfIJByAEkzFGve0dPFOCf6/1y+?=
 =?iso-8859-1?Q?4sfW/d+nrp16zl79qy54oGcMMwcUAQ0uS9+0vCSkC0Ft2+TSGbEJirDAG/?=
 =?iso-8859-1?Q?QXPsc5bxMZeEFgOlpCZJ//SgaflTqNMADTHD9lZNqoc5aRq4Nb7d0fIjkP?=
 =?iso-8859-1?Q?s6ZzMmTv1AHVgImJAMJS2VwrQCxM3xkGkDzBW2Q9B05093qK4MI4mxHvcD?=
 =?iso-8859-1?Q?EfTu9ybiAirIpjwQ3lbeR4xdXVmy6keMTfJ2YXNp2NxxNUyFU4Jdy99jYS?=
 =?iso-8859-1?Q?1ooqO4kRosOZijSUJTZBBxgoQmm0RkAdM1EhSfb3QzXxZHIA2gRkHjYZYc?=
 =?iso-8859-1?Q?6RgKGLGQ9yRIk7h9uYLyDK3sTXZETn/pR10X9+43OOeEGDy9kvYqUHG7B4?=
 =?iso-8859-1?Q?mcgB6f79dXRnutrpMDsW9vo2yrxtUKcyIzHueVoOh4WM1/P45Qbb9hESpV?=
 =?iso-8859-1?Q?yCbPc5lWWI24oS5MaCxI0rFDvGX364TZFNX31DgXN+HZ3yXfXV6xf7GjxF?=
 =?iso-8859-1?Q?RFR8dq79jzCYpCctdKR+eAooNsJCUESKaOtRlGzZ80DbFwqR9XZZZf06p5?=
 =?iso-8859-1?Q?5GIc+D6zZVSnunAayetF5XI6uctgB7B7irtHpPOVIYhsNRMjdBckf+wjPt?=
 =?iso-8859-1?Q?frjy8NDoQJRdksfc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Jfj+ixtr11rEiqWk2Bg3929BxVRjhOAv4CA4gqiPatgJ2H+kqISeOhmmsa?=
 =?iso-8859-1?Q?HYxrsZqnfK5NCB4FCa4Dc+lAEhrm+T+UIk9w6GG5Bbd2hiBQZJUWPGtXY5?=
 =?iso-8859-1?Q?2FfHs9Kq0ixqI/kzbks1G377USOdFv2xxMx/LKl+IkJiQatiiBFoBz8oed?=
 =?iso-8859-1?Q?EqcnUWvQq2fs23RHzEZ70fcgs20wBRKDnhYdS1XW1t6EjfQdAJSDu848Tb?=
 =?iso-8859-1?Q?eGgb3KeIzr9oMCFW/dm3svQGnPkYdUWVaGuTezKnpk11RG2BSdYTULSoiH?=
 =?iso-8859-1?Q?Lf62jbE+KnTJdgVxYiXyzCDgiueQJWCX8gQRs3FuzvcIr5XzJkc6raCSqo?=
 =?iso-8859-1?Q?dahbRrBpRY+Abkxv6F1OTdm5UN+M+nA71o7Sg/vHlexpeXCzFEYN428gM7?=
 =?iso-8859-1?Q?nOitgW9ItNyO/MAHlqudKlu0rEu5pF3yF6xR0nzTSqAkPb6d+5jNgLHKSj?=
 =?iso-8859-1?Q?lipOybsy+/cs1kqmceMJF1NLIJ0SayoHbJaZouI2uUSp3TFvZYIrYP79/X?=
 =?iso-8859-1?Q?ndoy3k6KJHQuI2m5pTMbMpL1wrzcsM+vpQFa6He9yaN4Uff/cgG3vJ1o97?=
 =?iso-8859-1?Q?fhyFUvoP1DoQOpJykIlHr+/boAH2EwJrEv4aJkVMcCx65MQgcPnm3M66dN?=
 =?iso-8859-1?Q?5rHeFASvaOjKyiy/7rTfmCev/l3ULeNSwC00bcfVhUtYushXKhojj1xIJh?=
 =?iso-8859-1?Q?NaR+Fx+q2H5wfNkUBNddP6C0ksfh5T362Y8Fy+39rdCgvH9W5hecgF3lhQ?=
 =?iso-8859-1?Q?awQECsDvrlYk30qljL2lm4NTDloGLuQDsKB96Lm0sPhLEmi6/QfaQDpLk2?=
 =?iso-8859-1?Q?nhnqL+Bz3OEZdqMxED8asVPkbJdVkl6wYZPHL2Apm034+TSp7PNR1E/LZS?=
 =?iso-8859-1?Q?wxZ8ZUuedV8LhJtvrsdEHubdqGfqRghUOD0vrfsTwwU/fiyojOILJ9FDXf?=
 =?iso-8859-1?Q?d2TFIW7uzaPiVVGAYucI9wDDCMstdV9RcfjxNOcMHK0wYS16xIkVJqbGUU?=
 =?iso-8859-1?Q?ThB7mmxJRmH8zn03PGSUuQ96egACz92MIHpskx8UF8t1vsG9Hivkbq3Qca?=
 =?iso-8859-1?Q?wa4o3U8+CLGwnoS+qpupXC3xLDPB0bfqSx6xHqB+kBHmftKq0oIeUCvQV0?=
 =?iso-8859-1?Q?v2thlY7U009janqGk93Y7BPfTp1a3Nq4TpotUTLSoPPvbcT99TWnpZjUfT?=
 =?iso-8859-1?Q?qCR1PW4bQ3yNY0eBlJq3g8JHXFYRNZJii96uQC7JRpItmSgexvJKk50ATf?=
 =?iso-8859-1?Q?BwI8LKJ1fy/bhGvUsOh1TF9cGuTmo2l5gIfPRSTcX3GewaQ7bt7av1AISt?=
 =?iso-8859-1?Q?P5t2rrgSYHidwh5wvH3/KkpYLM1b8Rywgb3pr6wdKltovDxbLiE4wfiXrB?=
 =?iso-8859-1?Q?dIlcrrf9iNxnl0IHcJ7KVnX6XJ4jxO23+NyUWcr293SBeWvryjX6Yia1y3?=
 =?iso-8859-1?Q?3NP4o/9NS9Q7QAKg1umjQ8fOA/eH56Sx7eye8DXUj27Lc65AZgfsEZ+Vec?=
 =?iso-8859-1?Q?lWqpj6EPeR4nav6rvURw1lvZ91IRKQQr9RIy027t/5mxou1CvR4iVJLAip?=
 =?iso-8859-1?Q?O5k6xM//fbMXpWD+QXSO55iRHCOL9afN1G9s6JzACKaXFYQEsSCoBvaOZp?=
 =?iso-8859-1?Q?uyvpK9UHIr785buNypul8ZKQjZAXzhkjO23W1k5buUAQY5ySLkGf+9Gw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a091ff7-97af-415a-0959-08dd3d5dd596
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2025 16:32:37.2432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LbyIYbXAgULN0nt8c+OPF/d3dLPzejd/3gLgeRn+Xg2OmPCctAj1rQxBKaDlH3lJB1r8k2ysWt8nGjBlgTaZO0tmLMA8xDMiUGOH3WASP48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5096
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

On Fri, Jan 24, 2025 at 04:46:21PM -0800, Umesh Nerlige Ramappa wrote:
>Hi Lucas,
>
>Mostly a bunch of questions since I think I am missing something.
>
>On Tue, Jan 21, 2025 at 10:59:08AM -0600, Lucas De Marchi wrote:
>>On Tue, Jan 21, 2025 at 10:53:31AM -0500, Liang, Kan wrote:
>>>
>>>
>>>On 2025-01-21 9:29 a.m., Lucas De Marchi wrote:
>>>>On Mon, Jan 20, 2025 at 08:42:41PM -0500, Liang, Kan wrote:
>>>>>>>>-static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node
>>>>>>>>*node)
>>>>>>>>-{
>>>>>>>>-    struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu),
>>>>>>>>cpuhp.node);
>>>>>>>>-    unsigned int target = i915_pmu_target_cpu;
>>>>>>>>-
>>>>>>>>-    /*
>>>>>>>>-     * Unregistering an instance generates a CPU offline event which
>>>>>>>>we must
>>>>>>>>-     * ignore to avoid incorrectly modifying the shared
>>>>>>>>i915_pmu_cpumask.
>>>>>>>>-     */
>>>>>>>>-    if (!pmu->registered)
>>>>>>>>-        return 0;
>>>>>>>>-
>>>>>>>>-    if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
>>>>>>>>-        target = cpumask_any_but(topology_sibling_cpumask(cpu), cpu);
>>>>>>>>-
>>>>>>>
>>>>>>>I'm not familar with the i915 PMU, but it seems suggest a core scope
>>>>>>>PMU, not a system-wide scope.
>>>>>>
>>>>>>counter is in a complete separate device - it doesn't depend on core or
>>>>>>die or pkg - not sure why it cared about topology_sibling_cpumask here.
>>>>>
>>>>>OK. But it's still a behavior change. Please make it clear in the
>>>>>description that the patch also changes/fixes the scope from core scope
>>>>>to system-wide.
>>>>
>>>>sure... do you have a suggestion how to test the hotplug? For testing
>>>>purposes, can I force the perf cpu assigned to be something other than
>>>>the cpu0?
>>>
>>>Yes, it's a bit tricky to verify the hotplug if the assigned CPU is
>>>CPU0. I don't know a way to force another CPU without changing the code.
>>>You may have to instrument the code for the test.
>>>
>>>Another test you may want to do is the perf system-wide test, e.g., perf
>>>stat -a -e i915/actual-frequency/ sleep 1.
>>>
>>>The existing code assumes the counter is core scope. So the result
>>>should be huge, since perf will read the counter on each core and add
>>>them up.
>>
>>that is not allowed and it simply fails to init the counter:
>>
>>static int i915_pmu_event_init(struct perf_event *event)
>>	...
>>	if (event->cpu < 0)
>>		return -EINVAL;
>>	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>>		return -EINVAL;
>>	...
>>}
>>
>>event only succeeds the initialization in the assigned cpu. I see no
>
>Confused here - The above code check (cpumask_test_cpu) is removed in 
>this patch. Are you explaining how it was behaving before this patch?

yes. This is to explain that the scope is system-wide and not core-wide.
The confusion came because our hotplug handling  in i915 is using the
wrong mask to migrate the event, which led to the question "is this
counter really system-wide if it's doing that on migration?"

>
>>differences in results (using i915/interrupts/ since freq is harder to
>>compare):
>>
>>$ sudo perf stat -e i915/interrupts/  sleep 1
>>
>>Performance counter stats for 'system wide':
>>
>>              253      i915/interrupts/
>>
>>      1.002215175 seconds time elapsed
>>
>>$ sudo perf stat -a  -e i915/interrupts/  sleep 1
>>
>>Performance counter stats for 'system wide':
>>
>>              251      i915/interrupts/
>>
>>      1.000900818 seconds time elapsed
>>
>>Note that our cpumask attr already returns just the assigned cpu and
>
>I don't see the cpumask attr anymore since this patch remove that, so 
>still confused on this part.

cpumask attr is now added by core perf infra. See how pmu_dev_attrs
is handled in kernel/events/core.c. If you load the driver with this
patch you will still have a cpumask attr in sysfs and the value depends
on what scope you give it.

The validation when creating and event (with perf_event_open) also moves
to core: it calls pmu->event_init() and then validates the cpu:

kernel/events/core.c:
	perf_try_init_event() {
		ret = pmu->event_init(event);
		...

		if (pmu->scope != PERF_PMU_SCOPE_NONE && event->cpu >= 0) {
			// check if the cpu matches to mask for that
			// scope
		}
	}

>
>>perf-stat only tries to open on that cpu:
>>
>>$ strace --follow -s 1024 -e perf_event_open --  perf stat -a  -e i915/interrupts/  sleep 1
>>
>>[pid 55777] perf_event_open({type=0x24 /* PERF_TYPE_??? */, size=0x88 /* PERF_ATTR_SIZE_??? */, config=0x100002, sample_period=0, sample_type=PERF_SAMPLE_IDENTIFIER, read_format=PERF_FORMAT_TOTAL_TIME_ENABLED|PERF_FORMAT_TOTAL_TIME_RUNNING, disabled=1, inherit=1, precise_ip=0 /* arbitrary skid */, exclude_guest=1, ...}, -1, 0, -1, PERF_FLAG_FD_CLOEXEC) = 3
>>
>>Lucas De Marchi
>>
>>>But this patch claims that the counter is system-wide. With the patch,
>>>the same perf command should only read the counter on the assigned CPU.
>>>
>>>Please also post the test results in the changelog. That's the reason
>>>why the scope has to be changed.
>>
>>it seems that migration code is simply wrong, not that we are changing
>>the scope here - it was already considered system-wide. I can add a
>>paragraph in the commit message explaining it.
>
>The prior code was enforcing one CPU assignment to all the i915 
>events.  If the event was read from some other CPU it would fail 
>(based on this check in event initialization).
>
>	if (!cpumask_test_cpu(event->cpu, &i915_pmu_cpumask))
>		return -EINVAL;
>
>That's not the case anymore. Right? If yes, how do counters read from 

see above, the validation moved to perf core, after the event_init. If
it doesn't match, we cget a call to event->destroy() and it returns
-ENODEV to userspace

>different CPUs get reported to the user? Sum of all counts on 
>different CPUs?

value is still the same. There's still only one valid CPU and that CPU
is always cpu 0 in our x86 case.

I hope this clarifies.

Lucas De Marchi

>
>Thanks,
>Umesh
>
>>
>>thanks
>>Lucas De Marchi
>>
>>>
>>>Thanks,
>>>Kan
>>>
>>>
