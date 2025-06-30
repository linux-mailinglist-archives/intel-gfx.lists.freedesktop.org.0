Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 757E1AED5F7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jun 2025 09:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68CD10E3A6;
	Mon, 30 Jun 2025 07:43:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YHW/Juvt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8695F10E203;
 Mon, 30 Jun 2025 07:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751269381; x=1782805381;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=3aNsKSNVvxbIoeyOWFpqrElquttYAKJjRiRZ77kKQXk=;
 b=YHW/JuvtLB2slfSekhyhBnogoqnxoNFb2cKxx+/MLSP20dKr8+mMMudo
 CbbvoVi62bsAlfLfzsnguJm2KxReTMO3eqoI8cO2feTqRR8ZJyjaXfRPX
 oScV879BqPRK2fJ0H3+yAp/+I0DPxPNKb+c0f5XcwiPtGVYif5kqRJHOp
 k4obqwrS5TNxkBp7dB/alLf0SLsXr6loPKG3WmADZddKJBCpE00lbPI8D
 gb0GHt9ErQEHl14+6rDDMgE6LxkZJ3iCc/8LcORKUwnUTEDO0mzgA/MTs
 S5evIPUgVWcRb8jVcBbFAJUka0hMgPKJLE+/k98nAO1r9jGXjpJMwJcgK g==;
X-CSE-ConnectionGUID: 2A82jol8ROqcYX25CFJ5kw==
X-CSE-MsgGUID: WzKEjShZTFq/WVS9u6ErNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11479"; a="56109084"
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="56109084"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 00:42:07 -0700
X-CSE-ConnectionGUID: BRkbsduKRdKp5DThoihq6Q==
X-CSE-MsgGUID: 1mP/NsVgSCWTj4cLZ+1Xew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,277,1744095600"; d="scan'208";a="153690830"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2025 00:42:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 00:42:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 30 Jun 2025 00:42:04 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.77)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 30 Jun 2025 00:42:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fYs7Si/3/NqxGTGjIg52syzb4QVPrrN+x39BznYHArDcCsA8ce+r7zQTFaqcvkXsdHeZZpbLNgq2YDD+idrqWtCmZ+AQUnGtMpp+xELIVKzPaBBB5KbvO4fFB9GQrbowC7QakQ1a84A7+ztsTtdirnJ/U2RdxQpqkcDRH8nGy2R55wVy7/PcjP/SK/d/IndzYhzf7YaaQUC2cSTG7hk4aA4ydYOACbYQO7xeOcxi95KawzBfG+Xn9My/fvS89IMSXod3T+XGsY0/GcZLCy9jcdKGh+koY4w5SmuNbRD4csuydcq0urmw/uaAotOWja600WKFFcGZDhL0Qux+tt54HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vIpMrERnKY4t4pYO2mGTfW2XN/diV6w/Y5so7PfQrrs=;
 b=mDtVdF2TEh5rtLQdTbC5KKmKRy9orMjr+3PeiCZNaO/OxUxoUktzHI/+BcJOjP9Jq6oFNHIou3lqaA9TH06t8YHiCHpBWeJWMHfeStjBmiQyvYgU2jNywleLTu9Rv8qt9P8Fyv24bwbohiX2pVcP4iqDUKqTGl7zx4CnIl1WukVPxTpnpALHv19k9NFfCFgpcD/VWxeBVKNf1YlIOz8RLJjsTqSqDL/ttQVYQxDKCanbKIgGchvOzlXMLVuqAUDfBh2NbX8ClSWSyZ2bHGID+Tm0Vf4/hJI9OoP94bfMzyfcMPcD4fzdRepe8+qBeWMzYxO3qRhK67vbWKd95CaGXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM3PPF5217261E0.namprd11.prod.outlook.com (2603:10b6:f:fc00::f21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.26; Mon, 30 Jun
 2025 07:41:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.027; Mon, 30 Jun 2025
 07:41:48 +0000
Date: Mon, 30 Jun 2025 10:41:40 +0300
From: Imre Deak <imre.deak@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: Jarkko Nikula <jarkko.nikula@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>,
 <regressions@lists.linux.dev>
Subject: Re: [Regression] Panel flickering on Dell XPS 13 9360 with
 drm-fixes-2025-06-28 merged (Linux 6.16-rc4)
Message-ID: <aGI_tO6btgJluwUu@ideak-desk>
References: <e8c595d4-716f-474c-99ae-c95a56e65d3d@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e8c595d4-716f-474c-99ae-c95a56e65d3d@molgen.mpg.de>
X-ClientProxiedBy: DU6P191CA0001.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM3PPF5217261E0:EE_
X-MS-Office365-Filtering-Correlation-Id: 28b707f0-d953-4710-f7dd-08ddb7a9908b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4D/OSooieqZ0s11SCPELHk+HrnYT/hKaaZrp96l6euRTegalz9Z/M+mnGKQ2?=
 =?us-ascii?Q?AXzlqjm0rbD2bPi5zr++pC3sXx36OgI7VnUN+y8cXxEXFt41Xlh57SOxnDiO?=
 =?us-ascii?Q?YCauf33Ckp2jEHJlUbvjIVb3bcGvoFKzP7lBTT+ar2rtizPezV3DA2b1lb7z?=
 =?us-ascii?Q?pjJe4oYdKeQIsDJrOs+EbQtrUMFun4xWjNzWf6tP/vHTrwsF/mIkePdjn5AE?=
 =?us-ascii?Q?A25NscNU8VNvOWNl5JpbP/7fojVUB/LgYMGNq6a69Fd5tH+XH3XtRKQlXrNY?=
 =?us-ascii?Q?XR6AyoYB+haCXDtdxjrfF69PImve91gWxNCPsSlkZiX7eDIF9QYovZbXRC2L?=
 =?us-ascii?Q?cTZR3Vl8NBMdGcbiiEOnI/Z7Iqnwvf2GW4YMBpmq6qkXOX1k0xFlhxH253Z3?=
 =?us-ascii?Q?hJWz4URsBAxWGgzBU0/UvS/N13ZIcdF12y/JJJZBsGDgyy3bwjVRKTfcHUAF?=
 =?us-ascii?Q?M7oNONYLgcLEgjMYBkhNWKJFOVgnZdGVP+lduISWIatSd22MGSVcRSq74Jpw?=
 =?us-ascii?Q?oqn5nvXzEOi3PDEyxGnh5yK4cfCsA49QSmzKp0JHsiVr3mg9ifdXbosRXSbB?=
 =?us-ascii?Q?tVejcBYJap5Am4+jxLk9tFBwbFv8pPowIU364E373OTlEBc7F376AFQ3Wqm3?=
 =?us-ascii?Q?FqmGPMq0zFg7y4yxSr5K0/d/7KtjrRCx6zLR19njHLS1F++Yq1nU1AMhy33z?=
 =?us-ascii?Q?0N4jHWLKs031Mtq50Bekc1O5QOaV5Ss5lcYLHQQYj9GBUyRgheL4A22Hxh/X?=
 =?us-ascii?Q?0YA/RHDRXB6lEsWh9IEa3Lguth1P9lmMheHBqWuJyO3e4Dbm07TGVrTEpaCW?=
 =?us-ascii?Q?eAy/APmf72kUUgP2YtPOrymUnx9KTwp8gpE3Ga30qFq5UK6+C9ueYi9MJnHx?=
 =?us-ascii?Q?kbTPxI6RctU3LrV8BKPtP55z0eCCmxet0J9gAljZ4wm3LcZFTnM/gf/wOuNK?=
 =?us-ascii?Q?cRfS9wxL2LTZcqMR8FkAWx2UkkSREA2zxQ60T61VkEAIc/PYRGpQd7xcTAO+?=
 =?us-ascii?Q?lcEvte2Vz2D/o0MidhO6xnXNrC/UZiAEIzGudPfo4Qj3wsy+fhJnGIF+pu9O?=
 =?us-ascii?Q?8wClF2M2jKfTbRKqa8S7c/phuq2DE8JHJwwmwnbB1bnE1s+IAbMTPmy0GoOS?=
 =?us-ascii?Q?ouVLxJZofJZ4umdXBQ4ErXPHsbVEAgBmTl1dKkpq4VcV4kGu0q/m+FynRrXX?=
 =?us-ascii?Q?CM8afvd+/iTBtZw/bAVJUUzZHZ71ZeEs8RS0IE72te4yvMMx6+KGZP5Fd/LN?=
 =?us-ascii?Q?Iyfw9GoCN3SIkQAHkxbwdm54ZmUyk88nzfPqiN7YKcVinkRugmj1DkRZVcog?=
 =?us-ascii?Q?Mi+V3G+atGBkwNPpFDaUju0bYcG1jWYyr6Nq6u7ugg/ud59GdJHkERGD93vI?=
 =?us-ascii?Q?ejG7zio03DKfRRjnssh4t1hAxg/w7GdX47XwK4BuN5xE3qBd+fe1pvi2kgH6?=
 =?us-ascii?Q?e+AcDV57kXI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rSL/XReUhVXHieGwL3IRg1/aZ6yyUi6kxnYR2PBY8rkk4sfdhpfnWfkzRx4/?=
 =?us-ascii?Q?VzsfkiiLg7YeHbpENmAXPGEICwHMJssu5V6nFX61GDugX3+2pP8cI3JtUp/C?=
 =?us-ascii?Q?EWuAXmGW3aJKOV3up7fx+TNIrAIn+elMRP/A7A0uKy7O80exkTqk5o4ftxIT?=
 =?us-ascii?Q?b7gna9lUptEUV+6ReThk4mOi6GiaZ5iwvX/1J+0HJnZIY39wqvYlFlHuWt8Q?=
 =?us-ascii?Q?UZu3VsY2eAlTLA2WE4SoOuvcLPC/22GV4nAa1wlzmwtMcfouqyOmBt9xn5Hb?=
 =?us-ascii?Q?2zt2eljD+FCPMeQsEjA7vvWDsvix7zzkjC3ICBTvkiD4WNRpepgGp0mzmrf/?=
 =?us-ascii?Q?WrVHqzuCfi7+6cUM5UEQlUM0FvH+pqILjwaxf2geOsOZcwnUPc4VbzeNrwFa?=
 =?us-ascii?Q?oVj/JgtUSitzW+KMCiOsWldgXu9zucIGeEMgZF32RrYXUVwPiKUgUIZWOUFZ?=
 =?us-ascii?Q?70ewV4Q22ixJimyc7SzjCeo0vc68WF6fyk55pL5YQUwxfLLOB44QX9aoMvIH?=
 =?us-ascii?Q?7hZofV2KF2/gDl7eqXlxE6Oln9m0sOcpwfXnbNCIywLqXKRHuE0XLzzXinY6?=
 =?us-ascii?Q?liR7iU4Zc7C54lw+sWcO3wLeciVLxW00TlOMg2x8NrfxZ3FJ+bBy3xK0pw7m?=
 =?us-ascii?Q?ZmkXsNG+57DC+nIAjbemrnowvdJIb2ZswCoyvJdFwlHY3PD5c9NFAHepDx7d?=
 =?us-ascii?Q?3qQWhKhRszGeT4qAaQeJLHVUaoqaYa/BlOCoQJumu9VJnrrEougaBA5Mx/zB?=
 =?us-ascii?Q?KGUPR7UTLu9jpIhnkC0ltnmSi7r4nR354o3zOGHhjgcOZqJo8xZhSjBnTJwj?=
 =?us-ascii?Q?j7anA4s7Y+hJ1F0nYQm9VmEm8rKg8+Qk7y+JudDK6U1iapBI7q4uLkk4tJTD?=
 =?us-ascii?Q?wLtPsTk2vseOCWCfjhb4ZJ9ktEdBqLWdtISaEYbIrOZY7+/tSX0wFJ5/rZZt?=
 =?us-ascii?Q?+6BoECTyHgYwM0sIliEDmMsD9zKjp4fuQDaF70ruLn+zAEl8JcGxQklXBvgq?=
 =?us-ascii?Q?jHUYCSM+B2lNw8ShUU+uZxnRRnQrSdQXu7rNSNrrkaFgvEM5q6G61Vdv+2/D?=
 =?us-ascii?Q?TdwhMHjSXjkQpRT+aRQiJRI6jiK+XJDYj+GDWwDq0VrU33IVhImZ47vDWIf1?=
 =?us-ascii?Q?bU8vPONkv9JDPHBU/CNOemUxRnHgUQTDUGyxoyzmnYl4jsnUboje0hOdhdBo?=
 =?us-ascii?Q?Ykj3gwCyDQub4Oj6NQluJzGC5a+hTDXTvDTkUIMoQtowBE0zNjEUKlKKdA8L?=
 =?us-ascii?Q?E8usoOHwid8+A2lHuOfXKqm6Ay2ZLesY4ANX7LG2SGtugO4pP2lYyao2Zapn?=
 =?us-ascii?Q?3kdZx+b+sPgFuAQlRLM4WF22BBbhnuoM/iEpj5doFP7K9+nd5hsXwM/c1Bzk?=
 =?us-ascii?Q?Ugfgqko/1P+7wxkCaX3JxrGZKQnEOsOJIR/wKBUA3v8fNUdL80UP9BkOOUFC?=
 =?us-ascii?Q?a2UOBtnmey3F9K3DXxPGwNLWONFVEFDWREre2Amlh3DXdXUE/NiDJyf/HkyD?=
 =?us-ascii?Q?C0D7wrZD6RG+YgtUld5LC3Peq+b5wIwm85TTf+IHDpAxlnbYy5GzYty5U1i/?=
 =?us-ascii?Q?9te6a+lkYRA5Gg92WnXujbcgzDH92V6S8PVLnphh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28b707f0-d953-4710-f7dd-08ddb7a9908b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2025 07:41:48.4926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: skdDHhr4ijbMk3N2T6aF+F0q8W+a3A0R5DNQzdff46CYjfE8DecvHbrS7RpDgCJWHnA16eJLFtwGCb+6pYs98g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF5217261E0
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

On Sun, Jun 29, 2025 at 11:04:31PM +0200, Paul Menzel wrote:
> Dear Linux folks,
> 
> 
> Just a heads-up, that very likely, merging of branch *drm-fixes-2025-06-28*
> causes flickering of the panel of the Intel Kaby Lake laptop Dell XPS 13
> 9360. 6.16.0-rc3 works fine, and with 6.16-rc3-00329-gdfba48a70cb6 the panel
> flickers. I try to bisect, but maybe you already have an idea.

One possibility is:
a3ef3c2da675 ("drm/dp: Change AUX DPCD probe address from DPCD_REV to LANE0_1_STATUS")

Could you open a ticket for this and provide a drm.debug=0x10e log with
6.16-rc4 and try if the following commits in drm-tip fixes the issue?:

5281cbe0b55a ("drm/edid: Define the quirks in an enum list")
0b4aa85e8981 ("drm/edid: Add support for quirks visible to DRM core and drivers")
b87ed522b364 ("drm/dp: Add an EDID quirk for the DPCD register access probe")
ed3648b9ec4c ("drm/i915/dp: Disable the AUX DPCD probe quirk if it's not required")

I also pushed these to:
https://github.com/ideak/linux/commits/dpcd-probe-quirk

Thanks,
Imre

> Kind regards,
> 
> Paul
> 
> 
> $ lspci -nn
> 00:00.0 Host bridge [0600]: Intel Corporation Xeon E3-1200 v6/7th Gen Core
> Processor Host Bridge/DRAM Registers [8086:5904] (rev 02)
> 00:02.0 VGA compatible controller [0300]: Intel Corporation HD Graphics 620
> [8086:5916] (rev 02)
> 00:04.0 Signal processing controller [1180]: Intel Corporation Xeon E3-1200
> v5/E3-1500 v5/6th Gen Core Processor Thermal Subsystem [8086:1903] (rev 02)
> 00:14.0 USB controller [0c03]: Intel Corporation Sunrise Point-LP USB 3.0
> xHCI Controller [8086:9d2f] (rev 21)
> 00:14.2 Signal processing controller [1180]: Intel Corporation Sunrise
> Point-LP Thermal subsystem [8086:9d31] (rev 21)
> 00:15.0 Signal processing controller [1180]: Intel Corporation Sunrise
> Point-LP Serial IO I2C Controller #0 [8086:9d60] (rev 21)
> 00:15.1 Signal processing controller [1180]: Intel Corporation Sunrise
> Point-LP Serial IO I2C Controller #1 [8086:9d61] (rev 21)
> 00:16.0 Communication controller [0780]: Intel Corporation Sunrise Point-LP
> CSME HECI #1 [8086:9d3a] (rev 21)
> 00:1c.0 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express
> Root Port #1 [8086:9d10] (rev f1)
> 00:1c.4 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express
> Root Port #5 [8086:9d14] (rev f1)
> 00:1c.5 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express
> Root Port #6 [8086:9d15] (rev f1)
> 00:1d.0 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express
> Root Port #9 [8086:9d18] (rev f1)
> 00:1f.0 ISA bridge [0601]: Intel Corporation Sunrise Point-LP LPC Controller
> [8086:9d58] (rev 21)
> 00:1f.2 Memory controller [0580]: Intel Corporation Sunrise Point-LP PMC
> [8086:9d21] (rev 21)
> 00:1f.3 Audio device [0403]: Intel Corporation Sunrise Point-LP HD Audio
> [8086:9d71] (rev 21)
> 00:1f.4 SMBus [0c05]: Intel Corporation Sunrise Point-LP SMBus [8086:9d23]
> (rev 21)
> 3a:00.0 Network controller [0280]: Qualcomm Atheros QCA6174 802.11ac
> Wireless Network Adapter [168c:003e] (rev 32)
> 3b:00.0 Unassigned class [ff00]: Realtek Semiconductor Co., Ltd. RTS525A PCI
> Express Card Reader [10ec:525a] (rev 01)
> 3c:00.0 Non-Volatile memory controller [0108]: SK hynix PC300 NVMe Solid
> State Drive 512GB [1c5c:1284]
