Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9461AA1C7B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 22:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C581310E127;
	Tue, 29 Apr 2025 20:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JXWih604";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7884310E127
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 20:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745960004; x=1777496004;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dNp+VJtTvOzaAlCNz8X8sd7JESCTg9rlzvip2G3P+D0=;
 b=JXWih604L+lGbEOA48w9njC27V7i1zxKuXOAsCPBNhN3AEV74qwd0B2o
 m/2oCXU77+GLtRUPQORi2HQuljaM2tHFb0MAlv0fbciDpw9s91MlEbZXm
 fa7V2FawiPIu3XbF5wrz/Qo0IYdMj5psDV/KEZhfeoXxfx+rU4yrTtCHR
 4q3X27Jy0XNeicj8A1f/OrsN5zH4v8BXlFAXpQpKS9pXxsbkk38uSFq/x
 uIznaSQFkBIG1tto11eC72b6nHt2ZLMsE/X98SxNXPYxw7LXLDvl3qkBa
 dL+yg86MnQg9WYntfIrtHhoTrC9yghvnDnhmQMP9Vm2XkIwzmxJFdngoH Q==;
X-CSE-ConnectionGUID: Tie0JtKCT16ihN4ACI8Fzg==
X-CSE-MsgGUID: gKbjlSicSaOjwC+pkUrfzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="47511177"
X-IronPort-AV: E=Sophos;i="6.15,250,1739865600"; d="scan'208";a="47511177"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 13:53:24 -0700
X-CSE-ConnectionGUID: xr1KPGNTQHODLrDRItu45w==
X-CSE-MsgGUID: z8joj5ZLR5agRVfEwmI2yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,250,1739865600"; d="scan'208";a="138907967"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 13:53:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 13:53:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 13:53:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 13:53:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hgm0SPI6bBayCwDOZRVyaDuNDQGyQtsmRo+NFA90Nv6j4vObVEE5cL1146d1w5xP4ctPyNeYvg+NeO08c9bRm3cb21dyz8uiuy6buYvA/RsbgTpBgtYMOnjgWbVyQP1I+g7Cwp7I88En8jXNuHNhmfDDkEfNTSCxqb1Nw8zty7QTlJEwHSFz0sdNeKhOxkGtSa9kYk20rYYYhBf3026B/o+IhvtF6X4yxIQUp3HFIxBS+VGPNaGBlmkqXjiMDHHiG++3DxNxNdWiYF1PTQ3lIuMoNBGWHvQzcyesm42sO1fjqhmP/AsCxGGKk2P2OPjuG6HG3fU+KTLx7aMo++BjhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/A5yKavc0HXjThKDJvGAgmu4rH1CZIBpkl4R4G/yOCs=;
 b=EW/5YNTlhPDW0DsXJhMpjDdsBcWMkZtMuXWgn5aJcj+WZ6rjNCGoP0TIASIypReun1S72Ax/SK3MCIFu1f8iX5DfEaDEDFttvAOob9chidt3GITgpcuNgeCn5SskkEMykAcX2VLSjVBZGmGaI4SnKz2i0v4+rWmQw+qUQfidk08WgJb3jo+JFP51Jhs54bHo36oILl7CFfhTjRVlNllJkLx5/8RDm2F4e8D2pATMtmZXqAh/PTcuoRwdrw3gRIXtuJyVO24H+vogLm3X/XU/OTbbrHffBy11XYBZEXg6TgalbeVtr7szJzwgU5ZkFV3Ke7MExs1elm9VV+RbnLH8qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Tue, 29 Apr
 2025 20:53:21 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8699.012; Tue, 29 Apr 2025
 20:53:21 +0000
Date: Tue, 29 Apr 2025 16:53:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gote, Nitin R" <nitin.r.gote@intel.com>
CC: "Karas, Krzysztof" <krzysztof.karas@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Shyti, Andi" <andi.shyti@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Message-ID: <aBE8PPb6irZOOqiu@intel.com>
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
 <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
 <SJ0PR11MB586797751A19E64E52CABECAD0802@SJ0PR11MB5867.namprd11.prod.outlook.com>
 <qqfjvvu44wikoohewpgpbselarv3t4vazur2sjvznbq4m7halz@r3ezlz7vhezc>
 <PH0PR11MB58804EEB54AC07E8C212E3B0D0802@PH0PR11MB5880.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH0PR11MB58804EEB54AC07E8C212E3B0D0802@PH0PR11MB5880.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW3PR06CA0030.namprd06.prod.outlook.com
 (2603:10b6:303:2a::35) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA0PR11MB8302:EE_
X-MS-Office365-Filtering-Correlation-Id: c0205d3f-26a6-4350-e6e7-08dd875fe017
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?t/t1KP0T+DfTJ32LDsgF3/rBNg22GeSipdl8UEhrPQYn0uiFwm3+6sHFaz?=
 =?iso-8859-1?Q?jFLXEvUHlU7xsvnE072ghP2rVJ0okCZ9D8Y83TJbeK7rqU8JXVadv9VPwd?=
 =?iso-8859-1?Q?zO1J6epDN4Je8dSclOVr+4bG6X6pQ7rwGiq1PDpBubdEhdVq0MJ3rplH8/?=
 =?iso-8859-1?Q?tgCujdyCejwUy0jzlvItUSQkGNNd+pAqBgt8mh9valtF0GmGFs7npuw5O0?=
 =?iso-8859-1?Q?S2r6xD0ZL8hPkdhsm2FxQxu/Z2P0ToLR9o52/CLockAHZI4i29tFyyyjSZ?=
 =?iso-8859-1?Q?6ZSWOHJkRps3NKZ8dnVhnG80esRt6S2Dy9e4boZ8a/eCtYLDP1hOdTeW14?=
 =?iso-8859-1?Q?8qXyF3z0P6dGxuAEBSL5ECRV8SRFWW9SgcfsfuNlpgC6Ua9gZKeL/qgCaH?=
 =?iso-8859-1?Q?w/I1sCvTEHeKGmk+/+xCHtE7afzzGnqDY3jIU+qPaKS6HUtIFGvYKHaLhy?=
 =?iso-8859-1?Q?4F3FjtA0uu6EmDApu5rkdcBSsaBSC3H3XivdPTDC11EJblGZJKQsSZ6CcK?=
 =?iso-8859-1?Q?JfIQZ8qWkaJ//dqfdyl2+S1FJgjlXosdxPXcKaVmXCk/SWA64Ku0XvcOQ0?=
 =?iso-8859-1?Q?s85SVQf+CazvAnr36nSn+Dv+h+ONmRy/1YyQ9882iecNwG4XjD2H9qjzhX?=
 =?iso-8859-1?Q?D8ShR4eJ+O27qaSPLBo6gWga6mpgnI5xqSs5d/JBhYYJ0Ukj1QOMFod0VO?=
 =?iso-8859-1?Q?+0fjRVcdq1C0+kcHYljdYCB3RW8gQvfuyzvcGEzqPDSSPmzuWyC2XwHyFS?=
 =?iso-8859-1?Q?IIjEzKtK2kgAqTtzAmJ7OYExYXUkq2Z9LVU6/5OQp8DYpFX3vZRMeqsxXP?=
 =?iso-8859-1?Q?pvD4oBoTLv8YoTubzp7IUuFEmLeWnpn5uVwoyvN0ni4WQHeBEWOJ74eLsg?=
 =?iso-8859-1?Q?ayJ4Co7MQvH24sXGVXL5p7PyUqeN35j0H7kr3hgBB79e3iuzzJDVvUEB1y?=
 =?iso-8859-1?Q?KwTcBaQKB2bF9NcczgGTQT/9fNpo6+Cjm0bg1K7qcTUX0F0gnyeJHFnMFJ?=
 =?iso-8859-1?Q?hydvFL8C95yunszH4PQaV3wDwayFbulSl8ZPsBrmHMac64fcjzhvP6KMmQ?=
 =?iso-8859-1?Q?SqN3ZCLPKAiBVZG0pcQ+z78Gsa/XJkXk3XvQ0bGTjw01VMwU420Q64eEBm?=
 =?iso-8859-1?Q?ScB0B2EDVxzGDGofKfmDlJWnFYtwQgLgUbw6IqnTQiM3N+Rn53FUq44vvh?=
 =?iso-8859-1?Q?aC/P05Q9zM0z1IZnNRCY5hnxEU6oshKsCWeJwCSJ9dcS/CTeefbnnSIJD8?=
 =?iso-8859-1?Q?r6zMxT1L7bq+wfo9xLRgUmAFQu0+cEkNNxzDtCXZRrTBKvWi+PmFup+3np?=
 =?iso-8859-1?Q?3HeTzgDGS/hNVrGb10BLZoqHwFTOztIkPR02rowVeDa29DayiKFacX2y5a?=
 =?iso-8859-1?Q?zLEb+/IpQr3AGKLRgHMEOgiuu76EoVVauFeI4UsbvPzDUjlzvWVesfT1fM?=
 =?iso-8859-1?Q?+KR7jvvXGP2NVwsAFVBJenkFvjoeWNxGFjQPkELOmkxpZSN7Gz+gaFtUA/?=
 =?iso-8859-1?Q?Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?2rvjIpSy9KyjIZIz7CAnzuEZ7lxJ1X0cRavCxbQ6F2u0waWdkQuAbEoI1Y?=
 =?iso-8859-1?Q?paGi0Bl2NlLqLuIkpx3apKOUukBZFYNbIPuxtROOpwGufW02WPhDEPFUYQ?=
 =?iso-8859-1?Q?0c43EJu4PCUiOKh8sUNzS/pZmakNtFKIW1xAkHropifHzlPaQVHU2jm8wS?=
 =?iso-8859-1?Q?4N+fqqRfMD5SkWVdyClqRU6KnCl+JY5naJjWP7vmTOrXL7R10euJmePqH7?=
 =?iso-8859-1?Q?SrYkaGZM6VWSfckJINJdTYZB560VZj32/IoWEaRsiUU93b/qJ9uBqG/r5Z?=
 =?iso-8859-1?Q?VYtfsYRdupdPtCPLlltRiaONDN6o0HsESpPldM5Bx98BBPuP4f9A7otShl?=
 =?iso-8859-1?Q?YxPXDz5PgwjR29A1gMW92MR63mfLZU3L/ESU3mXmod2tQuNGVI/7w8Vini?=
 =?iso-8859-1?Q?Gzar+zeL51FvBaW8ZKu+rkF/rloDaP3Dyo7Pr0De+qY7nCWwviIi6A5JUA?=
 =?iso-8859-1?Q?D2tNa20emaMCaPLyf9BAyM+4rC1/s2WuvH/rOzhdjgUmHPYYbtKRhW5SZw?=
 =?iso-8859-1?Q?QKr02h5lOhoHzVPdodBjQ+f1lKTfx6rd/nXUeV2HK39qUyHruw6jH85DVQ?=
 =?iso-8859-1?Q?BsyUyAbdVE619fFTC7JY+Vf9NteEhy0Et2xL+6YyGzsc4t8GgYfbVwvN4p?=
 =?iso-8859-1?Q?SoN2L7sHt7somE6llCJM/e0jx1Khzf5Yu6bQfSpG0uz1poAWkjTSVy0Skv?=
 =?iso-8859-1?Q?WNMou6gjtWlw4QE7JfMU4QOF4zOoTarVNWD3KBfi9fG6p3jZk+x9W2ZeKx?=
 =?iso-8859-1?Q?NHnWGhRJfVUhqkUV/FxnuSa0yrTleb5CJ4f2TNXqNf/cDFXpGctLmtdKT2?=
 =?iso-8859-1?Q?u2reDhN8JT61m6gb/YJc0QIE0MDaUcsSh1VgxN2UZE7XraUPa83NntEbm/?=
 =?iso-8859-1?Q?8RyS3E/3uxBIVi2CDrRipGSTB1xjBv9yjOiQ/Z9lr2jSHqaIMqx9263jxq?=
 =?iso-8859-1?Q?WZ0AHNlUq3b8fIVfkcW12EkUMp8ctYI8sB7n+7h/GZqv0KH5To2dzWo5Y+?=
 =?iso-8859-1?Q?TIDIx/HOTimJM4AVOHcKM2rjXGJa5DNKm3xb7SXYYg1e6l9492HnztAw/O?=
 =?iso-8859-1?Q?ciMk8YhWGvOsZ8o4fgDebxEPUkZH+o5r9O6e1DdRJOJ0u0F3QP70Cwu+j4?=
 =?iso-8859-1?Q?1abVok5r7XG46ElKj+1Sy2iFQcFRl+7mmO+LLo00AyuxsJmRQidbR4b8D9?=
 =?iso-8859-1?Q?3kQDVUxqWS7cqE4bkhtf+tJ08S6pblgqo3XzrzKdAQP1iz6l7K+6SJKWyE?=
 =?iso-8859-1?Q?6+WkKQ2AqBGyXLq8rNVz13LjhnVBoG6tKJhXDus/WNzGeafYHlbaAGYwIo?=
 =?iso-8859-1?Q?W6/5CG+7dm1aZsj/cKsg1QEarOsYEG6EknEjeCA8cW8OCk4q3nxSyUCMPL?=
 =?iso-8859-1?Q?M6E2ql28I1eGLLcEnHNxh+fKJ1tHxmHN14YAhZLDruXOV2VKFkQL4fmm0M?=
 =?iso-8859-1?Q?3xFMlUDuSZrKE+724QHa9vhoX40VASF/FxEW4rHvXkD7UEpTfT90kw5h55?=
 =?iso-8859-1?Q?+DQUh/1+lZs5RIKWzxjjnQW2HxxAMegIojY2fumM529D2rDF6SREtXuw49?=
 =?iso-8859-1?Q?pKq5FyTZDybwG5ub4GLHSSSkIg5HGkQu/y6Kx68HTyq8FutEu1zDn5dT5G?=
 =?iso-8859-1?Q?sTiowN1ava4DoJSSi7XIpCaG2kA0L6F4dU15XG+9DwWjpCWObigCB9gg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0205d3f-26a6-4350-e6e7-08dd875fe017
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 20:53:21.0882 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OSE+TIvz8ogv64FU5TIeRV9dFLFyb27myveKLDDAoxfDoQdduSgkPublVeG1nn9q0BTh0sLSIBNU1OmSfHwVeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
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

On Tue, Apr 29, 2025 at 01:16:13PM +0000, Gote, Nitin R wrote:
> > Hi Nitin,
> > 
> > [...]
> > 
> > > > > +		if (wait_for_atomic((!stop_ring(engine) == 0), 20)) {
> > > > >  			drm_err(&engine->i915->drm,
> > > > >  				"failed to set %s head to zero "
> > > > >  				"ctl %08x head %08x tail %08x start %08x\n",
> > > >
> > > > I am wondering if xcs_resume() calling stop_ring() too would benefit
> > > > from having this timeout on hand as well. That would require moving
> > > > wait_for_atomic((!stop_ring(engine) == 0), 20) along with your
> > > > comment to a separate wrapper function.
> > > > What do you think?
> > >
> > > In xcs_resume(), there is no need for a timeout for stop_ring(), as we have not
> > encountered any issues/errors in xcs_resume().
> > > So, I think, currently there is no need for a separate wrapper function.
> > In that case, I do not have any more concerns:
> > Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > 
> Thanks for the review Krzysztof.
> 
> > Best Regards,
> > Krzysztof
> 
> Hi Rodrigo/Jani,
> May I ask you to push this change?

I just pushed the patch, but I'm wondering if a simple
ENGINE_POSTING_READ(engine, RING_HEAD);
ENGINE_POSTING_READ(engine, RING_TAIL);

before the return inside the stop_ring()
wouldn't be enough to accomplish the same here...

> 
> Thanks,
> Nitin
> 
> 
> 
