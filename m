Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70170A214F4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 00:27:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4F810E3F8;
	Tue, 28 Jan 2025 23:27:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/YjB2Tv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5611110E0C2;
 Tue, 28 Jan 2025 23:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738106833; x=1769642833;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WctTCz4dyoB7w0kB6ZPF/tUP+IKCOsS/+9JbAYuXMrc=;
 b=i/YjB2TvvCtobEs/v8MMQ/N/+r4wFORD4WNCfD/8g07XfcvQ39SN3Yjb
 NHIPEDt8o3KYsNHfEvhbW1p3Ym7l93Y9Cm8U8UMeKhOGET65ThrncNnDd
 rf3RJfnVkM8/yoftPLYHrQnJDq9RRRn7xyaS9MORD9DaKDVBF7UuvMnIJ
 euGkxSex5yeqRwkQfaG+qMpa1dFFwuU7dvyb+tvGsU9UYYZ3mmebLb+aE
 CYblGHUbUfdu6TWL1VT/miZqPgMxhoq5a4peC2Hs8xOexnTieC37YLtKX
 LY5mjalSxEOakA/sNX7CJLWP0VSwUWOcVrnZKnpfOqqVhdUlzH+DU43I6 w==;
X-CSE-ConnectionGUID: VHA51ipFQZW2BW3cXL4WAg==
X-CSE-MsgGUID: SIc0XS4iRw6pPnnQG7UH2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="49996363"
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="49996363"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 15:27:12 -0800
X-CSE-ConnectionGUID: 8VoArCDsSmuCQKSxvV8cBw==
X-CSE-MsgGUID: ADuUQzX3RrCmhqgJisZdyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="108758892"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jan 2025 15:27:12 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 28 Jan 2025 15:27:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 28 Jan 2025 15:27:11 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 28 Jan 2025 15:27:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uNbSyuWnx+jJ6QHLaKqHqQKskAWS6dYLRsGh3wgx8RP3cQvX8y0dVpRyAIN26GGWV+c5Vl0ZT3PMroJOggLT+cPgTKzi43mWR80lk8JvCp/oooGRwykDnAuvSJbCyo76y0IANl97RpejBT38itmQsAaWwFVk5hWRCI79S9F1olltkbeGv8H2fn2/nKnhkuKcVBRz3P7dVBmXfPlnni0ehEF8yFR8XbfYzVBP0frrTzRbqPsr8nsBvR0KivHcc2JpYGtpptPXv5KpZYSCgiyNslW+NXe5JnyPZGpjwcaKIHryww153bwf5Rm9SJoWJPyKkE6zIiSYcmEXyfSBLlWlaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DlkFx4NQqmHndJdKGf2lCaJBMMfbaCAyxT7GkD3POK0=;
 b=J0RMYMLK+gYsyyedtGZwDNPIZMiWopnshywVn4uGDan6MvB2Lwva6IYQswTYz8Ed8kEtk5h5ozWdFyWtUlmKGhE42RcyyNpsr2vl4gqpSIWxbzkc6KK+mXj4JqwWWrzyIE18SwlZrTUgt8NUb/twGeiOTJTFFjfT6aFrd0QsL64QpCXWY5iShat9e5s8OtsAARxZq+PqIj8wAuvYY+aREdfQfeIV4S7AtHcK1fAKS9HHFfvNGskED6s8syB5t2QLSpdRFC+VPTqfpcyTy5duOvjgYP7W2O2hjmD8xHFflYOXCkJCzLLKa1Old99EotFZGkaY5V/uXRUnzSrvJ+QutA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by DM6PR11MB4580.namprd11.prod.outlook.com (2603:10b6:5:2af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.17; Tue, 28 Jan
 2025 23:27:08 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8377.021; Tue, 28 Jan 2025
 23:27:08 +0000
Date: Tue, 28 Jan 2025 18:27:04 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH 3/3] drm/xe: Use i915-display shutdown sequence directly
Message-ID: <Z5lnyOVm6TyKcKAf@intel.com>
References: <20250117220943.506991-1-rodrigo.vivi@intel.com>
 <20250117220943.506991-3-rodrigo.vivi@intel.com>
 <90840106-de7b-4cf7-a74c-455146ddb2d9@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <90840106-de7b-4cf7-a74c-455146ddb2d9@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0062.namprd03.prod.outlook.com
 (2603:10b6:303:b6::7) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|DM6PR11MB4580:EE_
X-MS-Office365-Filtering-Correlation-Id: f00362ac-a7bd-40e5-eafe-08dd3ff34872
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oxQq254sN0LAHFC9QwKO017IXXaYMxRp63UfvtLw2zlVSP4Ysr/Pd3i9g9Fo?=
 =?us-ascii?Q?y3zSjvx2lrrS98ehgMWsZd04CSmwpKch9Vft/jdiTL0iaNEeGn5Ihb1gFn4a?=
 =?us-ascii?Q?+9lm/k8ceXSQH5B4wcJlkBSL6A08cTA3GM2vxdKnd/acfbfBCo3ZBIcH9euu?=
 =?us-ascii?Q?Yz1WcftNSeYiGqVCPgv7CoLxFu2Ey5xBYWiDZXxscEd12FPmp4cyIS7kDti8?=
 =?us-ascii?Q?cUw14GtjUf1ulBg3ywAjOdiCgxshXjhrPAZ96ttM23Kc2ZGbphPZAlF3t1T0?=
 =?us-ascii?Q?ZbLWLYoOJHdGYyzsts4hdL/XvmCurggQmhLgjlsxDDW5mcVt03v1OeRzOe5O?=
 =?us-ascii?Q?q0kJK6JTEUNZjL89OMOBY5D4JevAazAWMQeaWkxvDVV/FGTb720p31cQSToD?=
 =?us-ascii?Q?rnKa3FHawLoTAi0Ijr04r15Q33XlMuTRIJkqur5bpqPAJFXFril6obpXb8g0?=
 =?us-ascii?Q?3APpk/pUQNI8wXl/MflNXEoUbdxwOxfY01G+aEXpan90NJG9smyEHfQGZGBu?=
 =?us-ascii?Q?AzYPcbkN7Y4EVqLMK+myu5fWgO3uVMdeV1xRWOCsH3TlC7+QL7m3uH3bPcFi?=
 =?us-ascii?Q?R3LoP7q1ialTo131Ng2n7WZPfPZCtprCeV+HFPtA61Lfu04lFdfBRezqYnUd?=
 =?us-ascii?Q?KNG1PViFOrNjg/f45p1QnIhQ4UDu5AqIAaft8vo4rq29PS6YEtxgKDg2aYoh?=
 =?us-ascii?Q?t7rWedGXQxHQdErYiehZS02l3/jQyld1HWVJGZIKlG3lQIkAftz2lu7n0wOK?=
 =?us-ascii?Q?rHj6pEIPR6G4XkUdjiL9cmzMQY9qEl3yB7M9ALYUZU8+YZJbopvEoGgCJWhF?=
 =?us-ascii?Q?INkOFnUWGQrskJCkYFwPuCpq1cFY0NUMX4Pdi0PdHuR8oZ/79CnJ1mqRxpPp?=
 =?us-ascii?Q?3ubunXxALiACf0Av4xDWTSSWe1twrsPuHeYzbrkGt5PURsICBkvboL9Yomhe?=
 =?us-ascii?Q?B3INq/CwKYgP7qDVbIVmPzrcrWc9U/9mt7oiiKpv7izpMoBkCsiMg+zGvdXY?=
 =?us-ascii?Q?ubx+wJVRe+Ph91vrgAFEezCvYcgJGri7ih2ZIzDvTx+9jLCnfkuZr6OPkJAF?=
 =?us-ascii?Q?1YAUbN/py7vbctA9143UAks9PsV7lPQtbE86eAMcohYy9HUfa3qCpKyBRmhV?=
 =?us-ascii?Q?jzQxpir0DIdxUiYvkaLJ41TVhL0YT9XQSkYx7f/T/ioiorDVKzi7zvuhsvsm?=
 =?us-ascii?Q?l6wAF+WEzLyhesC2ObS+brIVZdHroQ3dS1FDEVYRmYrFr+ofLXZ5SrL5wtCr?=
 =?us-ascii?Q?eR6784RAZwBI5V0Q0zZqvfy7TxI3vKx3UudO+9v8JRDfxQm7VY9Pn3jIy0Ti?=
 =?us-ascii?Q?hKMD6pbf2jJvoOA2YQRDLgmad68s8JFeayp3y8Zu8LWaCRMdFJ1TKcqRR22p?=
 =?us-ascii?Q?uqRPP88xrOOr027KMsdGuvObOATu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MUDWjCl40rqixjZcDUww47lhU2zDc8A6Ae11+Nzj4MjfkxnjirmlExeRCOIj?=
 =?us-ascii?Q?s2N8gNU6BNNi8fIXFzOvVI0Nz83rSy8d5+TP8U8yIDerPK6t5QDXo8f4wU+O?=
 =?us-ascii?Q?E9MqnZZJ0scPsjhsot29HWn0nfOd2L2TOvKWoS0u4bsuAGVnbLMlQ10Ipp7E?=
 =?us-ascii?Q?hWS6IWYyncQuhvWYx0IRcyDRv+WRwbxViF18b5GaFnGQ9mS3jKRKsu/oBI3o?=
 =?us-ascii?Q?uSrFMDsOvfWTjycCZpa1yJre/+IgjbzvHwAVcKyn7ewKqxcBuWW10U2no9xE?=
 =?us-ascii?Q?8imT5p8lL9kQ+hBpdpY3NCQnIpYibokYHKkCzKoPhL/U2yZXfMoPYuhDEYVw?=
 =?us-ascii?Q?AsGbOGBtc8EQ/Lub3pfry2XNyOZ0vUN6D/5fESr/pkagOXyzTZ3uHBf/+vFm?=
 =?us-ascii?Q?xYL9tn2rweFD2HxhHcqXTWx16Ce1Qk4Eei/jIiz2UwjL6zgMp1+qgxjtj3on?=
 =?us-ascii?Q?nrRD0i4oRiJPZg3+/JFtW3sTTOIARmwu9nrMfZYC/x7UQOTW1HoWdMQ5HfXN?=
 =?us-ascii?Q?Rz2cz3AmKdVbHBt9ZCDuxV54aX7RMJk69uuPef7sjhI8iXaxG/k5SqUEI2/L?=
 =?us-ascii?Q?rU66uwtOb6m6DWuPCrgrfcD8SPrdn6A2lI6UeBCIc5AFmjIAOKEH3yVvvQds?=
 =?us-ascii?Q?H0l40NGJlIbNlDUzp4PujVUsnyiI5l+iod5bsXC+H6JPxUHKHJu4XODxqDNY?=
 =?us-ascii?Q?RbIE3pjEXTNvSpNI7M2nmR+u58wyipJMz3pP/KASD4Ld4FYlSZJh2BLj0Q43?=
 =?us-ascii?Q?ostLeNEQFm5dyZMN/hdolkiK50HZHLXlmj65qE35MZRhYnpW8z9Mdiq+ywmd?=
 =?us-ascii?Q?xJh+3Iuz9oCM+SZ45Ea8f6iDV2Cu0aOnHmyuZuNLtOB+y7NkHCyvkUPCyfUC?=
 =?us-ascii?Q?DgkYzeJdM3FpAzsjF9RM1XnbEFdmHgN1L6rHEN4J8/1mXJ7MwAhmjjR5O3yp?=
 =?us-ascii?Q?Y3YM0hX7ownDXXm/y3+r2jyo2HFXntYsbC0Ca+hl7/iH5p3Qd6fhSFjaLyyr?=
 =?us-ascii?Q?ZUg7RaIAhbeh5NkXYzXeUC7/dY+Tjwji3PUhmYD2WBbC4ZYcUM9Yb5DMwEn6?=
 =?us-ascii?Q?1I6OTG/VCbPXKTZAmzp2jrZnzXCpbnV9C5snHz5xxn5ab1jffpNoZYMoBE2S?=
 =?us-ascii?Q?6kYDrPMRxPU+PtCURbYws+hH2fI6ebVUyaoQ4QIgfpXM4ghImxKm+UEx8bp8?=
 =?us-ascii?Q?8x9NskbCu5u6sEVJBVnpSsGdtt2cq5kELl4ycsWTewDcjCgVXRR27IVrrFQN?=
 =?us-ascii?Q?29q3ZvcvlU65L1bPdW2aNsKfRDkmuPYIWeOPeJdcc7OWxttu0ZOrw9yZ5Kd1?=
 =?us-ascii?Q?x7jj26iIKdbzfwm6vaQlIhXxKo3qnc6DwgLZYVSe0i89Ahqa5K4IjoNucdtd?=
 =?us-ascii?Q?Msuoa+X4u/+enC0TUJdPll5Z+4gH7Vcj76B5QhBLzGYD7jlcSaoLAK2svQpb?=
 =?us-ascii?Q?2DG/MAwXRFe0sQeZQeq/r3nMLpU+kD3p/sLFog3YdhGId/iAXwINJcfh2BrH?=
 =?us-ascii?Q?7CdOfRCZDAoDg/Hvk2GHlgpLPH2U8MX2TxnMSOT5w0faEViioOWa+qu2aOHw?=
 =?us-ascii?Q?cg+A5Y6DhWJ9QAoWx0jmp60cD78O0PqvYs5Y37l5OkK+F/alnzs5kazR6pdL?=
 =?us-ascii?Q?5g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f00362ac-a7bd-40e5-eafe-08dd3ff34872
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2025 23:27:08.5230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IAEeiezZkvySTPVCc+oPtX1f9eEZAcH4Vy1t658p/y7dvCHexo/71IRYOraG6IQST7sNjMTz2wc3eHTbVga98g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4580
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

On Mon, Jan 20, 2025 at 02:42:14PM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2025-01-17 kl. 23:09, skrev Rodrigo Vivi:
> > Start the xe-i915-display reconciliation by using the same
> > shutdown sequences.
> > 
> > v2: include the stubs for !CONFIG_DRM_XE_DISPLAY (Kunit)
> > 
> > Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >   drivers/gpu/drm/xe/display/xe_display.c | 48 +++++++------------------
> >   drivers/gpu/drm/xe/display/xe_display.h | 10 +++---
> >   drivers/gpu/drm/xe/xe_device.c          |  4 ++-
> >   3 files changed, 22 insertions(+), 40 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 4f60d7bd7742..e1ce9eb3332d 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -10,7 +10,6 @@
> >   #include <drm/drm_drv.h>
> >   #include <drm/drm_managed.h>
> > -#include <drm/drm_atomic_helper.h>
> >   #include <drm/drm_probe_helper.h>
> >   #include <uapi/drm/xe_drm.h>
> > @@ -369,32 +368,26 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >   void xe_display_pm_shutdown(struct xe_device *xe)
> >   {
> > -	struct intel_display *display = &xe->display;
> > -
> >   	if (!xe->info.probe_display)
> >   		return;
> > -	intel_power_domains_disable(display);
> > -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> > -	if (has_display(xe)) {
> > -		drm_kms_helper_poll_disable(&xe->drm);
> > -		intel_display_driver_disable_user_access(display);
> > -
> > -		drm_atomic_helper_shutdown(display->drm);
> > -	}
> > -
> > -	intel_dp_mst_suspend(display);
> > -	intel_hpd_cancel_work(xe);
> > +	intel_display_driver_shutdown(&xe->display);
> > +}
> > -	if (has_display(xe))
> > -		intel_display_driver_suspend_access(display);
> > +void xe_display_pm_shutdown_noirq(struct xe_device *xe)
> > +{
> > +	if (!xe->info.probe_display)
> > +		return;
> > -	intel_encoder_suspend_all(display);
> > -	intel_encoder_shutdown_all(display);
> > +	intel_display_driver_shutdown_noirq(&xe->display);
> > +}
> > -	intel_opregion_suspend(display, PCI_D3cold);
> > +void xe_display_pm_shutdown_noaccel(struct xe_device *xe)
> > +{
> > +	if (!xe->info.probe_display)
> > +		return;
> > -	intel_dmc_suspend(display);
> > +	intel_display_driver_shutdown_nogem(&xe->display);
> >   }
> >   void xe_display_pm_runtime_suspend(struct xe_device *xe)
> > @@ -439,21 +432,6 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> >   	intel_dmc_wl_flush_release_work(display);
> >   }
> > -void xe_display_pm_shutdown_late(struct xe_device *xe)
> > -{
> > -	struct intel_display *display = &xe->display;
> > -
> > -	if (!xe->info.probe_display)
> > -		return;
> > -
> > -	/*
> > -	 * The only requirement is to reboot with display DC states disabled,
> > -	 * for now leaving all display power wells in the INIT power domain
> > -	 * enabled.
> > -	 */
> > -	intel_power_domains_driver_remove(display);
> > -}
> > -
> >   void xe_display_pm_resume_early(struct xe_device *xe)
> >   {
> >   	struct intel_display *display = &xe->display;
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> > index 233f81a26c25..a15ec29b862b 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.h
> > +++ b/drivers/gpu/drm/xe/display/xe_display.h
> > @@ -35,9 +35,10 @@ void xe_display_irq_reset(struct xe_device *xe);
> >   void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt);
> >   void xe_display_pm_suspend(struct xe_device *xe);
> > -void xe_display_pm_shutdown(struct xe_device *xe);
> >   void xe_display_pm_suspend_late(struct xe_device *xe);
> > -void xe_display_pm_shutdown_late(struct xe_device *xe);
> > +void xe_display_pm_shutdown(struct xe_device *xe);
> > +void xe_display_pm_shutdown_noirq(struct xe_device *xe);
> > +void xe_display_pm_shutdown_noaccel(struct xe_device *xe);
> >   void xe_display_pm_resume_early(struct xe_device *xe);
> >   void xe_display_pm_resume(struct xe_device *xe);
> >   void xe_display_pm_runtime_suspend(struct xe_device *xe);
> > @@ -69,9 +70,10 @@ static inline void xe_display_irq_reset(struct xe_device *xe) {}
> >   static inline void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt) {}
> >   static inline void xe_display_pm_suspend(struct xe_device *xe) {}
> > -static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
> >   static inline void xe_display_pm_suspend_late(struct xe_device *xe) {}
> > -static inline void xe_display_pm_shutdown_late(struct xe_device *xe) {}
> > +static inline void xe_display_pm_shutdown(struct xe_device *xe) {}
> > +static inline void xe_display_pm_shutdown_noirq(struct xe_device *xe) {}
> > +static inline void xe_display_pm_shutdown_noaccel(struct xe_device *xe) {}
> >   static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
> >   static inline void xe_display_pm_resume(struct xe_device *xe) {}
> >   static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
> > diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> > index 0966d9697caf..53cac055a2a9 100644
> > --- a/drivers/gpu/drm/xe/xe_device.c
> > +++ b/drivers/gpu/drm/xe/xe_device.c
> > @@ -934,10 +934,12 @@ void xe_device_shutdown(struct xe_device *xe)
> >   		xe_irq_suspend(xe);
> > +		xe_display_pm_shutdown_noirq(xe);
> > +
> >   		for_each_gt(gt, xe, id)
> >   			xe_gt_shutdown(gt);
> > -		xe_display_pm_shutdown_late(xe);
> > +		xe_display_pm_shutdown_noaccel(xe);
> From the xe point of view, it shouldn't matter whether we call the noirq
> part before or after gt shutdown. I like the integration into xe_device to
> be as simple as possible, so could we keep the single
> xe_display_pm_shutdown_late() call?

As I had told you offline I was seeing if we could have a naming in i915
more generic like shutdown, shutdown_late, shutdown_early...
However I didn't like that that much... From the i915/display side, the
names still matters... that function can only be called at shutdown when
there's no irq anymore...

And from the xe side, I'm still working towards make the xe_display only
a thin layer for checking xe.enable_display parameter and nothing else.

So I still pretty much prefer the _noirq and _noaccel naming...

> 
> Which reminds me to send out xe_display simplification once more to do the
> same for init..
> >   	} else {
> >   		/* BOOM! */
> >   		__xe_driver_flr(xe);
> Completely unrelated, do you happen to know if we need to call
> encoder_suspend/shutdown in the FLR path, whether it affects logic not on
> the chip itself?
> 
> Cheers,
> ~Maarten
> 
