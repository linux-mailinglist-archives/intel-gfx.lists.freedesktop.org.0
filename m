Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60554C7A87F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 16:26:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F8C10E148;
	Fri, 21 Nov 2025 15:26:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cGi10rIt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6034E10E148;
 Fri, 21 Nov 2025 15:26:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763738775; x=1795274775;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=17i+CEQODrHzihR9TFhZogVjGM3j0WwVL/ik+KRuldk=;
 b=cGi10rItxJDYrFHu8RCwqmPWQk2oefrQKXsR2QW+q76i3sC9lYiKsUlS
 SGGrc7T0elB+UrPkLDt2wGsfitShc0T5H+7dC4NMGMCn6MPBuoaUI4w2u
 Qjzg6Uuo2HreJRS83/LLOTLusmfmyrxJQeu7OE9nVrRWoQCVPk2wX5d2I
 3sEYkDZRnGefCnNnXHKCHYS8ivY6lRiz1mLcpEQmvQeanNUyG9I8pgSny
 /ewRsO6hg0s8flD6rHQSX2HSKnYOp9ACkl/CDEg5ieA5kbH7GmTrKXOcl
 IJvrc7LULkOP6tyqYZ+LNl7pADOHOor7QKX8eVk0qWv535PmoH5BSYLbM g==;
X-CSE-ConnectionGUID: HjQKGgbpSpOei8RaMzDFuw==
X-CSE-MsgGUID: WpTLrFv4TR2qfH50HKJDRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11620"; a="65531982"
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="65531982"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 07:26:15 -0800
X-CSE-ConnectionGUID: pHOZ3Il4RBWNLBhiJY/sbg==
X-CSE-MsgGUID: +mKX67+OTrG9jtMKc0q9Jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,216,1758610800"; d="scan'208";a="191831094"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 07:26:15 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 07:26:14 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 21 Nov 2025 07:26:14 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.10) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 21 Nov 2025 07:26:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JyH+v0UA39sXJEMsMBfVo8nj4J4YqsHc9/ToGVI0fe0Ho8S29Kl4rc1Hl9qcJbpuLXm+R6v1ABQwORBll7zAfFlfNRoqktlAC4YslfwX9lFdvY8FjhSYIufnIg5t0Guule7ZIVdsyYx0jVor7b1VRvrvhmdPH5+cbn9ymlryQReqvaJpJhvc9HaMM/MMjo8GdVqOxbMOcZ5IsZtZC2jxHUlXsSe6o4ooIe/3VW6xXKqgXQM8/qwrRKdSGuHRAVGTm91zb+BUUMqvzCHBUUKOm6H96OB3lN/BhaKHfQ9FB/nLArtwmlYA3v3Wds/rwxrrUIO/AmgVaKWI9vuJm8Kgrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+CNTy+H5jQ1gf5kuZiEiQS99wU7+bbQ4imSLsSR+iw=;
 b=iHWFwOhjxPyrESRESafTQ5QyWF7uR+nADHnWrdKy/UQCpTLm4DXnWIO0I28IRX4dXzBg4iKMz+kWU8MDrVCaNNRTBoTAmrX8uLIXeuV6C/J2TAZHaF2pVp3m3QN4mwvmgos6TnM/tXQ5xRWQehfnPUIXp90z4b/4L8KluKQOH7BqJMDZP/DGrj4kYu5/k+VS+6gLq6znbsi53x4ZsLzqHl74+EV/F0UoOzBe4Me/1QDSCDqp9/amZbqb6dRxLpIcLDYFSFfvtzEPa9CUaVZ9lNtQAcsisi8jd9rubcFeyAnmDCD8Jt0V6w1DAM6GdCEfJuedNuOc9EG2wX50JykyTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN2PR11MB4631.namprd11.prod.outlook.com (2603:10b6:208:262::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Fri, 21 Nov
 2025 15:26:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.011; Fri, 21 Nov 2025
 15:26:11 +0000
Date: Fri, 21 Nov 2025 17:26:01 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH 2/5] drm/i915/tc: Add separate intel_tc_phy_port_to_tc()
 for TC DDI/PHY ports
Message-ID: <aSCEicKOGVFoV7px@ideak-desk>
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-2-imre.deak@intel.com>
 <ad7bea20406536bdf9730d792b93ff08d6d98ddb@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ad7bea20406536bdf9730d792b93ff08d6d98ddb@intel.com>
X-ClientProxiedBy: LO4P123CA0073.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:190::6) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN2PR11MB4631:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d844bbc-87dc-46e5-5753-08de29124a51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mFpKzdMLFlSI8WP5kfOq+tT59C3UKf+Mn2GkCswfGWxCErjUpjWoy5NLX1XX?=
 =?us-ascii?Q?7/U2uram2tmELXNaXOsHMIhrotOOiJiAGjAyW95aDDa5GP5LMHCEL8MxST/S?=
 =?us-ascii?Q?3veldij1tP79rwsdsgOgS2q6B5mJ4tdhhhJAKwP2bvY0iW3TmaQWuuXV7INZ?=
 =?us-ascii?Q?DLIPikFFq6O5jICqCYZKToTutA0pMB8Os+ZlOJdOWufWsZKMDJyHUy0JzgA7?=
 =?us-ascii?Q?yK+orbxrszDac5Kq4gc2ZbtOBjsSmQg6V1tV4OyKhjw2ri2sRDd9lj3HaPxg?=
 =?us-ascii?Q?TzBHqhw89QW7UDcUE42BuCIPtMb6cvBgyEIuC7SrUIdqRTbcBcF2Ro21/Eur?=
 =?us-ascii?Q?Dxwu7eESuQzTtT42+thsXClwza3rnY7F3aNL7L1g9EETG0rQ4iy3squ2dfn1?=
 =?us-ascii?Q?sGtEKngOmrRdxQbtUOZhQse1YI807tXO/pRXPGn42x8TbBKwYyY7UUHCsipM?=
 =?us-ascii?Q?4Wi9aIRDBc7biZE5G/Jqw2BeyamfQr9R8G4bNW0pMQeG//d9qCwX06yF5OgZ?=
 =?us-ascii?Q?efrAz+MbQK2rmp2vASbHHjYV21TdhtvjXbmTFOetQVQZ8SRrXKDA8hjchHHM?=
 =?us-ascii?Q?YlJ4tS2o++moZH3tf7kt1EDNpOr3E1Db/hes3mhffDsKH/t7MgN/GR+Fp2ZT?=
 =?us-ascii?Q?/uuLOXm810w2MxoCMpyy0R0mWDzdEJtW54saQiEznahxdJhU+umyvJVo0lQ8?=
 =?us-ascii?Q?hbQBXtZTt1LW3hX25/hlrDckslvCtpt0xOUAcBYqwSu6HD/rFs8QmHE/iZel?=
 =?us-ascii?Q?lOvuwmKDejfph+L1FOcoUUnuVSef0HrBlN6mN9npsCX/tRsDNtPxWbeEXZfF?=
 =?us-ascii?Q?KnLOz+FJMKmplozjjoujJZPSVaAHKuoAhooXoznVEH9ftlOtmQEv6m5NEC6p?=
 =?us-ascii?Q?uYejx4/M6V4F21e4YDd1M1+Bc3hRX5CeocjWndZcaKNbYqSoUyS0MzwkXKP2?=
 =?us-ascii?Q?l0QuYIrKJAhfp3LEkI0hcnvCrgIGPv807PDx4hllXGQVGmgDByvcYuye2Bgn?=
 =?us-ascii?Q?DXi/cAXGZGs9aBKBzbNKBIEzHz+YLognVLgGKyXpr/3vm/dARWtPmNpLAXBv?=
 =?us-ascii?Q?8oCpQSjMQAEq00EAebM0l+ytHSANsQZkWJfpVWVQA/O/+Mq7JqhjM/5C+6D8?=
 =?us-ascii?Q?1OZPID+EJp4KKlipSNnqOhUdVL6RU+reSPpmqGbST7zkScyrk2wNqjjCuHCC?=
 =?us-ascii?Q?Ma3NHwQhR3wb5YNHggrqUhq98p/vfzO9WSW/kNOfO71VenetPtqpRXfYV3qs?=
 =?us-ascii?Q?lhJ5A89iioOABK6Y2V2Bg6jvAyMuc6karaqFiDPlbWcZK9Lb9sCtuPdLBHb5?=
 =?us-ascii?Q?/3l+cpJOqFgpgnsUbsjtkDh+cU2Q5wK1KpdSFm+8MVrIHsP1EyPujwqmFVRu?=
 =?us-ascii?Q?17wIxC9u9BSizaXZo1NrT7bVANN1nQyUA6MOKV//KqyIDX8Mo6YV4kwHfQtI?=
 =?us-ascii?Q?8DAKHpCjiFvm9dDBwvC7ksXliDlpuJhN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FyJB6H2lsD9mHc2PpG+KuBvjxq1pvhggcTY22XNtgkVadO1RfR8GLC8UuzzO?=
 =?us-ascii?Q?7S8JOzOwGDCK/tNtlhKuCZUN5EzCHoo1Zgu23Y7pFgjeegxx5+azOjmM2hgY?=
 =?us-ascii?Q?Sf8I6d0b2Ktnev48ud1AvnMiEzwjJrL1v/j0yOocHbhRh9i+lzJl3dXzp902?=
 =?us-ascii?Q?rSc0wKkvejSoTaQZOaoHw46RyFsi6bdANkJxlF6MoAsMODxv3h2LJLYNSFSo?=
 =?us-ascii?Q?l05ELCwT3VPo0l+0SUfgkiwWCdV+RkqNbKlR1x2Iv2UppWhaSEWKaSkpvj6i?=
 =?us-ascii?Q?xF9vRGs6YTXUFQClzPMG1FRRzKPRGyJe2Lo8zYYnMkXYiw1hZ4leCiSZPB5R?=
 =?us-ascii?Q?cVBgXqpTFUify2L68Y1jK9aZHOeNh0Ulah6XzudTQEizJSoBD7jjuuUQ3ZE1?=
 =?us-ascii?Q?NvydYcf1yuYvklCPTi4I7Wa4t5VtVlz1Zrfh5o4irvRRjv7RJOwn3wilWxT1?=
 =?us-ascii?Q?9lYC3BpjZ6PGFjOBy7uOfil9kXage94Bfqb+Onj9+wQaooFIWGZrkP2iTCQG?=
 =?us-ascii?Q?ks6m1szWEHLJiQow+9C7JxoE/sPgvhkIhXy6oqN4vmhJLQSXb1MuuwSR2VZY?=
 =?us-ascii?Q?uXBW2Dd7xg2ymRLVzQF20HXYGZXq5R9p73ST2nMxz4sN/q4GAEAipHvMtrQP?=
 =?us-ascii?Q?/k27K5gSZkOsuSsioJC38NEzASnyK64Xl3WC/LYuYdWARZp0S6ennGMbcNP7?=
 =?us-ascii?Q?T0pJjq7Mc0sYH7IP5oE2bDJM5HGMVk24pSq6Ux/vYzGv0WPdPh3KUVcYz3Dc?=
 =?us-ascii?Q?kdxDMjoAIzb7/enkwh+FgpNYGKMne6G17Vx6a8zOO/pU8pryXctVwO2TMVQO?=
 =?us-ascii?Q?cDQ6dSb/HeQuRZUzEMqOMcWzZX9udcz+OQPoaUHNb3tyGsUuV5VQC+ucw35y?=
 =?us-ascii?Q?hCRw6F15taeBJU7KKKMyKaFf0sEAgia18J1B1fFmT7gRU2yeIHJwV5v53blb?=
 =?us-ascii?Q?cNrugJxfLPLXL4u2G5F0grWIIwppSwPgD6Kc1++WQzPSM6SKIa0LB4li/JMD?=
 =?us-ascii?Q?t+GYL9WmLNbqLKStDSjdcaEoRQ7TZqz58i6AJy33caS5oVmLyhgugAlmkta+?=
 =?us-ascii?Q?+jH03inx7PNY/EhHT7OkIjuMyXGbONeLz/ubkZtr5nfRWN+iE0PiZqBDK4R8?=
 =?us-ascii?Q?s4D5hQ+J0nt2pBhX6lVYZFbIHY7ZgIugbLWWZ0LYWhY0cyJsHUx7muj6aFej?=
 =?us-ascii?Q?qe5I80BAB/ujUxduxRFBBqy/08mV4feIVcRYJEPoy3LnfNLGMMIffgDAGN3y?=
 =?us-ascii?Q?Rwwk1pPZPTumQ1heUjnY6lQ7f0a1kYfOk7Esf6Zcn9QhpfmeUHjqtvTydxOx?=
 =?us-ascii?Q?LzQ3gov3u5zwk8bfyAv3p58o62d7k35TsdQA6G2788gqbndbtkgEGJbusrCD?=
 =?us-ascii?Q?9i9CMDzUeJqLCi1xlSaftdN5EFAtXkZD90UbgmUNCAKMZrvAu47J3ugnKf/z?=
 =?us-ascii?Q?GKTVLoLo2U06vWz1BEkLMw2QLntkUYnaR4HWIb4UGf2aCTejGtDSIunOIAAf?=
 =?us-ascii?Q?NkFt3bGTQvIoCrnuIvt9rPHrqPWbdPHZHbJS/3X2H45eWgtZKvcvRXMFrQmO?=
 =?us-ascii?Q?o22ZeiAJST7b8ng4BVUVUcCz29lPBqZ9U/lTAMLAWy8fQji/ntd9Z6ULLb3L?=
 =?us-ascii?Q?lBsiTETamXQkVRzWxODPEIO2n7X8iDNk4NI027flugWK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d844bbc-87dc-46e5-5753-08de29124a51
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2025 15:26:11.6185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0b4Hgl7WAJSiOEVmBLj7OmaLuKz1AdNY79iAo+Gtbwr1env/YwCww1uW620bupqaiDHXn1MQEEM9+Lmn53LX0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4631
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

On Fri, Nov 21, 2025 at 01:19:38PM +0200, Jani Nikula wrote:
> On Thu, 20 Nov 2025, Imre Deak <imre.deak@intel.com> wrote:
> > intel_port_to_tc() returns the PORT_TC1..6 -> TC_PORT_1..6 mapping only
> > for DDI ports that are connected to a TypeC PHY. In some cases this
> > mapping is also required for TypeC DDI ports which are not connected to
> > a TypeC PHY. Such DDI ports are the PORT_TC1..4 ports on RKL/ADLS/BMG.
> >
> > Add a separate intel_tc_phy_to_tc() helper to return the mapping for
> > ports connected to a TypeC PHY, and make all the current users - which
> > expect this semantic - call this helper. A follow-up change will need to
> > get the same mapping for TypeC DDI ports not connected to a TypeC PHY,
> > leave intel_port_to_tc() exported for that.
> 
> The TC port and phy stuff in our driver never cease to confuse me. And I
> know you've explained all this to me several times.
> 
> I think we need some "TC port and phy for dummies" (that's me)
> documentation comment somewhere in intel_tc.c that we (I) can refer to.

I documented in this patch how the HW can connect a "TypeC" DDI to a
non-TypeC PHY. But I agree a documentation about all the kinds of DDIs
and PHYs used on each platform and the way these DDIs can be connected
to different PHYs would be good. I'll try to add that.

> I also feel like the whole mess of intel_ddi_encoder_name() underlines
> how problematic the concepts are.

That function should determine the name of the DDI and the PHY connected
to that DDI in a way, you can look up the corresponding DDIs and PHYs
from Bspec. I think the names are correct now, but I agree the
platform/port if-ladder is not great and should be improved. Will also
think more about this.

> Moreover, I think intel_bios.c logs the ports incorrectly.

In print_ddi_port(), I suppose. Yes, it's incorrect, imo it should match
the corresponding intel_ddi_encoder_name().

> BR,
> Jani.
> 
> 
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     |  4 ++--
> >  drivers/gpu/drm/i915/display/intel_display.c | 23 ++++++++++++++++----
> >  drivers/gpu/drm/i915/display/intel_display.h |  1 +
> >  3 files changed, 22 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 8471bdab5c62f..ed9798b0ec009 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5148,7 +5148,7 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
> >  			       port_name(port - PORT_D_XELPD + PORT_D),
> >  			       phy_name(phy));
> >  	} else if (DISPLAY_VER(display) >= 12) {
> > -		enum tc_port tc_port = intel_port_to_tc(display, port);
> > +		enum tc_port tc_port = intel_tc_phy_port_to_tc(display, port);
> >  
> >  		seq_buf_printf(s, "DDI %s%c/PHY %s%c",
> >  			       port >= PORT_TC1 ? "TC" : "",
> > @@ -5156,7 +5156,7 @@ static const char *intel_ddi_encoder_name(struct intel_display *display,
> >  			       tc_port != TC_PORT_NONE ? "TC" : "",
> >  			       tc_port != TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> >  	} else if (DISPLAY_VER(display) >= 11) {
> > -		enum tc_port tc_port = intel_port_to_tc(display, port);
> > +		enum tc_port tc_port = intel_tc_phy_port_to_tc(display, port);
> >  
> >  		seq_buf_printf(s, "DDI %c%s/PHY %s%c",
> >  			       port_name(port),
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6c8a7f63111ec..a8a3e80001870 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1859,17 +1859,32 @@ enum phy intel_port_to_phy(struct intel_display *display, enum port port)
> >  }
> >  
> >  /* Prefer intel_encoder_to_tc() */
> > +/*
> > + * Return TC_PORT_1..I915_MAX_TC_PORTS for any TypeC DDI port. The function
> > + * can be also called for TypeC DDI ports not connected to a TypeC PHY such as
> > + * the PORT_TC1..4 ports on RKL/ADLS/BMG.
> > + */
> >  enum tc_port intel_port_to_tc(struct intel_display *display, enum port port)
> >  {
> > -	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
> > -		return TC_PORT_NONE;
> > -
> >  	if (DISPLAY_VER(display) >= 12)
> >  		return TC_PORT_1 + port - PORT_TC1;
> >  	else
> >  		return TC_PORT_1 + port - PORT_C;
> >  }
> >  
> > +/*
> > + * Return TC_PORT_1..I915_MAX_TC_PORTS for TypeC DDI ports connected to a TypeC PHY.
> > + * Note that on RKL, ADLS, BMG the PORT_TC1..4 ports are connected to a non-TypeC
> > + * PHY, so on those platforms the function returns TC_PORT_NONE.
> > + */
> > +enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display, enum port port)
> > +{
> > +	if (!intel_phy_is_tc(display, intel_port_to_phy(display, port)))
> > +		return TC_PORT_NONE;
> > +
> > +	return intel_port_to_tc(display, port);
> > +}
> > +
> >  enum phy intel_encoder_to_phy(struct intel_encoder *encoder)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> > @@ -1902,7 +1917,7 @@ enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)
> >  {
> >  	struct intel_display *display = to_intel_display(encoder);
> >  
> > -	return intel_port_to_tc(display, encoder->port);
> > +	return intel_tc_phy_port_to_tc(display, encoder->port);
> >  }
> >  
> >  enum intel_display_power_domain
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > index bcc6ccb69d2b5..f8e6e4e827222 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -451,6 +451,7 @@ bool intel_phy_is_combo(struct intel_display *display, enum phy phy);
> >  bool intel_phy_is_tc(struct intel_display *display, enum phy phy);
> >  bool intel_phy_is_snps(struct intel_display *display, enum phy phy);
> >  enum tc_port intel_port_to_tc(struct intel_display *display, enum port port);
> > +enum tc_port intel_tc_phy_port_to_tc(struct intel_display *display, enum port port);
> >  
> >  enum phy intel_encoder_to_phy(struct intel_encoder *encoder);
> >  bool intel_encoder_is_combo(struct intel_encoder *encoder);
> 
> -- 
> Jani Nikula, Intel
