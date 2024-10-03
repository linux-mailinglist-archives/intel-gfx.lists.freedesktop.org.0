Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CEC98F389
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 18:06:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1159310E8A5;
	Thu,  3 Oct 2024 16:06:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QK1s03GT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A6710E8A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 16:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727971587; x=1759507587;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=khjYiVjO4OD7m46nshp4A0IGhi3kLrPrGfGYD5IDcTk=;
 b=QK1s03GTsNM/TAfwyR7G/icSvzXCHk+IJ1VA+7TAF2AtFl5gQCTldMND
 Vku869VAlAdFxwiMXv6fwxHSHncZuNVmF4fAX/6Q1VFHZ/tCAxehbSlML
 09bN8eahJiKWzKIV4hzdlpTcQiWoPql6ThhIDjCfkLXe7fCGrsMGCGo2Z
 boC8miod+wnL0W8EQ8nqMAmk+nZoqtTYJm/O0Ta01atXhJFxyo/XuhtsP
 HMI2kCX4t5di8oNyG7P08erA7RF+z9riAFuv4Zd+wZQfxTPBIRbiHd20H
 17eW/DS5/+iCsS0wn2rHuYD3PnuNGZmwCOHI6XyuFkd5rVLb+KS48WOGR w==;
X-CSE-ConnectionGUID: Z14jGTdYQL2N6WggRYfwXg==
X-CSE-MsgGUID: zwNYZrX3RM+1kNVsH8gD3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="30971695"
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="30971695"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 09:05:46 -0700
X-CSE-ConnectionGUID: EKFLSTkgQpuqGaW2D5/HWA==
X-CSE-MsgGUID: qbXyNLM2SLWGNa0tOG8r1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,174,1725346800"; d="scan'208";a="74836197"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 09:05:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 09:05:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 09:05:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 09:05:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 09:05:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RqRg2/gzXk8zlQZxi35yewyOdik2SdgWd76VzmidPYmQC1vWtLKj279pwg/OIhazMFWcPzwA7E21NZHK9AYednlLLL7wFRgHdYFGbHWO+EpaqHyiP8sep7G8Liq6IHYs2FHfdYk+TyZpfpASxbrF90y0avH32xIUDyxJ9eWuJzvnk0ompY2LVTKvKw8rWXcBhuaDaX86pEn8LI4W+sXu5joL5OMuP8/vrQfD9adjNAxeXj5b8aAzRtMOr8tLnULUnMgqqGakE2rGdB/sVjBwPr2seWxm/SEArvVHxFR3PIhZFIu4Ml6dsjDnX3DTjB9/VaY7Nmn4OVIiTRq3hZghEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=niyV4PvPhAs5THOAw9MQTcMLI3xFL2KWE1NEhw+HOOw=;
 b=QySCcisB7InEriDeRDRC/e0VB7DK2o/wkfOvvyJElIpZmySgKqgLo1f/MYKG0MRAmYMtRUwq1H+pu6T7FOoIf5+ZkVOAVHu5ZgySIdn6zV/mmdSCZEAo4lVKvwAArM7EPCykjR5+e7MLecVtcGrGv2+xw/O4UDJgnwLgjK/hoXMMFv/ueHoDmQ/UKh42vgx/hNk7MeZz5lERbp1Aq09qmerUNIMQb5Ly6nrejPf/VE3kFMXQykT41nCYd+BuFmgSQUpufEWzZACgwcFCZrx/lq2io7beuGopI80yjtHj51H4/P0QrVsUbwQaTmbfniXYiCrNDOmzAzS4+A9r7IW2UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV8PR11MB8680.namprd11.prod.outlook.com (2603:10b6:408:208::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.16; Thu, 3 Oct
 2024 16:05:42 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.014; Thu, 3 Oct 2024
 16:05:42 +0000
Date: Thu, 3 Oct 2024 09:05:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>
Subject: Re: [PATCH] drm/i915/icl: Update csc and gamma enable checks
Message-ID: <20241003160540.GL5725@mdroper-desk1.amr.corp.intel.com>
References: <20241003090341.3140997-1-sai.teja.pottumuttu@intel.com>
 <Zv57pzLX4ltH4w00@intel.com>
 <20241003142237.GK5725@mdroper-desk1.amr.corp.intel.com>
 <Zv6rGHmLiL5GrpKG@intel.com> <Zv6xBKixcWn_gJEW@intel.com>
 <a80d1e55-a294-41b9-8369-495450fa9c34@intel.com>
 <Zv68V6A_HTQihdWu@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zv68V6A_HTQihdWu@intel.com>
X-ClientProxiedBy: SJ0PR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:332::11) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV8PR11MB8680:EE_
X-MS-Office365-Filtering-Correlation-Id: 75bab77f-1036-47b2-1b41-08dce3c53b81
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?QnvS1lCVT3AgWflAkKQin3IfgDFsMwi4KQBg4iLpbQGFIMqSaiU8GA9ZLX?=
 =?iso-8859-1?Q?ul6SjcalrAmRsZ24V/We3AN3NhNBg074ud+mThlqBN3O9LDrah7Ud0K0HK?=
 =?iso-8859-1?Q?z4i9bDaBrj0fj/NCnWg7Lr1BjftLjCx0bSnuKr/Darek+pCjkrCjVumKAV?=
 =?iso-8859-1?Q?1rJ7TAaEhcc0IsFTbXIVJxeE1CEt2FpVEtOdT1nyltKCMTnkrjgqpzU4Uj?=
 =?iso-8859-1?Q?ugdlcZxHmwEzPDwS7GPq3rIyNWRR2ojp2I0tLtBdQ1J1PXwSShs8gHxRER?=
 =?iso-8859-1?Q?kdqHPo6cnc85sPvqefWQrp1JrK7D+ZaIqC9Lxd1rRCWJlC4g+pQN5qwrP7?=
 =?iso-8859-1?Q?UOzJZ7HD9U4QGb1CCOSeeT/YOMqd4fn3PmABPulk6yRGWXmbeHiqXpd8IA?=
 =?iso-8859-1?Q?A/HJ6VxK18IFWkr6mjFRG2GQ6uZzwXItudNMKUqhXI+j4DLq/3JMPYsiFV?=
 =?iso-8859-1?Q?y21mXRCiRe94HXOaC39d/X5ah47qzN+rzeKnxreEYwDOXaMJpllP/oZuDD?=
 =?iso-8859-1?Q?dQjGjkscnIenPfIgeIfSAnKrY2Uz1jYutsAnUXybJhqUiPuwWYMMc0l+nW?=
 =?iso-8859-1?Q?YhDs1NbUzau5170tS4GJPNP1/cCKEl8nqX4qZQCk+lIK0zGDcRprmb+7f4?=
 =?iso-8859-1?Q?O+JV6gQb7iV/a2Vg+m7dJOtOVpvdk2YUolQhb46Lfg7LkGSnAeOL+5f6pH?=
 =?iso-8859-1?Q?w7N4mn4PwlEujm5MhFZmvfSdB5dBOaEafxnJkOtL8k8vRWm76ao+4ZPnvX?=
 =?iso-8859-1?Q?SjkDX4J/J0nt8p5BxbosFNzZ2pYGpHDvVi8GwPgEVI2sV+2YEqNwjtpVwA?=
 =?iso-8859-1?Q?NW4K6fRf5jesI95Al8/HtJBM4eDhxctVhA6o8B6SyPGniU3D1yKTN5ys8a?=
 =?iso-8859-1?Q?S9ES4Ps1eY2CCvL//Uvkeztewm5aEd6tq4XzD9jDvgZSX8OIXm/YWiAA3W?=
 =?iso-8859-1?Q?Y9KzuFdxN7lybLTH6nJn0O3qHkft8nb02b9c5T41ItiNQU35byBYJB+8r7?=
 =?iso-8859-1?Q?QQUidKCwvw8DjWNnTJVLrmdDMmnLQL6KyT6liIMt5Fyf1lplFhIXPY07HN?=
 =?iso-8859-1?Q?eP7J90GLpdHl2gKQHAnVYmR/3fSSW0B8ejTcb4aeBRE6XdCiNw5Npat2Pb?=
 =?iso-8859-1?Q?e+4fJXhdCKg/4SsJEy/HUloHOpYdF628XS4THa8cEMuFoQ1+LWukyDIRyN?=
 =?iso-8859-1?Q?CV2KO6X4gmDbbvGN/hFS5/J5xS1Zv5XDvqBlAu8NbjMNN3JLpGffohbsZD?=
 =?iso-8859-1?Q?T/3nPAh1A0+FzkYW6Et/Y5R/c17hwHtss4z0SgeHBHV6dyB5jyG+dmZOPp?=
 =?iso-8859-1?Q?/I7Bm7k8LhfsTOQ2Fbg0HlvDxw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?+1B9a7XnungkDoZoEX6w+zK6kxmThueXhU3Y5HxUmUAWi2bz964hV4lqEa?=
 =?iso-8859-1?Q?lJ9faws3r/4qFHVhsendXCWWgHy1984dhCr0DljbUmG+GttPwvw8urmWa8?=
 =?iso-8859-1?Q?CeZpS/7QqINv0J1o+7kFk4L24ZgJabP/nXOObWptqn9g0OJytNA6zkS9Nl?=
 =?iso-8859-1?Q?b8au5NDS2AE8P1KoHykw7NZCapKaMLSsp6uQo9SC5OAnq0SSzeEFi4DMVt?=
 =?iso-8859-1?Q?a1DTOLAzfq3Y33AEteGe65HqyFJmvb9Okc8Ey2McpwRlm1opZVxTcMM0FS?=
 =?iso-8859-1?Q?mZA0zgv9gRecSoZHkkoSdSnRAN9ijJTV7GjSBUa4rmjZPwbP9pKyEmqDbe?=
 =?iso-8859-1?Q?fEdOQYOI09XVw5tDpKv1a1HfBL84pKCNK8a5g1mGAhQtgqYPeHqLqZkxTC?=
 =?iso-8859-1?Q?KjgTpaV6WGSicWG4iEuN4lTEB/Qgz/UX40Y9HxAmhOMokm2D72R1YJuFjH?=
 =?iso-8859-1?Q?kCNMl3vnTCHOjdT2jx7VHhcrfcCNJGFHiyGqTbshpqA6Hg3sdsz0QXwngC?=
 =?iso-8859-1?Q?xP2IW63YPJL70sTJGifyk9vzNEZKloaVo1tjlokVEirzEQ/JvyfMcpzwOx?=
 =?iso-8859-1?Q?5/sf7B+Ay2J7SGFu/92m+EE5bzDhnVNeBS5TcFTaf/cksOWkuypjnRY7lE?=
 =?iso-8859-1?Q?sXRVpkOZVWTpP+4jh63aDXMhsug9AhQ+Wumwg8sSufr1SlcsF+WlGmwrAe?=
 =?iso-8859-1?Q?cGJMfkHwoQfyvTbi6HiUs6K6S0qfdwqI28SRv/NVLcSdb24IUezTn82PpT?=
 =?iso-8859-1?Q?o47GW8yIJrY+tuo5niRFCPUmCZVoCdjcPZ8gj0bohMN4SqiBBscZ2Ddyzj?=
 =?iso-8859-1?Q?LNoo5q6F9UfCQcPAr3fI/o6RmyCRjUFofT/oytDLeQfkeNo55qbHs5pzMH?=
 =?iso-8859-1?Q?rd/xcc1XOIQUSulK6GLiVQD2M+dxlyFtlOQQY7oojFdk9VRqqXaB6HFMJe?=
 =?iso-8859-1?Q?pfMAp2Eq+zv0S264rsZgp1SS44KsAsAhGBCt8JU/hnaT8oo5qSIHJ6WxGs?=
 =?iso-8859-1?Q?gMQ10wxOJ9ljbU0eS43fv2Q5/w3+YLLBkV+7hIFiGWi+CcuqV8nERM0y1d?=
 =?iso-8859-1?Q?W9U0MN/g/hwD74C1bDobhyi1mblzkw5TPOje9x8LgeSRTZVS5qOW+GmVpU?=
 =?iso-8859-1?Q?/L8GGotCC0PIqpuMYC6iDpNbWrqiPukvsrUiIyqWwzCMaRmb9fgz3ZRPbH?=
 =?iso-8859-1?Q?gl9H10pOSNEEUZuv4c/cZ6xRjBf1Cj7ffK3wHb2oz0Zzr8wX5iw3AdEkbX?=
 =?iso-8859-1?Q?TyZAIkLoXkGfWJ6J3tyuec3lwVt1L4EenHfQpGmLc3brpOEMtWblKxsqwg?=
 =?iso-8859-1?Q?noECkM+hDp0IY6Onln2w23QC0KSIuU0+R5u2QGy4TpZ2DJ+s29SUhWjYOD?=
 =?iso-8859-1?Q?nrvylkrNsmCe5h4eF0fSOd5sw9A4AX0usitiSR3tGUfmiqmaH6dNO68aU1?=
 =?iso-8859-1?Q?pXhDKrUTnQiXuKMNvo9sW3CH+YxvWv5epBML+J72OS8NbVepUN3M8aBRIb?=
 =?iso-8859-1?Q?3Kx9URnzICRxUcTCHOge/mRIcwccj70YUtKtDTeRajepo2Lm724l+SI/i0?=
 =?iso-8859-1?Q?w5tiTkyd30/QvMg6vhfG6aiEgr4Q6KZtQ3yim4e5LETJqMJnRmghE/eMW6?=
 =?iso-8859-1?Q?Xcn961RWxZlwtavc0OQf3AmOUo5X8OxD9/Qlyk4KYYKJClmsRieQp2AA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75bab77f-1036-47b2-1b41-08dce3c53b81
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2024 16:05:42.7352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7T8AdBIFkWyLuGUUFC4QK0i8ZX+ydoSUzfKLVzakgJInKaUl+flvcSb0R5saamr/X9cRjwtg+4reQTTkBh++WPJAuW2VyDDLNaubBx+ZSxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8680
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

On Thu, Oct 03, 2024 at 06:46:31PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 03, 2024 at 09:08:53PM +0530, Pottumuttu, Sai Teja wrote:
> > 
> > On 03-10-2024 20:28, Ville Syrjälä wrote:
> > > On Thu, Oct 03, 2024 at 05:32:56PM +0300, Ville Syrjälä wrote:
> > >> On Thu, Oct 03, 2024 at 07:22:37AM -0700, Matt Roper wrote:
> > >>> On Thu, Oct 03, 2024 at 02:10:31PM +0300, Ville Syrjälä wrote:
> > >>>> On Thu, Oct 03, 2024 at 02:33:41PM +0530, Sai Teja Pottumuttu wrote:
> > >>>>> With ICL, we have a way to check if gamma and csc are enabled on
> > >>>>> a pipe using bits in GAMMA_MODE and CSC_MODE. So, use them as well
> > >>>>> along with the existing BOTTOM_COLOR checks.
> > >>>>>
> > >>>>> BSpec: 7463, 7466
> > >>>>> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> > >>>>> ---
> > >>>>>   drivers/gpu/drm/i915/display/intel_color.c | 24 ++++++++++++++++++++--
> > >>>>>   1 file changed, 22 insertions(+), 2 deletions(-)
> > >>>>>
> > >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > >>>>> index 50f41aeb3c28..1bf36898dc7e 100644
> > >>>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
> > >>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > >>>>> @@ -1076,6 +1076,26 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
> > >>>>>   		crtc_state->csc_enable = true;
> > >>>>>   }
> > >>>>>   
> > >>>>> +static void icl_get_config(struct intel_crtc_state *crtc_state)
> > >>>>> +{
> > >>>>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > >>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > >>>>> +	u32 bottom_color;
> > >>>>> +
> > >>>>> +	crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
> > >>>>> +	crtc_state->csc_mode = ilk_read_csc_mode(crtc);
> > >>>>> +
> > >>>>> +	bottom_color = intel_de_read(i915, SKL_BOTTOM_COLOR(crtc->pipe));
> > >>>>> +
> > >>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_GAMMA_ENABLE) ||
> > >>>>> +	    (crtc_state->gamma_mode & POST_CSC_GAMMA_ENABLE))
> > >>>>> +		crtc_state->gamma_enable = true;
> > >>>>> +
> > >>>>> +	if ((bottom_color & SKL_BOTTOM_COLOR_CSC_ENABLE) ||
> > >>>>> +	    (crtc_state->csc_mode & ICL_CSC_ENABLE))
> > >>>>> +		crtc_state->csc_enable = true;
> > >>>> We don't use the old per-plane/bottom color way of enabling these.
> > >>>> So this is not right.
> > >>> I think that's the reason for the patch --- today we use
> > >>> skl_get_config() which *only* checks the bottom color settings.  And
> > >>> that approach is documented as being deprecated (although still
> > >>> supported on current platforms).
> > >>>
> > >>> If we're reading out pre-OS state programmed by the vbios, we probably
> > >>> need to handle whichever approach it took, right?  Or are we sanitizing
> > >>> this away to "off" somewhere that makes it okay to miss what was
> > >>> programmed?
> > >> I think we're not doing anything. I suppose some kind of
> > >> assert_legacy_color_stuff_is_off() thing somewhere could be a
> > >> decent addition.
> > > Or maybe we don't need to do anything. The state checker will catch
> > > this problem with the current code as far as the pipe bottom color
> > > is concerned. It won't catch inconsistent plane programming though.
> > > But we also don't have such a consistency check for older platforms
> > > either.
> > 
> > So, are we essentially saying that we can completely remove BOTTOM_COLOR 
> > from here and just move to using GAMMA_MODE, CSC_MODE for setting 
> > gamma_enable and csc_enable?
> 
> No. The current code already works correctly, and pipe_csc_enable and 
> gamma_enable are not meant to be used on icl+.

Then does that mean icl_color_commit_arm() is wrong since we're
programming those registers there?


Matt


> 
> -- 
> Ville Syrjälä
> Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
