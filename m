Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F43B2833E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 17:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FDE10E130;
	Fri, 15 Aug 2025 15:49:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fv22dyCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6C2F10E130;
 Fri, 15 Aug 2025 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755272963; x=1786808963;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=SDoEIAANKorr31TlNRkdSCNV23kjh7OHfkgT0orSOFw=;
 b=Fv22dyCMjztvveybnhKEFpnSBlaj7tNuAD1CDauSWG+IkR2l4bMhJ1ui
 wb6Q/hOpn6UMNczMKvCvsTFTmNp4YyR5H7YeRMrXoLZmP34eVvAbEozFz
 IvOgnKT+8RtqFkDQoURAs9Ab3rGO3htPvhGQi0gCoK7KUEbIC7bmdIkhe
 8IlQrXYu8Weg2DhJZRfseBDUJcPcBPTNOWoVseOJoFXyyodvb7edmXZSu
 UKlu7gBUBa/G44HqrOwNRoZelDDySbCId8XynHH4MrFCT0J4Y5RxUdXob
 4keA2FPff8SEX8mUuQRQZ5CITLMxHdmu4WS5MwDja+iN/S/4NeZATTl0z Q==;
X-CSE-ConnectionGUID: sGpaQ+LqTUqeUREY7bYSjw==
X-CSE-MsgGUID: B7m69t5qRyOpUUT6cjrGpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="57668727"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="57668727"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 08:49:22 -0700
X-CSE-ConnectionGUID: cjlHB3LqQLWaZRul7UAzHQ==
X-CSE-MsgGUID: UT1px09SSsqdnc7W0xXFlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="197896736"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 08:49:22 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 15 Aug 2025 08:49:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 15 Aug 2025 08:49:21 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.86)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 15 Aug 2025 08:49:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dP70tacRhBhXr6hN6xev4Jl0n83FrO3N2Z6WB7lg3u6CO/PVWMd41M7lsGRWy8n8zzf1+SFsSG60anAhZ6pk4xv1Rz0FS+GC2j8+Sjli9ExOMjRt+bILNPkb2oLty3Ddscq/9bU+4sKp0d9tQZbfI9l+ggBmZRWgWB8O8KJFx/6V2aFp73bX0y0aLMJgxSuGLqNLNnvqLKyBh7tQfNqE3Jsxn3Z/3kKN+5lGirM39XoHnTS2Cli/P7abeqFguI7OTyu1dIw5l37znrgNtrxhz+4ZFZGz9VcCdbYTcsQpopJEMwvvJ+VGSZbelaWdoS0TOAJ3RHaz4I7Euv9gnTe9/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JvXBZQfbhc0TaQmZLWSQqZ8TwDM5STibQQfvQ1mtaH8=;
 b=iZjvoBg1fCq+CqsyTuOthAfEj945jdyWXnurH2i/TFh0/2isd2C5sPMHuSv4VUoH1aVbRYpfGuBaCZUdyH8YjQTu1c2z56EUF6yDJc4he30eCNOSHlrMaYSBXyX8RR1yCdp1GLKO1vm/KnQca5D3xeLl7zKBXg2D6ro+8BKSiC7kSKy5Q/VYhvGWfvI4RTN5BgbwZKQKpwQJzKLdPzGum/LNe2wHuZL+rwqLORQljiP0XtCkQiDS/mpNKz01MQx+b2ZRx8+hB6b3olSHSaIIC9xWKtLFyEfgout/z9eRNIckAonHZ7wbRNg8NzsoJvU8IEIzWqAVS4NlM/ETE24QgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 by SA3PR11MB7416.namprd11.prod.outlook.com (2603:10b6:806:316::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.18; Fri, 15 Aug
 2025 15:49:12 +0000
Received: from SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::b156:b61b:d462:b781]) by SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::b156:b61b:d462:b781%6]) with mapi id 15.20.9031.014; Fri, 15 Aug 2025
 15:49:11 +0000
Date: Fri, 15 Aug 2025 11:49:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915/dram: move fsb_freq and mem_freq to dram info
Message-ID: <aJ9W9JYeLiXPmHYo@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <e8301cbddf14c52cd7c58bd2d7fb1c6d498b69c0.1753971617.git.jani.nikula@intel.com>
 <aJKFcINrXQvsM9ZQ@intel.com>
 <61895ad35a6d50a3028ff84d1eeabdf3e0eca4ef@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <61895ad35a6d50a3028ff84d1eeabdf3e0eca4ef@intel.com>
X-ClientProxiedBy: SJ0PR13CA0158.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::13) To SA1PR11MB8427.namprd11.prod.outlook.com
 (2603:10b6:806:373::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8427:EE_|SA3PR11MB7416:EE_
X-MS-Office365-Filtering-Correlation-Id: a49ccbf7-a6d2-44c4-8888-08dddc134767
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?va5hxXi9yL5PbNx9bMNN/Q1h5qu2hkIZzfjmQyIJnlDftbJy4QToVgpx1d?=
 =?iso-8859-1?Q?HIB/sc9rHFEPVpSnLkjgojVfnBg6wOOCMiH+/K9c0R0s+fCFBmCrAnZxNL?=
 =?iso-8859-1?Q?RJV8Ohd8Sdey29WMPaMHCXozOAKUYNPGjtdbHVFkU93NabSlIxbVXNlDyF?=
 =?iso-8859-1?Q?skfa0uSthhjrHg8SZx02/2bqNSD60Z9Vmr+lgKVMlUgMXMAZlEoFLNiG11?=
 =?iso-8859-1?Q?K5x49a4AtJCdpBZmNaXwwZGjyQY4BYSnRdgv3PHhv+54PuB0hDNvmGMtBL?=
 =?iso-8859-1?Q?IiK9aBK73D7MTotw+XVlAAVGa3ZJvb5RYudQIDhNYvPwVuW03BATEWOa44?=
 =?iso-8859-1?Q?i9YS8jMhC6/KJn5mu2hoB4yuA6DZ/UHma7itbs4rUszQR6dvyrmTEfte94?=
 =?iso-8859-1?Q?RtJxLb6/JzzxQ2eNEYh3El51DYwcfHSVCLgs4Qy3c4XhAzsEWtW8NVzuir?=
 =?iso-8859-1?Q?NPt7L91JpHvXJrE31u5/Gj46yooLMfOD+wy+tXnYj+KTM+I3mYatIEUqkS?=
 =?iso-8859-1?Q?73bQVEPkdnwICstoSo6QURAAnhyRbVig6Lwl/xcXcjJCacQmiU2V1RsYD3?=
 =?iso-8859-1?Q?JShWBOR5482WHUI7dXqZtq6OYU92IsIGtyJZ2DqkVDNsehqsAic+xjT03M?=
 =?iso-8859-1?Q?/HgtmJCGm/Y/IADtYfUo+2mY229SbzZUZtKPszwUOEUkqFwTZSSN0eKZ9g?=
 =?iso-8859-1?Q?GzQfYEA5WhsacuFhmtxnLK/PVfG0pnHVUIZhKXdElw3iQYB1gKoZQO8kF8?=
 =?iso-8859-1?Q?KZavpqVH5qnVRWsbLxCHjA59J9yjgdfncEClbZm8j9A8xkzccLSbuT6OH5?=
 =?iso-8859-1?Q?j4nEwodxzAdtxJ9ci6hfa9xXCAJNIUKGQg7t214eHTg8fFuduhG2GaFhQb?=
 =?iso-8859-1?Q?6nigiR/LxFrySXxfubbn1ruuw3SAr6kmDrXnLfLgMHpURKI+x/WO6kqQSl?=
 =?iso-8859-1?Q?vkDHFjdtJKCiYV31jFHm6R0XWji0sSg2yHjA2h2kxtn7bgTsq0s/jBN5Us?=
 =?iso-8859-1?Q?ViLQTzH3nQ+pR2HAj7WtB0/Ta2SaFnSs3FqUDZvXkvuvoXH1SFbPGt94la?=
 =?iso-8859-1?Q?emy6kHV+nlhZBn7k2ov9O5baagH8908j3TCZInXKNF1cKdOWA2w77onGLy?=
 =?iso-8859-1?Q?aNI/W3oP/o2vldI6ntprw+m9xozDSv/QqSdasW31S0WhYi3a06+turA/Qz?=
 =?iso-8859-1?Q?zFhVkuy+hqdl1w6TbktpB/I3xQrnNfI4yrzJrIAvAnPj2aL3ufc7qk45Nt?=
 =?iso-8859-1?Q?GwrJe2fCxWXPfP+dzAm2tnibfm1vXkttZbuNIPJYws/INf/eUYi0f9Xcov?=
 =?iso-8859-1?Q?hshHoFN6YfmtNJIUBzF3W8Rr3zuWyQSzOVIQbI8w/R5Ge3iFi5RTq74GTP?=
 =?iso-8859-1?Q?AN1+k5REp4LocqeeMpsz3hD+aXi/3jCSKEw6jw3bGkXfeZcnMeU5sgPBBQ?=
 =?iso-8859-1?Q?BZ+uSEY4OC2N87TVpMxvCfBKdLO0FL0bYYALgw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8427.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?424ZfIwmecjeT91A1HwuKMCoq1yEnT30oaYgAs+RfqW5nvZEnyhkf5f1Dd?=
 =?iso-8859-1?Q?66iNxWwxKxGtygDIWfIe5J+s5KJc24LwbsyfyGzGwQeBqo2Shy7FP16UZL?=
 =?iso-8859-1?Q?O4HRZ0bFKt005Ri+gyMBd9g29DtMmyKWlgdX7utcuFIG8ExBRVnTr7M0/r?=
 =?iso-8859-1?Q?I4God0ia2hTdniwuiFQ4xwPtQQ0F6+Vqi9AYk2RakErMwlXRxsOpbDe17E?=
 =?iso-8859-1?Q?c9zvsZXjg7AY3nioojNKJgM2F/hYv+28edyoT4kGxKBDOTsXhhNgmvc9YE?=
 =?iso-8859-1?Q?somIOr3eufXslYy73PnjZWCoPE+ngiPadgRjKLSE2UsLAlpF+jez+3pvs4?=
 =?iso-8859-1?Q?8M8BHR6oyRCHDdK7dQMrF0gcL5iib8gjXcQI6u1x2XAN2MBn9hE6LOqqJj?=
 =?iso-8859-1?Q?kCfJCGhKSJPA/nqlFjKgnGg73ESglI5ghaoPbjjS7kcOLKMJz8XN1UvYjE?=
 =?iso-8859-1?Q?L5OXzfOppftaYKw3jpWlprXIUbViomrdDsX8g/WH+eGtdPmfnNEj1mzZGS?=
 =?iso-8859-1?Q?rhcU9TjgVOT4sJecAWZrXjJRifpQtjIrUNQdaqXrDiW93A55/qr1G4R5oq?=
 =?iso-8859-1?Q?DeYj5sYx2miu20lSAKAuT5WV7frqCH7haOkLE1xZ93RDFuJc5/+8jFSr7x?=
 =?iso-8859-1?Q?Cb8AUX/2HWIGHIrkfnbghgOVW2tEmsB8RXWg6Q9XfOZEcuRoQacECDpDzB?=
 =?iso-8859-1?Q?oMYFLQ1qLIXoI7f6LjQLiGyttLsMPk/4VIofEPagRzTfbRjHWDeXjpsSbJ?=
 =?iso-8859-1?Q?fb3OQj4hcCCZzGFOEKjt69MZhrPn/zbrGed0p3i7UzN+YDpxt4LRcwT7/R?=
 =?iso-8859-1?Q?FJEikIankXY5rmf8O3/5NuFkHv4YrQQSaW8WAqy5NRTgvV4a7FdFNEklIh?=
 =?iso-8859-1?Q?1Fe2g5yWdSOB0wt9uVJQB/HNmN9bLY+ir9nE1TqsI/EMhCLOU3YKecaUGa?=
 =?iso-8859-1?Q?RzeTvIcgEme4Amnr+khphw8HEirjwbrHjSob3CwkVg7DixkeOnL0pISwhs?=
 =?iso-8859-1?Q?3vWAH7FcIp0gGud9n27Cfr716L6evo3Ouu/U9+a2MRNJK/EV8p9p8D/MXH?=
 =?iso-8859-1?Q?j3VmQXUctLU5XBmot810/e0Y36ArG2A28GOw43pRWW1cv0XkBc/1T6t2DN?=
 =?iso-8859-1?Q?afbtwfuYKJZ4KrUEllscp1YSGT9rWdHdrhs+UfGOQJJlbp/+gpLv8kaGgG?=
 =?iso-8859-1?Q?soiSR5lODUYsNQEL/BMkutd2ONBSJs+FunJNXr/rD+s4mPpYR3BLvPhJzk?=
 =?iso-8859-1?Q?uxFnzussOjPKLjXRlTJIp4eflrygErHR8McJt5TS7jrQuONLLkHROmi3aQ?=
 =?iso-8859-1?Q?gGpDbwgEi6oIBIsa+NBk4mVdmopWfl1mZbP9VMUVNU+XW2KRFrlOK2N9Mc?=
 =?iso-8859-1?Q?pZbi3V0uNSlY1VHCjD4PmoCym0sKDt5/BUIeU+0X/lQNVOa36X3Wjn3u5q?=
 =?iso-8859-1?Q?3LoaXZrRGKMwwTrPnE0XvFKIWgrMsLH98P0m3NBVGqRe8BIhcYWUDss3/8?=
 =?iso-8859-1?Q?lDs+om+qy6ysoFd7fPeCYK/vxFlXENj8fGvXqGXS/Bex6zWDGG94q1w63/?=
 =?iso-8859-1?Q?pO1UcEg15kFxh3kPiDD9C2BMF0NUkMo47akTaSaIh+HlX+c1D2snzEZS9o?=
 =?iso-8859-1?Q?3RzpdyBrqskjta3O1BpyUXA2WAwYBHEa2O?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a49ccbf7-a6d2-44c4-8888-08dddc134767
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8427.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2025 15:49:11.9411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K6TgCu/0K4BtsxW9s4f+npJyOnOKDqRVK8LDy/y7paVdqEH602XgpeJT6UWjCvRb6X2SNxFaxuj4h3CCZpW5ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7416
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

On Wed, Aug 06, 2025 at 04:57:53PM +0300, Jani Nikula wrote:
> On Tue, 05 Aug 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Thu, Jul 31, 2025 at 05:21:25PM +0300, Jani Nikula wrote:
> >> Store fsb_freq and mem_freq in dram info the same way we do for other
> >> memory info on later platforms for a slightly more unified approach.
> >> 
> >> This allows us to remove fsb_freq, mem_freq and is_ddr3 members from
> >> struct drm_i915_private and struct xe_device.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/i9xx_wm.c | 13 +++++----
> >>  drivers/gpu/drm/i915/i915_drv.h        |  2 --
> >>  drivers/gpu/drm/i915/soc/intel_dram.c  | 38 +++++++++++---------------
> >>  drivers/gpu/drm/i915/soc/intel_dram.h  |  2 ++
> >>  drivers/gpu/drm/xe/xe_device_types.h   |  1 -
> >>  5 files changed, 26 insertions(+), 30 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> >> index 1f9db5118777..591acce2a4b1 100644
> >> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> >> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> >> @@ -3,6 +3,8 @@
> >>   * Copyright © 2023 Intel Corporation
> >>   */
> >>  
> >> +#include "soc/intel_dram.h"
> >> +
> >>  #include "i915_drv.h"
> >>  #include "i915_reg.h"
> >>  #include "i9xx_wm.h"
> >> @@ -85,7 +87,8 @@ static const struct cxsr_latency cxsr_latency_table[] = {
> >>  
> >>  static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *display)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >> +	const struct dram_info *dram_info = intel_dram_info(display->drm);
> >> +	bool is_ddr3 = dram_info->type == INTEL_DRAM_DDR3;
> >
> > does this deserves a separate patch? I'm not sure if I followed here...
> 
> The current check in the loop below is
> 
> 	i915->is_ddr3 == latency->is_ddr3
> 
> and with i915->is_ddr3 being replaced by dram_info->type, I thought it's
> simpler to have that variable.

oh, it makes sense now... what I was missing was the part where
that was getting set in the pnv block.

> 
> The alternative is to convert the cxsr_latency_table to use enum
> intel_dram_type and INTEL_DRAM_DDR3, but I felt that's a bit much.

no need for that indeed.

Thanks for the explanation and patience

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> >
> >>  	int i;
> >>  
> >>  	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
> >> @@ -93,15 +96,15 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
> >>  		bool is_desktop = !display->platform.mobile;
> >>  
> >>  		if (is_desktop == latency->is_desktop &&
> >> -		    i915->is_ddr3 == latency->is_ddr3 &&
> >> -		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) == latency->fsb_freq &&
> >> -		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) == latency->mem_freq)
> >> +		    is_ddr3 == latency->is_ddr3 &&
> >> +		    DIV_ROUND_CLOSEST(dram_info->fsb_freq, 1000) == latency->fsb_freq &&
> >> +		    DIV_ROUND_CLOSEST(dram_info->mem_freq, 1000) == latency->mem_freq)
> >>  			return latency;
> >>  	}
> >>  
> >>  	drm_dbg_kms(display->drm,
> >>  		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
> >> -		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
> >> +		    is_ddr3 ? "3" : "2", dram_info->fsb_freq, dram_info->mem_freq);
> >>  
> >>  	return NULL;
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> >> index 4e4e89746aa6..2f3965feada1 100644
> >> --- a/drivers/gpu/drm/i915/i915_drv.h
> >> +++ b/drivers/gpu/drm/i915/i915_drv.h
> >> @@ -237,8 +237,6 @@ struct drm_i915_private {
> >>  
> >>  	bool preserve_bios_swizzle;
> >>  
> >> -	unsigned int fsb_freq, mem_freq, is_ddr3;
> >> -
> >>  	unsigned int hpll_freq;
> >>  	unsigned int czclk_freq;
> >>  
> >> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> >> index d896fb67270f..6405a3d0b930 100644
> >> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> >> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> >> @@ -149,17 +149,6 @@ unsigned int intel_mem_freq(struct drm_i915_private *i915)
> >>  		return 0;
> >>  }
> >>  
> >> -static void detect_mem_freq(struct drm_i915_private *i915)
> >> -{
> >> -	i915->mem_freq = intel_mem_freq(i915);
> >> -
> >> -	if (IS_PINEVIEW(i915))
> >> -		i915->is_ddr3 = pnv_is_ddr3(i915);
> >> -
> >> -	if (i915->mem_freq)
> >> -		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
> >> -}
> >> -
> >>  static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
> >>  {
> >>  	u32 fsb;
> >> @@ -252,11 +241,20 @@ unsigned int intel_fsb_freq(struct drm_i915_private *i915)
> >>  		return 0;
> >>  }
> >>  
> >> -static void detect_fsb_freq(struct drm_i915_private *i915)
> >> +static int i915_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> >>  {
> >> -	i915->fsb_freq = intel_fsb_freq(i915);
> >> -	if (i915->fsb_freq)
> >> -		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
> >> +	dram_info->fsb_freq = intel_fsb_freq(i915);
> >> +	if (dram_info->fsb_freq)
> >> +		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", dram_info->fsb_freq);
> >> +
> >> +	dram_info->mem_freq = intel_mem_freq(i915);
> >> +	if (dram_info->mem_freq)
> >> +		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
> >> +
> >> +	if (IS_PINEVIEW(i915) && pnv_is_ddr3(i915))
> >> +		dram_info->type = INTEL_DRAM_DDR3;
> >> +
> >> +	return 0;
> >>  }
> >>  
> >>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
> >> @@ -728,12 +726,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
> >>  	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
> >>  		return 0;
> >>  
> >> -	detect_fsb_freq(i915);
> >> -	detect_mem_freq(i915);
> >> -
> >> -	if (GRAPHICS_VER(i915) < 9)
> >> -		return 0;
> >
> > oh! this responds my last question in the previous patch...
> 
> Yeah, I could've referred to later changes there!
> 
> >
> >> -
> >>  	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
> >>  	if (!dram_info)
> >>  		return -ENOMEM;
> >> @@ -754,8 +746,10 @@ int intel_dram_detect(struct drm_i915_private *i915)
> >>  		ret = gen11_get_dram_info(i915, dram_info);
> >>  	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
> >>  		ret = bxt_get_dram_info(i915, dram_info);
> >> -	else
> >> +	else if (GRAPHICS_VER(i915) >= 9)
> >>  		ret = skl_get_dram_info(i915, dram_info);
> >> +	else
> >> +		ret = i915_get_dram_info(i915, dram_info);
> >>  
> >>  	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
> >>  		    intel_dram_type_str(dram_info->type));
> >> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> >> index 5ba75e279e84..97d21894abdc 100644
> >> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> >> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> >> @@ -29,6 +29,8 @@ struct dram_info {
> >>  	} type;
> >>  	u8 num_qgv_points;
> >>  	u8 num_psf_gv_points;
> >> +	unsigned int fsb_freq;
> >> +	unsigned int mem_freq;
> >>  };
> >>  
> >>  void intel_dram_edram_detect(struct drm_i915_private *i915);
> >> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> >> index 38c8329b4d2c..e2206e867b33 100644
> >> --- a/drivers/gpu/drm/xe/xe_device_types.h
> >> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> >> @@ -609,7 +609,6 @@ struct xe_device {
> >>  	struct {
> >>  		unsigned int hpll_freq;
> >>  		unsigned int czclk_freq;
> >> -		unsigned int fsb_freq, mem_freq, is_ddr3;
> >>  	};
> >>  #endif
> >>  };
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
