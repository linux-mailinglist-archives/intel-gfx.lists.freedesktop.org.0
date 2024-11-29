Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2BE9DEB3F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:43:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0A610E53A;
	Fri, 29 Nov 2024 16:43:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JA71NpNC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AA510E53A;
 Fri, 29 Nov 2024 16:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732898623; x=1764434623;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ukUPAZ+sRlUck2gkZ8NjeUFEgXSuEPBq4QElu2+EcaU=;
 b=JA71NpNCX1Sqrj9KyaPMhvYTS0LnnXeLeKc3b9FMw4TZKw/3ATtqIWvv
 3iAGjt4lU7dcUllJsGPSXelkZt6gZp6++NXkDv6lxMtrX/VOHgdFOc6b7
 lXS9VjL5xGBDT01lHlDAmqhi2KhflGPrmcABKYBsocQVF+QUMwkNt06A7
 IjW5dGQKOF2UZPYuMHuA8/hpK6bX02rNrFF0tE4MMrsiNZfzx8MLwI8ZN
 +sLQn9b75WYzlBYJxeIlSPTV1eP2Gx50c0b8EfQZqtwUPHlThj6YOj8e3
 OYR26H0rKNMbrP2yKyd1MCAYN+4anm8aaN+eUeIk6vTR2Erre2MVOxonN g==;
X-CSE-ConnectionGUID: lqSmgdoaSK2MRQn/CG0qAg==
X-CSE-MsgGUID: utC4rG4CSy6W9jb4abJM0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="35999197"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="35999197"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:43:42 -0800
X-CSE-ConnectionGUID: io3cjpiwR9+4fjtww7zpLg==
X-CSE-MsgGUID: Q5jndQMkTSaKh9JYLUVXwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="93369624"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 08:43:41 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 08:43:41 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 08:43:41 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 08:43:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JHDxMWH8KDIfuMIoPSkyFMMO5wtLl7rxRDDthRWvwUTAX3Lx289rlr4MflbFa2cQkWY0lDeLe8Ol6Lam+/iK7t4KKRyPgDq9A2MJM1oIW9y4GexucfiHl8D6Y3qDQU2HeKyImDM2/xlhoZjNY2y/Vlt9XYKgoDX8qwv2Fc3mCwR5WX/OO8fj32OhwU/UQ+bINqmUnFHGa65PKZaMhygyKsFu67fTYnb3atIpW7VDeYLHiVkZm0aAoHLHNk1zqO/a4eOGv/M+JbLO5jbJZgWQjwWwNe8Lz0MuRmhNf0j49T5YSNUAtjPE22oD/h3FyBUpCqCb8vT5P2ViFXleVOzF3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sep4z4utnONzAuwI9I4Q1rL6ID77Sa5muIUXqoaGYEk=;
 b=Dpws/4P/ytkZa4Dd7kKDMq6QAHQradZW81Q9hdhuMBf60650mNMMMsoIC7SgYTq1lNffYb343/aFfR4TbmVpnN8a1TGy/O5IjcqeGdxcG6vQtnnIGN8rx7OBJxJtIxVBnEnF7dmRoub2NkwAn5rTj2NFPtuHSEiAIDh0l30f/Q3LCkn/UqYV+cVN+rLaSmTjptPIAWSw91o7bRDeMEEw/IiRAV/8C48WNvUO8+PS8Jt7+k6z1YSC/byS/phatqiPpg43Ey9PxncS4MJnNk1wby7bKBDTLIxQlWaYsa43/SyOEx1mFUqvhYCKzM9tIRMiysePaIs32G4i7koWa6KDOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 CY8PR11MB7034.namprd11.prod.outlook.com (2603:10b6:930:52::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.13; Fri, 29 Nov 2024 16:43:34 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 16:43:34 +0000
Date: Fri, 29 Nov 2024 11:43:28 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH 2/3] drm/xe/display: Extract
 xe_display_pm_runtime_suspend_late()
Message-ID: <Z0nvMEZBt2y67R2g@intel.com>
References: <20241129151754.22015-1-gustavo.sousa@intel.com>
 <20241129151754.22015-3-gustavo.sousa@intel.com>
 <173289645221.1637.13618914452641694713@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173289645221.1637.13618914452641694713@intel.com>
X-ClientProxiedBy: MW4PR03CA0329.namprd03.prod.outlook.com
 (2603:10b6:303:dd::34) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|CY8PR11MB7034:EE_
X-MS-Office365-Filtering-Correlation-Id: 45a4657d-dae8-4031-e71e-08dd1094f709
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HjiBChnE7/R4Sdj8M8sInS+hqFPDJDMCl5yFbGxDIDtm2HPkerribPoRC11y?=
 =?us-ascii?Q?AqSYkjJyyM4vgyuwcVcGeH+XsU+k0aZefdpy87UkgWQiibj5kZcd1Bo29zxV?=
 =?us-ascii?Q?8sBStm6yyXssd+gpfoSTpGNzK3BIXD8QdLj3O+MIveWFprWEFa3EMJbdyRmt?=
 =?us-ascii?Q?4fAHxMwRmpF21rpQKBs+VrclAZS1oJ8/yqjUBHiDxrMER3qsodVKQ4f+JYK2?=
 =?us-ascii?Q?S/sWdg3o0obF1N0u+U+mfk4npEo5f3JDg734kM24gqMle6f6oQNAVtJeHODR?=
 =?us-ascii?Q?o0mW07PKIL/JUAEp5xbMLiRyiixlf1kECWIIm7zBqxClJF0WmLGnWMfn/W2t?=
 =?us-ascii?Q?qvDVE2fv8aq+Knt8ozabeiiowTgCBwpyHs67Twm07EikeeSVYzJWaRq4o78q?=
 =?us-ascii?Q?jljWXZ6lREUj80mU+EtmYnGVqIwblAsYj1mFkZRWtP1lhshJmc1DRo0aBmzF?=
 =?us-ascii?Q?J/Sr72scCcSpnV8WZLCSqgiQUwWzhED2+9lhFVRRRjuCKaQOhPGiEg2Z361A?=
 =?us-ascii?Q?42A8FFsGfhF6QdQzirKrAlf1rRVnhKNcq36XxZ++XVt/0QSbHgGXrpBJUFMy?=
 =?us-ascii?Q?co8fphYtMK1cIRlAWjoEKJyZ4GUULxnmgCKzZcIzlMb38fyv/wZ8fpVokVq4?=
 =?us-ascii?Q?5bD9ZoEMlAUiG23Mgi4kQ830jXCeAE/98yGlIXYlTPpPzJ8V0RtDwRDWIM1V?=
 =?us-ascii?Q?7PWlV2pFexr67dNRfgzR4VGF2BI18xKHQBY0A6yu4+bXKMjZbDKtu+iL4UUG?=
 =?us-ascii?Q?rOdmDmksnJr2cSuRTqPjIoJS6HaVa5IBd4eupnR3fRCLY+MW43XlzamYooJ2?=
 =?us-ascii?Q?S0ETWrHoQ23zZ5SJuAutfDb4N9R1P9X1rDRU7bu8RxA9grfF8prh1fx1oel+?=
 =?us-ascii?Q?6sWMBnTBfPILsK7/0c+2Y8uiy0WnQJAPyRZjljOeOyQ9dMqOeCYsQdg4/S1h?=
 =?us-ascii?Q?Y9pnFVUmpO+L8TE18tCYC+OefuXOqyNhE5BtwMKNfmDnqkpiDX7BsCx5mx2V?=
 =?us-ascii?Q?8LNSg1vfHKqRvQ34EJT3oeHx2lGrccgbI0fMswTEpGw1jyot5SvkirTiPtHM?=
 =?us-ascii?Q?LmRJtCizGVpvOmwcDfjb+993CxYzUirBGfUS9mM0BThk2daaClz8dMsCpuTT?=
 =?us-ascii?Q?LCwPO42+nQ9btUsFGxAZAVJwPqczepFWKePSkSIjRtsXLIhyzG4UsH7fjPqh?=
 =?us-ascii?Q?HIuDknVOJTlnBIUJMiTLgDIvsY1lrymYil/MwN+ulu65r0C9Wru5LNetr43D?=
 =?us-ascii?Q?U2yEemLyYpntVkO06WlbILX6AA8cMlCgLGkz0Nydl3EROKUeq7tqteU+S8zr?=
 =?us-ascii?Q?iSEpp9O5mASpTM+a1QkP+VEcRQeviFKKZ01q9G/DAyNq3Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CDa8D5jWWJGav9qqpvqoG0yGkJlYN+NVi3I6OyTg5mPlHo+68SRzk97dxv9u?=
 =?us-ascii?Q?+dlflLnEGxBClh4VpS0UbpWOkY1ZDXJ/W1LTyHWacNp4YGj+ELVLuub+3/t+?=
 =?us-ascii?Q?9O1drk74NeTP/4qfKlC573hMPlXZgroLpAC7+L9lpOnPTIjJue8CbQ25yXC5?=
 =?us-ascii?Q?vE41JW6JIRDpcLHpd2VizIRuXrRnieDhFmdp2HTdFwg8YC42qHsadLS5i4Hl?=
 =?us-ascii?Q?1Kih/CUB5ialExBjs99g48XAufp40q/SJVK3WZi+D+u1jezqOW4xm4XlaOE9?=
 =?us-ascii?Q?IfsQlEbZC7BD1czv1y47GdJKtyGhmmPF8fD7c9l9jiqyXMc3N5JBx28v3rK7?=
 =?us-ascii?Q?J2vtzV+fyDj7p9bSjnwMQrSCs+ursNKRl0hHe3LOjwOQ/tWCIxBIq/OVZh8i?=
 =?us-ascii?Q?CR3ab0PgBb3fMJcULPLCPO3yHCphdQ/L4XSErLhpFTWS8GCH+dRHN/SqYmQe?=
 =?us-ascii?Q?jhoVUizsRsg0BZgtevScypbefO4LLB2ZwE2F9YLWT1rTnDc0ny2EcoVK36dj?=
 =?us-ascii?Q?hl4wfOBR12qxAjk7I9FbWhXg7Wam46Fmzi00RCJErM0domaOHizOHYDMnBla?=
 =?us-ascii?Q?xLiEakv/UVnexRcbJelzHIocidi5souAiHTuZLP+99JFgQIPbrj2B3cpCdgm?=
 =?us-ascii?Q?eBKg+4mbBkNbDZK6vKw/1Am/t8kI3mGiGkSeBgaT3KBZXbJc34vaARkQZa+a?=
 =?us-ascii?Q?Uaoh1tAmTsK7X2t3yTJFiro6QnKrnDLqSPvHw7jk38JMjFEigqTdv60OGlnO?=
 =?us-ascii?Q?YIsjTdzglWdmuPAbc97zVUjw9SSZgpMnJYeo03MAVMUZ38iELWjn0N/NNewe?=
 =?us-ascii?Q?hsvogORVP9BkZtvBXoNt/ItO9rLKXfN+KZIPkQ7f69Ine9FJPy0FdLrtAC4d?=
 =?us-ascii?Q?eTUq5krFTArMsU5mmQmubfJ5RKjS7q/GeTSw+fabS2qTu8ItKyIy94QzA92A?=
 =?us-ascii?Q?1YIbbrhj10DcmhEDIri/1OLODSMQ4zuGysl2spBO7obCFIAjNNs+/ISrBWuO?=
 =?us-ascii?Q?MS6+w54itrepgYRHsb3DZ8BgHo8om11EvYciIRYeEhmGjglmrRLDCcGxeTns?=
 =?us-ascii?Q?TALFw0/Fu5sNrft8ScqgOqYJ/miua41JRLfsebiKNXr0hn45D9ShfNVX1ola?=
 =?us-ascii?Q?XHOq7/Fd/S8mkdALYURN73jiTfrXLowghXmZFTjRwC6kUmwRbLcdd8D9MXdA?=
 =?us-ascii?Q?hFNX5xuQ9/PxNuSg+LR4ibq9yerhMGZMGBKMTAFNzdpbppIuy12tm2HJp5Oz?=
 =?us-ascii?Q?tn9JeAkbLsbBpzYZbRlv1RpYp3Ph3S7LBAcXGd2ZkstxqZvVG6kt3hNSDYnN?=
 =?us-ascii?Q?9aSWEUdNMHk/+37Bhh67reSNFjh7cg0vWMXvboMXwfSfd1e96LS3Oc9dk6UA?=
 =?us-ascii?Q?JrotBswTSmcU4o2pxMnilvzNfDpf+fZ2qfFE07ktlnZA5zVE3UGtA+w8JcJy?=
 =?us-ascii?Q?aqff5A3kbnIDKn5OWnXgK1ZTZPxL6v7OH9A8tZH6K+rSb3kKD2hlZsDvsGtI?=
 =?us-ascii?Q?xLhZ9UzyuK31wzwK4KAWbFaz5JzrQMAOHVgRuUKBvebywxT+R6Utoha0OZfE?=
 =?us-ascii?Q?AKC8GUuS4AGOa/yGnI8fRk849gqdqJlyoIgowmbaJTD5QhadRrU64tOjyl8y?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45a4657d-dae8-4031-e71e-08dd1094f709
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 16:43:34.7122 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YvYE2u5uvK3zloREp7S+T0XaJwCZGKSi+ZNKMHASnIBBRoC8EZNN/iWV8G4DeWJgVb+AZm8o0tjOgDkKiT4bZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7034
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

On Fri, Nov 29, 2024 at 01:07:32PM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2024-11-29 12:17:45-03:00)
> >The current behavior for the runtime suspend case is that
> >xe_display_pm_suspend_late() is only called when D3cold is allowed.
> >Let's incorportate that behavior into a function specific to runtime PM
> >and call it xe_display_pm_runtime_suspend_late().
> >
> >With that, we keep stuff a bit more self-contained and allow having a
> >place for adding more "late display runtime suspend"-related logic that
> >isn't dependent on the "D3cold allowed" state.
> >
> >Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> >---
> > drivers/gpu/drm/xe/display/xe_display.c | 9 +++++++++
> > drivers/gpu/drm/xe/display/xe_display.h | 1 +
> > drivers/gpu/drm/xe/xe_pm.c              | 4 ++--
> > 3 files changed, 12 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> >index 69c828f38cb6..2e189abf8d6f 100644
> >--- a/drivers/gpu/drm/xe/display/xe_display.c
> >+++ b/drivers/gpu/drm/xe/display/xe_display.c
> >@@ -407,6 +407,15 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
> >         intel_display_power_suspend_late(xe, s2idle);
> > }
> > 
> >+void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >+{
> >+        if (!xe->info.probe_display)
> >+                return;
> >+
> >+        if (xe->d3cold.allowed)
> >+                xe_display_pm_runtime_suspend_late(xe);
> 
> Whoops... There is a typo here. It should have been
> xe_display_pm_suspend_late(). I'll send a new version.

I'm glad you found first, I confess I was going to miss it.

Please go ahead with the changes and I will incorporate that
later whenever I get back to that display-pm-reconcile series
I have

For the series (with this chunk fixed):

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> --
> Gustavo Sousa
> 
> >+}
> >+
> > void xe_display_pm_shutdown_late(struct xe_device *xe)
> > {
> >         if (!xe->info.probe_display)
> >diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> >index 17afa537aee5..954c5a268ef4 100644
> >--- a/drivers/gpu/drm/xe/display/xe_display.h
> >+++ b/drivers/gpu/drm/xe/display/xe_display.h
> >@@ -41,6 +41,7 @@ void xe_display_pm_shutdown_late(struct xe_device *xe);
> > void xe_display_pm_resume_early(struct xe_device *xe);
> > void xe_display_pm_resume(struct xe_device *xe);
> > void xe_display_pm_runtime_suspend(struct xe_device *xe);
> >+void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
> > void xe_display_pm_runtime_resume(struct xe_device *xe);
> > 
> > #else
> >diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> >index 80699dbeb2e9..a6761cb769b2 100644
> >--- a/drivers/gpu/drm/xe/xe_pm.c
> >+++ b/drivers/gpu/drm/xe/xe_pm.c
> >@@ -414,8 +414,8 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
> > 
> >         xe_irq_suspend(xe);
> > 
> >-        if (xe->d3cold.allowed)
> >-                xe_display_pm_suspend_late(xe);
> >+        xe_display_pm_runtime_suspend_late(xe);
> >+
> > out:
> >         if (err)
> >                 xe_display_pm_runtime_resume(xe);
> >-- 
> >2.47.0
> >
