Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B189C45C1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636C210E053;
	Mon, 11 Nov 2024 19:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K3eFdhxU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40CB310E0D0;
 Mon, 11 Nov 2024 19:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731353014; x=1762889014;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+NupQMa0LnHKmQ5ZUjTKgN+hlZU1t6bD7I7b2nQNtsE=;
 b=K3eFdhxU9p35+pj2hkn79ZnJeB0m+ELr4g7yEhKWjqVTYFcmKMzRHg0x
 6CvkKMplDFqXPuvuht2auCXwTGgx88ZyWFqq0oK6lpPLc7dkps0DdjACa
 Roxz1vpmE+k5avvEjQxZ4TqtXYhlKfIJhubVCQf39s2008m+qd7Cflyct
 aES55R164GGoGD/TwDcEnOwmUkq4AvzK7rq5J7Ae5zRvzwtraAlUJ0O/3
 waj2c+kD6UyG8C2UBzvmF+qLhfr7OuEkMyhOLSmITvrNjV8Y9P9Iqwkk/
 waq6zCIo0Efg+EBaa9GWzdkVOnjV2mvFfi0D5N7y13wGZ0yMovt7gBOHP Q==;
X-CSE-ConnectionGUID: oJIrWGR7Q8iuTYDFOB+Wkw==
X-CSE-MsgGUID: 8CFFu+1kSiqlMZjll58VKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="35108990"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="35108990"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:23:33 -0800
X-CSE-ConnectionGUID: +gV+AuUHSxOyeyejE4wzgA==
X-CSE-MsgGUID: PZz7N6g5QTC0mKn2JdFFeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="87442636"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:23:34 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:23:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:23:33 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:23:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IN+XX7FTcXuEMjiuNEe4JLv3gnvQxwQnVZCO3FaVQolUJcxSdSWQMn8JN9q3AZEX6SepJ7Tfhys5OnGuEVBD2jxMfWWaJyViV6lF9R0VXBeFMyoYSQpEKqmrQSsdXYaOQ60c8pA3bCXIXx3rqTTOd3P7LUueC3IGLukGGe1JWzdZxg5URxwacaNGB7vQC2mi15gpd42G1RJRcd9j//yqAzr9ephzu5uLQVtmLjDyXvsFbz7YTdAh835zkMT53ijhAU6DJ8CtF+iI6mMHVzZQ4ogZOr0ttkhlYvUu/Q+KXqOs/y2X/z1mXrYMTzcCBO2aHLRjYk3Zz17rdUN640aYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qgdeQEbGFGAY+36IBNTR3aYPHu5nZzDQg1iH4JLg0sg=;
 b=TjQE+2qbqHwmDDLUo40//dghzjHGOpVFl/uyCvSPzuIShAsBtocQWl4WY/Mh085CUn/Z4em3nAkhvSpIp98aV2adQeLAeQ976NAs2AF6Tgc7gHl4YPD9i7a/zvrTXjRh18lm8c3smQKLSxGWmjvRTfKQ86ATY/LPawrMh7IEXVi6kTTWaDWgUdHx68nFVNiFusJksd0U5kuF0tLAxXSO0GZP6PGGmL5do7WMEfKhAsWASaiini3QZXPfvDlDZLlcnOVTZwAr49WtffDMcIufew4JMJN7t1gdDj+tU5Q0MuNqt/FGD8PylXctsOUs1GdtmeMnjug71QKkW/bfVQ2ydw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7683.namprd11.prod.outlook.com (2603:10b6:8:df::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.27; Mon, 11 Nov
 2024 19:23:29 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:23:29 +0000
Date: Mon, 11 Nov 2024 14:23:26 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 00/31] Reconcile i915's and xe's display power mgt
 sequences
Message-ID: <ZzJZrldOGjbecgiD@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <CH0PR11MB544466510DB3975996E2CBEBE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CH0PR11MB544466510DB3975996E2CBEBE57E2@CH0PR11MB5444.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW2PR16CA0040.namprd16.prod.outlook.com
 (2603:10b6:907:1::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7683:EE_
X-MS-Office365-Filtering-Correlation-Id: 42490a1e-b3b7-4992-5a76-08dd02865282
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EsE+a16ocIOcPYZE4xgD9mZHyIhK37mZ9SdnjjeyennMtS8sjJFYF8abZGA4?=
 =?us-ascii?Q?B9nGZ1jdAY/1ntsCXXNtowDkF23HlZlRX0v3F7nRnccRB+i2THsT+8hIiowH?=
 =?us-ascii?Q?0kBld8qn5s5BT/+Td8VlafuEncdtN58wLDz+LgifzHOfgwMymVChOGnwDsXd?=
 =?us-ascii?Q?seoN5HGcaIQrLNsW3vgJWb0ngOipA0rXXbAUwcLdZ1dlyB5kjwBZqC2tfVm3?=
 =?us-ascii?Q?XDP0HGUtyK85GgFbKzSHmSvrzvYWzXQ1In98EcBXY5S5TMlacDfplC60pp1G?=
 =?us-ascii?Q?ACh4Rf6vDPaEPzv9Ds/I+Ksvkke2joTkjxbgtqXBLJOJcCSN/4EMr5iKLWdx?=
 =?us-ascii?Q?K0Hh/CH72w+iG09ek0WggCaEhagtYhjsvELsHj/QXgIKUVErmXpeatA7+lWE?=
 =?us-ascii?Q?DUWeo4ojWfwgys+4fOWWwgrveW40Z0b9oT1ReZrNJx7Bny5zghJP3c76jRtr?=
 =?us-ascii?Q?hDYSQVLuM+VqxIhiIEeIWg+IgjGsGGUpAt7CO/eRU3JtcOh9R3Gj5QtMF+Md?=
 =?us-ascii?Q?lOratQONwgYN/yQqdRrXDsvW4/N69h1urY1BDuQd/RIBf1iHC8Y+ikny2EhY?=
 =?us-ascii?Q?uzgcTpCLVi1jroelJE1kOymsH+pvGgsXrLTkESdmA0vis/J02RKFv4fcz4D9?=
 =?us-ascii?Q?A2/AUoxs4OfnX6SiGXJKPJcNpS5FupimeEyszLF01cbEy60rQ3roSykYZy2x?=
 =?us-ascii?Q?dWaGkBJD+mto20+Rz936SpgLY6OAQEU6E2jz4tPtG3WHDW0wicHewdGNLuh1?=
 =?us-ascii?Q?lGnDlGhtCM2Rp+8ttUKWjZszKig1dO2mEWaP/OgaXuKjCuxWbVqXy+zj/x8j?=
 =?us-ascii?Q?WUDI8v840v/BgUN2C2YSxeqzlf8md7EXqfiTvQMkxq3iS8D86LK4a9Noim3e?=
 =?us-ascii?Q?fvxypFrRhgkUwujM60C3eQV31NOD5/tHyygob3nbCzsKmD8ii/AtUhP1jP5m?=
 =?us-ascii?Q?bbxhkhLx1ZiqbJ+lEsJj1Bij+CePl4+Xmz/Q4Y1CBgbRCc/q9LXigK/VHKft?=
 =?us-ascii?Q?nrztqKOdQe6OTsThT5mGTBQfPkScPZ34oiCb/gwrnPPPjUQMhNUbu89kZTjg?=
 =?us-ascii?Q?JD/zGr98799gvBwIj2Im7t7GvrWnAlxWUTxbWSqAVq58fwAof2qWaiOocxgg?=
 =?us-ascii?Q?mgnf7Zdzqd4rZMl6M8MW1J1nBjbMCgTL+gMAxJkd2EhxFA+ZZdwjSj6vvIhJ?=
 =?us-ascii?Q?Og/uU7uhB6ROC1tnUZMxNRNh0r/1jbCaz9tqQqPH4PPnumYGu/y+VvT316Gu?=
 =?us-ascii?Q?AozeE4NX0qVbQTgHx387UupxhdCy3MH7aYGD6AbLIp/Zdn+t8cRqW7agX7+A?=
 =?us-ascii?Q?P7o6hq6F7qzHPxOySNYqDyDt?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3LZWfzGuB0D1DBl4Wtx2Fs8ewhjAoOHRa1ooJpBAS/7sGWBDA5P8eJxawb36?=
 =?us-ascii?Q?f2OTN3CZEekDzkdu0PXHF0zoNaDvjRyvrBlc8Rz+8a2cG9XuQbgJ+0kkOQmV?=
 =?us-ascii?Q?zREpalq+510/o8bfqF9ES66kktQvyk61UzvOoYdxndDxypQVG6A9/65IV2ir?=
 =?us-ascii?Q?FcH8C3Qb7DEr9BWJntT0ySy9J+ihrM+3YKPlEtnoJNjIMxeNMIZGxBJlp5JF?=
 =?us-ascii?Q?ZznlvOcksggK2SktDgRCuPQexDZi+WYrxzrjxQ8NPwJ8xLuHpsaBKNQ0/5da?=
 =?us-ascii?Q?+3tIPiWiUsPy92FoZAxShSMZjpW7JVF55d2Hjp+kpDZY/kIRzmCRtefG94Jb?=
 =?us-ascii?Q?PxxSE24qf6YKjdlWqDWo/fudGp74A5r0/otInGPu/1gHNOKJ0dMoh8p/xrfU?=
 =?us-ascii?Q?xnkhXtOwFly1cLv5r5E2OszjkByyFUG7av5UtId1lyZueHTXUblmR2GsXX1u?=
 =?us-ascii?Q?qYZUDHtRaFFT08iY44l7kHzdnqyrBhttjRvzsfNuT8pLsblFnUo2Zd45Q7ak?=
 =?us-ascii?Q?DvQXExEfNdRmd1/07lN6+iK4X+a2Q/VazMrVuUez1lCJGUtixUkycXsnj9II?=
 =?us-ascii?Q?zHRxLYs5LUWoHeBUBqQKr3nPwVZ7Z4LXlawrAn8o3iwCTLtBstek+CFyWZ4P?=
 =?us-ascii?Q?eqxxSbVWbNYz2KjFWsoo8rvLjNPeIkeisPIHSdjKrp9HZlvbfd2P9A4PDbNW?=
 =?us-ascii?Q?s9MXr9ikxR+Rryug+aiiRGmIK+GaFbWOoI9JRXAGR5l4NUwUY/rNUUvo9XTv?=
 =?us-ascii?Q?/r8b1IkE+PaAEavIlecV0XU0LtoUy1CSMHd80/7SWFMbrxG8WfPVgxNmG8+N?=
 =?us-ascii?Q?71cZLHazB+qU7FPPnO7p3sjmgTmOWXfUoEaWD+939XDovbVgb4kM1hTTDB5o?=
 =?us-ascii?Q?Btmdc6vf+lErupTzqvjre1oTpCpowwb5PRCW+MwmqBbd5flgjSlP/r42GuKC?=
 =?us-ascii?Q?DfQ++OCVFAXl+J1TRYiaV0bmeMbq26NdPmzFVZVifMTRbEFBF8vmmvX6BSVG?=
 =?us-ascii?Q?HvIok/q4mX4P17k1chwyKym9jdwhD/fi3Biyh3iTH9mVkPO16C9Lt9q0UFBk?=
 =?us-ascii?Q?/rIY8fKUTFMIthJwVLdolYcdgEc6QMD7yYZfR+WZBwbO8BSHoymTlFQI2xR7?=
 =?us-ascii?Q?FfOoN4/sfdYNZ0iWVR75sfJhm1LV8dxAmLfcvbzUYqicOUXLt1RXdllgHNil?=
 =?us-ascii?Q?UZ5qsVY3jRuQqZq4xZm5LkW99LcOCGSffPq4WMqTEktLpdPO4ZlNFq21nYH0?=
 =?us-ascii?Q?jjexC6HirYZvXKcMnONmu2G6aEeouEmx3/rOv4JOJxuVuMrzGjaS15ECIrP4?=
 =?us-ascii?Q?pRZqmkocgu9i0Ea6OwOD3bZKny4g7LgmLU6ah989NOYi3hV3SE18ax+RPUz+?=
 =?us-ascii?Q?5qLIlfwnx5EFUkAj6dfPXLsInm4mRdXP7iYU3za8fvM+dMYTd9ySj2IQ7ecx?=
 =?us-ascii?Q?L0lFaxQSuxTjkillq2YAVuehxUPnitumua88xRpcyiMGVeBtiPHV4SDzSOVU?=
 =?us-ascii?Q?1JO+S2MZQabj4JwtwaDuHMwuFfJdTRsBzjdycxk19tkzxqDIuIxZXlPwQJJr?=
 =?us-ascii?Q?zewfiSIoR6L8DBRIGqnYiQ+dyrkiWqTVlAJHUxRw+ULRw7dQv+GSjj1DANln?=
 =?us-ascii?Q?Bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 42490a1e-b3b7-4992-5a76-08dd02865282
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:23:29.2790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E8Z77fvSXMQWh0329V/+PG+Xq9ukccdBt7ydntuepDGzqDJ/yYPJ6KcDuBp0rWZ9J2P8IrzQ7xpa0Y8P3kOX7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7683
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

On Tue, Oct 08, 2024 at 11:24:42AM -0400, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodrigo Vivi
> Sent: Tuesday, September 24, 2024 1:35 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH 00/31] Reconcile i915's and xe's display power mgt sequences
> > 
> > Reconcile i915's and xe's display power management sequences.
> > 
> > The main goal of this series is to ensure that the display
> > power management sequences from both drivers are fully aligned.
> > So, it needs to live under i915/display/ and xe_display_pm
> > can only be a wrapper to check for the xe's module
> > parameter before jumping in the i915/display functions.
> > 
> > During this process, it was clear that the Xe's runtime pm
> > sequences for integrated gfx (non d3cold capable) was totally
> > misaligned with i915 and prune to more bugs. So, this series ends
> > up fixing this and bringing a full alignment there as well.
> > 
> > The one new thing under i915 is the d3cold sequences. Apparently
> > that can be reduced, but for now this is what is validated and
> > stable on both DG2 and BMG. So, let's move that to the
> > i915/display side as well and continue on the improvements with
> > the code in the right place.
> > 
> > When I started this work I was hoping that I could run more
> > conversions to intel_display struct before moving things from
> > i915_driver.c to intel_display_driver, however that was a deeper
> > task and this series is already deep enough.
> > 
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> I did individual reviews of all 31 patches in the series, and I gave my
> RB to all of them with some notes.  However, there were just a few
> things that I felt I needed to say before we called this series closed.

First of all, thank you so much for the detailed and careful review of
every patch.
Also, I'm sorry for taking so long to come back here.

> 
> Don't worry: none of this is blocking.

No worries. In my first step now I'm only getting the likely
non-controversial ones so we can already merge them and then
iterate on the ones where you and others might have questions
and concerns.

> 
> 
> 1. Are we sure that aligning i915 and Xe like this is the correct
> course of action?  I've been reprimanded in the past for creating
> patches whose overall conceit is "we do 'X' thing in 'Y' way on
> i915, so we should also be doing 'X' thing in 'Y' way on Xe".  So, I
> figured I should at least point this out.

Yes, we are sure on this. Our overall goal is to have a independent
display driver. So every display functionality, including the PM flows
should be identical and living in i915/display side.

> 
> 
> 2. Several patches in the series operate on both i915 and Xe at the
> same time.  I don't think there's any strict rule stating that we can't
> do something like that, but IMO we should consider splitting those
> patches into i915 and Xe components where possible/logical.

yeap, indeed. But in every case here, if we need separated patches we
would need to create some temporary stub. So, better to do them together.
And the goal is to get them through drm-intel-next since they are all
display related in the end of the day.

> 
> 
> 3. When all is said and done, this series eventually puts all of the
> driver management code into intel_display_driver.c.  So any
> changes made to xe_display.c, for example, seem superfluous
> given we're intending on centralizing the display code outside of
> xe_display.c in the end.  It'd be a lot of work to reorder the patch
> series, especially at this point, but if we needed to start again from
> scratch for any reason, it might be worth ordering the changes as such:
> 
> 	- Create all necessary helper functions in intel_display_driver
> 	   for i915 and Xe, using them in the i915 execution path.
> 
> 	- Use the new helper functions in the xe execution path.
> 
> 	- Create and use all necessary helper functions for the xe
> 	   execution path.

In xe we decided to have an extra way to disable display. So  we need
this intermediate stub. Otherwise this is the goal, to have everything
under i915/display/

> 
> 
> Again, none of this is blocking, so there's no need to upend everything
> and start over.  I just felt I needed to state some of these things as a
> part of due diligence.
> 
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> -Jonathan Cavitt

Thank you so much,
Rodrigo.

> 
> > 
> > 
> > Rodrigo Vivi (31):
> >   drm/i915: Remove vga and gmbus seq out of i915_restore_display
> >   drm/i915/display: Convert i915_suspend into i9xx_display_sr
> >   drm/i915/display: Move regfile registers intel_display.restore
> >   drm/i915/display: Move shutdown sequences under display driver
> >   drm/xe: At shutdown disable commit helpers instead of flushing
> >   drm/xe: Use i915-display shutdown sequence directly
> >   drm/{i915,xe}/display: Move DP MST calls to display_driver
> >   drm/i915/display: Move suspend sequences to intel_display_driver
> >   drm/xe/display: Delay hpd_init resume
> >   drm/xe/display: Spin-off xe_display runtime/d3cold sequences
> >   drm/{i915,xe}: Consolidate display resume functions
> >   drm/i915: Remove lingering pci_save_state
> >   drm/{i915,xe}: Consolidate display suspend functions
> >   drm/i915/display: Move resume sequences to intel_display_driver
> >   drm/xe/display: Delay dsm handler registration
> >   drm/{i915,xe}: Move power_domains suspend/resume to display_power
> >   drm/{i915,xe}: Move remaining intel_power_domains to intel_display
> >   drm/i915/display: Split resume_noirq calls for now
> >   drm/xe/display: Align display resume sequence with i915
> >   drm/xe/display: Align suspend sequence with i915
> >   drm/{i915,xe}/display: Move dsm registration under intel_driver
> >   drm/i915/display: Move runtime pm related calls under
> >     intel_display_driver
> >   drm/xe/display: Prepare runtime pm functions
> >   drm/xe/display: Call intel_hpd_init on every runtime resume
> >   drm/xe/display: Move hpd_poll calls to later runtime stages
> >   drm/xe/display: Add missing watermark ipc update at runtime resume
> >   drm/xe/display: Notify opregion upon runtime suspend/resume non-d3cold
> >   drm/xe/display: Move display runtime suspend to a later point
> >   drm/xe/display: Kill crtc commit flush
> >   drm/xe/display: Add missing power display handling on non-d3cold rpm
> >   drm/{i915,xe}/display: Consolidade entire runtime pm sequence
> > 
> >  drivers/gpu/drm/i915/Makefile                 |   2 +-
> >  .../gpu/drm/i915/display/i9xx_display_sr.c    |  99 +++++++
> >  .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 +
> >  .../gpu/drm/i915/display/intel_display_core.h |   5 +
> >  .../drm/i915/display/intel_display_driver.c   | 247 ++++++++++++++++++
> >  .../drm/i915/display/intel_display_driver.h   |  18 ++
> >  .../drm/i915/display/intel_display_power.c    |   6 +-
> >  .../drm/i915/display/intel_display_power.h    |   2 +-
> >  drivers/gpu/drm/i915/i915_driver.c            | 161 ++----------
> >  drivers/gpu/drm/i915/i915_drv.h               |   9 -
> >  drivers/gpu/drm/i915/i915_suspend.c           | 141 ----------
> >  drivers/gpu/drm/i915/i915_suspend.h           |  14 -
> >  drivers/gpu/drm/xe/display/xe_display.c       | 185 ++++---------
> >  drivers/gpu/drm/xe/display/xe_display.h       |  11 +-
> >  drivers/gpu/drm/xe/display/xe_fb_pin.c        |   8 +
> >  drivers/gpu/drm/xe/xe_device.c                |   4 +-
> >  drivers/gpu/drm/xe/xe_pm.c                    |  16 +-
> >  17 files changed, 498 insertions(+), 444 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
> >  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
> >  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
> >  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h
> > 
> > -- 
> > 2.46.0
> > 
> > 
