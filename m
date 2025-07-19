Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1682B0AF5B
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Jul 2025 12:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B098610E1F5;
	Sat, 19 Jul 2025 10:38:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q9ldDrVr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3834910E1F5;
 Sat, 19 Jul 2025 10:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752921498; x=1784457498;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=p79EQ0UxDEsg8HDIh5UYWlKhPA4eagYqYJ8lP7Y/mVs=;
 b=Q9ldDrVraiOr45E8RGdJtDzb2xlMfn37y2+DhLBlk6BJKOQuuZq1H4V1
 PE6fJKG9ccgcZ4UZfYTVljs44UVWwVMJUs+4kZ8Unc/LIgdgOayf1Teji
 VVD4qkEZCNPR9H7GAUjsAcDpz5wacgqThbJIFtNRriMyOciujgBe2x1vC
 xgYKY2slofo+PxSPtItR8VIpoPufn6aceBpOgHnTKrzqNL3JMV+M1+Ul7
 zw7K2F3HcQDDL5D9ZmDFCavyic8ULx4iLstOw+UzVFqWU6Ks7L1aaZ5wa
 58Yk79usnK3GSYG6NAUh8IIQdACPIhu9PZS85LKSKqRagY6gDZbaatuWG g==;
X-CSE-ConnectionGUID: tjsA80BFSzm/19XyC3TEiA==
X-CSE-MsgGUID: 369Geh3MQ2KcSy2SQEEvdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="54307515"
X-IronPort-AV: E=Sophos;i="6.16,324,1744095600"; d="scan'208";a="54307515"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2025 03:38:18 -0700
X-CSE-ConnectionGUID: WC/OCHHSRx2qp1u/YwelGg==
X-CSE-MsgGUID: zGCXuYLITNSdN7jjVEhgTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,324,1744095600"; d="scan'208";a="162976921"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2025 03:38:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 19 Jul 2025 03:38:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 19 Jul 2025 03:38:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.87) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 19 Jul 2025 03:38:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QI3Z7XWmp1Haxe/vJFlYc/anJdJC2i1dkzTCUv4Dbqc7+8jnQeswU0KsC3bLYHjZUVIJi9b6sQ8ywVPE3d5xBZMVQ1EGpmVh/3xxcL65G55yJRkzW9HYwtsKJ3LCRwmOydy3OUxBfPnYAmSaicqvAUKYFift2rhg8DAzMWAu0xgRK51zwXxaQTZHiRucPvVoMLfbXVRLe66rCwttcIxQUqp92GpGPNJipViOKVJh+jIwdqegHHrUJdOt9EyacWATEhzxzdxl9l0vBAAHQVPzbYbmJ3J/N8Cf9/2/5XIs+LxwYBbSyiHagkIQS7XH2RuOA2q+tB6+YVq/wOods7nO7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4gj6cbtEx7mDfcInJSzGnbyNb+QulZHHklxYoJFStDs=;
 b=p9MaNBUKI1OUCYYaYj8dEMFylHwLgrv+RkhoYdc8/ee1WG3UKBGGhPg1xgKS7FCdiiTIkeLlgpb4yCF1Pl8RPJGUrpTZRcAn6WaJsf42zMu8W0HBfArA967oGoSTc89WYAU4xjaBTUYpqfkYXSHnuWy8+acgDUpSzaLn5VYdfpFoMv1bgaBFhPei+ArQzomy/Cdysl74Ueo+9nbHU1Jl39CzI0EIz0q6erGz+07hdB5lzLCmizmaCM/Hxr8eQ9yA9RC+9ZEFhtiRzhMn3JTNGSwJIvdTo6CYED8U4M2EKC2+LgbWZisalu8AfnBA7zJ/TNOm7svJUlesLq5aDZ1xcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Sat, 19 Jul
 2025 10:38:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.037; Sat, 19 Jul 2025
 10:38:08 +0000
Date: Sat, 19 Jul 2025 13:37:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
Message-ID: <aHt1hKImGHBVXDBI@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
 <175285640686.1809.2888738151042642518@intel.com>
 <aHqBlQ-yY2Lc8TuV@ideak-desk>
 <175286978035.1474.9787252535829745230@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175286978035.1474.9787252535829745230@intel.com>
X-ClientProxiedBy: DB8PR09CA0015.eurprd09.prod.outlook.com
 (2603:10a6:10:a0::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4737:EE_
X-MS-Office365-Filtering-Correlation-Id: a5c6f67a-a16b-4470-4b86-08ddc6b05a0b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|10070799003|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Fgw4bfLG8OU4MikoQ6B5B2X4kU41Ir2RQax6GtiDNt1v4gy21PYvF1t+SdzM?=
 =?us-ascii?Q?yD3nPLt71TjLBTYjiUtDJlWgLsFcRIiogsl+/x6cAr3cWnS7kpgNRz2M1GBl?=
 =?us-ascii?Q?YrJfm5I8ONkS6xJKJsO7mM2UqD5vJjzrFPhJSYi/c4fhqhaHyfhoDe79khmC?=
 =?us-ascii?Q?q7HoIh/amrJTHQNoRkA4VdkOHWhk7UlpQvja1JviwyNn5JRBmaLcOUz6rXsP?=
 =?us-ascii?Q?5aZzmRTy4++S0uJDr5OV6NdV6cqcTumrjkZF1y3chGNh2mQUL9aKQt1IWsHJ?=
 =?us-ascii?Q?jjctxXb/WJBcBxEPO2OECl/OE8k2+EV2d7sbId5oQMs08qv1S4CSDJBknFdi?=
 =?us-ascii?Q?RNBTicTsiKdFLp3JvTTEYp/OwFaJPo3YMFTG/VyP0GsAc6SR5qyypj+jU36Q?=
 =?us-ascii?Q?GfAPsWq4cXX6uOgZ+64ePg0DmmdZ80Fp9BJtwtz4NqHYhz0aOh02sRe4oWEk?=
 =?us-ascii?Q?4hQMX7463RpDM8HidYW1k3ujnV3nIJjKkSvMf0bOFK6Kk9VCNWjFWo55eg3e?=
 =?us-ascii?Q?o83C8ProUfuFUfPnOn4UPp8tgCPX0p96czjVSHGqmNdjUTzwWlLPxr2Uo6MO?=
 =?us-ascii?Q?B37Eiq+boAXMMbRRg23seqYekJw9Wfr3FkjDrzLekeA+4joWPhO+0frz3D+2?=
 =?us-ascii?Q?MwYtDwRajvoIpdVNl9jUj7hNZn46uhhvfiG9JG7tM5W11yGdYiwxkYl2n5W9?=
 =?us-ascii?Q?8wAhdLYM00HTMi/ZMATsjdmleSFGuaP0o8vkdBiHjHZzSCpJgQ8wPqQKc1cD?=
 =?us-ascii?Q?anI5cheJ4ewJgFvw9PYyNQ35rgw3dIdSb62SXGiEL1ZMeZe0D4iWi4OGPcYS?=
 =?us-ascii?Q?7m1sz8hWM59xPjWlZQyCdb/2jv+g0dFqIcL7Hr6/KStSRm15UZ/G8RetEFnO?=
 =?us-ascii?Q?8Rrjn9fjsjEUZTsjxP01uosKcb2c2qq68Th/IvJiRLT4N7AoXxCI1VtU7Ssl?=
 =?us-ascii?Q?S0hR8BSOoYGbCHPqmw1fnUVwzy/PJjh6mqZwjc7efc6S7Shbu9+u53PLqQ9X?=
 =?us-ascii?Q?MQKq/kFjK7xtr13BKnHFn4lnq/TdwFkKBAnEUT5yrwhA6tSrm8XFmU/On1pX?=
 =?us-ascii?Q?Vp1tybVLKyzyY/KJbqk3KS2aM39Hod44wb7T6v8hxRVwRvzzIYBYJvaiZkFG?=
 =?us-ascii?Q?yi2fyq6hzmESV1levZm4/qAbc3WZxdlrKDrdwGBffHMmoZVVqd2iq3rjY7DT?=
 =?us-ascii?Q?pEEu2kZRTzIKWH9/ffIm1NzEvEZMzYtit/ndkcRvuQpFVhcO1PUYP8xn7toO?=
 =?us-ascii?Q?NU6P+7Onp2QoQRv4JB81qAuXdS45FGxB3OK+ZKLWhg0vm5gr1eejt5XgWuMI?=
 =?us-ascii?Q?WzbT9vKjbF5IhRHus8XIS6T7wZ6Mo6WWilCUyE+9NRImPhAhWW/hOGvEK27R?=
 =?us-ascii?Q?lk0vOkbjn62yeoFiHG0vT7vm+TqS5bsyKQdgmsxXqdkmbVoAZeHRHj4Kmpqz?=
 =?us-ascii?Q?oIV3yrVqdog=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?70nbB1PZTDVp4lQI528AMjA07nVcFah4VOdAet+X8obRNteVZH13/BxKgoNr?=
 =?us-ascii?Q?0GktY+JlnjCWsRcErWk4XGqYDreCGdeQI7ICb6bstoCx1R0Zj52I5nWF2pVz?=
 =?us-ascii?Q?LJOKBQYXW1HYOr5yrC1g1lCnbWytBJINtHQ/fiJv7wqTb9iuciDF7siPhwmR?=
 =?us-ascii?Q?Xz4+fQKQaI4sCRsHLVX39oqwJ8Tt0T9kl7nIGLZkezdtRKDnEIgEI/QtOHzy?=
 =?us-ascii?Q?QU3NaSmLxTmhp/qpXR3QfSMD6H98Vx6Dd9MZ9oWHLecUppGEeNlKpMmUF+h6?=
 =?us-ascii?Q?Fmb6jEyW/EQpiqNGSJ2dt8rKbDOlJ08crqS48XJmw6Ys3ZoFkEJFvQpc9bIQ?=
 =?us-ascii?Q?cS/la6XksomwwDK1F0iudA5EQ48A5Z1dJOZcucs786zWhSnRXhqQONnKyH2y?=
 =?us-ascii?Q?ctPv6f3HhO2jDi4CAAnV3FwHSwGXBJ+6Tr6Vmi+OnYRSRpSDlvGGHg9uBmGN?=
 =?us-ascii?Q?tm+3OJCXfV7B7byqPOUWusNxCRo0p6XNpAkVL7Z01aLnh14t1bNkPqQRxqHD?=
 =?us-ascii?Q?p16Uvni+ai9NEUEO0zMdgMCinbVZBAZRtfGaNqarbwjifel1xKlSqaOQVSPS?=
 =?us-ascii?Q?/SkvVRXVlH+CiOgGg9W8TyQ8+YGBe6I/+msS50qgncTNQCVPcefPDKDpU2uH?=
 =?us-ascii?Q?pjTYulBurdDqySfQW3TdrQx3KPidIHAuSdrw5LYvsuIezIGyXoqfh4kVt8Y3?=
 =?us-ascii?Q?2GxrEh6qTGjtGGcRFwhA9YVHKfc3kkQC/Ffvw0VUHCC3205sjWmVX3FWKZdJ?=
 =?us-ascii?Q?/zwqK2tR1vBN6Ciade932kG2da8ojGIwG4XNZ9ZhE7vV2cuIYQ6bpUelX6dd?=
 =?us-ascii?Q?hQK3DK0E7qEc6UqHduns5Yfadywj0HH1U+8Mf7qGHlOkNDO8TatQOw6uR9EI?=
 =?us-ascii?Q?h1/w0GE92Bq/J/AuDWc+09LpJbZLnO0ArfmO9x/R0lwECqF9YVZrNQtSWR4o?=
 =?us-ascii?Q?9ZP2irjsPpXAnsMhMDJIzlogIcH0reM5bLfsyI+Y7/WZySNS9hHfOVc3Yu0c?=
 =?us-ascii?Q?qnLLmUYYyI/uFFz8t7K1+r97o2mUwyEPaPbJX2nm/vd5da1g3Co1xwMvVImE?=
 =?us-ascii?Q?5u5vncfBI8IPEVteLHsRlnv1Z7T3n/gBXLL3arcWFfSEei1YUml27v13VLDT?=
 =?us-ascii?Q?Is174XrM+Zvd2YSBbwd7fRNfQkWHOQ0EWm9757N9YYuSABrn1rJtRaTNOktD?=
 =?us-ascii?Q?6R/NP6ib25C29I76jnpJczCy+uAi0x3j7iK6lxgTm1XhRcyWz00EaMngBTOh?=
 =?us-ascii?Q?ZvaIy/2kO6coZ09ggD6XBr9npjVCI8suA5K1fcqg8BYwxoYT/wbqqjfnqbGQ?=
 =?us-ascii?Q?M99SY/Hq0vNvAzGqn9yHo2SEY7xIotquHLECRFYGP8z6lmvvAKefyt/lFxPv?=
 =?us-ascii?Q?TiPyE2zR8GOW8ggcHJYt54QjBVc3mxhUuG3YUUsRQdZ23rW7LKspL+/ea9ay?=
 =?us-ascii?Q?51eYeYJH3CYzpac+QK5NbZ4qBBVRfZmLm4aDCWVy8DcYNQo5OA//tGwx+TEL?=
 =?us-ascii?Q?MJ9TwiHX+glquCm/RJXfDbjbeRuPE1QgoovB5mf0Rtny+Tmxxz/Ww1K2Ymj3?=
 =?us-ascii?Q?Gieh7e9r1TN3T8fNjqUSvukBwJIHHCN3zD4mMMHU+P49MR3fxxvBNiK+ZLxk?=
 =?us-ascii?Q?3r6SFu4SUsz/ojl3WtXozhbJW5k7UpdDp8CtYBahGXdC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5c6f67a-a16b-4470-4b86-08ddc6b05a0b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2025 10:38:08.5494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ldMLcFShojmSjq1zWC4dtT4AdWJAt5CQGyLHdYUUqx+co2b7//dM/x/p9KL5wBTdoGsYEjLXuVJeINId4b2rQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
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

On Fri, Jul 18, 2025 at 05:16:20PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2025-07-18 14:17:09-03:00)
> >On Fri, Jul 18, 2025 at 01:33:26PM -0300, Gustavo Sousa wrote:
> >> Quoting Imre Deak (2025-07-18 12:54:11-03:00)
> >> >On Thu, Jul 17, 2025 at 09:02:45AM -0300, Gustavo Sousa wrote:
> >> >> Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
> >> >> >Some power wells are only relevant for certain display pipes. Add a check
> >> >> >to ensure we only allocate and initialize power wells whose associated
> >> >> >pipes are available on the platform.
> >> >> >
> >> >> >This avoids unnecessary mapping of power wells, particularly when platforms
> >> >> >support a subset of pipes described in the power well descriptors.
> >> >> >
> >> >> >Suggested-by: Imre Deak <imre.deak@intel.com>
> >> >> >Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> >> >> >---
> >> >> > .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++--
> >> >> > 1 file changed, 17 insertions(+), 2 deletions(-)
> >> >> >
> >> >> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >> >> >index 77268802b55e..ca73e4084354 100644
> >> >> >--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >> >> >@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
> >> >> >                 for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
> >> >> >                                                           (_desc), (_inst))
> >> >> > 
> >> >> >+static bool
> >> >> >+is_power_well_available(struct intel_display *display, const struct i915_power_well_desc *desc)
> >> >> >+{
> >> >> >+        if (desc->irq_pipe_mask &&
> >> >> >+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pipe_mask))
> >> >> 
> >> >> According to irq_pipe_mask's documentation, that member contains a "mask
> >> >> of pipes whose IRQ logic is backed by the pw". I think we are
> >> >> overloading the meaning of that field with this logic.
> >> >> 
> >> >> * Do we have guarantees that irq_pipe_mask will always be associated
> >> >>   with the power well that powers the pipe?
> >> >
> >> >It is the case on all the platforms and so it also provides the required
> >> >way to identify the power well for a particular pipe. irq_pipe_mask
> >> >could be renamed to pipe_mask accordingly.
> >> 
> >> I mean, that *exclusively* powers the pipe(s).
> >> 
> >> As an example, bdw_pwdoms_display appears to be responsible not only for
> >> pipe B and C, but also ddi lanes and audio, for example.
> >
> >Yes, these power wells do support other functionalities as well and so
> >they must be registered unconditionally. pipe_mask would still be
> >correctly indicating that this is the power well for the pipes in the
> >mask; these power wells wouldn't be skipped either during registration,
> >since that logic must use a platform pipe power well mask vs. a
> >non-fused-off pipe mask.
> 
> Yep. I think that works for the platforms that we have today. That said,
> this whole thing started because I had the impression that pipe D was
> fused-off and that power wells for fused-off pipes should not be
> touched.
> 
> It turns out I was wrong in both cases:
> 
>  * I just got confirmation from hardware team that WCL does not have
>    pipe D neither power well D.

Ok, so on WCL TGL_DFSM_PIPE_D_DISABLE is always set. I wonder if it'd
make sense to add an assert for this somewhere
(__intel_display_device_info_runtime_init() ?), so that the assumptions
on this elsewhere are always correct.

Would it make sense to clarify on the power well bspec page that PW_D is
not present on WCL?

I presume the "Block Diagram"s, like the one at index/74286, show what
pipes/DDIs are present in the IP, which may be fused off or not
wired/enabled at all like DDI TC3/4, for all of which the HW power wells
exist and so the driver must register a power well for them regardless
of the fused state or never being wired/enabled.

DDI TC3/4 are never wired on WCL, so I'd still confirm the above, i.e.
do the PORT_AUX_CTL_USBC3/4 registers exist indeed (they do based on the
spec) and do the 'PHY Power Request' / 'PHY Power State' flags get
updated if the request bit is set/cleared as expected?

>  * As you explained in a previous reply, the driver needs to deal with
>    power wells of fused-off pipes to ensure those get properly powered
>    off in case whatever was controlling display before the driver takes
>    control let them enabled.
> 
> So, I guess we could either
> 
>   (1) go back to Chaitanya's original patch;
>   (2) or tweak this patch to use a mask of pipes supported by the
>       display IP instead of non-fused-off ones.
> 
> I personally would prefer (1), since then we would make the presence of
> power wells and mapping more explicit in the code;

Agreed, I'd also prefer (1). I'd still check if registering the
AUX_TC3/4 power wells is correct based on the above.

Apart from all the above, something that could be done as a follow-up:
POWER_DOMAIN_INIT should be removed eventually. It was initially added
to make sure that all HW blocks accessed during HW readout are powered.
By now all of these accesses should get an explicit power reference, so
POWER_DOMAIN_INIT isn't reqiured for that any more.

The HW readout during driver loading/resume still needs to hold
POWER_DOMAIN_INIT though (in intel_modeset_setup_hw_state()), because
w/o that the explicit power references get/put during readout would
incorrectly disable a power well inherited by the driver in the enabled
state for an enabled pipe/port etc. So this needs another solution
before POWER_DOMAIN_INIT could be removed.

> but I wouldn't be against (2).
> 
> --
> Gustavo Sousa
> 
> >
> >> >> * If the power well that has irq_pipe_mask is also used to power
> >> >>   something else than the pipes, we could have issues if pipes in that
> >> >>   mask are fused off.
> >> >>
> >> >> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
> >> >> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
> >> >> have some idea of how to do that without rewriting code to use a
> >> >> hierarchical structure (which IMO would be ideal, but takes more
> >> >> effort).
> >> >> 
> >> >> The idea is to, during runtime and initialization of the mapping, set
> >> >> the bit respective to POWER_DOMAIN_INIT in each power well that has the
> >> >> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
> >> >> also require removing the POWER_DOMAIN_INIT from the static mapping for
> >> >> power wells directly responsible for POWER_DOMAIN_PIPE_*.
> >> >
> >> >Power wells that don't exist on a platform shouldn't be registered in
> >> >the first place, so it's not enough to only remove them from the power
> >> >well->domain mapping, while still registering the power well. Otherwise
> >> >these non-existant power wells would still be accessed while disabling
> >> >any unused power well during driver loading/resume. Also these power
> >> >wells non-existant on a platform would be incorrectly listed in debugfs
> >> >and other state dumps.
> >> >
> >> >However, I realized that pipe power wells that do exist on a platform,
> >> >but for which the corresponing pipe is fused off (for instance pipe
> >> >A/B/C on WCL) we still need to register the power well. On some
> >> >platforms at least such power wells may be enabled after HW reset/by
> >> >BIOS and so these still need to be checked and disabled if needed during
> >> >driver loading/resume. I.e. instead of the above
> >> 
> >> Ah, I see. Yeah, that makes sense. Thanks for the details!
> >> 
> >> Well, although Bspec overview page tells that WCL's display has only
> >> pipes A, B and C, the page specific for power wells still lists power
> >> well D. So I'm wondering if WCL display just has pipe D fused off and
> >> the power well still exists or if power well D being listed in Bspec is
> >> just a documentation mistake. I'll check with the hardware team.
> >> 
> >> >
> >> >DISPLAY_RUNTIME_INFO(display)->pipe_mask
> >> >
> >> >something like the following should be used:
> >> >
> >> >u8 pipe_pw_mask(display)
> >> >{
> >> >        if (DISPLAY_VERx100(display) == 3002)
> >> >                return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
> >> >
> >> >        return BIT(I915_MAX_PIPES + 1) - 1;
> >> >}
> >> 
> >> Well, if power well D does not exist indeed (i.e. not a case of pipe D
> >> fused-off), we need either this above or maybe go back to Chaitanya's
> >> original patch.
> >> 
> >> I think I prefer the original patch, making the power well mapping
> >> explicit.
> >> 
> >> --
> >> Gustavo Sousa
> >> 
> >> >
> >> >> --
> >> >> Gustavo Sousa
> >> >> 
> >> >> >+                return false;
> >> >> >+
> >> >> >+        return true;
> >> >> >+}
> >> >> >+
> >> >> > static int
> >> >> > __set_power_wells(struct i915_power_domains *power_domains,
> >> >> >                   const struct i915_power_well_desc_list *power_well_descs,
> >> >> >@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >> >> >         int power_well_count = 0;
> >> >> >         int plt_idx = 0;
> >> >> > 
> >> >> >-        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
> >> >> >-                power_well_count++;
> >> >> >+        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
> >> >> >+                if (is_power_well_available(display, desc))
> >> >> >+                        power_well_count++;
> >> >> >+        }
> >> >> > 
> >> >> >         power_domains->power_well_count = power_well_count;
> >> >> >         power_domains->power_wells =
> >> >> >@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >> >> >                 struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
> >> >> >                 enum i915_power_well_id id = inst->id;
> >> >> > 
> >> >> >+                if (!is_power_well_available(display, desc))
> >> >> >+                        continue;
> >> >> >+
> >> >> >                 pw->desc = desc;
> >> >> >                 drm_WARN_ON(display->drm,
> >> >> >                             overflows_type(inst - desc->instances->list, pw->instance_idx));
> >> >> >-- 
> >> >> >2.25.1
> >> >> >
