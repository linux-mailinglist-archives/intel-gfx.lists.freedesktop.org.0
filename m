Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680ACB0D5D3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 11:23:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8A210E646;
	Tue, 22 Jul 2025 09:23:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nOn9/Eh1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1531D10E643;
 Tue, 22 Jul 2025 09:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753176193; x=1784712193;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=FwKLa8v7N+rnDE9fAnFk1Vj00LJVtSntkaKTHs4Wc14=;
 b=nOn9/Eh1uGe1buaB3OihDANy0twB5VyjkX4uBI/LgyjwALJFswrqhhgB
 FjyhcmRYN0IatOU1MuFJP2aLevGwvGMdalTycp3zW8ePJ8W/bDbw7W80x
 Fmy5fGxEq62wMAJBL6zjbxM6lIs6ti/RuBeDbMoX/u7AuC2XAxjDywDvH
 5vK9PkF1dZSxU41bh9Ims9d1FdSmF9T/t77PXVDIHwincfWZiSkJtW0tz
 TAe9Sy5xS7pOa9DYJaRA2HD34ZAz0A11sKYXlkleRFPiFXKyvbHPXpm7F
 vziYfuLeVzkD1M+GsmvxX6/WcKPK9ANydW4ZAJfdoB5X9OdsUjA9wirQt Q==;
X-CSE-ConnectionGUID: 8JFzk0plRDO15mCxhCb1Mg==
X-CSE-MsgGUID: qECrzEa6T5qiSkhWYZDp2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="55298020"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="55298020"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 02:23:13 -0700
X-CSE-ConnectionGUID: tjIL1odKRZKINyYFxwdKWA==
X-CSE-MsgGUID: h99qUh73QtSF9BUsoJgvfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163321571"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 02:23:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 02:23:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 02:23:12 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 22 Jul 2025 02:23:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VFVTALvYbCj17ptfpw9Y+Syt1m+UzfWSMWJ6UfpW8cHGui+RaFmM/h5+R7bQYzZNCvkQZnB5B4pNn3fD/72DWdl63ibCXEbPhBMXDt+jsIWPOQl/ZVVzPBQoGyxo51rwza62QEnLalTT1TvcWM/lVxGSRtongt1cqv6IwzHLdWtHcxD1wr6puK5QLGbX7dgmeGZD9wekUki8ZUDjHst3wYh10NlGi9UrL0uPP7Fn6jI66mNdeS7/84GwMrQm2/i2qj5Ms6PM25fsF2OW0J7mRn1UgqlHeDIkbIgbAVMrRt+deJ6DXtx+4nSINOJoI5L9W79JoSwU8XR/mX9bVPRVnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cx0BkFLO0sEN/haTIqoHxNqiO8FweOt8Ub7PymY0KJ4=;
 b=WAWfDi6OPVkKe79ZJEpqBqRitHiyn0e27ZqW4Xt8l9WVIThBGnRe+mbwLzE1+sBPMbQmlDD4Tk5HU3xpe3TU3XBUliGP1TAIYFzbNOHCETLVMGEeg2+wFnycTfCdD+lo5lkQssKL1dHIlgi29lPXcFE4+vIflKM0W0uTUb0uc2tkyl8rd4ENSALf+49ce0lz6vbOCO3fAFhlWnPFTC5Q7fqTnwh50fXpSDkghBIbO/ZaHcuG4BuuDz9s3dGKsHwBk0tV56KuQfNHoopNivMquY8LTUKCIOqkAe9yUNT6rapNmmk7kWH/7B29XcZzGbcU16DTIJZLRTGtvmQt9sKwcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS4PPFABF58482A.namprd11.prod.outlook.com (2603:10b6:f:fc02::45)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.28; Tue, 22 Jul
 2025 09:23:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Tue, 22 Jul 2025
 09:23:10 +0000
Date: Tue, 22 Jul 2025 12:22:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/9] drm/i915/dp: Limit m/n ratio to 10 for DP SST
Message-ID: <aH9Ybxei1-Llc9qz@ideak-desk>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
 <20250721091529.3864004-3-ankit.k.nautiyal@intel.com>
 <aH4ngmg05DDtKmDN@ideak-desk>
 <05541222-45bf-4546-9976-797735d40e78@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <05541222-45bf-4546-9976-797735d40e78@intel.com>
X-ClientProxiedBy: DB9PR01CA0015.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS4PPFABF58482A:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b1ba5db-beb7-4d52-9fa7-08ddc9015fff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bJWqoefGjbjAM1tMxXf7APgxe4SGCC/lbpigmIeuZc5l9J4qAwJmGWA40+eC?=
 =?us-ascii?Q?aLbpbG0kAGuvQozO3hqtva+E/Fv+7+ey856qkXVjbEhIyJYcZ0ODUGBZwbfN?=
 =?us-ascii?Q?BGBf7koRoU6dP/FIeg27a8GCfVWQKwFsK5UAI9OvqPmIPhgDF+iDvY4M16Nh?=
 =?us-ascii?Q?36ClqGRWxmVVatHiWzqtBGLbvgjHMYv3M5yeWtQJKe0QVWItPkdLRK4PKLg9?=
 =?us-ascii?Q?uSiXDtFMnEeHiJgic9rxNBy/4ise8BfKM/gfxUXvdQ7NjuX5ueO64dTcMXMw?=
 =?us-ascii?Q?41OM8ofMN/8+dTo7XbBnPB7sQnQrAdPvgHWsQmHytwt/7STuYZ5hxdDtrYh6?=
 =?us-ascii?Q?MoHwDGfxpO6z8U60fPj3zAlYkm+80tCzUvqhYvOKAHiYkx/ADipN1Pivk/MW?=
 =?us-ascii?Q?T/hkbN1NiZtGbDGyMkbfW/W1307bKTU/SWhcf8fsKuJKYC3XZ7Oq4D8KzTJv?=
 =?us-ascii?Q?n3sIPfF3Wha63VZcrGgebquGzFV7HnOYzM4gVlDo9peqnuXLUw9vMsMRqaCv?=
 =?us-ascii?Q?Oe/sjrkTswfSy/gstfrEzMZX1ItYN1dQ/46WFH+sFxsOc+XVqytD9JEQUPeK?=
 =?us-ascii?Q?+poO1n9m2ZKsEjchmCt8x18rAlJ3eHeazO+RNvePwUdpXVrSkEObJfYdFn9+?=
 =?us-ascii?Q?dSCmHhef9i0lejeavZzV7gLi1QZhzuwvpsy9mMgWGt31NgSujNIOHuwBzEiR?=
 =?us-ascii?Q?F7D0osmGCf90WK1u89XXo/deFBKKOvKsMnKaYO3nAdonHdP29n6F3fa3QgZT?=
 =?us-ascii?Q?F71yuKf+35MDniRVaL1mdjMOwPaak9BuT7IPsF5HAI9yJ+7I4je09GRokplJ?=
 =?us-ascii?Q?tvqGJ86fQDTPCSxwAXuZ4sKsOiGvVMr89JIoANTXK5rW0tJ8rAps95c4wJT0?=
 =?us-ascii?Q?gCCl0CLzGq7XrJBzyZiPR5FIWXLmo3UUySq1c0GQvtl4OB+zd27mqY8FcBBH?=
 =?us-ascii?Q?BqivwbBJys9jNkj3/CPprbcoxeIYGXwvLmuTbDJFJvxKWhWS2ROSyDA3ONLl?=
 =?us-ascii?Q?kH/EP7vAZBOTEqUd0lhqUSqMFnSoRgeA6wZQXfOq1eyaBRn6W+h5Sh/2nfid?=
 =?us-ascii?Q?/oaIFSHigcnkkuy0Vocu0rbUvK0x+SmRYxzebmh9m2Th/C1vKV1hKZoB9G5o?=
 =?us-ascii?Q?9Cl2J8Uus2xocOwg6CZGUNzXI1p7HqwQa7ivhFmipIUDZtw3YpoTGDkFmaVa?=
 =?us-ascii?Q?G2KTb94444s9NP3LhLtNTiMLb8CBGH5/qVLamEEw8IYSRvKCKJ68osFLskhP?=
 =?us-ascii?Q?HqHS1+w1IDQ35hPvL4d5lyvIV3QBRTyxoJi4SExRDu8fDs1/IeV1jvptJwVp?=
 =?us-ascii?Q?pzQDuG89N+OSdgbB2gfhCr6Dfuk+UyOF8Be8eyZlSdc/BCouvJBx4sPPRaQg?=
 =?us-ascii?Q?nVjAwxbqK5rdpqoD5sE01OO2YJUt9q5MksVo6yXp1c8tFum3e7pAnkLNQF4s?=
 =?us-ascii?Q?17v8XkdS4kQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NjnOiAsDtHKe8aj6rNfwAxErrh7MVUzakqMzJ05SxzuMCdmYL52xUkWSlez5?=
 =?us-ascii?Q?e9x9qf1kpnDn1a2EzIZISQF4oz4bfEZP9sBIO2NRv9FbfGVfkCWFKCDBTQYM?=
 =?us-ascii?Q?5/zjdnost1/An+xj9mBZX6wubkzowlpmIfTiwYOQA9noJxTK9siPb+euC5r8?=
 =?us-ascii?Q?hjuSwX3je7hQJrCqtNFFGgYOQvmaO9eygNsSBmCIFGCcXyTijkYcp4Nusq+p?=
 =?us-ascii?Q?ha4N8m3pqJGN2c8aj6NycLJHoAi1lMomiNzGHG1/UD1K5ImWJ+WMhuM8VZo7?=
 =?us-ascii?Q?awGGYwjMEASCYYCqmtP83obRV79U3M0Dfn9aIPXT9yuoQaDQpq8dM5THsrlM?=
 =?us-ascii?Q?8pwHXxIV0vhhpja5jmuaa6vbAdcaf50OkdoROshQXVXSCfoUn80xHo8MVhQR?=
 =?us-ascii?Q?vMcPSF7Idpl1gQS/pudyoBS0JFgEpvbxzwGUWjn3Zu+0F2CUvFcFYRw6T1X5?=
 =?us-ascii?Q?o3jT7+704DkK7Wv4qyqCqpP+u8VY07YPIuZEOBjHWJ532tPiSYrPhDSQB02J?=
 =?us-ascii?Q?TCz5XYWdKs+kdU1CS1qGaKCYkeKkZcwHptHp02ca2GrkYON7jKiu69BD+4fA?=
 =?us-ascii?Q?WiQlT2lMT29CKDi7lUWoYU9Y/3kiKp9QCmMXzST1V61y3/AIMbHOB1f9UmWu?=
 =?us-ascii?Q?j3h1HVVpsGDSQXZumdkCu8RE47/GCVotWIQ1BExDZKXcdybjEEx2KnSEhNLZ?=
 =?us-ascii?Q?/8DYoYPMrKcs154h3bpYRY54rb9hbZ2RkusmiGarll2EVF+dH0dsNjGD3X56?=
 =?us-ascii?Q?04ostDoDNj52EuuIxfuPwJoVINXuPkIt7pO5JBlV5SqYtuwGPAictpZnmATd?=
 =?us-ascii?Q?lLsjCaKWywdjIHAP25qKCI5vSA7lIhdipTVnLmtIuk7NedxHIcotls0byMYM?=
 =?us-ascii?Q?bcrr7L0OCGitMEv+bT6jfkl4VqsBwh7XSUoUaoMWiINtHkexI5WXZ0B2aPVz?=
 =?us-ascii?Q?u9bg456DX6XfXiqLbNbnZsKTVxAZ5OxDN/iRgKiCYpXDTcpAnt9BGwBz4Qpe?=
 =?us-ascii?Q?4RJEZnwKKpmhsvV+Pm8BOrRnc2cK0WlMNzfoAo00M8GZ7pWSA/rUX8hB2q1b?=
 =?us-ascii?Q?HH1EQwA69Runs4qNbbGHJWJ2ojiJ9F1nOADTyUHJXEO3hRXlCqIR1Gn7dJ/3?=
 =?us-ascii?Q?8ayfsvnx8Pk1t8g9SBFcHxbVJvx+YVZw/IPiqq/EfI0Z1f1i9kW/hPHSZi31?=
 =?us-ascii?Q?CCBS69HyoYP2TR08o3YXl/yn8IZ+HoH/v4s2D9c8V3b7j9irL96S3EKC4ssx?=
 =?us-ascii?Q?E9DEOIyNUO6IdCSEc/zGTww66UxgjBZZhfMjk8+z49Bt+Fxoj96c8jN7bmfR?=
 =?us-ascii?Q?y95X5MiPTWjrAf2RYdZRrtnHG03W+WHhkT4mK3zS09DIjyEgsA7TaiVautMu?=
 =?us-ascii?Q?CtJqvR9KPNciCImmmUGmFuPJhnKP9U9hvAzW0+u6du8NF8mbsruU562hpoPe?=
 =?us-ascii?Q?J1DiTOhDODa91CFnDxKbAfoyt+EBG9dU93f3LjYWJDJLej4ctKjuMEKlP2+F?=
 =?us-ascii?Q?nqU1PUCU3T8VnTNuRp0+dllNmG4GxVrKtsnpM4NVDwSYaFPTX5Jan0GBxiIB?=
 =?us-ascii?Q?AWZesz3hDgHYsin9YSUF+vmaICHtcJ3GvYyQH3PuR1yGHupXgbzgkZXVS5mA?=
 =?us-ascii?Q?bN16kTicEO67ve1qK8vW6xiIuUvNCIDQv2c+bhniuFr6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b1ba5db-beb7-4d52-9fa7-08ddc9015fff
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 09:23:10.0831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dqV3UPq2WaqdVBlMvJVPSrOHNi9SW7AKxjvfG73cJqjQCngLLHVstJ1bjmwoSmIRO5aNHXrg/cIgcvLgkhRIcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFABF58482A
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

On Tue, Jul 22, 2025 at 11:25:32AM +0530, Nautiyal, Ankit K wrote:
> 
> On 7/21/2025 5:11 PM, Imre Deak wrote:
> > On Mon, Jul 21, 2025 at 02:45:22PM +0530, Ankit Nautiyal wrote:
> > > The hardware cannot support DisplayPort configurations where the
> > > ceiling of the Link M/Link N ratio exceeds 10. This limitation has
> > > always existed, but it typically wasn't encountered without the use of
> > > joiners and DSC.
> > > 
> > > With higher resolutions and combinations involving joiners and DSC,
> > > this constraint can now be hit in certain scenarios.
> > > 
> > > Introduce a check during link rate configuration to ensure
> > > the computed M/N ratio does not exceed the hardware limit. If no valid
> > > link rate satisfies this constraint, the mode will be rejected.
> > > 
> > > Note: This change applies the check only for SST. Support for MST will
> > > be added in a subsequent commit.
> > > 
> > > v2:
> > > -Move the M/N ratio check to the link rate configuration phase instead
> > > of during M/N computation. (Ville)
> > > -Prune modes that cannot be supported even with highest link rate due to
> > > M/N ratio restriction.
> > > 
> > > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_display.c |  1 -
> > >   drivers/gpu/drm/i915/display/intel_display.h |  3 ++
> > >   drivers/gpu/drm/i915/display/intel_dp.c      | 33 +++++++++++++++++++-
> > >   3 files changed, 35 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 671491a2a3b6..f32a4956c926 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2506,7 +2506,6 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
> > >   	intel_reduce_m_n_ratio(ret_m, ret_n);
> > >   }
> > > -static
> > >   void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
> > >   				u32 pixel_clock,
> > >   				u32 link_clock)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > > index 37e2ab301a80..bfa3db219b9c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > @@ -559,5 +559,8 @@ bool assert_port_valid(struct intel_display *display, enum port port);
> > >   bool intel_scanout_needs_vtd_wa(struct intel_display *display);
> > >   int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
> > > +void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
> > > +				u32 pixel_clock,
> > > +				u32 link_clock);
> > >   #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 54d88f24b689..4245dd65b2af 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -1407,6 +1407,28 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
> > >   	return true;
> > >   }
> > > +static int
> > > +intel_dp_get_max_m_n_ratio(void)
> > > +{
> > > +	return 10;
> > > +}
> > > +
> > > +static bool
> > > +intel_dp_can_support_m_n(int pixel_clock,
> > > +			 int link_rate)
> > > +{
> > > +	int max_m_n_ratio = intel_dp_get_max_m_n_ratio();
> > > +	u32 link_m, link_n;
> > > +	int m_n_ratio;
> > > +
> > > +	intel_display_get_link_m_n(&link_m, &link_n,
> > > +				   pixel_clock, link_rate);
> > > +
> > > +	m_n_ratio = DIV_ROUND_UP(link_m, link_n);
> > > +
> > > +	return m_n_ratio <= max_m_n_ratio;
> > > +}
> > > +
> > >   static enum drm_mode_status
> > >   intel_dp_mode_valid(struct drm_connector *_connector,
> > >   		    const struct drm_display_mode *mode)
> > > @@ -1518,6 +1540,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > >   	if (status != MODE_OK)
> > >   		return status;
> > > +	if (!intel_dp_can_support_m_n(target_clock, max_rate))
> > > +		return MODE_CLOCK_HIGH;
> > > +
> > >   	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
> > >   }
> > > @@ -1789,6 +1814,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
> > >   			    link_rate > limits->max_rate)
> > >   				continue;
> > > +			if (!intel_dp_can_support_m_n(clock, link_rate))
> > > +				continue;
> > Could this limit be set in limits->min_rate, computed already in
> > intel_dp_compute_config_limits()? (And fail already there if this is
> > bigger than limits->max_rate.)
> 
> Yes right this can be done in intel_dp_compute_config_limit.
> 
> We can iterate over the array of common_rates and find the rate for which
> the ratio is within limits and bail out early if we cant find such a link
> rate.
> 
> Or otherwise instead of iterating over rates, I guess theoretically we can
> calculate the minimum link rate for given pixelclock and ratio and set it to
> limits->min_rate and bail out early if this is more than the
> limits->max_rate.

Right, the first option to just iterate over common_rates sounds better.

limits->min_rate should be set to a validate rate, so it will need to be
looked up from common_rates anyway. There's also
intel_dp_rate_limit_len()/intel_dp_common_rate(), but the former returns
the index for a rate which is <= than the limit passed to it (while >=
would be needed here), so can't be used as-is.

I noticed that the mode's pixel clock is adjusted later based on the MSO
link count (in intel_dp_compute_config()) and the number of joined pipes
(in intel_joiner_adjust_timings()), but I suppose this doesn't matter,
since the link m/n values are calculated with the unadjusted pixel
clock. Could you confirm this nevertheless?

> However this might be bit tricky as symbol size is different for uhbr.
> 
> I will check this out, and move this in intel_dp_compute_config_limits.
> 
> Thanks & Regards,
> 
> Ankit
> 
> 
> > 
> > > +
> > >   			for (lane_count = limits->min_lane_count;
> > >   			     lane_count <= limits->max_lane_count;
> > >   			     lane_count <<= 1) {
> > > @@ -1796,7 +1824,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
> > >   									 link_rate,
> > >   									 lane_count);
> > > -
> > >   				if (mode_rate <= link_avail) {
> > >   					pipe_config->lane_count = lane_count;
> > >   					pipe_config->pipe_bpp = bpp;
> > > @@ -1983,6 +2010,10 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
> > >   		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
> > >   			continue;
> > > +		if (!intel_dp_can_support_m_n(adjusted_mode->clock,
> > > +					      link_rate))
> > > +			continue;
> > > +
> > >   		for (lane_count = limits->min_lane_count;
> > >   		     lane_count <= limits->max_lane_count;
> > >   		     lane_count <<= 1) {
> > > -- 
> > > 2.45.2
> > > 
