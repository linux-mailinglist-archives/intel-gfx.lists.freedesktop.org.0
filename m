Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7249D96DA9A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 15:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE0510E8C0;
	Thu,  5 Sep 2024 13:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VXP0uTNU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3949110E8C0;
 Thu,  5 Sep 2024 13:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725543891; x=1757079891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m8DrRa6wTtWa3Of/sRpMhNTxZgF4b3v8CkRCpsoj7Ls=;
 b=VXP0uTNUfwlg1apkQcy1V3K3WuFSAN4aDP7HVznEJ1cLyyFbUACPB9kh
 yXyFG5fnE66mr9vRzmdGPQxPQF95znJ9d/uDnpaYl7neeVNHI2YtnmiPL
 H/6kEkKb80iT6Q2zMyplxC3YNpV7pakFbQ4tYvPsuzqJFpgxT2sub2T/n
 s094PQm3drtpLCDsUevhW2kczXEvIljYSYit3DB6glmMtrLMfPwLzuRgc
 GwEMULLooeVUJeqOilX9uZWILfgFIzJMUOZEea4BeTl4QtHHRgdH6e62z
 hlW8sCdzOzqfqQa2j9F2f/fCFr3CLNqPReOa1c1psdIhigOwcyzfoVNwt g==;
X-CSE-ConnectionGUID: fokSK+4xRy23CTcirazbqA==
X-CSE-MsgGUID: sVKPLkEfQt6pk/aBsMvzDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28148312"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="28148312"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 06:44:51 -0700
X-CSE-ConnectionGUID: LkWcg/UGQJa8LtPBWnHazg==
X-CSE-MsgGUID: 0IZwgD4pTRadT2aEpj0aFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="103081064"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 06:44:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 06:44:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 06:44:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 06:44:50 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 06:44:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CF1MwWiWJ0FnhYqoLsXJY0p4WOd0Awv0qvSME0CoKVWsa/HktRz0vV6lcQo9lqVoRjYiCByooTE27FYwQ2yQ6lDOCsdV9YtmgW6xSnMz0Wo3LHjhA3RS2NqIvLsKyeYCP7qTrsfxSC3i3boYrodLiCVAmotdY+2H7pCEgLP5oilMWhRT/d2Y6TDFAPNtoQconQgoMDkhrqEfh7gnJ2cRkkZE2tWRe5ISYD8/UuomxaoLTWgl3Ch9JQGnH00tg7Sx95BLvG2KHzT8lu0cVJAw2NXhlciMznpOjGsjzODcKOIOpkKcWsgoTBVJpg0dTiuoSKD6SRNwI3BsyoE5Hn3Dtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M2m0PVrO6cm8Qa59qgqkxoz4u+m+0XkxX4xDNXnmDIM=;
 b=v3HE4RYBKFMSwd8OS+/Hd8cM+6qcl1o2EOEsUHwVR6qZIhzA1L6yUQmWzJty2Lh/HBAGcJNqsfrPKCm3C6h4H1zdxDkSIrf7NC5K4tPVJ5MjZHYcO+2zQdSAMWFXYMtJd/IdqRnQf9U9+ZaoXTsLHJATHwnEZNySKM6si77E+j0vW01SJoTj9ifVAisNwG/xA+7h7JvnSbEVYKxyBI7QlAvqkrI+6AsfiKH8Xmcvnx7eIKg7q4vsmfbuX7kOtbyFWC5ogbpYSRcggffT7Mb7aOBaDKLdlhxk2nZxqVPsLIE9HRAtgqMzx8jHqBMiEXksfwKzXzs569FJAC8PRNrP5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA0PR11MB4559.namprd11.prod.outlook.com (2603:10b6:806:9a::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Thu, 5 Sep
 2024 13:44:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 13:44:47 +0000
Date: Thu, 5 Sep 2024 09:44:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [RFC] drm/xe/display: Merge xe's display info probe and i915
 HAS_DISPLAY checks
Message-ID: <Ztm1yy9JxTUgQMyd@intel.com>
References: <20240904173713.26891-1-rodrigo.vivi@intel.com>
 <ituy73yzuwpjxjdwm53a6etoanj3y7brwk5ag57bhw4hlhf6xs@hs6iaclhkvt7>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ituy73yzuwpjxjdwm53a6etoanj3y7brwk5ag57bhw4hlhf6xs@hs6iaclhkvt7>
X-ClientProxiedBy: MW4PR03CA0152.namprd03.prod.outlook.com
 (2603:10b6:303:8d::7) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA0PR11MB4559:EE_
X-MS-Office365-Filtering-Correlation-Id: 9740f83b-f9b7-4564-19aa-08dccdb0e82c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ooTzOAtXsJGvF5H7dE+YZajpKsMeRQq7I+3fKRqe7GIG3TUEUeWXZEPvVE76?=
 =?us-ascii?Q?IiAk+U6bG+KSDzVzS7+rnV00LFHMgK0craqvKFkxmzDgOI2hTqX2GyNQq598?=
 =?us-ascii?Q?4vuaOeZT0wffSO7VN6RTcYpgS5GNcn6QRjA4wCnlBSNqzdHzQ0+sN0qc+eMq?=
 =?us-ascii?Q?5rtQclSYTijaRqLtnvT85zIjv4AMuNcPqVerwAshZuhwLzaWCNd0mDLTTymd?=
 =?us-ascii?Q?2PWyM/Z7ug2c/G/0igZ54hBpi28TlO3x7OLPfxoCzr7cmlJ8Of/fAesmmXus?=
 =?us-ascii?Q?UAmPdRtqqEokUsQV4xOu1Z6gZyXqGkw0Mw7fQHwDnMwBoEMbo7nZiHFG1SVd?=
 =?us-ascii?Q?Q34Ww5lhZjfcxms28hIXUdES6ZB4R81+YHqZkc0KJdCWbSVbNzlsUa/FEVdE?=
 =?us-ascii?Q?F6iwBZeNGGOmcCucS9oVFwaQXQRcQnMa36Y4KRrkex2ixQILK1hL5m5CsHhT?=
 =?us-ascii?Q?9pT3ad4bzsTw0Q6QINrN3SQLyINOgXwCWL9oSTDrNQKn5zdjrgV5UMzH7HtL?=
 =?us-ascii?Q?v0/W2qkQNTiwsU+UQ1whGl861974WGrzd3BAGQCtUtTmUSC5KzEcLkviLIoU?=
 =?us-ascii?Q?dpf2urz0hQlA+ug6O2k0uKysLokvNhCETlAzXaW7IzMrdFEMIkRGnvcsuQ4/?=
 =?us-ascii?Q?w/9rYakyYhxw/5rLE3HuHpVBv+QC4WkEOm8puvhqjwOdR00vI+89jHJHaHNt?=
 =?us-ascii?Q?5exmY9YVk0g3dZRJtesYrL5Sr1UvYQSd4LWodn9zashl2xdFuI2NXrHXhwq8?=
 =?us-ascii?Q?ZWQQZQ3oc4q+cVori8+KcBteBRlalkr+AY+deaR2RODdNSLea6mLl5j/9xso?=
 =?us-ascii?Q?kBconMF/GV0I8EsmnQ/tqPS5uJePGvUt/7Rloa/D1MMLyi3aUAOqxFgwXpMX?=
 =?us-ascii?Q?mU5wddlFlMmE737sIy0LtKLgiahXfe6p0QaBWNjv5dqreF9pQWENifXdJAt7?=
 =?us-ascii?Q?mBb2bUavunxei8lIZplFIHPcYziC7oB/zGDU3AXApeRQEtHqCfJoga1OhnXj?=
 =?us-ascii?Q?TJCIdiZCo39OXPTfFJmgIfWzANG+vNwlSv/tI5Ex8zU3KBeLHkCELwACePxX?=
 =?us-ascii?Q?fmCdDyUfyG01iuGnuePFkW7jBD11EmOOn0QtG4oLbuxQ81hrw2KgpbnJB56D?=
 =?us-ascii?Q?nnL58K7rYj5W0oLCXjaDpRPM/v302/h98PWgbl1gUbaq5DHcxmYB+WVDSIw5?=
 =?us-ascii?Q?Qk/YaXOoMMZXsnleHtT5XZu1fFTRmaV2k9QNgC2OuvYVeZ6MVDhG07IaWIfu?=
 =?us-ascii?Q?gme+7xyMzVyrjOBZ9vz08w9+s5+1gf1hIJYdEEB16/kFO6bMBsXJPhUL6NWw?=
 =?us-ascii?Q?7yeTeIKkV0E8i+A7JCKJ4KEjlT4ll59ChBb7CBVgiam0kxE6yQo4+4+M/EDz?=
 =?us-ascii?Q?7JsfXyU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1Jq+14kzuGq5RHJ9OkYXVsmNsw+ihFAgthhl/TCd6VVnOq3o8JK/p670ifRY?=
 =?us-ascii?Q?yG2BVIGpnxPu5P0pUgaIPybLwRrAydoLsYIyAfg+uwz+Eo+q5JOcWJILpJ91?=
 =?us-ascii?Q?DtxzUY/rrm6krx4GLe9GCR9RNm5T9A8vQHxmdT5uf2KeMPryfxq+ZV//FLmn?=
 =?us-ascii?Q?rK1uwRz4NW2XHhpT6wvH5rAs2VZn5s3FZbtzAAcQWNe1ypvzIdjDvG7gXUhX?=
 =?us-ascii?Q?5XkDWd1Qihhl7F4VnRBWw3b1zJ7Unse5zALvLiReLBCnghinD06WOalHcWdy?=
 =?us-ascii?Q?I9ZGoxkDgMWHIsmXW/NICKf3MUxtOkA/pi7rnufaWDgK8+jHe2WK/SimIgwP?=
 =?us-ascii?Q?dumQytDjoPWuVyT1P1+SgLr169RAhy9mi0gmP5nfKviKjtir4HfAvO63whQl?=
 =?us-ascii?Q?NRQY1Ax7BaFf0uu790k081Ej68HkLfr+ArBhidfv40Y8/qNbI+jSbpFFq2bp?=
 =?us-ascii?Q?WlCqkADOMlrXZSCqvQSvy73XgNMES9PHLnkcDGMXYzDegUMegli0CvCBtJkS?=
 =?us-ascii?Q?ECwnVvqMN5jmQoAm8bM6DAeZH5VwGWpsyDNUoU2LrYHJjbIKef/qokCNczqP?=
 =?us-ascii?Q?nf7PnyDr79xmK3htl+WW814QO6hsJkM0sxp0Do362ld56LY4AoEkv2BIv0Rp?=
 =?us-ascii?Q?An7MCCGh3D9iAj12X3n7qOWcNSlSm7z1EUmINR/jpq+CRpH80v9D/EhxXLvL?=
 =?us-ascii?Q?yp+e0xwWM2612QICYBEg041Rahow558TX5zaM345pzUkJYK4qL/25UpnO4+D?=
 =?us-ascii?Q?TVD0tX0/4p+yy5p+j5MZ8efQIMo7dGw+odnvoWQb/FWyMIbQay23NrcLPAre?=
 =?us-ascii?Q?a8NkxO3ETtWxN8ARLcXrOiWSdNqliT8K/JJUOP2h/AwlMD49VmowA+hZB1rW?=
 =?us-ascii?Q?v6eMJV9hrkYhl/arcJi09hRjbkWJAZWuB9LkHu1OitxNycmg/uMObIC7CpJB?=
 =?us-ascii?Q?w57434w1+5ZCXIRKVmrDBL+kBaiK9DQQYb8EptZ7QamludGtsPlduFvx4Cs1?=
 =?us-ascii?Q?2viHsnSh7Ay/oJ0KL/EivXbUruQQoKe2XaKfCHINZ8teNXilyLRL7Eosx1Cx?=
 =?us-ascii?Q?5h/zkAMpuwcrGGQZDjBDKR26IEdWcFJq0iEWO+HYvblP8V4t90wB0rdmcdJY?=
 =?us-ascii?Q?xbBuA1OF0OelO6T2DMqiCLJajm/pkY+YHhC1uD9VRxyjqHmts5xXxMqefL25?=
 =?us-ascii?Q?9f5YJwrfVyW6ik9BSqveE/bw4N4YHjKs4DXsF0ZinfFBHDUh5i4g0xPlPS4y?=
 =?us-ascii?Q?3a6mldEPagGImlfcTuE5vA4dlTum2xbGiTJp4OtCZ76syd94+mcFKQAPSNL8?=
 =?us-ascii?Q?xl6LFsfRDOaIgbsxuTpxRH04lzaFcBLv0X1FKNk5VLsZbn5ng6b50TPrUgjL?=
 =?us-ascii?Q?bSGySmkjeBxQiYbshjska/q0DTFdKY3w7Tu+7LRfYFOqaEK8XjRD0fVewra8?=
 =?us-ascii?Q?5YU8mzgohdQO3IjzinKhc36et2eeaU81aNPnUvPbzpLL2XsRyuMMp78jXl8j?=
 =?us-ascii?Q?OXcn7/+3EU8we8y2rCHM5y2Tj7+XiVt7K6Lg4BE1PBz1/mR0ZxCv3U+ig6hz?=
 =?us-ascii?Q?HUfNIIIep3vyfvumRfJtpo8GN7/4qge2+5FBaUgHm61XIuDY8Q9pjLQyKMsr?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9740f83b-f9b7-4564-19aa-08dccdb0e82c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 13:44:47.5799 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b96TZ4GZvHDAAlTFz4CAaO8igUKFdSZw+KkFlY6Ucm6Vx4HZqaY5pkfOKHHOBuvmCOB1c0Z333BlEgsxUg3LtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4559
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

On Thu, Sep 05, 2024 at 08:29:22AM -0500, Lucas De Marchi wrote:
> On Wed, Sep 04, 2024 at 01:37:13PM GMT, Rodrigo Vivi wrote:
> > Instead of having multiple checks and the has_display in the middle
> > of the functions, only execute the Xe display functions if
> > Xe probed display and pipe_masks still have something valid
> > after i915's runtime init.
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> > drivers/gpu/drm/xe/display/xe_display.c | 65 +++++++++++++------------
> > 1 file changed, 35 insertions(+), 30 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 75736faf2a80..1e248c7aaff0 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -13,7 +13,6 @@
> > #include <uapi/drm/xe_drm.h>
> > 
> > #include "soc/intel_dram.h"
> > -#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
> > #include "intel_acpi.h"
> > #include "intel_audio.h"
> > #include "intel_bw.h"
> > @@ -34,7 +33,12 @@
> > 
> > static bool has_display(struct xe_device *xe)
> 
> I think has_display is already conflated enough. From the xe side I
> wouldn't call this has_display if it means something else than "the
> hardware is present or we know how to drive it". That is the meaning of
> this flag in drivers/gpu/drm/xe/xe_pci.c and this function here later
> changed to mean something else :-/
> 
> > {
> > -	return HAS_DISPLAY(xe);
> > +	/*
> > +	 * Xe has probed and configured the display,
> > +	 * and some pipes remains enable after
> > +	 * __intel_display_device_info_runtime_init()
> > +	 */
> > +	return xe->info.probe_display && HAS_DISPLAY(&xe->display);
> 
> I'm not following the motivation here... Shouldn't we remove the
> HAS_DISPLAY() from here and rather change the display side to do a
> return-early?
> 
> if probe_display == 1, from the xe perspective we probed display, we
> shouldn't be looking at the internal state of display to know what to do
> on this side of the fence.

Right, but so far we have other if (has_display()) in the middle of our code.
Like Jani reminded me yesterday, we still need to check the state of
pipe_mask after runtime init function before many calls.

So, the quick goal here was to just consolidate the checks instead of
the current sprinkled 'if (has_display()) calls that we have around.

So we can proceed with a further clean-up and split on the display
calls and then move them out to intel_display and minimize this
file as much as we can...

https://lore.kernel.org/intel-xe/Zth56C3s8lPQMEBB@intel.com

But another question that I'm making myself since yesterday is:
Shouldn't we simply kill the Xe's display modprobe option at this point?

> 
> Lucas De Marchi
> 
> > }
> > 
> > /**
> > @@ -104,7 +108,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
> > {
> > 	struct xe_device *xe = to_xe_device(dev);
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_power_domains_cleanup(xe);
> > @@ -112,7 +116,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
> > 
> > int xe_display_init_nommio(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return 0;
> > 
> > 	/* Fake uncore lock */
> > @@ -129,7 +133,7 @@ static void xe_display_fini_noirq(void *arg)
> > 	struct xe_device *xe = arg;
> > 	struct intel_display *display = &xe->display;
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_display_driver_remove_noirq(xe);
> > @@ -141,7 +145,7 @@ int xe_display_init_noirq(struct xe_device *xe)
> > 	struct intel_display *display = &xe->display;
> > 	int err;
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return 0;
> > 
> > 	intel_display_driver_early_probe(xe);
> > @@ -172,7 +176,7 @@ static void xe_display_fini_noaccel(void *arg)
> > {
> > 	struct xe_device *xe = arg;
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_display_driver_remove_nogem(xe);
> > @@ -182,7 +186,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
> > {
> > 	int err;
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return 0;
> > 
> > 	err = intel_display_driver_probe_nogem(xe);
> > @@ -194,7 +198,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
> > 
> > int xe_display_init(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return 0;
> > 
> > 	return intel_display_driver_probe(xe);
> > @@ -202,7 +206,7 @@ int xe_display_init(struct xe_device *xe)
> > 
> > void xe_display_fini(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_hpd_poll_fini(xe);
> > @@ -213,7 +217,7 @@ void xe_display_fini(struct xe_device *xe)
> > 
> > void xe_display_register(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_display_driver_register(xe);
> > @@ -223,7 +227,7 @@ void xe_display_register(struct xe_device *xe)
> > 
> > void xe_display_unregister(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_unregister_dsm_handler();
> > @@ -233,7 +237,7 @@ void xe_display_unregister(struct xe_device *xe)
> > 
> > void xe_display_driver_remove(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_display_driver_remove(xe);
> > @@ -243,7 +247,7 @@ void xe_display_driver_remove(struct xe_device *xe)
> > 
> > void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	if (master_ctl & DISPLAY_IRQ)
> > @@ -254,7 +258,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
> > {
> > 	struct intel_display *display = &xe->display;
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	if (gu_misc_iir & GU_MISC_GSE)
> > @@ -263,7 +267,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
> > 
> > void xe_display_irq_reset(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	gen11_display_irq_reset(xe);
> > @@ -271,7 +275,7 @@ void xe_display_irq_reset(struct xe_device *xe)
> > 
> > void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	if (gt->info.id == XE_GT0)
> > @@ -311,7 +315,7 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
> > /* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
> > void xe_display_pm_runtime_suspend(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	if (xe->d3cold.allowed)
> > @@ -324,7 +328,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> > {
> > 	struct intel_display *display = &xe->display;
> > 	bool s2idle = suspend_to_idle();
> > -	if (!xe->info.probe_display)
> > +
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	/*
> > @@ -333,7 +338,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> > 	 */
> > 	intel_power_domains_disable(xe);
> > 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> > -	if (!runtime && has_display(xe)) {
> > +	if (!runtime) {
> > 		drm_kms_helper_poll_disable(&xe->drm);
> > 		intel_display_driver_disable_user_access(xe);
> > 		intel_display_driver_suspend(xe);
> > @@ -345,7 +350,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> > 
> > 	intel_hpd_cancel_work(xe);
> > 
> > -	if (!runtime && has_display(xe)) {
> > +	if (!runtime) {
> > 		intel_display_driver_suspend_access(xe);
> > 		intel_encoder_suspend_all(&xe->display);
> > 	}
> > @@ -358,7 +363,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> > void xe_display_pm_suspend_late(struct xe_device *xe)
> > {
> > 	bool s2idle = suspend_to_idle();
> > -	if (!xe->info.probe_display)
> > +
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_power_domains_suspend(xe, s2idle);
> > @@ -368,7 +374,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
> > 
> > void xe_display_pm_runtime_resume(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_hpd_poll_disable(xe);
> > @@ -379,7 +385,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
> > 
> > void xe_display_pm_resume_early(struct xe_device *xe)
> > {
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_display_power_resume_early(xe);
> > @@ -391,23 +397,22 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
> > {
> > 	struct intel_display *display = &xe->display;
> > 
> > -	if (!xe->info.probe_display)
> > +	if (!has_display(xe))
> > 		return;
> > 
> > 	intel_dmc_resume(xe);
> > 
> > -	if (has_display(xe))
> > -		drm_mode_config_reset(&xe->drm);
> > +	drm_mode_config_reset(&xe->drm);
> > 
> > 	intel_display_driver_init_hw(xe);
> > 	intel_hpd_init(xe);
> > 
> > -	if (!runtime && has_display(xe))
> > +	if (!runtime)
> > 		intel_display_driver_resume_access(xe);
> > 
> > 	/* MST sideband requires HPD interrupts enabled */
> > 	intel_dp_mst_resume(xe);
> > -	if (!runtime && has_display(xe)) {
> > +	if (!runtime) {
> > 		intel_display_driver_resume(xe);
> > 		drm_kms_helper_poll_enable(&xe->drm);
> > 		intel_display_driver_enable_user_access(xe);
> > @@ -441,7 +446,7 @@ int xe_display_probe(struct xe_device *xe)
> > 	if (err)
> > 		return err;
> > 
> > -	if (has_display(xe))
> > +	if (HAS_DISPLAY(&xe->display))
> > 		return 0;
> > 
> > no_display:
> > -- 
> > 2.46.0
> > 
