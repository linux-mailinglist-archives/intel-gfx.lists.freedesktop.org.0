Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5A1A4A226
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 19:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A501E10E332;
	Fri, 28 Feb 2025 18:51:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="go3jlPr8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2D410E331;
 Fri, 28 Feb 2025 18:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740768693; x=1772304693;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=8ZdqGXvjBc+j6yrbYSwoRL9hDA4NqcrSy/G5o8zL52g=;
 b=go3jlPr8Xh7Y1Pr5Ivl36vDN+NMa5AtW77J340wfzYbLf+JkG86PhfdM
 ZbzyKfJ8dSxjNVHtX8v/Sr2yW6u/N339XFmk8WLUJab7YJ6I1SCsCCSqs
 eDCnk01dxmnm4EahnYAuWJ+7nDOE8M4L17NUGj/CHTz0e+Bodc/LjA/kF
 wKoSpwbBb48l5CzzozL1E7EgAe/P5DuLKYQMMcgq+ljAwlgFwHaUoTHlt
 KBevIDBwpgwyajpQgSjfgHGi5JaAfxs14nCZASIg/UOLZQqx5DnbXfTQ+
 gFZK8q4inQ4hTWOdlIZekE/7lNMfCbrzhHmxbHYfnNiqty+hWCNmDY3qW A==;
X-CSE-ConnectionGUID: ikeAs9jVTLuOnaV2j7Grww==
X-CSE-MsgGUID: qSHgT3mhTae6KEameAspOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="67083609"
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="67083609"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 10:51:32 -0800
X-CSE-ConnectionGUID: 9FuU7+reQQG5q8s2PlIhBA==
X-CSE-MsgGUID: s9sEERBORvWvRMhL1dvr2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="117206033"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2025 10:51:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 28 Feb 2025 10:51:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 10:51:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 10:51:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nbrH17RD4lZeCrC3eMRELLjj2/Yt1TvauXUVOMJXe0MUbqsob9x2darI34IbtDIU4j2nTU8DcJRwrQegF52sqFmZcLx/Cnc9/vOhFQjcQjGY2NXRbWmzutb+Ba7RnSNUMbh17W6Qvdp9eA+YkRQmbO/spA4ZoTmXYd6OFCTDgqDuBgvr0/grbex3Z2lI6IZQtceTqsNKJBYvompHGABNymf7M+O+iA5NiR+L2znCtmtuokDP3Kitsq9nmElaktQze8R314FbF3KKWvmGOSsyX7ZnSuhQugGkx+zXQwa4cqP7A3OuQehfsrPAyflB76lkgOar8K3OzKY62vuyQPtkYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VOsaaanyELtlJJzBu20wnvuqWNwLi5jTzRdicUo2gIA=;
 b=N8II+jnb/PXsGm8tmLTNXHhlIMWhgHc9c1wmtkBv5hiJlLJL1k9FhCCrUJu2w+H0J5KWGpKSrnetn5qgwaBAm4z0jFcfs47xuv9ftFvV9dZKQs+KNGoS5sOWmH0tLv/08LiT8YEI4K9d4q9pLBxU5t+nWgNPI0w7A1+O4B4F/BBpAz1j/rYkwq1rI37JuTczPahIJFY8U8nckWc+XI7zeCiwJ09A9bvgIDEF7K4WhFIVm6aeZkEyZ3dcEOY8UrK8nHWQLiRs6ZXfBu+M7eL6yhloiWHw2Ia3sUawH/sIxdSNWkWZtlIYVD/USL3BOZXg4qZvdXJ2hDsOua9P6gdZQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SA2PR11MB4955.namprd11.prod.outlook.com (2603:10b6:806:fa::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.23; Fri, 28 Feb
 2025 18:51:28 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 18:51:28 +0000
Date: Fri, 28 Feb 2025 13:51:25 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: split out i915_gtt_view_types.h from
 i915_vma_types.h
Message-ID: <Z8IFrdDADxlAWDVa@intel.com>
References: <cover.1740412806.git.jani.nikula@intel.com>
 <bb31885c32dbddad76d634c6fdb98a73b546b42e.1740412806.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb31885c32dbddad76d634c6fdb98a73b546b42e.1740412806.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0046.namprd16.prod.outlook.com
 (2603:10b6:907:1::23) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SA2PR11MB4955:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f3b741e-47a7-41be-fd06-08dd5828e8bd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?OJYPgv+N8l6PBfSDBGaTjyJNSXJZMPJXmWSlj38ua3IGQ3uJDR1LYTHbTG?=
 =?iso-8859-1?Q?V2BFEWxpPQYEj2qsU+9p9r5lEvhPgKKmDazGQ3kvjE/vY3SU5tGb6HA9Zl?=
 =?iso-8859-1?Q?aQ8HG3+D3Ak30fNP5niD7LMW5Ajz71dp7tLt98sWQ/fEFM0w0oqw9TPuxP?=
 =?iso-8859-1?Q?pgdiyCxzgPGLDUYnRj8Y+o6h4KzsZJSmajX63RNFqyPh+bVyuHEHMaBNlk?=
 =?iso-8859-1?Q?e/telCv9oVENycRJ+DdHtNa2yieD3FSj0eqYsEjrfbD8nk+6ghjtBDqOFI?=
 =?iso-8859-1?Q?82bQMKe7gL0cfdViFU0dIdjCbP0/Yr/8ECp/lKNpP69rYg/gyHcTuwjgv0?=
 =?iso-8859-1?Q?tWBmEXz5zZUUZhHE1VenpM3UbCx816iS+9JEhCkKXd2E3v8VASNbATd4YA?=
 =?iso-8859-1?Q?pGZnNC6FLWuMyFTSXw+OZErGxnUvQxgGaXgrxR9hV/ct+AnCIF7I2dL/0r?=
 =?iso-8859-1?Q?ee3bqcuKClk9mhcqfjQrvqP0SyUX/oDc27vnrdaVR1Eid38PS9MgC4UyZD?=
 =?iso-8859-1?Q?JfK9GLJ360CG9jEaaTfSWhDzdTDRu0AN4slnig+uUWxwXu150muGNj0R3x?=
 =?iso-8859-1?Q?La//SCr8/lPOqdEymBwJLDQvTgLde+JEXK8vpG6MioUm2i/bRMDxN2zVXY?=
 =?iso-8859-1?Q?WxCUb6Ev+BQHLMIb2WVlHUIaYrtAa76SrC4tDHZ5Ck4bRxUhjFnx8kFjcp?=
 =?iso-8859-1?Q?dnVLyjGNs5x1M8I8zMfOnzJPQ2WU2ecaUsxU58sg4N515fcVa5jfaakPcn?=
 =?iso-8859-1?Q?19eX3X/37HmDuPv4snsQ05tT0IUuvc0MkSzk6Q9OVnzmncvkqgrJpikmOZ?=
 =?iso-8859-1?Q?joAjfuWVdO0N85IyjdqVrjE/gRTVpP9FyPhNXl2SzKnRG9QAL1chW4ZnX+?=
 =?iso-8859-1?Q?xButu23H7SBQzJVvKLUoxQ5uQuv6+H4k5WRV5lL+zgZ+iy0qX66seueYOg?=
 =?iso-8859-1?Q?BkFb2QHVyV1noHBK6fpARf6cspe3J5JrtUwUvLaln1iLKWV0Y6dKaUvK2a?=
 =?iso-8859-1?Q?A2uKG32pp7rZtQzkshKd97bLlSgywr3+ruhkrIqo/Len2mcN4iLilmZ/L/?=
 =?iso-8859-1?Q?ALtoozqfZEYt5Gst6iBIG53Txh5Q4k1R8Jprv9x6Zn+mayplo8ZcDtgvjv?=
 =?iso-8859-1?Q?/03uYNpCriBPL9oFq6y4P0RY76I2Frfa2BYVzMOQ0dtKsNPZz2JHHx/orQ?=
 =?iso-8859-1?Q?lJxngEr51VwzGSgbNoiDdshjTqLer49exOolxsIp24+1nY8/RoJf7mhJqt?=
 =?iso-8859-1?Q?r6cBMJF3SlqNmcNW1eAHrCh/+a1sZxyXlapSBaqzDoLTTLqKAu5F8SXB6X?=
 =?iso-8859-1?Q?Uj7N9b+Z5hoKklbBQQiH1kDfFJcmEyVqqWm2vBayDPHVsViE9O1brou4ES?=
 =?iso-8859-1?Q?qVmtaWHOaN4DttsIf0AwJiqdWmFBKnHLtCR27TrH3KIU6wotEXuuahEgMH?=
 =?iso-8859-1?Q?PtFjpihuw6oOQgvf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Ai0UgOmdTjm8HxlQV7QmQE1kNEUTRNQF0BXDCcUS8wufei6E1axH98NKRo?=
 =?iso-8859-1?Q?S2J4plAz/dRa0I3Dwi/TB5S5sCWOCZAzH4OZrE5tR43t0y+Ol0gMA7AfyM?=
 =?iso-8859-1?Q?aH31ADbHTgui0ZxwPo0Rrv34okplYNH9OOdEV4XjtBNV3uD2KYEiq4og1r?=
 =?iso-8859-1?Q?MRnuYWOBc1PGssKR8RXtXxvvILC/PbxCQgDdPnwJImTuY4FDTwQ3U/FMeP?=
 =?iso-8859-1?Q?/fK2TU5VKJUA1TjfwPwZdV6bRzivGyjxjvDlzJY68Xl0vICHC2NUPL6QJA?=
 =?iso-8859-1?Q?DHv1F9FZ0pG5uhLWntoo5lsXYbgyJntr6B14AM0DLQqR9EMag9OwfOzE1a?=
 =?iso-8859-1?Q?PtfRTSZj6S/m2n+babIwPQUieyEwcY240BtrfeYN5J9PsGSSdH0071u23p?=
 =?iso-8859-1?Q?SUnon4B+Q6SBzKqJjIBrJ2oPbDB+VQIa0WnY89Lvvz7J3FLVb83UzgAD+7?=
 =?iso-8859-1?Q?UEgIhRXFE5U0yy2bSsGDILFr5kEQfQFi1pSZJJROA+90MDMbeJUdBxrPB3?=
 =?iso-8859-1?Q?WCSd645iRXSV4S7aH6uI6goGAzG9urWHuGOjpN7nTGfwhmygAK6ODzIPai?=
 =?iso-8859-1?Q?8+syXdlXHCQSjnNqtmPDQZdProPoQJJNaaJdDQWocOoHQ/Tdp7w3SaefG/?=
 =?iso-8859-1?Q?faVS0PIEOX7ChNjY9LmBYZ6Q1HyhLLvvzeT4Jktq9pkLnud5j+rrCOIJar?=
 =?iso-8859-1?Q?I/vJqd8miu8YNcdhGgaju43QHyAAjFuib8dn+gePu4pBMzM7VqcjpfJvt6?=
 =?iso-8859-1?Q?zGQCwA87SE1nS/T3Ou7XDa5oFOE9A2DOmKtV8oH5K3gz1tzM1vgnXKMZLT?=
 =?iso-8859-1?Q?6+Cb0k1Av596NFOthjIPVCAn67yYwIO1JZwCmfq0BTKiKyj3sAFOUDECke?=
 =?iso-8859-1?Q?G8FE6Eu13KxLiv/6sriw/Wrvldr9uoNfGiyWTkKkaaa6b9wN1KSkqlm8IE?=
 =?iso-8859-1?Q?CCSEQ3JwFiSIq5bsgKUQ5eBwWHKoVMSIPwphGcsnu8HT7wFciV5hW61vkZ?=
 =?iso-8859-1?Q?WkNWVHA5xfQBQ1sjroHnIiEvOjjWkP6beorEndHe1PDeSFnNKgpSAEpSei?=
 =?iso-8859-1?Q?fyomVCm7HwCOjOX5PvxB0EzsULDYzqGON1WNNJ+KEspKf2Ny97Uzthxknf?=
 =?iso-8859-1?Q?+NGH+Iuujba5TqOr/2EFVkN3DhXCOCZee3NP+JVuPeS3S+PXmpdFVTXqtP?=
 =?iso-8859-1?Q?hVf/uDhwY1buidyxO7IS2s9+i8rde+o8UZpzcawYcxBlyikJzMfZnz0NZ+?=
 =?iso-8859-1?Q?B51pEQIZAaNWKBUFZBuIIEmlHSAH5gGq0bX1/18PUuy3hEroag0qG1Fhtb?=
 =?iso-8859-1?Q?HgE/ApfTMb+EEmBVs9/3YuzlN6k3BH55d1iI0tKoejLLA5DZYCIqnlj12/?=
 =?iso-8859-1?Q?47hmXdr5Dwk9eGEXNmTALMc0LaTv+n20G3O3nELSXgTurYE53/tZEXyHDY?=
 =?iso-8859-1?Q?jvYCcXKQUb0WGBABRjUMWgbjXkPvvJxYLqiGg+HoXFdBJHLhhg1dZCytIa?=
 =?iso-8859-1?Q?wdwc1Ml5lzDOJWFS5ZkI7iyuHfO73Mung68gdABFI4IqUz2OlG2eO/hD2Y?=
 =?iso-8859-1?Q?85DTnMwxMhFKfO7NUc2aqO6tm4WX5UYu/5adcNZL02HWsJIIvzPyfjWqxz?=
 =?iso-8859-1?Q?yBgwLbg98a+KpliRR1IQmuBT9PeOHeXMPQGnfj6oguEwiis/tuD+J74w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f3b741e-47a7-41be-fd06-08dd5828e8bd
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 18:51:28.6184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gSUjAAHE7FaCXgWUgm7zc7zKHKvYv7w1/fIrNWhMT4tnTPETsDHVcJkmdiUBWCNxP0bEbGT/JSJcJ9Yzlwx6LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4955
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

On Mon, Feb 24, 2025 at 06:00:49PM +0200, Jani Nikula wrote:
> In the interest of limiting the display dependencies on i915 core
> headers, split out i915_gtt_view_types.h from i915_vma_types.h, and only
> include the new header from intel_display_types.h.
> 
> Reuse the new header from xe compat code too, failing build if partial
> view is used in display code.
> 
> Side note: Why would we ever have set enum i915_gtt_view_type values to
> size of each type?! What an insane hack.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  drivers/gpu/drm/i915/i915_gtt_view_types.h    | 59 +++++++++++++++
>  drivers/gpu/drm/i915/i915_vma_types.h         | 52 +------------
>  .../compat-i915-headers/i915_gtt_view_types.h |  7 ++
>  .../xe/compat-i915-headers/i915_vma_types.h   | 74 -------------------
>  5 files changed, 69 insertions(+), 125 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_gtt_view_types.h
>  create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 12723ba13eb6..a856cbcf102f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -42,7 +42,7 @@
>  #include <drm/intel/i915_hdcp_interface.h>
>  #include <uapi/drm/i915_drm.h>
>  
> -#include "i915_vma_types.h"
> +#include "i915_gtt_view_types.h"
>  #include "intel_bios.h"
>  #include "intel_display.h"
>  #include "intel_display_conversion.h"
> diff --git a/drivers/gpu/drm/i915/i915_gtt_view_types.h b/drivers/gpu/drm/i915/i915_gtt_view_types.h
> new file mode 100644
> index 000000000000..c084f67bc880
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_gtt_view_types.h
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __I915_GTT_VIEW_TYPES_H__
> +#define __I915_GTT_VIEW_TYPES_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_remapped_plane_info {
> +	/* in gtt pages */
> +	u32 offset:31;
> +	u32 linear:1;
> +	union {
> +		/* in gtt pages for !linear */
> +		struct {
> +			u16 width;
> +			u16 height;
> +			u16 src_stride;
> +			u16 dst_stride;
> +		};
> +
> +		/* in gtt pages for linear */
> +		u32 size;
> +	};
> +} __packed;
> +
> +struct intel_rotation_info {
> +	struct intel_remapped_plane_info plane[2];
> +} __packed;
> +
> +struct intel_partial_info {
> +	u64 offset;
> +	unsigned int size;
> +} __packed;
> +
> +struct intel_remapped_info {
> +	struct intel_remapped_plane_info plane[4];
> +	/* in gtt pages */
> +	u32 plane_alignment;
> +} __packed;
> +
> +enum i915_gtt_view_type {
> +	I915_GTT_VIEW_NORMAL = 0,
> +	I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
> +	I915_GTT_VIEW_PARTIAL = sizeof(struct intel_partial_info),
> +	I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
> +};
> +
> +struct i915_gtt_view {
> +	enum i915_gtt_view_type type;
> +	union {
> +		/* Members need to contain no holes/padding */
> +		struct intel_partial_info partial;
> +		struct intel_rotation_info rotated;
> +		struct intel_remapped_info remapped;
> +	};
> +};
> +
> +#endif /* __I915_GTT_VIEW_TYPES_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
> index 559de74d0b11..a499a3bea874 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -32,6 +32,8 @@
>  
>  #include "gem/i915_gem_object_types.h"
>  
> +#include "i915_gtt_view_types.h"
> +
>  /**
>   * DOC: Global GTT views
>   *
> @@ -95,46 +97,6 @@
>  
>  struct i915_vma_resource;
>  
> -struct intel_remapped_plane_info {
> -	/* in gtt pages */
> -	u32 offset:31;
> -	u32 linear:1;
> -	union {
> -		/* in gtt pages for !linear */
> -		struct {
> -			u16 width;
> -			u16 height;
> -			u16 src_stride;
> -			u16 dst_stride;
> -		};
> -
> -		/* in gtt pages for linear */
> -		u32 size;
> -	};
> -} __packed;
> -
> -struct intel_remapped_info {
> -	struct intel_remapped_plane_info plane[4];
> -	/* in gtt pages */
> -	u32 plane_alignment;
> -} __packed;
> -
> -struct intel_rotation_info {
> -	struct intel_remapped_plane_info plane[2];
> -} __packed;
> -
> -struct intel_partial_info {
> -	u64 offset;
> -	unsigned int size;
> -} __packed;
> -
> -enum i915_gtt_view_type {
> -	I915_GTT_VIEW_NORMAL = 0,
> -	I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
> -	I915_GTT_VIEW_PARTIAL = sizeof(struct intel_partial_info),
> -	I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
> -};
> -
>  static inline void assert_i915_gem_gtt_types(void)
>  {
>  	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 2 * sizeof(u32) + 8 * sizeof(u16));
> @@ -160,16 +122,6 @@ static inline void assert_i915_gem_gtt_types(void)
>  	}
>  }
>  
> -struct i915_gtt_view {
> -	enum i915_gtt_view_type type;
> -	union {
> -		/* Members need to contain no holes/padding */
> -		struct intel_partial_info partial;
> -		struct intel_rotation_info rotated;
> -		struct intel_remapped_info remapped;
> -	};
> -};
> -
>  /**
>   * DOC: Virtual Memory Address
>   *
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
> new file mode 100644
> index 000000000000..b261910cd6f9
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_gtt_view_types.h
> @@ -0,0 +1,7 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#include "../../i915/i915_gtt_view_types.h"
> +
> +/* Partial view not supported in xe, fail build if used. */
> +#define I915_GTT_VIEW_PARTIAL

it's unfortunate we cannot get rid of this as well, but just by the below
clean up it is already worth

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h
> deleted file mode 100644
> index e7aaf50f5485..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_vma_types.h
> +++ /dev/null
> @@ -1,74 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -
> -#include <linux/types.h>
> -#include <linux/build_bug.h>
> -
> -/* XX: Figure out how to handle this vma mapping in xe */
> -struct intel_remapped_plane_info {
> -	/* in gtt pages */
> -	u32 offset:31;
> -	u32 linear:1;
> -	union {
> -		/* in gtt pages for !linear */
> -		struct {
> -			u16 width;
> -			u16 height;
> -			u16 src_stride;
> -			u16 dst_stride;
> -		};
> -
> -		/* in gtt pages for linear */
> -		u32 size;
> -	};
> -} __packed;
> -
> -struct intel_remapped_info {
> -	struct intel_remapped_plane_info plane[4];
> -	/* in gtt pages */
> -	u32 plane_alignment;
> -} __packed;
> -
> -struct intel_rotation_info {
> -	struct intel_remapped_plane_info plane[2];
> -} __packed;
> -
> -enum i915_gtt_view_type {
> -	I915_GTT_VIEW_NORMAL = 0,
> -	I915_GTT_VIEW_ROTATED = sizeof(struct intel_rotation_info),
> -	I915_GTT_VIEW_REMAPPED = sizeof(struct intel_remapped_info),
> -};
> -
> -static inline void assert_i915_gem_gtt_types(void)
> -{
> -	BUILD_BUG_ON(sizeof(struct intel_rotation_info) != 2 * sizeof(u32) + 8 * sizeof(u16));
> -	BUILD_BUG_ON(sizeof(struct intel_remapped_info) != 5 * sizeof(u32) + 16 * sizeof(u16));
> -
> -	/* Check that rotation/remapped shares offsets for simplicity */
> -	BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=
> -		     offsetof(struct intel_rotation_info, plane[0]));
> -	BUILD_BUG_ON(offsetofend(struct intel_remapped_info, plane[1]) !=
> -		     offsetofend(struct intel_rotation_info, plane[1]));
> -
> -	/* As we encode the size of each branch inside the union into its type,
> -	 * we have to be careful that each branch has a unique size.
> -	 */
> -	switch ((enum i915_gtt_view_type)0) {
> -	case I915_GTT_VIEW_NORMAL:
> -	case I915_GTT_VIEW_ROTATED:
> -	case I915_GTT_VIEW_REMAPPED:
> -		/* gcc complains if these are identical cases */
> -		break;
> -	}
> -}
> -
> -struct i915_gtt_view {
> -	enum i915_gtt_view_type type;
> -	union {
> -		/* Members need to contain no holes/padding */
> -		struct intel_rotation_info rotated;
> -		struct intel_remapped_info remapped;
> -	};
> -};
> -- 
> 2.39.5
> 
