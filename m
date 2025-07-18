Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C4DB0A7F6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 17:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06C7410E9EB;
	Fri, 18 Jul 2025 15:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L550IFvR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C8C10E9EB;
 Fri, 18 Jul 2025 15:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752854065; x=1784390065;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ddzeisLCIl2W80yq2OrnXkF2oy5l321+o7aYZLC1VDQ=;
 b=L550IFvRl9M2beUwjopbyYvbPnkSTwb06cBhuHDHKEF3w5RsfILYkjJW
 Xl9sQTwYd2k5l0Rm0Ak6JT+QNKK16QEPdMmPPzULnLvhAVv6OFk/B56AR
 rWhNqggycacvgfX9tgEN/7BxY2S77fGtWBeeGd21+q6O4Z6wtTQy13Fdy
 AiuIZCOiatZrvhZ0ou/ai2sCIy2ZLH2Lq0uvNl3QKztgk1TD6UZCBryJm
 XVclQJ+0pPwoPBA6N1qCjRdw+xTgTGBmE8uegngPnsb45I/z5SNwQSal+
 T5WJOQJuaWmsUk2WMTnSS82p138SzajNIOP5nalX62KbhdstVIxpAYSj2 A==;
X-CSE-ConnectionGUID: le2BhW1MSySTKJOx8QvFuA==
X-CSE-MsgGUID: 7NbwssF9Rx2T6ak6vL2B0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="66601140"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="66601140"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 08:54:25 -0700
X-CSE-ConnectionGUID: f8Z47AJFRtuVWcaZCChPNQ==
X-CSE-MsgGUID: BkwL7JvaR1mglelg73bBGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="163616657"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 08:54:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 08:54:23 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 08:54:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.79)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 18 Jul 2025 08:54:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xf9HuPDNkZed+hBBJF6g3wncd6BwxPDXsyTjS6M6gvpR2AXKY93inzzV3H57CTNp9y3ghmHGkiczGGtebuBjYhnils+oUjKQW2PYkkJVw452iyMuGPiRTqGgJP2cWJrF+NCUBQ2Gksi0NbB5v0LHLWc+Jm4/YTTymkipNIHea09QrHlVY7540Mm76d4NPOH3xy1XXLHbXb3dTU+k6Fr56Rns024owvUZVVCzZeVsdhw5DmeF2RcE0Lj+FiiAvOLMce+FTjvPDOV0kur6msL0ssVOSzuus5ZHjhU/SpWATKEIixjjJoB+NslTLFahUPrYPEEHpst+Trm0w91lzutK+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qUwjgcg45V1ag1cYs8Isv1UiJdSmRhfYl9LU9yUNNpQ=;
 b=YwCeZ7+JSz+TtvX/3g+HxnwaW80nrKaDZMi6FRkbgPVeEu19SYapzNsXhOsVaB/TI7wLmrlEZeNhxVBFf3ai/LhKZbeFhM9gBXIj38k2IJanGJCZlKhD0yr/0/dYP2N84n6OQC5bMb4vfLmwbgqPZLdaR31lwJi298vYoI5q77sBw3NFFp/ozDsrJyJBZzS1Ye+jPAiBldrmiKbpehOpY9ZSDEKnBZ2ij+YlRIzE+hiMJ6BzIK+Q1A/SjOAWt6K0hFAWjQPPfhEtBBtuALf+8mrvw6r4NHznxF2hOTBhxtwVWiubgB4RuXYjMLC97rM8eOQYDJGqA3AzTPf7XO+eJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF68472F2DC.namprd11.prod.outlook.com (2603:10b6:f:fc00::f29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.25; Fri, 18 Jul
 2025 15:54:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8922.037; Fri, 18 Jul 2025
 15:54:22 +0000
Date: Fri, 18 Jul 2025 18:54:11 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
Message-ID: <aHpuI_h1ytLlujDN@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175275376596.1809.4970039481532019393@intel.com>
X-ClientProxiedBy: DB3PR08CA0004.eurprd08.prod.outlook.com (2603:10a6:8::17)
 To SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF68472F2DC:EE_
X-MS-Office365-Filtering-Correlation-Id: 3200b568-bdf4-4d8b-5a9b-08ddc6135cc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qD5/kip4PG+voM6UK1JmRUR0zewiOyycvI9ioqubsycWbVKvvZ4pDawIak0i?=
 =?us-ascii?Q?Qnesvb+xeks73nOJ8XlhIoGBFBRwJvJUQG4C196jPg8M9bFXZK3sGQEz6/Cd?=
 =?us-ascii?Q?dDP4tVYsjP4yJGtBoPRsjLsCw9oCFVF2V6MMY80bXv3CXjlO8BUQXcy3k7hZ?=
 =?us-ascii?Q?TxiF12ds30AVFf1kFOcmn6EOIHFCuFPRJDPZpO3vVPMuW1Nia2EqhFTHezBl?=
 =?us-ascii?Q?j01YsVZxK6DA5UOcqmmthj4YvoauSu0Im2YYaX9IDQL8yqjgLSqlQwbOZMP0?=
 =?us-ascii?Q?Jr/NseEuY3LEMC5e2Zm4/kDsBU0CzCon5J8jYL/HcF0WAgzR409MGTjt22uO?=
 =?us-ascii?Q?DniVMQ0Wo89qTfsSZC41yYgK+zAoPnweyl8Vq8nkODhSw/kmhLKuiiBFC//d?=
 =?us-ascii?Q?tQ1zu4qhpfyVScOT7ebn5XfMVxSOCwvCA1z4E+45WJNNJDItTeJV3oeECnq7?=
 =?us-ascii?Q?e12zXVlQyqHJpoIkaxivARQGePoKtKLtbJqXJqXHv+ZDw/AOVsjNwPDd9ryK?=
 =?us-ascii?Q?XRTijLmcK/udoF8Pu6sAZV7Lrg7Ubfzq1UG+JpeC9KhmoWg4tpW2kr0aBQU7?=
 =?us-ascii?Q?1SzDEsXBFkSIs6u8wyi+ICO6lBAFNadisXJh/NIEW6Yd8OPqZKHhFTDR5fdQ?=
 =?us-ascii?Q?FAM6T7PHnx6V/G0noBpGXb90sjgrXEeLIMgpVc9qPwBEhmQV8MS4xvoEe7jc?=
 =?us-ascii?Q?z/FOkJK+NsFTZDYhxYfV+VfaKEE0AARgGIHVc74TkyLcNQOWHYmr8lgliyUp?=
 =?us-ascii?Q?IHMnNfBNX+JW1/qCu8roqwh/t/4jaZnMEx8JS4W8FYRXkrxORZM44E35Gqih?=
 =?us-ascii?Q?jBnkkJ8ZiM6KsveXqLDpP1xKgDQJYXPFhYnddyrOOMe57yKZAohjPvllftH0?=
 =?us-ascii?Q?QspeLqCGBvh9CA0Iq5d49g+xnMQJCGIn5GYMdnX3NQkgq5ETThvH5OipsrL9?=
 =?us-ascii?Q?yeltk78+b8zeBu+XNBDB9QRruKEpRVJwNoOVx4Cb80Vu/4CvWPyR8fpZZhbU?=
 =?us-ascii?Q?KXCvDD0lGTfp2NAXa/hCCmuMaiIYV9UvIfJD3CxYlg1ZAqqohVsiZiKIorZA?=
 =?us-ascii?Q?1sun19s+5XVfN6PmBzVTmAutq7pMrdeEQZhL+a9GRAXBOe3cV+H7HV3NcNES?=
 =?us-ascii?Q?rhi7guT4z9nctlL1Y44ozmA1vAvIYofVmT7aVGsOAtaWISJuSHQDKIVkKRkD?=
 =?us-ascii?Q?5ZTcevOMOjiAdiO6vhaKuNfDQNYWXvhRia1ZZVhaf2e9UJDwdi3zJD+3HwhS?=
 =?us-ascii?Q?Ih7QIEh/YAEQ+7y1eW4LGxZN3WRHLk12VOJhvRi/Pj1Y9tEW91pipkKInYGr?=
 =?us-ascii?Q?EDXJZpQfoeeBjmsnflKgBouat719xMrumng7VWzhiIJcqCa6GiX5Rn2Bx396?=
 =?us-ascii?Q?ZrzEvEjl1giZGNzxsNxS/NprhCPOTD9GICDQagoOtc7sp7CKO1SaNpLusmgZ?=
 =?us-ascii?Q?30vSZXw7bMc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hznaUj0woFjEDYJBXERmltNL8Vm6p4IybNIfOCuYERBIs74O3gyG2xOO+nTt?=
 =?us-ascii?Q?CaYXKutYbxZT/um3+jF5GfnH8Mo2k7du3wkjLvGMbBCalpGIFWKw83ov1Or5?=
 =?us-ascii?Q?XdEZqV0TIxb3JjNTmZSYlOvuC3mpb00GV9pumJWFGJAJ4TgpMyET60XtlvHU?=
 =?us-ascii?Q?DCmAW2yUA3e9abPQk8CBRFfzbwQTQGvrynQQQbAK7EtAAd1h1JYDBkV/pjK5?=
 =?us-ascii?Q?65pd9QwhK7fMx6KtDxUGt2/kAVWC4Hz6qzfwPbENmzvuJNS6pnPZWKOJcbL0?=
 =?us-ascii?Q?ihsU8tRgbUFDPVHbnPFdKJdAsevb8bvWuz+n/fmTm3qTQV1lQoRoWVMm2LCt?=
 =?us-ascii?Q?CnbAx0/IqOmoLAlUXCwzUV5pouo/xfP2o24AR9z+bCblG5bx+g11rq3lZ6aL?=
 =?us-ascii?Q?GwXDPZXjxDsxcDDVqAWaXgr/McDpIFWJMXINKPY0OvWg6CuKu9D92bYtDMQ3?=
 =?us-ascii?Q?lYf41/t5GiO7Olco0t95jHQQh5aA8RVIacuNbb4fcgmy8lQH5xqsVkpsLiTy?=
 =?us-ascii?Q?G8c3KpTPP6fpaV42zkx2U8tyvL1aXJmvaHMHHjBICDX1FSh5UVtKi3i0NhCj?=
 =?us-ascii?Q?fikqMy+y/VCAsw45c8QJV7p7GrPevV1C4WOPc8I+aJd9Fz0RFtnW1fkUmwDt?=
 =?us-ascii?Q?n068VF8EsLmbVlJ1AqJkJvbQesHyiBs9lyOWlowmV79NaeYKmn+kz17lpMAJ?=
 =?us-ascii?Q?z/w9LIOftnIt1deaqOPzqZbMZJkz9I8Ec096TsYhM8KKFHRm7U9rVJV7999U?=
 =?us-ascii?Q?a8m/OekiFS14FNgYicVif8HoD7Yr9+VzlIaVenCn69IDkB6dwKnYbUAD5sjP?=
 =?us-ascii?Q?TAeb0Nxh0+FKQXEkvYPm3KMAOsrp6SV4ym52Dh9P3wEG72h+6tkHWPQofhxV?=
 =?us-ascii?Q?7m+iuVXhq8jJP2MaaJNnTySpximSEGA2xoWwGnajEM5srLv1SZ/E40lxbD0L?=
 =?us-ascii?Q?u6bjnie4aLM1sDMisIVKGlvAtz8qg/mN1U8OS0Gc92D0PuXxBIbTpV/u9M/f?=
 =?us-ascii?Q?XcvZpoFqXUAc/GOX8Kt6AwKzCWne477GSuvCbxICbUcYrgRWUyP9Pqjw4P4B?=
 =?us-ascii?Q?l53eoXSl72cjPr350nBXXwEbe3uY3BgmZ8X6ob0P77nvkyIc3W0TKnan0FS2?=
 =?us-ascii?Q?+PNNk7SS45ZvZ/cOGMP+NcvfJNBZ3qdKhb4xJB1MWA29kRUFPBM52giOf3St?=
 =?us-ascii?Q?6KpJzI+s5cpPdt9JVtX0q8kSTLMXOzwHL1EEE5vQkzBArGuqpwzq67MY/2eh?=
 =?us-ascii?Q?aKDLAKtb/Pbm1ngM/ihgfom84OpvAX8kKUA6MpKy66tVSObwQgO6R5BSrU0b?=
 =?us-ascii?Q?3ZpmZCBqM68YwcM4L5FFZmqEs0YUK/YPpZJPLXR5iDRkXNwVWQ8nKWskehy+?=
 =?us-ascii?Q?K+UtmJCkDsbkLPLOJoQcpgoN5ATT1JPr2txVLxKyY9YxflEyT/mVSC1fwAJT?=
 =?us-ascii?Q?VgNfN3iDpgA5niOxBTiNGdhHsyxTrdRNN4XDHm5fvFHNC0hQoMwFm1em2LTo?=
 =?us-ascii?Q?AFRlwTmhr+5ttS+ZuYeLYqv8fxjd8yj0iZk9Q5EIkLqTiM2+3qNzP+orEFO2?=
 =?us-ascii?Q?EuquwfWmfL+rH2qaE+7mG1EDJmwLYkL66kq4gaCsvPNO++3oB+KEQVCT9E3x?=
 =?us-ascii?Q?bxKin9tj4D8p8KXDGmnaDMtktk3ChNJng1E6ZjOwwVzr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3200b568-bdf4-4d8b-5a9b-08ddc6135cc4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 15:54:22.1318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4faOdyLVkUueLbpuQlcmxJYflBcQHkdYJwADh8L4fA4Fi6iaebtzHLDjIsLbdBsjctI+czuoo6zrifVi1EVwFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF68472F2DC
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

On Thu, Jul 17, 2025 at 09:02:45AM -0300, Gustavo Sousa wrote:
> Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
> >Some power wells are only relevant for certain display pipes. Add a check
> >to ensure we only allocate and initialize power wells whose associated
> >pipes are available on the platform.
> >
> >This avoids unnecessary mapping of power wells, particularly when platforms
> >support a subset of pipes described in the power well descriptors.
> >
> >Suggested-by: Imre Deak <imre.deak@intel.com>
> >Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> >---
> > .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++--
> > 1 file changed, 17 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >index 77268802b55e..ca73e4084354 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> >@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const struct i915_power_well_instance *inst,
> >                 for_each_power_well_instance_in_desc_list((_descs)->list, (_descs)->count, \
> >                                                           (_desc), (_inst))
> > 
> >+static bool
> >+is_power_well_available(struct intel_display *display, const struct i915_power_well_desc *desc)
> >+{
> >+        if (desc->irq_pipe_mask &&
> >+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pipe_mask))
> 
> According to irq_pipe_mask's documentation, that member contains a "mask
> of pipes whose IRQ logic is backed by the pw". I think we are
> overloading the meaning of that field with this logic.
> 
> * Do we have guarantees that irq_pipe_mask will always be associated
>   with the power well that powers the pipe?

It is the case on all the platforms and so it also provides the required
way to identify the power well for a particular pipe. irq_pipe_mask
could be renamed to pipe_mask accordingly.

> * If the power well that has irq_pipe_mask is also used to power
>   something else than the pipes, we could have issues if pipes in that
>   mask are fused off.
>
> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
> have some idea of how to do that without rewriting code to use a
> hierarchical structure (which IMO would be ideal, but takes more
> effort).
> 
> The idea is to, during runtime and initialization of the mapping, set
> the bit respective to POWER_DOMAIN_INIT in each power well that has the
> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
> also require removing the POWER_DOMAIN_INIT from the static mapping for
> power wells directly responsible for POWER_DOMAIN_PIPE_*.

Power wells that don't exist on a platform shouldn't be registered in
the first place, so it's not enough to only remove them from the power
well->domain mapping, while still registering the power well. Otherwise
these non-existant power wells would still be accessed while disabling
any unused power well during driver loading/resume. Also these power
wells non-existant on a platform would be incorrectly listed in debugfs
and other state dumps.

However, I realized that pipe power wells that do exist on a platform,
but for which the corresponing pipe is fused off (for instance pipe
A/B/C on WCL) we still need to register the power well. On some
platforms at least such power wells may be enabled after HW reset/by
BIOS and so these still need to be checked and disabled if needed during
driver loading/resume. I.e. instead of the above

DISPLAY_RUNTIME_INFO(display)->pipe_mask

something like the following should be used:

u8 pipe_pw_mask(display)
{
	if (DISPLAY_VERx100(display) == 3002)
		return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);

	return BIT(I915_MAX_PIPES + 1) - 1;
}

> --
> Gustavo Sousa
> 
> >+                return false;
> >+
> >+        return true;
> >+}
> >+
> > static int
> > __set_power_wells(struct i915_power_domains *power_domains,
> >                   const struct i915_power_well_desc_list *power_well_descs,
> >@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >         int power_well_count = 0;
> >         int plt_idx = 0;
> > 
> >-        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst)
> >-                power_well_count++;
> >+        for_each_power_well_instance(power_well_descs, power_well_descs_sz, desc_list, desc, inst) {
> >+                if (is_power_well_available(display, desc))
> >+                        power_well_count++;
> >+        }
> > 
> >         power_domains->power_well_count = power_well_count;
> >         power_domains->power_wells =
> >@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
> >                 struct i915_power_well *pw = &power_domains->power_wells[plt_idx];
> >                 enum i915_power_well_id id = inst->id;
> > 
> >+                if (!is_power_well_available(display, desc))
> >+                        continue;
> >+
> >                 pw->desc = desc;
> >                 drm_WARN_ON(display->drm,
> >                             overflows_type(inst - desc->instances->list, pw->instance_idx));
> >-- 
> >2.25.1
> >
