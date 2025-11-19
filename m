Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFB7C70965
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F227510E673;
	Wed, 19 Nov 2025 18:12:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B77c1zCn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC88310E680;
 Wed, 19 Nov 2025 18:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763575936; x=1795111936;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vKidVK4oXEs87r3Y/+j8Owuw666NAQZh7FNpoc1rKmI=;
 b=B77c1zCneInqjRi8T5IpzHTSWVcNf3P4Sa3ah6IKQaj64eg9MDLA4HD0
 sYSKiyANAVmUiiot5HsTHOP2ioiqfDW0Ly33NK+gf3zCFE1B+mng2Bdw2
 qqJugr6OuXavNHgcrkD5BsM8xC14YIxMUE9FjzucgEUOjC8cYgaAgUlxa
 PqtE6YyfkBrP4jN9NxhVd/+tep+FrEegu1CkOY+GtMQ+kTkryUSChzBYh
 oLYHzl4giA/wQ7xqjBohl1H38NmF8H+sgiO0qcfZu4DhIPjZIzJyktrui
 CLEYsu3k9nmAj3qtjIAD+9aI54YlTTj8rflPm1nWfIbOLae+MH1zulNWR Q==;
X-CSE-ConnectionGUID: St3QG6tVS+ujQC6aabu7cw==
X-CSE-MsgGUID: 6YutumlzQaKUEDkgphYy9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="77094612"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="77094612"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:12:15 -0800
X-CSE-ConnectionGUID: P+y5PsfFTmSqraO52u9LtA==
X-CSE-MsgGUID: usCZ3d30RzGOIXbOCXyeFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190938369"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:12:15 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 10:12:14 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 10:12:14 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 10:12:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uXDPT5aeTKaymi6ZmLWjxQRQlwrti16HVgnqwke0AWmPAHimZqca8jh/8C6NSbjAKZkYmctc45fFW0R3QRmrcmvJOQWDOivhhWwYL31F7r1anOfWOMM6Ebt1X4Zyet1iXwhupM23Dc0s39j51Eqln0ej87HXXXLvl+hhrErHJ4UZByoFWTcMNPPMQnVS6Y6BPmk4ZQkRLRYnLDobYVs4aV5CJkFD+c/r9BCK5+74TbGiMutjVkWScMMNm7jxJHTTuMJk1z14XTsXje+9cQWed1OHMgzCBFJqWtyYZJb9YXAYYrYYGtRQMKcUwNLA7Sbl9N482jtfgKTUl8n970IZxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K28zYNLclTTJdiHOZ2xWq23b1YXZSW4er/pCCZJPNw0=;
 b=L5qsQKLF5ArBlllA1lC06dMrNEkRaCEFcgu+Byio3itfVFTWXWGnED2OuhW5V/1Lf1CHYWIYz2ZDtUFTVRGMzkBVvLL2yz0Xb7kYwH6J3pHkUYXMXtrOIb5LA2t1D0rcOeMwMfWwegrU9IFicFYblLnmixPBAXGzk1C8NF3HryFrbeKptJNIoRQPoFfXS7qtanQY/366wuFveFpHBXMnyySEA1dC/8pB0vuCIks5oA0LN8LNoP38AWp0098opSvjWeD7Ux6uMzdE+Mzw9YKAvekqt8Kjrdsng0QL2DlHgoIz6/u/iu84dfi7ZKyfkYaLM95oxvUk/M5Mi0izq72DSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6605.namprd11.prod.outlook.com (2603:10b6:510:1b0::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.22; Wed, 19 Nov
 2025 18:12:07 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 18:12:07 +0000
Date: Wed, 19 Nov 2025 10:12:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support
 dpll framework
Message-ID: <20251119181204.GY3905809@mdroper-desk1.amr.corp.intel.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <DS4PPF69154114FCB4F55C2DC43CBE3C59DEFD7A@DS4PPF69154114F.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DS4PPF69154114FCB4F55C2DC43CBE3C59DEFD7A@DS4PPF69154114F.namprd11.prod.outlook.com>
X-ClientProxiedBy: BY5PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::40) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6605:EE_
X-MS-Office365-Filtering-Correlation-Id: ea87ce6a-796b-4089-e6f2-08de27972644
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QuVqsCmdijJRKDRa/6hQbAXPDULvcYyQoKlkvwTZoY+NyL8hBhYGK5EZ6Ngw?=
 =?us-ascii?Q?q/aoftGdWPTi0PUyUNOnseQZjnnUpReKOAPGIVhcWy56eHjWUOLNDaIc4Cqg?=
 =?us-ascii?Q?lRjsTAFGGcidMc7Dm2xYeKhi8uWt8IlVu2PXJL/tF29LWLGatmR2IqMt+KhB?=
 =?us-ascii?Q?/jbdePsJ/CfNdjpIgBIZyFZVA/OcXd8veopZtBjcRSJloui7KE1GFLtjjGIG?=
 =?us-ascii?Q?q7EZoQPSwqOPHB+Ds5gin/5ETWdK4Wfs/3LHTf86uJW2AsCkHmvHZN+KBBHI?=
 =?us-ascii?Q?teGZgqo6z6/Occ+xeVtNL1l4acqcSLuzBtUCiRQwKbEjnTKFLu9L4pJ3D7FV?=
 =?us-ascii?Q?b4fO11XA35rRPI+XWi6R9km5kGqab3kDSxWlE1fpTuQ9yHr6ueo1n+t5hKnk?=
 =?us-ascii?Q?JK2lnHYHGdxTW7/KgxMFZKiJNpphTMvvnL7MokRFkvUi2YZtqkoZSlxdPJXv?=
 =?us-ascii?Q?sK1nKs+ERLYx3/bQliSmE/5qx5BnPZUdvFEgXMHy6iXCx19LjXx4yuNWbg7q?=
 =?us-ascii?Q?eVszkm6AWbHTXD8/3/pOD6hQkRWeDOuetEZ44VAg6fDI7YN7Zf9Pr2qbTq00?=
 =?us-ascii?Q?g+ZVaHGJAAaQ2tAsP60A/u9nkXJL2iH2HPGIceT+5M3ABYQi794Hrb8nxhpX?=
 =?us-ascii?Q?r2xS6hmkiqn4NFRzJawprn9zYNrwZEcTzrlP8i6bNhjP13ZiHZ2UwQn3wGDG?=
 =?us-ascii?Q?oEJ4BiY3JkiCNTp/CeyOxps9bhm6/zMqpZWmpAxEWcf5N+ipYqzT03z2qun/?=
 =?us-ascii?Q?BFEEvqhcb1KJkut9uUBpfcFqxKgXEApfwpQULFySluL0XLyGWwB/VU8UbxyS?=
 =?us-ascii?Q?YzCR25DmZNPK3uIeJ2lFIb2Fof0wa8oQt0hPsC03JpjPAiDZcvYst4Wpgxsk?=
 =?us-ascii?Q?AqS46expCbto/ZLRltW6zkimlTD+KgmCj7LBkIhwMHAeVhNaPocs9a3JicRj?=
 =?us-ascii?Q?GRZHOUoUtNQV7riDWvtenMCwvq/Q6dodNBWcBxFzMwpjN/Ke8zXgKjiVqUtA?=
 =?us-ascii?Q?ZsDWBLgQQ+jEs6RLUbyKqh7S8BsvGe4io+wzyABKMI1HZ3Olgw/LnokZzXIh?=
 =?us-ascii?Q?nZPlWICZHwN3fzrBmJHti0ekS4iMAG/26vjZheywrofRFi8yglLkmFTe6SOR?=
 =?us-ascii?Q?f2onyS7bDTiPR3JQPorK36ff4aMsI0PvtUUMkE2rpX29S9h2yeD1XPjsQ/uX?=
 =?us-ascii?Q?No0+QjfS0NJrbaYA0FyBmbOaG3OAJ4Ujei3K43v4rx4f7dt7v7SyMvoN+BGM?=
 =?us-ascii?Q?BZMhQ5ZgRbN9UPLkGgdY4mZtRlg4MX7DfqBbgh/ZJtjnZbWbDjcrxdQhwT0e?=
 =?us-ascii?Q?RUGXiingHggrSPtIEP4ec3NV8YZuPRxlzqMjsYcOUmUXYX0zIeQ0CKkVQR6n?=
 =?us-ascii?Q?eZ8AOmUV0IEig/x1E1y6OCZx7J9gLMmkK2pFilvxKXAHezPjqtcLxVg3q/q1?=
 =?us-ascii?Q?COj7jo2/Qrq06myvHe4mFxqeARKQH7m8a7Z3DaaS4X8689yS72dRRQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7pgMTrMAeYofpaiKhGnWR45IBxGdHp+qWGl8Y5Gvc5AFRzbYnrMrWGbRF7kI?=
 =?us-ascii?Q?qK7W5zH45DTPIiwqbu1FwxA73LZR5Olm3Luh4Y2W6kJH4CmFkJAPxayt/QNM?=
 =?us-ascii?Q?UnU3FlJh0ICwCwNLgyqeluaq4p9ZnQzDcoI5lvDzPZ0HXHvdOdVSB2HYKetK?=
 =?us-ascii?Q?7AZzQlTf7ZVp4EH/OgeEokVkWgk6cleNdbyeDihPkDPg7LOQ/BbDvSL4O/2V?=
 =?us-ascii?Q?vNTgXAZbnN7PPa9ySsNnvE32SfsQ64kDBQP6JTaBoxvkN6NSjZUpIvLkPPNP?=
 =?us-ascii?Q?pZJPkj5jRo5Y6TMTjimEo2nieNEtXAjQihxx9z4pihEYn0GTl+5x0rpBBXrJ?=
 =?us-ascii?Q?XRBDgSSdFtISytG6ukXWWhHOTqTP5HjIMuQfxczwlW3BbcBLBVhmJGNb/OZY?=
 =?us-ascii?Q?sEOq23SORU/jVnLWXSVY7EnmEEu2OZ9+eeO72f8qJ8m377F7Kk0FvDiQIDYi?=
 =?us-ascii?Q?RRHuGTKiYdsCOQH8Tkq33MsapVVo3mu8qlVdsnVecaZ641ageR01+D2WQW/B?=
 =?us-ascii?Q?DB998JBkyk7IPqvS9s71EOLIH4vqb0Qq6wsbqk7vpMZaDTyitDVmifhXW/Hj?=
 =?us-ascii?Q?oS5XuFKf00Lc05asMZELHOvrAQ9mG+p8y8XaaH7x/r0uk2ltubTGDd23oIlr?=
 =?us-ascii?Q?UdY2Q4ShHRK0602JpPpKDdRDhqkuR5YB5I8q0/FZ9cEyJIfKukYyPjCC+ZJU?=
 =?us-ascii?Q?esfCfekV+cgavfUNuC/Zt7cUOCKPBgItXVTeJsrkKVSxzv8GmEJGacwfmSyr?=
 =?us-ascii?Q?X2rnbppCAwvwqm0O8txifejQJ+U0EPUcex0fZZcsQHtkTj4H4ds3QChKLRS4?=
 =?us-ascii?Q?qr1imTT85aTjBQ6aTNuZ5F7SMBI7xEZ01HvmSclqYXHoVMQJk2nWlY32KCg+?=
 =?us-ascii?Q?WcJzP8vOPdtLjozgPumbPEwca4Q4GOXZV3DcvWINW3m4x5JWcyyaflkNgvDW?=
 =?us-ascii?Q?BuCMbuo8EX2klaDgsZrdFTViyipYlbOe7IJVO4IY3oIA49BRdZHipnAGbaYB?=
 =?us-ascii?Q?+varm6tWwO2ZXOrwO3YVLMViuXeMV28CgQavXfwUEF3FBLTuLvV/wVNwnHjX?=
 =?us-ascii?Q?K6SQLDf5fvo380aTxTF1SwX9Cm4Pa3tRUcMFO4WgIVZtYPWfIL0TNXappFCX?=
 =?us-ascii?Q?yXPsmRt/CdddF+Aq7cG83Ige+DnqJZMAOm6YJbdQHHcUDUc5FIuGTjKADe+i?=
 =?us-ascii?Q?fONmPTpZdxNyIIpkCaxJDVK5nA+wkf6sXFolMyjf+cp0cxs7NK+Vw+9AYcla?=
 =?us-ascii?Q?mXVRIcRHnx4I2NWmd6FJjuD6OlV0Fz0cGLnv8IdQdyiCkgTIR+651dDx3jGh?=
 =?us-ascii?Q?jP+7vBxOQ08JipPJxx4IuCK7acmBwTKxwYuhFkSphcUAXew3K0X0ng92Aadq?=
 =?us-ascii?Q?ZcqUvzgOdyf0dvuxrmNVO//d5jO4ex17qLWFh/V6KlL6TynUioV5qpphRfuT?=
 =?us-ascii?Q?7I0Z0RRqVz7Tyzkt0HOPbtFwiazngRP5Y2BRAdFoSIH2zZ9Dqg0X5XLg1uhY?=
 =?us-ascii?Q?kayUHDR7RBr3E6JtUUmnvv73e8JqY5fluM62BwybMx3/TI+5/zekZ+AmrYPy?=
 =?us-ascii?Q?CChOylPJwMAnaaMKVsfzPnREBubSuqv+0eT7r78seoXnJOgMcWWE5OTd+hn/?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea87ce6a-796b-4089-e6f2-08de27972644
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 18:12:07.1948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HqfxJLDuGyyzdB7coHxtBDLL9vye8ZNr0xpImWSavO2M3MPqqxQwxFO9YDVyEujhcCzhtePQCsW4C819zeIcy+e8I20H49Ua3t0JMO/TE+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6605
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

On Wed, Nov 19, 2025 at 11:59:49AM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Kahola, Mika <mika.kahola@intel.com>
> > Sent: Monday, 17 November 2025 12.46
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Kahola, Mika <mika.kahola@intel.com>
> > Subject: [PATCH v2 00/32] drm/i915/cx0: Add MTL+ platforms to support dpll framework
> > 
> > This is v2 of [1], with the following changes
> > 
> > - commit message updates
> > - Use of BUILD_BUGON() wherever possible instead of WARN_ON()
> > 
> > [1] https://lore.kernel.org/intel-gfx/20251031103549.173208-1-mika.kahola@intel.com/
> 
> This pll refactoring series is now merged. Thank you, Suraj, for taking time and effort to review this big series.

It looks like Xe.CI.Full reported some BMG driver load warnings that may
have been overlooked:

  https://lore.kernel.org/all/176338618409.2038.14088991238815121493@a3b018990fe9/

Now that this has been merged, those same driver load issues are
starting to show up on premerge CI for other series.  Can you take a
look?


Matt

> 
> -Mika-
> 
> > 
> > Imre Deak (15):
> >   drm/i915/cx0: Factor out C10 msgbus access start/end helpers
> >   drm/i915/cx0: Sanitize setting the Cx0 PLL use_c10 flag
> >   drm/i915/cx0: Sanitize calculating C20 PLL state from tables
> >   drm/i915/cx0: Track the C20 PHY VDR state in the PLL state
> >   drm/i915/cx0: Move definition of Cx0 PHY functions earlier
> >   drm/i915/cx0: Add macro to get DDI port width from a register value
> >   drm/i915/cx0: Track the Cx0 PHY enabled lane count in the PLL state
> >   drm/i915/cx0: Sanitize C10 PHY PLL SSC register setup
> >   drm/i915/cx0: Read out the Cx0 PHY SSC enabled state
> >   drm/i915/cx0: Determine Cx0 PLL DP mode from PLL state
> >   drm/i915/cx0: Determine Cx0 PLL port clock from PLL state
> >   drm/i915/cx0: Zero Cx0 PLL state before compute and HW readout
> >   drm/i915/cx0: Print additional Cx0 PLL HW state
> >   drm/i915/cx0: PLL verify debug state print
> >   drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
> > 
> > Mika Kahola (17):
> >   drm/i915/cx0: Rename TBT functions to be ICL specific
> >   drm/i915/cx0: Remove state verification
> >   drm/i915/cx0: Add PLL information for MTL+
> >   drm/i915/cx0: Update C10/C20 state calculation
> >   drm/i915/cx0: Compute plls for MTL+ platform
> >   drm/i915/cx0: Add MTL+ .get_dplls hook
> >   drm/i915/cx0: Add MTL+ .put_dplls hook
> >   drm/i915/cx0: Add MTL+ .update_active_dpll hook
> >   drm/i915/cx0: Add MTL+ .update_dpll_ref_clks hook
> >   drm/i915/cx0: Add MTL+ .dump_hw_state hook
> >   drm/i915/cx0: Add .compare_hw_state hook
> >   drm/i915/cx0: Add MTL+ .get_hw_state hook
> >   drm/i915/cx0: Add MTL+ .get_freq hook
> >   drm/i915/cx0: Add MTL+ .crtc_get_dpll hook
> >   drm/i915/cx0: Add MTL+ .enable_clock/.disable clock hooks on DDI
> >   drm/i915/cx0: Get encoder configuration for C10 and C20 PHY PLLs
> >   drm/i915/cx0: Enable dpll framework for MTL+
> > 
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 870 ++++++++++--------  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |
> > 29 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  87 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  |  30 -
> >  .../gpu/drm/i915/display/intel_display_regs.h |   7 +-
> >  drivers/gpu/drm/i915/display/intel_dpll.c     |  24 +-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 315 ++++++-
> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   7 +
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   |   4 +-
> >  .../drm/i915/display/intel_modeset_verify.c   |   1 -
> >  10 files changed, 893 insertions(+), 481 deletions(-)
> > 
> > --
> > 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
