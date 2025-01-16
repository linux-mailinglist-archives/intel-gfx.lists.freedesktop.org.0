Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC1CA13C47
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 15:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9340410E98E;
	Thu, 16 Jan 2025 14:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F9JLrHmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A3210E98E;
 Thu, 16 Jan 2025 14:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737037892; x=1768573892;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=TihaTYbRakf5oaJrxgnxy3wUvFpIpWYgfscX4oyxUn4=;
 b=F9JLrHmpZhnuIEY0//mHSFU4tHhA0fzBrcYRmwy3rD9t1gAxJaAbHfpb
 fCz5vk1kqmQcuRZjHxlXfH/YsHxrIacJu25vWCfjSBF+WvvmWIn0wOHOw
 ft1w2x+FAZTruT/TttgFux11vr2YqjXmGHe3kHWOScb5W7IUlt9xYOjnD
 sqa4Jjg841VZCW1xGn8EAaDzVbXDyJXSWc6dqDOQe69oIhWbMjf9Py53C
 IxEyWFo42pI2Kqeq8GkxEYGf4ua09yP3/8YcE0H3RaY69AA9/DpcrzGgV
 YmFw13/vrdDZCBn2Vqfg1lWGIuQgxQtjteJ1GOPWMdGwzaCjr7VDWN166 g==;
X-CSE-ConnectionGUID: PcsysMyiQD2duBulA3rKpw==
X-CSE-MsgGUID: 30HjyqpERSyffV0GvCQMLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="25026792"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="25026792"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 06:31:31 -0800
X-CSE-ConnectionGUID: L/OOpj62R5GQbmvNKMVRDQ==
X-CSE-MsgGUID: yATSp5SrSHSzWRL2aU0hmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105971403"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 06:31:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 06:31:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 06:31:31 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 06:31:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CrC0uGOnXR3PfRDRR/K/YkjiOyA//6A0v2ZegCt5pTult8kzLLP00RQb1p60OeoDkACY69N2aWpwbIAOW3BEPzGOQUqAqoPHD7H0yI5CV4peRYWhr4D9OV9sI5IXiDs9jAaoigEUXbLjj2jpgnIq97sTsAkFfBbVepFc+qboVWQb4qiNZ15C0OmApjtSxkvCS6PZ+mOJnvPcMQoccovDWkkOlV2+GIMVHAHnsuRtxV/XNc64TXyqwZjnju2mW8CAkS5fhDWOucUawfod0Lof0TXav+zgScPs9toVymQ/s/JAF+KVRWNaQs9j40G0xOsf0k7k0O+yV/THp1W7EFs8XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kAz9bnhOPYiZAti+B4Fl1TImWgIOnitH7V4ckWHMDtI=;
 b=lFZCoOdnE4V+TWJHjNhg/Vikq94X3F4Pd357U/o0F7WFnMy6qPxEnVXSd6ungf8bfJDk0vXCoC6NHnrOwCOpk2j3RDNuK3pB/cyVYVeCvc4uA2gwtzQWsA/nwowVCVNyDk9opaOcoyxPvcWJeWmIl6WPGmD2VdMUzmhhf2UnP6zfaf2GXS4BGiiq2S2Pc2qffSHNMAj6m+gGgoUFvedonfZf9NUkL8QpPE+MCHwRP/FPvoFUWg8qL/icJuRbFPD5Ooyq5Bm3NRJ6FDP9Jex1PsS0/OI666dTEyJVezFzZAUuJEdr0eHofTfTfq2DGJ9Z+LIPNH3CegbLzPuO9LwJlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by CO1PR11MB4883.namprd11.prod.outlook.com (2603:10b6:303:9b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 14:31:01 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d%4]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 14:31:01 +0000
Date: Thu, 16 Jan 2025 15:30:51 +0100
From: Francois Dugast <francois.dugast@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/xe: Add missing SPDX license identifiers
Message-ID: <Z4kYG7ZFE71cLBZw@fdugast-desk>
References: <20250116124532.1480351-1-francois.dugast@intel.com>
 <u7wm5gyzznr7obtgmnrnafh4lliyqgxvx5umg6o2iqxmxscc5j@wnctmzdwxk7t>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <u7wm5gyzznr7obtgmnrnafh4lliyqgxvx5umg6o2iqxmxscc5j@wnctmzdwxk7t>
Organization: Intel Corporation
X-ClientProxiedBy: ZR0P278CA0152.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::10) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|CO1PR11MB4883:EE_
X-MS-Office365-Filtering-Correlation-Id: b2252aa4-ac09-4857-4b81-08dd363a6650
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?0x65m1AmyNX5AcXbAEGuElZPtbSo52zCmOrqJLJhrQyG4M7EnpLp8KBAwN?=
 =?iso-8859-1?Q?WFQOLIzMps9h1GUZPz5VwDBCLMx1TrKdLViq0edd9aoVJqkE7T2cd9OPiO?=
 =?iso-8859-1?Q?3uCLIMYnU08p90g9mm9MqogsEOiZjbvAJClc5gF6iT44bvRiG/q/tfJmUP?=
 =?iso-8859-1?Q?9Y1L/FQd8h3cwHRLAwZ4pVPl3ml/me7s7mCuna/S8T6Pk6+v06EW3FoEy5?=
 =?iso-8859-1?Q?l0YS++J6Cce6uK1Y0hFF+X1IcuPxxRGLF3jPtDNS97hm9HNbOnKvyGcPLC?=
 =?iso-8859-1?Q?C46lmyssDIA7Zizc1bq3XbIMMGI8XAgaLrK/qUtfQg6ShhNi1sueeE2RNO?=
 =?iso-8859-1?Q?MwmHlL8f3P8tTN+kobPwtsUUG5kg7WgnSdc3EjB1pyS9qp4X0V8i/57qo1?=
 =?iso-8859-1?Q?KBrd0uFWl8f1ELVHj8SLKi+Y1YdqB8Ql22xjgWXOgznvvzY5IjA3FqD/Tu?=
 =?iso-8859-1?Q?y3j7hntMBFjeh9VPr1+tXk2M2uVwTApvRl5B8AdOVNPfhKlWw94hcTmdz7?=
 =?iso-8859-1?Q?BOZjgODLNQ05+Ns57Nesg9KCUCBSypPElKUdwznCYVcrbgPBYSsySh9tDB?=
 =?iso-8859-1?Q?Ao7UCHKudrWjBAkTrkGULBZJml0z8L1K8Ud22/EGnahb0AN3MonWL17DuM?=
 =?iso-8859-1?Q?mS9x9cBrLA5QAE9YZxP5irzbgbv6cBO8xwaJFLeGtbDVLI7uc8kDILnPKn?=
 =?iso-8859-1?Q?d4yO+CHj0FIRbsmJ7sCtR5wPwGewvlgBCrdc1sJN8Qij/ZugSiH98adiPu?=
 =?iso-8859-1?Q?Gsv8TCvp0o0BLueqZHZ9qcmHrIoXkcGOB0hXsv26n4CsVCWYGoFkgxa30t?=
 =?iso-8859-1?Q?W8rmCaVNoOr0HwPQy5G/ty0k3ny9EfLgGhuOWQYKmEdr1jiKYcYQ5CXsld?=
 =?iso-8859-1?Q?C339wWpcg4F6lHQ9N10lEuoqEREHzWSTrqrJg42h3ys+nwH5bQalaKsEwh?=
 =?iso-8859-1?Q?kSdr1zqo84Eg9RJ6ee+cGjenj5vCEslRsfxmrEBq3j/In+Oh9+Hj7jSi7H?=
 =?iso-8859-1?Q?n9bHvsJ9Sqta27zeEDhcgK8QkO/ZRXA5XxLH0R5A/gOSE2gfGVoGSA6r9c?=
 =?iso-8859-1?Q?ynL++ot4DPLkzTeE6lbdB94N1Q2kd2GG3+edEL/dnXEnVQjlcj9ypglkDr?=
 =?iso-8859-1?Q?eVz6iFskfFvufcycIhy6/AfPDNP+E8wKeMH8V6ybdW+1kNfpqqeR3Ki6Wi?=
 =?iso-8859-1?Q?e7wWoY1G9yGkSrj7XoBukCT00YnhzQhmwBO9PDTGyhFROaLycpIlxMsQTB?=
 =?iso-8859-1?Q?ifCSe2NICx4/hT0bWDT6XCPHTIasuVfxtAB4hBSOUPqq6TzUfEgM9f1mVR?=
 =?iso-8859-1?Q?G6gwLY1PERPTS29qfnrcaoG2qRAnTILOgh26SlUnlBzMT0pRlG6+Lk+6T1?=
 =?iso-8859-1?Q?n77+yT1AyTx0kp5wgA7XUyUV7JKBXgiig2ThweOsmCIQjDzYaPHCBHzD1k?=
 =?iso-8859-1?Q?EOzR40s0bBpgm9jG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?DetVpbICwpkD9plapbnglGeiSCuDIB9atIdtfkTwvHBkDaDB2fywavVYvt?=
 =?iso-8859-1?Q?drfqMuKFHUzpnMi/tl4TPDARLScpkdCKMn4XD5kfpJsAwGUsr30SAs9LQY?=
 =?iso-8859-1?Q?GqA6HL2bHCXF/DsI3z/t2mytbCcivvr1bfqCEjDYTsWzOAeIqc5akIHXcR?=
 =?iso-8859-1?Q?mB24nFg/qMWbDKmoYkJajc48ZUWIK0gwkMfQ3IupTpskyvoVXFZBeyRUHC?=
 =?iso-8859-1?Q?AS6Gpf9ksP/4ygd7vn10X/7OMRuPibEX4ULysWA1k8LleUqj75jtvoXSBa?=
 =?iso-8859-1?Q?Oou7Jm33KZaIEgLdpcoAzkvEMkXDyNaRPGWoduR6FTjuwrEEgkSKv9OGnX?=
 =?iso-8859-1?Q?+7FXadUp9vfoZ7ySFs9zb9XY7Kll7Dos/Bwx5Z3KaFEkH9hLUdp+hv2J29?=
 =?iso-8859-1?Q?LwlxRLhEjfOyNTP/Zvn47sTcDuJfMPeWVK7+D+I5K39G6+kVv5BKpQ8nEw?=
 =?iso-8859-1?Q?prvNkwvddrxY3rZuuc4M3CbzaQojxobAiIaf1J5moX/m5XqBpSP55BvPoa?=
 =?iso-8859-1?Q?PMI8D4reeVqkJCFai/rLsS+cDLXgDHYqujt5QXktb2TYVtuIPo7X4gmmsj?=
 =?iso-8859-1?Q?/d04wbBb7Wsmsg1U6rfc4FqedZkZpENA5OqXaVPaMb1n0I5b4R6uGggxzq?=
 =?iso-8859-1?Q?pXBkJ/3N+RFT4AB7fThNZxzyJMJ8TZ+MsggUS/HHUXij83AUEbVmjY6sTK?=
 =?iso-8859-1?Q?khhz7CvVewfQzXf+Wu8zpOCxNwfgcW7FOJcQhfgQNIKlP5frXjsbJwD+Ti?=
 =?iso-8859-1?Q?n3Hzj1P3d8P00XZH7fd5m8rp+UAYZEO4pHIwOImox+AhuUmK4ChV6ur5PR?=
 =?iso-8859-1?Q?WViiHKc7a9q8LilObhJTJzGnAWdfMsABtBcqRMV3NGww8g3hKohjPq/6jS?=
 =?iso-8859-1?Q?C77SrjtxMS8T6nsec6s2sQQFhqg5nCpDD+/uxmidzvX0P434bFHJjFUDZG?=
 =?iso-8859-1?Q?F0G0/bLYKdhIIsih/nk7OBmIp4HCk58eBgyEI8xwWbPa1pi+ZcBVuETTOC?=
 =?iso-8859-1?Q?+Y6CmyZQu/VTkV5utZvLODBLeaVY5Bl1GErnmjRUje7OU/AlD3lsFfeDfR?=
 =?iso-8859-1?Q?vYmkhlcasPir6bWMX8EW8FnnS6cJ3No0SzSlvCu2W9sqwzCsgI3Tvvei5+?=
 =?iso-8859-1?Q?gqLXooG9K4BIyt9HQETaFBK9XyO2IkJJEkAkmhrhv7GZnvU8o+oN3IxfSu?=
 =?iso-8859-1?Q?ZhMXKpxkTNAOF5W/f1nvkyqkN3neiU7mZnXKPXZz98uf082H8ZXCXDrFgs?=
 =?iso-8859-1?Q?lK/VaVWsNj5NzbrvOdpYITG3Wu3LAbT10rhtFtPCY9BdQrWTtbpOw0v5Wt?=
 =?iso-8859-1?Q?WBjVSyd5+PjtecceknPj4JD+mKu/yx0aDMbnTZjBsrEuDlpAMd1RtBLk7B?=
 =?iso-8859-1?Q?nzrRduFu3r9fJwTPryP55tITYsBcZByClUX6aPN31HfJ8n0WiLmOJuSvgR?=
 =?iso-8859-1?Q?N5zGr0FYAdrWdV3G+dk/xrNR05wl3lLvCtNyAHSYfpaqqJmtisHz/dtLYx?=
 =?iso-8859-1?Q?pzYe4mLhc7qQPbx6oOY3O6uRs3i7Od+m5n4T4hSRcSkxV55VPbW8ZQeljr?=
 =?iso-8859-1?Q?/NGNefKGwZHML5ObcV8ZJowZ9BnOZhdORIAf21E1SMNrXxK3bXk3FaCz8y?=
 =?iso-8859-1?Q?oIHE8pOCWTfPjVSFUy23KkmlymN8GB89EwqJRr7P7elqp+raBS4s7LUg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2252aa4-ac09-4857-4b81-08dd363a6650
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 14:31:01.0664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tc2wopKqghPmJxc7O0WsDehNPNRguQ965jo9UyCROOTTEePxawAz6615ygj7YMZ4wYJJOOZBWwOkSkMHx9hER7PZk6Q0Mr1Ux05ku0geH+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4883
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

On Thu, Jan 16, 2025 at 08:26:36AM -0600, Lucas De Marchi wrote:
> On Thu, Jan 16, 2025 at 01:45:32PM +0100, Francois Dugast wrote:
> > Ensure all Xe driver files have a proper SPDX license identifier, add it
> > in files where it was missing.
> > 
> > Signed-off-by: Francois Dugast <francois.dugast@intel.com>
> > ---
> > drivers/gpu/drm/xe/Kconfig.profile                           | 1 +
> > drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h | 5 +++++
> > 2 files changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/xe/Kconfig.profile b/drivers/gpu/drm/xe/Kconfig.profile
> > index ba17a25e8db3..7530df998148 100644
> > --- a/drivers/gpu/drm/xe/Kconfig.profile
> > +++ b/drivers/gpu/drm/xe/Kconfig.profile
> > @@ -1,3 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > config DRM_XE_JOB_TIMEOUT_MAX
> > 	int "Default max job timeout (ms)"
> > 	default 10000 # milliseconds
> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> > index cb6c7598824b..a1ff59288a3d 100644
> > --- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> > +++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> > @@ -1,3 +1,8 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2024 Intel Corporation
> 
> 		^2025
> 
> otherwise,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

As this should have been there since initial commit, should we not use
year of file creation according to git log, rather than current year?

Francois

> 
> Lucas De Marchi
> 
> > + */
> > +
> > #ifndef _I915_GEM_STOLEN_H_
> > #define _I915_GEM_STOLEN_H_
> > 
> > -- 
> > 2.43.0
> > 
