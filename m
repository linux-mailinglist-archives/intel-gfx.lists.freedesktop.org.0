Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F8C892382
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:42:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853921120C7;
	Fri, 29 Mar 2024 18:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8PYCnKy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0576911200E
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711737088; x=1743273088;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=jcrrI4rsS4MWIeMU7vT3yA4RpyMl8OsSArRRA/dQVjo=;
 b=h8PYCnKygA+IcFTI8i95oE9vRpu/mkl/gSgGO8gYRulom2vVsMsyAVoO
 sB5TVXQHGKiMamyMQ1jHJykG9zzaSUv314tF8DMGvIov6Mq5jkgPuquHY
 14aAV0HCbFS9rrgrDUplFwcTUwCBNbdXrfda8SqiwSq3prPo8wMLIj+aP
 5iSFCWMoZyy3Fcj8Q9kgMXbpBCNaomIF4qgAjOSYqD2AUhVZBSVIWbwYi
 dJ86HsLn8ME08TcsNgp1ygImMNw4zW5QHaBynvKvd0qCTDmec/dU3n4pG
 Wnui8tNnSlDE1qh6lkhiGdsGUvmJd5796/FLsMrUOz2D3T83j1ZQrTq5m w==;
X-CSE-ConnectionGUID: xYIu6OMuT3CY+z0CALnHoA==
X-CSE-MsgGUID: KrIclUeiQiC4jiuCL2Lt9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="6788622"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="6788622"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 11:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="21505034"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 11:31:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:31:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:31:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 11:31:26 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 11:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKYIJb41IChVv6ZJ8UclSAwGBHYsK+zaMVZDxjSG5Q5VR7ELI1eS+vRP+ReIDETRa/m36a21Wf0Zw1MjZJc4IBPFu7ftF93+Mr1Fp0ixyomGcyxZdVf6/AJ9Vc2seRMa9enm//iy1VKUcM5MUys/CueN3qWqEiIXwBS34ynu9gr0McjWrYFV59PKUzYuRaRJSFa7DC08Dq/6mLyXM1bAiLyg1x6erf1LaPJKMa0Z5GCzGt5bl58w9T+e/C1xLxOta/0vgfg5GSJzCy8rKDDJmwouqco/Bm1U/FcidcUbXofqp0QaaTxosLNMTADtyURGBsaUP2GMkPEXPzyL9NZENw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k9fLeyjxab4vb+UIHtavv0XaItaRtI7eTuimkUGjamE=;
 b=oUx+K69hV0fhn7E+eHeGnjlTC+yR3FWsjj0/KBUkDZ57xhpB5vKGaJjAiJgW5IGEXqVp+qusRN9oN6m2OlvO+yj7lD2eEYY+DDBQ90w+gI6m3hlkCLx4ad4+k7zQPxsy56gUaLh3IXcnjtYXQAJk+QDiCGu94hMhvXqxT3+myjlJHdqrfOMULV2K+/jGQ+1wx+tCWfv9ftzaBhcXuhrvyXcxak4xRbxBMu5HRBvVyjCoebRWStwVH8Lk5keCjx2WCoHZmjgY+BjAfJYi07MU+xd9hWlyAgwWqDeemRqy/vcat+ZHqo4xij/U4kL3Rvg8oitJXSoCL/xS08dP6g7cjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6734.namprd11.prod.outlook.com (2603:10b6:806:25d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Fri, 29 Mar
 2024 18:31:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 18:31:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-9-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-9-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 08/13] drm/i915: Extract
 intel_dbuf_mdclk_min_tracker_update()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 15:31:19 -0300
Message-ID: <171173707971.2604.4900162353767797183@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0082.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6734:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xjSq2Ka43uLdLtrB9yghpb2TE1gS/098lwqXsJBxLE9zZimA15VGPmDsh43qu9u60x+lrh+tqxpaprQTHoHm5g+F5GtifrVlwFJHaZKQYlerIM69+OBrZf1hfNkU+vtTtHxILgHBZorppO5NHzS7TnZcG4VH7haySUC4Kx9PFHNrphQmfn9XB2dqKcYzcuYUTw1VZPCnjwW0YEe30OVFfCEBbcyWlXK61Xixn7kC2pcvo0JcUvy61XRPVW55RPCDTqqMw0FZMQ/Rn4r05zTt2fFH1oZGJOVmdZMV1GGij3fWJkSmFOYjhqTaMKjcdAOiiXLLq+K3G+GNOZRNnpKsNhhK+++vLlCO9GaP6Ry3ws9T0btQTXio8BbsW5addCPZNyVgoknYk846FER/N1yPgPJWlqzaJS+xq0F2J0GKzeHXi+SYaZ5f/1XIGRuhTn/XecgMXGfH3fGlsE3cSqC0+CCy7eUsVBOoLJmSstXlQJQBcCt71hiotXogwULVtnYCRZKy9YPvRWDEctBpI0WH93GletgD2H+qhxmZqPzXqReQsmHDebsi8RzlJMzNACd4F1FhHFYUjKLzaqCv/2Q9prEs1trwKPii5tOzzQ7/3WEAChoqdBoBNegttoLQZ3oIzYym3iQ7CmEZEVHP1Ah93c8N9v10iM/CWwk/Ord/K3s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTNTbGdYb3NOTng1eTk0dEJlWEFXdmNWSVpES1gzTWw1L1ZTUUIrWGwyMEV4?=
 =?utf-8?B?RGpQcjBQazZvL2xmWlBIbzRhZjFtQ1cyQW1OVzF6WUFxY3paZUtHUTNSZG1t?=
 =?utf-8?B?L0lIcm94MG1mL2JmVk9wSFJrQkN4dWdteU1aR2JoWmZIcGYzVEFHUjY2V3hJ?=
 =?utf-8?B?NFpRZ3U4V0NhcHRnRnVNeC95YnZOV2tCdzFRdE50d2VuVU9UZmRyMXdDZGVE?=
 =?utf-8?B?TlU4Tjg4TWY4K1BzV01vWVNrOEFZck1YcEpuYmY0V3BqU2RoeTdxN1dkWHox?=
 =?utf-8?B?UTRycGFaQVZ0WjM3Qy9kNGVlaVA4T25CSXNqM09JUmhpU0F5aU9nb2hjNFpJ?=
 =?utf-8?B?azQzSHpiZHpwUDNTa09MWFBJOXhoa3FIeVpheVZuTVRsR20weEhWeHhTQlpZ?=
 =?utf-8?B?L0NLSDhvT3A0MmVXVXllaE5KSEI4U1g1cWlKZkdNb0RwbnEzRDhINXEyMHhv?=
 =?utf-8?B?VnFCZGtEdHZ4azU4a0c5T01GdXR1ZnBRZFVhNERESzhWT0J4SGRsRndqQTJK?=
 =?utf-8?B?TmZKUTh5blBEZG1LZjhTc3BJWlQ3Z2ZtUmdydFdXSStLTmU0TXBZZmVWVDNU?=
 =?utf-8?B?ZWM5TGNRMU5zV3JTZ1VNUWo0ZS9GZnBjL1hFSmV3QVREdHYvQTQzRTU4bXND?=
 =?utf-8?B?UmVzb3BxSFgzeTNQSjA2S1hQVytBVi90Y296NnRBVm82ODNvMXhzL0x2NkhB?=
 =?utf-8?B?NDFmeE1Zb0dLRXgveEJtMVN5L215RTIyMFRtenFnbTlLc2JqYmU5RzU4ZzZO?=
 =?utf-8?B?ajRHZWZROUVhcDVkY0RxSzlybVU5eWFWN1hxVVFvY2NJbk1QSmU1UHgxa054?=
 =?utf-8?B?QjNlYk5sempFNmpkL2NRRFVGMG5JT2lQUDlDOFpvWWFxcXBheW1YLzdtNWta?=
 =?utf-8?B?Sk1yNG1adEFCeW1pU0oyN3d2bFNFVExJeldVb0ZrSHpPUlJRRExwcmN5S2hj?=
 =?utf-8?B?b25tTHpXRXMzQnA4QmdBZ0pUU3dDNjRDdHIxQnE3SVFxbjE1SHZoTUROWUd5?=
 =?utf-8?B?a3prbEw2MCtDNEhETkkrVXYrOFgyY2ROSlNnNlZjWGQ2UjhUdjMwM0Npa1l3?=
 =?utf-8?B?OGl5T3VaVTVzazRnR2hNRUZuWm5jaXZBSTVZalhPSHN1aGh6RGpBVEV3RjVv?=
 =?utf-8?B?Y1F2cDJlb29JVll5bUJVSXJoeGl6dFVnZVB5Y01wLy9RWEd2dWxERkYweWs0?=
 =?utf-8?B?c1BFL1VXUzJzL29sV3NpSGFGVDRhc1hPN0lGeXowV1p6RDNKNlVQSVZmNWVm?=
 =?utf-8?B?UjZlVEFnNkl4aTVaUnFjd2dpbmVDdGFQVC9hckI3TVFlcTV6MFoyRnZpYlNG?=
 =?utf-8?B?V3lSbkZCYjFjOWU5WUI3QjhwYjE1ZHFqSmRYZEN6dnJlRDFnWEJJblY3ZXAr?=
 =?utf-8?B?ZjE4ck1UWW5IZVh0cUREUU9ySnhhMkdCV1EvY2tlWjg0NXFzd21tbXhKdmJi?=
 =?utf-8?B?OHQ0cmI2aUdLMTd5WUFob3FoMUpKdHBYTlkzRVRoS3NZQlcwK1VYWWFQSGl1?=
 =?utf-8?B?K0pFYytWUWhxcTZGWEEwKzhFSTlLazM0TEFxM2cxUS9SNEUreEZsYi9Mb0ph?=
 =?utf-8?B?VHZNRkVHbEdJb3BKQ3k5WUplTFplNHFWZEZJRmFGYnpiS0dIMExYaks3dVhO?=
 =?utf-8?B?dlArVFpjd2FsR3RYNFI2WHpBWlIrVXdCSFY2cTBxRXNFaFdLUnk4elppN1hV?=
 =?utf-8?B?WHRzN1FXVjNIeUk4N0pqdWxDbEtZL0hKT2VLNURJYUMxNHJtRTh0b2JjVzhS?=
 =?utf-8?B?c1RQNEpLQys1VEZpS2tjT2pZRDFxNjR5Ujd0TFZydjBVWG0zR2VVMDR2Zjky?=
 =?utf-8?B?NUx3KytxdzJXTTJGWDNHOWxkRlNkOEovZkMxdGVwNE9TbGV6MnFtR3dXRXNG?=
 =?utf-8?B?bUEvQlc2OG1LMWpqOEJPUjBlbWNGUHBzWWJrbmorSXF4YTVWbVMwdW00dm15?=
 =?utf-8?B?MUo1UElJYnNDR3ZmcTRlb3JzSnRsbUFaZDRjamJ6WXd1VzhSaWdEbEp3OG16?=
 =?utf-8?B?MmJvUUN4cXA3R0pGUnBRZzVqbkxIcU00bm80c0FFSy9YeEJGWGU2dDdDdWFa?=
 =?utf-8?B?UElpTE0raDhTVTBvK3BsMXFVZEl2Zk84SHVXbGlDMFMrai9lK2J4eFNpRTI4?=
 =?utf-8?B?UnVGdUFQYzVvbjVRMW52eWhkSDVkTDdKOXF5RTB3S3FTRzV2RnhnVXZQVlNh?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80579c67-c52d-46d4-0b33-08dc501e6fff
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 18:31:24.0879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iHDxieztIXt4ohtzejOOe36l4/ynrflipGobR/EW2vbX8Mo/+WzwyiuAkwBKthQRm5WEeDHrRO3OWwYMdfWVmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6734
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

Quoting Ville Syrjala (2024-03-27 14:45:39-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Extact the stuff that writes the dbuf/mbus ration stuff
>into its own function. Will help with correctly sequencing
>the operations done during mbus programming.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 43 ++++++++++++--------
> 1 file changed, 25 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index f7e03078bd43..7767c5eada36 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3653,6 +3653,30 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm=
_i915_private *i915, u8 ratio
>                              DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> }
>=20
>+static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state=
 *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_dbuf_state *old_dbuf_state =3D
>+                intel_atomic_get_old_dbuf_state(state);
>+        const struct intel_dbuf_state *new_dbuf_state =3D
>+                intel_atomic_get_new_dbuf_state(state);
>+
>+        if (DISPLAY_VER(i915) >=3D 20 &&
>+            old_dbuf_state->mdclk_cdclk_ratio !=3D new_dbuf_state->mdclk_=
cdclk_ratio) {
>+                /*
>+                 * For Xe2LPD and beyond, when there is a change in the r=
atio
>+                 * between MDCLK and CDCLK, updates to related registers =
need to
>+                 * happen at a specific point in the CDCLK change sequenc=
e. In
>+                 * that case, we defer to the call to
>+                 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK log=
ic.
>+                 */
>+                return;
>+        }
>+
>+        intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_c=
dclk_ratio,
>+                                            new_dbuf_state->joined_mbus);
>+}
>+
> static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>@@ -3683,10 +3707,6 @@ static void intel_dbuf_mbus_join_update(struct inte=
l_atomic_state *state)
> static void update_mbus_pre_enable(struct intel_atomic_state *state)
> {
>         struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>-        const struct intel_dbuf_state *old_dbuf_state =3D
>-                intel_atomic_get_old_dbuf_state(state);
>-        const struct intel_dbuf_state *new_dbuf_state =3D
>-                intel_atomic_get_new_dbuf_state(state);
>=20
>         if (!HAS_MBUS_JOINING(i915))
>                 return;
>@@ -3697,20 +3717,7 @@ static void update_mbus_pre_enable(struct intel_ato=
mic_state *state)
>          */
>         intel_dbuf_mbus_join_update(state);
>=20
>-        if (DISPLAY_VER(i915) >=3D 20 &&
>-            old_dbuf_state->mdclk_cdclk_ratio !=3D new_dbuf_state->mdclk_=
cdclk_ratio) {
>-                /*
>-                 * For Xe2LPD and beyond, when there is a change in the r=
atio
>-                 * between MDCLK and CDCLK, updates to related registers =
need to
>-                 * happen at a specific point in the CDCLK change sequenc=
e. In
>-                 * that case, we defer to the call to
>-                 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK log=
ic.
>-                 */
>-                return;
>-        }
>-
>-        intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_c=
dclk_ratio,
>-                                            new_dbuf_state->joined_mbus);
>+        intel_dbuf_mdclk_min_tracker_update(state);
> }
>=20
> void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>--=20
>2.43.2
>
