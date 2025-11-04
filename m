Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5A1C2E8C0
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 01:15:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7589E10E4F5;
	Tue,  4 Nov 2025 00:15:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLaU8vVo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DB310E4F5;
 Tue,  4 Nov 2025 00:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762215345; x=1793751345;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cNnWZrmVqZdCmL1Ei5yMhjZNCijBX9VHx9O4NcyYJ58=;
 b=iLaU8vVo3WJa4z8F4OJyN2vxOTSinfLDYZoxzBgIovu0T9pH1bR3ED55
 4PEOdjTWDHbRmHuqCnnKcDNThFPMjwr8+MaNtWI3Lgsl5D/izCy7wDYuN
 MJXV1Ktz9YM9rFoYKyByTobsVM5F0/5229lq807hdfO2EGZxKqRANQvnE
 P2dGXyAYBslPv2Uny6uDIJRykLJlJTfnJFY/HRiHEyxhtVdVlZvMR7X8A
 A2uUB0Dr9Aghev1OgJJbaoKLnzKr82JHPwJW5zNczaiqkNKodFwCQLxDY
 sWGp5jOgY1BO0+900nfm2pHM6wNbkcJ9JJ3LB9SqeIHii7adhxjYGtUZ1 Q==;
X-CSE-ConnectionGUID: M7cwDqE3QEumXHi7ATHJpw==
X-CSE-MsgGUID: BNAU/PLCRiW0Q2gPqsGwIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="86927786"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="86927786"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 16:15:44 -0800
X-CSE-ConnectionGUID: aCc0QewaTX+GRLFVUX6ZDA==
X-CSE-MsgGUID: rqahJRVjTGup38pRTzJtKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="186954025"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 16:15:44 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 16:15:43 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 16:15:43 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.21) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 16:15:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VOsMMG0J4gj5cxTie0pnEmmBso+ONGug9qvwG+OZAHKigzWvPTbDNrmM2nVCHH0aaNIUWV8brQWyUD/hxu3AIfctEF2z0bXTfFgxbypZ4MTJMCM7r1k0D06LenpoMpcS3y1PuFblSsxU/ytYCZ2B+Tq3Gl6REcHVMGFxMHldY25/QDcubMHbo9IHa0QI+Qlgdm50jPhxEEvrP7a01P/yEKmF9gzH3pLboy+9DNQm/4yJZFGj2q3CoMLJMhro2KMxfZjhNhpmQi06+8mEPC7Wim5sjwOQDDIQhc/yPE6PJ1g/10Z19uBidaKwcavL3vctXk6eMm8L1dlHHvTjanoQGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xdQ9A9ouBUr1IkFaTVBe60m9wAfytLPrK0c7OQNLj6s=;
 b=KdwJUaXAipmcYSsMalfRJfH/2bFD4gBQgEsfW00EZT6zVeeS41XUSwk0rsDafT03qUVvZDDZ9cCMFDH/0VZ39456jsd7giPan1O5o4Buh4vEy61JyXd6HpOPNP8+YM6qIZc+6IVr/irCbhPEP3izNV/sh61hpkHrV3DrszxsBLZq3EtYv+ki+WUAB7ui+xJEDZp4oUFkRoeKen8Pcu27k7N0NTp22RG2oS3lKFFBV6hisvrTdkuIPeWIAJjKTr2wDKxpyzOkGkg+Hhp8FncBYMzPPmHufONYgYeAcPo+HcgyPpUAFyBMLkqcA5c9pyknpKyYYeOSm/ygIrmuL983zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB8335.namprd11.prod.outlook.com (2603:10b6:208:493::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 00:15:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 00:15:40 +0000
Date: Mon, 3 Nov 2025 16:15:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
Message-ID: <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR05CA0072.namprd05.prod.outlook.com
 (2603:10b6:a03:332::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB8335:EE_
X-MS-Office365-Filtering-Correlation-Id: 005f5828-4018-418c-dca9-08de1b374976
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?p0YCx92tHsXGK29zgigjvuRWoQK2xjES2Amk6167DTwlUwKvQq4BHqj0N1zW?=
 =?us-ascii?Q?P+2WWjXqTUGZ4agkpWD7Q67nRIMs8VaBYjHimqN1RQ1MzDJtupF/7lg5vrE4?=
 =?us-ascii?Q?sFX+7nn45ePK6xQosxg21Z1Qnbe1dvcI+gFE365/OEvOR8bv7MLMTIECfEsy?=
 =?us-ascii?Q?KalzeYlA/mpzvXH9QZggSUL1BuE3RbHQgztK2V3G9LD2TJ8egvjQC0BywVYb?=
 =?us-ascii?Q?Qd6tc+teh18uy+21IVdc4w4D4K/ApwT1RQYgf2pCu8ZrAIuB12VCwRVDLzOP?=
 =?us-ascii?Q?WuOij54aPjeqj+4+22O0plKgbK6fKP2hXs3n8e3ZSnwThUdGQm1VdC7yOjSX?=
 =?us-ascii?Q?jkPmkxthoDsQL0EpHHh/KpJ++1tOwqo6QlpLXfVGKE5yriCWiQCvcM8eYv8R?=
 =?us-ascii?Q?9Hrd6hbvGoL91dZKDsVOFj14XqkH6XSOPPzmNgfImwBXbQgu8OkSmGpB7Jc5?=
 =?us-ascii?Q?D1ufEhDJUzOpGMLk6BWyqk/2yrT/SfRkRJjKi7dQ5eNKFNwv3T4+nTZZ9dvv?=
 =?us-ascii?Q?WlZBLTvfFSutJoq9iBOsKSwo8CcRyWaEwU/ngHGKJGqN5CMVyqJKKhHpOm+L?=
 =?us-ascii?Q?eIusOH215wipAg2XOZ9EVObEojZNeEsexdzYypr4Nz0vPH7kYOld57jhDnve?=
 =?us-ascii?Q?/RBuDBWsfkjjVHxiecSL2BU6omf6yd0DE39o+7xIihpL95AINB7bj1Vjnx9b?=
 =?us-ascii?Q?OfwUyHjYu0vvSZO81j8ZTPxYlZ2TzNdh8+9lOrgxySYUSprFfE+Gh+F41PKf?=
 =?us-ascii?Q?h9pCbvAWjkFJxfTlWViQW6C9/UuhjKYm8HMMfsQTkspnJiU+S/k0GTG1x4e/?=
 =?us-ascii?Q?MDZm1tpveju5QkyLO4lkVtjLKgvRfZbHS6SrZ4itDBSoo2m9ee5X0rSGSSnb?=
 =?us-ascii?Q?kxPKiJ/Gdhsp+jKc/dzdwyJPyUvlfnIxByzp+Q3EMHjGf5azs0VRvG4sjjgW?=
 =?us-ascii?Q?gZjZZobulNRrO1VXApnywh7Wl7Q1Pu5rd9o60nb8xp1lM98QbN1hRSRxShkI?=
 =?us-ascii?Q?JpOxoJOj0Qjz6rsZxvci/gnG79jHXNPom2lXmcNQM8z+CG/zQON2kQ2x9efh?=
 =?us-ascii?Q?QmA55IWoS9otFaf1e62996N37YA6/qdmEkR0bIOFobmGAPl3v0aDq28aFiN9?=
 =?us-ascii?Q?9tO9eK1DgxmZ/b7J+ol4hKQIhKQTjyoSa/ZijEDK2PIF/StpfhBZXrBTwZHw?=
 =?us-ascii?Q?CO36Zko3en52TLBG6aKZq/Y0CrGotyzOTouApbEuBSiYDXVQWqkfPywDO0Pz?=
 =?us-ascii?Q?+hfpHqCwM0zmuPWzFf+Hq1me/qRJd+Q1dianpkqRw/9XN9a87Qp2B2KycOyA?=
 =?us-ascii?Q?gjfCqsTE4ep+pCaL75TVHbwg9KvKcou+a4UM3IEUPVaYubkN8kqIUTeVa4Mk?=
 =?us-ascii?Q?9bY8H141w0yV+Af5mTkRmbdp6UlM5BmuzDMacIxroFXFKUof5plg5EY+f3gg?=
 =?us-ascii?Q?NJAOJa6X5uhAX1OpAXJY+RFoFW9JI9Xw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k2ZyRIqGvdrrCcFoAm7b9mKnBYeIbmYQt53M2UQiAOf7Mhj9e7nGxAIZzWP/?=
 =?us-ascii?Q?SSlVfr9nqrp4MnLxCJLX7xxvPyog81V8a8O6ZD8wXnf37zQPzuXZOLbkX4mw?=
 =?us-ascii?Q?+tnr7i8MZ3WnUZnJD5mt0O2DMip3dJnon+shr8BYaNeXdyc4SxS6MzouWGsO?=
 =?us-ascii?Q?cEMcxIbwKg566lwDThbb1Uuqt95qtiQW9nS5K2KY9kFcTyloX30m+0qNnW4R?=
 =?us-ascii?Q?Tc+nVHI9xBm+Z4p+WfOuFb7jLTFCZwf5Ah9fLputIjl1aWtgFE67/89lqr2n?=
 =?us-ascii?Q?hIlRTRKXnUUprPckD4BrNpQreTVZhWotah7C4BmfKd5eW0cy6AFKozN4G/BQ?=
 =?us-ascii?Q?N3MFP6c4PPBg/gM5aV01nEeiK0Euqth2c6UnagllAKg9LSREx8bWm7sFb/s5?=
 =?us-ascii?Q?NqUsYZzble2B0AMF9go2pxipM6dsexon5wauLInhMdBqhZFD3yufzI6WDv80?=
 =?us-ascii?Q?XdDJyhPHATMIy2LZ7TnQgmXo+oBtgoJpOJt9ZLvgu8ZHGdad/eMZXW0IEGKW?=
 =?us-ascii?Q?c3iZmm+SMOJEiUNF7kxZbd368on2qDjGmkraQyU4Ja8xXJFghQlkIsM4XXPp?=
 =?us-ascii?Q?j1uVFMHLUTysSbP0Ej03Kjl3Zs6/kQYxQ1IJYD9PJHJ4np/jStE1k2zNaVIf?=
 =?us-ascii?Q?oj1lfzJ83YXTO0VF+fNTaFFWtE+zPJP0uzQniz7Na5nkyatnzrpplbTPZTt7?=
 =?us-ascii?Q?pM4YVPDjypml2dlHAP9IxWpX7zCQ7sM64+K7AHAszSAawMoI+HgeEmJKzAP8?=
 =?us-ascii?Q?YM3izcGE68rzHO8uLDRqebZRjX1xN5QlSUk8/52ozFQWbOS/QiivcwJfVbr/?=
 =?us-ascii?Q?/mceW/kQESVgJI7nvaQve1zDJN1VUwBAgVqCV/bUAQ1USc1H6heRz9CMnLc7?=
 =?us-ascii?Q?gO/G+ciuz2UQNAUTzs5OBUjrmv6B5sYyPJ+TRyfl5cpi+RBQcP2qEgwPZIr6?=
 =?us-ascii?Q?6Z809dm1099Ewiqa6ZhC2/kUEpXbWzRJ7tEee3TJPQ/skjYNDvLcDlEeGU+O?=
 =?us-ascii?Q?sxrJucNED3pWc78u2a9VgEIfMyew7GxKbPc9ZQDa2XpbXZ6jxT2NLAvOueZf?=
 =?us-ascii?Q?2QICh6G7U4hak4K0azTHiirs+fI20DzL3xw8BBChkAMVJPvrMmOHOaWuSxLj?=
 =?us-ascii?Q?jkO8vjZa8+StAEbPqv0aFCAwn8w8Rm/Sg1cpTCdKyzjsZAewzwBOiYLZ6Cfm?=
 =?us-ascii?Q?LlFEaA5rlNBqkQiE8m/eGuH4MeSzBLMMM/EvIPkj3hnQkb8xhGwnRcrsfYNg?=
 =?us-ascii?Q?mM4ibQtUHxi1m4VXQv9vFzjVbPNS4toVIAqVWxBloK+R5eMAXIRz+szpdHcl?=
 =?us-ascii?Q?4JO+RzteHZRHNb6E/2EcikY40FiGIlrD+Xz8+0voUuzOE98UX1XvW9zIXlZQ?=
 =?us-ascii?Q?aqEPnTkZxAim3FfQc0WC492kejapyieXBYpTgXr3H0UhL3D1sXHBfQ92+wt9?=
 =?us-ascii?Q?7UxO+qCbBpxrjCBG6z0ZED5XKWkp0Nhj1oLpuYfP45BmGUSJt8wRL8zNwZu/?=
 =?us-ascii?Q?nQV/Q2tYdUUfy549MqcsVyBCMrTAGDXG2lki8fZqvkfk+vGP7HoyHnswIP9f?=
 =?us-ascii?Q?EWjbgq8Thm161ZodrtRK4vuAGQhClp8pSADfAEDT5P3haPRZYtGongFaazWP?=
 =?us-ascii?Q?EA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 005f5828-4018-418c-dca9-08de1b374976
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 00:15:40.4846 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RErmXFRHsyNkwzOyhfSGnqOwSHmsHeFSzrUaXuoJTPa5a6qYqIGpGjkggFFnBfFDp2q2TfzXA3goMyahEW+uz7sBKqbE/5Wud98vUQ6oMZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8335
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

On Mon, Nov 03, 2025 at 02:18:12PM -0300, Gustavo Sousa wrote:
> From: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> Configure one of the FBC instances to use system caching. FBC
> read/write requests are tagged as cacheable till a programmed
> limit is reached by the hw.

What exactly is "system caching?"  We have lots of different caches in
current platforms, and it's not really obvious to me from the
description here (or the bspec page) exactly which cache(s) are involved
here.

Is turning this on always a win or is it situational?  I.e., is there
any potential for display memory traffic to fill a cache with FBC data
by evicting data that was part of the CPU or GT's working set?  If so,
that seems like it could potentially harm the performance of other
workloads running on the platform.

Or is this whole thing about a completely new cache (unrelated to
and unusable by anything else) which is devoted solely to FBC?

> 
> Bspec: 74722

You might want to add 68881 here since it has a bit more information
about how we're actually supposed to set the fields documented on 74722.

> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 47 +++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h |  9 +++++
>  2 files changed, 56 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 24b72951ea3c..e2e55c58ddbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -127,6 +127,9 @@ struct intel_fbc {
>  	 */
>  	struct intel_fbc_state state;
>  	const char *no_fbc_reason;
> +
> +	/* Only one of FBC instances can use the system cache */
> +	bool own_sys_cache;
>  };
>  
>  static char fbc_name(enum intel_fbc_id fbc_id)
> @@ -569,12 +572,51 @@ static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
>  	return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_SEG_MASK;
>  }
>  
> +static void nvl_fbc_program_system_cache(struct intel_fbc *fbc, bool enable)
> +{
> +	struct intel_display *display = fbc->display;
> +	u32 cfb_offset, usage;
> +
> +	lockdep_assert_held(&fbc->lock);
> +
> +	usage = intel_de_read(display, NVL_FBC_SYS_CACHE_USAGE_CFG);
> +
> +	/* System cache already being used by another pipe */
> +	if (enable && (usage & FBC_SYS_CACHE_TAG_USE_RES_SPACE))
> +		return;

Rather than relying on the current register contents, should we be
sanitizing this on driver probe (in case the pre-OS firmware already set
this up) and then making our own decisions (as part of an atomic
transaction) about which pipe to prioritize after that?

> +
> +	/* Only the fbc instance which owns system cache can disable it */
> +	if (!enable && !fbc->own_sys_cache)
> +		return;
> +
> +	/*
> +	 * Not programming the cache limit and cache reading enable bits explicitly
> +	 * here. The default values should take care of those and that could leave
> +	 * adjustments of those bits to the system hw policy
> +	 *
> +	 * TODO: check if we need to explicitly program these?

There's no hardware default documented for the range field, so unless
the pre-OS firmware sets it up (which we probably shouldn't rely on),
I'd expect this to be 0; I don't think that's what we want.

> +	 */
> +	cfb_offset = enable ? i915_gem_stolen_node_offset(fbc->compressed_fb) : 0;
> +	usage |= FBC_SYS_CACHE_START_BASE(cfb_offset);

And if something *did* set this up already, then OR'ing a new address
over the old one isn't going to work.  We'd need "(old & ~mask) | new"
to ensure we don't have leftover bits still set by accident.  But it
would probably be better to just avoid RMW-style handling in general and
build a complete register value with exactly what we want rather than
trying to modify the pre-existing value.

> +	usage |= enable ? FBC_SYS_CACHE_TAG_USE_RES_SPACE : FBC_SYS_CACHE_TAG_DONT_CACHE;
> +
> +	intel_de_write(display, NVL_FBC_SYS_CACHE_USAGE_CFG, usage);
> +
> +	fbc->own_sys_cache = enable;

It feels like instead of having this as a boolean flag in fbc, this
should be a pointer/ID tracked at the intel_display level.  E.g.,

        display->sys_cache_fbc = fbc;

or possibly converted over to something tracked with atomic state so
that we can make better high-level decisions about which FBC we want to
enable this on as various displays get enabled/disabled.


Matt

> +
> +	drm_dbg_kms(display->drm, "System caching for FBC[%d] %s\n",
> +		    fbc->id, enable ? "configured" : "cleared");
> +}
> +
>  static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>  {
>  	struct intel_display *display = fbc->display;
>  
>  	intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
>  		       i915_gem_stolen_node_offset(fbc->compressed_fb));
> +
> +	if (DISPLAY_VER(display) >= 35)
> +		nvl_fbc_program_system_cache(fbc, true);
>  }
>  
>  static const struct intel_fbc_funcs ilk_fbc_funcs = {
> @@ -952,6 +994,8 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  
>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>  {
> +	struct intel_display *display = fbc->display;
> +
>  	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>  		return;
>  
> @@ -959,6 +1003,9 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>  		i915_gem_stolen_remove_node(fbc->compressed_llb);
>  	if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
>  		i915_gem_stolen_remove_node(fbc->compressed_fb);
> +
> +	if (DISPLAY_VER(display) >= 35)
> +		nvl_fbc_program_system_cache(fbc, false);
>  }
>  
>  void intel_fbc_cleanup(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> index 77d8321c4fb3..592cd2384255 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> @@ -128,4 +128,13 @@
>  #define   FBC_REND_NUKE			REG_BIT(2)
>  #define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
>  
> +#define NVL_FBC_SYS_CACHE_USAGE_CFG             _MMIO(0x1344E0)
> +#define   FBC_SYS_CACHE_START_BASE_MASK         REG_GENMASK(31, 16)
> +#define   FBC_SYS_CACHE_START_BASE(base)        REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_MASK, (base))
> +#define   FBC_SYS_CACHEABLE_RANGE_MASK          REG_GENMASK(15, 4)
> +#define   FBC_SYS_CACHEABLE_RANGE(range)        REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MASK, (range))
> +#define   FBC_SYS_CACHE_TAG_MASK                REG_GENMASK(3, 2)
> +#define   FBC_SYS_CACHE_TAG_DONT_CACHE          REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
> +#define   FBC_SYS_CACHE_TAG_USE_RES_SPACE       REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 3)
> +
>  #endif /* __INTEL_FBC_REGS__ */
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
