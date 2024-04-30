Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 263BA8B7F3A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A229112DC7;
	Tue, 30 Apr 2024 17:49:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iAhHUZiw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 448E510EE7A;
 Tue, 30 Apr 2024 17:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714499353; x=1746035353;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h8hFyMojdR/kaI4XiAinNnzmyOIXfzpEZdGC0raj5/Y=;
 b=iAhHUZiwYX5i5Y9MGICdPwbpYDxkpt0pP4VM0YzbCRhCmTCsU5yXy9SM
 fif3PtndeFtwyODiq/V7S9mZRzFmLaXUotmIOKrLD/dBtgfltlVe6PRxZ
 KRUVkUhemsj9kgxUwwFAKLlYVJw1cRWB/trybfX9mBLA6wZrryf5Kx5rF
 rUR/JexHlpjoWz+DITpMVMrWTcQWmQbO7D4WDX08uoD5m3tge/IAyfrlw
 Kc6i+BhAUsuX4KV/hNyFCD07Pi+KJCXZ6YuJuapNw2JbK5m5UG+LRb0gX
 lSeHqgJY64yXaqxqIAzwtThVcZULES0z8d5S4Hmnc+0d6mJo9u2IPM38e w==;
X-CSE-ConnectionGUID: MQssWeHGTWG1k8cMBlJuzg==
X-CSE-MsgGUID: LQy7CdqPSZODAbKtlJcwhA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14017161"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="14017161"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:49:12 -0700
X-CSE-ConnectionGUID: KxcrWHwZSrOuyboHtMQXkw==
X-CSE-MsgGUID: uMiZGQXnSI+gwio8eGMylA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="49747450"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 10:49:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 10:49:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 10:49:11 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 10:49:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O75A36EFGWsn+WotJ9yQn2wBCWaAieeih+hKg8GhTwJFlLZfqa2hQ+e26rkAJ87OpZNzwo4ofqKSPf1z/FYn9lX2L42myGkTIZOJ5+CseZJ18ACtvz6kqu4CVbiEc5Snj6R7+tArm5udNsK+5cV9PfciIO8b/2CtiXiFEwMtPPFi0Va6/VrH6WmaJAM6vdtvEAx/KfXwFhAuWk3oNY6gwh/ZT+KCeDM6PE/PXv0YjLgJ2yZqilTNLDYVHDUvuNWrGD+YAIAn0oUmEXc9y5p+FqikDPAf9D7DnZRAxOVj2XtshX+X5TxdsHug3u2DdT50fJplPCiZkylib0wGcLm5zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z4EA2l480GvBcnk3mfJQ/VJRWlu42pSfaSRvaxeAYrQ=;
 b=CIMER1ukISVloeC3mhU/20o8Et8x95LVqfiSXm0MgZLSe/KEU6D3dqIZWZ1DPQS60ZvwEWnNv4E002hx38NAdQQTQ3Tw2aBxwS/4M30oOjG6ZihOe3VLXHEmEtgNtJQWdXse6dFo2YbTbXf1t79oHR8sYXsf5CrTWeF3IyOqPF8uU+AUYH6QwrDX6BNMd3OPBb3FiUH2Shi6TXQoB+yAVwpJrfO6kSz2SsLY5NhnMCQA60ISEArFQWYlsx2EwwDVvbwUyRImY+FbwhJj8DraFfauKVOaodtwMFaUBUGPSajevg2grr2qipiJZn7uwU27Bo8UTPDdS4Z+I5v8dwIhKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Tue, 30 Apr
 2024 17:49:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9365:d8e6:4e8d:8711%6]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 17:49:09 +0000
Date: Tue, 30 Apr 2024 12:49:06 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>, "Shekhar
 Chauhan" <shekhar.chauhan@intel.com>
Subject: Re: [PATCH v3 19/19] drm/xe/bmg: Enable the display support
Message-ID: <zt4b4u37gxu6pfwnwu7ia2oiin3uz6u3uciaekrglwemvwlkmi@wkavseqkvhh5>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
 <20240430172850.1881525-20-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240430172850.1881525-20-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: MW4PR04CA0043.namprd04.prod.outlook.com
 (2603:10b6:303:6a::18) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB6889:EE_
X-MS-Office365-Filtering-Correlation-Id: ef99205a-75c6-4625-a053-08dc693dd645
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xSiFrl7ropTJEQH/zfOTG3Tyzgha1PX7U6dwHx7HXcBBPibjWs+NavYahevY?=
 =?us-ascii?Q?KMZQPDA6H8Cm464dnfctGi7Bg9VuPZMoDe4A2swWNHa21EEwlc6zUv9jz2xe?=
 =?us-ascii?Q?MvQKvQkeqtdki/fdkHlVTvTCH5c1VZf5EEJM5yrHruGn+bHyP5U0JZfnbZaf?=
 =?us-ascii?Q?NvRXvSOvMgRTpn/FacUNsHsY9ZH4QcivJL8koLuvV9FZN+rYmxK0sU2GhasW?=
 =?us-ascii?Q?2/WNbjBOdMeGzX5jca+3pqt1v3AXxnpxlPn//0VH4zPle0ZuzeuFZadJLGfq?=
 =?us-ascii?Q?1NkPkaLaDXg88wxRXDGpfJbG5KfGOJcyo4QRrAYf+/F4bJXRGqYakN9wzfu3?=
 =?us-ascii?Q?UeMAse1/YHgv+n4LLcCf6dscMxB70vbWRbGraj80Pyz/R3kHLUkqgMY7YSlt?=
 =?us-ascii?Q?zVRzgSXi1PPLSXIIJgDyCfk4kspWiWbSwzjtlHfuGnxQw4BuObS13mBiIATZ?=
 =?us-ascii?Q?evROlSMTtSbnvYhbueoVJmO5GQFkdFEwUrsM6CqQUl3uZdYTg1YFcWQUxEh+?=
 =?us-ascii?Q?hspeiFjw0sAjRSdLWF/94/CdlwoZvtKzVNucDnW5rZDNT882ouRGYHsIk+dR?=
 =?us-ascii?Q?Shk7fUHJdn1sfnGG0N0wfMgKCs/SeAUmL1Ss+CCeP5am/iu5ZATANLRRxdlX?=
 =?us-ascii?Q?I3xi6Pj0E3qlhMLEjU8HmC/m3GzYx3RbdT50JajR6SLhuRDy7DCl/qrRRSU+?=
 =?us-ascii?Q?aiOyAsdbFH2am7/wrLxOtVc2xixmBbCEDZtBAS6uUW0/5cnAOw3THfAEcyde?=
 =?us-ascii?Q?HizDizF11JLCv1VegWakdNVQgoXDDUxqNvrRn+GtErxSOu2bmthC8DAF9Ced?=
 =?us-ascii?Q?7dFDnskFxwvi6EahXK4qR3ivVjRaV/sFaksMhqe1WV8qFgFGLQUQ6TvE+jK2?=
 =?us-ascii?Q?PZ7Nvq+LBQSMYS1z4ITj5Rmsd+QHP9bq01Ur5DweWdEMGXOf9LWVKEUk1ACI?=
 =?us-ascii?Q?TEqm3Mffxtyi5PY71i7dZMYyaRjxyfnNWvKmykXr52t3Q2lt65dLGSnnwaAi?=
 =?us-ascii?Q?bFYzOqSdOeeUUBq0NUp+kfiJAIGPf7I94NW5VcDUM+ex/Yp4fKiPmLbaJReo?=
 =?us-ascii?Q?+NEQN/nWObcvDrPymCiKpUDlXqHcteH19qm4vTmHAJKQKCEBQXnmiFB736/a?=
 =?us-ascii?Q?mteyWXUghZwCQn/iq0JEhppKTci+x9WIOntw6gUEE42HXSc7ecfDGQzw4LWn?=
 =?us-ascii?Q?HK6QXTBouSS/tDSfrDkkeY7aP7rfo4ylyHsNkOhRO8AcBWWHKr3s24Yfn4/t?=
 =?us-ascii?Q?SG190bEqkxQkzQXujggWKc/u4sZzso7BuhCobmQSyA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bwlKxCYiQ9LrwT8Jx3zjiGKpip+yYeOIxSdWUpbHM9oEEdqkBClx7EN3Uh1g?=
 =?us-ascii?Q?patmgQMZVVQQvgiOpdPhq9QKlFfECTng2Wrm35t86obvyLXogfldaUQ86XMs?=
 =?us-ascii?Q?yPujVnB6dRZhPWHN7G/6cpiEH6Zn1KzoscFh2+PES3c43P4jnt8/IMbO5kLL?=
 =?us-ascii?Q?dYpSPfx1OaI0Si0PMyT63hNrL0KK+8nx6RwopOPtkYCY+/HEfOZO/wz+2ITu?=
 =?us-ascii?Q?+1sMgBqWBu1JZgQi4OsGxhMk04h5QYfs3hsM9H4XtFYkA5dfZiaIzrkUZqVy?=
 =?us-ascii?Q?9gFVr8keETMIWg0ClHEN7dh8YdImcIwVBlr0SV+xCxGrL7oVWKvArq5QFBcY?=
 =?us-ascii?Q?FdQwK7JvdXi48ioIke7KJCGVdFgyo08PTtqp15MP0yTTvsrtXjM6wIFjn/Mb?=
 =?us-ascii?Q?dHFn8SGM1ILQ0jAQOy72pdIOxX4bDEZv3AMsuEbMiCxYfEJ4ljEcSBfVYmjH?=
 =?us-ascii?Q?gPBVdWwZS2oAqaOs7sjeI8Cny97HZVyGpcZp0aKWWs5ytlhg1gcZ2zYiUzjC?=
 =?us-ascii?Q?94Fg6fzxjLNFK5qL3SB0bDIUfE3w9VG1MdyJxwjUcD7hRFFRFsIFfqujQCWm?=
 =?us-ascii?Q?DSSwtBAQi1rf5XqzW1zO8mkUJFsY+wXrYPzVFbBI6JIgBu6UwzZPnECfFkke?=
 =?us-ascii?Q?11lN8w2cK2pbIZX22RzMKgYStUQ0WoiXvNB4sA3gHQcYExkZPbcCt8ccWYfb?=
 =?us-ascii?Q?9qHd1ep9mkhyzo6Vqn7QGMgzzHuvIfh+kQzv2TYnsur8lz0/u5MU2C2OCjvp?=
 =?us-ascii?Q?tgOeHsIhrIy/ALctiphmYQUs8DQ7bhSwwNggBfgdQOgZ/n0yuAL2n9GQJKLd?=
 =?us-ascii?Q?LBp0gFQPfvwA+K1Vd4XmGfFxZ/YtDnWh/D6rh2z2grfKtcWI7+/ja+5JKenz?=
 =?us-ascii?Q?Y4vLjFdtV8YzBK9kQXF6MZIBpMoemi5k+7lQ4rpogPIv+YVseh2fnoyzNttr?=
 =?us-ascii?Q?ERo5gLd8pB857GBk5PD9HC3fDfMdxiggb3ppTHzsUzDJc7rF3cUECkU6UWJe?=
 =?us-ascii?Q?pheBehROoZEZ9QGjrCkuZJ1d8A+fpKKRtGmgmWWTamCDiGwhIe5UyZr2kg8t?=
 =?us-ascii?Q?u5/Pec99VxUsktvRCKAFHvOmgjKxTvSM2k7uhiRJmcdtjoXxokjMHzaX9hDM?=
 =?us-ascii?Q?Kr4U5a/YQUmrPpRkwhiG5oZBOoe1cXNudGaNacakqIA310VIzE6qOLDG5XMi?=
 =?us-ascii?Q?lCKWWG3iNgfgjjKO8vBhbkahl9u509+4jARzjmxyJmRqhSdRxWbJR49lVAty?=
 =?us-ascii?Q?Tlto3zyfC93Fjay9v7apVVpF25EzLGvNO9pmDsd72qz3kskScj8FqcdIovA2?=
 =?us-ascii?Q?NecoZDOLOsnZHHXBL3TbzT8WFpxFowGY8yN5BP466eQNoB0CSuak1D7eJTku?=
 =?us-ascii?Q?v9QxpxZye1bxZZMaXAgmINd53CIWEMBGVM+f+dobQ1l2ug1qqWAeselLH3af?=
 =?us-ascii?Q?C7FK4OIb1ta/+EIH+DDKY1/EgH9gYXdcnvK6l8AsG7wagU1W/ANenSNZ8bTI?=
 =?us-ascii?Q?o7N+LDTUTj+mnL9E8v75sS0Uj4qW1HaUxRALfhEQPbH9SDc5zbS1AlLY2Sfw?=
 =?us-ascii?Q?2b7/2ryLUzdFIrfJifTB0LhBxCaYM87zjGS+tAJBAi2gZQuYoLEBu/Jt+pAL?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef99205a-75c6-4625-a053-08dc693dd645
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2024 17:49:09.0169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DmqvfZnCNJr0kbrcAs3G3BoSmfk/uIlEty3dP2G3EoduwJ6ul3MpyQ07CZQrdGLOW1ajy7hJlEIXGJRBa0fR/NGifsfk8QXqxJyfC/reLxc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
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

On Tue, Apr 30, 2024 at 10:28:50AM GMT, Radhakrishna Sripada wrote:
>From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>
>Enable the display support for Battlemage
>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
to merge this through drm-intel-next once we confirm it's passing CI
(and tested on BMG).

Lucas De Marchi

>---
> drivers/gpu/drm/xe/xe_pci.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>index a0cf5dd803c2..b01b1d30976a 100644
>--- a/drivers/gpu/drm/xe/xe_pci.c
>+++ b/drivers/gpu/drm/xe/xe_pci.c
>@@ -342,6 +342,7 @@ static const struct xe_device_desc lnl_desc = {
> static const struct xe_device_desc bmg_desc __maybe_unused = {
> 	DGFX_FEATURES,
> 	PLATFORM(XE_BATTLEMAGE),
>+	.has_display = true,
> 	.require_force_probe = true,
> };
>
>-- 
>2.34.1
>
