Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86233782AA7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 15:36:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC49E10E257;
	Mon, 21 Aug 2023 13:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E17110E25A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 13:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692624983; x=1724160983;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/wiVZ8rVhc47mmOmCsS2vhvzRLrdAoyXHYwOhrSupHU=;
 b=hI/aZRjSBVgG6aXRHN6D8IFHWmKAE4u7RO/BBxPaWVHZFMKG+W+bWrUI
 hDcPNVSXG8n9sfeLd3qLXvFG0Shrd3DXvtVvJdXCBra36aj2LD22+Kdf9
 WIE7dgX0otVpavcsu/TLZDzhIgMT1LjlaskLvv6mkxHWhZL9fWVAc9mJV
 dvT8pmstRl1l86Ag5xf10LWxgwdu5Iz9w4g0kvoTCUkiniBJGksBmkfHk
 PwxnkCCwSr+kh95WmfAd/tZ8SvTHS4fOtHiyLzYlM4cd4twi7FuFFxgcc
 m1NG+Urebi6L/8UtVIuBrn6YpoI/1X+sjz4x65Z1mzKRMbD0Db6XbHiuq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404594140"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="404594140"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 06:35:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="770945809"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="770945809"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 21 Aug 2023 06:35:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 06:35:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 06:35:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 06:35:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 06:35:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GyG7nG/KluyuIl83YqbIaYQhk/3ivAV+z2qwhbh2NruRne/Y9nPZO5LSWcNowop3S+eNWo2WjL1/qZIczLil8GiQnvgyfMCCedpR+zBdVONGw10c6tJ3iDzxIK4Rmf6hXTyeKWSjzP46iaG/9Pr+haCbvbjhXDxn9OIrAlaX8I1lBBtAsPZgvBIe3tBY3IvsOH4Kldw+L2vCI47Vw/1wFpfOQYDaXXZ+k37isvVBJuWilq2M5ZrrJxEt/oxUSVmXy5LW9Inz/IDyKLCt+D6bIXvq37wbyjgeeucAiny8h0YmXcKaNWRbIpcL2HLaT8TLWSJhrr/p87pMHSQut/7BQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G8934uYnTofWedSfzm0uX5PYwmVovP5tUXSU1gpVCz4=;
 b=NFjD0PUquJDIppPj1LOKRy3Txj18tzyko3qS/2+vgf64Vr63SWnIK3Zo1NODY5bx/tMSMYwOTajv8IlreWuyqgWqvXe8yjD9XuKXMMiYpAyQi8+sSwQvH/5SMuvMDPU5o3PXm3ADPbbmhuhkZ4xRaJyJGOsnaHa47otJavZi47sRbyCoG+54VzPk3Q3g0hWOeEx4QHlc4qfqqvBiB0WqmjrjaQSY9Ua66xZvNGkZ6/nEMWvizXdZ2AASAq8TcRsW0LWpU+afySMeGKTItMz+08NELqHxWXY/POCgO9bK3WEP3WJrWbmFwTKQ2lwN9j4zAlfwd+n5aUMNINQxkO7/gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB6927.namprd11.prod.outlook.com (2603:10b6:510:225::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 13:35:05 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 13:35:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230814200632.56105-14-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-14-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 10:34:59 -0300
Message-ID: <169262489943.6257.11873089236997624563@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ2PR07CA0020.namprd07.prod.outlook.com
 (2603:10b6:a03:505::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB6927:EE_
X-MS-Office365-Filtering-Correlation-Id: 0927b500-7b2d-4112-fdfc-08dba24b6d9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iTTFtZHYzb1WgKf7/euPSVcl2WDFOWzhz8RIZnQkay4XqkKsSCj/d3zynI/qvjj/edIN0JCFEjXpbtB7NDMJCg6bFV0x2a6TabRIq14NRjTOnwrfemr3iV7iXNG457m/N32129xkLl3kU25uiDqYmZ6G4JRNsHwX2LglNphqdF9LeDbL3z/tX8GudyZE0quuRWk9QaAO790HtL7Plz0RAQZu9aGtQEYGZAFwVgVMx49MmYz5CVxpxfK0mFFd1cZF4BOcA8XrCPVuB4u5veDYqBKL6FOyI9EznJkF1GXZVb/Eq9tBuTVq447kAcZv9lSR1Fds/EG0tPNYNtL+QIHFfr5GxFBCGjKsMn+kJS2WYWIvzWKuoJw1MxpTgVG343JsWdjeqaxuf0+7MDUvEuRThcSm0BVJqoUJp35Py81kqdQQzX9dAoumbCLdh0XqAErGGSkZSyg/Z/iN2aaOUlE8fXYIgx/Z/lFYxDjtX3pw2r2/YZXDp0wUmu+fb1Za4CR4NzPZo3ZoHLxiVxZyPjCqC8r9+TYAdfXyLJaVxWyNqH4jWJ8Rn6kCrkOg7862K6zZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(1800799009)(451199024)(54906003)(66556008)(66946007)(66476007)(316002)(9686003)(6512007)(82960400001)(8936002)(8676002)(4326008)(33716001)(41300700001)(478600001)(6666004)(38100700002)(6506007)(6486002)(2906002)(83380400001)(86362001)(44832011)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1ZHZW1jWWYyR29hR3A5bFRPQlJBbjkwT1hBVmNDOTlpTTVzaG9YYThCR1VI?=
 =?utf-8?B?UzdnaThVL0c5bVZ5dVJxY2pJeXFObDhlY3kxenVZNVdUa1JncTI2UTNUelhX?=
 =?utf-8?B?NjRpaWVFRitBdTJwUFdGSSs5VWJRbm5iQkJUdFZIaVphT3dVOFMzT0lMUlRM?=
 =?utf-8?B?UlVqbmU4Y0dvZXZ4TkxaUmJYeXN1NWJ0aktqOUJaTi84VHVRWStBSHlDVlFL?=
 =?utf-8?B?cDZqOXA3aWNVK1h0d0ZxTHpBU2VJckNpSU0zTGhrSmgwOER2eGxERDYyUWhO?=
 =?utf-8?B?UnZ3NTFXQ2RZM2NqNjBZODM0OCtWeVZjc2hORlljWVZFL3lRT01NeHlyUHg1?=
 =?utf-8?B?SmlDNkRQZjZVMnBmUmhBcTdTOFk5Z1k3OFRmNDNjdW1iZFhzYk5WU2RGemp6?=
 =?utf-8?B?NFhpV2NIUWZ3SlBWUDMzVzlsRnF3eHltSlpydmRzYXNSSFNFNE9PdHc4QXFH?=
 =?utf-8?B?aEtKM2ZxMTZZcXhYV3YwZkdXNXp0K3NJbFdDV2dwc2F3TjYyNzh5aGgyTnpu?=
 =?utf-8?B?OWw1V0JHZktzTDBsbEwzT2FPc2hhN0ZoMGNsaUZxSThQNnkrYUY1TlZxVGJz?=
 =?utf-8?B?dGh5bHpDdFVNQzBlYjdNNmprMzJlRWE2OE5IdFNGMUowRTA2MDNsRFdhd2pN?=
 =?utf-8?B?QmFBeUdWYlkzNGg0VStxK2Noei9NMzRaWkpJd1dNTHFtbVdjY1hoenFLTGVV?=
 =?utf-8?B?YzRON2lMWjFqckJzNlB3cVpIN0ZGZFFReWNpeVFqQmZyL3ZlNCs4bjZlQjFt?=
 =?utf-8?B?YzdDZktKMVh6MmtsbHRwcmdsZG9YNFI1S0FHRnp6YWQydktqLzV5b3o5ekJo?=
 =?utf-8?B?TnE5dkU3Q1ROOHhDL2U5SXhXcGZoTWFxZVJkSzZjRUFuRWkrR2JlSGVWWTY5?=
 =?utf-8?B?dWtYRnJHQWZqaXVoSnR4blMyYVo5QXlneWRSRmhJVVZFcHg1eFU5a1lZSFFu?=
 =?utf-8?B?NHZaZUN3NnpuWThhUU9wd1ZVV01rWlQrcll4S1dTbjNOZW1IYVRXVGFBakx1?=
 =?utf-8?B?TjYvbzIzbHFkb1VOTk03cjhEZ0p6cmp5YmlVZGgzeVVtN2hBSzRnYVIvdERZ?=
 =?utf-8?B?ZWlaRkRZN1htc0ZYVVYvL09HcklnSXNQUWtCZFFmYWF5ZVZ2TFF0K29ZWm1j?=
 =?utf-8?B?UTNxek9tOS9EeTcwRHdwRTRqWHNiUTlKcUhkTGJBK0IvOEJBd3gzV3IyNm5W?=
 =?utf-8?B?eFQzRlIrVjdEbzNsTzZJVEF2VlFyUXd0NVZRWTBWcTBKZmJ1WjVWMFVtU01y?=
 =?utf-8?B?aWsxNWNyQ1Rmek4zWGRTMnQzUVdKTGtiME0rRndic1JSYVFxTmdINmZPMTZG?=
 =?utf-8?B?aTA0K2FkK0dLeTdHODhJYTVLa1pGVDQraVJOVVRIbnBubTViVExONzZFdkRa?=
 =?utf-8?B?QTlWV3IvaUxFcUdkalYzOTlFRWdNLzh4Z0RXMmpvQ3RvUWIvUXFIR0dhU2Jq?=
 =?utf-8?B?bDE5b0lhRGJKeUFqMXp2dFhmSWg0TFltc2pFSkcxclYyUEZPSWJpRUd0MXJO?=
 =?utf-8?B?NVhCbWFyLzMwd2dZZmlUMkFMRGJzTlF5alNXMGxXbkdUeW02dUJIOWdOVlY0?=
 =?utf-8?B?MnFJL0w1YnBDMjcwT3NsMHV3VUhmKytUN0pIMDhYTHBhYmNmcWkwbE9WdTN0?=
 =?utf-8?B?M2ZyeGMvQm55SUNGVTEwdkMvYXJITm0xeW1PSjh1bDFuR3RmV0ROSWRuK2Jr?=
 =?utf-8?B?OGFERFRWcHNEbjJWN0FhejRoREVIemtCRURJVTQ1ems1UDNoMkxwSVUwdCtp?=
 =?utf-8?B?K1FWRktIdCtSeSsvekM4VWFGMG1jZEU1dXpBd2daaHdITlJGY0FBMThHUlhN?=
 =?utf-8?B?S29YelVQUjNCU1YxOHlUaHNCbzR4MmVYWGVXUTkvbWgzb3FWK3c1R2x3WW8v?=
 =?utf-8?B?VTRkMERJbEcxUVZLdlZ6ZDdMeEJnTkI4U295WERlYjdlSUp6Y2g1a3NYaDN0?=
 =?utf-8?B?SElpRUswQmF2bDI2WFNFSjUweDIrYllXZllUL1hUMmMrbUVJdzdPVkwrbDBw?=
 =?utf-8?B?Y1JBYUlkKzBBR2hJNWJmOVhqMU9HcGcvRFpXZ0xPVnY1RVNQUFJaVWE5UEZB?=
 =?utf-8?B?OUxyM2VyYzRaZTRLY1E4OXpmSXUxclNGMGdVaGNwS2ZXQm1MWmk1Z2xUVWx5?=
 =?utf-8?B?WE5YVTZYSGNoN3c4NmlMeTU5LzRwbzV6clQweThiKzc2NkZZMm8zMktjMFZv?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0927b500-7b2d-4112-fdfc-08dba24b6d9f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 13:35:05.2063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: onITLNVBq+yhkmPbHt3Yw6Y/exhxr+syrlti22OSIoS1KH7eCjvtmn4Kpqnsg5Q2sfSsp+kRA9PCG7qlRm8JNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6927
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/9] drm/i915/xelpg: Call Xe_LPG
 workaround functions based on IP version
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-08-14 17:06:36-03:00)
>Although some of our Xe_LPG workarounds were already being applied based
>on IP version correctly, others were matching on MTL as a base platform,
>which is incorrect.  Although MTL is the only platform right now that
>uses Xe_LPG IP, this may not always be the case.  If a future platform
>re-uses this graphics IP, the same workarounds should be applied, even
>if it isn't a "MTL" platform.
>
>We were also incorrectly applying Xe_LPG workarounds/tuning to the
>Xe_LPM+ media IP in one or two places; we should make sure that we don't
>try to apply graphics workarounds to the media GT and vice versa where
>they don't belong.  A new helper macro IS_GT_IP_RANGE() is added to help
>ensure this is handled properly -- it checks that the GT matches the IP
>type being tested as well as the IP version falling in the proper range.
>
>Note that many of the stepping-based workarounds are still incorrectly
>checking for a MTL base platform; that will be remedied in a later
>patch.
>
>v2:
> - Rework macro into a slightly more generic IS_GT_IP_RANGE() that can
>   be used for either GFX or MEDIA checks.
>
>v3:
> - Switch back to separate macros for gfx and media.  (Jani)
> - Move macro to intel_gt.h.  (Andi)
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Andi Shyti <andi.shyti@linux.intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_gt.h          | 11 ++++++
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 38 +++++++++++----------
> 2 files changed, 31 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/=
intel_gt.h
>index 6c34547b58b5..15c25980411d 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>@@ -14,6 +14,17 @@
> struct drm_i915_private;
> struct drm_printer;
>=20
>+/*
>+ * Check that the GT is a graphics GT and has an IP version within the
>+ * specified range (inclusive).
>+ */
>+#define IS_GFX_GT_IP_RANGE(gt, from, until) ( \
>+        BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
>+        BUILD_BUG_ON_ZERO((until) < (from)) + \
>+        ((gt)->type !=3D GT_MEDIA && \
>+         GRAPHICS_VER_FULL((gt)->i915) >=3D (from) && \
>+         GRAPHICS_VER_FULL((gt)->i915) <=3D (until)))
>+
> #define GT_TRACE(gt, fmt, ...) do {                                      =
  \
>         const struct intel_gt *gt__ __maybe_unused =3D (gt);             =
   \
>         GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),              =
  \
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm=
/i915/gt/intel_workarounds.c
>index 3108ad1d6207..80d67e487b55 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -805,8 +805,8 @@ static void dg2_ctx_workarounds_init(struct intel_engi=
ne_cs *engine,
>         wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> }
>=20
>-static void mtl_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>-                                   struct i915_wa_list *wal)
>+static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>+                                     struct i915_wa_list *wal)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>@@ -817,12 +817,12 @@ static void mtl_ctx_gt_tuning_init(struct intel_engi=
ne_cs *engine,
>                 wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false)=
;
> }
>=20
>-static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>-                                     struct i915_wa_list *wal)
>+static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>+                                       struct i915_wa_list *wal)
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>-        mtl_ctx_gt_tuning_init(engine, wal);
>+        xelpg_ctx_gt_tuning_init(engine, wal);
>=20
>         if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>             IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>@@ -931,8 +931,8 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *eng=
ine,
>         if (engine->class !=3D RENDER_CLASS)
>                 goto done;
>=20
>-        if (IS_METEORLAKE(i915))
>-                mtl_ctx_workarounds_init(engine, wal);
>+        if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71)=
))
>+                xelpg_ctx_workarounds_init(engine, wal);
>         else if (IS_PONTEVECCHIO(i915))
>                 ; /* noop; none at this time */
>         else if (IS_DG2(i915))
>@@ -1791,10 +1791,8 @@ xelpmp_gt_workarounds_init(struct intel_gt *gt, str=
uct i915_wa_list *wal)
>  */
> static void gt_tuning_settings(struct intel_gt *gt, struct i915_wa_list *=
wal)
> {
>-        if (IS_METEORLAKE(gt->i915)) {
>-                if (gt->type !=3D GT_MEDIA)
>-                        wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_C=
ACHING_OPT_DIS);
>-
>+        if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71))) {
>+                wa_mcr_write_or(wal, XEHP_L3SCQREG7, BLEND_FILL_CACHING_O=
PT_DIS);
>                 wa_mcr_write_or(wal, XEHP_SQCM, EN_32B_ACCESS);
>         }
>=20
>@@ -1826,7 +1824,7 @@ gt_init_workarounds(struct intel_gt *gt, struct i915=
_wa_list *wal)
>                 return;
>         }
>=20
>-        if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70))
>+        if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
>                 xelpg_gt_workarounds_init(gt, wal);
>         else if (IS_PONTEVECCHIO(i915))
>                 pvc_gt_workarounds_init(gt, wal);
>@@ -2294,7 +2292,7 @@ static void pvc_whitelist_build(struct intel_engine_=
cs *engine)
>         blacklist_trtt(engine);
> }
>=20
>-static void mtl_whitelist_build(struct intel_engine_cs *engine)
>+static void xelpg_whitelist_build(struct intel_engine_cs *engine)
> {
>         struct i915_wa_list *w =3D &engine->whitelist;
>=20
>@@ -2316,8 +2314,10 @@ void intel_engine_init_whitelist(struct intel_engin=
e_cs *engine)
>=20
>         wa_init_start(w, engine->gt, "whitelist", engine->name);
>=20
>-        if (IS_METEORLAKE(i915))
>-                mtl_whitelist_build(engine);
>+        if (engine->gt->type =3D=3D GT_MEDIA)
>+                ; /* none yet */
>+        else if (IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12=
, 71)))
>+                xelpg_whitelist_build(engine);
>         else if (IS_PONTEVECCHIO(i915))
>                 pvc_whitelist_build(engine);
>         else if (IS_DG2(i915))
>@@ -2975,10 +2975,12 @@ ccs_engine_wa_init(struct intel_engine_cs *engine,=
 struct i915_wa_list *wal)
>  * function invoked by __intel_engine_init_ctx_wa().
>  */
> static void
>-add_render_compute_tuning_settings(struct drm_i915_private *i915,
>+add_render_compute_tuning_settings(struct intel_gt *gt,
>                                    struct i915_wa_list *wal)
> {
>-        if (IS_METEORLAKE(i915) || IS_DG2(i915))
>+        struct drm_i915_private *i915 =3D gt->i915;
>+
>+        if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_=
DG2(i915))
>                 wa_mcr_write_clr_set(wal, RT_CTRL, STACKID_CTRL, STACKID_=
CTRL_512);
>=20
>         /*
>@@ -3008,7 +3010,7 @@ general_render_compute_wa_init(struct intel_engine_c=
s *engine, struct i915_wa_li
> {
>         struct drm_i915_private *i915 =3D engine->i915;
>=20
>-        add_render_compute_tuning_settings(i915, wal);
>+        add_render_compute_tuning_settings(engine->gt, wal);
>=20
>         if (GRAPHICS_VER(i915) >=3D 11) {
>                 /* This is not a Wa (although referred to as
>--=20
>2.41.0
>
