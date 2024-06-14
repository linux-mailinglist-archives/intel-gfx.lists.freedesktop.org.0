Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7325908D2C
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 16:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8828610ED5F;
	Fri, 14 Jun 2024 14:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gdo1QUo6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D46F10ED4A;
 Fri, 14 Jun 2024 14:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718374646; x=1749910646;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TZVKZGEpahfExVVYg5x/m0XZNJGPrmYLAKrRP8cvRC4=;
 b=Gdo1QUo63hLLygQI7pmfUf6n/nqm/LX8wCOgSZOgXMjXOyVStQIXj6uD
 W1UPa18OIjMhIkvTWwtqH8iROLPdyET48kx8rwuvYNdW0UvOuJaaCbD94
 i6MrUc7E7TckppTsasJ9aszHlhWiPRIGzdm/7JtuvC36auBGMxCrj8bZ9
 eVVxiaWXIx4EqtRCiAiCgTHw4A4qirdok/v2rHYQr+pHdzUl1e3inwFui
 YPaRTyyvd8/8h3HqbBrYW7k3QfgcW4hCd0Vp+PvndB/nLHCSSeDRwXCIW
 AoxGOCFpwJFirahl3tahVVtXvyC/m+V/vhQCUVA8nwkFGfrFIpjXUo+ac Q==;
X-CSE-ConnectionGUID: d0qioGICQgu9iT/knwGaZw==
X-CSE-MsgGUID: ORSPJ9jjSWKWEwrLqzmhxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="19043716"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="19043716"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 07:17:25 -0700
X-CSE-ConnectionGUID: eqjKi24+SmygVUKhyqxwRQ==
X-CSE-MsgGUID: I09Qec4zQ/SVi7/I8vfFdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40646639"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 07:17:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 07:17:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 07:17:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 07:17:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AEogxdZ8G8Ry8MwBF7MolwjlUcG5XkjvFq4j7BtoYGZIkQtaqyBN4WjWPQVRkDyNnGfHJKjfTVnI2TUngepTK+E+mQkiOZV4T4gh1YXDInhXXCaasy5DEvK75oTjbP1AivFmKTTb57IpDp4X902CxTrjJHdCBPR4RLUH4XzvFOeYs5J+pix6g4MYXvF1O2rft0oNa1B0pEdwzXwY8tBGNN2PUJQCNZRx6TNwAfV/HRtOc6KCbUzyAj4hZrOcjAITvM++NTWCBvnwVmMaPsVmslpD6SoVQTLKOd++eiurDYTSoeP8auB2Wa2L1BCkaZIsKBX88bWRO4864UkoMn6sAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZVKZGEpahfExVVYg5x/m0XZNJGPrmYLAKrRP8cvRC4=;
 b=Lq1CU4cJAr5ExjVeW9rXsIQd97WDO63D5KnkiD2cZHN7VIJQFU4l1xyruoOyRD87PRXga7Ld8IYgzP/jQIgknPmN30jYqcOJKOF9v8jTRsA+RT03NVyt5JjOx3Ffb82TR9R5Clf7t5p3OBbrXtsJgoSDPI39gp+wnWT9+Xjb6JX76swSXZzW5JgGUB/3TR34krtdgI6Jbgj+4aFnYCyHyotQVPbvn/RDGfKk1w84oY2ubG8rQwfyQP6ECQSZt6/y8dKH3s4fFGPDx9HrnbGyqG1MZ6IhQ4WuROLtyFNYzvjzhuT1CaSW65k+JdCQwimUUdSHPpou181OSTkgwy8pHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB8371.namprd11.prod.outlook.com (2603:10b6:a03:543::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.23; Fri, 14 Jun
 2024 14:17:22 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7677.024; Fri, 14 Jun 2024
 14:17:22 +0000
Date: Fri, 14 Jun 2024 09:17:17 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: Update calculation to avoid overflow
Message-ID: <2n6yjhtsk5ycborwycs2q6rwr2cimzafj5bekluphsdk2kfuw5@hg7tw6nhdjgo>
References: <20240614044213.377710-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240614044213.377710-1-mitulkumar.ajitkumar.golani@intel.com>
X-ClientProxiedBy: MW4PR04CA0363.namprd04.prod.outlook.com
 (2603:10b6:303:81::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB8371:EE_
X-MS-Office365-Filtering-Correlation-Id: b2d55e88-941f-4a06-f829-08dc8c7cb542
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?anNoJV5uguPdH2Qc6jwCN1VbXQMg/FKH2zgywDbG8kgeNQoBduHMtst1EpC+?=
 =?us-ascii?Q?+yCTweiyKDZoehFEnaXfoKm15NI2aN/Z20xgv9pnpTYSiUyWgalGmsDFNtaX?=
 =?us-ascii?Q?8GLJwPDN39qaYIdzUi1dNHWgI6U3PO0y4XmtFrr+SQzJEcQjYbzzGjl/eE0S?=
 =?us-ascii?Q?03lntU79egJbCl8BDteRa0W1jF7tLdyAhknEDzHOWs4hWgaGaiW9OeXqdV5n?=
 =?us-ascii?Q?APKIN66DOQcdr0kLHa90AzbMYMRnCkfl7w4GA2ChtyUrEXCmdds3ZjD1ieLu?=
 =?us-ascii?Q?F8RLnHcmpQXnKx+8PxvIJY6w/GmKDiU1ws5eRtM4JtvjIYlEZ8FZu/gmWxj1?=
 =?us-ascii?Q?xoIWpQ/8L7Dx2xUb/hbCosQYTRLJgyM6+EGTTag5zYK44OSUHZ+6uUFftEKq?=
 =?us-ascii?Q?3l01kNRpCKpSq7SmTvRA3N5QD3ScoRg9gYO4wPZpb+RpKD9u+R0lenWtJaty?=
 =?us-ascii?Q?OpVafrV/ovNFqdY2ISBF6htf8B1j2BmKe5fmKDLFtSzVoWPL/v9Ngw3yrzWY?=
 =?us-ascii?Q?xLznSC5R3e5bSGKFpzGgeLAAHJycAAct0HlEvGIPuxTgaaz9zKUIC5U4Hc6U?=
 =?us-ascii?Q?uRXqeaWBCy55381o7SpHpf7akEEIhbafteoZPIekWoo2UyzHfJr/rDI2k45h?=
 =?us-ascii?Q?Jj+0AySJdcy81Q05Vt1CQCjzrHxM262Cxx9PiRPbVW1QMx4X9L/XDRMSL6Xh?=
 =?us-ascii?Q?Cx5UZ+Xi3zvD2apqpeoEov2mJQ6euHI7eo2a2fNFLfZaxdfBuugYq4m6cJZa?=
 =?us-ascii?Q?PMrV/xlwrdVFIFPqLKaKm6DlM5GBg+DOpr+9HiSohIG1LCrdTy9PD7XU8H1F?=
 =?us-ascii?Q?iY16vcDEtFmp5QZVke7Koak+ql/CH067y9U1rmHVf2TUQgDCOmZRt7ZNVnQc?=
 =?us-ascii?Q?QI5Mk7VEwz0gpMJIxq8WmrmaPOhEjMhxsqpnKHnqNkkfgfDi+FB59ILcWDpA?=
 =?us-ascii?Q?I2g31xdEAVi11fDtX//4QvSEbL4zVRbeyuhfOGpMiRQlG96QBpqgxK4quU9o?=
 =?us-ascii?Q?bj2QRlnvDwUWgMjWL7ui6vfJL2G53ww/LovTS9ZpxY2vD3oMHE8E+jlJn82j?=
 =?us-ascii?Q?ui2KVeWoSIISou6L09dEi1qL87GM69jNkjcVPNSvKGy5OJjlE8HjOyO4alpj?=
 =?us-ascii?Q?+Rk6J5UlRFQ3OXBPWM+KnmJgEb5o5oW1+J6isaVLld05VstUrhYNZOty9+0u?=
 =?us-ascii?Q?Cn6G8jZRN3H1hp/7VgAblIITf3jn3eV39N9Cg/dA6xePdoX0mkkplIndjuco?=
 =?us-ascii?Q?pV+M+reN1LpEASOPnGtnw36K8AGgVIQYp883QxdNU+g9wYB8AQ1pJuu0BkH5?=
 =?us-ascii?Q?FRbqzTrpSk4DL/tfAW1xTS7P?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QGy/dnRzlfT9pUkgEXwpxpukDvBCHZeBlNUXK8qj0SemFEl5PQPQSXJPcAO9?=
 =?us-ascii?Q?HtsJNK1hXu4uSV0I2teO/o9razyxO+sMeRGhd+6k8V4ITHW8olg1UeWHV928?=
 =?us-ascii?Q?sKz/eEN/Vs0DiZx0hBZsbrNbsOfDF3H2fi37VbCQYfLfuwiYxsr0vwB2PkgZ?=
 =?us-ascii?Q?HrTkUGOnqhTyf3jP06FluOltCyJcWNlCOooXApufGLH7NyAl9zLu0syG4FEX?=
 =?us-ascii?Q?63syoDETLwk2My3e2xMhDKAsi4kBXO9SZzovgdHaAashaHoR76A0p8taSBYk?=
 =?us-ascii?Q?YNCP+l3B/lvFyL2IFmtuu881OSr8pyTQCzvNsleVWyahSkrLEzWB+bVsyUfm?=
 =?us-ascii?Q?S9jAP7jhrSh+acXFlvKN+kxtLHr3UKn7wxHjdqU2i8cAFaeObCHBe1odoOpN?=
 =?us-ascii?Q?/+hKThmKZde0Wfg5lfGGa0QZF3i9WEWgBZm195dn6QB9hoV06zTHfu+j+LUC?=
 =?us-ascii?Q?9uHApFH4VH2GWvml8PvEyAh2jMsvuawGe7Cpmc1XgeE+KZ2Kys2uJ+WQ6Xod?=
 =?us-ascii?Q?uwKlOc1y+5xZAT2sAFMrqSPQzE8+s03Xxq7H4hDNor7n7jg0bhIYFtduz8gE?=
 =?us-ascii?Q?/HpHEsvYfUCKkyLk06W/OIKxJ6BM478PremONAtqxR4/xnFT4sKdm9UguM+C?=
 =?us-ascii?Q?VwexRUBDB885sx2P6INqENWAyO9pH9+c43LtyBRp4hF7a2zFJXAdIIE1o2fa?=
 =?us-ascii?Q?n3hhbKHG+fepYKQxDcRYvnyB/MuYXjLCO5t0h+8JkJzuNM9Dqyb32IzJHZEc?=
 =?us-ascii?Q?X+bMyLQ3XOuik+OKl5Tqhyba9n9HtShfeD4xQboQmZ+NTvJpf52EHVQZIfHp?=
 =?us-ascii?Q?D5w8WaQ4g58k8aj8QVSsZ5g7eiIRaTDRKxi/804jLSmVdJZj6dbO/r2/bLFA?=
 =?us-ascii?Q?Ok2AraL/JKRrSrQHNk8grlUdR7KRHRNx/zIm5AKlZ3f0Z/pLp97hOTRrSGva?=
 =?us-ascii?Q?94nw/vNhLn7uH8BuSfMFftVznT8tpmqBZl8sh9EOFA2HHZDoFQjv0nMBYPuv?=
 =?us-ascii?Q?6O0pvRg1L3IHAHaXS44j5Vzu59vMV0hxizY9NUc+N4lTwnlqwMfoQYkbYFZk?=
 =?us-ascii?Q?o8ck4tA7munDLImLot9U8vNIvIud3YsN+2CHxdXFwkPt/X3COBcagnafYVcE?=
 =?us-ascii?Q?iNtxgQiHUK3B+BoCS4/Rps5UB5YEgnLN6LhYXMKJ09L7HO38jHCsRnzGBk0C?=
 =?us-ascii?Q?5LbfGw6VG5WJB1bd05dkTOEzbWl5yZU/kZD1ggP7a2NNeYEAL9fzHr7AekG1?=
 =?us-ascii?Q?3QWEcbukHin1ygBRz3oywWGq/TA8bIq9njB1Ry+B6A6WpfcuNSrUJ+lN2t1B?=
 =?us-ascii?Q?5l0c+Qm0LW87tJ+19cj1248eI+hVusOKXAWq/dkEDf+WMjIOuAX3v7s9xUO0?=
 =?us-ascii?Q?+56IE2szbhOGKRJ3kxYq6cmnW64Vi8nSQdd6+ShKrjZZ8vEnAgX0897F4TDR?=
 =?us-ascii?Q?hT5MamUGvnat4HHvDmRcF2MUo3LlbzN7+44kSykKkH1YaCHSToPqaztiV6vu?=
 =?us-ascii?Q?/I2hg38GXo6jQmhBFV8HU1gq+6JvhfHmuJQ7MSS4dxgWfThpHz3Xw2r2eYqI?=
 =?us-ascii?Q?6xNqEAaBa1o4JkCkOEdojPurDaxxQSWOThialauLryYi6xJjlHirnMBefOtu?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2d55e88-941f-4a06-f829-08dc8c7cb542
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2024 14:17:22.6040 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tYYU27PJI7cjeP+gd3ZqWS6l1iv9tE/T+pc5nZY1gkOBZ6nX78CuwBzIyuN0qTkSwlo2CwHg/DaVFdLnS21hC85NxPr7fbTpftLkbSsvhIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8371
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

On Fri, Jun 14, 2024 at 10:12:13AM GMT, Mitul Golani wrote:
>Update calculation to avoid overflow.
>
>-v2:
>Remove extra line between cc and signed-off.
>
>Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
>Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Cc: Stephen Rothwell <sfr@canb.auug.org.au>
>Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
