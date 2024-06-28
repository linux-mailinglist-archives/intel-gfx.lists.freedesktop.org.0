Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B32791C5E1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 20:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948BE10E0A0;
	Fri, 28 Jun 2024 18:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="es+KgMv8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90EAD10E0A0;
 Fri, 28 Jun 2024 18:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719599784; x=1751135784;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=OL9Q8GIB3jk6wnc+r638732MWUoyrrPN3BG+Z9ErLe8=;
 b=es+KgMv8NaiMwbNE5NpmUDzntI5P4YTKwwL6SMte7/eVp06cN/PyJ1Ln
 5Ecv44+3395xkfCcxkoFGWTzycvaStp/V3hE7I6azXh0FJ4mf3gvtKHQH
 veZPhqc7ahm01MiRkYpaXa29kvBGevL8dN6+UZJ5Q5H8obIPZ9hQXqPcm
 pQRZL7Lh3NlVh4jBi0ClQ9SendmytmHHazVUkFBGK/OMlypkoXzaiL4TM
 5eSjUBi88x+nzE7GcZg0iTPKvyZlQRZl5RaLVKUx/v1Q8am2lSDmoAQgb
 1LdMXRRRYKDiNudGUffwLQJ8e/vT9n0rap11RPsa+jhg/f31i1zS1ixny w==;
X-CSE-ConnectionGUID: OhDgQMO0SPGQHVMdTsSLsQ==
X-CSE-MsgGUID: YTB4uBUUTOCQsxHjKXpG7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="27484146"
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="27484146"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 11:36:23 -0700
X-CSE-ConnectionGUID: XiWt4Pk6R0OxHGAfjt5aAQ==
X-CSE-MsgGUID: w3+G/Ma7TeONo8jvgT/Lmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="44934428"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 11:36:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 11:36:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 11:36:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 11:36:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+xaQjfKjYDuIY6J2QCzs81bHZ32FFfA0R+CRY662eEZmUqz3aIPdtaZqNVS/2fPnt8E+hoMQKsyYmWMcFik7PPo04IiaP7D9roNToMfeyL5bM3B4Z38FTX2WQ6ocVzKaVNdn7IuD3g5bn0tAwwLmS3Fe4KvQsWOs8vprGPzaHAGj/qgX85o+JSjJkHm7SklHMkV0imUlCRQcbLjm7C44yTkoFuI7ySFVqY85QkYe7O5ybQWDpcuwfgHP7+0lXBzhVx6+uAE/psUxZZmNlfeHg+dDbIXuDIZNu7cXQSvjzqhbF/TsVUwvQbWWFx906UC1nb2kJwNtYATq7etXYSNjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DNd1DdOcgouc34oJft6ISuigLayXnDZCNrE99FJ6/KY=;
 b=fR7llKqNzJdsDOnu86QylmM+cAc8NgY8H+QF8ay/rNuIoF5z0uLJebKmJHs4KQnrOF7iH4qSsDjYviVqj34QRH7qjgEWJMH031xtUXXak9opFwHrOhSGjrqicQ0pzEtkNAFn9BUsNdvsBB/oPCW4YxhFzTDEMPp6bQWkQrrjZ+SIX0RXGrHiEWsiagZeUzKqEAH5RUe0iJIVWBUcuiqivmA9HuuzQVzXBBzhcqAYrV2XjNLknlzK1TOSWeSiaRiHNLaEvsaNd2ib5AXiG6F4lVutapFI8IHSg5tqpYatC9Okc1nTAq1RALqcfXPxFYOeA/Z/hGo5tznhpiBEZlJTaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.26; Fri, 28 Jun
 2024 18:36:20 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7698.033; Fri, 28 Jun 2024
 18:36:20 +0000
Date: Fri, 28 Jun 2024 14:36:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: Matt Roper <matthew.d.roper@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, <intel-xe@lists.freedesktop.org>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <Zn8CoGF3QXVuZdc8@intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <Znw5jj7YROnoWD9j@intel.com>
 <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
 <ZnxPKAIPax-95pyk@intel.com>
 <20240626174224.GZ2906448@mdroper-desk1.amr.corp.intel.com>
 <thill5bemih77oisv2fcbgote36xbuh6bbzobt2ppvqabb5rp7@xfwvht77tien>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <thill5bemih77oisv2fcbgote36xbuh6bbzobt2ppvqabb5rp7@xfwvht77tien>
X-ClientProxiedBy: BYAPR04CA0016.namprd04.prod.outlook.com
 (2603:10b6:a03:40::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: 919e9b6d-067b-41c6-332e-08dc97a133f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?XRXTp8SX43m0dP7pL0JPkOIC/XjY/0CfTDHJ11MljoEwFvA0cPd35+XiOP?=
 =?iso-8859-1?Q?HzsddWgDKtrTq2/UO178AMlcPvw+BAd1Op3ffURqZW69kRevOblOTf8DvZ?=
 =?iso-8859-1?Q?wa51GkUsIkjSRjAnhtO4fGCSJTixecfR5l9e+jkqIpiS38JG0JtkoFMEgI?=
 =?iso-8859-1?Q?wlyMprSpI+AFJoyiC2rHYpwy3GwnPHJaYB+eEOcCWoLy/0dqlFHv8TgRSj?=
 =?iso-8859-1?Q?WftIAmt2r+YAVzk89e3O8q9c1DlGhqVByUdQDPjrrTR2egKWoepy9rvmPa?=
 =?iso-8859-1?Q?2BGNuVNxARAzs7mpHzi6+l6V773d750w3fatBHUAUYXn/Cb9XKyQai/qSG?=
 =?iso-8859-1?Q?d3kVY0xPU6l+xCu+f8dewbpR+dpe41tWTZHCquwneZvwmCLyxTqIWxgt86?=
 =?iso-8859-1?Q?w/MPtyd7Y6MdC7UmEVVNXFtZTlXEwnLW47qsvQKwAvXkMVJs0LoIhjigag?=
 =?iso-8859-1?Q?RJllawI1/O/qJJf0VMWCxZ5K9Hupo7fLtFyYqq5rlfrryM+rDyLgpcuO0D?=
 =?iso-8859-1?Q?DnYXu5ELVrhLfhGAt59TvMR02yhosIi30Y8FIzRGoqsVLmFbkx8ZDntHoM?=
 =?iso-8859-1?Q?TXT3EDS1lLjMjQISb9gO+7YW7IVJ8DPleVRNO9bRjmsnT2fFB9nWAU6goH?=
 =?iso-8859-1?Q?VX3T2IsX/CYVnJDSqQ2HYdm7omevbQ4bwBrhwauaiCdvyJSa//jkEk2D+q?=
 =?iso-8859-1?Q?l3FGYJUHCsSB6eZLORdpzbYPf6gpF78hwSPR5sPn3OK3b0ZeBzQmbzp/fD?=
 =?iso-8859-1?Q?eznMemF4czl/mcKqXcHaAEQvcXn3N2eh7sr9XZ1dyV2vUQV9HmxH831Txu?=
 =?iso-8859-1?Q?83ALHVXP8gkDi0VskTbN7KLzHz6N41uiogeRrRPIeXkQ/CBdqlE2PGEH0S?=
 =?iso-8859-1?Q?FQuSjxs9Y9dDYx7yVfZ1OJb4wNpBnWKaPPOQsjMC6BMnFoddqToUq77VDJ?=
 =?iso-8859-1?Q?SgVcxp9vl0TPCXDlvkA39xrPZmNE2B/xx+Z6IFLuQMggx+xwLfe7asDS+T?=
 =?iso-8859-1?Q?cTIxymtb2YVScJRufrkhSoxPFu8vjBsvUl88+LufiyI7xvNnbTtEJVGKBp?=
 =?iso-8859-1?Q?GDhgl/Gif+55hDjadYRpxzmq0TD7C7Apiz4gUEemn8Poqk9T61DqlJxdhl?=
 =?iso-8859-1?Q?ilojo10f9aNNnFxetyoCKx1TLZrAbm2L3b7Vl0liW5UXAU21ZFvxul17kp?=
 =?iso-8859-1?Q?YfUWrxkxbQJ7Z8TECqNHPvmGPFFnhvZ7z4Valg/5AT/sJVZo5g+dBwLkyf?=
 =?iso-8859-1?Q?KKNK5MmpuyxvytyRGPTHU6rZjRZqaSJaOASPWYk+ELUNmlK9LWU9OE0val?=
 =?iso-8859-1?Q?+k/aina5N0WlImylvlTZThXbbyhhXwK03DwuFYC9a5YDF72Anl+qTOXWO3?=
 =?iso-8859-1?Q?zeUilmAK6OIeZmGjLgDA5iSehTlm36oQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?KUefTaiu2ojqzw9MdoyJgncNoRzpo+JPO9glKrK/zb+VS7OWKes7mtBiuV?=
 =?iso-8859-1?Q?v1t77h522FTO2gqncl0gvJzWvBs/4/Nkay3TF7OfskDPbl1upCi/YIlT/X?=
 =?iso-8859-1?Q?l5LH+OSJFveLTTK5cbCMBbx+MA4hex39G4T48GI9rsUGY0ueqhWNmSgvxW?=
 =?iso-8859-1?Q?7LWn4IMl5gTO3V4MX47S5vrCsLkAY51tIqbb6+GjoI3V7Q5WUMJF1S9XuI?=
 =?iso-8859-1?Q?Ml70nRwYHoDemGEY/p2W3QORJ3MF5QyzmBd5MWt4NRuJlut/zhskTWoOkn?=
 =?iso-8859-1?Q?Xu2/Y8IlH0nWHeFV6T4Necd9KqG8Wm8KyXdwIn7LZ2m6Fs8TvxG8C+Yoet?=
 =?iso-8859-1?Q?CC4svOyVrYH+MlAfXNlPftJgbSy4QcbXrUtnIVRBvEfKrd2i9nj5mFQnct?=
 =?iso-8859-1?Q?2HLuENNtRwNGz5qCMyhLDd8UzaqCGxc5Rz2UGDIrAiDPYwqybjxf/3kzto?=
 =?iso-8859-1?Q?ja1dHDycfZR4AHmnCUUwQsweHlGV9xoUaGvdWSH5n84BFMehHpDAneiWvf?=
 =?iso-8859-1?Q?OH8f1J/36DKuoypqQEQmke2veGUaX7yKx6BVkgpgc+OdTD0rlI4RpJl4WG?=
 =?iso-8859-1?Q?64+SJOWloEc36gGTD2pTLhKt9KGRL5KGoExGpHeMtpYKzGTunG8JrSHFvb?=
 =?iso-8859-1?Q?e4UWXw7Co/CBKXy3M/RP+nA7g5Mg090XaX0n00pOv243+aElSGYRRLXBCV?=
 =?iso-8859-1?Q?P4wqXZ6h94HdnQtbWPGhPk9wmXv94iOLlDRWNS+x2RH6nPgkydBX62qhkE?=
 =?iso-8859-1?Q?d7Znz8SKE+RlzFXQ1r6FzKCUl1gJCMiZN4F0VzMnx0qoza2X7ERMXT+yU1?=
 =?iso-8859-1?Q?u9P6+5L/+eGs9RoZolwl2hSxDZ9WuWT56G8DkL9i1jCVvaf0Jl02CrFfNf?=
 =?iso-8859-1?Q?vgd0ah3j+0yPot5zCxfLew/cYr9NvJ3lTyuETgUmHqzKEIDPf+pJd7ok2O?=
 =?iso-8859-1?Q?gxdeNdh4MoWotdSjSO7a8/slS7JOYkUuTrOXTxS01nciqydPRY7IgO0oSY?=
 =?iso-8859-1?Q?KUd8XQqL03iVptJZCbuYn8FpV3Lk2Wy5HFzueQmmpyZYSQwVhiVSu5mABG?=
 =?iso-8859-1?Q?pPokgg5J63FL0B3kKyDZp8nYwS1jvwzBdmMEgbiBmSm0hrfWD3n/T+QZJp?=
 =?iso-8859-1?Q?5ayafYu9C9hv24R60RcOLSmCQiNPX/i1ulZmIRtsWnlt85s6hZPd5tld2v?=
 =?iso-8859-1?Q?XIT4flAMFG3Bd8KAUWIGB/xz14/KCfcux5GywrAkEWykHrBbs58eZgse07?=
 =?iso-8859-1?Q?enbdHulC+V828PrgB00eyKjbhQPUG3mOfrP7BDZHGy9qy8366ao/XG1REY?=
 =?iso-8859-1?Q?iaIO3XaXxvSZr5fYhSurjLqmMboK8UFwi51vY1BNNFAgGSnS1ncbCzjD0K?=
 =?iso-8859-1?Q?xlciI3fC+LWEyQtOcyoGtf3+4vwlOwnbJ8W45i9eXYrDh2lkukUs8UE0Hd?=
 =?iso-8859-1?Q?NFHtQAEc5xCR1g12SE54Wztr1paPP3i9MzcL+cRDpd0EjsEP6DpHebS2FA?=
 =?iso-8859-1?Q?kWQPumQrIYGozIdY3MiNJWjVUkELRT53UrMMNg139U2FOQ//MzRSpBUwP9?=
 =?iso-8859-1?Q?66lYh53xMVkp61sNzFOcdXnQfyIN1fPfO07Y+Oa6Xz4KQukkfZ1eN0eqkf?=
 =?iso-8859-1?Q?QZx6ESzJXTWX7xwwTAwK7Fq9C9yjLzn8hi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 919e9b6d-067b-41c6-332e-08dc97a133f2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 18:36:20.0865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IuYL/lyqHeHGxhtpH6iOatip/zinHYYjaJkg7xRyWHOpoXl6CLJCgc6P2fHWeE/7tEdiRBgYK7u1OsoV/yhJew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
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

On Fri, Jun 28, 2024 at 12:30:57AM -0500, Lucas De Marchi wrote:
> On Wed, Jun 26, 2024 at 10:42:24AM GMT, Matt Roper wrote:
> > On Wed, Jun 26, 2024 at 01:26:00PM -0400, Rodrigo Vivi wrote:
> > > On Wed, Jun 26, 2024 at 05:17:41PM +0100, Matthew Auld wrote:
> > > > On 26/06/2024 16:53, Rodrigo Vivi wrote:
> > > > > On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
> > > > > > On BMG-G21 we need to disable fbc due to complications around the WA.
> > > > > >
> > > > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > > > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > > > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > > ---
> > > > > >   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
> > > > > >   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
> > > > > >   drivers/gpu/drm/xe/Makefile                     |  4 +++-
> > > > > >   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
> > > > > >   4 files changed, 33 insertions(+), 1 deletion(-)
> > > > > >   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > > > > index 63201d09852c..be644ab6ae00 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > > > > @@ -6,8 +6,16 @@
> > > > > >   #ifndef __INTEL_DISPLAY_WA_H__
> > > > > >   #define __INTEL_DISPLAY_WA_H__
> > > > > > +#include <linux/types.h>
> > > > > > +
> > > > > >   struct drm_i915_private;
> > > > > >   void intel_display_wa_apply(struct drm_i915_private *i915);
> > > > > > +#ifdef I915
> > > > > > +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
> > > > > > +#else
> > > > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
> > > > > > +#endif
> > > > >
> > > > > please avoid the ifdef I915 in new patches as we are trying to get away from that
> > > > > in favor of a clean separation.
> > > >
> > > > Can you please share an example for the best way to do that here, with clean
> > > > separation?
> > > 
> > > hmmm... looking more to the patch now...
> > > I don't believe that the WA/RTP rule from Xe should leak into i915 to be honest.
> > > 
> > > It looks like we are trending to a separate intel-display.ko that shouldn't depend
> > > on driver's declarations like this.
> > > 
> > > Ideally I would also say that wa in the display code should relly on the 'D'
> > > (display-id) of the GMD-ID. But I see that this 16023588340 is for the 'G' ip.
> > > So, perhaps the display code should inspect the 'G' id from the device inside
> > > display code?
> > 
> > This is one of those rare cases where a GT-based workaround also has a
> > side effect of "oh, and you also need to disable FBC in the display
> > driver."  So as you said, the need to disable FBC is entirely tied to
> > details on the graphics side of the IP, not the display version.  :-(
> > 
> > So there are two options --- either you duplicate the logic to decide
> > whether the workaround applies in both the display driver and the core
> > (i915/Xe) driver, or you make the core driver the authoritative decision
> > maker for GT-based workarounds and give the display driver some way to
> > query the core driver.  The patch here is following the latter approach,
> > and for the short term future while display code just gets re-compiled
> > into each core driver, this seems to be an accurate implementation
> > (always false on i915 builds, and querying RTP for Xe builds).  As we
> > proceed with moving intel_display into its own standalone driver, we'll
> > need a more formal display<->core driver interface and it will probably
> > make sense to have a formal "query a GT workaround" entrypoint as part
> > of that interface so that we don't need to keep adding more one-off
> > "needs_XXXXX" for future workarounds that wind up in the same boat.
> 
> agreed. Let's not leak the decision on other places: it belongs in the
> core driver.
> 
> When there's the proper separation, then I believe we can just copy the
> root_gt->wa_active.oob over to the display struct. And then implement a
> macro on the display side to do the same check. Or we may have a set of
> function pointers and one of them would be to query if a WA should be
> enabled.

Fair enough. Perhaps we could at least define this in i915_drv.h so we implement
in the compat headers and avoid the ifdef I915?

But anyway, if this is something that will remaing for later for the
separation perhaps one extra ifdef doesn't hurt.

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Lucas De Marchi
> 
> > 
> > 
> > Matt
> > 
> > > 
> > > Jani, thoughts on this?
> > > 
> > > >
> > > > I can add a new .c just for intel_display_needs_wa_16023588340 and move it
> > > > there, which then avoids the ifdef I think, but that then adds an entirely
> > > > new file just for this tiny stub. Unless I can dump it somewhere else?
> > > 
> > > One temporary workaround that I see without the ifdef I915 would be to
> > > declare this function in i915_drv.h so in xe you add to the compat-i915-headers
> > > instead of creating a new file there.
> > > 
> > > >
> > > > >
> > > > > > +
> > > > > >   #endif
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > > index 67116c9f1464..8488f82143a4 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > > @@ -56,6 +56,7 @@
> > > > > >   #include "intel_display_device.h"
> > > > > >   #include "intel_display_trace.h"
> > > > > >   #include "intel_display_types.h"
> > > > > > +#include "intel_display_wa.h"
> > > > > >   #include "intel_fbc.h"
> > > > > >   #include "intel_fbc_regs.h"
> > > > > >   #include "intel_frontbuffer.h"
> > > > > > @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > > > > >   		return 0;
> > > > > >   	}
> > > > > > +	if (intel_display_needs_wa_16023588340(i915)) {
> > > > > > +		plane_state->no_fbc_reason = "Wa_16023588340";
> > > > > > +		return 0;
> > > > > > +	}
> > > > > > +
> > > > > >   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> > > > > >   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> > > > > >   		plane_state->no_fbc_reason = "VT-d enabled";
> > > > > > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > > > > > index 0e16e5029081..f7521fd5db4c 100644
> > > > > > --- a/drivers/gpu/drm/xe/Makefile
> > > > > > +++ b/drivers/gpu/drm/xe/Makefile
> > > > > > @@ -34,7 +34,8 @@ uses_generated_oob := \
> > > > > >   	$(obj)/xe_ring_ops.o \
> > > > > >   	$(obj)/xe_vm.o \
> > > > > >   	$(obj)/xe_wa.o \
> > > > > > -	$(obj)/xe_ttm_stolen_mgr.o
> > > > > > +	$(obj)/xe_ttm_stolen_mgr.o \
> > > > > > +	$(obj)/display/xe_display_wa.o \
> > > > > >   $(uses_generated_oob): $(generated_oob)
> > > > > > @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> > > > > >   	display/xe_display.o \
> > > > > >   	display/xe_display_misc.o \
> > > > > >   	display/xe_display_rps.o \
> > > > > > +	display/xe_display_wa.o \
> > > > > >   	display/xe_dsb_buffer.o \
> > > > > >   	display/xe_fb_pin.o \
> > > > > >   	display/xe_hdcp_gsc.o \
> > > > > > diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > > > > new file mode 100644
> > > > > > index 000000000000..68e3d1959ad6
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > > > > @@ -0,0 +1,16 @@
> > > > > > +// SPDX-License-Identifier: MIT
> > > > > > +/*
> > > > > > + * Copyright © 2024 Intel Corporation
> > > > > > + */
> > > > > > +
> > > > > > +#include "intel_display_wa.h"
> > > > > > +
> > > > > > +#include "xe_device.h"
> > > > > > +#include "xe_wa.h"
> > > > > > +
> > > > > > +#include <generated/xe_wa_oob.h>
> > > > > > +
> > > > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
> > > > > > +{
> > > > > > +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
> > > > > > +}
> > > > > > --
> > > > > > 2.45.1
> > > > > >
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
