Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C7891AD5E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 19:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB08F10E2CD;
	Thu, 27 Jun 2024 17:04:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5jVpTuR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7894A10E2CD;
 Thu, 27 Jun 2024 17:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719507872; x=1751043872;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=A4k4eSGb0eF0jsJ+gmJk1jP/5pA4sqY8HUCj0j9hTW0=;
 b=G5jVpTuRaSHoUOy3psB+Syh2NFED7An+bNaZ+6CmFpePWK67QpFzaNCu
 nbQsu2FNhTXtu+AUpLLRvdTRGbJ4jkqJ+Y5++QrxkK1HqWuggThRHgvVG
 nhwdnKo47Vqe4pHiG7Gc1X3gn6oVGs9OWZzI8EM/7Q2FGa0xemsa2ElAd
 DUlCazcEgQiBzsDowt7WVQ+Sxd1E5nm9Lcu7CaahqKzOURFDeoxfCsfS2
 zCsV3NSoyD+oWssJaKvvr9uXPBiXlNIjXCUlF03Bfxjmeg4V1jrc40H5M
 mUaBztq4f5TVxU/htZdl99ZTX4S7xzOUHaJ0Qdb8Tv63BJMyL88myOmCl w==;
X-CSE-ConnectionGUID: cpoXGUq8TUCPEpeCHhAN/w==
X-CSE-MsgGUID: KhTTdonaQGGMxoGskc194w==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="39173933"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="39173933"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 10:04:31 -0700
X-CSE-ConnectionGUID: TMxJngQwTSGwhR6MHKvhrQ==
X-CSE-MsgGUID: zvcu1jDERgOScq6JxnqLcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49411334"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 10:04:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:04:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:04:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 10:04:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 10:04:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DL88ze3tvqh0lpJjFYYdMR79boxlJZtd0QbFPNRSLsKydZgm5yq4F2tqFJaRAu7pZzN3LP3T6/PDhC/FDMkFB0c5muKzENQ9bg3BOgmBW2EozlQwXn57un8kuh/5ekeWUC3qUCIqWPfHpSEQRpuCPxHSRC45rINNhZTE3GsnEkuQzJYc6YyDR4G/zbkzegsj/qvFPUorYnvNXjU5koL9L3Qblyt1lZHAm8MwhIhxd1tCk0q+BFAwrqloR22a8YIiHTrax61OxLmFqUDMGjSuuaM1MEgIh+HFXhT+rms4dfeDvyfbWmWCzjDMp/jGRPPtXBc0eJVaa8mTJnWqfMDRmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Swan+Iw3Yy/G4HYltidlaQcn8L5KBO1d2OMNc8oymHw=;
 b=n5g/IdbESqO/+r9qMn/rajIBMpNllI0VN/egUmjwb5WTKdyXP7vubqnIssBJeriA2/Kl71tkUy+sqytqYxDj8rMh85hEzzvWjuS6wZsfW95PMdD14WRXvgUQD3vM/byz0rxFQklcy9dRqgzXYINs1ExdakNYDcjAhiefu3YB4n6VvwkBemS6wLYgwz82TynybcSDrd/cJ1dSdamVahvtq8EQVW2j3LpD/R/tA/0I27/RWGKDStQ4+qlm9gadqY6T8TwiDZHgZ11J8p+4NwevMDX1NkhsI+58afRNKPoc2P8E+JAlTwhJLbeFrPpsov8zKKSRna0f/7HBL/gl83m28Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7244.namprd11.prod.outlook.com (2603:10b6:930:97::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Thu, 27 Jun
 2024 17:04:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 17:04:26 +0000
Date: Thu, 27 Jun 2024 12:04:23 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 4/6] drm/i915/display: add "display is" structure with
 platform members
Message-ID: <dkbhgldqn3maarg2j6sg3kvylrgh6vqtwzs3v2r6shmbga2vra@vybhd6y44xbb>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <80e564e550bc0972c9e0199f1a361a99545ab81b.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <80e564e550bc0972c9e0199f1a361a99545ab81b.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::31) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7244:EE_
X-MS-Office365-Filtering-Correlation-Id: ce1bb3a3-671d-4cc3-7fc1-08dc96cb3360
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cwHtqt+vs0bSd3lxSbXfyMmFsmvZKk1QX9LCyqeyCtpZAzZJv+rlGqpoLiZu?=
 =?us-ascii?Q?FR1d3de8Q2l9XQctDkhlwzdA1vpID0QOcHz1BVle0/OjLwseKW+t6G+j6yhw?=
 =?us-ascii?Q?QnlNkWd2qsbWlC2glIQaoEqHDR0WRkOy+uDz9t98LlhYaaSuZXfM0v/Vl1jS?=
 =?us-ascii?Q?zcmgI/Oz0boLAzND1LL+1rXuuhs/ZLUhks+mK1Cn9QaNpqZTwjPg3cFWqyG8?=
 =?us-ascii?Q?VuZoeXsLnZcTarRg1DsOlryVfcWj29HCXtXoT3UlbIn0RiDCE5u8KUjQ+vKg?=
 =?us-ascii?Q?pKd5/7w/votwF4rYSrfUEI6pbu3a6NAroOWX0oPkaSsU9CSGEma0qEk6TkDM?=
 =?us-ascii?Q?WYDX7YSc0B9eFLPeW+rmkCJ6QcKUt/7WYcAV6Gp9HdnVjiphrMQmoVI6rPNi?=
 =?us-ascii?Q?cu1wrmu9kxRI780NZkxwcdweM7dnyIR1drR0ykIOBnk8iswwyqA41bS/0CSj?=
 =?us-ascii?Q?20Xshj540xHaIWzpuyzJsZsD9VxZqhfK3BVb3QgmcpxXd52nl/Vkwwte/amh?=
 =?us-ascii?Q?Yt4pKK54ncUNdY/2+bAvyEIOQjyQcHt3q8CsdLU4dHE+URuIVaTP6r6aYLVC?=
 =?us-ascii?Q?9iuL1nHlCOF/XpctgbKreNzhD4gia9bdzIueDIGOKZtTxtLaWFk50dHFQDWQ?=
 =?us-ascii?Q?+wji8BGGBZlS9jP2CJlshpXC+woZ8uzKlGn2wYfDGcZiDmCxVLhhLSOczR8L?=
 =?us-ascii?Q?jWcggSEL7zyVOvYO6sox85crad3jeaBX+VAAEZLJRg3Skqwa/RDOlZFKDXOy?=
 =?us-ascii?Q?7hfLoTPtAqclMuCwVecOxGGyA+d7keNffQgHb9NmHpvP9k54jCwsobpR9gNW?=
 =?us-ascii?Q?XCikQ+X1u6+w3wsHLkImqcHOKVrA5+H+t8+b521Y9D3QCVMCSm5Z0UQCExhG?=
 =?us-ascii?Q?+d5kDi+NjQRsBp4Hr74Fns9CybL6GNtMt3ZzUOhYajEFfTvy8VFg9yxlo4eM?=
 =?us-ascii?Q?MIaOze8iAQc0XmKqGiZTZSFkUJgeiVqmcBxlwF2fPoJL9BtaLMq2J7F/gptx?=
 =?us-ascii?Q?6M3Qgub9aH7Y/tdNtVq53GZrW1ctw6v7ifMdG9/kovlbYQ80dbidEZmJTDWd?=
 =?us-ascii?Q?QSc2PlA9JtC1dyPuALzqFhRqs6z1+lN5WL1unHCQDuzYNvOZNafV4jsOeurB?=
 =?us-ascii?Q?hwRBkZAxhgU4YGu1+kpjl6CgsQrjU3rZOsVeHhKg+5vj8ZOfAXgtV5li4ScW?=
 =?us-ascii?Q?Rpj/vmt+wYm5snqt8izp/U6/8itFaXyats8dJSVCn8z3xH7SBKSr+WLmC6Xi?=
 =?us-ascii?Q?WeHPcR1VhCogy19W+ZtrbVpjzOX839yRrLWqHKMVPG0sI36xmAusYHF9Tg2W?=
 =?us-ascii?Q?5glzhZyxfDV6dNI+hLL6TBKX6eEWW3n7C92xZEHmTJYh6g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iwIWOjU+PQayHAzRbSM+edPnQWjDDWT1LOftnbS1KbgQCvHS45fpQkhiHrsd?=
 =?us-ascii?Q?95tZI+8fRZ8lJh0+GandeqKSz+jWcjnKtJlKJOgaECjkpxmoeMPFF9hrFdBV?=
 =?us-ascii?Q?Z48ZgQKyLIHUatqJ0PsB7zvgzo500slv3lvT/tLiIag/gZ+LnHxfs/SYvUVt?=
 =?us-ascii?Q?i/pLIxM2hSsCgW0TraYxQFwtTeKXKJtgzVQ/yYVNm5M1WIp2fSlJqN+4suIb?=
 =?us-ascii?Q?dIxF2zYsgOwBc2n+aQPBE6lScSQQB4OEeqn1jCAcI8VHZkox7iSraR9Qv66l?=
 =?us-ascii?Q?NJrXQ5PAZVBlItQlYY8YrLQEMziTS1/ToNqKQf4VqlQYnsBnhw13Ql+Iwp8P?=
 =?us-ascii?Q?yseBKpW/5/etpqJGlp5fe1tI8DH9UcrWB9xzp9AOY2rGObCT0i+1/hSf03hg?=
 =?us-ascii?Q?CkS4ZJtULo/3CkvddZXrdBcizvLOHhppsRs3QkwdxeuU2FLMIAxPuFM490OZ?=
 =?us-ascii?Q?PtPpoOhgSddi9Mmv23L27R4GWPc6reQFlFM3cvCgccUc7jmuXlSEEk8Aki7g?=
 =?us-ascii?Q?7DPKyYKG+FJaXfUj8TD9qJZPMTPfdW8YTKAobaK/aZ9PHRSZtWBaIiARJe79?=
 =?us-ascii?Q?S72INorpU6SwtFnvL9yk2j9KwZ8D4w/BYlz/B3OrZfvAI5wkWKKZv7jqWqR2?=
 =?us-ascii?Q?or4lrs8bSVFc/biW0lTtNaDYALSHlgeK0xOo9A/gc2F/zt8rfwYWLi9e9VbD?=
 =?us-ascii?Q?qoAJPmOE1FyLS2yk3k3zX5uv3WQV0CceRxY1fxZ3eTk+i6pGjrzk2CqAAhGq?=
 =?us-ascii?Q?q9U3uuOpp+bYVJcfIbIdKrC6Mx8ya9UgHQNBFzhpOE3oQX1fXtMDirHkSBtb?=
 =?us-ascii?Q?/iN1D+MIEuaHcToPywW0GpJWFaLToo32NA0Ew3uyVaXG+8Ep5MgOUr7MFGWL?=
 =?us-ascii?Q?pL/c2U+ouJG3NeH/SOiIBq5L23m4oZwNh0LcfrWLucLtAekeNfIEMJB4iQBm?=
 =?us-ascii?Q?KydS076sEM15fDN0edZ9HiHqaYtCAIg94hHWVPpiGMj+2ir1o48Bv/bExzZh?=
 =?us-ascii?Q?PuYs56paaATenTZVz9fEkRZaNzKMnzKvW1WVSoo2BGMvPjnNuGoeUeaFsN9D?=
 =?us-ascii?Q?l/9AKKc4WBMxwOx36iuGCPqGTMlTIPHOzMCLRK5TrOL+Byj+2+KgnkOJ4IdH?=
 =?us-ascii?Q?QbRSUy0L1ISgeWPVfaPsDSE1j2OnQCVGExAqQ4p22wL8PtzyqfTukheREMSk?=
 =?us-ascii?Q?podFc66X6a7Zl7d32jGZRIE8S0HzOKigd6yYMSFocdd0VihYbea0Ep+uU0Ys?=
 =?us-ascii?Q?3N3pmRBTGIEfN5gDcTahPBMfLBPWcQF84Hj1bc8LuI3I4q1Yjv2OpZjLuevh?=
 =?us-ascii?Q?frrPKxRj1LoUI1xRhdNabIkv29J/rQ9YgOxPTiJXuthejhxjePTv6D5FXP6A?=
 =?us-ascii?Q?LG+jmdeGzkw5lRP+aZyUXV2tSLNzN5PLYL8YqqL/1aBAaOEdJpzen5/acTSz?=
 =?us-ascii?Q?MWcObSnw5pY/9YtbWpv3Sau8H4rrBeJk8mRGXcSMpmwr+dvQiD+k2Ts0+F5D?=
 =?us-ascii?Q?7wgydNdRTKOf0Hx8Wq2r4Vuv94cGHVyUJDyvXOuTUr/PV3eIWlk3gWw4wvp8?=
 =?us-ascii?Q?Qt583CLEa7bo7x4P22krBnTjKtGz76QlHbuJBPb8LY8gdkM95uEochFyxP/k?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce1bb3a3-671d-4cc3-7fc1-08dc96cb3360
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 17:04:26.5994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fS+MtpyDzOQQ1HHXlr0Hb/EK1o+Ua1K1izKeAwXpevUwgGFE1FJkmJq9mBB8rlzLAxUWBPrGr05uTbIhtiGasu1asl425DYS7gLSEkqYB7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7244
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

On Tue, Jun 18, 2024 at 05:22:54PM GMT, Jani Nikula wrote:
>Add a structure with a bitfield member for each platform and
>subplatform, and initialize them in platform and subplatform descs.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++--
> drivers/gpu/drm/i915/display/intel_display_device.h | 8 ++++++++
> 2 files changed, 14 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>index 80563af7ac71..0c275d85bd30 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -21,6 +21,7 @@ __diag_push();
> __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>
> struct subplatform_desc {
>+	struct intel_display_is is;
> 	enum intel_display_platform subplatform;
> 	const char *name;
> 	const u16 *pciidlist;
>@@ -28,9 +29,11 @@ struct subplatform_desc {
>
> #define SUBPLATFORM(_platform, _subplatform)				\
> 	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>-	.name = #_subplatform
>+	.name = #_subplatform,						\
>+	.is._platform##_##_subplatform = 1
>
> struct platform_desc {
>+	struct intel_display_is is;
> 	enum intel_display_platform platform;
> 	const char *name;
> 	const struct subplatform_desc *subplatforms;
>@@ -39,7 +42,8 @@ struct platform_desc {
>
> #define PLATFORM(_platform)			 \
> 	.platform = (INTEL_DISPLAY_##_platform), \
>-	.name = #_platform
>+	.name = #_platform,			 \
>+	.is._platform = 1
>
> #define ID(id) (id)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>index 50485235ef09..73070c8487ff 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -101,6 +101,14 @@ enum intel_display_platform {
>
> #undef ENUM
>
>+#define MEMBER(name) u32 name:1;
>+
>+struct intel_display_is {

intel_display_is??? very odd to name something like this as a verb and
that has no indication in the name what actually is about. Why is this
not "_platform"?

Lucas De Marchi

>+	INTEL_DISPLAY_PLATFORMS(MEMBER);
>+};
>+
>+#undef MEMBER
>+
> #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
> 	/* Keep in alphabetical order */ \
> 	func(cursor_needs_physical); \
>-- 
>2.39.2
>
