Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5618FB95C37
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 14:00:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7A810E603;
	Tue, 23 Sep 2025 12:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hdvg+y8M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3D1C10E603;
 Tue, 23 Sep 2025 12:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758628845; x=1790164845;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=sAEziKCvGZWhFKl7MYh/UhN8kxDTwkARIZOGhPZFnNs=;
 b=Hdvg+y8Mp0/KuD9FiOAOS5eBaStflDUrDM+Dw9iOVbYdUb+gzkT9IIrJ
 pa6GSHdWuIVX7VhwxEwewHajiQ9Ukd3xjt9tRGOU0+HAo/CGp8OrPh/At
 n04xNBKZOuSy6KjRhOsEY5iDczr4B1SJ59A/WaQtFXQ0pQrA5DHgirG+n
 rUUH/ZCKv3c93QM4d5XdejL/11lWgTVqOQARynFdsDp2cYKoEELTyRYWz
 JPFC/A3kPHhPjhk4NisYZejredeWQ7TxvOhbGZaqoN5XmQUIuOSC8niY6
 Q2kFhz9SELU3QwdnvPymbKGICYFAzU9QoWitABjlyO3lqV5SmP6VUZW6F A==;
X-CSE-ConnectionGUID: KrrnQ9IKTYe0Sq3rNguF7A==
X-CSE-MsgGUID: 3Oj6BhCTTAqXgYPvw82m3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60846467"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60846467"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 05:00:44 -0700
X-CSE-ConnectionGUID: hdfMmYdzSGCajcMOoYXsBw==
X-CSE-MsgGUID: HHjT1gMFS5ulY0IK36lrZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181911409"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 05:00:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 05:00:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 05:00:43 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 05:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rspxcs4LuosIuXLcT0Bs0LBROkt04dXR3wYdcG9UlPqbRnKBWGNbebJKJ6DEcUdY9bIGsgv5WmxvlWp2wRgnIB5hklRWU4UZGyQESYx9Edj/wmV0qTtX4isHr45XnYjIN/BGsPq8XiWhnO1ogqzO5Y9X+bJ/411yXTYirtNpBxV3kO+dO6fjg7pmrV+Mfky6m3CanQwZdZgI1k2k/WNJMVq+alMxfPkf85Dag6c5hfQx/B4viEvNaTfWqWsJ6xVZ1p5V8VaJv4OTefS5wPN/8lRyVc+4ady2yzlCiJDC29GpIXXeOczjugaFMwTr2fVxUTQ9ylE3kQh2tZBaoX9+6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Il1HS2LL0ACPo6sHCgzBaHNIx98cybwz4/o+fhrJg0Q=;
 b=VEweP0qzskkAP21LIcGykWfcfw7BmV1rC09dXSJBBWVDU+pUXHBakNV6lk82Ohje6WPhlpptjZ75I/cW6QGpygkBxHHRZWl9A6ZNJTtGWBX2X3cmE3995ts5VpHAajFi2koKSLT6D+K4l7SxCQynwE5hrTxt7U/g6g81izKGuqdJBjKGi3hMNm5NezqqrpC3VHjt7ozw2ZqbsoejeOA3Zqs9m9jxIH1RqSU77/xxFGslmcM4KuwA9p3qkjNO80m1PxqcyGxGWUYhfFiv5PlSqQ141vIXVFZVgU4SI7eJ6/LofXtRx5KyMzTJqoxl3S85VFooQrq6yRDpQpyZTA4jJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ2PR11MB8515.namprd11.prod.outlook.com (2603:10b6:a03:568::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Tue, 23 Sep
 2025 12:00:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 12:00:41 +0000
Date: Tue, 23 Sep 2025 15:00:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/dp: Verify branch devices' overall pixel
 throughput/line width
Message-ID: <aNKL5UaEzH7rEFmt@ideak-desk>
References: <20250918211223.209674-1-imre.deak@intel.com>
 <20250918211223.209674-5-imre.deak@intel.com>
 <aNGlDi2n_C5pNFXk@intel.com> <aNGsKkxRqraLY5dw@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNGsKkxRqraLY5dw@intel.com>
X-ClientProxiedBy: LO4P123CA0096.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:191::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ2PR11MB8515:EE_
X-MS-Office365-Filtering-Correlation-Id: a321ea7a-ddab-4cb8-8591-08ddfa98d197
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?zQ2Tmy+UrJZYZi9w5hBKVw+wdmS638Aq3siqgX/PMAmz9WQ79nz2bHkR68?=
 =?iso-8859-1?Q?M6WWuDCtcskHsHyNt2YxSSlE755kD7CXeGr+FxlSDrR00utQkiriyaNzAV?=
 =?iso-8859-1?Q?evX+Atl/wqvDTWYFEAxEwtPKsVy7/de56xIgRgDZiebpGDAuN+Fn2cpd20?=
 =?iso-8859-1?Q?FPif7yvoUaEAmltqUTB6AsiMcAsXtiQP6quGQLUQKK1g0OX47+eJeehxHF?=
 =?iso-8859-1?Q?0OUSXgx0KkoKCytmsdImilNoJwImLzRlU97xnHbKNHC5/MzD5EDnSYnYk8?=
 =?iso-8859-1?Q?dXe04uBC8UhpeXb9Q5irkfMS8XA6gc8WFx1iKV6xLBve54ky15TsYJ0tFM?=
 =?iso-8859-1?Q?Ypncuxge5GorQ2aqbFn5DLec56Bp5f6tybOKSIpN/NeNM9bGyfH7RlHfiz?=
 =?iso-8859-1?Q?5gSaWOm8Nl4oUnoHDNpXG35Yd8lHGfRT2tl3tTFbp2RvBDgCWeayGfN7lk?=
 =?iso-8859-1?Q?pVrXqX+nMhvSiOhe9Y6IhxmNPUe6Ckjum86W3kNQJR7slcOE3IpiSEAekI?=
 =?iso-8859-1?Q?xIz16Wv/4eTL4i/VrjUGHSFSEVSksa5V6plGn4LWLMIgMP7Bcu/44ISqpc?=
 =?iso-8859-1?Q?r5OVImyvCMlZTysQl6ljdskGkehNREjZof7HSzthV+G8mWONSKzjGG6mjr?=
 =?iso-8859-1?Q?InLklgftidU/wmquw6RyOdGrnKPnTmWvSkgRboX1bX7i74Vg9nPSdHpbI3?=
 =?iso-8859-1?Q?0XMtntld8/PhUll2rY/oQQYUYdsj98gI4rtVXqRxSXaukTjil3Yx9lwkMW?=
 =?iso-8859-1?Q?KjyGiy4ZIDl5068Qm9ptrK9sxYN8NiOZMuJRMmOmkhjACE1rnk93Adz+Zs?=
 =?iso-8859-1?Q?VcrGD2YI+LDZ/hUkulgJZEa6faw3elqZz52UBcSv1BEipwdzptjGXQGLUk?=
 =?iso-8859-1?Q?qVCy3IswvmFRMo0IMgDLWG53lptEHtjg6erHQeuOwkuTNIctAjwItPI8wD?=
 =?iso-8859-1?Q?j+ajF+F7YXeF25GyVzm0GYRYQanaTO9VTZwYE8PvvKx/J7sQ8O5Ip35Zb0?=
 =?iso-8859-1?Q?pRRsuu0zFa0NthydCjsRxKsPHCHA1Lisr7+Ifvrv6NdYUuZXQX2xVrZpk4?=
 =?iso-8859-1?Q?uEDyJRSiPOFRBu5MQL+xZSINjk+AraRyctp4okSv2JHnmXbT2mui4QgLmn?=
 =?iso-8859-1?Q?Wm8NGPJ1QkrIV51UjgAKt9UU5RbFpSXUhmeq6Fmsm/85cARFEgfQiHVWP9?=
 =?iso-8859-1?Q?i2FlahTYZasNwxPM/Z7Tpsd4Ae55DqQPdG1kfa09W3Nd55XrWQT8jbRcMp?=
 =?iso-8859-1?Q?wEJLn3+POvFK2mRWhbf17fiDyg+j+lQVesu4y4XBKbN+JLfhrsKGHy4aVi?=
 =?iso-8859-1?Q?ow/3VlYF+K7fpt9Dm4FKR03Sh2TDzFZ81YeFntm7Yg6VYQVK5T8sDeELFR?=
 =?iso-8859-1?Q?RCBKnpx1Um+RV1k7Le7idxXX8c0rs/CGmdsQbWQOXiikPdR2j9EnPy/P9H?=
 =?iso-8859-1?Q?CluRigLFf7st2C23dENYTOhdRt0pVeE5hmUSpzVlSbAPx/ZrP+fvaG0Lg5?=
 =?iso-8859-1?Q?Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?GWwSEbS8wsRuXamwW1buOqAd0FuhSSHmxUnwUBBOsO+tR9YI0F8PRtfMdh?=
 =?iso-8859-1?Q?Y1aA4oAbx4tWJOVWGO1/S2vzJqX8F4ZML72kc/djIj9OPWMBBKhN0D/PE7?=
 =?iso-8859-1?Q?hUjJcplXf7qXhSvOAFTm39qRZGavfMH3hPBoD4WBmZyVd57IJmqrRjfnXQ?=
 =?iso-8859-1?Q?MRPPjQvGdHA9Z2+7o78s8AmK+64uM3jZ1uppRpUCWAU5Dc2mAyK/2Ih0ZE?=
 =?iso-8859-1?Q?5/lFTIPHGUuTiCyfNBZqaBfG4Uy/jld7sbrmE5Lx0VOrXynIfu11jv+g+t?=
 =?iso-8859-1?Q?KCv+c7TkhLBJqoI+oO5qYchlevyP1NWnyko71TUVPnPVYd7C4h1OpCGs9u?=
 =?iso-8859-1?Q?bdFm1iA73n7Vpg+aOSv92kTw/FGs/VkYKVrbJlpYQLStxgzRc/AjLT1U9k?=
 =?iso-8859-1?Q?vi9DaOjkG1+BBiEqGqzdGdYcz4Kl6B2OWXYZMgrueQreMH/eAVRa4ZQ41F?=
 =?iso-8859-1?Q?Im+h7ILgn4dPLZcYAe8qzW6UJfbZaFEw9pQamHSKvKibf/a7PO8fxnDW7y?=
 =?iso-8859-1?Q?nbE0ose37409S8re6PqDA6G0HOhggaj9FUgQGjIz3Is/K4a52mBO4+buor?=
 =?iso-8859-1?Q?CN9WLtO9TkrA6p4SW/qkwkgCCc+7GOSJelCCIhYzOr2dL0NbbJu1f0I98T?=
 =?iso-8859-1?Q?wAY/T5KIe1IrzvIZwmhsGpuGBeCMW6fopWBTEuB5vSJxPER08/CuiE5scz?=
 =?iso-8859-1?Q?oY6NYL+GgFNbpnsolJu6HPNHsM3K7gEyf3NMQL0SHB5vwfSorfghInR/5P?=
 =?iso-8859-1?Q?LMGEGBjsCxM7LNU1eBE8msCLbuTwCnqfq1rz4PLiaaSW8BoMjygeF49nZm?=
 =?iso-8859-1?Q?zZAYWcLkvVG4CuDZwfWLL9yf18+It2qHATV+NU1BKJQSiWgrOFA2lkpCSl?=
 =?iso-8859-1?Q?z77pflIl7y78FsYajobw6aURHX7jKjvPP/QgAbRTDjFjRzZex6ETxGgIvb?=
 =?iso-8859-1?Q?r/I7pcw1SCJHmxlWzeVIXgCdq7QtLXzbaYaDznFrMZ31u80gD5VkbLt8+0?=
 =?iso-8859-1?Q?1xMNHv1WY51sxRQs4yMcY0TdjOs/l+OIDJH2ksOfwOdFlMkQFOoZxzJN7/?=
 =?iso-8859-1?Q?iHlFukr/TVxuBCuAZk60I1mTsfKlakN3uPZhTPa6+cB+VS+iZ4Z9da5Nqu?=
 =?iso-8859-1?Q?KPyQWrDwfWzqwUO/3W/OrEhbst3uRGez/lPAhCIscGAMcSd6tUlYXv1mSy?=
 =?iso-8859-1?Q?yR50i+UuwFN9hMUh4c213gCnDRw8eTi87eyOZUzuPGSu2rEf2oB2+2X761?=
 =?iso-8859-1?Q?+7cGLqNUU7XyXP0UOjpO3RP3frJhUOOzBvM6CkHlMS7dISntDkYd9bQKho?=
 =?iso-8859-1?Q?hOEdSJcSyu6cAAIr7V7WwaYjouwGdsU0ugk0p3pwnfEOCba1Ao+djTkmuY?=
 =?iso-8859-1?Q?np0y7p3j6cXsa3c1d8B+cHNG/FXhumaNTZSKtGbJCdiG4bbjAThDgvmsDB?=
 =?iso-8859-1?Q?9pYiSnltxFgEVLgH657HaOcsPjI8p90AS2iLkXm/lwSavoUMsDdyn85tq7?=
 =?iso-8859-1?Q?ha27PJq+oeMjLG5dBeCzCsRkiZQMGJSOx/C5ePLmDewQK7HTg+6kwjtIWi?=
 =?iso-8859-1?Q?M39gLn9MwBSBpq/8KdMCcYEsZuTScKFW7oi4c9g9lT0VN5NMvvkXf935+v?=
 =?iso-8859-1?Q?pn9tvCTPX37n3GU5/A4p+Pkho0jB6peAXL90rCATVU9I6DnbHWritspH5B?=
 =?iso-8859-1?Q?X19et/b1A/RrdWQ3vlw159LAP5Er4D9NPZ1ciKYt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a321ea7a-ddab-4cb8-8591-08ddfa98d197
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 12:00:41.7977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: izusjFfswOO6GbqCTv9V1yEx9QP25lovhN/PBVZZZoFdPUY+bz2iwH2FRCtLQdl2D+h2g2GoE1qXC+EuRWSXYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8515
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

On Mon, Sep 22, 2025 at 11:06:02PM +0300, Ville Syrjälä wrote:
> On Mon, Sep 22, 2025 at 10:35:42PM +0300, Ville Syrjälä wrote:
> > On Fri, Sep 19, 2025 at 12:12:22AM +0300, Imre Deak wrote:
> > > Read out the branch devices' maximum overall DSC pixel throughput and
> > > line width and verify the mode's corresponding pixel clock and hactive
> > > period against these.
> > > 
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  8 +++
> > >  drivers/gpu/drm/i915/display/intel_dp.c       | 62 +++++++++++++++++++
> > >  2 files changed, 70 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 358ab922d7a76..73bdafae604f8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -552,6 +552,14 @@ struct intel_connector {
> > >  
> > >  		u8 dsc_hblank_expansion_quirk:1;
> > >  		u8 dsc_decompression_enabled:1;
> > > +
> > > +		struct {
> > > +			struct {
> > > +				int rgb_yuv444;
> > > +				int yuv422_420;
> > > +			} overall_throughput;
> > > +			int max_line_width;
> > > +		} dsc_branch_caps;
> > >  	} dp;
> > >  
> > >  	struct {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 8cc123b0fd752..dd082d2fcc968 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1042,6 +1042,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > >  	int tp_yuv422_420;
> > >  	u8 val;
> > >  
> > > +	/*
> > > +	 * TODO: Use the throughput value specific to the actual RGB/YUV
> > > +	 * format of the output.
> > > +	 * The RGB/YUV444 throughput value should be always either equal
> > > +	 * or smaller than the YUV422/420 value, but let's not depend on
> > > +	 * this assumption.
> > > +	 */
> > > +	if (mode_clock > max(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
> > > +			     connector->dp.dsc_branch_caps.overall_throughput.yuv422_420))
> > > +		return 0;
> > > +
> > > +	if (mode_hdisplay > connector->dp.dsc_branch_caps.max_line_width)
> > > +		return 0;
> > 
> > Looks like you only initialize these when the branch device supports
> > decompression. What about a branch device that can do pass-through but
> > no decompression? Should we even be checking these when doing
> > pass-through?
> 
> Ah, we read them from the decompression_aux, which I presume is always
> the thing that we want to do the decompression.
> 
> So in the passthrough case it will be the sink, and then we take the
> early !is_branch exit from init_dsc_overall_throughput_limits().

Yes, for both the decompress and pass-through case decompression_aux
points to the device decompressing the stream, and the caps will be read
out for that device.

In theory even in the pass-through case the decompressing device could
be an (SST-only) branch device, in which case the caps will be parsed
for that device as well. Granted I haven't seen such a device yet.

If DSC is not supported then the caps will be left zeroed.

If DSC is supported (either via pass-through or just decompression) by a
branch device then the caps will be either the device advertised ones,
or INT_MAX for caps which the device doesn't set a cap for (i.e. leaves
the DPCD reg at 0).

If DSC is supported by a non-branch device, then the caps will not be
read out and they will be set to INT_MAX.

> Same for eDP.

Yes, for eDP if DSC is not supported, the caps are set to 0, if DSC is
supported, the caps will be set to INT_MAX.

> > > +
> > >  	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
> > >  	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
> > >  						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
> > > @@ -4204,6 +4218,44 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> > >  		    dsc_dpcd);
> > >  }
> > >  
> > > +static int dsc_branch_overall_throughput(u8 bw_code)
> > > +{
> > > +	switch (bw_code) {
> > > +	case 0:
> > > +		return INT_MAX;
> > > +	case 1:
> > > +		return 680000;
> > > +	default:
> > > +		return 600000 + 50000 * bw_code;
> > > +	}
> > > +}
> > > +
> > > +static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
> > > +{
> > > +	u8 branch_caps[3];
> > > +
> > > +	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 = INT_MAX;
> > > +	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 = INT_MAX;
> > > +	connector->dp.dsc_branch_caps.max_line_width = INT_MAX;
> > > +
> > > +	if (!is_branch)
> > > +		return;
> > > +
> > > +	if (drm_dp_dpcd_read_data(connector->dp.dsc_decompression_aux,
> > > +				  DP_DSC_BRANCH_OVERALL_THROUGHPUT_0, branch_caps,
> > > +				  sizeof(branch_caps)) != 0)
> > > +		return;
> > > +
> > > +	connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444 =
> > > +		dsc_branch_overall_throughput(branch_caps[0]);
> > > +
> > > +	connector->dp.dsc_branch_caps.overall_throughput.yuv422_420 =
> > > +		dsc_branch_overall_throughput(branch_caps[1]);
> > > +
> > > +	if (branch_caps[2] != 0)
> > > +		connector->dp.dsc_branch_caps.max_line_width = branch_caps[2] * 320;
> > 
> > That max line width calculation should probably be a function as well
> > so that it can later be moved into some drm helper file along with the
> > other functions.

Ok, I added a DRM helper instead as in:
https://github.com/ideak/linux/commit/7f7cab2746f4

> > 
> > > +}
> > > +
> > >  void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> > >  			       const struct drm_dp_desc *desc, bool is_branch,
> > >  			       struct intel_connector *connector)
> > > @@ -4219,6 +4271,8 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> > >  	/* Clear fec_capable to avoid using stale values */
> > >  	connector->dp.fec_capability = 0;
> > >  
> > > +	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
> > > +
> > >  	if (dpcd_rev < DP_DPCD_REV_14)
> > >  		return;
> > >  
> > > @@ -4233,6 +4287,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> > >  
> > >  	drm_dbg_kms(display->drm, "FEC CAPABILITY: %x\n",
> > >  		    connector->dp.fec_capability);
> > > +
> > > +	if (!(connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED))
> > > +		return;
> > > +
> > > +	init_dsc_overall_throughput_limits(connector, is_branch);
> > >  }
> > >  
> > >  static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
> > > @@ -4241,6 +4300,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
> > >  		return;
> > >  
> > >  	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
> > > +
> > > +	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
> > > +		init_dsc_overall_throughput_limits(connector, false);
> > >  }
> > >  
> > >  static void
> > > -- 
> > > 2.49.1
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Ville Syrjälä
> Intel
