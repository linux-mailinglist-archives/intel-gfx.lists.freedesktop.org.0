Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8AFBC62A7
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 19:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A32D210E0C1;
	Wed,  8 Oct 2025 17:37:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XTzQ3dOm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FA010E0C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 17:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759945043; x=1791481043;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=psXWvdJCctCCjgJwvFHF7csGZ2rpt4sn9fKgjae9xNQ=;
 b=XTzQ3dOmuWCWnf2zIa74X+5cl06tJdTl//UxjC9YbSyljdQ0vwJ931g1
 yUrwol2D/H294y6a2PQ2degJd2Z1TNVn7HttssZ7XSswMkFZQdopO5ut8
 uPy6Nn+2CHqw2clBBhQ8YtvrP65hw7QDQZslCRVHKyBqVT7cq5dFBqTdA
 pHPNqjGuegTFj1R/ZRKkpByG0FaVTU8iy7fef6v9nP+/lR1LlUfRPyOoD
 LyICIMjrSYlzhSvG4XkAqQycjwY14yKdlLt84Kj0GBySDDbN8uP/eIF56
 K7yr42PzqFsdgxkmTbM7F3jNARJzYTQSamAyiYS9v4dwxL2bQ7ExM8MpN A==;
X-CSE-ConnectionGUID: J6sgAN+lTa6/Q1xQH3L4OQ==
X-CSE-MsgGUID: PXMQDNolRWe0BVKPof1N6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="65789557"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="65789557"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 10:37:22 -0700
X-CSE-ConnectionGUID: hBblMuB4S+SNJYSH4fauRw==
X-CSE-MsgGUID: TCFBpfqdTI+x/RFpoQl5Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="180426578"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 10:37:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 10:37:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 10:37:20 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 10:37:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GZ+xKUH3Z4awqtyubQihqP2HlcFJO3hWZohFt7Ovru0hclSqfwFrNMOOzksqC0dXAnBlRTK/95fyVqAZFlP8gaxg7FdE1SmlmHfSGuk/AsmXB0xiUuJQUP9/PViSbn3CbZLGB20WM/5NhaUbIqnIhhTmXfXQN0urWEWo/OY9xyaaOjE0SonVRFcpQivMjb4+6N3m1EDhhsjszEbR7wS9MeRfpuVBJXK11VEMD/yyVC9FSR1rR2+0FYBizfI/unYoDIIvV1VDUKPo+Te+9ZdkY1M1Yb6p3McQU9C6GWYSRO+4JxO93guAVl4M14WMlFe4q8UxB2n5v/HkjazPiryg1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E57NpRthYgUc74lvVfPoi7s9ziSHKMVPsgSvBC0s5cs=;
 b=eYGEBj2qgtzYAISAK4dX2jJ9do6A5nEP3I1l+G1j6bw6+UuTy6cOzaHUUbCJedu8HCBUQbdY8GVYcafYVrzdZgFa9nDu8QZFoRjq6e7tZTheJW2TAM9W7Rnddp/nmpyU3APK7kvkg2RrE6/uWJUhQmGd9mqvsQc9CHAj7l32Xqccsp4yBWrU/xhDXD6llt8qEZuFSgCJQefVnxGZxUUipsDd6VG5RFmiQgxbeprt72/Hn4j4MtDbBXxAU6qQbJI4xKaJAzqME0rL1TWe5SXg5BiIv1CFxdFJcmtSNdYaZ2LRAS7oScZEDsXMvEimbNhLvmprv/q6ZT6odoR2N4LrKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 17:37:16 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 17:37:16 +0000
Date: Wed, 8 Oct 2025 10:37:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
Message-ID: <20251008173713.GB1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
 <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
 <aOad4gBFCtuKcbsh@msatwood-mobl>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aOad4gBFCtuKcbsh@msatwood-mobl>
X-ClientProxiedBy: SJ0PR05CA0042.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b423942-fdd3-4cd3-bdcd-08de069152c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?6slj+bJHIt4ddw/taD1uvhHjDLdP3+IKLeQQZ81is872yvn4x8qX2tLfZG?=
 =?iso-8859-1?Q?y4o6vZqD/u4NV7JpNJHMDihzs7eYC2O792Pd2uEUVZ6yHJY9tsn86V89+6?=
 =?iso-8859-1?Q?XBAB3s8PLWP0q2D/P8Prkep6XKkE7HWCvM4Vd2QgxlxS+9ZsW6xgxAaaWP?=
 =?iso-8859-1?Q?VmTk50x1wluRMhVZfcihTD4GgnEc41ooVjtd0KN1iRGezfD4n8ggY5/p1v?=
 =?iso-8859-1?Q?DyJpMDNnV0Ju+EtzZxiVPD7tn1DpOJGi5jrFvINfaOnLpKpQ/q+km0Hu9u?=
 =?iso-8859-1?Q?mtPKc3tJebYc1AFQUNr1k2FR3X5CMaPiM1/2oIN0E0lUVhOhW/MSOWohPP?=
 =?iso-8859-1?Q?etLVlvDdNJ0GszzBgeZCKai08m2YGMl7BpNeuiger5blrwJIpHZgza4BWX?=
 =?iso-8859-1?Q?0u3hF39S3iuZcMmfhjMbwSG6grdjq/VtIZFaO3IWZDjvfn4umz9OYLN1Y0?=
 =?iso-8859-1?Q?35hOQhp6L8JSL4ilBQAVMNJVVNv/g/ECkZ5HLDxejNG6+vnin85Vkt+f4E?=
 =?iso-8859-1?Q?+yUQz9ERp/ffc8HvF8PMd+qfUb3FVtnIeIABLik3U0JKN4Dj1Yct9JDG/X?=
 =?iso-8859-1?Q?9HMwgGc17NdroQL+eHxu9Jt9N9E52rBO9nP//opFem3ls3EK8X8GD7JTnB?=
 =?iso-8859-1?Q?dGzR3iMQRIc+sT++Bs7FysmzS1tuN86ccJ5qN2/OHjRtAR5GrFbZWfIEaf?=
 =?iso-8859-1?Q?CzBpfC7XV5ud/fep8XKfBdpDu3lCLUzCbLoFrwnjFiEC5+cZVwla9fyfkj?=
 =?iso-8859-1?Q?g0eBO/FHwRvFAXuE+GK7S63iAM5LdV08L3MZXmXRbD7J2w6K9PRpCMsE5g?=
 =?iso-8859-1?Q?5Fwxtudtw2uzBTogmXgOhmhnrabRYgtxSzMIpBY8O4Z8zMZPOKPNHNJyeH?=
 =?iso-8859-1?Q?BjZpBo2yhSGdSD8wg62TxRd3Blk7mXz2jWVtue5550+mciBM60mPMrve1j?=
 =?iso-8859-1?Q?QmmX6yeeDGIhMRva++/E+eM1SmD4j9j+hN36D/mhdr1Kt8NzA/b7m7zOxf?=
 =?iso-8859-1?Q?B96WrhswIBbW8/WlErBKxtZTMN+yMK3TDyW+IfSiuB4vDMilOQ1O4lL/2u?=
 =?iso-8859-1?Q?fG6R4GIcTI+DC5+0tdapIvfjE0I86DUGNpK3X17xlinZGn+43671lbhP00?=
 =?iso-8859-1?Q?5rekbnALa4mCj9i+nEkmYuXp5Cg14ndBmHKOEZ4eCLBVmpYlSW9xkgufWG?=
 =?iso-8859-1?Q?cwX2IPxGslnfQ5NIT5VjS7VuAmgqgW0RN5eQJ6JpWrD+M2k+vqyja2v9WU?=
 =?iso-8859-1?Q?Vm8SZnaLl+VOo9/YTRzkQypjHI4TlCCCK19uRwfhbj8fPoaiURT1Z68Mx6?=
 =?iso-8859-1?Q?FWR7SU1ME1yAZfEJvITaC7PELh4Ny6+hmbwotF+rlGl1LbSyVm9UvACrD6?=
 =?iso-8859-1?Q?Kg0Br8XJbeb00Xs+YZiTPs2v6xue19IX1yyV8cFEdOzwQtsIX5PhyZbdS0?=
 =?iso-8859-1?Q?QxCTVjmF8nVMSToT6HX+OOjpTTmIwl+DySshhbWyIzT34rvLaXsg2TGahK?=
 =?iso-8859-1?Q?Xb1BGiMxrLCvtNDj4doTOH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?R2dsv/UDWq1hpA74jhMY+FijlmPmyu4yjNjBdfbJ7SLQjR0i6KHnXOVF5I?=
 =?iso-8859-1?Q?iEGFifm2+7uo7PQlafxBVW5kBR7dJAMBrGjXoeSjfLOmBXwe5s6M051TGI?=
 =?iso-8859-1?Q?xpUKpuZjHQXwHGqzgxxKjzLJ4NCT5vKoDGdEp0ggu+x9jHJncIfzWorUSm?=
 =?iso-8859-1?Q?gkA6a/0UeYGOeAwYwHNFknJci5+JnV/7nSQyLGT/MTvzlWADgbkygBm6vv?=
 =?iso-8859-1?Q?bVCGp3SE6n+eAi1HmyCZZg1mq2NOQjjaqoqMklOElbuwfntgBrWghTI6No?=
 =?iso-8859-1?Q?K0AN8gXFj31MB/RwoF/VvHkrRYhfwYRr3E+V66j01E4ncRomQL71nDQ8xC?=
 =?iso-8859-1?Q?spgQD8XiZla+iKsoRycYBxZL6YGZA99dWafUV7dXIPQt8SYW4ryKRQzpJj?=
 =?iso-8859-1?Q?4ZM2Qh4phwgBBOa2W6ksDdWR9nM3kWu3wRNSQwDhjwC3R7FeLveVw91+I4?=
 =?iso-8859-1?Q?aB5nwZejO7Q+rTgrRrr89Py2Ynl6UWZdoaoB5XDou4VT2T0nWqyHhxN9a7?=
 =?iso-8859-1?Q?m7Hv8y6kt7sEZFWVMV1yAi03gvdSo/BSEnaVFpqmbZQ11GKa44eISQnOVw?=
 =?iso-8859-1?Q?cGqnhumlw6FjXOtbFFTCuZZc0WEayU1Dxf0FDvWVLiJd1DPPyV6p3gpCeM?=
 =?iso-8859-1?Q?JCri2IAXCn7tDZKBKaGhlqixv04y5zN4GykD/IRjFaFQCsLQEeInjxCu7V?=
 =?iso-8859-1?Q?nhxpBUHjBHPeF+vNZr/5GR3maKspD4XZo6AxNHe4IVhugBf1ynJd5njGkq?=
 =?iso-8859-1?Q?ZOtJ3v/krLqbdU+pNkZpawiJ728DldIGhEZis62pLPbdmXoz3GRlmpzgth?=
 =?iso-8859-1?Q?/uUZUbJtshkUidMy7k39n+f9gZT1I5icvYzDdNJgguvq6XrbeJYiLMpi7E?=
 =?iso-8859-1?Q?VyDfd7TINxfml33NzbUTZaxeOKUOm+xli88H77QnrYUZw4IZ9hhKrVt8m3?=
 =?iso-8859-1?Q?QBwK/gp+SlHXP+vXBj1bWHv5rKNQgRlw6sOg24kc6KjbZUDcVOlzMkzzWA?=
 =?iso-8859-1?Q?jnCTA/TlsbPldsbRziYLWzOQBuSjCaUSVPMUW/QutaT0Dgwz88ZPyc6ri5?=
 =?iso-8859-1?Q?KhIQx7SQB4S8IoOSxP7PrGSAg9d/kvGUAXtR3CPaEQughVzV4h6jsRZ8e2?=
 =?iso-8859-1?Q?RGStHNmfkfPd2uca4EUzg/4/RXYP13mwB/OrSceRgBIC2PdoFn4eHPKV1Q?=
 =?iso-8859-1?Q?i1gCyAHm/mSf3tMeebWG4Z4wctrDbUtPXKlCVGDNBeK5KAru4OBM621WbU?=
 =?iso-8859-1?Q?GYlDVx5MK/o3YFY4JadvsrO/vPZ8t5r8WCqVeRG9snlQko0NoDSSHU+EEv?=
 =?iso-8859-1?Q?1ZUrCnafUlRc5krhXnphKvwPJEbq5jSbaWNGpqDeuW3FUS2QGFtZcKI8uL?=
 =?iso-8859-1?Q?sJo7rKE63zvUBWt6SnROJiokLltJLU/jid8bWv5WonsdGi1kM/z67Y8+WQ?=
 =?iso-8859-1?Q?IJ/cnukJrqH3SaJ1S/ZOLiN88n/OBpFmzIgekKdqXLMs0q4QA2Wl8y03Qm?=
 =?iso-8859-1?Q?2jtfCjxCIEwSuAwPMUdpraifxgeD2RZw9Ss19tXf2kl7wv6zHH4+Cqa+0l?=
 =?iso-8859-1?Q?cYf/RwNHf9TrSoNsJHGrfYBSHMoUvCGyAweShb5Uir7gc81rSSs9C3KF32?=
 =?iso-8859-1?Q?uYp8hhwExmNNpDpkWY1vfnjo58f22/176aSP+5ygAo02+BWbWSdPNbpQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b423942-fdd3-4cd3-bdcd-08de069152c7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 17:37:16.4061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gAdLr4Qr3mHCMEvjsk2GYASZBlv8QpxFT5B5hVi6uJgrXaHtSsvAGZKFtUqJxpvWssgr7qd4SNJjHcHzmrdmke/0AIvuh8j7RmAlCrq4ma8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
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

On Wed, Oct 08, 2025 at 10:22:42AM -0700, Matt Atwood wrote:
> On Wed, Oct 08, 2025 at 09:53:34AM -0700, Matt Roper wrote:
> > On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
> > > reg_in_range_table is a useful function that is used in multiple places,
> > > and will be needed for WA_BB implementation later.
> > > 
> > > Let's move this function and i915_range struct to its own file, as we are
> > > trying to move away from i915_utils files.
> > 
> > It looks like this is a new revision of this patch from a couple years
> > ago, right?
> > 
> >         https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/
> > 
> > Even though it's been a long time, it would still be a good idea to
> > include a patch changelog so that it's clear what's been changed and
> > what review feedback was/wasn't incorporated.
> Sorry, I will include it if theres another version
> > 
> > I'm also wondering if we should be thinking about moving i915 to use
> > 'struct regmap_range' and existing functions like regmap_reg_in_ranges()
> > rather than maintaining our own i915-specific versions of the logic.
> > regmap in general does a bunch of other stuff that isn't relevant to
> > i915, but it seems like we might be able to re-use the type definitions
> > and basic lookups to avoid reinventing the wheel.
> This is doable but just requires a rewrite of the current implementation
> as it's not a 1:1 conversion.

The idea is that we'd eliminate 'struct i915_range' and related
functions and just use the regmap types and functions instead.  It looks
like the main difference is that the regmap lists are size-based, while
our lists use a sentinel to mark the end of the table.

Although I did just notice that even the basic types and helpers for
regmap rely on CONFIG_REGMAP, so that might be an argument against
switching over since we'd need to add an extra kconfig dependency, and
most of what it brings in isn't useful to us.  But probably more
something for Rodrigo and the other maintainers to weigh in on.


Matt

> > 
> > > 
> > > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile               |  1 +
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c |  1 +
> > >  drivers/gpu/drm/i915/i915_mmio_range.c      | 18 +++++++++
> > >  drivers/gpu/drm/i915/i915_mmio_range.h      | 19 +++++++++
> > >  drivers/gpu/drm/i915/i915_perf.c            | 45 ++++++++-------------
> > >  drivers/gpu/drm/i915/intel_uncore.c         |  1 +
> > >  drivers/gpu/drm/i915/intel_uncore.h         |  6 ---
> > >  7 files changed, 57 insertions(+), 34 deletions(-)
> > >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
> > >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h
> > > 
> > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > > index 78a45a6681df..e5819c4320bf 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -26,6 +26,7 @@ i915-y += \
> > >  	i915_ioctl.o \
> > >  	i915_irq.o \
> > >  	i915_mitigations.o \
> > > +	i915_mmio_range.o \
> > >  	i915_module.o \
> > >  	i915_params.o \
> > >  	i915_pci.o \
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 7d486dfa2fc1..a3c08bde9b2e 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -5,6 +5,7 @@
> > >  
> > >  #include "i915_drv.h"
> > >  #include "i915_reg.h"
> > > +#include "i915_mmio_range.h"
> > >  #include "intel_context.h"
> > >  #include "intel_engine_pm.h"
> > >  #include "intel_engine_regs.h"
> > > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
> > > new file mode 100644
> > > index 000000000000..c5484b16e28a
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/i915_mmio_range.c
> > > @@ -0,0 +1,18 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright © 2025 Intel Corporation
> > > + */
> > > +
> > > +#include "i915_mmio_range.h"
> > > +
> > > +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table)
> > 
> > I think some of the feedback about function naming from the previous
> > version was overlooked.  If we have a file i915_foo.c, then the general
> > expectation is that the non-static function names should be
> > i915_foo_*().  In this case, it means that functions you expose here
> > should probably start with an "i915_mmio_range_" prefix.  So maybe
> > something like "i915_mmio_range_table_contains()" would be a better
> > choice.
> Ah, the initial feedback I got from Rodrigo was that the original
> function name could give the impression a function was more generic then
> it actually was. The name I chose her was getting the struct name
> (i915_range) into the function name. I can easily change the name
> depending on what the community wants. 
> 
> MattA
> > 
> > Our existing code isn't entirely consistent about following this rule
> > (especially for i915 which has a lot of historical baggage), but we try
> > to follow it when writing new code.
> > 
> > 
> > Matt
> > 
> > > +{
> > > +	while (table->start || table->end) {
> > > +		if (addr >= table->start && addr <= table->end)
> > > +			return true;
> > > +
> > > +		table++;
> > > +	}
> > > +
> > > +	return false;
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.h b/drivers/gpu/drm/i915/i915_mmio_range.h
> > > new file mode 100644
> > > index 000000000000..c3c477a8a0c1
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/i915_mmio_range.h
> > > @@ -0,0 +1,19 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright © 2025 Intel Corporation
> > > + */
> > > +
> > > +#ifndef __I915_MMIO_RANGE_H__
> > > +#define __I915_MMIO_RANGE_H__
> > > +
> > > +#include <linux/types.h>
> > > +
> > > +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > > +struct i915_range {
> > > +	u32 start;
> > > +	u32 end;
> > > +};
> > > +
> > > +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table);
> > > +
> > > +#endif /* __I915_MMIO_RANGE_H__ */
> > > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > > index 1658f1246c6f..b319398d7df1 100644
> > > --- a/drivers/gpu/drm/i915/i915_perf.c
> > > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > > @@ -219,6 +219,7 @@
> > >  #include "i915_perf.h"
> > >  #include "i915_perf_oa_regs.h"
> > >  #include "i915_reg.h"
> > > +#include "i915_mmio_range.h"
> > >  
> > >  /* HW requires this to be a power of two, between 128k and 16M, though driver
> > >   * is currently generally designed assuming the largest 16M size is used such
> > > @@ -4320,18 +4321,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
> > >  	return false;
> > >  }
> > >  
> > > -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> > > -{
> > > -	while (table->start || table->end) {
> > > -		if (addr >= table->start && addr <= table->end)
> > > -			return true;
> > > -
> > > -		table++;
> > > -	}
> > > -
> > > -	return false;
> > > -}
> > > -
> > >  #define REG_EQUAL(addr, mmio) \
> > >  	((addr) == i915_mmio_reg_offset(mmio))
> > >  
> > > @@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
> > >  
> > >  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, gen7_oa_b_counters);
> > > +	return reg_in_i915_range_table(addr, gen7_oa_b_counters);
> > >  }
> > >  
> > >  static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > -		reg_in_range_table(addr, gen8_oa_mux_regs);
> > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > +		reg_in_i915_range_table(addr, gen8_oa_mux_regs);
> > >  }
> > >  
> > >  static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > -		reg_in_range_table(addr, gen8_oa_mux_regs) ||
> > > -		reg_in_range_table(addr, gen11_oa_mux_regs);
> > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > +		reg_in_i915_range_table(addr, gen8_oa_mux_regs) ||
> > > +		reg_in_i915_range_table(addr, gen11_oa_mux_regs);
> > >  }
> > >  
> > >  static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > -		reg_in_range_table(addr, hsw_oa_mux_regs);
> > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > +		reg_in_i915_range_table(addr, hsw_oa_mux_regs);
> > >  }
> > >  
> > >  static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > > -		reg_in_range_table(addr, chv_oa_mux_regs);
> > > +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> > > +		reg_in_i915_range_table(addr, chv_oa_mux_regs);
> > >  }
> > >  
> > >  static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, gen12_oa_b_counters);
> > > +	return reg_in_i915_range_table(addr, gen12_oa_b_counters);
> > >  }
> > >  
> > >  static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > >  	if (HAS_OAM(perf->i915) &&
> > >  	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > > -		return reg_in_range_table(addr, mtl_oam_b_counters);
> > > +		return reg_in_i915_range_table(addr, mtl_oam_b_counters);
> > >  
> > >  	return false;
> > >  }
> > >  
> > >  static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > > -	return reg_in_range_table(addr, xehp_oa_b_counters) ||
> > > -		reg_in_range_table(addr, gen12_oa_b_counters) ||
> > > +	return reg_in_i915_range_table(addr, xehp_oa_b_counters) ||
> > > +		reg_in_i915_range_table(addr, gen12_oa_b_counters) ||
> > >  		mtl_is_valid_oam_b_counter_addr(perf, addr);
> > >  }
> > >  
> > >  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> > >  {
> > >  	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > > -		return reg_in_range_table(addr, mtl_oa_mux_regs);
> > > +		return reg_in_i915_range_table(addr, mtl_oa_mux_regs);
> > >  	else
> > > -		return reg_in_range_table(addr, gen12_oa_mux_regs);
> > > +		return reg_in_i915_range_table(addr, gen12_oa_mux_regs);
> > >  }
> > >  
> > >  static u32 mask_reg_value(u32 reg, u32 val)
> > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> > > index 8cb59f8d1f4c..aea81e41d6dd 100644
> > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > @@ -35,6 +35,7 @@
> > >  #include "i915_reg.h"
> > >  #include "i915_vgpu.h"
> > >  #include "i915_wait_util.h"
> > > +#include "i915_mmio_range.h"
> > >  #include "intel_uncore_trace.h"
> > >  
> > >  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> > > diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> > > index 6048b99b96cb..6df624afab30 100644
> > > --- a/drivers/gpu/drm/i915/intel_uncore.h
> > > +++ b/drivers/gpu/drm/i915/intel_uncore.h
> > > @@ -123,12 +123,6 @@ struct intel_forcewake_range {
> > >  	enum forcewake_domains domains;
> > >  };
> > >  
> > > -/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > > -struct i915_range {
> > > -	u32 start;
> > > -	u32 end;
> > > -};
> > > -
> > >  struct intel_uncore {
> > >  	void __iomem *regs;
> > >  
> > > -- 
> > > 2.51.0
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
