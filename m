Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 683D5A6B476
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 07:35:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6647110E117;
	Fri, 21 Mar 2025 06:35:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jusgPMD3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA3810E0D3;
 Fri, 21 Mar 2025 06:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742538931; x=1774074931;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tDd4VCZkbZxSr3kylnP94OXIGJvIhWM5y78avF1S+XM=;
 b=jusgPMD3y/Y4y1APXN2n76UpgHWdvpiGSzUe50M2LYti8Pv2OUVnYiKL
 qWa4wo+izGN5QKFCzoKuAnXcRwEJwFjJIx7uOBIIf53ifljcJ8xU8zYd8
 RlXUre6Qtzk9sfmhwUXwJNDgg2I+Uj4Y+HaSNfdDDY1DsXfadv2XfTkC4
 kAj9cMfo5xNTWQ7kKlRMx3AcOmFtktg2/oQwhmSjeRmlICi9lQzh0r9Cv
 TxpfVtlRcYDMwg0DHuCK42oCoSJG5EFhUOdTfWdsfKFsAoEKkeZwUL8Q9
 zloJBTxSvbVooQtw9fNMbRZLUWp6Xh8aDIQBHoPrDPZOjVc97DQ5liuTB w==;
X-CSE-ConnectionGUID: 7UA79iYMQ2e/BEhwD1lolg==
X-CSE-MsgGUID: tCG4KlnuR7O2K1PTMdoznw==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="47571066"
X-IronPort-AV: E=Sophos;i="6.14,263,1736841600"; d="scan'208";a="47571066"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 23:35:29 -0700
X-CSE-ConnectionGUID: 6WfTkhu6RvigD7S9tw2Wjg==
X-CSE-MsgGUID: 46CjitB0QkiU1nbzei/EQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,263,1736841600"; d="scan'208";a="128546264"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2025 23:35:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 23:35:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 23:35:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 23:35:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fnVR+n0fxiHNuVU2gbFphBhX7L4kGkRuVCEoyUEUE07217QVDtG9NybubFkMskrYgQUqsBJz97275mvyhoNDDsX3CI0zqJYdeWqM6tqo1nXlFRJU+sBH5O/VTVM4God67KBgBJUjyDCgBTFarN8w3i+Ue81wzvNVKuwoxtbgsr4TcYVqgDQ/8TDnwfO5Nd9H6pMXGMCvSL3fR4Eew/6dhK92eO4v4qUc6sGbfXuFYvAD10Aa3Aii7lC90JTh6+m62QGO6XJ7Spo8l+66S+qmya1/2iDY805oUirMBeE7wYIOVmGpmgc9X91IJVBBjPmXoogon77Cdb3aJC2GJw6Z0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f8Sx1XuLMMZBcbW65QtAEiRtJL3G/DpmRSlW1V5/ouc=;
 b=ee2ddFoaxh5OUkupuTMN3a29THC6mrD+0mFJOn6fowqEyJ/6xKUb77+qKFp7plkzCCsXsV0wQcEV7RsyTV0fz5o47JSkyeUSpW3Y3QVbgNGYVZaqsrjT/ZlPmhomhwWI82i/H/QfgGvnZnL3b4rGhH2l1sVyQEP7/wBNtHeJUyDfY7DSBhQeyOondjx/nxWkn1RwuuLON42p4PMYGBVhadRDo0kjRprPLs5JsjgOwlPrOaF6A27uerA4E0eh8MWhqX5Mi3tXwpoq4pQGBbmG0fdfgqMRqvFi66nwks7PISoURrgvp5NkQh6zURF75nEtOQaIXgsRvgPrUs4ZDgiErg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8591.namprd11.prod.outlook.com (2603:10b6:610:1af::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Fri, 21 Mar
 2025 06:35:20 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8534.036; Fri, 21 Mar 2025
 06:35:19 +0000
Date: Fri, 21 Mar 2025 01:35:16 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Roper" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/xe2hpd: Identify the memory type for SKUs with
 GDDR + ECC
Message-ID: <q7jpiuuu65zrmhdwjs27o77yat3rtmreqgg6urkqp4l6fce4wy@7y64f5ga7has>
References: <20250214215944.187407-1-vivek.kasireddy@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250214215944.187407-1-vivek.kasireddy@intel.com>
X-ClientProxiedBy: MW4P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::8) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8591:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a72f60f-00e0-4d8e-df09-08dd68428cc3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4fhNTvERCM3FOnwCE2oDDJznKLIVj8Qi+/B/bZRi7Uvr7zgXoPuhMIjf6WI1?=
 =?us-ascii?Q?441C2cRHD26i+G7iZs/0lcFejUVyC5jz7yL07GJbELNA9bnocNcqjLivVPXU?=
 =?us-ascii?Q?900aqFn3Dxh9oWdQJjSPjzoAI2jaUjvP9LtBEI/mLhOryfVcIiY4+JyX5Ta1?=
 =?us-ascii?Q?SSYvESTUQGaDDJXrG86CYPJhLWr/FFupHEQlOTJDE6aXhp4M0wuJ0IR6OHcQ?=
 =?us-ascii?Q?M/CPbSMEo2ZMzXPArL0YT3fJ+BCIUwGKC2ccFJhSm1G8NaQ7Q0czz7NRuP/c?=
 =?us-ascii?Q?Bxle2TdhNV2c2xoxymqeabtzE4tLGfGANlMUSMxGOOyW/eHhl/RreOKuk0QS?=
 =?us-ascii?Q?Kv4Pu8IudvRlPpmFLt49EFcP4mCvwq1cHof+y1ftFnaxBsyPkiknp2rQakrg?=
 =?us-ascii?Q?zrGiqCO/gRx6Bau5hZC4nNSFsHBMsN7zqOv2x10H3Xm3e/K0Oqr/u+iAdzjC?=
 =?us-ascii?Q?OvH5mtwHNMFCjDNbBN98edGHm+WDcha1+d7NAYTTo3IddcWLBA8/9GAi0lSY?=
 =?us-ascii?Q?kBj1Mv0hxiSiO7hh9Zv6SCx8P3FfRoZGXSmkahlhMW9VMf8KWpIpXOAUdA1d?=
 =?us-ascii?Q?0/LJXPEMZYg2uV+envD8qNk5rC2j3jsTt7roZ92yVNnFzoG1QQFEuoizBBMr?=
 =?us-ascii?Q?M1WfZWym2OlMGwCm9muYxf5LdDmRC8+uDKtKRFFc1ayZp04JzNpVrwsEVnkb?=
 =?us-ascii?Q?SXAi5wsH8lzrGq+5vyuza1jgF9PJg8xfW5OQLVpQ7UoiriHzTX9ehZVgwQkB?=
 =?us-ascii?Q?2b1XtotbJYMBPtpnOjOP3IfodT0l9LAUYv4OvlCe65OFC+HuNA974khiooPC?=
 =?us-ascii?Q?6K4OsJKQIP+OzQOEIWgXc7FEXZwFG6k4xvWoeuwAVWEbskxP+ij17dBd7jbQ?=
 =?us-ascii?Q?97mXS8xjyTQPfBvQyUCGu5r/BTzkQzGLlTJUrSKaRs4HwHYDefrSlqPGh4UX?=
 =?us-ascii?Q?r/XfVzCP6qeLPn5YTm8m1lC9LvfP1/lzHCN66BpWrGB7cOgqu4B6R1+3yOuZ?=
 =?us-ascii?Q?jSoldW9TmxW6Ia08O8+KojNafGOC6TMZmVYqHXt55q4mCEsmnHLXa9dbaNal?=
 =?us-ascii?Q?JH4wUU0WkVeT15qDItrqkCLAVnNjo6DxmDkdx2jAGD1NufMEC5Qb+F3p2bnV?=
 =?us-ascii?Q?xItl9B0i4emhR1dfKnnr2TNGVHT9MpXiXe5TObB+pWRQal66hDb/sbSSzIvq?=
 =?us-ascii?Q?zyaoWoIaYhuj6I5sXnBXfUiABJzFgtmcqc40nQpzLRjeE6h14BJ//W44o+Gf?=
 =?us-ascii?Q?mSZLUtKW+X2kVzuidGNcbKbMLmvIg4PqUbaTgf7YxNerjDyPz6Y0J5UmjhCd?=
 =?us-ascii?Q?fzxQCQaF9fu5GftqPhUe99LaAcjqniWPxog7K4E+EmOVVgkwJMK4kgqbKoeX?=
 =?us-ascii?Q?eIEqkqB5ISg5Fbfgtm4r0XgvGMC5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B5Nu6L9RXAiGBBzNhjrRvTYwn36+mlfrNsRMSZuc96lup7O7Yz9Wixr8SaEr?=
 =?us-ascii?Q?piGSLWm9271GQsxQDFkm7bAsq+FV8JROH87Sgi85WkXeUF8TTUVS/CUQy3WU?=
 =?us-ascii?Q?kqlrJ3SCtKcslJcrvqRTRL5//gQH54W0N7swl5ULxfY2oEpkrhqAUzkwb88Z?=
 =?us-ascii?Q?PTaT+WJGk2GtOuaHPkcyqLT5KB5AzSGz7DptgH+VmvFkRFifLteHyqLWDPrO?=
 =?us-ascii?Q?7CVAIHKXQNAiKYpmiJobQ3AoV5uOWbgazG4vUnVU1vrQn1NIyLS1tN5D684K?=
 =?us-ascii?Q?1Tbcc2n74H9gBClp6skWi31Ou8MlgiJJjkLlkKJI8IERTbHFVsp9WQr3hC0P?=
 =?us-ascii?Q?iQKctoHQF3Jge/CgRDwc5btCGGovN4okWtgu3Vi/6mCx7FBKvNJ/cGgj8j/v?=
 =?us-ascii?Q?k7ePG7nwS2ilq7GU1coaI5z0t0t33z7Qki4MD4xqCLU6HuD5OMCeua4paG4Y?=
 =?us-ascii?Q?cg20kyKV8VCnXZWpiQntMavtnJrJF7HsKCuvLRZHGE+4sDIavym1PaZYh27A?=
 =?us-ascii?Q?1Oy7+O33sgv7XJfhF8lbvHkdmMKMFz8HIyF5wKwZflhGEqweyU5o4kwfnV2f?=
 =?us-ascii?Q?5yFU/4DUPzQcEoWP5ef4oeNTViuqyScjmOaqgcTIGo1SPkFjqpZtf/9bEGB1?=
 =?us-ascii?Q?a4bD7nCoNOXHHH+jmeRH98rpUUTIVfnXeZECr9x3LRn4qgWs3p3J8PlKbEBk?=
 =?us-ascii?Q?0qdy/GJcvtG/St5EYTVdJaT4Ud0YqPp/69hywazdJzQdGLpGmyF1dUxaSK2n?=
 =?us-ascii?Q?l1r9L68PEfRF/dTJQRnvsB0PyqmCg93JjvC1JvJuSArlgD2H9kxT0IbKcoEM?=
 =?us-ascii?Q?t9SG3rH30yUsNh9w5+9pzhdQDTHpLONCCxrs0OkoDnVzNmzYlzMLpGgsfbwR?=
 =?us-ascii?Q?g90VBk+aFNl2MD3CwsB7cOgty2rLo4fBe+hik+l9o157yUY8NwKZGG9oRrXa?=
 =?us-ascii?Q?XTsAwQvDBLi0LeotcXrQk3/qd2qIk7HGCJk567P0NP1wg9vaCzUEQn28VC+o?=
 =?us-ascii?Q?sJULYr03pVGBF5+aLbtLY0xSDFslC3/rR/GQOhTS3ydZ7MAR/mPwsGAd31Ey?=
 =?us-ascii?Q?dqpxOJlqFUmFuUlM50tWLxMpcCu7oQaStwT7luFrIbmSWNCCA8EIBzMhS3eV?=
 =?us-ascii?Q?P/yBUyO/MVZ69OrwrqyY3PYSye6nSx3wPsr+pe1dLHVnOxBy14kMyF+VxiJ/?=
 =?us-ascii?Q?31HctCvV5v6rwVojLi3A5ulkYLVD3m5JdLD8SOH7PsfikO1UKb3gFP3YU7tQ?=
 =?us-ascii?Q?qlz3j+foEf8DJ1XUdvHrCuxzt3a7s9NimwThXl1btUCrjuMn+CUFTQIsxUlL?=
 =?us-ascii?Q?uaCGjIzydKPOIwb46qIvQyERbx6dlGjyV6707sWfeH1zKionWP2p3dKqR+m9?=
 =?us-ascii?Q?GLFSnrok+KxKNfuQPkW/sQprAGw9l17isErDFOaXBz/L+MphG9IzVw18LMG+?=
 =?us-ascii?Q?H8MkiojRwn7ohtmxFo9tX57RQtfGmKMZUQwveoVL9ueh5VfH/7hKIzBV+vCQ?=
 =?us-ascii?Q?ccdrR/w8Wk3nOAsr8dI8QF5qIRDnvS9sLU87TGhK/KdB9kzUdeG+8Wxm2QEZ?=
 =?us-ascii?Q?L/2QQIfiGARCQZlR1yyb64DwGU7rVHvbwDI/bMfFR2iO2rREPbvKSUJ+QUQ9?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a72f60f-00e0-4d8e-df09-08dd68428cc3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 06:35:19.7220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hUPgCLXqoXIq13/8bPwf2onIZzjL6pbmeOnKjoBsFHhFOQjI4mLhm6en2Bc2DUuB72wkKSekred6oUbdhCYQMQBEhQJUZmSjUsrj0KbKkFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8591
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

On Fri, Feb 14, 2025 at 01:59:44PM -0800, Vivek Kasireddy wrote:
>Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
>with ECC enabled. We need to identify this scenario and add a new
>case in xelpdp_get_dram_info() to handle it. In addition, the
>derating value needs to be adjusted accordingly to compensate for
>the limited bandwidth.
>
>Bspec: 64602
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_bw.c | 5 ++++-
> drivers/gpu/drm/i915/i915_drv.h         | 1 +
> drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
> drivers/gpu/drm/xe/xe_device_types.h    | 1 +
> 4 files changed, 10 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>index 23edc81741de..b8a9651b74d3 100644
>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>@@ -244,6 +244,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
> 			qi->deinterleave = 4;
> 			break;
> 		case INTEL_DRAM_GDDR:
>+		case INTEL_DRAM_GDDR_ECC:
> 			qi->channel_width = 32;
> 			break;
> 		default:
>@@ -630,9 +631,11 @@ static int xe2_hpd_get_bw_info(struct drm_i915_private *i915,
> 	for (i = 0; i < qi.num_points; i++) {
> 		const struct intel_qgv_point *point = &qi.points[i];
> 		int bw = num_channels * (qi.channel_width / 8) * point->dclk;
>+		u8 derating = i915->dram_info.type == INTEL_DRAM_GDDR_ECC ?
>+				45 : sa->derating;

looks wrong to leave the sa->derating with the wrong value and just
patch it here.

By the time intel_bw_init_hw() is called, we already have i915->dram_info->type.
So maybe it'd be better to fork a struct intel_sa_info for this case and
have the correct derating consistently? Otherwise, at least moving this
out of the loop would be appropriate IMO.

Matt, thoughts?

There was a small conflict due to the move to intel_display, but
otherwise this commit still applies.

Lucas De Marchi

>
> 		i915->display.bw.max[0].deratedbw[i] =
>-			min(maxdebw, (100 - sa->derating) * bw / 100);
>+			min(maxdebw, (100 - derating) * bw / 100);
> 		i915->display.bw.max[0].peakbw[i] = bw;
>
> 		drm_dbg_kms(&i915->drm, "QGV %d: deratedbw=%u peakbw: %u\n",
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index ffc346379cc2..54538b6f85df 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -305,6 +305,7 @@ struct drm_i915_private {
> 			INTEL_DRAM_DDR5,
> 			INTEL_DRAM_LPDDR5,
> 			INTEL_DRAM_GDDR,
>+			INTEL_DRAM_GDDR_ECC,
> 		} type;
> 		u8 num_qgv_points;
> 		u8 num_psf_gv_points;
>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>index 9e310f4099f4..f60eedb0e92c 100644
>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>@@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
> 		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> 		dram_info->type = INTEL_DRAM_GDDR;
> 		break;
>+	case 9:
>+		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
>+		dram_info->type = INTEL_DRAM_GDDR_ECC;
>+		break;
> 	default:
> 		MISSING_CASE(val);
> 		return -EINVAL;
>diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
>index 4656305dd45a..0921e957d784 100644
>--- a/drivers/gpu/drm/xe/xe_device_types.h
>+++ b/drivers/gpu/drm/xe/xe_device_types.h
>@@ -575,6 +575,7 @@ struct xe_device {
> 			INTEL_DRAM_DDR5,
> 			INTEL_DRAM_LPDDR5,
> 			INTEL_DRAM_GDDR,
>+			INTEL_DRAM_GDDR_ECC,
> 		} type;
> 		u8 num_qgv_points;
> 		u8 num_psf_gv_points;
>-- 
>2.47.1
>
