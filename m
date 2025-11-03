Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50942C2D806
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:39:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD5610E466;
	Mon,  3 Nov 2025 17:39:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gyJ/+Q3l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1452D10E465;
 Mon,  3 Nov 2025 17:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762191561; x=1793727561;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/rFSQcjT50J7fmL9aoxcugYEqq06vOodnPWwUX7BHoU=;
 b=gyJ/+Q3lHluRby2CMjO4IojjDFp52Voii5afFIgAOHNXejglOvPjLlGU
 +r7RVORazJbMcngZsVm1411Yxf87kbTrGrmPHDreOvezZhVNgaJy7Yi/2
 IBrgNDsq1qBubWTtU6HYWFtvFN0qjldSmI5AolOVW3wTOLdJyI2NeDsfC
 KP0tq66Jspb50NKIzK/hXLxND+Y6Ed9HC0+Vsa03M64UIf0x+/nBMifq7
 60S9+7oYlJwsGc/V2BH2o5bgsuRG7wgnDJTYmrkfi3BDnu2P6aFe65G4y
 SdJJr0ETp2pUZP1nVKTxbx2jrFGML6SxS7+37cds/W2Dkx8qPP2QJj7Z8 w==;
X-CSE-ConnectionGUID: tSFZtoTXRqqUmnevIcMuug==
X-CSE-MsgGUID: q7IaxQ+XRpK8T4ENvROYoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="81903260"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="81903260"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:39:21 -0800
X-CSE-ConnectionGUID: HFSViRbEQ7K9d9ifL7Ay1A==
X-CSE-MsgGUID: nPvjATCxTruMlCPQq+a+rA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:39:20 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:39:20 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:39:20 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:39:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=koWUt2QVCFKsATOmYTlU7uPY1N7EFUyQJv0/16UL6yhvgAePpYjfPVWdO0uzXswf2gNi4hqMb6qtEw2XDDO5kG1RGkmC4y034NOe4xS9u1uss2uvO2M1jUFe1cGcMJzzH9lCjc01oiPITEp3WdrWk+fopI0TUyP4q65sQDRFPXaiZg4iUlmHVT+3m9xf+jx9h+Wsp+azhI0aonUzFyqURVIyXHq5sBoU/vIZ6aNZBlzPjxIpK1cmuSMj793jyKMT4EpoBa5UNIWQvky/68fA7jGc2eJiX/T4YiOie2qEDyzzQabfPo/XkaI2s1EOx1oi49rXUreKw/JYt09/rQX/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cSFoWTrlQEfFBDRKqwSCjCSm50+OAqxtObKuGF3eRRM=;
 b=MfF9D+UU3MT6QsljraoQTnLhBFGzkCHgyWCDFtLbqOtd/4dHDmF35Izo41E5gKSKJ2i5AyxepXqMfu/QdUFqctn3l/zvGuc0W6NqkRN5vrrmjw+meJL+igF60HbXiSDZCLypcgQWIrn2Log8oTw7QvSlQbTcWzGI2bdARkqAZIKZtlFeMnIGsaF6le2JxczrS2PGUPZ2yy23fe2FWNToe4G8ZTkMwJ/mdCKDVh/zjKYR6jsVaU4zcHiQ9V+XHVWYgr5G5qs+L9KcuOROvS/+ry9A51XnVlnz4acv2I8m6+ptTUZT8qem5fPRBcF+tlyeNnHNBnuMQS33EVQ6sO3Ayw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5027.namprd11.prod.outlook.com (2603:10b6:303:9d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Mon, 3 Nov
 2025 17:39:16 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:39:16 +0000
Date: Mon, 3 Nov 2025 09:39:13 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 28/29] drm/i915/display: Move HAS_LT_PHY() to
 intel_display_device.h
Message-ID: <20251103173913.GD2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-28-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-28-00e87b510ae7@intel.com>
X-ClientProxiedBy: BYAPR07CA0092.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5027:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d3aab52-5cbd-4f39-efa8-08de1affe92b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?djvzTVRG270SiBhSyiYP5XVgFrkJwZNlPdHUDmDyVOOpTp7TGDWoLkfNeXx4?=
 =?us-ascii?Q?iDuGHAQJ7dTfHt6E0PleinzyD8ZhWzRFY9Qy+tig83wQuJhOmZ4zCL17Qdh+?=
 =?us-ascii?Q?OwAEeLgInSGTKOzPe8XyRiS5noFKF4nD7RtXz8R75wZjbnjO9y1EhMxUQ9d/?=
 =?us-ascii?Q?xZCRdTs7GbTagMuUEm7cEG4sgSAbp6wtK/FfSyPImkwsW4azkEe382lRSN65?=
 =?us-ascii?Q?lLbYJHqpB2JQ+Ts8KIMQmEkwRSfjG5VvvQjQZlqrms3VO56Go1aGDhWqtxxp?=
 =?us-ascii?Q?QA/R+kuD+DQvrwFnRIqL6zgLabOG1WeW1F2EYIjyVJJhr9vrUs0oXJPcOVSs?=
 =?us-ascii?Q?ALyKFraVF6/sxLEZV5IlPVhKZY9mhXOSP4tmtFJMk3qlDAtkS8Ek6z7RR6QJ?=
 =?us-ascii?Q?3pcy7tjqAc+97CaIvIFK/05VM7HOvNXf6GvvAPJ77eK1TTi9Jn+DouwuYWTg?=
 =?us-ascii?Q?rrORHmh6yDvDV1lXp+ao6m0Wl1GZzdj2jvB0+n+S6mjpuC9jZiZSGiMBBYSH?=
 =?us-ascii?Q?P7jHbfw7h5AVmiOoxGdxvnElUj33CJNsIqi0X2TP4UxEUE4uFcaCxZXpJS4r?=
 =?us-ascii?Q?7WuPH4KNnjKSVZQH9dAttTIGUfHgoOcIKLvqMAQz9tFJ4UHjrPQQCWNkaV70?=
 =?us-ascii?Q?Yb03SFe09I+J9LwmM8WG5QGzWcOeGWghRpFnsG5LCZCTI8LYI7heCJJXAvxb?=
 =?us-ascii?Q?I3EAc7iI3/cAsDG1Jy11J+SX2lnZJiiaVIX47JgmiuVEW+xR2WR+gZ0+OgST?=
 =?us-ascii?Q?2Fd5A0l2RenqdfunyeWNXan/XGnWMpF9EjyaqgfOWNuFENQhWz0cXbHRtQ3K?=
 =?us-ascii?Q?T24FmVXa6/qHTs/C9zTXDIK1yZHFMic/0bJNjrhCfAV1cNrmeIKcrazQeU7X?=
 =?us-ascii?Q?yYlqVM7hd2NY+nKLgmsnJ8nrwFizZQ6NiP+5ed/C52WoA8vgtRwCLss19rYc?=
 =?us-ascii?Q?cVOjkvLRQSnuhzLIgDmM/kz8dhDcW6Al37fM1HL1pqCFJVXBoJ9hsQcFWC0s?=
 =?us-ascii?Q?oLNqpqAgO0Mp6UcupiD5D7gM+rpQTH8M/8gqaP17WRSfSl9BXloRJFaC7+Of?=
 =?us-ascii?Q?SLXOhj0RFrX2I04TFOj/fjpwbYnGBmi3L9PvwB86xcZnbctIn13XnT2/c3HU?=
 =?us-ascii?Q?tMnawCJv/KNDoVXoFxgFjLl9TAFQFkK3zKRRJi5cEpo3VatJtt3xnjvrXPUe?=
 =?us-ascii?Q?4rHz+Xv5y/JIkYoVm8sQGV6owhF0/v5oloVhS+Xr79aEGnO9X6g3tGAM+m0e?=
 =?us-ascii?Q?JOTJFxxCZLCY0yjjwCSufu2lvNnqjGfZE72ctqe28gX67qnzXKKIoV/BYLwG?=
 =?us-ascii?Q?DozpHAGOQqvx8hH0y3P4hGYj4pTJziabEXkxNHUYNn9PWl/Cqb+7+jIFHw7W?=
 =?us-ascii?Q?PASmkiHfmcHALo0hvBHZVWpZ05oqkmQwTKPLq0J7Nr0HILQ/1nwtRHyQFC+v?=
 =?us-ascii?Q?Y67bMBRGA06aKv7fPbDkkZPK70J4qsmp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xxPI5PD5161gbr59StwMlEGjTpn+wrbAAg9vL961bvBcRyOQvT2vXKIz8zKJ?=
 =?us-ascii?Q?wpiR5cACF/5LIdFa8wD+G1V8FzokX4Q6tYaTogeOnOWIL3NoH4DL3LMxnMCo?=
 =?us-ascii?Q?3+uQEC98ah+EiWHH3Mz4QrUoBi/FSwj+jljAFVZ07StYTt2sU87+xbgyT3Hr?=
 =?us-ascii?Q?elZzeoTbop1/1EuDZaLtZhh+so8j5cJezmTYeGKHU6mbjN9dbFjNUiKBbiYj?=
 =?us-ascii?Q?C5CQNF8xXVPqrN1zL3qG3lS4b8jRhK0WFQjjAu/lgYy9NvaX9Ig1Ad90I+F3?=
 =?us-ascii?Q?5fDyn+Fv0CRZ8eXfo/iEKj28m4+Pv0lafF/s/UInTBNHwpYVrXttVeGAMn8B?=
 =?us-ascii?Q?smO6oeAKWbgiDKYRlKPpWbeoItoFLjkLkKPRqA8opWfg8atwzHbzTRCABO3A?=
 =?us-ascii?Q?cfaYUHn/GHrmnrdUedUC4ebd4A+aEo5yVdVqfR7YE0zjufvvSCgNcjbdlvRv?=
 =?us-ascii?Q?d/CBZu/95tZs8oAQBPD46OdcbiCgSgMH/bSbPO8AlHJKzIeeRAgNDVobjkqJ?=
 =?us-ascii?Q?jFhwaEBHTqvLPofiZe3XvMR2r2y5rSuQbOmqHdjFSacmCuolE9l93Iv+HO8B?=
 =?us-ascii?Q?RtkORBV063Mj75Yy9a7e/4P+fxxbqzANEu5DrmidJsEJAqmJhz9xrRlUu3bL?=
 =?us-ascii?Q?0cQm6Ip6+JsQ03wXSYRzrCRJJo4pLiHOtor54cXR5MVqyKPr1A0XRpZTVbQl?=
 =?us-ascii?Q?i9DkjStqYpB7UJLPjJOOZtSqRTpWqRktTPemKC2bDvB4MzdAovrrW2knf0UV?=
 =?us-ascii?Q?wKUjRauInfQj98GQpHfQMtWOQKml262k967fAA4PgLxpDN0o04zh4/WlnM12?=
 =?us-ascii?Q?DxWgRBqS+UJqriAf8Q3B8amX/mTgqQFoFDwS5DkyZdbfwTP4OEWnqYOvmM/M?=
 =?us-ascii?Q?3OP/AlfeY5w0gQKZBGY3scXjEyRiujS14QRjqrwzF9wipOe5x/NNrPKDjScW?=
 =?us-ascii?Q?ezdFGHxl8S/r0PeU55+RV4bk7ivYYiJCkS6tvRlQTo8yIAoMOZDMzD+zV6Yy?=
 =?us-ascii?Q?Dp6ZCR4/npRE5yX6JSZLw4suruSdr7EFmPRyqx3V58AQ5FIIeccmOu4p1CGZ?=
 =?us-ascii?Q?wI9F8Fx+rj9ZBJLGJ46hT13Uzrihb7fx+PSn7hu0e2uxecdyaRw/lNZJRqe7?=
 =?us-ascii?Q?QfIACkvIAeuVYkotfjC/ovNjeyrtNtGytXijp11CiafndF2oMUYoROY06LIN?=
 =?us-ascii?Q?8RTqpXpsf1U+8vY4zYsVzHw9vCBPPCDK5mrV001xknztcqvKFh6Qz3yw3eNn?=
 =?us-ascii?Q?vbxIy0ZOBsff/UbFegBRzgXIES0NQCOxJMtJmfzGvsaZlMiA50LPibRuYHNN?=
 =?us-ascii?Q?btXS45A8NCZ0DUPnbI4JMYYlDA1fzDKUHnPTmQ3cGeeYilQ5Pr36uJFZdEyn?=
 =?us-ascii?Q?JDR4z/Ff+TKb1Uue1XszcLn6JD0KwOz2OXkl1oDbus/rTia/LJGPF8Pehafq?=
 =?us-ascii?Q?JPy8AfdQg0H/oQh6KWo63o+u+x/iTbyYx1JGaYRl74ZQVzz40WiKbGrace0b?=
 =?us-ascii?Q?CFYJIume3fZOUfiK2jX9E5b81JxmwMHDwWcq3Qz/ae7VAfC/uBpFiDTMDIOr?=
 =?us-ascii?Q?pGz1x4McyfGBKYo1bDOCNpMJNK4tWS6l/p62OFeGYwt7575LWMtjL3kKYr+P?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d3aab52-5cbd-4f39-efa8-08de1affe92b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 17:39:16.6349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUL0ALj3vhVUDstUDoT3TXch4YlpyF1Aen4FhyKJSbwFpNa3YrAfaJ4yrVRq8BfQUXQIVI4u3diRmB7PMRUwDHtMdXJuc8bK1iz7D/Gg/kk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5027
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

On Mon, Nov 03, 2025 at 02:18:19PM -0300, Gustavo Sousa wrote:
> We will need to HAS_LT_PHY() that macro in code outside of LT PHY
> implementation. Move its definition to intel_display_device.h.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  drivers/gpu/drm/i915/display/intel_lt_phy.h         | 2 --
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 4da4b1e3d817..df464eb0be7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -187,6 +187,7 @@ struct intel_display_platforms {
>  #define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
>  #define HAS_LRR(__display)		(DISPLAY_VER(__display) >= 12)
>  #define HAS_LSPCON(__display)		(IS_DISPLAY_VER(__display, 9, 10))
> +#define HAS_LT_PHY(__display)		((__display)->platform.novalake)
>  #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
>  #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
>  #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 034c20c66baf..e52aadfbdf93 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -39,6 +39,4 @@ void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state);
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
>  
> -#define HAS_LT_PHY(display) ((display)->platform.novalake)
> -
>  #endif /* __INTEL_LT_PHY_H__ */
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
