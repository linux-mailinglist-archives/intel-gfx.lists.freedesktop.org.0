Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DB9A49F93
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 17:58:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD3CB10E09E;
	Fri, 28 Feb 2025 16:58:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PL2BoRdr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E14410ED0B;
 Fri, 28 Feb 2025 16:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740761912; x=1772297912;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u/+zBewvczafcAMaE5FygOF1NhgpiPcGS79JSvrRo+0=;
 b=PL2BoRdr+jYLkE6VzY4EEsJi9iKBgJriv1C0O3NlEW59DRiexOtAcO7x
 2WtyX5uwd4VrKhwaJGrhNwy5ddoQqxGM6m9WSSwKIzGFQ5AqD5TMhmSzv
 l+InyseIoy8IQ4gxULPrdf5C6xy+cZJaUhuUdKsAUVI/9EcjRv8jBRAtE
 AHh3YUPCcSMVNM/oe4EAEMb2xKi4SX0HUzF3mCQpnTPfIqtUFrfl8/Alu
 C2xASCKOP6Sq8v+TWFyG+f8FiApGpYEnDfuPNNaRH+3nDTwgPys7iONth
 VuZ2extUGt43Iwr/jRgBttQWmIQcDHKVBVjSzFdk0rKQ5v68NvcBrULzV w==;
X-CSE-ConnectionGUID: Ev1aeuhFRoeJ+1U3loKfLg==
X-CSE-MsgGUID: 8uDTvvTHS6GTCuZQl4Am8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="45477878"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="45477878"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 08:58:32 -0800
X-CSE-ConnectionGUID: 2HO0L/r7Qjab6LfxT7gBWQ==
X-CSE-MsgGUID: AsPbrW93TkW0X7Pb9SOvpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="117181372"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2025 08:58:31 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Feb 2025 08:58:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 08:58:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 08:58:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q7UJELNISnJQaYzDQvmkE+NrnzCDwoaRl9L5uhO15Q8MdKjtXznDPMHtN51lOCEke0XGyyOZuHbwhgNh1edWolhvGQKf+onr0dLbP/7A2ieiTSvjWRrXEJVUdrLG1i9Fv0xKtXvOcxS7UCls0FAqT7+3BJQWfjYrB51r/Vt4Ib8YQo8kes2+ZUzapvuqFZvxGHr8oVv+PE9t5uhEIOS1QV0g/uoH2whh6ZqRorByNuWGtARuEa7FQRPA71PF5NWyzHZSnuWO3MDc419Fib3OuhudZMLS1f5hosppErCciYifNCxw0miyFS5XvsvwOedd6Xdc2fFT1pmYV8OFrCKFfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=55kUHYVJMCR5sfsJeQMNbVx+8rXyH09P6SmzLmhulVM=;
 b=Wr8VgjjwreTXgHwr5urbeyxo6zlZrs0+EgKqgyVVYFhbEAVoozd9NM4lQkewLoKOkgIsqRMun/6HWXKXuW3NSuBASU4GvcpuUjrfPvI4B/bLd0PC53l+FzqrjdsCw5y8Sq8ItescD3UP4y07ECnPVD8dwDeQky663HcL0E4yyJ8wyHBQWrrT/xHSdJRSuM+PTM0Cpdo5im47PcOu2dHXFjCanr99LjXY4pSB1iagr3O9XgD1vONSgvH8shYRWfB1geQY8vm/xrinz3tXudgggHy9WdSuBsqES6Yh9q3u2ggFJHjmp+sCLlLx6EWDd5RjLbRs0eSa/sqvtC0sPLEEcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Fri, 28 Feb
 2025 16:58:28 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 16:58:28 +0000
Date: Fri, 28 Feb 2025 11:58:24 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: relocate intel_plane_ggtt_offset() to
 intel_atomic_plane.c
Message-ID: <Z8HrMIbWmP91xlsY@intel.com>
References: <cover.1740412806.git.jani.nikula@intel.com>
 <70ac6d19518f355abf37ac8c4b0f1d18878be28c.1740412806.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <70ac6d19518f355abf37ac8c4b0f1d18878be28c.1740412806.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0063.namprd03.prod.outlook.com
 (2603:10b6:303:b6::8) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|DS0PR11MB8665:EE_
X-MS-Office365-Filtering-Correlation-Id: 80759791-fa08-40a9-97f4-08dd58191ef3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?RxqWOg/ZXZQj9HlwsiKXmf87nJxQiNSTXGNYAM4OTTcIPWkcp//p2scSls?=
 =?iso-8859-1?Q?u3a/T8qC9jaezksXg54UUEYti7mmx2pYA6fAlldjnOwAlKyb9fU6kgsWE7?=
 =?iso-8859-1?Q?CGCRxUm7E36UUGB533Jgoq9OfaZr8rHhEiuP93XrVKJYO4wDNN2EHzI/V7?=
 =?iso-8859-1?Q?8D55GN/G95m1rZsUTuVwgRpvzMb5FW+8KvQpi4+cIq8OK9RMOYXELnkRmg?=
 =?iso-8859-1?Q?yWISWASNe2xWv2/4cNPBpk3h6mR93pdfy9VkhSLh9CLtYMkmMQSVglpcB+?=
 =?iso-8859-1?Q?BlTEES1qzFCDlv+j6tHLLprURc8z/8t6NEcI5doIldwbbz3U4O9MA4AcIy?=
 =?iso-8859-1?Q?p0LTv1o5sLnHQHVCvyb2eH4O4n6GQ9PkF3WuYmklm2CcQiMhfZyZ+o5hMt?=
 =?iso-8859-1?Q?a7cz5STore3JPM4sPFmdyk82269cM3OhrCwF+2V8P+GPj5LF2Fkq09ZpOy?=
 =?iso-8859-1?Q?okeNR3EyYX9TtNkIjh7DwysE5dn8Q7PwA5/7kOc2/38SOtw/qQ6+4dE3Sp?=
 =?iso-8859-1?Q?DlaG219gy3mQmXT5xUAOuD4933H0hnG5sACtBWo3FPD9GUsnekNhoBCAFT?=
 =?iso-8859-1?Q?YyGwaTLMXIjSb5FVa5abgzyo3Uy6QahL+Qq04sl7CsF4xBXgdVxT5ffUeq?=
 =?iso-8859-1?Q?CSpetsHghH0ZPw2QY2O/mSMI08dCDJ5DNftloZbVYYC6SXLaZa5hLNnrJc?=
 =?iso-8859-1?Q?qXwoi0LY4qUQyaG2/tBLnP9Y+0JVa3ogacNmc3PCtQatr3YW+tJlxOF3mk?=
 =?iso-8859-1?Q?vk5GTlAd5qxRk8ylhZ7K8IOL30Y3ozb9NSDgrpyo8JwwH+V7pWZhlGEtY1?=
 =?iso-8859-1?Q?gIeTZ8TN/OeXZeBZMYwP8AG9Dj452weMiichAAioenOjPkCUQ3U0XLh9+l?=
 =?iso-8859-1?Q?JfOHqV8NurZc1OpjYFalMIVxJzE0ggmScV/cIpdqng+CIlD3VAF7Aclbue?=
 =?iso-8859-1?Q?ZxW0Hrxjck8hyI34oU1v7vwedW/o6x8nkQPNkm6S/PcF3nHF6NHAmpJkzV?=
 =?iso-8859-1?Q?RPSOfnvRr+SeL7W249EggjjRZTIf6S2aKHgT19eRyH6hoMWYZ5z+pF4OPd?=
 =?iso-8859-1?Q?ZmvHAV26sQyYy++Dlkevn4Ic0BHSSmtAmytZLw08LPtAiDexmVBOHAGQV2?=
 =?iso-8859-1?Q?8GmljzeHL+ovMBr7MqWxggGMnF/oK+QgZVozs5owRFRurcmxWalwmOjOIe?=
 =?iso-8859-1?Q?L+/wJjzLeAiipXdjxN1tya0vuPt2C90XHwFsUAZPPCrk7lv7/aqYNnjVAd?=
 =?iso-8859-1?Q?fXQJxDbe9uycJhrGwtJAhQ3JqHDE22CWIVkaJsudobPrYhBlQlDrZdZfLm?=
 =?iso-8859-1?Q?doLu6f6VPdJcGsQcOfOR4ROitU11Ms/0taUEKidUYpw9flBHjBRtRi25OG?=
 =?iso-8859-1?Q?eVO5Szyz4xm3CTSOYwA+mQKHn3S8nA/PEDsLEVnxRujeJI79TYhqMypuek?=
 =?iso-8859-1?Q?kqXL78qM/nc+XAxk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?22w0vRCkst1CsEqFjnz45jb8lg5uYJkP1pJfzncrg5EO0vbpAncRdywRYt?=
 =?iso-8859-1?Q?xJTQWr0ILx9FPbTA5iFX7w4MT1CyHLB0Wm4kWOcicKQoHE7jOP/o13on1m?=
 =?iso-8859-1?Q?uXnS5Pky2nvMfPqr2TetqS64lFTgmEbyiMIVgGc82bv8ariBycJDKFEBFJ?=
 =?iso-8859-1?Q?860YTNvf/t4P4GKhvHWHeTIL8ejGCWlpd0qwPxyNOhd/IxZhrf5izssTTU?=
 =?iso-8859-1?Q?0/UFBOVTd8GyLXTIjl9VG3sS+61r46AKs0f+fKYwd9tr8+Q5w0C3UFwrFj?=
 =?iso-8859-1?Q?R2yFXufiWVj1TTxuxJ0Zt5nVMI/VwaBYKPzyDBxH3x77oPjxsyjpXfGojP?=
 =?iso-8859-1?Q?HvL4XqS6HFEjiz1fmMt6qqtp0G+ew+lpZCGIBDkam7s9gyHQ/mGeFcqjdH?=
 =?iso-8859-1?Q?uDR5IeDtSKOeFscEJ02WAMlwCGiIefFN0z9sSwgoiXxM4I71vm5k9XAGET?=
 =?iso-8859-1?Q?BLdR6dilLT42S1UVCLVMaxR6TrMg8bSBjK18oAtyf/9Hkzh4+hhDabp9f6?=
 =?iso-8859-1?Q?MW7mqdpIcrvJUZYEzM3zJRPbluzJcAFloU+MoBiFT9r6el3+yMml4hIKII?=
 =?iso-8859-1?Q?pu02UnrEB2feWrMg8KD3TYjQeugULsubPWluhWjaOMpTQQ1j/tXoJ+hBSB?=
 =?iso-8859-1?Q?KbmU2lUrBqE1gOTgBqMpVfNQnvSw//Zzp1rCZjREdrW/W8H1yf3x1rd+EK?=
 =?iso-8859-1?Q?hNKHzfuTpS4lrqBsbfWH5d+iqVLx+v+kLVu7unc8T4sS6Qy50QmKGSuQDk?=
 =?iso-8859-1?Q?nWlH4XQP2VhM574j6RssSF/9xJHJMdhbYo9bW825XkQCStwxJ5i3lmVIBx?=
 =?iso-8859-1?Q?pDDpqNSxdMrVMQlp0aoi4PZSVDyIykIxTYPzd+RPLw4XD6KHPajXgrrMKL?=
 =?iso-8859-1?Q?O2lQZdLhek9d6IWsImdvMi0DR+2HovFOKCRKMV6YDmyUlYJf8ievIjh//n?=
 =?iso-8859-1?Q?GC5hPym+TyOEE2OJipVg4AShx5TeQGrum331rsc4VSdvngUOwU1a6YRLIY?=
 =?iso-8859-1?Q?biOqkmWp0OukjriijbT/1csG6sjKLHnBhkH4grH1x2PhjxRvL7dn7WzKql?=
 =?iso-8859-1?Q?PvfSsXuhW9HQVfyBH1ggpGNSGRIRpCWRozSpoPjYHW8EomaloUsD5xO7+b?=
 =?iso-8859-1?Q?OuYtQQ/c3UTv3fLm+p07THlva/S9f+FupDQd85YOSRsh+Fjk19ue+SjpMI?=
 =?iso-8859-1?Q?1lfTff5BIGR4NsOgQl+7cwfMMAeoFVGrmnhpP/9LWhiS8Q9zQ03l/eael6?=
 =?iso-8859-1?Q?PEl4on9uDa3Xt+tMrXWa5Y6IWb6CoAfk9tH1SEtJfYYC802yRkJ1D6pR3t?=
 =?iso-8859-1?Q?MJuY/iEfaWTXdoQft1h59wHSbVjvLLR9sMzYjw5bs6JWcU01dc386kmj5l?=
 =?iso-8859-1?Q?bPsaaTcV6Bd/8WvKNv858aTJFrfvuQztKurOH+KwZiPNlXJCm6a2jlEkZX?=
 =?iso-8859-1?Q?L4WSiG1cFESE+ew4IAfQs64SLRB6OnX9nQ1dTZYqeH9kaRqt0U3NUJq3XC?=
 =?iso-8859-1?Q?pWuLAku4qr046/pZ0ZXo9N2uYYpcQqOfD2skvLCeDkXjEhyjzTjEoHaYcn?=
 =?iso-8859-1?Q?Qi0R4P1zGjsaohiyK0hqwdmTivjdqyVlUhDjppYONs0ZkjH8rMmUS09DdY?=
 =?iso-8859-1?Q?/srntqbdonWPpX7wtcZxqnDvFyc8I0c4kM7OmdtqMeSYIm3ll1jJSY4g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80759791-fa08-40a9-97f4-08dd58191ef3
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 16:58:27.9511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zxESzh1/oXW/SEsCYzdh56DreMliOXRst042pX6sh8NEzswiJyAfeY1dXL1CVilWLIB1WcY7RJ2Nxmcoy2Y4Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8665
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

On Mon, Feb 24, 2025 at 06:00:48PM +0200, Jani Nikula wrote:
> With the primary goal of removing #include "i915_vma.h" from
> intel_display_types.h, move intel_plane_ggtt_offset() to a proper
> function in intel_atomic_plane.c. This reveals tons of implicit
> dependencies all over the place that we pulled in via i915_vma.h. Fix
> the fallout.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_acpi.c              | 2 ++
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c      | 8 +++++++-
>  drivers/gpu/drm/i915/display/intel_atomic_plane.h      | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_types.h     | 7 +------
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c  | 2 ++
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c  | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_test.c           | 2 ++
>  drivers/gpu/drm/i915/display/intel_dp_tunnel.c         | 1 +
>  drivers/gpu/drm/i915/display/intel_fbdev.c             | 2 ++
>  drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 1 +
>  drivers/gpu/drm/i915/display/intel_link_bw.c           | 1 +
>  drivers/gpu/drm/i915/display/intel_panel.c             | 1 +
>  drivers/gpu/drm/i915/display/intel_pfit.c              | 2 ++
>  drivers/gpu/drm/i915/display/intel_quirks.c            | 2 ++
>  drivers/gpu/drm/xe/display/xe_fb_pin.c                 | 1 +
>  16 files changed, 30 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
> index bbf8c5a8fdbd..1addd6288241 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -9,6 +9,8 @@
>  #include <linux/acpi.h>
>  #include <acpi/video.h>
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_utils.h"
>  #include "intel_acpi.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 124cd9ddba0b..f481017cd1cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -40,8 +40,9 @@
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_atomic_helper.h>
>  
> -#include "i915_drv.h"
>  #include "i915_config.h"
> +#include "i915_drv.h"
> +#include "i915_vma.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_cdclk.h"
> @@ -1532,3 +1533,8 @@ int intel_atomic_check_planes(struct intel_atomic_state *state)
>  
>  	return 0;
>  }
> +
> +u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)

I'm now wondering if we should
git mv intel_atomic_plane.c intel_plane.c

anyway, for this patch itself and trusting the compiler a lot:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +{
> +	return i915_ggtt_offset(plane_state->ggtt_vma);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 65edd88d28a9..6efac923dcbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -88,4 +88,6 @@ int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc);
>  int intel_atomic_check_planes(struct intel_atomic_state *state);
>  
> +u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state);
> +
>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 0c8ac1af6db7..e80e1fd611ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2022 Intel Corporation
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "intel_display_core.h"
>  #include "intel_display_power_map.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4440521e3e9e..12723ba13eb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -40,8 +40,8 @@
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank_work.h>
>  #include <drm/intel/i915_hdcp_interface.h>
> +#include <uapi/drm/i915_drm.h>
>  
> -#include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
>  #include "intel_display.h"
> @@ -2100,11 +2100,6 @@ intel_crtc_needs_color_update(const struct intel_crtc_state *crtc_state)
>  		intel_crtc_needs_modeset(crtc_state);
>  }
>  
> -static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
> -{
> -	return i915_ggtt_offset(plane_state->ggtt_vma);
> -}
> -
>  static inline struct intel_frontbuffer *
>  to_intel_frontbuffer(struct drm_framebuffer *fb)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index f53c8355d5be..8173de8aec63 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -34,6 +34,8 @@
>   * for some reason.
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_utils.h"
>  #include "intel_backlight.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 11953b03bb6a..581f1dab618e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -24,6 +24,7 @@
>  #include <linux/debugfs.h>
>  
>  #include <drm/display/drm_dp_helper.h>
> +#include <drm/drm_print.h>
>  
>  #include "i915_utils.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
> index 614b90d6938f..bd61f3c3ec91 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_test.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
> @@ -6,6 +6,8 @@
>  #include <drm/display/drm_dp.h>
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_file.h>
> +#include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
>  #include "i915_reg.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> index 280f302967e3..faa2b7a46699 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <drm/display/drm_dp_tunnel.h>
> +#include <drm/drm_print.h>
>  
>  #include "intel_atomic.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 301b5fd301a2..64fbd2461df3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -43,8 +43,10 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_print.h>
>  
>  #include "i915_drv.h"
> +#include "i915_vma.h"
>  #include "intel_bo.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 26128c610cb4..2e9d0cef9b59 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -59,6 +59,7 @@
>  
>  #include "i915_active.h"
>  #include "i915_drv.h"
> +#include "i915_vma.h"
>  #include "intel_bo.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index f4d60e77aa18..a10cd3992607 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <drm/drm_fixed.h>
> +#include <drm/drm_print.h>
>  
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 4e6c5592c7ae..f5c972880391 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -32,6 +32,7 @@
>  #include <linux/pwm.h>
>  
>  #include <drm/drm_edid.h>
> +#include <drm/drm_print.h>
>  
>  #include "intel_backlight.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 4ee03d9d14ad..dae497221752 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2024 Intel Corporation
>   */
>  
> +#include <drm/drm_print.h>
> +
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index 8b30e9fd936e..a32fae510ed2 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -5,6 +5,8 @@
>  
>  #include <linux/dmi.h>
>  
> +#include <drm/drm_print.h>
> +
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
>  #include "intel_quirks.h"
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 11a6b996d739..b69896baa20c 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -5,6 +5,7 @@
>  
>  #include <drm/ttm/ttm_bo.h>
>  
> +#include "i915_vma.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> -- 
> 2.39.5
> 
