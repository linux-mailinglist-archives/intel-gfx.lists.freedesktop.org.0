Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51BBC0FCA0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 18:53:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E90B10E53D;
	Mon, 27 Oct 2025 17:53:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hBagCWMY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE35210E539;
 Mon, 27 Oct 2025 17:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761587593; x=1793123593;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qomLk6jYETxliB65ZSnhLSpQCOdp/OBhU+0lU+RDX+s=;
 b=hBagCWMYqyKUACxfg5zv1Zqe2vjHIpeBHS/9Iqiy13lU3+Mdu1+dInzt
 GxWGcCVdY6k1Evd7CBepJ7idO4XfizpiCVSUWUDd5ucn2DkPvfbSP68SR
 nopnnuIncdhWzcdsOpoijn+aWlUEva7SfEMlEWF54ccH1lIGAU6yH5A/+
 YZXrUlnI9AvxF7Ws9++t3PbT7ijA2ympepxXWHeZKa6lEilFGn76Gppoe
 ELcFRn1vhZHdM0nYQXZJcGcgdcm7gEkVcSpne0iy/rYpLVYc1DRFmpry2
 8vz0bhkuPFiDak5nQ1qnVYZ42qvNcMXg7hZn1dl90OFoz2dQNOe3jN02r w==;
X-CSE-ConnectionGUID: mBRM93EdRMuDAb5gwkZ4LQ==
X-CSE-MsgGUID: zt/RNiY5Q4mX7uNSRZ9HYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63714557"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="63714557"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 10:53:12 -0700
X-CSE-ConnectionGUID: 4w/oSsgUS9qh1CLKTRj8EA==
X-CSE-MsgGUID: 6N0aZeKpRtCP9OiQjvCqjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="185876395"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 10:53:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 10:53:11 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 10:53:11 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.30) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 10:53:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ofo4h767vR2s9FIAnwCdr2Ry3NO2O5b9Y1sTInZHqzf4pnDfp+XbDaOamDylmf4Sdy3niyXByh8oKITsj7HDpcfyK1ZcECubbEorrrgp4W2TTZVnoID5M57H4ZtZfUVnsQUQDHLgI8g6m/qxbI+RoCojBdih4K/ktao8KDWjHKZQkG4Vf460c9nzf+ymMO1AyFR1mR8c9q3dfU1hnJF+/KUAHLnhk8D19NtqObud8PqSvuAzpepAgoc8Yu50WP8wYS5aQTWIPWZGv8y7Nz+4o1T3VUgEL6s/Q4AIdKt1rV84dL9iNaU1vOB33YjXSUl+iw6DrrpffJuatwUnFWzJFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ikvWUApv0NZIAnRlgXOBEeikhnBer0bjQTAFc5go2U=;
 b=T2B+GeIoFdoEK1+4RUHslDMi7EsHCcxqM9c5/umgfMjzs3UKQKJ5qWTLpVmitKnxnuwZLe7+KxHLfCdaiKbhF0gBlc31lIlxzWY1WcT2FbY7W1CcelTmJmpUm9/4nEESua0XFPSLl6whuwtYzYiu6/aq1jclnNR+w2Na4bQ79gY4HXbvVQbZ/HnXVW23zeNnZ0aVouseN9UWSseyx2HKu70ipTWKZFcixvttc7naIx+5swWCw//IX6iHB3iJcdaKvUWZRKRB5fXsfGmqN4dlCNvm7LneYm1IQ0wjn6IFvTryxQdYhL63fxEJsGgTXYRsf67itmsRT4MrEebMPJVJdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 17:53:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 17:53:07 +0000
Date: Mon, 27 Oct 2025 19:53:02 +0200
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Extend i915_display_info with
 Type-C port details
Message-ID: <aP-xfhVAaqYW0xLW@ideak-desk>
References: <20251001225051.2258284-1-khaled.almahallawy@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251001225051.2258284-1-khaled.almahallawy@intel.com>
X-ClientProxiedBy: DU2PR04CA0283.eurprd04.prod.outlook.com
 (2603:10a6:10:28c::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV1PR11MB8790:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c5d00d6-1a50-48af-8da4-08de1581af95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?H/bow3sz53J0KE1NMutAElzyaI0NaeoF+Gysqm9F1+kUnHlXXfBdjsUWmu?=
 =?iso-8859-1?Q?nZS+S26a3a1BlEJcHfDbMjAbPworUM1g+BQRdOxpvQo/ZWG8wi9t4h8FfG?=
 =?iso-8859-1?Q?P8oQOZlUIBLUKQ1gYP2xBoFxTJI3f0zqTkf5WDItIIOVCi0U1FsEGylK+V?=
 =?iso-8859-1?Q?bPN71bhQjF53h9ajr3+F/XnXneWS9HFzCYoXXkKCenH/q0MhZUjTeChJN3?=
 =?iso-8859-1?Q?+/eDtBZDYB3k+svT5Yla62NuhQdd5W4vdWfviklhWdk3zvC/4Wxye5Y+cE?=
 =?iso-8859-1?Q?qFQ+jJTOA4+T1BKsq/Jo8vC3ZK/2dgDLiBRgwWZq66uceWuWqVYTvc2e0N?=
 =?iso-8859-1?Q?2nv2J2/hSxQrRbyVi/rjOAaCy/I9zw5aI2cSwiMGfi1fE9wDDL76Lqu6MB?=
 =?iso-8859-1?Q?z8Y9bfRXaS81CqyyV6slFZIvmH7JDdNxg2e7bkDQ98jmextjSU3dGm4Juh?=
 =?iso-8859-1?Q?4BPS1Y6h8TeOmaco66/6sLXQnaa5bmca/xVAROl6YG6VmvJ1SW44L25z2L?=
 =?iso-8859-1?Q?nwsqc0r81vohuIAb3xloop9NEeI3S5OJqjHVV6HECy/V82wSS7w+Ij3NNx?=
 =?iso-8859-1?Q?rzJ/JhKdZlA5R3sgJGRwQA62/D6h9zPRhEdXfrLNcxX9SQqA94vJVTqFTX?=
 =?iso-8859-1?Q?2V5eybd//wrLhtD8G7nycSmpxCMhMCHv8Z8eM+9vS/ckAPoiMMA8v5VOgf?=
 =?iso-8859-1?Q?f2xsuEZ+6f2/11Uem2LwGQQa15j7AZFgVkdaH7CrYV7TJq9cXb4A5edecc?=
 =?iso-8859-1?Q?t9vucafMCdjZwCCZGuyzHpWYcVk+yDqX1BxwwvsEyN0Whs0xHtc4o12v0o?=
 =?iso-8859-1?Q?XtbkCqVQ4FFDxrnGI9VzC1ZxpVcSo6sCQgRFAy32yY2AWhKkoUp65JFCqw?=
 =?iso-8859-1?Q?xrkNpxucYDCE7Ju1ifRdF7V1IqwJUGpBuvs3QXmQiDnYVEFY6dbw1I9XdB?=
 =?iso-8859-1?Q?mzTD0FX6M8LR6qOPFuOG2KDdsJ3QQRULMmeLeIL/RoR++gq9DzMs/UF9oA?=
 =?iso-8859-1?Q?gP6w/r2BsUwzyUCNq82kTsz4+moSKpArCKqqpNdOS49v67FmkYAfjKK/Ry?=
 =?iso-8859-1?Q?nJdnwYqirnlxEeLTV7Nhy3qFotkT+tX/kaOANjmn4DNsimnHnTZCByr5/m?=
 =?iso-8859-1?Q?b8WzASvAOamlYC3s/XtKetzlNFOfcbhj5o2I2pgSB5tKeQahTH3mbx9HDo?=
 =?iso-8859-1?Q?B9wWeh90oPPlgfwY5wxpMTS6JRbBUI1u9RUwUhrDENZT5K2uCJfgOlB0GU?=
 =?iso-8859-1?Q?W3UrRwrBn8INa7JhvGa2HmRo2UhvaP7Y4f585RVJERvtOlbZA4cbL71X0s?=
 =?iso-8859-1?Q?FUtpJYqqQgXtmWRftzapwF4YWCl6O3ra/cQJrX32YOMTwKFft0y3xSzIDb?=
 =?iso-8859-1?Q?W1xH4TrUwIgDPVNUD/KzxP8sGPNLvgpMNH8pXJMItdBM8lRG8+rYdYhP/E?=
 =?iso-8859-1?Q?Pslq1MZ0v/wVBue5DA9K1f8iIa0hVBlGR4TWYkxQQblWAWS0yzZc2M2LZ7?=
 =?iso-8859-1?Q?y3bvx3yF1b2gVHL8iLjiGu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ZFfq5WQRYI0odlx3BvytFQsh/xuakJOVUwR9IYFpZy67ItrMNBLLj47cjP?=
 =?iso-8859-1?Q?Fzc9QZ+8UbRMkNiOmqBt95MYzqKqV98VVJJfQB2xwBI05u0YdGcRvKei+3?=
 =?iso-8859-1?Q?AUm0lE5ZQF8NZT6WSBq34FftnOrCpBIr2jaXPux+bJJt6FEQnBnikmCoCw?=
 =?iso-8859-1?Q?KUn//dXLAr/JPIoBhCFLWaumr/8xIUasHzteAnUtg4qMfDIujuj925/Ngv?=
 =?iso-8859-1?Q?d5E2QLwLTFfc/DFp0Df6j1/XKvVgd+nFMLYs/3khBNi/gD2RcL16ETFJ3M?=
 =?iso-8859-1?Q?DYuSUvWJOv3Bv3j5czRZBykybpGeN+lZ9rHxUT1bq7HjJmaPUjJ5D6TOpI?=
 =?iso-8859-1?Q?HmIBJXLzjk685jY3ijkb/+Ak++F3SZFA/d8I0S0KBlGrpWgk04hZ19ErPQ?=
 =?iso-8859-1?Q?yaPAdE5FzmPCoOiEPAzlz+gJT1b9EHHQuaiYsqhfN1dndqIz9kfPZ7/+wC?=
 =?iso-8859-1?Q?XlvSOmKKRoLRUUpXpnN8GzeQ6uGOb586rPdSVZdFrgbZpMpAXgjbHCO8dW?=
 =?iso-8859-1?Q?lF40yc9PmPp/8pfnWQOZPcFw9JTIr4YwS/K234Iwu7vb3OVrSt9ZAI+NBV?=
 =?iso-8859-1?Q?NikKB/6ufncuIkRZawRvoVdi+kYhC05RTHgWR9Q0ZOT/3cRe1W4lFVyWyl?=
 =?iso-8859-1?Q?p/aGZa2Dmoc8O+UFP2lWYeP8X8O63SqzQejeIxM88wbJ4SRSyfIv3yB8Zl?=
 =?iso-8859-1?Q?fyDrsTQ0waSVeoK30l56iVQUyYpjY3/3lo/oS5tzcZ4I1osaFzMleI9h83?=
 =?iso-8859-1?Q?Z2kbWuo3QV+ioW10negEC5MJoFNpTiu/mIj2cH4CGdgiIq0rEZw0sdcovN?=
 =?iso-8859-1?Q?b4BQ5PW01k5Boe6GgBxlnx1JVY1ztz/N//JjXk+tfv9v8t+nX0yMwoTEuK?=
 =?iso-8859-1?Q?NNL1KOcG0yHEGTLuqr/6gvCLExa7LR+UCYDuUASBLNnYy3g0z6gxCcaaZA?=
 =?iso-8859-1?Q?3IWk1adjHXQK3kDF4rZe+L3y3r/DwIOIBbftYFFFD5i5sF78gH0eSF7laz?=
 =?iso-8859-1?Q?dKFH2zT/+VAAX0ZgOo7/1wEIqBZM5Yy5NZnmRyIXl8izk4zrVc/97KG+e4?=
 =?iso-8859-1?Q?vjJCZ13i2ohlCJBLeDrTTaW66ZGGGT5vnmVRMlnW05uiWtZd+P6ImAdouK?=
 =?iso-8859-1?Q?Po7q05cr9dGGRLs+eBTbO+4NVuTSr0khqrCWZopk8tlU2TE2E4uKusZszv?=
 =?iso-8859-1?Q?kUTWdq8k7uzgVGx1Knl7Xx2rB5NY6/PgYy09KAqFMhoE5yteXooNPdK6ad?=
 =?iso-8859-1?Q?vfL7f4o3wrq+vhzTbAGKD6X3QcrzPSMrn6OtI2hQjLTDfL7kMz1aunRqzK?=
 =?iso-8859-1?Q?ce+EHPjrft0Nv4eHup8A+fVmO/MHXNrs/nIgUIvLAbWeFIHgE2IL3lave+?=
 =?iso-8859-1?Q?3IoCXlWVpcJAcfMIbi9B/E+mpj31/pzpl4tPl79oEq1A6B4h2jiIp1YMIT?=
 =?iso-8859-1?Q?rfRUDDnUD+1xr66uFf/2IpNVzTsWyVkMB+XqU2xBmlOVgpwbXdlnKro8VG?=
 =?iso-8859-1?Q?pyikaLMgnBLYJ5s1T2VQ9VfA2DlgxMmV3PeIa+vv+lMat4jqOrowcZpH+k?=
 =?iso-8859-1?Q?WsVrxGK3r3n/oMkcpnrxRmoIUvkQRjyXPzm8VZcBZ7cWmOO/elMDwoNVQc?=
 =?iso-8859-1?Q?IaRSzJG9p9ruoF0xRVjmmwqn306Bef/iZ+C5/1zhyjY6gCR11eOWniyzIc?=
 =?iso-8859-1?Q?7Cj5vB2h2JWVo9ZGK9fp+MbibgVFMz2A3UnePscR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c5d00d6-1a50-48af-8da4-08de1581af95
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 17:53:07.6012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p01e/5LmQyjnfUCneWPSyYkvuIrOWmnQlPRUj04PXtfKT+cC0zMJl/vyliemuxiUc5mAzNwf1v/lKU28vCM6VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8790
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

On Wed, Oct 01, 2025 at 03:50:51PM -0700, Khaled Almahallawy wrote:
> Expose key Type-C port data in i915_display_info to make it easier to
> understand the port configuration and active mode, especially whether
> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
> 
> Tested in DP-Alt, TBT-Alt, SST, and MST.
> 
> Expected output:
> 
> [CONNECTOR:290:DP-2]: status: connected
> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
> 	physical dimensions: 600x340mm
> ...
> [CONNECTOR:263:DP-5]: status: connected
> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
> 	physical dimensions: 610x350mm
> 
> v2: Use drm_printer (Ville)
>     Lock/Unlock around the printf (Imre)
> v3: Forward Declaration drm_printer struct (Jani)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  5 +++++
>  drivers/gpu/drm/i915/display/intel_tc.c              | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_tc.h              |  3 +++
>  3 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..5f5f1c50adfa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -47,6 +47,7 @@
>  #include "intel_psr_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
> +#include "intel_tc.h"
>  
>  static struct intel_display *node_to_intel_display(struct drm_info_node *node)
>  {
> @@ -246,6 +247,7 @@ static void intel_connector_info(struct seq_file *m,
>  {
>  	struct intel_connector *intel_connector = to_intel_connector(connector);
>  	const struct drm_display_mode *mode;
> +	struct drm_printer p = drm_seq_file_printer(m);
>  
>  	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
>  		   connector->base.id, connector->name,
> @@ -254,6 +256,9 @@ static void intel_connector_info(struct seq_file *m,
>  	if (connector->status == connector_status_disconnected)
>  		return;
>  
> +	if (intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
> +		intel_tc_info(&p, intel_attached_dig_port(intel_connector));

An MST connector doesn't have an attached encoder if it's not enabled,
so the above would lead to a NULL deref in that case.

Could you instead - in the connector_type switch below - get dig_port
via dp_to_dig_port(intel_attached_dp()) for DP and eDP and
hdmi_to_dig_port(intel_attached_hdmi()) for HDMI? You could print then
the TC info after the switch block if dig_port != NULL and
intel_encoder_is_tc(&dig_port->base).

> +
>  	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
>  		   connector->display_info.width_mm,
>  		   connector->display_info.height_mm);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index c4a5601c5107..e666d25ea24a 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1703,6 +1703,18 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
>  	mutex_unlock(&tc->lock);
>  }
>  
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port)
> +{
> +	struct intel_tc_port *tc = to_tc_port(dig_port);
> +
> +	mutex_lock(&tc->lock);
> +	drm_printf(p, "\tTC Port: %s mode: %s pin assignment: %c max lanes: %d\n", tc->port_name,
> +		   tc_port_mode_name(tc->mode),
> +		   pin_assignment_name(tc->pin_assignment),
> +		   tc->max_lane_count);
> +	mutex_unlock(&tc->lock);
> +}
> +
>  /*
>   * The type-C ports are different because even when they are connected, they may
>   * not be available/usable by the graphics driver: see the comment on
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index fff8b96e4972..6719aea5bd58 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/types.h>
>  
> +struct drm_printer;
>  struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_encoder;
> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
>  
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>  
> +void intel_tc_info(struct drm_printer *p,  struct intel_digital_port *dig_port);
> +
>  #endif /* __INTEL_TC_H__ */
> -- 
> 2.43.0
> 
