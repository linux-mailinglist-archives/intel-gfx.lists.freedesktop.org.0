Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 133C2918A08
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 19:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C6610E1E5;
	Wed, 26 Jun 2024 17:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fmk+kBD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BD210E1E5;
 Wed, 26 Jun 2024 17:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719422767; x=1750958767;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=kLsDiGzMlFX7LHQA9ycZhhPZ+NxR2VGBdRmYyWlEwwQ=;
 b=Fmk+kBD2xAmwK2HHHsM8bZ/XV8Q8mlshnsCkrtBZ2TRrNrJT6WfTa4kd
 5YE98H6k2W2ElZsBLw1zTh3D1G5qKuUxBlJy33NarMQRrw4pcnxC/fkgt
 7n9rcjHD2NnM8FKjH5ou94Ia9eOeF8IjXbtKtp/iiTO7ADRk2YFTpu2GR
 IdvYUwBygsKhGJRV0TMC3NLycWAlqIhJlz7pE0LRkts1DUfOA3Aa5/M0V
 FQVILCSul3sIsZ0il7kR0V+tq6U8p3hJbbzcXt4KM/Gzv6K9wiB0zm1B7
 WZzzwRb0CRtRHii8a461xJ3YLvXL8okpok0eqQmxbrojKXCEahhfwNAiD A==;
X-CSE-ConnectionGUID: fb1L435jT+6E8cpZrOM2EA==
X-CSE-MsgGUID: tiN40fkQS2CfJFBvLJ+xxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16648142"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16648142"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 10:26:06 -0700
X-CSE-ConnectionGUID: WYK+62DeSkqg772UYNCdaw==
X-CSE-MsgGUID: PYmhbSRKSHaJmx/9CZyD9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44485950"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 10:26:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:26:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 10:26:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 10:26:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nfZPhg2La4BePOibDyrS0B1OlNIO2gAzuZbYeD2z2678SCoRVvb8q+EfOCsEhcoxzgBCAbVIwarZ4QWyMLwOXjxNiNNidEQHlnAZXc5gm7C9hal4FZA4UTCgQtrT58o4m4szPecmNKU1neebObMWBkTrEVBwHmiPJAWImhbP1bbgII/HLfQrW+HCbLx9JDoyq6SRr0s2Go1SXeAaCa7FPzehpY2CGG3WMIDYk2qNdzld262mwCGnVix/rDn9AmjQnkWCDet1vNxM5HLDugFUe++J70xBDARBVg3dXoE/5ds2ECUPzkNu0Zg9fnXQnM5ylFRCagW8UC/Xvq6uepDgqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aGNPWlvq0cF+8OdLknF6ePN8WWTPLDP30j/Zm1bZJo0=;
 b=J7HOQfey/Yk4Ale9OZ+zQe4diX42rda17oIPg11yWJyF/UASDWHsuzfYfC1c5pSJzBk1DZ1yYmyLw2vohTXYlCCSeI+jzSdjZ3oUFymsx54omJutGPh6ctFgXRlRY4X8a/8q1G4k/gCh5WDz5sD8WnkHAbxIENvaJaEWm/+GJ6XvNfpAqwaVPThlMPYhHXK+QEigIUKbHty/GzcJVqjrodOkvTzAc0yZjvUYA33F41FzH6jUP2QgDjrwfVeYoNFa4V+a6BCKG6p3fm6hLHjvfrYQsajbVAOwdXw9ZnyPBXsP3a11VzaeJ7+HQyIDgWO273R6btvoRNz3nar86qmdRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 17:26:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:26:03 +0000
Date: Wed, 26 Jun 2024 13:26:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
CC: <intel-xe@lists.freedesktop.org>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Lucas
 De Marchi" <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <ZnxPKAIPax-95pyk@intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <Znw5jj7YROnoWD9j@intel.com>
 <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
X-ClientProxiedBy: SJ0PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8093:EE_
X-MS-Office365-Filtering-Correlation-Id: 00763593-5e70-4e4f-7fc5-08dc96050d98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|1800799022|376012;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?eAfWE+9NQukDD1WSxOWS9jIEWE2TLH6mokJOeAIjpceK9SQzeGFcZSZN68?=
 =?iso-8859-1?Q?Jx9zEuZg6I4NxLK/aTpogEnTKNxt4IPrEU64EEDc6465XcQqToz8HjM9iC?=
 =?iso-8859-1?Q?YUnRkGULqymYvNpOIvFnMhDzAAtszEdi8lhICIYlrqN50R7y6eNIEkzeDi?=
 =?iso-8859-1?Q?09xB24xHMrBX0M7l0D6uxJPy49uEjfPUFdXv9/S+bkbcft8m48+lcX+8t2?=
 =?iso-8859-1?Q?syAO6hdssFVrtPGeW0ik749nGT+LB7ubcdE5DJic02mMXaDkMaD2Yy9t1g?=
 =?iso-8859-1?Q?jlXDRgRg69NL3pmnXL4MnkTOK4hShSshQ5tte2avdDPrC8+xsAWZmEV+q4?=
 =?iso-8859-1?Q?d8VpT5B4DcaEkkc6kQJLLGP4VKCZeTc4Cs352mqFJnKzj/zXxtm/HlUUG6?=
 =?iso-8859-1?Q?R9cY3C4j9+8d2pEAKuPZUH+Ne7AyX2BBZ2FlwN2Irj4R7Gmf+LcPhQEbdK?=
 =?iso-8859-1?Q?uzDMZGe13sYMk9+Aqn+K0et4/mrnsZfv07nUMY9izMB6q/5J9OQ9lFawqb?=
 =?iso-8859-1?Q?h7Yg8Aoyhmc8qYBVW3D5FEA+RyDjkKZ274/yVb+Vl4taNO3O8vnLcoLPpf?=
 =?iso-8859-1?Q?iq/BqW7h2rV6jEOf8txL5ZzdZ0MykiNhlVR03/k8cYLzMFhwU895RJo/rz?=
 =?iso-8859-1?Q?o0W5tdySA5Ds2dGNScEMB6sFmQl/1dqbQsV8P9srwDoswWeQuLGvn1LAOF?=
 =?iso-8859-1?Q?p0UBta52alIK/M6Pdzj4RbOFHKHmGmxHfVm/DI0QEe7UcCXCYU3nfDjlNL?=
 =?iso-8859-1?Q?7LlmS70GON5DDdW0JKxDgBdO+euwU8q7Rtjgxy2b4tPhE6lVZtrmm9/Djv?=
 =?iso-8859-1?Q?srcTnMAi6LU+XOS/VfI2YSveh0nyAfYkNrEJ3vGyTuXZ9bAalKufX8q048?=
 =?iso-8859-1?Q?guYWyePFKFyDt8oyJDxnxvADJjFIB5Ka2x6bObqiC4XPsuUXVMEFQlQg3e?=
 =?iso-8859-1?Q?liryyMF+ygbnws/f7FR5/or8HeaWMvu9gO5vBWW4y+8Dt1Z2gUebALBtHq?=
 =?iso-8859-1?Q?wanQSqV3k8LkCXY/1+KD1kqQyoIFFQqYyQdhgQIxdqWWHS/4jYGDbE5iU1?=
 =?iso-8859-1?Q?9Df92awXKck0uFONzLi6UaoqxIlVR0+hOenv8/WEkqJ7H2g7G3mryOU7ac?=
 =?iso-8859-1?Q?aD1Ow/vYoFaEExkW2wWfL6Z76hqlMB7Bu6xoCHdFhUpCJYo+12quK/d2mZ?=
 =?iso-8859-1?Q?RFibd3Zgauq72UFqz7v0pJt1xGQdl3EnNwr+tvjuQUiABOiQfAfHTnZXzh?=
 =?iso-8859-1?Q?95s595Vla/DmzBZJU/fWJn6o9xiQI0osx2rziG/+iScORHffL02Cp+ihQ6?=
 =?iso-8859-1?Q?CA+79uHSA2vNeXP0xEg7bHnGlMnms1PDwjy+zrfblzwGzdXFfQwuKfit08?=
 =?iso-8859-1?Q?fQmbRNaD4izBgV+kVYlZM7kfkGQjD1zQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(1800799022)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HAFIOldeLnq3nyxBELjl5eyUbYKVhK1G3CjeGGL5Zcs+wWMGfSkfmpezqt?=
 =?iso-8859-1?Q?o6FU62JRgXv2FHlhiTWg0En52DPXn3IERATYRJEG0CWX+ygkj8NXya4i+6?=
 =?iso-8859-1?Q?jI9Oyzd5r/Xtn+YzEZbdU5n0awwpOAmj0HxoYt0IcPfEQhnSB00C4lV3pY?=
 =?iso-8859-1?Q?hABS9m0H4nj+lLEpYZzVj3NWfPP6Yz55QUpKKU2h2vauaZf4DzhNpavrwE?=
 =?iso-8859-1?Q?UY4DAGTCGDObG9GTITN1ImrkLg+DyX+LnmWs3bGPwg7V5nrYoUAr09h10p?=
 =?iso-8859-1?Q?+clBEftyaC2c/Yc+QhL9OGXom/eBtbDaxt92xPxYyVw9pE5ykZXcIvcVG4?=
 =?iso-8859-1?Q?X5JkSgvOVw1rn9mRtfypcsYqLmg6nhfaxtQR0X1lvlUL6jzpgNXHK4HExt?=
 =?iso-8859-1?Q?C+upvtftHCxE8H0dAg6sx69vw9VO3ZtiuuZHCOP100JajuQt7T5hnXtm9r?=
 =?iso-8859-1?Q?uubZQZmVMWaVSHBvy0ip5A4TwZ7a/6LncK+L5qOo1qYg9HFdBHA6ScoRVj?=
 =?iso-8859-1?Q?lGiW8NHgWnFcGgKTrDynIlx9/E0sQODW+KNNFkJEbKgAefy3Mnwa/cKCZR?=
 =?iso-8859-1?Q?4EUZyLqFQeQyTbhbPtqII0pnZF7/Il+x4oOn33hDsuxNsJshjm+zZS6tqf?=
 =?iso-8859-1?Q?z7aPDFL9n3BJM/dRo46m4qE/vZ/PoTtZH1eKGQ4OY0Tt3oI2wHFZaSXpPm?=
 =?iso-8859-1?Q?hOObQE+5ndZIzxFs/JXem2ka8QE3p3FSRuP/57UkJpjJLW20WgVlgDkZgl?=
 =?iso-8859-1?Q?bQYLcGsytKWwtLbm1n0hEeeaAErOE2H7N48PW4IH+3zQqEAX8wtpumECOK?=
 =?iso-8859-1?Q?d7UV0cxh6Z2v6a7QTV3ALZqGP9WvYG1Jk3JjDGcWOoKQ8M4mJ7j1/TYj5g?=
 =?iso-8859-1?Q?jz7Ehm+7IcAM26Oi0171gvpGQNdLQILx32KWmftUW+bPMRCRh3REUhZ8cA?=
 =?iso-8859-1?Q?hOLV9+3ZVn+u7LVFPALhTsCc7Mm5Q73tna4hAjXpViXMKUpECY+nstWyAP?=
 =?iso-8859-1?Q?VXYZ6DhAAO4RMwafVSXTbtY/UP7OCYPiWrHrijRxe1ZzSTRdm9kLHlz1Rc?=
 =?iso-8859-1?Q?HK+wEzs7hIIQQliA10brOfAZ/IxXLkIDZ8tps2a4O4KY5WiG1eLII2SAbl?=
 =?iso-8859-1?Q?sMbGdE8Anjdpn93VQmZ49UMhK7XOiQRbB7urTylZcHbAj0uXrcWNJiCXr1?=
 =?iso-8859-1?Q?EajrppFeisOlCY1qBXmsVccyKYQ+18z3r6bJs748/FEK3iTiKTj72muoGR?=
 =?iso-8859-1?Q?lE5Bpvt/GJdT7lpOalMfggsSxws19T7LVi+UsXDtLPQaoeKE2w7DUbVJ2+?=
 =?iso-8859-1?Q?+UBIbETV52HZVehQnYzFd2p5ZgGq3ireNPTqOorPtyx6zW4JILJE07Ez9W?=
 =?iso-8859-1?Q?ZaMtO69xvq8bd/UcEfZmgEXhVGacTA1yCWMNBOeTQQsnsskjn+RlO833+b?=
 =?iso-8859-1?Q?R3tHKoG0x98xROJF7bItXpV+rx1u84VTWVWfhsV1ImCrg2pyPtsQz0UxYh?=
 =?iso-8859-1?Q?BBrMQnD3TUdmSJQSaKUfKkqj53kaWCDduLozEkGRhXJgUFCfB9kFyvUFxc?=
 =?iso-8859-1?Q?gcvxXDsvat0G0ENk7xc2JpiOqQBSHOjJ7HZtOti2ftBiYRj4gqIjN+Pq/p?=
 =?iso-8859-1?Q?urWUU/ODnhzEGas3IWCKB56XPECS9Muvcz?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00763593-5e70-4e4f-7fc5-08dc96050d98
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:26:02.9838 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+oIfmrNkM+RoOtq73L2oTgUIrUiV0p7Ko6L7EZkK6YOLJb2Ndh+RfrIcDhckXVaniMkb+e8aZ3f1OQDQKp2JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8093
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

On Wed, Jun 26, 2024 at 05:17:41PM +0100, Matthew Auld wrote:
> On 26/06/2024 16:53, Rodrigo Vivi wrote:
> > On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
> > > On BMG-G21 we need to disable fbc due to complications around the WA.
> > > 
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
> > >   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
> > >   drivers/gpu/drm/xe/Makefile                     |  4 +++-
> > >   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
> > >   4 files changed, 33 insertions(+), 1 deletion(-)
> > >   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > index 63201d09852c..be644ab6ae00 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > @@ -6,8 +6,16 @@
> > >   #ifndef __INTEL_DISPLAY_WA_H__
> > >   #define __INTEL_DISPLAY_WA_H__
> > > +#include <linux/types.h>
> > > +
> > >   struct drm_i915_private;
> > >   void intel_display_wa_apply(struct drm_i915_private *i915);
> > > +#ifdef I915
> > > +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
> > > +#else
> > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
> > > +#endif
> > 
> > please avoid the ifdef I915 in new patches as we are trying to get away from that
> > in favor of a clean separation.
> 
> Can you please share an example for the best way to do that here, with clean
> separation?

hmmm... looking more to the patch now...
I don't believe that the WA/RTP rule from Xe should leak into i915 to be honest.

It looks like we are trending to a separate intel-display.ko that shouldn't depend
on driver's declarations like this.

Ideally I would also say that wa in the display code should relly on the 'D'
(display-id) of the GMD-ID. But I see that this 16023588340 is for the 'G' ip.
So, perhaps the display code should inspect the 'G' id from the device inside
display code?

Jani, thoughts on this?

> 
> I can add a new .c just for intel_display_needs_wa_16023588340 and move it
> there, which then avoids the ifdef I think, but that then adds an entirely
> new file just for this tiny stub. Unless I can dump it somewhere else?

One temporary workaround that I see without the ifdef I915 would be to
declare this function in i915_drv.h so in xe you add to the compat-i915-headers
instead of creating a new file there.

> 
> > 
> > > +
> > >   #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 67116c9f1464..8488f82143a4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -56,6 +56,7 @@
> > >   #include "intel_display_device.h"
> > >   #include "intel_display_trace.h"
> > >   #include "intel_display_types.h"
> > > +#include "intel_display_wa.h"
> > >   #include "intel_fbc.h"
> > >   #include "intel_fbc_regs.h"
> > >   #include "intel_frontbuffer.h"
> > > @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > >   		return 0;
> > >   	}
> > > +	if (intel_display_needs_wa_16023588340(i915)) {
> > > +		plane_state->no_fbc_reason = "Wa_16023588340";
> > > +		return 0;
> > > +	}
> > > +
> > >   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> > >   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> > >   		plane_state->no_fbc_reason = "VT-d enabled";
> > > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > > index 0e16e5029081..f7521fd5db4c 100644
> > > --- a/drivers/gpu/drm/xe/Makefile
> > > +++ b/drivers/gpu/drm/xe/Makefile
> > > @@ -34,7 +34,8 @@ uses_generated_oob := \
> > >   	$(obj)/xe_ring_ops.o \
> > >   	$(obj)/xe_vm.o \
> > >   	$(obj)/xe_wa.o \
> > > -	$(obj)/xe_ttm_stolen_mgr.o
> > > +	$(obj)/xe_ttm_stolen_mgr.o \
> > > +	$(obj)/display/xe_display_wa.o \
> > >   $(uses_generated_oob): $(generated_oob)
> > > @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> > >   	display/xe_display.o \
> > >   	display/xe_display_misc.o \
> > >   	display/xe_display_rps.o \
> > > +	display/xe_display_wa.o \
> > >   	display/xe_dsb_buffer.o \
> > >   	display/xe_fb_pin.o \
> > >   	display/xe_hdcp_gsc.o \
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > new file mode 100644
> > > index 000000000000..68e3d1959ad6
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > @@ -0,0 +1,16 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright © 2024 Intel Corporation
> > > + */
> > > +
> > > +#include "intel_display_wa.h"
> > > +
> > > +#include "xe_device.h"
> > > +#include "xe_wa.h"
> > > +
> > > +#include <generated/xe_wa_oob.h>
> > > +
> > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
> > > +{
> > > +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
> > > +}
> > > -- 
> > > 2.45.1
> > > 
