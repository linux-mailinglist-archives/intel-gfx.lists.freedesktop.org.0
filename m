Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F092CA3FDDA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 18:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F1A10E1E3;
	Fri, 21 Feb 2025 17:50:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LCBDEBbc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6962510E1E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2025 17:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740160224; x=1771696224;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cTY5hbp6cvjE739zujk6ZAHNkpQeOOAFUyPk0t4iVxw=;
 b=LCBDEBbcPYBgjQvcByOnhr/bOhox9dboktzroKt1mJUghMimJJd6aYKi
 AM/DKk9oHhJjFTSIaE4LLVCtfL11TXHEPvJPzGEzCu+zaD9Nm+rYniDtu
 B5p/hU8nrDJkjtYd3T8dtvSy+DZv/XCYM/+NP9QCjw83BwZ3A2WbWSZ2+
 LzXMj88UbDHr0RcaS9wp21f3QqNn30R3H/r9UqpDgzIEgqHU569npWwEH
 UE8BgDXnQMINaqVu6vBoSZ6ShUitjm74z9/Q4Xi/rFkiIJs4t79XO6xEl
 XrGRObUFjmk8vCFbuIy5R1CAPcfdgfrXA3G9v8QrJ7+UPDfWJsXNIaUPG g==;
X-CSE-ConnectionGUID: +S4Fi8DPTt+D97m2YbrrEw==
X-CSE-MsgGUID: na81KpnHSYyKFeu9ugNlqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11352"; a="41251753"
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="41251753"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 09:50:24 -0800
X-CSE-ConnectionGUID: P7iOiERWQbmZd1oftZxlyQ==
X-CSE-MsgGUID: WnJLJ5yfTjagRfSyhMAghw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,305,1732608000"; d="scan'208";a="120060643"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2025 09:50:24 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Feb 2025 09:50:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Feb 2025 09:50:23 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Feb 2025 09:50:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t7MDgOCidfTVFfpE+foqszh8OnaGfk5ciXBqTS8eEIM6MqeC2oCE57zKH/UVffec9fTsEbOe62o1EkCB3LOA3AHKPp7HmXFjfwrPnT3YSwBbg5Rb7GNWpIhMdw8/1Do5qHoJS49xaXJo3f56EGrEGHfGfehNbLzZlrLQ9+Glc2wi0BMUCNSRWw8LNfQALCvxZC8g/Ms2K3oiiOIKbGI45r3qdKX3nF6fzsRh91xKoV+4tZz3DWznKKZ6pvMZhEZoLi8w/c5qAbehe6iaYB8b4VcGrhffBqcETClrnYXWdsmQQf0/rLq/Kz3uPK1Vo95K5H2tGZ5feYrf4sgW65vV9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=19GEBpPNOg3eKVdCaxrRwxIwhV1C48HxmCOBq02xsh8=;
 b=xX0RLG5lQI6oCp9+4hJxu9qx4+j6POStXxuLpjIp9IH+M3GNn8qJC30ytWpmfKb3ZxdOEiOvO2Dau3BLgJj5mH33/bMoZUGrA8h6qKHmJf3geFje2XDmaQ9xUcCVFrPU+dUa5XfTJVXykdPDt412N3hEsfQImNG06xqGErHECO0FB/x8+aUKM0grmRPhPcIjYn4j0lqexyyXjUHNf3eNiNZHD2m5FmDxBJvI5TnObsQrPJxHiekNPRzh5XUGku5vU/Tw8/oZAj5Ua73FImaWP1JIl1X+fKM9zegeHILUM22Zklgy6UruLqJxJ6SSpKh8qgvAVYL3QnliraU/ARlPCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by CH3PR11MB7913.namprd11.prod.outlook.com (2603:10b6:610:12e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.16; Fri, 21 Feb
 2025 17:49:52 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8445.017; Fri, 21 Feb 2025
 17:49:52 +0000
Date: Fri, 21 Feb 2025 12:49:46 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mohammed Thasleem <mohammed.thasleem@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <imre.deak@intel.com>
Subject: Re: [PATCH v2] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z7i8ujK0UheqIKHm@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250212114935.21231-1-mohammed.thasleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250212114935.21231-1-mohammed.thasleem@intel.com>
X-ClientProxiedBy: MW4PR04CA0123.namprd04.prod.outlook.com
 (2603:10b6:303:84::8) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|CH3PR11MB7913:EE_
X-MS-Office365-Filtering-Correlation-Id: f3a0c95d-5ad9-4d8f-4a25-08dd52a0238b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WABwHdNrEhoPqNNg+dAUtthalOuWg6J3TQse8A5Z6HQavSady5zIxCgSxlSw?=
 =?us-ascii?Q?7VCpGBLm1mLSJcbMHy1d82g1CPrEenR/TDNI2ksHBbm9YcnDo5uBQVMqiOhi?=
 =?us-ascii?Q?nSZPsiMwXy7scpe+nn076tjqwcSqr6vHaX0opjhMImKWj2yPMu3HUjFKKs0p?=
 =?us-ascii?Q?cTMOKTHIf3bOiMoifwNhItBEMPY9Y64yy/KhrSa5eWmpf/HqrBoebk0Upjam?=
 =?us-ascii?Q?1I1Zxw3ktjrcs+mD2efSoazx//e7jGp3NSIOjL/CNsLTbvquUyq5nkrrsJnC?=
 =?us-ascii?Q?yyiPE14AoUqC3EDhOGrMbs0GmKke9Xqe0swT/gUJq8vk/YNBg4pu388+iTJS?=
 =?us-ascii?Q?+MxUINCIB1aFVyNOWx6ntGsq8Zq7lBds87Lkg7Qxrto+qDQ89wOESshLGEas?=
 =?us-ascii?Q?MZj7KipElnE5NrcWPj0UFBW3868Gl4WsYXBAhN2WFrBQY883RVwBQHkzgg4S?=
 =?us-ascii?Q?YZjKafU2Lxy1sBUEv9TeBoIM6LWc0+DKzSxXHeTL2+QrjJzzxNCbMLICHqAD?=
 =?us-ascii?Q?B8XPWX2Bv9oVkN5ORFv67+MdkHSH6AFtCSvnDfQDNPrvILRTI79vEHc+o/Lw?=
 =?us-ascii?Q?NtECpOutuyMNcYmIWNNGbl4J4wlBYf4IeSyxC4jhds3Idn7jmG3WgoxQubt6?=
 =?us-ascii?Q?zcCPc5vHFsLmImHVaXDCHWKT6GrFtISQldr3c5mDwyM8S1mapZMv72D+N98u?=
 =?us-ascii?Q?0H/3Tw+Dp9LXCWvzFsXAGsket6x+/lvA7QyXlwLDLGq7Jc9QG557qlRS8LCO?=
 =?us-ascii?Q?FxTp+NMoKkx7mVC1yBsZABILwcTmxQCFhrelKvEz7eleze6NSfD/6mYOZs77?=
 =?us-ascii?Q?bUZhF27LD6MfNY0DUS3c0p7r1md5Jh7frrU8EMq81lqPddxJiD9tvui4FewJ?=
 =?us-ascii?Q?fZ9Ymj0ETDHxuGyLVhgabGXGJBXzl+OJCsTi4nl1QS2kqhGpIao+ibqxjpg0?=
 =?us-ascii?Q?v4mlzwd5xOUTBcPaDbqqw0hQxAS/Bn9QCFJISSGLTM0qjNjY8w8Gn4J9d5ZW?=
 =?us-ascii?Q?Pv61vF3BVrTICQlUsibeBLHqsp8rZ11dhKtnuqTe0l6HxqKeL2YN/m83Ojlk?=
 =?us-ascii?Q?RzV/Dg/ctvxE9198n3jjPExTOavbu8Uan4Y03ej5qSklw55EP7927v+Bj9/t?=
 =?us-ascii?Q?5ANCYavvsRrpxViV7EjCgSexcjG4hR91V1gbSg+ftesh5O1pQ2Q3VUjMqQEx?=
 =?us-ascii?Q?w8Wbmnsf/vt/31VUra5CwaGmpffanA6OMAX7eBlmKyPqiLxfz1L35SDoG00l?=
 =?us-ascii?Q?8QDFdxxOMoPQdMcGTLuYxPHDjoCXV81KDRw4Bz+MBlJDIyoqgi7DtcBPKrKd?=
 =?us-ascii?Q?SyCgWlDnaJi0PEbS5sPIG6xi3zJkAqJxtQIkrtD+uf+0j2vmHHa36eq7aFx9?=
 =?us-ascii?Q?GXWztBfj8GW6npt5oiL8q/XkBtye?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o9hJvSjWyo7bBRQzqLVjUYtO+pFIpHK1S6GUkVcelEhsJJtBEBskDZxvn3FK?=
 =?us-ascii?Q?F9OYTyGHeGMXjKaHKP+SN5dbQmzsRDehtpZjZ0Osjk6NSzaaMxPkq5PKeq0t?=
 =?us-ascii?Q?amdsbYt2L3sOWOk5/s5YKhrIVVzvZex90cfeNTlAoBH8lNAM+SzTuBLSZBNh?=
 =?us-ascii?Q?kOzQgxq+aEJShcOIqXB1pTdPIG3cDyln9MO3UadqhbRROm4XC4HVu53zCsXA?=
 =?us-ascii?Q?UX/rHQWw+ymnKqI3Hs3vFoC3KkJgOkZdAeor5b/fIpmgOP/F+DxhnHgaQ6Rv?=
 =?us-ascii?Q?oRuJFLLaSjIb2HUs3GD2vu8ZksnqZeWh5ihx2BWMxj6qzZk1pWr+Xc3381Je?=
 =?us-ascii?Q?t+iKWjcxOzt/Zrbdo6wbisoEW3hck6zS9D83IBjAyH5Y00ylPnnNSPwKQzw7?=
 =?us-ascii?Q?ZYa/tFm70tyar/yg6UJbwi1a5TnIxdp03HHwBVT2IntDu0ociTAkKQxfgRFR?=
 =?us-ascii?Q?mxUqBrMU8BnyqGx/Do7F302oNxQftnwoD/na00ylvp50eDf5ehjPGnZTsk4r?=
 =?us-ascii?Q?A4wMiQVv+wY5Ajboaw25oWBIpjMfwnRC8vz6MOPzN475WSc3l3Kl9MqMt2TV?=
 =?us-ascii?Q?7yWsQE6CKj2TmegCoE3j5oWnSNiOaZpNwnE6S0heUWRAXbyJhJ34aGHCK8Zz?=
 =?us-ascii?Q?caACwt0rsU+6PFivTrFuHOV+Rtye83rwsNSuLGLZtf38cFe2lLTRizUC+wuC?=
 =?us-ascii?Q?O/i2afF4UMp19K6zV6wFnAwNg/MXlTcuqBWCfsA2uSrRoHnCxbQkWSietT9+?=
 =?us-ascii?Q?A9dD1fSyQtp8uNfp3aNyGbjraupTlrbvgeGVNIOsJTb0ouM54BtKuB5maSSO?=
 =?us-ascii?Q?7NVcjrxm20RzaNJ3pNCJP/sldyjE7XWzmRONbmKbx6ELBnuDp/5uo0Q6KFTc?=
 =?us-ascii?Q?Sjiq4bG0O5aIAtRBxMd9kU6wyR0vN6VCCykCyvyZZew266d+I0mx2uvPt5+J?=
 =?us-ascii?Q?MHSzS9w/VlNYoZW9lAtxbUQv7i+Kdh3eYcM8OAfcoegS1g1e9aB8FgVIfPmJ?=
 =?us-ascii?Q?T04bEaT5Zg0ZlKAgOxf8MXWUA9Exazp9nZDlVtlYe0pwHZjB/WxAgUz4GK8F?=
 =?us-ascii?Q?VU+fFR8whvEWbwV+N47eX5u0dA1XYF98wjfi5SbGAEGOj3Ki2IS8qq6YMjna?=
 =?us-ascii?Q?2bMbephK4UA+ao175sjDoQU+2Faw651DMxDIm2Qppk5X9YCDmtPXFkVqYhYe?=
 =?us-ascii?Q?ZAFQS9NN36DZzc+/jAuPz+oH90O4H6BvEkQJwMw7wHVqN7tLA5Mi0lfwLMxg?=
 =?us-ascii?Q?ML9JGx1URD5IPlCLfN31UYFm+V9lxOT7NlCKU0o8fnpyx3gCfxO1OHdTi21X?=
 =?us-ascii?Q?6tz1hR2+2pYQ4rk9zcd7wAbTU41PBrX/GvQijr8L2WoyccZ3iRAz4unyj+e3?=
 =?us-ascii?Q?uLJQSaW8TKZQE53WZb8GsLh7DBWbPZ8wVxhz3buHcJkCee2564mA1AwPURZS?=
 =?us-ascii?Q?azBiojBwkdC/o1k+K610h3LI9tIyBffB3vizBqV30msKX1bvSuBpUae7CtBx?=
 =?us-ascii?Q?JXoe6I4B8EAx2sLe/g2Ut/ZqlFeUgxCfZgONazPkTfavujZpILQWRSdEBrHu?=
 =?us-ascii?Q?OZGgVXJtbIy1wwYsUwVgbdXA/ikFgqDj3603kdiF/E56e1ssr8Mh9m+IDLuA?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3a0c95d-5ad9-4d8f-4a25-08dd52a0238b
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 17:49:51.8744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K0ke6Nw/eBOKwEYlnu0b28SQZcMoKlGwnSDU/Nn+KmBaOn3O0rGj8bADGw8QJkfrZ7d+bpFSePFfrtHHuGAn6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7913
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

On Wed, Feb 12, 2025 at 05:19:35PM +0530, Mohammed Thasleem wrote:
> Starting from MTL we don't have a platform agnostic way to validate
> DC6 state due to dc6 counter has been removed to validate DC state.
> 
> The goal is to validate that the display HW can reach the DC6 power
> state. There is no HW DC6 residency counter (and there wasn't such
> a counter earlier either), so an alternative way is required. According
> to the HW team the display driver has programmed everything correctly in
> order to allow the DC6 power state if the DC5 power state is reached
> (indicated by the HW DC5 residency counter incrementing) and DC6 is
> enabled by the driver.
> 
> Driver could take a snapshot of the DC5 residency counter right
> after it enables DC6 (dc5_residency_start) and increment the SW
> DC6 residency counter right before it disables DC6 or when user space
> reads the DC6 counter. So the driver would update the counter at these
> two points in the following way:
> dc6_residency_counter += dc5_current_count - dc5_start_count
> 
> v2: Update the discription. (Imre)
>     Read dc5 count during dc6 enable and disable then and update
>     dc6 residency counter. (Imre)
>     Remove variable from dmc structure. (Jani)
>     Updated the subject title.
> 

Cc: Imre Deak <imre.deak@intel.com>

perhaps a Suggested-by: Imre?

> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
>  .../i915/display/intel_display_power_well.c   | 20 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 14 ++++++++++---
>  3 files changed, 32 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b..0a1e3dc2804f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -490,6 +490,8 @@ struct intel_display {
>  
>  		/* perform PHY state sanity checks? */
>  		bool chv_phy_assert[2];
> +		unsigned int dc6_residency_counter;

let's avoid the 'residency' name because it generally means time in that state.

> +		unsigned int dc5_start_count;

Also let's get some consistency counter or count, but not both.

>  	} power;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index f45a4f9ba23c..cfa53ee84323 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -17,6 +17,7 @@
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dmc.h"
> +#include "intel_dmc_regs.h"
>  #include "intel_dmc_wl.h"
>  #include "intel_dp_aux_regs.h"
>  #include "intel_dpio_phy.h"
> @@ -755,7 +756,7 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>  void gen9_set_dc_state(struct intel_display *display, u32 state)
>  {
>  	struct i915_power_domains *power_domains = &display->power.domains;
> -	u32 val;
> +	u32 val, dc5_current_count;
>  	u32 mask;
>  
>  	if (!HAS_DISPLAY(display))
> @@ -775,11 +776,28 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
>  		drm_err(display->drm, "DC state mismatch (0x%x -> 0x%x)\n",
>  			power_domains->dc_state, val & mask);
>  
> +	if (DISPLAY_VER(display) >= 14) {
> +		/* If disabling DC6, update dc6_allowed counter */
> +		if (!(state & DC_STATE_EN_UPTO_DC6) && (val & DC_STATE_EN_UPTO_DC6)) {
> +			dc5_current_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> +			display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;

try to keep this under 80 cols. If needed create a function to handle the
new counters.
But perhaps just reducing the size of the variable name above will help you
here and be enough.

> +			display->power.dc5_start_count = dc5_current_count;
> +		}
> +	}
> +
>  	val &= ~mask;
>  	val |= state;
>  
>  	gen9_write_dc_state(display, val);
>  
> +	if (DISPLAY_VER(display) >= 14) {
> +		/* If enabling DC6, store DC5 count */
> +		if ((state & DC_STATE_EN_UPTO_DC6)) {
> +			dc5_current_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> +			display->power.dc5_start_count = dc5_current_count;
> +		}
> +	}
> +
>  	power_domains->dc_state = val & mask;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 221d3abda791..e4d3ce796c99 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1242,6 +1242,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	struct intel_dmc *dmc = display_to_dmc(display);
>  	intel_wakeref_t wakeref;
>  	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
> +	u32 dc5_current_count;
>  
>  	if (!HAS_DMC(display))
>  		return -ENODEV;
> @@ -1290,9 +1291,16 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	}
>  
>  	seq_printf(m, "DC3 -> DC5 count: %d\n", intel_de_read(display, dc5_reg));
> -	if (i915_mmio_reg_valid(dc6_reg))
> -		seq_printf(m, "DC5 -> DC6 count: %d\n",
> -			   intel_de_read(display, dc6_reg));
> +
> +	if (DISPLAY_VER(display) >= 14) {
> +		dc5_current_count = intel_de_read(display, dc5_reg);
> +		display->power.dc6_residency_counter += dc5_current_count - display->power.dc5_start_count;
> +		seq_printf(m, "DC6 Residency Counter: %d\n", display->power.dc6_residency_counter);

 I don't believe we should break the userspace here. Let's keep the old print
for every platform, but have a variable before the print message.

Something like:
if (DISPLAY_VER(display) >= 14)
   dc6_count = //the math here
else
   dc6_count = i915_mmio_reg_valid(dc6_reg) ? intel_de_read(display, dc6_reg) : 0;

seq_printf(m, "DC5 -> DC6 count: %d\n", dc6_count);


> +	} else {
> +		if (i915_mmio_reg_valid(dc6_reg))

I know, the old expectation is that when register is not valid it shouldn't
print. But also this is why I believe that perhaps this should be extended
to every platform, and not only for MTL+...

> +			seq_printf(m, "DC5 -> DC6 count: %d\n",
> +				   intel_de_read(display, dc6_reg));
> +	}
>  
>  	seq_printf(m, "program base: 0x%08x\n",
>  		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> -- 
> 2.43.0
> 
