Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E8ABE3509
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 14:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A51110E9C8;
	Thu, 16 Oct 2025 12:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cctk2Hkh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B4510E9C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Oct 2025 12:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760617157; x=1792153157;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ygUQGAXPIyZA4xCMop41e2LN2F67St1I+9y4xlxllMs=;
 b=Cctk2HkhRejbr4N6tpi9AH95TQGsnuHaRI3t6x71MCP8vxqbhLEgR1If
 lmrnY5k022pd3qSB7mozh7iIZFXSpwMDvu3P1KdK22nBYRpqLdd3+3+ma
 HigYaA99QeE6qlkqdt6wbKbVMZikkWeX8AjbfVaoLOVg4nOc7Gzo8/Ud3
 BRN8fZYS5DLQ6u5qHojCuwvgEr0XVUsnJ4+kqWXMjqg2AVJ3ccYFIXEgh
 e6datJvygwIvEAu0EjxQ6qFduAA/ZExGgW4jH39Ca9azVCsJpQCi/5BEl
 h/u17K2rD+qYMYp0EtD1Ccw0xkiufWDJJHwsdGeheN1n5ZBhW8USBgUMY g==;
X-CSE-ConnectionGUID: orRHuYM1RqqjwpUzB+s72A==
X-CSE-MsgGUID: uxKx1FSaSbe+Elcg6wo3ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62715605"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62715605"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 05:19:16 -0700
X-CSE-ConnectionGUID: wYABPrFKRWO6Un/i97eujw==
X-CSE-MsgGUID: Z+ysav6fS62yI9stRagTFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="186712633"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 05:19:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 05:19:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 05:19:15 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 05:19:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RsOyN+t0ck2EjB++VcbrpsfektD11KiFb5jB+tVZXstPpqFYczGKSMYAmvaenDIEenDJIUt4eVjCOkZ6nNESTvItRrnlwn+w7z8Q8kn1IAqqTiUxMrzLe161gNBiJwXsyu68GrhfrMyh6L79mxRK6u1fz61bzSe6rG6ioPRkDaxKuET08aDuWnSw3g0XB0uQKf/2Wipzk9h14ooV3Xl4Vke0xeWFHI5iQfYPFkS9nOgjYYz5gjyxQfd6Iu5oNoeIZjwNWV27ndVWILPURCBSv+5ZeT6N6m7BWocuU7yD0/0cC3Zj+Ye/giCsckb7XBDPzin/5ROIaqTraSD0FIg6Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/YXWKx98KA1pchz0w9xhvyd9paLNIGqWnyE+I3SAsE=;
 b=CgkigLHPHnzzOkQHSXcX8B2v6vD+d935ATx5W2cVRAA0KjqmNOjXtpD5AlvQzbgs+1WNZsAdT9njgGC6jtu8iCi7DwLkzPYSOKsxNgUpyd6qXtp5AdM0rbvXTvZMTBWmyUkVSVMPVUiVxJ6lyCaZoXZDZTvulgzKXayxibYaEX/1bNzLvdiFPCf8HFm3rPDtJrIHJS1XmyndV+x0QEy+3fheHAcj5DcPn1GL8E7r+H6fa5esBSPP0HCBvV0Nv6g6LS8/i5RbfD+GF49BHqH0IlSihv7e+oVT6nMzHYCm6+AfVcoqdZb4FsqTuQeysWBugC8HX2okDSZk3JaZNBqwjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SN7PR11MB7565.namprd11.prod.outlook.com (2603:10b6:806:344::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 12:19:07 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9228.010; Thu, 16 Oct 2025
 12:19:07 +0000
Date: Thu, 16 Oct 2025 08:19:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>, Jani Nikula <jani.nikula@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aPDit9yNIhkGTx-A@intel.com>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
 <aOkH3NsPp8B0dTUl@intel.com>
 <cgnb24g7cpg4lrsneyfijfe4i7d6p47hahtsrewhaos6vsqm6t@joehsc2htikb>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cgnb24g7cpg4lrsneyfijfe4i7d6p47hahtsrewhaos6vsqm6t@joehsc2htikb>
X-ClientProxiedBy: SJ0PR03CA0283.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::18) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SN7PR11MB7565:EE_
X-MS-Office365-Filtering-Correlation-Id: f6cfd611-4d37-4274-0580-08de0cae3455
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?w53RNzw+CQ6kZNkyg76tNb6RIdCDC+9DINrOU3M5/heemt7Nif7iBgNI0yCN?=
 =?us-ascii?Q?f7+CuzyWUO2wfuBfekJZ3Z4pJaDpGBqG/in4jwq9zGejTwtVDxXVkuWU85KX?=
 =?us-ascii?Q?k5pCfKMHPCWPx6vJscYtsdqdq7c+0ehZUmJ0Jwu3QGy04PMCHTxmVjD+MQ1R?=
 =?us-ascii?Q?Ei7z5PN0vxw+GZezioU7+Uc6Pee5X5XJCZHE7u0YtdaNxn8u7OQVTYw0eVPN?=
 =?us-ascii?Q?EAlCamCq+rW8NaveYEm/f4514qiJhe0WctvpWNuGWDTLuGpM9w+l2k/AldGs?=
 =?us-ascii?Q?PaDRgWUY7rC5UHfSc09md9qOgy5iIs5sylHowXa0FlDdhtpbA4pzKMaD6wLZ?=
 =?us-ascii?Q?bzGQ45uuTLb+cez8ipYUFeWERmYB8VdWzPDNw0AWZ+LHzBHvXFect9bm2MuF?=
 =?us-ascii?Q?k5ZmxVoadRD4llAXNUGTChqN5yphVLLyHnM4/ZT+KD5X4bW7afv3RhPM81lO?=
 =?us-ascii?Q?VtePYH/CucAmHsXfB7Cj6bklHNrcjgzeGkyTafhBfJJbC6keXIZ9LdWDJ48U?=
 =?us-ascii?Q?yb031KOgbMAlmXgCdavT3V/vY6V31OkXjUwHbEkxM/OioHI8magdUznHNKnW?=
 =?us-ascii?Q?6lG/DWnn3/f/y7kDFehKIjWLAfYwZ5d9LeppQIMJIjcG1r8F1Dv4JpRHykw8?=
 =?us-ascii?Q?Bk19zsLb/5LZp3XuDnBwfyqVG0AnxZV/GQ36BdeG2sgUpxh0sUhC+K0t4NkI?=
 =?us-ascii?Q?0UhsQ1vSpoAjmhXUPn8/u6+ReFVNBQtQYTNg9x8Fpxcgpafv+WqogLpfVh7M?=
 =?us-ascii?Q?bJ/cNdAZnOfa8DAYhMFSQA7BSL9mbFkfFkU8JtP+24TLVbKdRUrrduJOYEQM?=
 =?us-ascii?Q?MwpT2pBZ4ey5BGoXQfcmBizIFUmpzTTl2MKYGR52vDaaVdhuwwvpihuwcqBF?=
 =?us-ascii?Q?zaUxB8soAXdmzQ4Y2fF0rEWC7pLMnkT5S85rPmJst/vOdhu6R91LyS87QroN?=
 =?us-ascii?Q?BThB2VeaTodFIvrEEhJHcbqdv9/K7vhETfIPIkaG8xRQSNuzO0vy4IcngpNp?=
 =?us-ascii?Q?icJK/sAwXMyG4dJQI3yV+k7IWyaIREZyvd/6h2UmNX4BRYjq/aWB16Z1kO0x?=
 =?us-ascii?Q?u6+GC3k9XBSf6S3jJj8zINzPsrxCl0nJTqes0f1gZVve2ucT/vhDbW8EVkFH?=
 =?us-ascii?Q?Vk0fGCKMPK5ophri0Gk3eJUCZkMSkVFhGe4AajEJq1C1e3R/S42fP37DNmlR?=
 =?us-ascii?Q?QguSkwOCburZeX1Wl+uQSbyjkHkha1+YyQOH6E+SlUdhR+VQUaZA4HEA3sgS?=
 =?us-ascii?Q?e13Gd+Igm/eywdE/WbyrOWzV72a5rZoD/FcwAvm5iSxLr4RQ8iep4GpbSrNJ?=
 =?us-ascii?Q?3FY0k47HbRplWpXPlGlk27B+gc6SsPy7XMsTYGVAkvsBPtCIdtSkC+3oO7FN?=
 =?us-ascii?Q?q/oQtIMroKqAymcikZ3ynVCXXf5Q2YAeaFefuoX8azkP83nJVU7IYwlYcJ8k?=
 =?us-ascii?Q?qaqaVaJp7rOD8ViN4syynfXcICNsqs4b?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VAv+ersoyRbbWLjba3kaftdqYPsZ/1NABdrS1chdn+YPHITzZxukpPM3zf2K?=
 =?us-ascii?Q?soIn/y0HocIDvvHPWNEwMqLrqpWD6myJsfxXenqyuZWvR28Y+apYVtsq+uAs?=
 =?us-ascii?Q?SzbfGwRwl+7gnbpyWXwvt9NwWlefN8NLl/vfENIzeDnoyzU89CiykNZrumw8?=
 =?us-ascii?Q?5akO06MHbpBjwDkLSsSYp3BFVh3NjbClJZMxrKWRehvSdUOhQ+sKFJ+mKUgQ?=
 =?us-ascii?Q?X6mBEIWHq8lcQhag97IgqO7IEv6F6YISNEqFNNg4a7IDxuns/OFd392gesm2?=
 =?us-ascii?Q?yPwC3vZrPKloTtXqLsykAB0IPbzow2P8wIFgoEDPTvTDdQ4Qu+f4d+o/uhMz?=
 =?us-ascii?Q?VCv448wmMMA50HHRZPPS/yDINKOhyxmwaWezVkiCKIgMWbsPnWCKmAifK5t4?=
 =?us-ascii?Q?ahUPqYMcmomxZn5Ni2fSkkvLcCvxIYB1zuhVWJWp3FA8iNFVTUcr3983xam9?=
 =?us-ascii?Q?kveNO0Kw9IAMFPXI2XbJDM+6yYSdzGLUh/jMKShVJgGAPl0vnengBEU6rYU7?=
 =?us-ascii?Q?31NegmMDYQo3ZAxCH2RS7EvFDh1yZhMYeL+37iD+iSlZxRIAI4IbBo8Uo0xP?=
 =?us-ascii?Q?Deeh3p71VLQtwbnet+k+ZNkUegP8Gor+QPsZ1edWK2LWAB937oNqn7fG3v+N?=
 =?us-ascii?Q?ooCm/DDECER+4IpKTgd7v0Ucgs1YfzGuJrPBbnKweQLXMySDcbFryntdV3Ly?=
 =?us-ascii?Q?jazDd0yOKr+EmZM6chByyvr9ERBhYlAQfqiOuTyALCW18p8OexlNQp4vuWLv?=
 =?us-ascii?Q?Ae/P7v/XsANOUI3VyyJS+V1NW/AortVycsA2TRk6TKldKFKpN0aD2NPcCD4f?=
 =?us-ascii?Q?CjDD9O/SgliX27x+BWqAmJHcAzK//uiKq7SNm+kDK7aIupxevnOtivD410s9?=
 =?us-ascii?Q?DINO+7OOF6hbeyTFcWE5FOfJSER3daI7Nzjd+f+3a4l9xMw9svkdZlOa0DQV?=
 =?us-ascii?Q?o0Ih/YX57R+0Aw2pyPb2t/u1E4cI3x2i1zvWttVUm32HQ/vhpqAfYpKnki8D?=
 =?us-ascii?Q?W1bIi9W54ViyGBbIxQGbfGI74IlDtlEQpGM45BHnPp02jcksPkAFT2tfW5OO?=
 =?us-ascii?Q?1xwoze3y18STh/NsevxfXHfenyBAySHk8NVEzenUJRYuAp6guA6G+wRSWK6L?=
 =?us-ascii?Q?TNMBp6CXd7TJZK4+aaYxTkJvhkXYRw8LPKj3pTazsPRfO2K5XPFcwvDf5TIG?=
 =?us-ascii?Q?M8tx4ltwR2ZnDWIio4sXUUw+fH2qAHKHtUwTfBSsHBS/xQffyRcU0h/Zzea3?=
 =?us-ascii?Q?cAMI5bd+7UbCr+0BtHc6eyM4GWalDMI3dNz3ndNocxOZvR6U7Zsm+5oO9i3v?=
 =?us-ascii?Q?QBY5Q3hH1vSYyJnxScO+py2235oIUOnPsV9gz9Lwi7yzBvYp6Kf97cTjfrVc?=
 =?us-ascii?Q?MVUAliqs/Tf+dovAALW+3lSQKY+P5vMtO2NFqlaF9lgS0k7jJt1rnrfMesay?=
 =?us-ascii?Q?zrdeA5Svyhv4pC9UgUsC0dF5+CcoWhICDm2DPb0vod3Jus6scWBdBmJPbhRf?=
 =?us-ascii?Q?xAICNGnil78fBrG6y3iitMpbcXKiTWvO2wfTS/hutpNNlYxqKT8R4pKxjOK7?=
 =?us-ascii?Q?HniCknA1UJUX52HgWWPavAX6oyhSdVMLCBasgLhNFhAtMkgywAOHrtA2dTrV?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6cfd611-4d37-4274-0580-08de0cae3455
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2025 12:19:07.7371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L82NL0PnWHrUW5iRa0p1yKWayfqs0bt+d/vEYB9He2mAy4PB/Pn43Aim9KuBIKRpdcjZL6Stu3UtBmX2OqHV0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7565
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

On Tue, Oct 14, 2025 at 01:09:46AM +0200, Andi Shyti wrote:
> Hi,
> 
> On Fri, Oct 10, 2025 at 09:19:24AM -0400, Rodrigo Vivi wrote:
> > On Fri, Oct 10, 2025 at 12:55:02PM +0300, Jani Nikula wrote:
> > > On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > > > reg_in_range_table is a useful function that is used in multiple places,
> > > > and will be needed for WA_BB implementation later.
> > > >
> > > > Let's move this function and i915_range struct to its own file, as we are
> > > > trying to move away from i915_utils files.
> > > >
> > > > v2: move functions to their own file
> > > > v3: use correct naming convention
> > > 
> > > Okay, Message from the Department of Bikeshedding and Nitpicking.
> > > 
> > > There's really nothing mmio specific about the functionality being
> > > abstracted. You have a range represented by two u32's in a struct, and a
> > > function to check if another u32 is within that range.
> > > 
> > > The struct could just as well remain i915_range, the files could be
> > > i915_range.[ch], and the function could be, say,
> > > i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.
> > 
> > hmm, I'm really sorry about that... That is my bad. I'm so bad with naming.
> > 
> > I suggested mmio in the name because i915_range is way to generic.
> > The other extreme side.
> > 
> > Perhaps i915_addr_range ?
> 
> If we use it only for mmio, why should we make it generic? If we
> want to keep things generic we could well use things from in
> range.h, as Jani has suggested in one of his reviews and add our
> function directly there.

Well, I don't have strong feelings here.

Perhaps i915_addr_range is more generic and middle ground.

Jani?

> 
> Andi
