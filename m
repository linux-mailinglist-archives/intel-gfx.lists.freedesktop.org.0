Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB35CAD7842
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jun 2025 18:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C741210E062;
	Thu, 12 Jun 2025 16:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fWGMdsf4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBAF610E033;
 Thu, 12 Jun 2025 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749745823; x=1781281823;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cmf+uTlVPZQh2pw7e9qJ4VCCvGoSRjV83sE3K8j4Yys=;
 b=fWGMdsf4B2bYA9lBt4j2gvy1/iURfYwE+aHHClDP1ZqJ/Bct0GzuFY4P
 LEd36lQ6+IUV4Ape3RRRH0VCxVJU3Y7c/lOXI/0L1Oe0oKa/99SbhsNXA
 JHfZJHhI4EhkR8GqqafG6Lde4U1IBuuGGDUIeoo5oXmkF/tO6WL1K4wub
 b2KHxB4K8UFI4DC4xWCcFSYyE5pVtAy6BzwzXfaW0X+9SOq7Gaf5X8QWK
 nptdIlzVsS5gsv2dzqezmQ4CJVnOQA+9u/rh40eTJsnyZAUKZbMcfv7xr
 09vv4X4CJ8X18Ud4MpKBFhIQPiJfRXpB8hNSfHdYkMoAw77ZEExhQofWA Q==;
X-CSE-ConnectionGUID: JWDIfZkpQDSyc6VdCgpUFg==
X-CSE-MsgGUID: Bs9DbauQRLyqzPE+oJ3fGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62590559"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="62590559"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:30:21 -0700
X-CSE-ConnectionGUID: aNFtiSXkTay4Ibx3KoGfjg==
X-CSE-MsgGUID: KU+/WQTHTSa1zCSaqW0axg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="147462630"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:30:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 09:30:20 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 09:30:20 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.51)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 09:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vCpmGvpMDZxVC9o7XrtxjYzcKebm8uXwNh7f+yBald6DsoV29se9QRkfaMCQhYuE+wbXp0hMa7tI4xxyS38UTsRMaoR40uaw66c8orb6JUvx4UzYgu4OWKpOVBxhrbw31M0oTG/ReHYGZAYeXEwmSxBsNPzQ4YtCXEYBFj3frAYoE00i91j6Xl1LJrxkagZfwJ9o6VjVIJ7qCD/iLzRUNQiJ0/ihgIboOmMcCsHkcgRhP5bf9fWj56plok43I4Nw4hSMGyZCwnbLkRgoV7akKmXXPdZr/uz944mF5xl34CFpjyqr8z+5RRL4R4eRp2LMFHu0oEw1NQ4w99eLFGaFVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3in0ZE6NjNdiTrpbhMB1fnsG+H8AihyuSJhfa0yH4NY=;
 b=VpqgKkCXHm7LbtCO+2jmDgl7T520E6jtMW2AYE3xGpbfxbQukUvPcyMz23jjxF09Tli3tsrp/bCpH25rTXsBdRAJ19utR2Ft/Cd+Uo7nuPp1FX9Kuf3F0tfHh+LirUzY3f4n8c+B2quTdwblkkwQJ0m4RLULJmgVb++SdXxVfSlbOXoJ1lMtCI2WGFB/bVWw7knbli/EKIKDOPrn+l6GlIdEgXrMwJlFL3fWbb1Ji/4ixtz5AA5dKV8m7JIJnpbvvLX5NvVirHG7+xbfK0ASMC3o3G8NiVdovKDXDA3SlBi7KVsHWGlZDd8OV4XDKr8sRynN2yLxXZdjzWJxcG+omg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB5166.namprd11.prod.outlook.com (2603:10b6:a03:2d8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.22; Thu, 12 Jun
 2025 16:30:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 16:30:13 +0000
Date: Thu, 12 Jun 2025 09:30:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 2/9] drm/xe/xe3: Add support for graphics IP version
 30.03
Message-ID: <20250612163010.GQ6239@mdroper-desk1.amr.corp.intel.com>
References: <20250611134431.2761487-1-dnyaneshwar.bhadane@intel.com>
 <20250611134431.2761487-3-dnyaneshwar.bhadane@intel.com>
 <142f581a-42e1-4e34-a1d4-e15e8970d634@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <142f581a-42e1-4e34-a1d4-e15e8970d634@intel.com>
X-ClientProxiedBy: SJ0PR05CA0139.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::24) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB5166:EE_
X-MS-Office365-Filtering-Correlation-Id: 1efccad4-a248-49c3-6060-08dda9ce6843
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RvZYPfxtSqtTC+l/BAmLhjdPa6On04tHiGZMZ4d0aH1xw9f1nULft8U7uKTm?=
 =?us-ascii?Q?4wlVymD/YLQ2OWmUekkakk7Ne4Y+c/d2ngJ52gnOLNkKMPxbJvdgYdfPhtCs?=
 =?us-ascii?Q?NM9zoC7nut9tcLfR5/P5jKteymlUiURYCJpeZL+lmoElDIppPMOjwoePiC8O?=
 =?us-ascii?Q?0GcYDaQjLOc8UJe6q50DTEuVoA/zVbZ/1KOTezBe1OseDBBDvVWpAlVw84Uv?=
 =?us-ascii?Q?j4Ilvnl5vnIo7iH/RF48yZFo82o67Dbb9qBDD2SQS4aLy6BOXcmaagXjamPC?=
 =?us-ascii?Q?bZwUFG7aUzN/Qwe9TygIZ75PvfhJEze1Fzp/4jv/Bednii6x6m7fuku8QjMW?=
 =?us-ascii?Q?9IMm5xlqnmRCnJRUbEPZChldYVPQmNt0vQVPuwAMJ+P3J5AXQJBjsXqQrhXj?=
 =?us-ascii?Q?cdgddRJ/CNMYWbfSxjk1maaDsoJ958R6diXLLGeI+rUsM+2RV0rtTEsZ/m+M?=
 =?us-ascii?Q?pNPoS/VaoCKvcJ+jh8e1rZQCPh07QaANDLtrx0ML2oVbHkaoDWV+mudI+9Eo?=
 =?us-ascii?Q?2MXT3zXbJvH6yVZOAk8BZtX2Um1oyArrJNHHRffBBomm1V+1lKXnb7cNdAFb?=
 =?us-ascii?Q?bLxZGnwR9lJIibf9veF31KlXGxfOwVYG4e6TfzU1QdJ6xksw2ADDupeID+4g?=
 =?us-ascii?Q?ngcVbw3B3yKQgK7bZ8rLmBOSgIiAF9CB7MOVficS1+WeCipJL9sRelwEFQlX?=
 =?us-ascii?Q?KZmYJlv8AvywIlXKIqx9yqC4GjKbqfY5jetb2E31X+F+D+4QpglOL4A/aUna?=
 =?us-ascii?Q?hrYc7XvrFZvZ87Uic9w3+Qm6t6VO7zUZbxP0vQ7Brr3n3fCw+AzhEDXkpyvD?=
 =?us-ascii?Q?hpkNe/ltrq8WdekSiKUdTLqvMzdiCOSp0RJk9L7XM3uTIvIkBmt/R1mbRthR?=
 =?us-ascii?Q?Si3FIPwQ01viRdMHroS1ZjNz8amjx0A2E0yByNadyJZ7VhCdYgqHLx8+8snP?=
 =?us-ascii?Q?VNIA88acWSTSoHYapiOPShI9DfOh0/Bg4VoTBLosesCr5BfX33lGH1m9kazK?=
 =?us-ascii?Q?/ATgjuyf+AsgL0ChZuIYsf5MnivlmOx8//DXRp+DQtwMspXYgwNP2lsk4gI7?=
 =?us-ascii?Q?xl+wqCpxLh4nJbgyMn2hBNBoUAPJaoU94ZGVXmSE4OMITCdSsAxfNY+TctZH?=
 =?us-ascii?Q?qA91/oNa3MoHWFVOZ5079UVX1rt/GnQDv55A09XEGhT08wf3JuihY9wgId8X?=
 =?us-ascii?Q?BL8B8mEXERlxmYgtPyrhiAM7HWRthdDILIvhJtQ2IZm2pHOpMKBDW34Zd6m1?=
 =?us-ascii?Q?hFX3DBHcOTyAtkSxrP2WvvuL2M9W7uAH32fekLSDmPNqN6I3VdgB6p8blv0Z?=
 =?us-ascii?Q?ZJXWsyowOLu3Ijxs4atzcrTBKAHDU+422xHIQqiS3TNvC7NqhxxkrRmlSPx8?=
 =?us-ascii?Q?BEc0llfbwr63sBFbxkc3ULdvqTFoMMrbiJuBhvvJhA0Fg5BYbXCsrH9Cisf+?=
 =?us-ascii?Q?/NHUJ1oTIYo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o2ATGqnHsu1pEFb0EN6Latb3KO9PiJ+sQtnpFs556TYFz3O6kq0i1GZFANfG?=
 =?us-ascii?Q?Qa4DdNIJqFR42lRyttGMRuP3LV3XGXSlpq9tIU0tr1yhpgNvblppU4bUkyrf?=
 =?us-ascii?Q?W/AeECC9VYAD8IEX5ECHb/DZFJsabBeA7KC8H934c7TygZ/dnK0F7TRH6N9W?=
 =?us-ascii?Q?SXPt48lcYbRtskMoURp8ZlIYULRrxfgIcml8vDbYDXYxK6bDWVhEgAJJPnJz?=
 =?us-ascii?Q?Eiat/+kxrw3fKyRH7XycSxZXZ8NplknXHzE5B7+yYgsq39Gy2nn0eqUkvXsk?=
 =?us-ascii?Q?BLT0E3Om3jwzIMclzne7WJv2BSLdBZy4D2ZZQ9vYuIBFMGh3V6w7cEDg7bCq?=
 =?us-ascii?Q?VwFVg3H5ZqPH0Is943Gy9TDpeAJQJaQKEbnGyf3GU2ps794QuW4tYJ5Z8wrR?=
 =?us-ascii?Q?9XMLGIu6UjubrdUIJBUFmVeykgySZkBnGL/9LrZPzl07x1romErMRSM45I0m?=
 =?us-ascii?Q?X02Q5R/vsK6RyZZ6H/boVtMrRE6gsShV/qMYtoy+MOin6+dZ2U0xBSn94UVP?=
 =?us-ascii?Q?LSghOzb1Q0A1/crKuvDPp3dyXaI4OdCsOz8tz8bmFaGmtwCaR8qHmFOxRKLq?=
 =?us-ascii?Q?b7uhg5P6S9r1eJ5HuPm61BoqWIeBJmYmGX99CCOv2DE3GTzgxfoqVXCde9P3?=
 =?us-ascii?Q?Zn5xuI9yxLHFCRu3Bi9E17Uni3PjT14XOS2tqs2vyrHzO//UwoUOkrKtyz4e?=
 =?us-ascii?Q?6ZcVYEHBHUs6t6dXPKzzz5GPm6mTbtM+sOa/A+zD9pS2p9ZUvAZp/5k/WsiN?=
 =?us-ascii?Q?IclOJTQEs6fiHQ140snN4dkwbtTlW0DOIENAf0n2326ZL/luL5Z5aGEY0hXV?=
 =?us-ascii?Q?lCR9mvCv3flfmhoAWB8yoT59ltGHrxb3MvzdtRCwnuugJeMFJy5npa50Pnrg?=
 =?us-ascii?Q?WbLH3goLD6BuuDUS12dngC5JPz3UF9tzJL3BaD7uQ/CwqyZSXKMAl4RFHUB9?=
 =?us-ascii?Q?D947pIY2TxJE8b7/DaWgynA2i6UzzG8iIaRCqSRBSs7LAAXW0mtboFyCwVlO?=
 =?us-ascii?Q?pFTvG3ZdtViTlRWn9G/o1J2qvcC2bGu+ZuV0+Bp0wfksdVxqIZa+EaPfM3H+?=
 =?us-ascii?Q?JgyV8RC1H+OIz3/IUAqpVVFtUi0Ga7LTerIyIPw6gfrfaXY1J6T2pHE4Eb6t?=
 =?us-ascii?Q?CgzlvjrLNJbAtkCPmycqJiLdkZIyDY6qwyPW5uUf/mAo0oVql3CMX4eohIVq?=
 =?us-ascii?Q?mZOkB23k61BYpcFTicSFh18mfsA8hvsIx9Xm4HWihn+7Hwgb5vteB5IH/++7?=
 =?us-ascii?Q?6LZj6jpW4Qdbaqgi9BOJKsPMi3o2HG8s1dDV2IbIa9g5hqUYuyqHi8UA+4jZ?=
 =?us-ascii?Q?oGj7Yf6Nm7HqgqhAj3pjCurizB6fu/KnhlflETfzHCxnGyC8K3MvqllKh+Qm?=
 =?us-ascii?Q?VxZ2BFurDIDVqvhYmS/XmhgDdkgzsUCSDBPh7HKGKcMz8XRoNlE05NlIAbrW?=
 =?us-ascii?Q?ykng1CEaiiiAeDBtMUAubCh6glGnp24GfSCOEEnv6lCERxh2ZUsbjGfzChRG?=
 =?us-ascii?Q?xgpJ4KLl9RgHZkQESpnSB9YIbYmA5zmuirE8c8Gz+R5CQbm8T/JxlksdxEUU?=
 =?us-ascii?Q?lB43llHEVa7At7AaAW3w/9BHtq0TgVVYhTs2mzNfXZafZwFfFbA3eBm237dZ?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1efccad4-a248-49c3-6060-08dda9ce6843
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 16:30:13.5497 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qiz5VhaaC/ahqqmaGL0XvIxP1wgQzoybOWVrkv+28WZ61jHiT7DvsVh5AwnXhAWCC2ZbSbnnL+sPXPy14wPkGboEuDidPjZCYIEocsCK4xQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5166
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

On Thu, Jun 12, 2025 at 12:20:05PM +0530, Pottumuttu, Sai Teja wrote:
> On 11-06-2025 19:14, Dnyaneshwar Bhadane wrote:
> > From: Matt Roper <matthew.d.roper@intel.com>
> > 
> > Graphics version 30.03 should be treated the same as other Xe3 IP, but
> > will have a slightly different set of workarounds.
> > 
> > -v2: Merge and extend the WA onto existing entry (Bala)
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > ---
> >   drivers/gpu/drm/xe/xe_pci.c        | 1 +
> >   drivers/gpu/drm/xe/xe_wa.c         | 2 +-
> >   drivers/gpu/drm/xe/xe_wa_oob.rules | 7 ++++---
> >   3 files changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> > index b5559800db7a..8824a8016b1c 100644
> > --- a/drivers/gpu/drm/xe/xe_pci.c
> > +++ b/drivers/gpu/drm/xe/xe_pci.c
> > @@ -183,6 +183,7 @@ static const struct xe_ip graphics_ips[] = {
> >   	{ 2004, "Xe2_LPG", &graphics_xe2 },
> >   	{ 3000, "Xe3_LPG", &graphics_xe2 },
> >   	{ 3001, "Xe3_LPG", &graphics_xe2 },
> > +	{ 3003, "Xe3_LPG", &graphics_xe2 },
> >   };
> >   /* Pre-GMDID Media IPs */
> > diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> > index 67196baa4249..8693d098aa9b 100644
> > --- a/drivers/gpu/drm/xe/xe_wa.c
> > +++ b/drivers/gpu/drm/xe/xe_wa.c
> > @@ -609,7 +609,7 @@ static const struct xe_rtp_entry_sr engine_was[] = {
> >   	/* Xe3_LPG */
> >   	{ XE_RTP_NAME("14021402888"),
> > -	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3001),
> > +	  XE_RTP_RULES(GRAPHICS_VERSION_RANGE(3000, 3003),
> >   		       FUNC(xe_rtp_match_first_render_or_compute)),
> >   	  XE_RTP_ACTIONS(SET(HALF_SLICE_CHICKEN7, CLEAR_OPTIMIZATION_DISABLE))
> >   	},
> > diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
> > index 9efc5accd43d..5c0d8b720946 100644
> > --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> > +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> > @@ -32,10 +32,10 @@
> >   		GRAPHICS_VERSION(3001)
> >   14022293748	GRAPHICS_VERSION(2001)
> >   		GRAPHICS_VERSION(2004)
> > -		GRAPHICS_VERSION_RANGE(3000, 3001)
> > +		GRAPHICS_VERSION_RANGE(3000, 3003)
> >   22019794406	GRAPHICS_VERSION(2001)
> >   		GRAPHICS_VERSION(2004)
> > -		GRAPHICS_VERSION_RANGE(3000, 3001)
> > +		GRAPHICS_VERSION_RANGE(3000, 3003)
> >   22019338487	MEDIA_VERSION(2000)
> >   		GRAPHICS_VERSION(2001)
> >   		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0), FUNC(xe_rtp_match_not_sriov_vf)
> > @@ -57,5 +57,6 @@ no_media_l3	MEDIA_VERSION(3000)
> >   		GRAPHICS_VERSION(1260), GRAPHICS_STEP(A0, B0)
> >   16023105232	GRAPHICS_VERSION_RANGE(2001, 3001)
> >   		MEDIA_VERSION_RANGE(1301, 3000)
> > -16026508708	GRAPHICS_VERSION_RANGE(1200, 3001)
> > +		GRAPHICS_VERSION(3003)
> 
> Can we merge GRAPHICS_VERSION(3003) here into GRAPHICS_VERSION_RANGE(2001,
> 3001) above just like the other WAs?

It would probably be better to go the other direction and break out
30.03 on those other workarounds so that they aren't incorrectly
applying to 30.02 as well.  We don't have any platforms using 30.02 at
the moment, but one could show up in the future and these workarounds
may or may not apply.

If we're sure a couple years down the road that no 30.02 is ever going
to materialize, we can come back and consolidate some of the entries to
help simplify.  But for now we should try to follow the workaround
database exactly and not make assumptions about versions that don't
exist yet.


Matt

> 
> Thanks,
> Sai Teja
> 
> > +16026508708	GRAPHICS_VERSION_RANGE(1200, 3003)
> >   		MEDIA_VERSION_RANGE(1300, 3000)

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
