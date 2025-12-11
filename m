Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BBACB5829
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 11:23:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02FEA10E7D2;
	Thu, 11 Dec 2025 10:23:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdkSWj29";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D177110E7E6;
 Thu, 11 Dec 2025 10:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765448632; x=1796984632;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=naLDvADcsSkp5/8oFcLjs5g4oi8n9+wjL9QKDmK9lJA=;
 b=PdkSWj29Uh4h6rhPYDyuVY2XWvq+mSjWkA8+WDhDFjaQAIthXN1IOGrq
 +RZIJZnA1o6ZVjDMQa2b5raWPxRyXYNFY6G1P1r3JgBQNnSSsNwCGpy6N
 PyKpaP2WWl/RwB3zW+BiDcJ/2jy2VtodH59JuaWyqEqwF26aW6sqZnQql
 WJ7J1XEDXe5UUEr/FDWebhL3Ee0DcxyPy9I9QVtgSdXqXqA3LogPyeA2c
 HGEYlwDlcxasEWeiAJKleQIvhfB6iU6oIgOQsTkAzqsUUh+Ub9dcYKGCI
 Sm/0q8/7LRAhuPZdm1NaELHir6d3p0DFWNWHF4fVS6MFAKdTfaTdETVwq w==;
X-CSE-ConnectionGUID: 3kqsOFkBTT+0GWuKMdCEbg==
X-CSE-MsgGUID: g+teDTFESRexy7pmcV9Kaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67467798"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67467798"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:23:52 -0800
X-CSE-ConnectionGUID: 95hGVkscSJykX0qbbKCiZw==
X-CSE-MsgGUID: OLOeaqfzS+ujJ+REcYkgmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="200928164"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 02:23:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:23:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 02:23:50 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.32) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 02:23:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lQkRIKtrkzc6mIM+TzSq+QMLMYlcEkAuFvAhqWtz/26HRNfzTpqVP9BhmV0plVcvOGg6l9+AugFSqIxsDqNfB/scqqdfVZQQW5/Tyfk/m7uONqpa2iLx+i0mO/mH7CcyDaECWwDMtuhk/ZIegWJLRKgH41VTTLO8XmZLxBVv8qurPpF3nrbLvEIw+9SYfGpFQLvBH+ckoemtu3PvWFXPrg7uHynF/GuPo8tegwmegAMp/Km8T3Ee4u/T7Cla6apx4RWWLRvckfTp8ZudMBjQyw4RW0MLUDIslLlL+B/74k7KdLGOS1Glx864QrW4wDw+ixjGWh135uPZCrEnqlX9+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gT+eNr2n9cl1cck4+99445F3jQvnvMiGfE55rD9TNxs=;
 b=m5yFkll4vS+NsublSuLCq18q7ts/jE99LlS8n6IgI+5dA1RvmqTN4AxGqJH9dLAMX006MONVvKqByk6iky3c6P3Y1nvAIdolDhFlMMOPpylykm6T3dyixnUjMgTB9nCJhRFBuKLYclCXDgtVAnIGQEQrUllunzLNaARPCcKgvKLIUweo3RruzK6BeXz5L3kTaQloLx5QdtaBxwxCWN57k0J2opF7XvN1rFofO0SbE1S5s3rXzo6ooQdpCl63ea8+U7ZFAXwbTbH0HhH6gkZr+pK4gCpytKS+C5sILMEh3rWmFImbyAITKY1Oxw4qVFK4pX3j9rNiEciuEzkKCa9+AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by SA1PR11MB7085.namprd11.prod.outlook.com (2603:10b6:806:2ba::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Thu, 11 Dec
 2025 10:23:47 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 10:23:46 +0000
Date: Thu, 11 Dec 2025 12:23:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni Hogander <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 50/50] drm/i915/dp: Use intel_dp_dsc_get_slice_config()
Message-ID: <aTqbrglYFDv7krbV@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-51-imre.deak@intel.com>
 <373f8167ff21a16c8856f3c83499c7176e4b1890.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <373f8167ff21a16c8856f3c83499c7176e4b1890.camel@intel.com>
X-ClientProxiedBy: LO2P265CA0456.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::36) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|SA1PR11MB7085:EE_
X-MS-Office365-Filtering-Correlation-Id: ae1e6441-9f43-4773-b4c1-08de389f5e00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?DO3Vd9rSS1shHItTBeJIxoIhyeVHH5Vi26o2jIjuoK+xGBVoZDqXpOUjjR?=
 =?iso-8859-1?Q?d4TZyizXtvFmuXIfVSur9DijV2CCoS/XpyLxWkL7X6GdG8cU/geYZ2edU0?=
 =?iso-8859-1?Q?Cy0Vo9o6MGT/ExRA8ArSPFdBm/rMheFKx2VOj8YBS3Ef4xpfYGqalq/L4E?=
 =?iso-8859-1?Q?xC69hAqMFGFnCvPhfqQtfVwUUdfrSkhNbncYgPUfgFc+TeK/U9nMlWg7rw?=
 =?iso-8859-1?Q?FwpJR1F0g81tZsBjCF7f7j+u/JYyrMsjNAv1yR17znW93Suq9iIfBLCm/2?=
 =?iso-8859-1?Q?BP/awg9KfYHBV2J/MHmv7KofMdZTTFkiO2wD6gKyPuZ67lhz5Y/JloffJc?=
 =?iso-8859-1?Q?a2RPnQglP2tJ2NtOShz7myyowlcTyxbQklvgIHUzhspDTHAfyuduQbko67?=
 =?iso-8859-1?Q?eSCK64iykD7MOyyej9opkAysN+7yPrqlQQt80Mzy/BuA+7u6xHDp6ty7sP?=
 =?iso-8859-1?Q?vDfLBDngp6zxbDiDrd2Q/hPCXHCH0Bztw+mSEBqVMXPhZbzn5mZ4DsC7cp?=
 =?iso-8859-1?Q?qqSL1EfhAdV8YSoV9VMdJ32rFykEkRA4DXyinQoeaAULSL2xylW2RQtCee?=
 =?iso-8859-1?Q?abkOC7TdyRAOTdnqDIxFQUoj8D5uRv1JGjgCEeTvXRQIGENxQR+eo4f24+?=
 =?iso-8859-1?Q?/PLZPSFs3sLiK0/FXyEeGOkpauJIboJhVVznAsj332d673BxMeJk+SmyWW?=
 =?iso-8859-1?Q?DQC5o2kQaFCyAEvZoV4WSXY5z7yZPjAm7u/OS7yC9Z0CSc7+6q9o87ECDQ?=
 =?iso-8859-1?Q?m0nrR5p+XzhOWng9+3mHQHJ5a2R0AI+R4D1EDuAFqckeQnmAfe2k1OUXzv?=
 =?iso-8859-1?Q?NK5PMuMhlGbLZnIY04hXO2L57D1RWfqbi/S4a/84MSvv6+/MjHSIp6UxX3?=
 =?iso-8859-1?Q?nUWsvwLfqcbbulNSJY+HsZllt7++c5ynVkyrwL2A7Flo3hhGc8ZoN0Q5ty?=
 =?iso-8859-1?Q?GDpku0OVcaqievuyW937yiXe8f8a2WiOuznGWE78WskMXmyAe1Z55I+qJQ?=
 =?iso-8859-1?Q?xMnkhILLcv4umZPmqFxPzqk5ffZ5tOnz+gw0jH+ajo6DRZYDo+AuVlyPg9?=
 =?iso-8859-1?Q?QUivsm9Drw/owyr7OFw8dy9e3i++YgngWoh35S7oTPMlpXb8aDgimle4w9?=
 =?iso-8859-1?Q?J3OpXp3E+fHtk3k7H0wADTHQISBwYTBDhMcYeocKIo5VcbeqABejUV1MhC?=
 =?iso-8859-1?Q?vY35OGM5rWvpNKwld2rISvbimscqt9oyMtHn72mPmp4LtbjTzzomoj3PgT?=
 =?iso-8859-1?Q?HEPD4qzB1cuQIMz4ya1wLD7rVyveuDNkctA67+IdRWzd/6FCyFDJgPKG9F?=
 =?iso-8859-1?Q?IVtLiP1xyG8WXTUNB1a5aRrqnhX3G/InXme5nvVKwbmb7IkSuBmHK49KXI?=
 =?iso-8859-1?Q?tPI+utvciByp7o2TDUBclNJNcssMX4oGr1JRlN089rhuNgegqYuOP54zmf?=
 =?iso-8859-1?Q?pSWzzZQON4VF14+eLudoBpqO7Qy1qI1wRUEtDRbv34HD1GDr9+EyV+ObeX?=
 =?iso-8859-1?Q?Y26tMqfN7rtLiMLmXHg90Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?W4GljAMrohwkP0J48CuVY3j61J0DT18xyFfVIqKrlObPOSU0Q/ew023PnR?=
 =?iso-8859-1?Q?+OWiEeeDtQR05EqC2UgBlVg8ML+6JZ9gJ5vtoohtocBApB5IeokdxPJZiu?=
 =?iso-8859-1?Q?rVNveGHIZpPkqwOKXkV2gbtuSD98H0I1NUHzVdJWpoo8bgsspQeWaXOpzz?=
 =?iso-8859-1?Q?toHALb9P3PXmTIGW7PaeiwJmRRuI0VjZwDLz1Q3pcKSHt5q4IP5r4fzCkd?=
 =?iso-8859-1?Q?z4ZqlDnHFqS7Rs+yDUf41Nwd8lBBNc+pHCD/PgALZz7bhbkF0FJ2bC1jMt?=
 =?iso-8859-1?Q?vpHAyAAZ9tSQuYG9FWcYQ5oKQfimQQAnGOySJ7Z3mdrm7L7ZqnfjdLZfy0?=
 =?iso-8859-1?Q?0hVdm3RuxTirVo0uxhBoLeTEnwAEyFhI0tj4HF/Vw8tPeOzyt9syF7VMIl?=
 =?iso-8859-1?Q?5UzCrQVtWIL7jul/4YxsSc8+ME0io88QMyx1CgKWaquvlUOPrfKVapDUGm?=
 =?iso-8859-1?Q?Qk7LNowXJLNBMhkP7mg0JGsQa0wJUaLYmI0qHHLDthkOmn+vowksrb0wTw?=
 =?iso-8859-1?Q?Ck8i7AL2WvTTXqcbL3P0HNxWoS0gOBCn3Q+YUzsIRRSKOszSr27O8diqQU?=
 =?iso-8859-1?Q?eoP66ZHqdkppMhSvyRNKVEq+8Eyy1oLrfF7NVcdLIWXIDnnv92ZXSmwZdI?=
 =?iso-8859-1?Q?TNFMALqSa/c30w46mdfVggoQ/bButqNAOzu4nOHKeZrVON/nyD7wUPolVO?=
 =?iso-8859-1?Q?KEv3VjOOGtauIHuebgnA33WjkkysSpUSQ3jJn49ltmAqXgYcEK7IcdfBNJ?=
 =?iso-8859-1?Q?rYXUPwjkXZauVML4znGf1BZX5WLIGL7BZAK2Szp7/Mqa0lag1BoIbvbkRA?=
 =?iso-8859-1?Q?dgWpfOsZCV3Rn2CLgpRlGLdyln2c7HFGjs9ObJRiD73Cp58NAi9zA/H3cW?=
 =?iso-8859-1?Q?ZU/vkWvrtnfJwzww1C58IlGdKygMTxmpYI34J9PgTNlqltwdwl8wGcgX4q?=
 =?iso-8859-1?Q?vnbRy+KTDeTUGu3kfQDBcWUJJK3F6T+1rXA43agpK6/egqQkQdn1wEbduY?=
 =?iso-8859-1?Q?PRYqVkmqRq7kkS8/6qNrk7OjwxkRbaBYG9L5nJ9ms7eJSSoojDnQIpxHlf?=
 =?iso-8859-1?Q?9ZEn2luWAjKFwhYcK4mG1NB0ni88CXmxXIFmfyfo4vPXkOWzJ68pKCMK+b?=
 =?iso-8859-1?Q?5kk+ZCkCPsP/CbChgwXZ4ac9UD7wz65ahOGuFE0KpvLtCpnS4bdoHwgdsM?=
 =?iso-8859-1?Q?wu84EYzoxDwwGDDXmONpXsUS3r9hSi45SpVJ0GbexNUiPsq0o8l5WzfnQs?=
 =?iso-8859-1?Q?KAO5XnbEkPKfZTMogKHbG+s3XWSAmZWm+Ygia+E+vJAborgWJCJDfgi/fS?=
 =?iso-8859-1?Q?TnO7YJiOioPqjN+EX/+wuIJjNC9HDRZXjgUWvYB598z5zG3b90LMILLyBY?=
 =?iso-8859-1?Q?2OoQa2tuG9f1InaAIQRG8cv62Oca2f5AiCagMCUCUZEd9kSRuii9SwGHLH?=
 =?iso-8859-1?Q?/SlDXo2DhSGL+/T3G5OWLILS81AJrsQ7HKUhle8YjNuJwcTuQJyNYCjHbj?=
 =?iso-8859-1?Q?c20DhnP2fqP7hDaLtbfMBCEvuaONhQhXlpb14joEdLDfmmUv9skiXgvaFK?=
 =?iso-8859-1?Q?TDdxURWgaIUtBZQcSPaNa/6eoiQLC9j/HpaC9Rm8vDZV8X12RqC6TaKjWu?=
 =?iso-8859-1?Q?Yo4DnXK0XPIUApNqO58hlamDqkg0HNXGJubXqoLlX4LplycuW/sdZHZGHQ?=
 =?iso-8859-1?Q?YlmgmT6JZWkaHkJ3uDNZydvWzlu+PFKPtODc4tpn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae1e6441-9f43-4773-b4c1-08de389f5e00
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2025 10:23:46.8308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5B6d9u5/Cyam91UegCvQXNw/EuSWAFKUEr7wQXe3zvniRnjA6aI6Z9iyoYyfdpXqO0iQnc7pfOM1y7xQw426HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7085
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

On Thu, Dec 11, 2025 at 08:59:25AM +0200, Jouni Hogander wrote:
> On Thu, 2025-11-27 at 19:50 +0200, Imre Deak wrote:
> > Simplify things by computing the detailed slice configuration using
> > intel_dp_dsc_get_slice_config(), instead of open-coding the same.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 35 +++--------------------
> > --
> >  1 file changed, 3 insertions(+), 32 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 003f4b18c1175..d41c75c6f7831 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2387,7 +2387,6 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  		&pipe_config->hw.adjusted_mode;
> >  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> >  	bool is_mst = intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST);
> > -	int slices_per_line;
> >  	int ret;
> >  
> >  	/*
> > @@ -2413,39 +2412,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> >  		}
> >  	}
> >  
> > -	/* Calculate Slice count */
> > -	slices_per_line = intel_dp_dsc_get_slice_count(connector,
> > -						       adjusted_mode->crtc_clock,
> > -						       adjusted_mode->crtc_hdisplay,
> > -						       num_joined_pipes);
> > -	if (!slices_per_line)
> > +	if (!intel_dp_dsc_get_slice_config(connector, adjusted_mode->crtc_clock,
> > +					   adjusted_mode->crtc_hdisplay, num_joined_pipes,
> > +					   &pipe_config->dsc.slice_config))
> >  		return -EINVAL;
> >  
> > -	/*
> > -	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
> > -	 * is greater than the maximum Cdclock and if slice count is even
> > -	 * then we need to use 2 VDSC instances.
> > -	 * In case of Ultrajoiner along with 12 slices we need to use 3
> > -	 * VDSC instances.
> > -	 */
> 
> I'll guess you have considered this comment being useless?

A stricter condition between pixel clock (mode clock) vs. CD clock is
described already in intel_dp_dsc_min_slice_count(). I can further
clarify the comment in that function, mentioning also the above VDSC
engine 1 ppc limit as a reason for the condition there.

The 12 slices-per-line / 3 VDSC streams-per-pipe logic is already
described in intel_dsc_get_slice_config().

> Anyways, patch looks ok:
> 
> Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
> 
> > -	pipe_config->dsc.slice_config.pipes_per_line = num_joined_pipes;
> > -
> > -	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
> > -	    slices_per_line == 12)
> > -		pipe_config->dsc.slice_config.streams_per_pipe = 3;
> > -	else if (pipe_config->joiner_pipes || slices_per_line > 1)
> > -		pipe_config->dsc.slice_config.streams_per_pipe = 2;
> > -	else
> > -		pipe_config->dsc.slice_config.streams_per_pipe = 1;
> > -
> > -	pipe_config->dsc.slice_config.slices_per_stream =
> > -		slices_per_line /
> > -		pipe_config->dsc.slice_config.pipes_per_line /
> > -		pipe_config->dsc.slice_config.streams_per_pipe;
> > -
> > -	drm_WARN_ON(display->drm,
> > -		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
> > -
> >  	ret = intel_dp_dsc_compute_params(connector, pipe_config);
> >  	if (ret < 0) {
> >  		drm_dbg_kms(display->drm,
> 
