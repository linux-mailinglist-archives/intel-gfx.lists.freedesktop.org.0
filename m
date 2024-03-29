Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFDC892355
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 19:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E15710E039;
	Fri, 29 Mar 2024 18:28:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZWx/lbow";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D176B10EC69
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 18:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711736906; x=1743272906;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=SyEZ9IkIL+0OAMY/2myK9OlQ3SGEDnBU1wrR6ZROmH0=;
 b=ZWx/lbowr9nr1O6C5OPplkTUF1PopJ2NWKhPWKBl0xyyuAwmX7t1VRVa
 SXFU4Xz8chotv5rnaW+qGEI8Yp5M7Dxfel2/x/A6vpcBABRYNFvf4QNZG
 p/PpdkwXgrduGP9E4SQP2EfTlQzpZn3qlxDccWrEOmR/a52KwwJQxNBxu
 VhTJ+0pa4iZKuBsY/EgZbNgcagZlLm8ZxYjGaEpKleEEReXHQ1iE44hg2
 RWvhwrOwVR8XDzPefdmQLWq79UmoCY8YC6TysYxvo0lgrBx+UWwlfZrGl
 ki68ooaWoqQUQh+3hE/ZRnhAqHcgqfc8Erw6Ep43ooo4Y8N9XA1OYtgjC Q==;
X-CSE-ConnectionGUID: OpKjdMfVQ+y7pmrs11TNTg==
X-CSE-MsgGUID: tYmQqQKATZqwbHj036WrYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="9888754"
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; 
   d="scan'208";a="9888754"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2024 11:28:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,165,1708416000"; d="scan'208";a="17088176"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Mar 2024 11:28:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:28:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 11:28:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 29 Mar 2024 11:28:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 29 Mar 2024 11:28:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZmT2P6kGDmVS9wrkwPVdmPmW0vZwX0y+E2LNW3jGJx4xYU2SVSs87ueV1TXPzz0aCa12vFTK+nrnWX6CU/ikjGqL3GfCgXD6716fjNyAsbQCmptnl/r8ekZCIkKUnUZdmeRkDa7ixO363W8kvQCmHArxjsJgNnqVNAU9twRQ8KHIDxLJHMK2B1lFvc+YMEbQexFdIbg2lSxz1iKeTPJIkC14tCq9Ir1cE9c9P2RVuo6qlXsuUpbRIBdnwvTCWUTBeqKmTC1Xs3zvSqYLfHPwgBTNsBMm2iQf/5lqdIU70QDrNQtltJRTGN8T2ElPvF8ca7m3C/N0ceB5AiGAeae2Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w8DDoBlJ79p3c4/6Q+ixw25kWcDf7MCkfiq7gvikjok=;
 b=Yd2W9FCHrJYToHsOQvgJpNlijzupvdZBihCIGPIP6DPl8YxcuzDzFWZLXHv/tf1jG9bRRLUV2eQRSGJSmipvGw0R+ku4yGadsANVvnTcQvpmceC0kPxAG55lu9xiZiGYW12y0yXPjsKnn403/POYqecxjkTkhe/nnZWpmChu+9BIzB5zhlVV5CZ5AiJfJEtgtpSFh5WUuFkFZTHK5qooI/ePXSNUyUCvLnltuhPdkXI9N3KLaJAXJL6ZXlA1sVdb/6b9LsVLNrt1azrNTEMC4Yjy7hbZbxN0k/ZMGToTRBgUdUoVLUlbqduPxhtqQvXrz6+Ak48TSzdhEomk9QMxyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7663.namprd11.prod.outlook.com (2603:10b6:510:27c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Fri, 29 Mar
 2024 18:28:22 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Fri, 29 Mar 2024
 18:28:22 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240327174544.983-7-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-7-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 06/13] drm/i915: Relocate intel_mbus_dbox_update()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 29 Mar 2024 15:28:18 -0300
Message-ID: <171173689870.2604.16668958904617051357@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ2PR07CA0019.namprd07.prod.outlook.com
 (2603:10b6:a03:505::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7663:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P3SAN+utFy5eeVf/A1KJOdu30wCThBx98DwqSVPy0ThhbFgtP8XCHa2TqcymLjRECogC8oL4MvP5OomV/4Sewuj2kFVKGp9sSkdx2NA+P8SnaWbjeMn8UNcbnAsU522HwqHrYSwlSbArqbYAbAaSMl3T6go/FZcOlFfqqdKpgvmIs4GFxqwA8+3rew/fQaMBJSA9cKx8/TiEJyK3obE1wShk4KLnUky/+lXNspebaXPv0J9xGe2YHm5tqmEj/LFX5EvV/tlaisUjyGlhcP9DSR845TLF33dryCkAYgpziArB8pHh2tEnfDojI+RQcK0SPXE8yU5JYF86DGgx9k3z6HGtxny9JUnPuxqtd/MImLj6OP9MOgL+zDVT/u82ncwrf/F0MnOIvFJVd7pyDQxuwgN87x1rnfIY17y9RTbW2Ys2PuVMrf0BsRmUo1KnEaDdPl+TYHBJJi/kCDrcOZ82wkIsBbDp/Bb43veT7eZkTagbtdJ/o18MU87WRgwHPIPVcFhbhRkWo6e3vqRv9+EYsCoXl3d0piRXnorhUtwbDaPbaBxVXG1HVAMpxEbVloTp7b2/+vT58B4mQC4yRp7TOevBPJWp2LBhm0Bn5mWAbwL2SNngH2zlv0cVCMmW4JBQQu1a+M0tx9TJv64aC9Tr5DehSqGBn4z2hKFoE49/kpQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3BiVG9kaUVkdlpHTnFWN0l0Mkl3enRCWHY0SkR0M0dJenFxdW5qM2xGc0tj?=
 =?utf-8?B?anlUbkd6S291KzlYaWZ5RW9KcWlMRmxncjFHT0g0SGtSWTgxZW1lalFCMzd1?=
 =?utf-8?B?MjFWNXNmSDhkS05OdVR4RVZyb29HVWttekREVW85WkpMRVMySlhwL010T2lo?=
 =?utf-8?B?K0FoVUVBUlh4MVJIRTRiS0wrS1NmOFFFS1ZVc01tN2ttYmRzR3ZrRm54WWVD?=
 =?utf-8?B?UTl0OFRGdURKMERpdTJlNFlid2tuVGtYMnpPRXh3REZyK2hXUmRuRlVMNERN?=
 =?utf-8?B?UTYxUVFtc2RoZ0ZYaTI0dFNOWWZPS056L01sbnJYSkNGaGsyNXFHRHVGQVJ1?=
 =?utf-8?B?T3c3aCtkY1g3c3ZxcVo1ZTVoRXduc21ZQVU1Wkx3N3hHdVpMMmtEcm91cVZE?=
 =?utf-8?B?YWNrU25rVjVtUHhTclV3MlRjSWNhY1M4b3JpT29EV0x5Uk5vT3o3RCt2SHNR?=
 =?utf-8?B?QlV6TmUybS8zQkhsSTJHV1p1OHY2Q1locEFQZTROdTA0a2paVE5laldRT2Js?=
 =?utf-8?B?c1JZb2duVGFGTFRreU1Yc2JwUW9IQUY4VHVnTnNtYXZZbzgwZ0UvbTBHbE5y?=
 =?utf-8?B?ZHBOSUV0alNWTEFHT291SjhrSmJsaTNvTHMyczVSZEt2RTUxNDVSeU1ERWpR?=
 =?utf-8?B?cm1PMVF0eHNiUTYycnFKWXE1NDE3VUxMam0xa1dreG5Xcm1ZSXprQS9QZDls?=
 =?utf-8?B?QkRPNlhKT1gvUGZBNDgwdk9lVUxlZ0NZWHRmSVBqWFNQUXVPbXdpb3BZVVl5?=
 =?utf-8?B?cWtzTGxiQTVvLy9vUUFPUnkxSkwvQXg2VG5zbEpaeisrbHV4c3FTOXpuT1BR?=
 =?utf-8?B?M1VkV2I0cHBMNklwTkVxTU9NQUF0dU9XYmNQRVdmS1BjUzExVDJ6ZitIWE5K?=
 =?utf-8?B?Mk5qOUU4a1d5d1RxQ2pZY3hVMXRnLzVsU1BZYjlFb0lHSlRRb0pUcnZCQlRu?=
 =?utf-8?B?T1grNndWNlNvREhMNUhtMTRuMk5GU0orUUdmUDVpcnZHK3g5WjhkY2NtY3hr?=
 =?utf-8?B?bExNQmIrN05aZ094YTNPWExHSWxaM2k0Y2lvWTVBTXJVUzZFYXhuZXBvdi9M?=
 =?utf-8?B?QnFBeFFUU05RaDBLaVBEVVhONWRoR0tGRU1NMUxhQVl0b3pXMkt3MjQvOU9I?=
 =?utf-8?B?elZqWERldmRGY1dnVmJUV3FEUGppaVF5cm13QU1RdURmMzJicElyS2JMbkhu?=
 =?utf-8?B?Z1hNMGJKV1ErWUZRSTc5VUZYc0ZmT0hjczJEZWVQOG94RkU2bnA3cjJVbU5W?=
 =?utf-8?B?eHA0eEQ2ajY3MkExcStBcG01SmU0MmRPZUw2RFNNZ2lrUTBwTUxaRzhvSjZp?=
 =?utf-8?B?L3M1bmk5ZEc3WEpYT1VISHc4blZrQlhKWG03aWxUS2ZIQUhmN1cxenNTWHNF?=
 =?utf-8?B?QjBkZkdLa0g2N05tdGp6WS9aazFVenhmTUJUSkFNV3Z3S3NucXRIY3BSMVVS?=
 =?utf-8?B?OFlKMUh4OWROYjhCTHREMTA4WSthZXNoWWRhaVFBOTFVc2FWQmp5WnhrcWNZ?=
 =?utf-8?B?NE92NDhLRVBCbFQxbjREVWNJdW11RzlsK0dvYmFNMmpkRStpYjQ5RWpJLzI4?=
 =?utf-8?B?ZEZwSXc3NFpBSVczVytmeFo0c2NHR1RzRW0yWTlZcDhtV3hob1BVcldPekRB?=
 =?utf-8?B?Qmx0YW1DaVoycERyV3FkWUJFUWJJM0JNeHRaK1p2MXVPZmxERldkZEtLb0VK?=
 =?utf-8?B?ZUQvamdBdkVpc21yZExTODlaY01jQXA4RzVuV3IvY1ZyYWR3Q1pkZm8xNk9H?=
 =?utf-8?B?cFh2VVdIbFZua1pvdTVDQWcwMjZlbktpblFoWG5KZGZZSmV2blZKSnhyMTFM?=
 =?utf-8?B?N3dtTE5ZVmpLQ3lydVNMeCtyd25XZldLVTFFRnliaWxVY0Ftc3lVRVpkcHVX?=
 =?utf-8?B?UHZWVytqQ3lBNU9tNkFqcnNDeWM2ZHVtM3NLZFg0eDBNd2pEVGcybUw2eTdE?=
 =?utf-8?B?eHlBWnBHbUZBdkt3cEV6QzErMVJmNmt0b3lobjY0UGw1ZmRORk5rdVpXUVdx?=
 =?utf-8?B?aFdpN1VnZC9oTFRzMUNxU2dRMHAzdWp0WXZlQ1NaaktONTZUVFZPcWJTbmls?=
 =?utf-8?B?YjQxSGpPN05DblFySzhKWHZISHZKOVBzZ0hUNFA4OHU5dzcreE1vYkJUd3J6?=
 =?utf-8?B?aXp6MklySTRhakdDZFhEdTJJbnBxdU5IUmFGNWNlNmJYTm9NbGt2OWRBVGor?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bed04a99-cdcd-48ed-eb03-08dc501e03de
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2024 18:28:22.7118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9mCeFgy93tatGDIkxyhA3x8X/8CZ0aBYTs44oMCLvsaO3HIzF3Ck8ltIWzVsrv8DXg+ITa/WqCbDU7QPUtB/wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7663
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

Quoting Ville Syrjala (2024-03-27 14:45:37-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>intel_mbus_dbox_update() will become static soon. Relocate it
>into a place that avoids having to add a forward declaration
>for it.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 166 +++++++++----------
> 1 file changed, 83 insertions(+), 83 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index f582992592c1..6bd3fec0aa56 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -3540,6 +3540,89 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>         return 0;
> }
>=20
>+static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_p=
ipes)
>+{
>+        switch (pipe) {
>+        case PIPE_A:
>+                return !(active_pipes & BIT(PIPE_D));
>+        case PIPE_D:
>+                return !(active_pipes & BIT(PIPE_A));
>+        case PIPE_B:
>+                return !(active_pipes & BIT(PIPE_C));
>+        case PIPE_C:
>+                return !(active_pipes & BIT(PIPE_B));
>+        default: /* to suppress compiler warning */
>+                MISSING_CASE(pipe);
>+                break;
>+        }
>+
>+        return false;
>+}
>+
>+void intel_mbus_dbox_update(struct intel_atomic_state *state)
>+{
>+        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>+        const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
>+        const struct intel_crtc *crtc;
>+        u32 val =3D 0;
>+
>+        if (DISPLAY_VER(i915) < 11)
>+                return;
>+
>+        new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>+        old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>+        if (!new_dbuf_state ||
>+            (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mb=
us &&
>+             new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_p=
ipes))
>+                return;
>+
>+        if (DISPLAY_VER(i915) >=3D 14)
>+                val |=3D MBUS_DBOX_I_CREDIT(2);
>+
>+        if (DISPLAY_VER(i915) >=3D 12) {
>+                val |=3D MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
>+                val |=3D MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
>+                val |=3D MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
>+        }
>+
>+        if (DISPLAY_VER(i915) >=3D 14)
>+                val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT=
(12) :
>+                                                     MBUS_DBOX_A_CREDIT(8=
);
>+        else if (IS_ALDERLAKE_P(i915))
>+                /* Wa_22010947358:adl-p */
>+                val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT=
(6) :
>+                                                     MBUS_DBOX_A_CREDIT(4=
);
>+        else
>+                val |=3D MBUS_DBOX_A_CREDIT(2);
>+
>+        if (DISPLAY_VER(i915) >=3D 14) {
>+                val |=3D MBUS_DBOX_B_CREDIT(0xA);
>+        } else if (IS_ALDERLAKE_P(i915)) {
>+                val |=3D MBUS_DBOX_BW_CREDIT(2);
>+                val |=3D MBUS_DBOX_B_CREDIT(8);
>+        } else if (DISPLAY_VER(i915) >=3D 12) {
>+                val |=3D MBUS_DBOX_BW_CREDIT(2);
>+                val |=3D MBUS_DBOX_B_CREDIT(12);
>+        } else {
>+                val |=3D MBUS_DBOX_BW_CREDIT(1);
>+                val |=3D MBUS_DBOX_B_CREDIT(8);
>+        }
>+
>+        for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state=
->active_pipes) {
>+                u32 pipe_val =3D val;
>+
>+                if (DISPLAY_VER(i915) >=3D 14) {
>+                        if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>+                                                              new_dbuf_st=
ate->active_pipes))
>+                                pipe_val |=3D MBUS_DBOX_BW_8CREDITS_MTL;
>+                        else
>+                                pipe_val |=3D MBUS_DBOX_BW_4CREDITS_MTL;
>+                }
>+
>+                intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe=
_val);
>+        }
>+}
>+
> int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *sta=
te, u8 ratio)
> {
>         struct intel_dbuf_state *dbuf_state;
>@@ -3657,89 +3740,6 @@ void intel_dbuf_post_plane_update(struct intel_atom=
ic_state *state)
>                                 new_dbuf_state->enabled_slices);
> }
>=20
>-static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_p=
ipes)
>-{
>-        switch (pipe) {
>-        case PIPE_A:
>-                return !(active_pipes & BIT(PIPE_D));
>-        case PIPE_D:
>-                return !(active_pipes & BIT(PIPE_A));
>-        case PIPE_B:
>-                return !(active_pipes & BIT(PIPE_C));
>-        case PIPE_C:
>-                return !(active_pipes & BIT(PIPE_B));
>-        default: /* to suppress compiler warning */
>-                MISSING_CASE(pipe);
>-                break;
>-        }
>-
>-        return false;
>-}
>-
>-void intel_mbus_dbox_update(struct intel_atomic_state *state)
>-{
>-        struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>-        const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
>-        const struct intel_crtc *crtc;
>-        u32 val =3D 0;
>-
>-        if (DISPLAY_VER(i915) < 11)
>-                return;
>-
>-        new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
>-        old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
>-        if (!new_dbuf_state ||
>-            (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mb=
us &&
>-             new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_p=
ipes))
>-                return;
>-
>-        if (DISPLAY_VER(i915) >=3D 14)
>-                val |=3D MBUS_DBOX_I_CREDIT(2);
>-
>-        if (DISPLAY_VER(i915) >=3D 12) {
>-                val |=3D MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
>-                val |=3D MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
>-                val |=3D MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
>-        }
>-
>-        if (DISPLAY_VER(i915) >=3D 14)
>-                val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT=
(12) :
>-                                                     MBUS_DBOX_A_CREDIT(8=
);
>-        else if (IS_ALDERLAKE_P(i915))
>-                /* Wa_22010947358:adl-p */
>-                val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT=
(6) :
>-                                                     MBUS_DBOX_A_CREDIT(4=
);
>-        else
>-                val |=3D MBUS_DBOX_A_CREDIT(2);
>-
>-        if (DISPLAY_VER(i915) >=3D 14) {
>-                val |=3D MBUS_DBOX_B_CREDIT(0xA);
>-        } else if (IS_ALDERLAKE_P(i915)) {
>-                val |=3D MBUS_DBOX_BW_CREDIT(2);
>-                val |=3D MBUS_DBOX_B_CREDIT(8);
>-        } else if (DISPLAY_VER(i915) >=3D 12) {
>-                val |=3D MBUS_DBOX_BW_CREDIT(2);
>-                val |=3D MBUS_DBOX_B_CREDIT(12);
>-        } else {
>-                val |=3D MBUS_DBOX_BW_CREDIT(1);
>-                val |=3D MBUS_DBOX_B_CREDIT(8);
>-        }
>-
>-        for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state=
->active_pipes) {
>-                u32 pipe_val =3D val;
>-
>-                if (DISPLAY_VER(i915) >=3D 14) {
>-                        if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>-                                                              new_dbuf_st=
ate->active_pipes))
>-                                pipe_val |=3D MBUS_DBOX_BW_8CREDITS_MTL;
>-                        else
>-                                pipe_val |=3D MBUS_DBOX_BW_4CREDITS_MTL;
>-                }
>-
>-                intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe=
_val);
>-        }
>-}
>-
> static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
> {
>         struct drm_i915_private *i915 =3D m->private;
>--=20
>2.43.2
>
