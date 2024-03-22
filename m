Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F9288704A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 17:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC2C1125AF;
	Fri, 22 Mar 2024 16:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LOhCWKIV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249361125B0;
 Fri, 22 Mar 2024 16:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711123593; x=1742659593;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=veYJByGrnSpq2RW6EwRilM1xzY6TsE0bRwF7k6YGNAs=;
 b=LOhCWKIVEsNSubtzqWiKLS6rYsFu8Ayu+7CsmUYTqHVZK1elPGYE9kUo
 Hc87CEAFdE3d4X0aRaE2mSQiHz8AitpbhcLnDqNrjgDWMUWV3Ks17YL8X
 0G7Xj9uDQpphETr8vVGegVDMn6//4vxbcfOX/0f9jzzotatQFCMfLI6yH
 gGDIYnEFtTMevkzUHMe9kBWvl5yK8AA5Zw5SlXoC9y5LXGKsXMidok+I5
 q5OzKoczIOdEQtSrSpANAivzbO/8IRWiIqOmxO0P4H3h6sOiJaBay8ObI
 itQTA19atgiEH5RNDyLdzQUspYOklO27RSJquDTduKUuTk7vnoZuc5MQ3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="23633753"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="23633753"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 09:06:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="45938599"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2024 09:06:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 09:06:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Mar 2024 09:06:26 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Mar 2024 09:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WCzCSSI9jfYIyQ3IFhu5XfqWiAWbypyHYJZmlqvCCUvwrgttdCBZLm8sZSYmtdHRNI2NzT+shTQI5L/zH4Sa40/E+recW94nb4CegBTG/a46/B1T5oKCUg3BNfnKnSQzt25Y6CQ8tJOLhmnmMiDpe7H31H5+a72mbZBUKPOagqQGrYrQz22d5CONgMP4C93QZsvY43P8NZ4Hi2cIHKvWH+UaIr1oaUE40OWz4A/oLOv7NjsdTfc7xch96+rq9PODRIN+P0U5xbDe9+Lr2q4eGTgEtMMAXXTYVdR44Hxm7RQEGRw8NEp2hiCRX9aZTzic+WyTl9o/MNKGxuz9YNnwRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USFnDZrX9JKsnjCAxnAYXPhtxI6uWQSjUjy3OsaNVy4=;
 b=AAKg3TnoP/YMWqbqXTTF/YpxQ0+HA1dEAozAASckSwslrdwRJwcQzloZ7mzXx2SD7RS0uPJcCA3Pva7zVQihJ1cBGToJO78Z2xyMmhT5ZFzkWpdPQ9yjOXdtTH0ggo5jfl8G3tIjGnQEiSYFOpI+jTJJYB8cGfA0L/26zxQjuS0xGhYQoyxemJhTKiru0RZgbPNk8cvzuVXhbFKxkSJxxrgBQfg8iVr0rWarIdgGFicfHZE5NMq5Fi85mG3tpEXP8cK2jAyTBQNrgQqhbhYMnPWQ5knUmDu8vOIahbeYL5II2dCzX6cnwr0JJS2LPgC0TL1dpt0pIXYEDVZ4iKGsbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7896.namprd11.prod.outlook.com (2603:10b6:610:131::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.23; Fri, 22 Mar
 2024 16:06:24 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7409.023; Fri, 22 Mar 2024
 16:06:24 +0000
Date: Fri, 22 Mar 2024 11:06:20 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH] drm/i915/display: move dmc_firmware_path to display params
Message-ID: <b7o4x73ht2wv6t52h44dofzu36oic3bfazfilt2o4oxuj3zxzg@rzwm4a7cro7p>
References: <20240321161856.3517856-1-jani.nikula@intel.com>
 <87y1ablfo6.fsf@intel.com>
 <64loxwpkjgu2nf4up554hfuqd6oi2quguozom2p2gowem26rbj@rszc3ubdda6u>
 <87v85elkic.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87v85elkic.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0150.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::35) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7896:EE_
X-MS-Office365-Filtering-Correlation-Id: bb21d36c-d226-43e6-b1ea-08dc4a8a0577
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +sXvArvjVdcQ0/rgW2KHj6OmlxEnlJojCn27y0pYd+mQ5UYNmWLg4Rg85j7Ckk1ceiOmOa7jEe4zgdJPMABKpoCzfKmHA7NuHYXEXO3zydC8vxIxK1LY7VGxNmTjXH/l3zEa9r4SvGNYIwPxGhVgm1JFA8lVlCdpztnzwXF2+D+EOKgIOiDVE3xmpfoXeWcSJGMuYlekCRnPWwPYQftBdQyz6cRzPuTaKNvnF2QpFvK/bWs31q3Y4ShThuztuSpnHxbVL/pcHkcjCAq7ifYnqlZd1DQ+iueU06zh4Mw/loSevaDgZLUR4R4Miy+NZueeaJgZOA8NDLkYzAx0LUVBk3ChnMeXcKyANtL6iHYOqrfi55bmUvld6GzQ0+zGpbRhmSA//dB6h1QLwoUUaJKQB9Njp9I5v6i2PTMk/Oq0j2ApBkIqAkJZpdI5gKn+CYPjwj0D+AVdv/gv9MBDmB5M79KkCJtyKulP/70NJZVSvk/4DOcupO/AwYg1fmQMMMZg4QIeKK3GsP0GsQ09UerNm20HBQ8HDLvau98a8Hna9EnzxfuyTf0libUu7n5qRLE7V0TLXGU58NAl5aGYHjOu4RNUxYfJO6JtwfvhfFHr8/9SzsN2MWAWj+eIIcI1s/ULOSBrCG4YWS/HUYAdP66L3TYV2FpD3DzY+t+jmeZTTuc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oRmddVJ9/CNsrzIr/I1HkgXtaqW9uiGSai4WYTYzJhfDLi1CCOXScXJT/Jvf?=
 =?us-ascii?Q?/vEjzH6IzggeSjqrqW39QdYd6dU+FbEVYjqvvY+KWeYTs/JX8ObFvOrYpBaB?=
 =?us-ascii?Q?tr/mR394iF28SqMm8+u7KYIS6ZALXMxcrn0QP9HItnnkDYm1L2LsfPV3MlWb?=
 =?us-ascii?Q?NBYKlTlNHggu5WjlZ+lZ5r7j68wSQVKSszaeH+vB2+h6HcQhYmYC7oZrbYtB?=
 =?us-ascii?Q?CrYYy7EvvCvWtQe1byY0QzvGFp2YIPPz0Hvle4RV/yql2C+Jv/g8iuL7HPlg?=
 =?us-ascii?Q?GzCUmdFlBQOxajd2/YN9thWSNcSILHsONljdXCKEYhjnltah5xJryZoKr6cO?=
 =?us-ascii?Q?NgKuPie7DnItBvozfmQvBu0yEWz8i8c2Vu9ySp3PofIZIG4YmcFYS1aKNTpH?=
 =?us-ascii?Q?sE8gq3eVIU6bDJch5Un+SxYse5iYkDLcHvjZf0RT6K4t3tFt/3LaP6JMHjqY?=
 =?us-ascii?Q?2g8nuG/9MM42ssEVZoi7ry1A/SKih+aDrADlFXvZWx9qctgL6Y1PHo4dW5yQ?=
 =?us-ascii?Q?YfY3g17VAfKmXFHcYwQZ7I0UCYQRDZOalkGvd6e4AsLwMg3z6I3keYVpHD2U?=
 =?us-ascii?Q?ldjduK+9VYvaJC7Dc3fCN8rpCDTyTCmri1H58UYlWkCsx6y8SbDTRsxxVYcm?=
 =?us-ascii?Q?0eAUYkrc7xZ+ptj1FYcyzXcuV2hMZovwhxNVW3C9MFzQ/OKyG6k+yRBzSf6P?=
 =?us-ascii?Q?VWC6BMnL+1xQhb5ISVE0Q+Xgn9yCWTqLOkGFLEttGe4bb+bkERL8a+trkS21?=
 =?us-ascii?Q?cqN/X0fa720hAYEgMTqofYxjc1p7sLibDhqVLY56eGygiAP4peOgINGaOvb/?=
 =?us-ascii?Q?zeTfGX3iy6xtP4DRIpuuWQphnrfk11emslcIXXKMgf4NgL1Od657TLl0+fyF?=
 =?us-ascii?Q?GabYFED4CXfdf0JW7Y1UCO/f+qcSX2Cmudx/34F1tA8rtKxuLfX6TZ5taC1b?=
 =?us-ascii?Q?5bOgv9xaLdOL7PnBqdYdRMosB858xFVknQ4BWTIo614Pcsj7JvVtliPoYA7v?=
 =?us-ascii?Q?HEEbcByb6zj6/UGn20t1qbDM//1p9KQr/N8amGfLjGdpkgrs1mUOge5WF2GO?=
 =?us-ascii?Q?3pLSrn2QgS+pkocFtsHWQ1Fo0hye0LcidhnEjzdAFl0N3PYUtTcINy4VMWP7?=
 =?us-ascii?Q?dJFoQKw4l1k+QGXkMCrFKAwNw6NRiPd4/h3VveQ4csVUxmiBXRwZ7E3s2pPr?=
 =?us-ascii?Q?uTa8FZ7uWlTt5GR0Dow0dQpHmiNhB7KTspfFKYXO75U57bC8yLAJRcRFO3Zv?=
 =?us-ascii?Q?xfoQN9TZ76AKgt2gsbb5M7XThb7Qsx4bVc6PDsPtlTHjO8UM3ubZ9nHGyy1+?=
 =?us-ascii?Q?05MF1B+uVn3xabrk+wSEE58Rb+HR9oYzvWAMrwR+bVAdKdexyqnkUWGOsLes?=
 =?us-ascii?Q?fU1kfgVvKs72zKqZrANR8leZBpxknl2lPQSv0mxDFWym0ZB00xN/o0n7vTDL?=
 =?us-ascii?Q?nYyvvhYNsrjyjdNBirtlxOVS5FuPUV2f7a/0upwK0YAQu0CeUeYCibDBgZVo?=
 =?us-ascii?Q?xv0HdzM+Dm8v83W18u2SgGHV7fJHqGpnwX2aP7pMs6xNua2xwOT6+QYgPvnh?=
 =?us-ascii?Q?b6QO0XAso22R2R976vOHxe0zM0tvPnBFLrHco3Xr1PK14RroLgDGbAZzim2E?=
 =?us-ascii?Q?1A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb21d36c-d226-43e6-b1ea-08dc4a8a0577
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2024 16:06:23.9601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hdx9656/+QUfg/uq+F0CZhXEoZf/Gf9kjW1qLpdl3O+BWn7uWzhe9lihAiyiLqUR+Jm4w+36wa8++uaVWiZ96HjL+ce/oRFYWwYCd13uNx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7896
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

On Fri, Mar 22, 2024 at 10:48:43AM +0200, Jani Nikula wrote:
>On Thu, 21 Mar 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Mar 21, 2024 at 06:20:57PM +0200, Jani Nikula wrote:
>>>On Thu, 21 Mar 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>>>> The dmc_firmware_path parameter is clearly a display parameter. Move it
>>>> there. This also cleans up the ugly member in struct xe_device.
>>>
>>>Hmm, does this actually fix the parameter on xe?!
>>
>> not sure what you meant here. Patches makes sense to me.
>
>Unless I'm mistaken, the parameter currently does not work on xe at
>all. I only realized after posting the patch that this probably fixes
>that issue too.

+Gustavo

I never really tried the dmc_firmware_path param, but current code
contains:

drivers/gpu/drm/i915/display/intel_dmc.c:       if (err == -ENOENT && !i915->params.dmc_firmware_path) {
drivers/gpu/drm/i915/display/intel_dmc.c:       if (i915->params.dmc_firmware_path) {
drivers/gpu/drm/i915/display/intel_dmc.c:               if (strlen(i915->params.dmc_firmware_path) == 0) {
drivers/gpu/drm/i915/display/intel_dmc.c:               dmc->fw_path = i915->params.dmc_firmware_path;
drivers/gpu/drm/i915/i915_params.c:i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
drivers/gpu/drm/i915/i915_params.h:     param(char *, dmc_firmware_path, NULL, 0400) \
drivers/gpu/drm/xe/xe_device_types.h:           const char *dmc_firmware_path;

So dmc_firmware_path is only dealt with inside display... it would be
odd if it was not working. I'll double check.

Lucas De Marchi
