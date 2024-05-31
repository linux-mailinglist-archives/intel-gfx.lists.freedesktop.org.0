Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 567AD8D6134
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766DB10E77F;
	Fri, 31 May 2024 12:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hRuLIoTX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9A710E6FE;
 Fri, 31 May 2024 12:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157038; x=1748693038;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yUl5BMT/megv94zNMYrAFkkTGwoegq1AmD0f0ObBGKA=;
 b=hRuLIoTXjkzacw9U3dxx3Krwgt60lrLJAPq0opYgOH7RWpzYscKt7Gns
 cl1kxvmoeZEh7ruJgDaiT5fDH4WvNotWNiEKgYmqSfzXDd16HvmMosRZQ
 Nc2jsRs2yF24DP/iFmTb2csmIBZc3fcfWUP94T00AAaX3qwepagk+hs1t
 7C5uKwDHkJbhUdysQnb+es0heSC7P191MeCWz5oBcNPFD2PPPdXWEu23c
 PG58JwYpfA4RZwSCGMztuWugwYGRV3UGcBnG/j5L2zE8BuigLsq2Em+If
 1pBKHWw3yMsS5nB0aqR39GUR8ysZJccRqMqY2AfDG3VjIklDbfh089yk1 A==;
X-CSE-ConnectionGUID: 1sEGCzZgQtClllPHD+ENzw==
X-CSE-MsgGUID: x9BOoMJSRQKf4u3n5mRW+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="25100627"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="25100627"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:03:57 -0700
X-CSE-ConnectionGUID: XGCFSz6lQuiON8nWjitDfw==
X-CSE-MsgGUID: lrUgCzaqRFu0rkgxvfxoSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="41216249"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:03:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:03:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:03:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:03:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DWbEflFzaHfINzg3xf4VETDYAFogi/xNs0p/QuSQnjQ9cKXM9Cf0wUUaCr5C3Hmoh/CHN9Ll2ET6cdhEUSCQAAbM0jutFckWQxfDnIYx5Z0DrhxbF/ba00MiB51Cy1e6xTuI1Whnmo41CgL//vBRr5jkSBfoc8iAE4A3LTjS7IWOvp/X6WWW94F78yp2O+ESKjAv0hMkdbwkvaIjlM0adff7gsfUk+3gPp2R2Q261bTuJtYBSYqWwGjCIGxMm4VCIda4FxIqT+oy+ejo+P9sUN4AA12PMaTCpUFxHAsDK5QPKsqQux37O+gpmzu7RJd1k1XYX7dGUwGYmPjyJpVboA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X5fgXxdBWZ06T/egTZh0SuZvVvt+lZo8gFIex0tGMOs=;
 b=Gl/fJT0KrzC9nLbKPObG8urOfJfzcTvJ/NpUckQ97QWpdcwTVNGsnnQNSuzoIhXfQq2NxmhuDvLcnLWp38PXl/TY9FwhehSbgySC1Dig7w4XRoWzN4CC9QhfdcV5OZ2WUvdDp3PVtFSs9azlWMgt7D5MX/Sq6oDwuhaKPAOSVVin1b9rm3bwd/osZ1O55tlXe4qs1gEyGz5+T2A2GaJV7FIbQN+9EX9njQR2/Gh410ybBG/iVZbStL3XP2ZeXULZilH3qciLJ1EN268e1aJpm6aDc8UV/bQ4cpg8C4ZlhTUPLxSlV5tPwRdaV5e6rMsWXdkVbBRp0tDOb9LKZeaUgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA0PR11MB7281.namprd11.prod.outlook.com (2603:10b6:208:43b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Fri, 31 May
 2024 12:03:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:03:54 +0000
Date: Fri, 31 May 2024 08:03:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 05/10] drm/i915/display: include intel_step.h where needed
Message-ID: <Zlm8puJHqqA9kStv@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <abee71a6c6edbd1a3ddf0f97838977e53feaa5ff.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <abee71a6c6edbd1a3ddf0f97838977e53feaa5ff.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0283.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA0PR11MB7281:EE_
X-MS-Office365-Filtering-Correlation-Id: caa9cf95-c668-4d96-384d-08dc8169be2e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T958n6t0oAzQe9uRXPPeGWlvUx5U+3PQxwwIdKF6JAe4rXUcXLAxfjIQlZaC?=
 =?us-ascii?Q?ijCREpDYVQCeXkVXYmsYDZvzv7GXUqqV693/kAfzFgof+ahslwFztqAI4ERi?=
 =?us-ascii?Q?mEAjzXlbNpI0frMGkZ3Krw2v3meuuk0FN0d3T028zsQjm3JDh2VMG9+wk0ov?=
 =?us-ascii?Q?zEjV1ufh6Pp87Ujb2WBXkBYFwAUNaPcfqzirO7vlnDWtiNfe2M1VXHT7PmFN?=
 =?us-ascii?Q?GWaS3CEvhLLPW+N0hR98W6/NRyiR1itmu3KEka7r+y4e3EepFfELkJbP/Zdw?=
 =?us-ascii?Q?b+OTfLYmiH2N2TeJfuIptX9KtQrWp4wdMV/5Zzkub3Bc7EQXhlroWJGuQ1nn?=
 =?us-ascii?Q?ryDiFrKA35cVN8O6m31OGhMvoXnwHDW6zVSOSfrV5fxR/60twSKqG7rhHxaD?=
 =?us-ascii?Q?im4yWY+5ddD10sBXpxXUeN00C5yKKZscbULSs/c4PtM4Kq36MaQlN1VarZqA?=
 =?us-ascii?Q?ChUobbxwdK336a9CxtLdOEtAAVEqaPLVeGqyeQlIu4rNz26SVe1IEzQxakrw?=
 =?us-ascii?Q?M8/A6Xa3iyGm5Ad1pFqU8bFbkrR4ISPTHQnOWxeNqlj/+7+jFwOjYMoA3pI0?=
 =?us-ascii?Q?tpUEde8ExCXZ2dccOuHk98sKs+bzNQAc7YrXnH/MqSW1HOWdRgGJvLk8c1e3?=
 =?us-ascii?Q?nOYx5sPVEWWrNjYyIKmzfPUmjxaseiCFg+50Y/vTqic07/3920dZysnLVd5a?=
 =?us-ascii?Q?08E+yJ3kj180pp6ip5miMHtNwjKiiIp4BbzTwhnOJ+hO8UEZk3rs7ojpxubc?=
 =?us-ascii?Q?4dTsykpmDyxenK9KcEpoGyIdCKHIcz0qCnR2vX2xTz753mgMwCRg+1tY5oMk?=
 =?us-ascii?Q?LS2+5+20wjXE74XNPY+rAX6Tc4+zRyefIoavChYIfObdgkudzzXUSOWDQq4n?=
 =?us-ascii?Q?cOPd2S25A/+4cAWubkPCXdnJWSx6qvgSr/FN5rPq7G6jAkvrJooPpKMqlU/S?=
 =?us-ascii?Q?hdVH8IU82LH1dpRf4Sa4nTJeGZv9XV35HsudvmHlPPDq/IfMH6O5431iBrF/?=
 =?us-ascii?Q?fQ38VUViCTZBZuzD6viC5tINe/vCrmSGkgU81Nqx/fpZ82rokLdGEilkYGEJ?=
 =?us-ascii?Q?wKzTu5LzMtyjzkMRDhPrI+j18KOgQsLg4aqoISZud99Ggh11J+T5xzosQWso?=
 =?us-ascii?Q?QTyzh1mXvGpZEzcUXZpAAyrQ3aAvAQOPEIfcoTiVMuZxzgzXZ0/pJGMJGDD+?=
 =?us-ascii?Q?55fzLGNulDPXv8y/ttnZK5fAPbgrYuGadt3Xyvil6KgCevk8qHEww/JRc+bD?=
 =?us-ascii?Q?lyDNPx/ToeuDyCCNEpsgvBs9KL19OPKjTMELDcP2hQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OrEe6uarZfDA9ijxZqiZ/T2kQNYmAdL/1Lei2594Ofd7mcIbJ5jFIHXTE82B?=
 =?us-ascii?Q?WRgHmqRfzEi0HrIU5/BcLboDkg5W3WN3gv6EWXgRji9lrhenLfYB4Tlv+SJm?=
 =?us-ascii?Q?mCgT+8boXN9Mez4/IeX3wXllwEzK9AG3SYoPdXMH7cz1ITkJQ/t+jf2VD/bZ?=
 =?us-ascii?Q?MC97/Tu9B+re8G92sNVimhJrYcSx4c8ncdiE3J+lH62wAyRs2yRrXnvyrRKF?=
 =?us-ascii?Q?VdBpOiWq3cvpGU0LluMea5vLwPzjTrfhBUDsJss5OC3JrGBfi1Akc5z98TsI?=
 =?us-ascii?Q?DmRkbWARpL5d0IP4jrPit4a79jkHvwFKp440gBKWqjc+fCRL6A3ZJz3HUDdb?=
 =?us-ascii?Q?D0KK9DABCkgAh7II8DMyYIo83eNLbtLsDNx2beIrJplpPIoEK3pH5v4MftVG?=
 =?us-ascii?Q?F6NFJ8sqRB5TvnQS4bcKiseQwKWUh6k48iiJzUAe+3TkMxS3bbvzaAkqALEe?=
 =?us-ascii?Q?h5al3hNnqmDrI9dZSwvoSNTbjWZGmegl5pKRcWHflLnL89fKItArpwlXtRFS?=
 =?us-ascii?Q?CUN9ZS+BVFCQSp+OjDdErIBSo9w0q/LzM5eMESbQAQqGgPOuMYe4ye5vZN15?=
 =?us-ascii?Q?6gXMv3ve6CGLVdmjbs8atBblUjxz/iidhGL5J0HqoTpkySnWitsviUxUNfR2?=
 =?us-ascii?Q?hCLUtONooZo8pVHV+ZOXoiUPP7T3rkWWI9GtHNdqtDenovHUqthm44vPh2hR?=
 =?us-ascii?Q?OOSytEW03QB9ICEcTO6tGeQ8wXfhWq3LjHaEQutwo4op95HFX46WetXffT6f?=
 =?us-ascii?Q?jp7gOjKv9GRZxbu9Jc0UqBMH1QNidDatMBFZbemK5A0S5taSdSc8VLt4brlT?=
 =?us-ascii?Q?50cIwlyTVln5RgPCm3EO0AFV++eGmUVM0gkh5fNiOIS+/CDrbjbb7x0nevGh?=
 =?us-ascii?Q?dsxwYCakr6b/Rkv9jm8uL6tc3gjUfkRKRFf54CkhH3NqeIcWyF7/AXlrGfMm?=
 =?us-ascii?Q?/gYRETfe22BtsacmTHcpekAoerJZJcDel8ajvr46iIrmHaHDkTyDlFnCWebD?=
 =?us-ascii?Q?XeHYOi9Wq+WMbrG8Ij/G3maMsr/afdK2qctsH4MuLlPAMrd+/tSUdzARaI9U?=
 =?us-ascii?Q?5VIj8Lo7ldM2I4fk9/OgTq60eePUuL1TJUcxcI/AXA8xAz7PiK0kF50tJD2H?=
 =?us-ascii?Q?OXCQV3Hh5Hv8r36+z0fv1b8eDJxsrm47wmKJaWIEU4yNdbQgPwuGSSkj6Gdv?=
 =?us-ascii?Q?e72h1EHElDdaSS0s/gSk1+YIP2aMb5c7DfReLKk4xXW8HpATk0rstldm2Qq6?=
 =?us-ascii?Q?l9RwZBVk4FVaarlAnTXK0vBmdoLyWQVR6lguWAL2LnysTCubAUZ0nRiBBejt?=
 =?us-ascii?Q?O6UUZZ69A7OiHFvvOV0eUOTYDQW8Ehc3j+RL3A5sn6ja03tXK0nyyXKlgmHA?=
 =?us-ascii?Q?xHcHCNeWqiPALIi+O9kQLGaoPyEi6Tzr2zxHfmFI/Nr5y85JOZ8llbNT/TRQ?=
 =?us-ascii?Q?vS58p8Rin9pPd+tMCpCvcdu63k0U2zq799JNdejMAxKK5RMCizMZPGYw9huV?=
 =?us-ascii?Q?UCEFQYQSAH/UJFFh7gfkIOSe9s9hJBmixzgZHjICTRX9QVhHOiQN27QKwlEE?=
 =?us-ascii?Q?t1dlKcHqaTBkPvEu2v4OZgCVNdexEdpg2E+MvxpeFsXE1hMjI2R5cWZ4f/SV?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa9cf95-c668-4d96-384d-08dc8169be2e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:03:54.3864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 66fnx1Z10nZRfTCE0FBNzcbqhde/2dkat/JoWyzhMC6CcyR0fS5S6O57OJAJwPeRyomC6dUF4PSchUZbyj/hpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7281
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

On Wed, May 29, 2024 at 08:48:09PM +0300, Jani Nikula wrote:
> Include what you use. With this, we can drop the include along with
> xe_step.h from xe compat i915_drv.h.

it was hard to see this one...

'intel_display_step' inside the intel_step component is not the right way.

we should probably move intel_display_step_name to intel_dmc.c which is the
only user.

But this can be a follow up since for that we will still need the intel_step.h
include in here.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 --
>  2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index b5ebb0f5b269..852c11aa3205 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -31,6 +31,7 @@
>  #include "intel_de.h"
>  #include "intel_dmc.h"
>  #include "intel_dmc_regs.h"
> +#include "intel_step.h"
>  
>  /**
>   * DOC: DMC Firmware Support
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index e5966f07a924..3e930ce25c90 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -18,10 +18,8 @@
>  #include "xe_device.h"
>  #include "xe_bo.h"
>  #include "xe_pm.h"
> -#include "xe_step.h"
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
> -#include "intel_step.h"
>  #include "intel_runtime_pm.h"
>  #include <linux/pm_runtime.h>
>  
> -- 
> 2.39.2
> 
