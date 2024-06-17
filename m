Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 845D590B862
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 19:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C816E10E480;
	Mon, 17 Jun 2024 17:44:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTb3TACQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BECB10E47D;
 Mon, 17 Jun 2024 17:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718646253; x=1750182253;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=N7059bb4+2dysIHL11Fhppblxn6yt5qrqPZVduhjGgs=;
 b=bTb3TACQuWuxU6Gdi8ikt2XzJaeraUWwc4b6cw5M2RFOAZxSUL5hnzAd
 VGFnJ9doLCWlQGQHwEf80RKav7CcLBrqYhz0AXQESAHW6Tr+QvkS82uKZ
 7CrEXs5006JB4vMUCzagledDaIGvo3ptJxLrHBq1CLHLDgaZzyWdGX/m3
 xPkkBr2WwmA3aAGGqT0rPfB1nY814S4VvK/obvAfxtR0ocugpwJwbhXnZ
 Oy6EIhAEMHB2aksr9gJgFUb0CpzZVfSXpFJcbEC8aL/ac04XgXP9SkrYQ
 atKaKtp+F72sL6w0dnbKyZ1ybanqyYWesgUKYLmUQGaGeKWvlevJkCasT A==;
X-CSE-ConnectionGUID: d5v1+BV3STGlrOleYZ1FDg==
X-CSE-MsgGUID: aQngNvYwSweRo8OAW+RjPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="26170581"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="26170581"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:44:13 -0700
X-CSE-ConnectionGUID: YL8cfT0bTGWHE6gHwY4wPQ==
X-CSE-MsgGUID: YLO9x+q3Rqya4IGYSKd6OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="41357177"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 10:44:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 10:44:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 10:44:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 10:44:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OwU/FFFzb00kprHcNSduo2qpGCMGdC88xxplwKyAhFjH6BVaYuUuDGCdo9XVbPxMKHcqS4jmg9ro5OuWcfORwesD03nS8L4U5n5IMAecJuBjPJ1GpHhvfXp7V/fCPBIkHt+B56dEddNeq6rogZVkXmZJliBw8Ew8hAoXBJSjDbthPFa60+PNWSYwKRzfgVbVlnTkBvUVy4XWT1zA6QMgykkImGscr/Xe7m6BQ9N5c9fkR0hAK7Sk26myitSDs5ZQKEckDWNw+QaRaou++Z3t8DGTMyt7dKJJBK1rdXM2mR8yJSsox+ytLxmpcfK5atgvJcDkMeSKB86G/w3LlU9AmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EppDaRfBtArgnJ3GGVAU7iA+96G1ECutC8WUJcCMrp0=;
 b=PLjV5LeVqqGSwjnpzJ27HGcy+wZ+ex8LGB3oOX7z4+GwMWDvoGByi6ilLCudj5vf8rSne1qONJr4acTUoSWODTDdIiImny3kqM591R4gfAwZanPHly+H/xnfYnYvquwaYc5YqOReu0wz/UzPIDe7cFTEYVskYA3Y1SUSQk6OMYPD2kqCEingVF9x9f7mXOQnnr65cdR9Iieac3tiNKynLpGj0O5GyKjxhDf51Q6VxdHX+v+Wi7v3fiTDW9pl1/oePNLX2tBfDrVb03XVKZ6xjYun/xJdNLf4T4/xL9HefeXsdnRFbM3O5ti1eihxdR7VwfuKRTgyxtsiNueN9ONEdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MN0PR11MB6134.namprd11.prod.outlook.com (2603:10b6:208:3ca::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.30; Mon, 17 Jun 2024 17:44:10 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 17:44:10 +0000
Date: Mon, 17 Jun 2024 13:44:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/xe: Use the encoder suspend helper also used by
 the i915 driver
Message-ID: <ZnB15p5eH-eVsg1a@intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
 <20240617170356.4000251-3-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240617170356.4000251-3-imre.deak@intel.com>
X-ClientProxiedBy: SJ0P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::32) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MN0PR11MB6134:EE_
X-MS-Office365-Filtering-Correlation-Id: a34681b0-e1f7-48bd-ad07-08dc8ef517d6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3ezpNEcIPpK6mbAW0GEGsvQntafjOO1qAs2k2MuPXUPRxQhhUPdat6faXNKH?=
 =?us-ascii?Q?hUP93B5J9BQEdVCj7iEHiEl6vmhl5UYJwp++epnZLVfsDdXTslMwoGQgjGGu?=
 =?us-ascii?Q?Uj3hzOlVNtYBVMOCsQqJCEtc+ocv2xh9nyjQYxh2U3mPl1M7DJSdPV/SVynU?=
 =?us-ascii?Q?RPsP3KTjwh5/j5E/Uxq5RFNmCkvbjQAIaGzBszq/csO+hIgk0ewDofE5SyRC?=
 =?us-ascii?Q?kY7pDZR3dkODCGXTKYnDD0MMwVjOvrAqEzdsvJK9XBdmCWIGu+QI74YokJDf?=
 =?us-ascii?Q?bCMcGqvQjtLdWxLazUlLBJhANRIJzx1F6wLjzJ/N6i6L4EKDAbga7DwD0soQ?=
 =?us-ascii?Q?ggSauCaa0TzHDMsBW+rqH66TnekGepinwb1mAd51CROp30tW01ZHAAca0Krf?=
 =?us-ascii?Q?JsOwK+JtAgwgjIc+Rph0pex4k+7go0tAdp+MQHHYXgnDocoLTl6Nwigh8ub0?=
 =?us-ascii?Q?9v2pTUFmX0EL3rq2lQKzy2TjeuUsQHeba16j2QLwqyVZcHrLgKbC5YXHteAr?=
 =?us-ascii?Q?a1sM6PRjhyUL52HcxWt4tVTnAMuQXP2bN5DfiHfqffUUiE1YkrU6LZr2WsyY?=
 =?us-ascii?Q?SMwUSo3KcM2VUS4erUd3N1fOrjB24lFZ7S1nvlPof9pSnC5m0idd4EO3+VDL?=
 =?us-ascii?Q?M+Jk57KVr+8hApW1QdjI3/hhi7waA0fft3k5CIvAfTyEb436fwnQrTft4IaM?=
 =?us-ascii?Q?KjFHCwIhdGscuZggWPo2p9adaL64RnKGqwlbqhCkqExIEJeh2Jz4Ct2VG/2/?=
 =?us-ascii?Q?8Wnt826yiaxxmbhoebrh3/t6+rjJ7KX/aee6o2nRL8fD5w+PY9i8QYRHiYnO?=
 =?us-ascii?Q?ldrDkHDOG89HmE+fj7bz3bInaUOcDTwaxAkXyzTueEs/LVj4Lv0MV2nwtmBH?=
 =?us-ascii?Q?dmR/G826Z8ZKmpEYuLd44e/NhsMEWjYk6nINHYSv2Z2HzkmXw2/pjmYHEfR/?=
 =?us-ascii?Q?AYVgfmnnXkshYzBJTJQ6mkzQCCfVxILL2yhg2L2TkggMz+XLC+1co5WftWsH?=
 =?us-ascii?Q?Bv5Y/IQJj0oIB2ejLpBi8hWpM5daZvhHxXVxAO6T90ePcQKYvmNRbjDUfOIF?=
 =?us-ascii?Q?IaiEarrvKJpF8uodA2czbqkNJ5N3bLuyzwohDTxE2DZ7F7MxGwg0X2aTf5kc?=
 =?us-ascii?Q?u7cCIHbjewg/jO5y6IV4q+3eOJWl9Q3rp9maq6AHeRl5pOMIvZHh7wbubCO9?=
 =?us-ascii?Q?rdqLiZ0W214gQYEkW/dqEq8BhGuC98Yiy0hoXdajYJoAudBURyQaSIIQP+29?=
 =?us-ascii?Q?S0w9Yq7XY9rtyVHAUtzUhE7V+CzlJSkwFFdKCw/RKvVzlF0+DhdPsTM4++rO?=
 =?us-ascii?Q?fi+8+GcGD3aIoWllph7Vuzrq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+mUu/4YB7lUkNPAgKZXd89bYS12Tep6GpACu38mH0bdH5Bfnjt2SqK55YK7c?=
 =?us-ascii?Q?QDI03ByuWXdtPpKbgSoJOO2rJhbe84fbc7J+h64pbG/qv6OfnID9zgm6PkFR?=
 =?us-ascii?Q?W61mXFOOk7cal7ZlbbYazUVtkwfBhTc8gYXrxS2Uxf/eKJKxiUCGg9zrmOPM?=
 =?us-ascii?Q?QWjG2r+8hBbJX5FCE3VEVFjM8SYaV2unUuivz3DnZSbxK4PcBbBO1V5ELWXv?=
 =?us-ascii?Q?RFR8f5xSlJFiIWqEs20IRbFYds/5HPJCUIkQYAtZNwEtHgbxktYXjvOxTzgj?=
 =?us-ascii?Q?24wjzxT69cToyfGwthHW6iT9wCSUcBQrMrTbSYwHzM5+jcWSBgyL6zHRES4s?=
 =?us-ascii?Q?1xyDsZFJc9KaOJMaWTkJoyA3BWCeYuB9v7uKPkY3Gy1KugyCPmMoy5dgDyin?=
 =?us-ascii?Q?oKUuEHU6m8s6Mv0szUlCYOHE3ICr8GDSDdr6rhU8zTDsE9XYxEU05bbTKMq2?=
 =?us-ascii?Q?/obxIfVet7456iSL63PN2LjWDbcfJtzwCW25keW+gOxFWqcma9CzSQwumDtr?=
 =?us-ascii?Q?+bUhTlUyps0UUsjtg/jRMySzBE+2pkzMEgzKGmTlGWra3S+hUssb5qV4Bsx+?=
 =?us-ascii?Q?zDIUsEy9wffK0cHTcH5guM1gDbjDu7ZJXEIXcsSKZgh4/V3PsVIA+yq4BZRd?=
 =?us-ascii?Q?6yWiUoR2pXDbfSM0LOiM73dy4DvHtAGrhIvrZvjNvhA9BPR16ZOkgilPiwhV?=
 =?us-ascii?Q?BfDJZGxO0eClEHAHQrb9lQtxgOPtbr8rPYufmcOIOtW8Hjb7Q0vOl1eAH6rF?=
 =?us-ascii?Q?vN/g7ETnYCgTGzbh+z61nzDzBgtEN0pUt1Fn+/wcnAicXPSSgHdccI+yZPZX?=
 =?us-ascii?Q?KdCg8qZHrRy1au9lo0Q6d7VTl+S9qEbYQxOqZ027iPAYajA7wx5ldeN54DJN?=
 =?us-ascii?Q?o6h2FgjGUhj7noRE62PZRNfGhhWNdzYW0tHG+9y+Xc1lrvGZ0f/D/H6IrRQK?=
 =?us-ascii?Q?9XNASAnCDhl57EJapxlwKiWZEfjj7TO4jB1yAHADFAc9O32o1JxU4Keolyq7?=
 =?us-ascii?Q?IWRudXOR4obYzQGsA62ezhXf8d6aixvWvp5Lxo9TtDPHi9eYXLkYuWDnwf47?=
 =?us-ascii?Q?2PxBVkAUbgh0Z1RcR64MYp6OgxVkyg4m+oilc5uqP4FpXCzX3vPchmhRf+Sb?=
 =?us-ascii?Q?zr2B/ONR0TTxvDohgUHpNVw0bYYNDk+sCBuqDlmMa3xXI/jvQtArLNp5ll7s?=
 =?us-ascii?Q?JcCXrVzEl5escCo04KF+5yL/q8IgLKu7rS2y0sUf8GkoZqLSCVeHKc2Bs7Iq?=
 =?us-ascii?Q?p16dFy134Hm3q3FGtvTBn6k72NZ79KGfjFt/jHxlDLC8IAupIJjJ71UdLMZA?=
 =?us-ascii?Q?/0xT9gl2eVSVt+oGWYMVJmSxFRGnO5D9XR4di+YFZvBTw6ge9s0rPEvqdluJ?=
 =?us-ascii?Q?rAa1pH/mL9IZ6Ghbf7U2oEKfDL0ZtA6/S+deDyxpVDLkzmjBfvwI0GNpjH30?=
 =?us-ascii?Q?DUQ/T8fnpFu/xG7K2Dteg35yDIOFTpLVUxaOIiPvHn8igbVh6b3RkaAce3pj?=
 =?us-ascii?Q?smqE1Wqxf2tIRgW9nIaf4KXobCkTBABNZYSVZjqGkopguWiR+ua18UoYrBSv?=
 =?us-ascii?Q?ad9gmKLaYKqFrxKyBWxzDLCEZrw9Rp/cWtAUVMlk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a34681b0-e1f7-48bd-ad07-08dc8ef517d6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 17:44:09.9808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a3ICXrtsNRQwe0jh9qYIUCXtWfcm74WuKYTjmMcmym4mN/M3j0ZiXKrmrS1poJZ2nXVd472oVS7LKssyTIqxbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6134
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

On Mon, Jun 17, 2024 at 08:03:56PM +0300, Imre Deak wrote:
> Use the suspend encoders helper which is also used by the i915 driver.
> This fixes an issue in the xe driver where the encoder
> suspend_complete() hook is not called and was an overlook when this hook
> was added in

I believe it is okay to stay in the same line and then break the commit
subject in the middle for the next line...

> 
> Commit b61fad5f7e5d ("drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held")
> 

I wonder if we should have a fixes, but probably okay to skip it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> for i915, but not added to the xe driver (which was still in a separate
> source tree at the above point).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 18 ++----------------
>  1 file changed, 2 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 78cccbe289475..8b83dcff72e17 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -23,6 +23,7 @@
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
>  #include "intel_dp.h"
> +#include "intel_encoder.h"
>  #include "intel_fbdev.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> @@ -270,21 +271,6 @@ void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
>  		gen11_de_irq_postinstall(xe);
>  }
>  
> -static void intel_suspend_encoders(struct xe_device *xe)
> -{
> -	struct drm_device *dev = &xe->drm;
> -	struct intel_encoder *encoder;
> -
> -	if (has_display(xe))
> -		return;
> -
> -	drm_modeset_lock_all(dev);
> -	for_each_intel_encoder(dev, encoder)
> -		if (encoder->suspend)
> -			encoder->suspend(encoder);
> -	drm_modeset_unlock_all(dev);
> -}
> -
>  static bool suspend_to_idle(void)
>  {
>  #if IS_ENABLED(CONFIG_ACPI_SLEEP)
> @@ -315,7 +301,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  
>  	intel_hpd_cancel_work(xe);
>  
> -	intel_suspend_encoders(xe);
> +	intel_encoder_suspend_all(&xe->display);
>  
>  	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
>  
> -- 
> 2.43.3
> 
