Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E143DA3EB6B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 04:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9279710E0F7;
	Fri, 21 Feb 2025 03:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwPCt0ZX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B361610E0F7;
 Fri, 21 Feb 2025 03:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740108979; x=1771644979;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fhBh09sX2KB5SDWbVX1+T94XGPLqoHuSZMseFYnchf0=;
 b=DwPCt0ZXk1uYEECTVRcRkpQ0l+Fd6vLg+GfRSKIUZpQq3IuX4dtp5/m3
 UOYsMO/OsvIduR7p6NM+sYtdDnPR192v06KL5gFuu0jWnMC28BFpEcbXL
 XxJjZ++PC60PH38s90SL+KYAz4nix4hOH7q1E8Qr4fpwS88rxOdDgtlTo
 vA6vhCgFmSP18dsnACwlpoXSaFHN6ypkHk7vECDSF9L7OtXORrrkK5q7T
 FQxAaob5LQnoqk5MijNB/zdobGNmgAAUe4bIPEtY1LQ5nkwHcuHu37izT
 Bf1jFjMTTcQ3+nxfVQ3B+rxrc9Jn2JKlVWntpPb52u8XLs4msydWWVptF g==;
X-CSE-ConnectionGUID: zf5GF5BTSs2ZwzRadj9AGw==
X-CSE-MsgGUID: FkSZOd27SciAMcvxftrzOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="44702849"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="44702849"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 19:36:18 -0800
X-CSE-ConnectionGUID: 9cKhS1wOQyajAWATlglMNw==
X-CSE-MsgGUID: EPYNUCs7Ro2Unc0FtEqfaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="115896944"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 19:36:18 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Feb 2025 19:36:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Feb 2025 19:36:17 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Feb 2025 19:36:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D4Cg86RM8UaHbK4v5g7Jt6JbKCaBahURSqkWP1Vkg8F1Vwfxs5aOAK82LT/jl/OKU7g/KekCtzitZo/rsCQ6I6z8KBltFBf47Jj8PpOSp0tAXxnnxiPWp27d5bityiez+hXV6ANU2cBfLMxAhTLiqNY4bq7kb3pM1wceHDeEQMw4cv1SXAJRtWuLVkOHFS+MpzKiAI2jtvzs4nZYuzH9LUV/Qiq2x6I+teNw1wjAwz2CRcNb+oGbCVmFDoQ7MJPRWNjuBnGdtxgkpOgukUuio0WK54pXSrGnTAd+aToNoodlzrdPwIrPT/+IN/V9EUaIcIXA2IAh61Ni3mu7y1jVeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGCHoQ794VHvllMA/JM/EDcxninGVRfLqAdTlm7X4qI=;
 b=eWdhWh+RZgEYDtd2SveNa1054VpI2dW6X3yuf2deXhOsm42fqI3eNWXEay24bR37OuynmVKBF27Csm+Ic64x6ypEK/pM6Lf4iSP8cWkA7h5zzOQPQm0Wtxu0P3hVTHTXW0jojnV9sefLbP4B93NkxEYacmdNNKvu8N6JdJ8eSSmG9nw051lCXxKAEatJ2WP/FnXyhoDlGnEQagfzCuF87i0vBZz1omX+WiIC8+vUlYUsl2DpdI391dfnuRdqy+JY7QO7UFowPnPmPAvNI8QuY/0N8ntwXtjFEQo/JDrZJjG2S4BuMkvTV2lBPNAtIJfBZI95kLsCe9yQE0nioVkBDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.14; Fri, 21 Feb
 2025 03:35:48 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8466.013; Fri, 21 Feb 2025
 03:35:48 +0000
Date: Thu, 20 Feb 2025 21:35:45 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/xe: Drop usage of TIMESTAMP_OVERRIDE
Message-ID: <rjig3e4brh65adini5k3jtyqolqqfw3fzpy6jbt6hlzq7v7fpm@mbw77um5355m>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
 <20250221003843.443559-9-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250221003843.443559-9-matthew.d.roper@intel.com>
X-ClientProxiedBy: MW4PR04CA0320.namprd04.prod.outlook.com
 (2603:10b6:303:82::25) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: 8236d8f0-7fd2-4da5-6b3e-08dd5228d4ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?95MKsnBXHW/fHO8dG8vy65+eZ4LHCsk0Nd78bx1W0VxOEPp3AMeOguBjXj2Q?=
 =?us-ascii?Q?jTl4yZhFMvBBGkvbUnP/znCC5sx4u7gYCyoXUQ6V1dVt68a/Fk3TAIPxFeS5?=
 =?us-ascii?Q?QcNaDzhaN3o2cG9Mfav2gwjLOm3oTo3iMl/sEp0sqF5Y4Bt7Jr4nWGTplTZi?=
 =?us-ascii?Q?mNBOeT2p7n5tlBk9naxe3AhGr1PlEQPi2XKlgv24m+lBxSSDDqWYeCVTv/kI?=
 =?us-ascii?Q?CvpNTJve4ps88H2KZ+6xfsIoDVi742OwsKfYMBiR9gc2Sp8y/fQoh/5aKMK4?=
 =?us-ascii?Q?Hp3hM/l4V2R0k9sN1NdyhWqCCRB7+s4xkqL5bpU9NIooyp0kE3cF0gniKjjC?=
 =?us-ascii?Q?Xa55Uunh4SZ8D3f03tvgmjbNtZ/XnfFdNdANKZ5k/DEa7o1HD+9j58QmUe8c?=
 =?us-ascii?Q?uWQ+p4gS2r08NqKhuKLD9G3l5zLKHBd3h71cr3VvuRKFW2OTXgzyvbPBIIcs?=
 =?us-ascii?Q?ihUiykYc2bnow4Pzg4X8r1oPeBQ+HtLiZPiK/i0Jg+tM7yMq5Hsb2NL26FZV?=
 =?us-ascii?Q?xup0TobxcdsQV8bRZkp8VtPixqa7Ntz6/1xd1hSihBUyqPP9hoEZkjZfRrJ0?=
 =?us-ascii?Q?fpA3YN/B9J89q91EYvKPdqvqJI2msdzlvnm7hsgc5aOpSyrJCx7aZQqPxHr2?=
 =?us-ascii?Q?ztO3gWDFEymFDTn4Da8Uz1SVT0W5UTJGuaAIdATu7X8Ppg3PL58R+LoEr25l?=
 =?us-ascii?Q?cTTTTJ1/DqN/J82aV7zTRLq79sY042X10ZnqhwXmY1eV57hJktQLoeZ5yCu+?=
 =?us-ascii?Q?fL1HCDkBVncLUiLUjL9LorBUB/yupwZHhl5Bq6tNv7lGludTkWNdp9FgKs9z?=
 =?us-ascii?Q?U+wxr/VHl0G6ohZUrNFLJT+m+EnlCWpeyF1e+bHCp7fvXYYBDFKe70DfPY7w?=
 =?us-ascii?Q?JOuAw05jKkD3kWF2F9TtwAvf5YI9n07pzvSsxLuaO4W9miXL79IKfi4KiBJe?=
 =?us-ascii?Q?QXPCCWaL8fyPwJOffonZE5wlMd2QhVan9ioNn1LqeX7R7L8yWkInWFkhQFBN?=
 =?us-ascii?Q?NwEWje6DTjy7oQXWcxwFzjlmBAurJRCGKDxbb+re5DVIywGN1D5tlL5sVefo?=
 =?us-ascii?Q?U36XmG95Nxjr/ZIq/C0Cpe2GnhOtmk2/J7lNf6g4tVouiKq6zV0fxhxFgnhP?=
 =?us-ascii?Q?QDEFdlpsb9NIFTQ6dPPqw13hHUg2iXzLifZtaGIDz5KGPqKm+a1rxlN7vki/?=
 =?us-ascii?Q?cdFx5R4q6Y1LBHQWSCOwkKzHTMkgo6K8w01Qu8qZpgBLyEuZkxtCbTUgGEND?=
 =?us-ascii?Q?hQbn3pynQ4fGCgyGFV7OP++qtKbGRKBNVZk8nKyF/CoKdLloC/eUHAinr8aq?=
 =?us-ascii?Q?O+m871TEr4oWMYswd3rm8GXz+HEUqHBm8Sy4LiietZDENOmybio9vQCecapl?=
 =?us-ascii?Q?edetVvtbvZ+56I4gL0GeE0FifGZz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XjiSUfqYPa+sgPyFviJxlmLv7mGVl0uxgxRWNE5KX9LI1QfSdTsHW5HZJByt?=
 =?us-ascii?Q?PjmG2bHPAiBvcZ7PFHI905sp2LNf86H0apd+t05xEJlEEtMvp7XTcWrs2Ogl?=
 =?us-ascii?Q?Kze24MXzcYpy5ORtSNsdWWMKb22QSz8IFc/zF0N6ntx93DCvagjlKETB509r?=
 =?us-ascii?Q?wZQD926aEu/2V5o8M2jQD5yxcPutPC24WXeaKo8Brrkf6gwsiuTuiaIm7Yoh?=
 =?us-ascii?Q?ca6egZzNbZdRLWFT3/LRuSP0rrlzcmxwDRPXg7097Ci6gQCGT40DDj3vtnKa?=
 =?us-ascii?Q?DoCO+tZNptxrd8ehLUnwtxqZfjRWhFIw36jTlwj/N3vfuifLuF/G5nWtgJzR?=
 =?us-ascii?Q?BrTbUTn/IS7I+Su1wovMsTOjT+VfZ0b0Ck47rovg6eEyAIRbu8Oor8oVA4D6?=
 =?us-ascii?Q?toOU3S2D8v7NDKm8cvpqm0LfEggX2hyKG+N7MLwfBGda7BFfFkIgDksj+Zaa?=
 =?us-ascii?Q?BjqKaoW3LHjzvYfPJrd4wJ2ag9f5yBfprczu5lg4IE9gyObasuIXElhkFNdC?=
 =?us-ascii?Q?rA/m/uHYiS+h+dyy26I4mEYkMOyAPlO0ylxyJCqN0B0fsbvjC8uZuQEYA4iD?=
 =?us-ascii?Q?GDJtOJPKFOP+h1Zd7pgYGRLeZSpLyFNx76Lkwg2sGh8e4xTACjaXRx9Gi3T+?=
 =?us-ascii?Q?lSgu68F32eXjHxcxGnL0gSvTeADo8f03zUNS2rcgWpmEk4ADOX8mz1cK5ict?=
 =?us-ascii?Q?KefdKLzgURWfbsBo1M9O0sbZMVkEKsLzA5oMZCUYp9G4U7sLXL5QKIolZEpv?=
 =?us-ascii?Q?Rq6IqdYv7OjXQWSBb1FtTi7vidVotzAVyjCtOvALxdKRrJaAoikOoY2571fC?=
 =?us-ascii?Q?U/hCqV4zeeU37zpJmJCcpAYeoA0mT7LuIsUpm8+M2CdE8O0aTRVf1SwIYzva?=
 =?us-ascii?Q?/z/74xZCAsV4wCc57YdQGFTQTr/w2zDbVHRgwOkRWK7vZ+38l0QcmoaWOL8F?=
 =?us-ascii?Q?BubvlJd23RzBcVcGvDNL1jDJMGETLQupl+OskO2IEflBHAG6IisRkl2tznvp?=
 =?us-ascii?Q?QjcvancyXVMDY/97VSJ4fWXwpmR/VjwB7RwK1CZM+OSTHzw38dGgW1ijQxYc?=
 =?us-ascii?Q?gVjr2+LGqD1itgurKY+lI3WwRQvD1eOMAzLkHJKGrR5fAXC7yx1j6fVSskh1?=
 =?us-ascii?Q?KJiQrdn+OotGfQVp3GGRATgKru6gUK0DRRZfclBmV91ASOjZSD1e4N8ujchq?=
 =?us-ascii?Q?lYZFdrya/LY3QvJBKel4LOrj1ipRAQOCe2IfGPlHu3Wz7SuBTGwoa42Nzx9f?=
 =?us-ascii?Q?SuEeOgSCfu1MZy03hzX1JGClgNJkIOwfuHFuFtNMpUgMLSSPfVHiG1qAgNKP?=
 =?us-ascii?Q?s+mo6A7oILws0rEorlxmZGc9Iu6iuoLX6li1SKRviWjoi8fSWJyaYkcOoBEG?=
 =?us-ascii?Q?kAKX6DAgFequROPUkwXaacoX8egntzVyzCvOcPTiqEWDCkg2xI7V4JlYS9id?=
 =?us-ascii?Q?3JMvC2mG+2jMDyE32hHvYV8fwkDj3J01ReBpDJpA/XK0Emq78fEIsKyd6z7t?=
 =?us-ascii?Q?Iu9F+9KEFuBHV1DMpEbnXobo1kQPozZ7aEIAOsq/MOreuDi2EnVDDTk9ja8F?=
 =?us-ascii?Q?fnaWWpVo18sP/VGbhMGCqnZYqV0IYAMSesVLqKGKQxpSZzQsQrXdYUmtCAZG?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8236d8f0-7fd2-4da5-6b3e-08dd5228d4ba
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2025 03:35:48.0318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: soZfzhhZm0LBPNmHFcmxkkvgO+DSwl7KkPyt12Y/oFDNHa33Wg77CTr8d/8og789hNW3ioEYreaLMvQV7J5wz1zn6Oob1jKyCs+lsjI0YDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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

On Thu, Feb 20, 2025 at 04:38:47PM -0800, Matt Roper wrote:
>On pre-Xe2 platforms, one of the approaches to initialize the GT command
>streamer frequency is to use the display reference clock.  That's no
>longer relevant from Xe2 onward (i.e., all of the platforms where Xe is
>officially supported).  Furthermore, use of TIMESTAMP_OVERRIDE to obtain
>the display reference clock is unnecessarily roundabout; the display
>driver already has a more reliable approach to obtain this value.  Let's
>use the display driver's existing logic to determine the proper display
>reference clock in the rare cases where the hardware indicates we should
>do this.
>
>The one problem that arises here is if the Xe driver is run on an
>unsupported platform (i.e., pre-Xe2), CONFIG_DRM_XE_DISPLAY disabled
>(meaning we're not expecting to touch display hardware at all), and the
>platform has the rare CTC_MODE[1] setting indicating that display
>reference clock should be used as the GT CS refclk.  If all of these
>conditions are true, the hardcoded 38.4 MHz value will still be correct
>for DG2 and MTL platforms, but there's a chance that we might not have
>the right value on the older Xe_LP platforms if we're trying not to
>touch the display hardware at all.
>
>Bspec: 62395
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/xe/display/xe_display.c |  6 ++++++
> drivers/gpu/drm/xe/display/xe_display.h |  4 ++++
> drivers/gpu/drm/xe/xe_gt_clock.c        | 28 ++++++++-----------------
> 3 files changed, 19 insertions(+), 19 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index 02a413a07382..e35d58079f0d 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -17,6 +17,7 @@
> #include "intel_acpi.h"
> #include "intel_audio.h"
> #include "intel_bw.h"
>+#include "intel_cdclk.h"
> #include "intel_display.h"
> #include "intel_display_driver.h"
> #include "intel_display_irq.h"
>@@ -548,3 +549,8 @@ int xe_display_probe(struct xe_device *xe)
> 	unset_display_features(xe);
> 	return 0;
> }
>+
>+u32 xe_display_get_refclk(struct xe_device *xe)
>+{
>+	return intel_display_get_refclk(&xe->display);
>+}
>diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
>index 685dc74402fb..b918f5d6b53a 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.h
>+++ b/drivers/gpu/drm/xe/display/xe_display.h
>@@ -41,6 +41,8 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe);
> void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
> void xe_display_pm_runtime_resume(struct xe_device *xe);
>
>+u32 xe_display_get_refclk(struct xe_device *xe);
>+
> #else
>
> static inline int xe_display_driver_probe_defer(struct pci_dev *pdev) { return 0; }
>@@ -72,5 +74,7 @@ static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
> static inline void xe_display_pm_runtime_suspend_late(struct xe_device *xe) {}
> static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
>
>+static u32 xe_display_get_refclk(struct xe_device *xe) { return 38400; }
>+
> #endif /* CONFIG_DRM_XE_DISPLAY */
> #endif /* _XE_DISPLAY_H_ */
>diff --git a/drivers/gpu/drm/xe/xe_gt_clock.c b/drivers/gpu/drm/xe/xe_gt_clock.c
>index cc2ae159298e..b61f944a7b03 100644
>--- a/drivers/gpu/drm/xe/xe_gt_clock.c
>+++ b/drivers/gpu/drm/xe/xe_gt_clock.c
>@@ -7,6 +7,7 @@
>
> #include "xe_gt_clock.h"
>
>+#include "display/xe_display.h"
> #include "regs/xe_gt_regs.h"
> #include "regs/xe_regs.h"
> #include "xe_assert.h"
>@@ -15,22 +16,6 @@
> #include "xe_macros.h"
> #include "xe_mmio.h"
>
>-static u32 read_reference_ts_freq(struct xe_gt *gt)
>-{
>-	u32 ts_override = xe_mmio_read32(&gt->mmio, TIMESTAMP_OVERRIDE);
>-	u32 base_freq, frac_freq;
>-
>-	base_freq = REG_FIELD_GET(TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK,
>-				  ts_override) + 1;
>-	base_freq *= 1000000;
>-
>-	frac_freq = REG_FIELD_GET(TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK,
>-				  ts_override);
>-	frac_freq = 1000000 / (frac_freq + 1);
>-
>-	return base_freq + frac_freq;
>-}
>-
> static u32 get_crystal_clock_freq(u32 rpm_config_reg)
> {
> 	const u32 f19_2_mhz = 19200000;
>@@ -57,14 +42,19 @@ static u32 get_crystal_clock_freq(u32 rpm_config_reg)
>
> int xe_gt_clock_init(struct xe_gt *gt)
> {
>+	struct xe_device *xe = gt_to_xe(gt);
> 	u32 ctc_reg = xe_mmio_read32(&gt->mmio, CTC_MODE);
> 	u32 freq = 0;
>
> 	/* Assuming gen11+ so assert this assumption is correct */
>-	xe_gt_assert(gt, GRAPHICS_VER(gt_to_xe(gt)) >= 11);
>+	xe_gt_assert(gt, GRAPHICS_VER(xe) >= 11);

this was probably missed in cleanups... we don't support anything lower
than 12. Can update this while at it? Or simply remove...

>
>-	if (ctc_reg & CTC_SOURCE_DIVIDE_LOGIC) {
>-		freq = read_reference_ts_freq(gt);
>+	/*
>+	 * Use of the display reference clock to determine GT CS frequency
>+	 * is only relevant to pre-Xe2 platforms.
>+	 */
>+	if (GRAPHICS_VER(xe) < 20 && ctc_reg & CTC_SOURCE_DIVIDE_LOGIC) {
>+		freq = xe_display_get_refclk(xe);

can we go a step further and completely drop using the display refclck?
For any platform we currently use (officially or unofficially, so at
most gen12), do we actually have any where CTC_SOURCE_DIVIDE_LOGIC is
actually set?  What would happen if we had display compiled out?

Lucas De Marchi

> 	} else {
> 		u32 c0 = xe_mmio_read32(&gt->mmio, RPM_CONFIG0);
>
>-- 
>2.48.1
>
