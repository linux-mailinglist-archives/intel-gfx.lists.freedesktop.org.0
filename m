Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D366DA4CF2E
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 00:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7429F893ED;
	Mon,  3 Mar 2025 23:22:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjPIchOc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0C2893ED;
 Mon,  3 Mar 2025 23:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741044148; x=1772580148;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6enMQdnECG+KCq6bEwE/FFDSiQTKMD9cDHra2kqz3Ms=;
 b=HjPIchOc80DZnyBFm61sRQPoEl2FRJxYFmZeZwhEbHrHJdHSrOkOBj6R
 LApxqZOEdzh2Bv8+dlOGYx5+CtWqycG+57ffd4+FP6FrMQCByeGlwCOMD
 4ur1nqV+AQeQMFl3G1SbySYho5GWs2mCBMAyyEE2KRgoFw0n0yAbp6usi
 C8EjRcZY2KTcBA3oG9s02zcQEbCXaDyKyZbNOr4K5TA8c80GyqzR/KjNg
 Lp31SaYGeI+yn8m/c6UiPjuI2NAk6tqFsSCbHr2QwtHXHZKCfBV4aUYz/
 peZexilGY5rRsecg6jF/JGBESFw1V0mh3nb4Z7ZHVxqtnAwEt2pZOP2fl Q==;
X-CSE-ConnectionGUID: VJcEMC1DQSyj5iy8KTzzlQ==
X-CSE-MsgGUID: PKFv1HiITcawvmyfsnGjdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52578893"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="52578893"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 15:22:28 -0800
X-CSE-ConnectionGUID: 7J6QbigyTVKockwkosai6g==
X-CSE-MsgGUID: yTi0np5aThOLWwaoGro9Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="118349120"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 15:22:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 15:22:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 15:22:27 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 15:22:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x2/Sq4OPwanEabeECDTzHDFpgRv6eFcThFGDRP0FkI2GCEt42Gac+Z64EvPLR7a+J7Kwv7oobuWYNG8Gc5tQqImvhuKXG8kK6w3UXnotMANnWMphA0ihKN4jU8KeW+6DSdDAm+rnJNd+xAPtlqMfQpoPry2llWfGklL6WR1kW7AH/J3uZAMByzeZhFT39FRxpwU5g0rSkgn/6pteyvxjLv6Qp7xK4fUShBx+wTKQ3iZvnxuXSNQnQZCnPB+QKUGoQWbgTkrg/099IkGtW6eoQ7ZnpHRw4kwRVrBRysgy952PwpduW9mf5oyP+4yRSzONEFckgCEXJX1jGqXsOvotTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vNC9QlqCCzvfFYbPDvD9cFKq/zDBm/I04exeWuN4pl8=;
 b=kJCeZ6uZxfUw3Za54KqnfH6STH1FbZM99bdFD/UqngNBkH8tyHZlRSgtgd6fmNdNSAaj0vlfozLFBEsJegxUClLoY7GOk4sMOqwgd6cWlgMArzL8H4rKrYDlpXQzbJ/fVJYtx3lsIINpSyFeBScouny0oVGEQV8GVyVRYtRvPne7+IoAxe2rzsrYTPj9kpsLPGXBRif85BK7ZuzM/K+pSsfgFKmi9pTfa17ucOHalc7nJSDJil821QzZ1oA7lsUEsXxzz0VTy5yekmQ1dn0ayM23p5xRBJfOpAG3I5JK46vAI86UpvjfELjCs5yrGwBKKcuoba9JUQ8pSiEI2TGe5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 23:22:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 23:22:25 +0000
Date: Mon, 3 Mar 2025 15:22:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v3 8/8] drm/i915/reset: add modeset_stuck callback to
 intel_display_reset_prepare()
Message-ID: <20250303232223.GQ5109@mdroper-desk1.amr.corp.intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
 <d322e20927326afa47c0df8a4d4776ee77010e6d.1741001054.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d322e20927326afa47c0df8a4d4776ee77010e6d.1741001054.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::42) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB6709:EE_
X-MS-Office365-Filtering-Correlation-Id: 55cd3eb2-992f-49b1-931f-08dd5aaa41e5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?etzPtE0YIylGfOUnSjxyVAJ/vSDgxLbciL8fDltma9Wo8B9pLOo4a95gU/px?=
 =?us-ascii?Q?7U06RdTL+9iWuo+ANmKSn+K8F0DKwCH3wJePrbSW60Co/in8l/RoA7YwOgPP?=
 =?us-ascii?Q?GfYpQie4ulgDFRioJbx7XWl0LwO2fH256UPjUFSrbmXXP5lLQmy/77QWPx04?=
 =?us-ascii?Q?nvDOEEYLId/bqqC23MnWUtUikUTJp9cXTYwBYZeczvIA/ChFOrbc6ZKIUlpd?=
 =?us-ascii?Q?09n229BVRe7xwS31oWim2MTbnleKdXQ9E/f4KF2A1WlAotx5pEuHu49UpD13?=
 =?us-ascii?Q?rmbzrRGTQUEadw0O7+2Ol3GyLDy/FxD0riQ8ngfIDLQYoon1FPH88GaTsw6d?=
 =?us-ascii?Q?FKLxBHU5oaQqauqR3iKzJRTycmS4wLHMZEzNrTf8h2MWPZgJ6uz6n8Dijpo8?=
 =?us-ascii?Q?bZz2SAnXqPV+kcvO+3uGMF1ZkpBa8GpAxAoIqnmL+3Em8aHB/+yPS3N8PhrN?=
 =?us-ascii?Q?ZTt+ejqYnUisgHAxW/G33Eb+1D6wWhAgl4dhczMQlkZ7541kTTSXxrQ7SGYM?=
 =?us-ascii?Q?Ha3IiOjZQz0+rMmYghJjV2KjBqDRZhV0BfjQQ7bS7UxKLq2QO5y9nDpnZCw7?=
 =?us-ascii?Q?EzFkThGkqFNMh37U6Xk9WRKKEryw600Y0d6vlhn/kU55NAqtyLC2g7dyUQPB?=
 =?us-ascii?Q?7XYkDjFgDey0DZKuBkwY6dBwBVUJLZDQGLwHXfiIAW1bWu1gM/59cfnfFOTT?=
 =?us-ascii?Q?rDMSle0KdwuiDA0VKdP7MfU07evqGoYj4cVPr95CbWmEsrwOrPMmTzh0S3Nn?=
 =?us-ascii?Q?JajZe7KiN515pX1S0anD1KgqrrNWtzbj4wc8M2cFkzkvOlIc5SDxlDylELXm?=
 =?us-ascii?Q?xftvwz95j9+NBKENCePTEriJ8Enos0nr4PuzTEz0TMw/aDfQGtsT0drxeFoG?=
 =?us-ascii?Q?FhjQ+EdlfIdm7eDIuqavfX0CzA3Uuo1/zO6N+CdetU4cL6nfQS9iyImPU/vE?=
 =?us-ascii?Q?B4WMpDXt7qhb4k7unyn8ELReu0KYygbRwsyQp27QtJdK3FkmUqVCYcCCkRu8?=
 =?us-ascii?Q?pnyDldFasndnUnszqYCDIczK8mZ7wjNmFG5eCGCBc47wKsQ1SZY9j91M2xpx?=
 =?us-ascii?Q?p+DIqZnaUgEq6KrCpz8l1XkM/BmIDSFYyBq9SvR33coz93YWO5qS+MGiXWYG?=
 =?us-ascii?Q?WYwkSuZgCz9MW/LshpfoUbg1xORkQYomPEuewKoAuudw+jg93QzsOdsUWeaq?=
 =?us-ascii?Q?I1ZvKYnktrGb9L9fslSUkipDT8SxfDuNAmbr78UjP/XShNobZ7NGqZMbnrxW?=
 =?us-ascii?Q?TKxd3huVdjz23aYrb5F2NxshQ9UgXTxHml0CNWp11ZMTBtxxwjKPYpgzRAUW?=
 =?us-ascii?Q?byRaGuFcnEg5SRjnMU+D4ocpVpfrdDdYrXaXicnr2nwHSBtPyYqMcG7J6hFz?=
 =?us-ascii?Q?5jV/lORZs5TfUxvqxMM6vUkNE+/I?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LjMczpdblvT+mrNOiu36tcNqbCL6Hpy0keWajmviYse14nRpncYL64udT7ko?=
 =?us-ascii?Q?6fZI8yI5vJTxD2gdJQyKJkz1kUFX12KaQy9g9LlD1Nc6wFmXC2n4hiANXb8C?=
 =?us-ascii?Q?QU1y/NwGn6MC5fOJvjoDVZsP0Pb/wyWuKCwZ8BvW0sFuE/056R6jcSPBTpvE?=
 =?us-ascii?Q?c/EmEgkLYmOcY+HN16rYM5sOyq719LANzQrIirclmpVtXtTPLhZh9J7OqNwX?=
 =?us-ascii?Q?oDQC3zyG7DusUWcHMZQxnc8FW2qDowjOXeqU9Lu66cp+wGWvcOpiCWeH0Fra?=
 =?us-ascii?Q?UGTjOnnztlQ/WznwVzDJxXGgt5vMb0IU3gx5X0kLmQxL/vaOqC/0JiLKE5k5?=
 =?us-ascii?Q?iP0A0OLEt46aN3V3y1l90aBAQyOhDfh/AMrITMz2WGvbZkvraX7/YldlHWNn?=
 =?us-ascii?Q?vQ37D0oHmTfyxbXiRzxCErMiLMYCWsf6FLjYDjhNSLZfKwxn5Kpjf5DWeDW8?=
 =?us-ascii?Q?qkDLj9ErvbvUj3IF/0RloNbDYyLGJk25Q9f0wcc+D3kIU2kG6ZnSTO7+lLqM?=
 =?us-ascii?Q?4qJCl2lJD4XVIzRbIjS/RovciH5sUE7V8X+QFVkfi0QWEFeFJi2WrniWSxK/?=
 =?us-ascii?Q?oNBK5YsdwkbhiirxEv8l7cHAyyMqkw4AxP72JKKOX2z8wFNFaWH+qxGGcm2A?=
 =?us-ascii?Q?hfysK6x30h/mhFbYVZyihCn2J3eEttCovnrOHYlOsMX/A0BcgDGZ1VJlH5XI?=
 =?us-ascii?Q?gakZQwQOs6g7FQc7+rijvbbz8net+hwhTZnoEOGlTngde9WB0MFqMKmu0zYC?=
 =?us-ascii?Q?cUCTeLGJODsg/qUGbIb3Xz1ipxP5rZDTHW6C+h6vSXB5naGYKJqIzabLjV0S?=
 =?us-ascii?Q?ecaRD7QIQixYgdmqql7WQ8JQeWDvtXVh4eYWSabUvMZw1t6kFAlHgyvuzW2k?=
 =?us-ascii?Q?aUGLKbS9XBeAUy2aRn9O5igApvoO0YfAaTcAQOnOv04mu/iJcCJ0+5Y5Qt8h?=
 =?us-ascii?Q?RdM1Yo0kMNdnyRMP6S2o5iBe1FKQmBI8kVnuIPq59RTqzc/CNQN1X7UzYcla?=
 =?us-ascii?Q?0964N2j/hTgu+9DWA+LylNIQezcyRwQ8+0gkvSs+v1PznwF6XKOs7rVeERPr?=
 =?us-ascii?Q?ZHS0z9fUWfAov0JT/Jfws3+63yY+t6DjFW8B1mX/6MPAUAHS7sVkchS/pqml?=
 =?us-ascii?Q?1jFrElB03BI3tiibZM759ltN1yuBM/WCuErT4tlqvQ+7WuYPvXyaDdQ05GAR?=
 =?us-ascii?Q?b2UynA+OVGl0zi17rHliYVPJ7WITIPhmntdWeySWjKk8i1BgqGdL3IPlBiJK?=
 =?us-ascii?Q?zq1hStmZgkunRf4YBLZqQbEzcfU2zbwlGOBoxSQMec+pko+8V9SoEt/GCIq9?=
 =?us-ascii?Q?5+WeIiX86cXgGS+Dv0oEo+A+N+FJqcBDPKkHTB5+Zw74YxxZEtXGAHpfMBe7?=
 =?us-ascii?Q?VkUMktuyQNdyR34JDBVupJ+Lst1KGs1+O7QXHeGXJmfXmC+7qBLXbwLOGO7+?=
 =?us-ascii?Q?Kk9JPGVnYS+5NBdXHhU5/uc5XMlIM9rEdOSgShmDT6cmCiJoTcbNSNdiK27r?=
 =?us-ascii?Q?ej75qN2kgyMZnJdc1q38Od0InnEzo/KrL8CUPsi1TCOzkjWUsuo083RRa3rc?=
 =?us-ascii?Q?KRF11KKpQfChI9gKe3/CIJyIPHyZnwWMFzjL3PxMsfi6/spMd5cVAHGUr6N7?=
 =?us-ascii?Q?pg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55cd3eb2-992f-49b1-931f-08dd5aaa41e5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 23:22:25.4365 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ujEJBqvj/yRbxFx3WENnYLgctDWLTuclrkh1pwYdXDoZZW6VzD/ZTEHGxnlFZa5/U/NA8GwI3iHgV1NOTRh0biZolRZUZyKSCf7oXkJaj+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
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

On Mon, Mar 03, 2025 at 01:27:10PM +0200, Jani Nikula wrote:
> Drop the dependency on gt by providing a callback for trying to unbreak
> stuck modeset. Do intel_gt_set_wedged() via the callback.
> 
> It's by no means pretty, but this is perhaps the most straightforward
> alternative.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_reset.h | 5 ++++-
>  drivers/gpu/drm/i915/gt/intel_reset.c              | 9 ++++++++-
>  3 files changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index d5ce0ac43377..1f2798404f2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -20,9 +20,9 @@ bool intel_display_reset_test(struct intel_display *display)
>  }
>  
>  /* returns true if intel_display_reset_finish() needs to be called */
> -bool intel_display_reset_prepare(struct intel_display *display)
> +bool intel_display_reset_prepare(struct intel_display *display,
> +				 modeset_stuck_fn modeset_stuck, void *context)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
>  	int ret;
> @@ -33,7 +33,7 @@ bool intel_display_reset_prepare(struct intel_display *display)
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> -		intel_gt_set_wedged(to_gt(dev_priv));
> +		modeset_stuck(context);
>  	}
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index f518147199a1..8b3bda134454 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -10,8 +10,11 @@
>  
>  struct intel_display;
>  
> +typedef void modeset_stuck_fn(void *context);
> +
>  bool intel_display_reset_test(struct intel_display *display);
> -bool intel_display_reset_prepare(struct intel_display *display);
> +bool intel_display_reset_prepare(struct intel_display *display,
> +				 modeset_stuck_fn modeset_stuck, void *context);
>  void intel_display_reset_finish(struct intel_display *display, bool test_only);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 0f12752d0f24..dbdcfe130ad4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1400,6 +1400,11 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
>  	return err;
>  }
>  
> +static void display_reset_modeset_stuck(void *gt)
> +{
> +	intel_gt_set_wedged(gt);
> +}
> +
>  static void intel_gt_reset_global(struct intel_gt *gt,
>  				  u32 engine_mask,
>  				  const char *reason)
> @@ -1429,7 +1434,9 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  			need_display_reset;
>  
>  		if (reset_display)
> -			reset_display = intel_display_reset_prepare(display);
> +			reset_display = intel_display_reset_prepare(display,
> +								    display_reset_modeset_stuck,
> +								    gt);
>  
>  		intel_gt_reset(gt, engine_mask, reason);
>  
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
