Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5F6C85325
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 14:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 681E610E3FB;
	Tue, 25 Nov 2025 13:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAVeFVuf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467DE10E3FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 13:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764077814; x=1795613814;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=v33PpHl8DCQXaIrLgD4Bdc5QDTQCfzbc3F1K1bP2UQo=;
 b=aAVeFVufda9+uosWbljZAyuDJwK6i44Ih0n3KJeA+1rSrZkTcwnBdg6X
 k7WjZkGmABzT6CqKW7Zj6CObSPuBQis9oTkS7zFbzkjnOO1KOvi98nL0K
 NMZvxEaNUKSMamUXwh52miuTmKdnjiGss9WYKJfZRVFMKix8eX5FWdBiY
 ne6kl+u4BaWfeaBcQzjdIJQCOCARC+259lZH8Hh8elAMBUQZ2Xxv0RgcY
 54UFHnaOanWgdarEvjppsBboaktFOsh3iYY4w3poAvY2WTgjtLA7OzrWT
 nKtHkMlW9z991oSqFQLLrxjgujy/2OWcCdMB3RvI27mNnXWS7kLnLa31N w==;
X-CSE-ConnectionGUID: fTAJ2uopTumAWUZvXORgfg==
X-CSE-MsgGUID: RSVr59MxSKCJGH0WKlJLwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68684217"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="68684217"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:36:54 -0800
X-CSE-ConnectionGUID: ABKvJ0BMQjiSkoEZZC3FQg==
X-CSE-MsgGUID: nfNiwdKoSGOlZb0yUdF+Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="191779451"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:36:52 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 05:36:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 05:36:51 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 05:36:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w4TtDN6YGCQFqxstUxrwtBVotTHpknxel+UlZIctZs6HdD5r4zZUdmDAufJtDXcX+n64nUJIMlg81IwCwpMvW4HyWwJRTpl6I+YgmIHm9QoF+TdByGaV8K0635oaaM0q490+qYCgYnX4w5RUOiX5XAhsPsfQIht/szOUdSEEDrQTzu01vr7fSSMQoJmmVZrwyKj/nMvn1FXMnIZ4YADleV7ri+EXl/i3Ntd5YN7ZtCxfuK6Q8FT5bT0XQ5FFH37eu9l4eKaJen+eS9SqSk+WIPbxZwD3348E19d/chxbbdW9ApA/jkuBM9Dk2ACzsQL/MniftPon0nrOojqDqjtpuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/1hs+PIuZ9lqX4VqZFmg0H+h3hjC3SBaEmRBTp2yhhs=;
 b=nGOQXSYVIp+4Kr0Pk/YZYAjZiatxGWJ6nug/m67jsr/5+6MJ5VQR8kKoLbD3WS4QE1Umh4JFbE1BQnzTW5v3Jqqh9DTBHelznMQU6KrS1tLlGkaQZwXk/JZ89ETjddZxzk3eyi0zZfmbxNPBSoQoL/CYGy/tuJO/T/BgVoXOfju4QuwP/a0aMKni6cszhNTutmNr8swdNcsvxQhF7BJxxkSgHeEY/3sSk5LzzHQi01YQiiAW7Ydly3WE98u1Ne7YMlTXMEY6M1CARNnV3XbSiT1Cx9BmHfodMjxb/nCfAlvaWB2Nym5VCvZfkKRQYkXyEdcG4xT/QbX7Zw1aTVV+Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 13:36:41 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 13:36:41 +0000
Date: Tue, 25 Nov 2025 08:36:36 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <Michal.Wajdeczko@intel.com>
Subject: Re: [V6 PATCH] Due to SLA agreement between PF and VFs, multi CCS
 mode can't be enabled when VFs are already enabled. Similarly, enabling VFs
 must be blocked when multi CCS mode enabled.
Message-ID: <aSWw5JGOGNaNyT6O@intel.com>
References: <20251125101345.2324973-2-naresh.kumar.g@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251125101345.2324973-2-naresh.kumar.g@intel.com>
X-ClientProxiedBy: SJ0PR13CA0188.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CY8PR11MB7196:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bb7e8c7-a11a-4625-b31c-08de2c27aab9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yz4SgwqbWF6BXrj7ss9jaqfkQuxhmSUtnFeQptMdKHeRZD4G1rbC1gMdHewJ?=
 =?us-ascii?Q?9wnBkWslX4Wd/nj5J0/FosJrP44RahedVFXBKyAhep2xkppVUHhReBaUpE7u?=
 =?us-ascii?Q?UFGU2dv2bhOzID7xBURVIUwFz4ZAg358UYA0RJ2jxeMj+3nM7ezbDUsirnCF?=
 =?us-ascii?Q?33RxUcSN0rpS7CJdUT/O6iHxjHMmeSLynuQwiHJZYetrzoc9ipEC98Sx6oV1?=
 =?us-ascii?Q?lTsZMuHG3AGxEWwwYr5bhfQ4yJJi2+CiRIxl85WQGGF0yT9W1g35ZYt7Jt30?=
 =?us-ascii?Q?VQAxgsDeXd5xfUAHgBgeSJjPen1mPcdXvKsPJmTnLNECm/ggXmyqbeWrAZDy?=
 =?us-ascii?Q?PTy4/Wtd7hIYaMzET0mceSiydEzb8iZsNxNP8LIZWBC2yjyVVajtVPpxNUQB?=
 =?us-ascii?Q?bOI1yRVkX3ce1gFvR2KwFCSNVnsF2iA1gGA4ErXwD8SbXKnIaFAfb+YvSE95?=
 =?us-ascii?Q?2Y2y9m8v3GjGZH03u2K7IoMkvERLTdr/4wZEsrs0DBIQrXb9bJc6lFpRaiIm?=
 =?us-ascii?Q?qYNO9gszo3xtz03z8WkqIH/WKan3CtZzmz+ncCb20Pa65ZqUtZ7J9bkGShDU?=
 =?us-ascii?Q?rMoX6d6UpMN9txgzB5xv9criPj8MoFesTHX65rctN3km3F8HXXr+9ASCzh9n?=
 =?us-ascii?Q?jboQZv6YnOx/UaGS3L3uuuLLmSaMg6mSXV1+gLLLXhmFa89MQqEw8Itzd8xw?=
 =?us-ascii?Q?Ky3LPCpzyFsiDkkQWmIDkl982Ye8gxuXs8raGID4apfnN/F07S6cStyIEQVD?=
 =?us-ascii?Q?DGGo9zJkROjfVUHJUYlk2Ykf+uoSov/RXlJllCfJ1PvXuYA9AaEyIjmNqvzb?=
 =?us-ascii?Q?Z+t8zl7gtSu73h/28xr/yZEhMZ0BRvl3Tgp8CF/c/XxXZ8n/pCvLFURfpK9C?=
 =?us-ascii?Q?xn80Vgfpi7/zlxUPm6+dzRUXCHzFF6rJZj1QQlRqktAAzHsa67rO5/fHdF3Y?=
 =?us-ascii?Q?9GOfj0qANH+lhCJK9cp5cdbM4G46nnnMcNxxzvnBxwCrDYVm9dGO2RliRHbV?=
 =?us-ascii?Q?Ee3C4e1oYWM/MqgCVc8WD1epJmLGAx82Ht0c9Mrr2DfVSx+omV7UMgF3yJMp?=
 =?us-ascii?Q?I82F+Ud1zNwCnam54UuDKWX8J0s/vZTaVtsxr6M8ZKc/FNPOAsheU8oDI1Pd?=
 =?us-ascii?Q?rKj5oeWKq1rF3QdHrTIYn4GXw5vh+xq1b9YkGky9DCB93Ve/grv2Xew7dF0n?=
 =?us-ascii?Q?6PBmmx7oNfVxYFrU4HjnUmNXUZIDZK5gBuFFAYT7Ef0r2AUf40SjTkjGAhc/?=
 =?us-ascii?Q?gjJhglAzRs3yX+QEQgHKZf/Q7BtHzyr1Ap3LQpEx+CETCHArgQZfUh0EMDIP?=
 =?us-ascii?Q?sPUjuoXKKjCeVda0fuvvQyyzqAyDKRz1PUynE0nzEiyOjbxihn8VI+VKK7qZ?=
 =?us-ascii?Q?VJftMwjy7fs+FtR0eJZyyWnho0yLcFj4SOoEUEUkoVXNXS4kcN7UL/cPH3Qx?=
 =?us-ascii?Q?3CzA3zykZvMvIcg001qNg957/pw9etcCYIXe69ou+yatpMaAs2BIiA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d6zLIFhsTCjk088orEdL/1JikUChN0SuNh+8YJuK4liEpSsb47Oa8J7/eHQl?=
 =?us-ascii?Q?6x4oVh0CoVbgqCqxEWJghzyCGe63XdRWztzmp06dxlNqF59rVFLyqMiECgws?=
 =?us-ascii?Q?AlmEufYHji4JebbaeN8/9PLg4IkdiNspvVaoesYEXGcXxzLQP5yegmFWGdUr?=
 =?us-ascii?Q?/3DIaimiaNF1X2Tvsbpi54D5y0MDVwUg7mBEPhTtiaPKUSP9rlT2ISsqxXQy?=
 =?us-ascii?Q?xHT0c5QAP4nrnQkL8vhBc8bJ9LbDeT6Gf4S3rDuv9wfcCgXo3pV6MTNCA1fV?=
 =?us-ascii?Q?Hpm4BdeWG0IyHyIfsPZmimkep/LbouYzBfZd10tp8MYCJay6v5y1REmkOcFu?=
 =?us-ascii?Q?jDRD9D4QNa5EIOoG4c6a4mnaKbf+t4eDXIKQANhMwr0AHiwMLoCiBH2AyB6w?=
 =?us-ascii?Q?mtTQPr1y47BG+ZtHdhrFN6rx/3T6KfEQKmUYpLMAkpxji4HpU0GrPFl369gg?=
 =?us-ascii?Q?eqXPVXLZIgz3NEouN23H4dS6M7rrCYHtPZFtW9Qu+oRRunLL3WZYKdALLUvp?=
 =?us-ascii?Q?+dXz8OYlGIRynnNVBH+kkHcicHgamipFBauRtvQDInt5SphcuMfErLKWBcY4?=
 =?us-ascii?Q?4AGouBZKTZoiD7bfCoOyNQxqMx1XT/meeDtXKpDh6Tf43nsVRiDk1Jwukwf0?=
 =?us-ascii?Q?n2oLZEGaETgUAyjxHcFINuo5SAYC5nS5Ph8FBOj/N7fHK+R0/w7aQ4+tUA5b?=
 =?us-ascii?Q?9BIQq9WCqU9nzuIYYKs3PiJNKylaV3kMnUvENOYOhOQv9iJwxbhpgnQmqd0b?=
 =?us-ascii?Q?oYk1JeacC+c61GHgRlU1fJIGUvmRy70AgjkGm8U35b5zL+lWfO+u6PWcaRh+?=
 =?us-ascii?Q?+UjlPbtCP8z1Azlhd2Zpf35VijlCITjtzZ1PesmV1sLAouwDg0c2bLBLn9h6?=
 =?us-ascii?Q?/exQ61B88yXD5zX7vA04HGI0OeUzeqtq/9IypCoN9bQc5m2pmj11dvPYZmsk?=
 =?us-ascii?Q?zsYWVWqRdBgol4EDszogS9MKwvItLBV0o/C4feN86YLFN4+3cxIqJAyyaEw/?=
 =?us-ascii?Q?wReWSuqLVLUlk8lLTC22fgxWpsrhcBP5DSNyLbH9SvJiD1WbyObbw6xGm7X1?=
 =?us-ascii?Q?qcLQ/thkAnY4zCLmv/BbFd6gkkVMCosO4oithFAWicxzzB7yO4Y56VKwJKIj?=
 =?us-ascii?Q?Tv1tM0Jv2w4SnzI9sC9pkgpO7zzHeKv6x5Ec6d+bp6jicgXZZhycxdDbiqv4?=
 =?us-ascii?Q?+/Q/VwZEgSzhgPi5t7PpGHNcy17MwMOX9CgIFqtCpaR1WXpiy+vbLnxgurrc?=
 =?us-ascii?Q?MafPa7z3B4hx5bKG9b/h/rHTDbJCTVEMio7PVcTrPsq4h8tDlq7nZJ/7rAzA?=
 =?us-ascii?Q?66PbAEXZHYjLDwnpNSUUy7k7jvhiozC8xhSDIEfZroPeu3RTXV18wGDTGR2C?=
 =?us-ascii?Q?y5DlxkZ18beOw1JPN1pgAvTi7W3crV08DiLzMfRR7AZWWu4RRyxqbJ7T7F3v?=
 =?us-ascii?Q?bRE/zFLyqFnsBbubAST7jdEEGZ1RhOkBThtaRaUeQrOT3I9Fr8mWbRPeNhsA?=
 =?us-ascii?Q?YQH+fYfbJbkr2TDIC3LXGTcra7stRHHdRyzVpCdgK1rCebgBEXqa6/+6RGT9?=
 =?us-ascii?Q?4vjbzSIneaUTDHDFmh6NvkhIe/wc8sWO+7G4d6Yn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bb7e8c7-a11a-4625-b31c-08de2c27aab9
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 13:36:41.6870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: klIciAi05deVRlYLRB+ddxy4FeORWvRPrcAfnnOZXPn0MPs5QRYiRqNqQ4PYRGh/tM4xpd4V+jeWqCYiQX4ycA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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

On Tue, Nov 25, 2025 at 03:43:46PM +0530, Nareshkumar Gollakoti wrote:

Big subject, no message...
Please:
https://www.kernel.org/doc/html/latest/process/submitting-patches.html

> v2:
> - function xe_device_is_vf_enabled has been refactored to
>   xe_sriov_pf_has_vfs_enabled and moved to xe_sriov_pf_helper.h.
> - The code now distinctly checks for SR-IOV VF mode and
>   SR-IOV PF with VFs enabled.
> - Log messages have been updated to explicitly state the current mode.
> - The function xe_multi_ccs_mode_enabled is moved to xe_device.h
> 
> v3: Described missed arg documentation for xe_sriov_pf_has_vfs_enabled
> 
> v4:
> - sysfs interface for CCS mode is not initialized
>   when operating in SRIOV VF Mode.
> - xe_sriov_pf_has_vfs_enabled() check is sufficient while CCS mode
>   enablement.
> - remove unnecessary comments as flow is self explanatory.
> 
> v5:(review comments from Michal)
> - Add xe device level CCS mode block with mutex lock and CCS mode state
> - necessesary functions to manage ccs mode state to provide strict mutual
>   exclusive support b/w CCS mode & SRIOV VF enabling
> 
> v6:
> - Re modeled implementation based on lockdown the PF using custom guard
>   supported functions by Michal
> 
> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_gt_ccs_mode.c | 47 ++++++++++++++++++++++++-----
>  1 file changed, 39 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> index 50fffc9ebf62..495bf517a6d3 100644
> --- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> +++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> @@ -13,6 +13,7 @@
>  #include "xe_gt_sysfs.h"
>  #include "xe_mmio.h"
>  #include "xe_sriov.h"
> +#include "xe_sriov_pf_helpers.h"
>  
>  static void __xe_gt_apply_ccs_mode(struct xe_gt *gt, u32 num_engines)
>  {
> @@ -108,6 +109,30 @@ ccs_mode_show(struct device *kdev,
>  	return sysfs_emit(buf, "%u\n", gt->ccs_mode);
>  }
>  
> +static int xe_gt_prepare_ccs_mode_enabling(struct xe_device *xe,
> +					   struct xe_gt *gt)
> +{
> +	/*
> +	 * The arm guard is only activated during CCS mode enabling,
> +	 * and this shuould happen when CCS mode is in default mode.
> +	 * lockdown arm guard ensures there is no VFS enabling
> +	 * as CCS mode enabling in progress/enabled.
> +	 */
> +	if (!(gt->ccs_mode > 1))
> +		return xe_sriov_pf_arm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
> +					     true, NULL);
> +	return 0;
> +}
> +
> +static void xe_gt_finish_ccs_mode_enabling(struct xe_device *xe,
> +					   struct xe_gt *gt)
> +{
> +	/* disarm the guard, if CCS mode is reverted to default */
> +	if (!(gt->ccs_mode > 1))
> +		xe_sriov_pf_disarm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
> +					 true, NULL);
> +}
> +
>  static ssize_t
>  ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	       const char *buff, size_t count)
> @@ -117,15 +142,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	u32 num_engines, num_slices;
>  	int ret;
>  
> -	if (IS_SRIOV(xe)) {
> -		xe_gt_dbg(gt, "Can't change compute mode when running as %s\n",
> -			  xe_sriov_mode_to_string(xe_device_sriov_mode(xe)));
> -		return -EOPNOTSUPP;
> -	}
> +	ret = xe_gt_prepare_ccs_mode_enabling(xe, gt);
> +	if (ret)
> +		return ret;
>  
>  	ret = kstrtou32(buff, 0, &num_engines);
>  	if (ret)
> -		return ret;
> +		goto err;
>  
>  	/*
>  	 * Ensure number of engines specified is valid and there is an
> @@ -135,7 +158,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	if (!num_engines || num_engines > num_slices || num_slices % num_engines) {
>  		xe_gt_dbg(gt, "Invalid compute config, %d engines %d slices\n",
>  			  num_engines, num_slices);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto err;
>  	}
>  
>  	/* CCS mode can only be updated when there are no drm clients */
> @@ -143,7 +167,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	if (!list_empty(&xe->drm.filelist)) {
>  		mutex_unlock(&xe->drm.filelist_mutex);
>  		xe_gt_dbg(gt, "Rejecting compute mode change as there are active drm clients\n");
> -		return -EBUSY;
> +		ret = -EBUSY;
> +		goto err;
>  	}
>  
>  	if (gt->ccs_mode != num_engines) {
> @@ -155,7 +180,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  
>  	mutex_unlock(&xe->drm.filelist_mutex);
>  
> +	xe_gt_finish_ccs_mode_enabling(xe, gt);
> +
>  	return count;
> +err:
> +	xe_gt_finish_ccs_mode_enabling(xe, gt);
> +
> +	return ret;
>  }
>  
>  static DEVICE_ATTR_RW(ccs_mode);
> -- 
> 2.43.0
> 
