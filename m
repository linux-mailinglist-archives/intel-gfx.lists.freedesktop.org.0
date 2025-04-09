Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CFAA82661
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 15:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AD5010E8BE;
	Wed,  9 Apr 2025 13:37:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XrfLV96s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E7A10E8BE;
 Wed,  9 Apr 2025 13:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744205856; x=1775741856;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=maOGuOL8F5ymliKLprZn5gnJW3NypzJSUn/NuxOFR0Q=;
 b=XrfLV96s69hv4UUMFUpjqiK2CBDDVPtMK8IAE3aJKKsj2CdrY2v18VWZ
 u/WYy+v1gpCU1RdzUApGG+I1DG1v+eHqTCg8c4Ps9dxN+H/EdogkdpzqL
 /wHsjEl4h4J8tn1Tdh+LRX4+jor2DCJda+txB6vv0IEtoCrO0QpeeoyWe
 cs+7CmaJJhYttuDNgnRSOuttaegv18PaZEYLOzorCvj9CkdArKG5cWaYv
 i9jb49nbb/bWdg+ZQToIUfgSiS70rqNkHGMSv0C6IW5s0lBSbxJRKuAdo
 X7Z/+xT38weaNIvdW5ocT/0dlGVkGmT2vk0bSHuio7jx+CDZYyP/pff7w g==;
X-CSE-ConnectionGUID: fOEinVpFTRC5oaboS76gSw==
X-CSE-MsgGUID: nPa5GzXvR2iFiVb8qzwyuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="71057502"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="71057502"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 06:37:34 -0700
X-CSE-ConnectionGUID: EEjZc6pKQlWykWcc3HC/wg==
X-CSE-MsgGUID: nVamybzkRMat+Yu7G7ehjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133798080"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 06:37:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 06:37:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 06:37:33 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 06:37:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FkJSAvy4G3qBAexJp+RusyQstA8Pyx+JE+Q41u889QK4UF5M3bhGuUEAMXGd9q/GwaCsUNBuOix0wObya+F8E7RllbFzPnDUJ40JEp+umb+wHHz9BffTEhlNqidAadfJjl1Zd4wgQ/S+sOOif8kYri3LIWR/BxG5R1vCnXaYiqgJQjsPBf5/oEw6lABL5Vbq9ZjxaEEDF1LAXhVLBLPQPhViogdAHEI0B7kvsag6JuTnMHLU4hSRv98gkmsNCK7WTU2VH5NTUufpyFUzQJf4bqxFhCyf9LfOYdb2CtGEgrNQsHmdYL3A9X3Bu8GX3x4uVWGrDB8pOjdUatAVxKlJLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1fVEWVaMWnYMtS67nWuDiOMGD0IhAhoE/MTJXHiEVao=;
 b=Ssgoig1bkDhT/qXn1jfGzpPafD45/K30FPE3gHKh9KhC2GF0BKedcMSxmEFoAQy+VERKUXvZpS6g8gfn4rE9P5RdS5iPjyaCXttJiNp6uQbEffxmHyhRil9Pcds1Ll32rgnxl8rWozF5ydYKu4f9DDr0+VDb4e7Cc8/48J/BY0tKdESAFExQh7p9TFTp8vtzHW67V4ygLOkZNOOYJMSseu/WnX/pSzR+ZK/SEq2Tmh4CTZK9x6bFyMG3k/d1GZCQBZ+s/fX2EXXnX+TKFf+5u6t784UWInkGqq6GxhVkZdLc3u7OVwNAB6ThQZuQx5ICJ/Gexeby2DRzCU8zKy3plw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Wed, 9 Apr
 2025 13:37:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 13:37:17 +0000
Date: Wed, 9 Apr 2025 16:37:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 10/10] drm/i915: Add force link bpp debugfs entry to
 connectors
Message-ID: <Z_Z4ENIrN-czndqa@ideak-desk.fi.intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-11-imre.deak@intel.com>
 <87zfgpwxz9.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87zfgpwxz9.fsf@intel.com>
X-ClientProxiedBy: DB9PR02CA0014.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8606:EE_
X-MS-Office365-Filtering-Correlation-Id: 46f55ee2-c37d-405e-6022-08dd776ba550
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VypmPdCtMAVIFnos6pZwOQOG+f8Dt57y4pRLmvwCWUsnme7ylWi+xStkxFDv?=
 =?us-ascii?Q?0RQKUu+6Yp4cZNlVbOrmHoMqZfdRfGG5yC8gHiD7332gttB1qOepZQFQWX6p?=
 =?us-ascii?Q?EnXCNFNJ96LygHSDRLSPwFfizQX0vB/q0iWky+LdbLFMkBCd9IeTzqNKK3rg?=
 =?us-ascii?Q?8SRoQA+FE9urY6zLUU6DCZVijJB3ir3qFhGY05E552Ur6nOCzPrAV64Udk/T?=
 =?us-ascii?Q?vDCNWl3ZGP3Oc9vLB3kFjgazYov9gTlCf6JWIv92iOQKa1SkmeVtHFG4kpom?=
 =?us-ascii?Q?OpT2pOoWt900/njbXNWetohw/LGbIyxteN+OlfPU1pvguBZTRdocb2QYrvo3?=
 =?us-ascii?Q?IwuyMoZ/vOoJLfdci/RTnlIBBHKq+5NvI0ZYniyQjc613akt4ft0ufAuHKdE?=
 =?us-ascii?Q?XC+8E18muuezkOPuuh8fiqjnJgDoOBTTZm8fHjjk+tQxDxQwJF3FG5seWfdj?=
 =?us-ascii?Q?X6BpEA7rKbkInXv1Xm8z/pAnoHIG7J4Fx40ZwtfOCWZjjt8xcm+XgOscasTj?=
 =?us-ascii?Q?GWbIZMan2lB42+Bz4egCsoUIpWOxwRk5V4UaLE7RR11xhp+jQ6gLk8Wa6fhR?=
 =?us-ascii?Q?GoZ1WCf/uH8ZnqzGv8zzRsQ41qfD4lQe84OuJGZ+vQGlAjTijeBJL6JfP7UU?=
 =?us-ascii?Q?LUp/wgyiod4rgd4QY0QD/Y4O2cXg4WDawiXQXzDoldFE1SCCdHruiGst+9TN?=
 =?us-ascii?Q?XF4rjZiXeNsjv/A2U+eNs9nWyJJaFCzsbvxjJ0/XWC4X+2XU01FypzaL7xip?=
 =?us-ascii?Q?yWYF2jLOnrBq5H30eAjlOHhBlkDZOMQ6NpQWTOq8JEgM3T4HMVWmJuFPGpY6?=
 =?us-ascii?Q?edZdC0R9vk3ynynmeCQnQF8lszE5DULo5Nag2BScCo+XC/c4ka9NvfbwoODt?=
 =?us-ascii?Q?WMZPpMuI/Q7BFDYNpOSgizMDSJpxxmGsyZoLR908ttva5x+2ow/hmzdqmBau?=
 =?us-ascii?Q?BrrJMYcxJYbPY45in9niXURf/iAzxghQFriHnVQ05zmISzBIH9vlGgzVqWVI?=
 =?us-ascii?Q?cakf3Fz+3oDXKxBK9Xr9cDnylZ4v9u2A/Y3PjtL8bz8kSWCly2D4mIAbAQkj?=
 =?us-ascii?Q?X3EL8FI1pZDDVG4t7mEwDQ7+Fi/xPRera8Fglf88vtRABKCgGAqJiC/qCLqO?=
 =?us-ascii?Q?Owt9zYBVJ/r25IygU9EvUdcsCis/4APVDJYRadX2Ab/afLTw4mt3wstfnUWt?=
 =?us-ascii?Q?1iEkohQ1Sg1rzySD6MdN+vJSZJuKtWKdlrup3s+4xAlo/rM60Bzlt9z19d6P?=
 =?us-ascii?Q?AgHEB2yYXkXpA9OK1tvAUXrut54O8nR4p1UJmYEpFBRUwxwvANWP5vawYeDX?=
 =?us-ascii?Q?raH91HDxxZoWUh7XGqi4yLek+jNghVHMfPrv3t8Ahlg96Ve+fe6BBzlWo/aL?=
 =?us-ascii?Q?mlh3AsSaYvWAnpIrLxdebTsVNLf24CV7GOf1Ah2+stfwN+jrHGDINepVY3/F?=
 =?us-ascii?Q?JE0uxgtmOws=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IisPkLSy/I9hALyQnEiRlL+9jLN/GgodgLjArtDP43KMxWrks7fOCB1tTVQm?=
 =?us-ascii?Q?grp6Vp37car5ENrh6yKQ0mkSAlWLqTc42CE5/tUyK5DMQfk97TsciaCRJOXa?=
 =?us-ascii?Q?ufktXPixXYlo2OW3ok550ARbTeYuOyx1HSgPMX1ihP/ZlL17PitE+A5ULRJP?=
 =?us-ascii?Q?JeZ3YYf9YMUwjpgZaEAU8FI6hHSadbCBM+ZMJNUEqIz8R/s7d652VfVH9ALD?=
 =?us-ascii?Q?V5365LCRU3ZXJ/kvjqsjUBxaL4KgBvX8e97D7UZJ1XLMP/AfnZsWRrnK+3l0?=
 =?us-ascii?Q?uMVC1hAfwgILb5dUVDws9lC2ZDBFXQDMfRiMFySFjnQOG0dCj6eJY02qwRgR?=
 =?us-ascii?Q?drx74KureVmYDc8Nw2pSgKAlxTRtQpN/SO3BClbVyoD/4UZ6a0s5JVrZrcF/?=
 =?us-ascii?Q?9F11N21RaUGU9tk3WWOfDOIz1ZV1eB3NLQdl0RW4VsXx5IQ6vNHFGMZRm3eo?=
 =?us-ascii?Q?FcVJ74yhgGHaHnqZJTuudQ+VvQ+rY/8V6bBUXS/GWVLiJ/6a9xY8xeD1+23c?=
 =?us-ascii?Q?dv/ICu6O7RPSCn2ok2GVw+P21opi1gHf/dTfRzhsLRQ2d7cs/n3FkvGy3kww?=
 =?us-ascii?Q?7jOU/XJmtrvMyzQ8T3/CLYqs3FES7b8O3Cek1IFf1dfKLyqJUkJyLxFogEIt?=
 =?us-ascii?Q?N7StTM5YyFt8psK1uxeRQ9xeMDuZvLDsd9kHhr1Lfw0JurkV1mIWVBvBC6+5?=
 =?us-ascii?Q?nTIvq/Au+z72ytbY8zAsMF04NYmdHXy6XQHx/TLe24Ai65ejtufOZmIGLPyC?=
 =?us-ascii?Q?BIRmh7s5OQVZZbyKk0KAywLzR9M7wKVGZn7quNzLPpMrxLIbHL8Gusv5oOkM?=
 =?us-ascii?Q?ZpHuMYaz/qFqoSM62WJPvSGQwUPEhbM5xhEjqcXnh6/OGCeEX/6kBH8BXUrZ?=
 =?us-ascii?Q?EqIANjYau169MoyLNCGFn/VHxWpIIoROHXZXnVEhZtLc5Yw9A16PMO/QP0RB?=
 =?us-ascii?Q?zaXDbcpJteB1GRQujFmUF9+ZOZCJr8pfcgZ/nvdtpbtu21u7NPPwLkKeRRw9?=
 =?us-ascii?Q?S4qN6WCuZNldooHEzzoArNXdUj7dEAcEDwcCvmZseEOvQmCyymAbRWIuBndD?=
 =?us-ascii?Q?td+9FwXK1mYLHAhx0OIF65OtIahaNTTzW12iUSuieTuhIqglueq0JYhOctP7?=
 =?us-ascii?Q?j1/jka33Fq1QvytZsgx+ISE9aRAy4jKnMQJ7HjT0XCJXk7uhz40fV2v8sfeV?=
 =?us-ascii?Q?g7RP20+O81A30i305I4e7Y5t4X7hgBcTJYllPPxAUtwLv7w15+YKD7BQhXVM?=
 =?us-ascii?Q?Jb0Gxvjr7jKRlHmrw0GYakfJkbabGlexJpeUrlXP9jrlbRVI+8qKYTQrPvSW?=
 =?us-ascii?Q?s07C5QGEADkp7ECXdJAsWIYs0rUkVvWcdFV8PpaLgWUQGwyj94v89Dis/Q63?=
 =?us-ascii?Q?cH7jh/6Bz8FIyXYS5U9XKps5VQKDhhrFzNhxA9msRezc+XsayYpx5U9ZyxXA?=
 =?us-ascii?Q?GGU2B4D8kV2gViV1p0rZqE8HMJSNcEFNkHVQtCmEPnCoTNwjroXZKxpiEVW6?=
 =?us-ascii?Q?AuSeFI2zmGPUOQ1ubsMdgMO2MgLYLlbTSGo5rDOlq6mg+2dh5MPe3HaYHJvX?=
 =?us-ascii?Q?33WCYcbOgtRR45Tu+451sI4eDt7y6HaEG6XHWwMN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46f55ee2-c37d-405e-6022-08dd776ba550
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 13:37:17.7855 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B5Jzmt+C9IaSnL3yClemqH4cNO+SEvU2yjGSmRUAL4Dim/Lffz/3Fs0Db5tPr2UGoNPtLtu+isaqplcHU5MXxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 09, 2025 at 11:16:58AM +0300, Jani Nikula wrote:
> On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Add the debugfs entry to force a link bpp to all relevant connectors:
> > all DP connectors and on an FDI link CRT/SDVO/LVDS/HDMI connectors.
> 
> This deviates from the current approach of intel_connector_register()
> calling intel_connector_debugfs_add() which checks for connector types
> and other conditions before registering debugfs files.
> 
> In many cases intel_connector_debugfs_add() unconditionally calls
> feature specific debugfs functions such as
> intel_hdcp_connector_debugfs_add() which then check the connector type.
> 
> I understand the motivation in this patch, being more object oriented
> and all, but it's still a deviation. I prefer the same approach for
> all. Currently it's obvious where all connector debugfs files get
> registered. After this patch, it's not, and it's no longer clear cut
> where connector debugfs files should be created.

I think the better approach is each connector adding the debugfs entries
relevant to them, even for the existing hdcp, pps, psr etc. entries. That
would avoid all the connector_type checks, replicated now in all the
*_connector_debugfs_add() functions. It's also odd to recheck the
connector type on a code path the connector type is already known to the
caller.

This approach would also match how the connector specific properties are
added.

> Please add the connector type checks in
> intel_link_bw_connector_debugfs_add() and call it from
> intel_connector_debugfs_add().
> 
> 
> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crt.c      | 20 ++++++++++++++++++-
> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 ++
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +++++++-
> >  drivers/gpu/drm/i915/display/intel_lvds.c     | 20 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_sdvo.c     | 20 ++++++++++++++++++-
> >  7 files changed, 70 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> > index cca22d2402e88..69831d6f68912 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> > @@ -43,6 +43,7 @@
> >  #include "intel_ddi.h"
> >  #include "intel_ddi_buf_trans.h"
> >  #include "intel_de.h"
> > +#include "intel_display_device.h"
> >  #include "intel_display_driver.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fdi.h"
> > @@ -51,6 +52,7 @@
> >  #include "intel_gmbus.h"
> >  #include "intel_hotplug.h"
> >  #include "intel_hotplug_irq.h"
> > +#include "intel_link_bw.h"
> >  #include "intel_load_detect.h"
> >  #include "intel_pch_display.h"
> >  #include "intel_pch_refclk.h"
> > @@ -986,13 +988,29 @@ void intel_crt_reset(struct drm_encoder *encoder)
> >  
> >  }
> >  
> > +static int intel_crt_connector_register(struct drm_connector *_connector)
> > +{
> > +	struct intel_connector *connector = to_intel_connector(_connector);
> > +	struct intel_display *display = to_intel_display(connector);
> > +	int err;
> > +
> > +	err = intel_connector_register(&connector->base);
> > +	if (err)
> > +		return err;
> > +
> > +	if (HAS_FDI(display))
> > +		intel_link_bw_connector_debugfs_add(connector);
> > +
> > +	return 0;
> > +}
> > +
> >  /*
> >   * Routines for controlling stuff on the analog port
> >   */
> >  
> >  static const struct drm_connector_funcs intel_crt_connector_funcs = {
> >  	.fill_modes = drm_helper_probe_single_connector_modes,
> > -	.late_register = intel_connector_register,
> > +	.late_register = intel_crt_connector_register,
> >  	.early_unregister = intel_connector_unregister,
> >  	.destroy = intel_connector_destroy,
> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 368b0d3417c26..a84bdc83417f1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -171,6 +171,7 @@ struct intel_display_platforms {
> >  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
> >  #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
> >  #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
> > +#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
> >  #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
> >  #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
> >  #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 8ca33ebedce27..0b19a9b5adda5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -80,6 +80,7 @@
> >  #include "intel_hdmi.h"
> >  #include "intel_hotplug.h"
> >  #include "intel_hotplug_irq.h"
> > +#include "intel_link_bw.h"
> >  #include "intel_lspcon.h"
> >  #include "intel_lvds.h"
> >  #include "intel_modeset_lock.h"
> > @@ -5890,6 +5891,8 @@ intel_dp_connector_register(struct drm_connector *_connector)
> >  	if (ret)
> >  		return ret;
> >  
> > +	intel_link_bw_connector_debugfs_add(connector);
> > +
> >  	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
> >  		    intel_dp->aux.name, connector->base.kdev->kobj.name);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 35214d9a8c781..7508aa4e3695f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1445,6 +1445,8 @@ mst_connector_late_register(struct drm_connector *_connector)
> >  	if (ret < 0)
> >  		drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
> >  
> > +	intel_link_bw_connector_debugfs_add(connector);
> > +
> >  	return ret;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 8f2cef36bdf79..0747ef8d6c0ca 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -52,6 +52,7 @@
> >  #include "intel_cx0_phy.h"
> >  #include "intel_ddi.h"
> >  #include "intel_de.h"
> > +#include "intel_display_device.h"
> >  #include "intel_display_driver.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dp.h"
> > @@ -60,6 +61,7 @@
> >  #include "intel_hdcp_regs.h"
> >  #include "intel_hdcp_shim.h"
> >  #include "intel_hdmi.h"
> > +#include "intel_link_bw.h"
> >  #include "intel_lspcon.h"
> >  #include "intel_panel.h"
> >  #include "intel_pfit.h"
> > @@ -2611,13 +2613,17 @@ static int
> >  intel_hdmi_connector_register(struct drm_connector *_connector)
> >  {
> >  	struct intel_connector *connector = to_intel_connector(_connector);
> > +	struct intel_display *display = to_intel_display(connector);
> >  	int ret;
> >  
> >  	ret = intel_connector_register(&connector->base);
> >  	if (ret)
> >  		return ret;
> >  
> > -	return ret;
> > +	if (HAS_FDI(display))
> > +		intel_link_bw_connector_debugfs_add(connector);
> > +
> > +	return 0;
> >  }
> >  
> >  static void intel_hdmi_connector_unregister(struct drm_connector *_connector)
> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> > index 89d26913e2539..3ac6aaa025434 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > @@ -45,10 +45,12 @@
> >  #include "intel_backlight.h"
> >  #include "intel_connector.h"
> >  #include "intel_de.h"
> > +#include "intel_display_device.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dpll.h"
> >  #include "intel_fdi.h"
> >  #include "intel_gmbus.h"
> > +#include "intel_link_bw.h"
> >  #include "intel_lvds.h"
> >  #include "intel_lvds_regs.h"
> >  #include "intel_panel.h"
> > @@ -501,6 +503,22 @@ static int intel_lvds_get_modes(struct drm_connector *_connector)
> >  	return intel_panel_get_modes(connector);
> >  }
> >  
> > +static int intel_lvds_connector_register(struct drm_connector *_connector)
> > +{
> > +	struct intel_connector *connector = to_intel_connector(_connector);
> > +	struct intel_display *display = to_intel_display(connector);
> > +	int err;
> > +
> > +	err = intel_connector_register(&connector->base);
> > +	if (err)
> > +		return err;
> > +
> > +	if (HAS_FDI(display))
> > +		intel_link_bw_connector_debugfs_add(connector);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct drm_connector_helper_funcs intel_lvds_connector_helper_funcs = {
> >  	.get_modes = intel_lvds_get_modes,
> >  	.mode_valid = intel_lvds_mode_valid,
> > @@ -512,7 +530,7 @@ static const struct drm_connector_funcs intel_lvds_connector_funcs = {
> >  	.fill_modes = drm_helper_probe_single_connector_modes,
> >  	.atomic_get_property = intel_digital_connector_atomic_get_property,
> >  	.atomic_set_property = intel_digital_connector_atomic_set_property,
> > -	.late_register = intel_connector_register,
> > +	.late_register = intel_lvds_connector_register,
> >  	.early_unregister = intel_connector_unregister,
> >  	.destroy = intel_connector_destroy,
> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > index 757b9ce7e3b1c..ab7caaa4f287f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -45,6 +45,7 @@
> >  #include "intel_connector.h"
> >  #include "intel_crtc.h"
> >  #include "intel_de.h"
> > +#include "intel_display_device.h"
> >  #include "intel_display_driver.h"
> >  #include "intel_display_types.h"
> >  #include "intel_fdi.h"
> > @@ -52,6 +53,7 @@
> >  #include "intel_gmbus.h"
> >  #include "intel_hdmi.h"
> >  #include "intel_hotplug.h"
> > +#include "intel_link_bw.h"
> >  #include "intel_panel.h"
> >  #include "intel_sdvo.h"
> >  #include "intel_sdvo_regs.h"
> > @@ -2502,12 +2504,28 @@ intel_sdvo_connector_duplicate_state(struct drm_connector *connector)
> >  	return &state->base.base;
> >  }
> >  
> > +static int intel_sdvo_connector_register(struct drm_connector *_connector)
> > +{
> > +	struct intel_connector *connector = to_intel_connector(_connector);
> > +	struct intel_display *display = to_intel_display(connector);
> > +	int err;
> > +
> > +	err = intel_connector_register(&connector->base);
> > +	if (err)
> > +		return err;
> > +
> > +	if (HAS_FDI(display))
> > +		intel_link_bw_connector_debugfs_add(connector);
> > +
> > +	return 0;
> > +}
> > +
> >  static const struct drm_connector_funcs intel_sdvo_connector_funcs = {
> >  	.detect = intel_sdvo_detect,
> >  	.fill_modes = drm_helper_probe_single_connector_modes,
> >  	.atomic_get_property = intel_sdvo_connector_atomic_get_property,
> >  	.atomic_set_property = intel_sdvo_connector_atomic_set_property,
> > -	.late_register = intel_connector_register,
> > +	.late_register = intel_sdvo_connector_register,
> >  	.early_unregister = intel_connector_unregister,
> >  	.destroy = intel_connector_destroy,
> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> 
> -- 
> Jani Nikula, Intel
