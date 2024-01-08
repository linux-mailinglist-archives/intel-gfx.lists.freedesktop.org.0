Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C694827A8B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 23:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6EB10E2CC;
	Mon,  8 Jan 2024 22:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51AB10E2CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 22:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704752311; x=1736288311;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Cm5Fxr0clis8R/n6XgaLP/9+bEJCptxZvnyLfnz1RJc=;
 b=lW3Iyc+MsjozWCOakzi/c1AjGeOwGpHzAs48UWsLcG2RB+2gwFPyQ3dg
 M3ylimRqV3gOiR0rAeLoON8cBYK9Fg1bb2CkhS/XdCoX0vc7U7UecxB9z
 fcTsAs0usnaS6kZmQ+WlwuiXUjnUSOLvJcW/NNUXPLoPwmJ6pMSrpyRle
 s5zA/LEtVtXPhrKOstxvxdnSKYzWPTEXgWlkjIZ+JrW0AGXF2WJk7sE6+
 tIQrxw1LgQvk3GEd8J3xu8Q1X0YyDpihhN+aONIXcf+/Vxdf3f0V4Lmwm
 sdLxAKVubN1pfME1ypwsCBh478uvT5u+RTOo1hN4KRnDNpjmFvR30obMD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="16613860"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="16613860"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 14:18:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="785000156"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="785000156"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 14:18:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 14:18:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 14:18:29 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 14:18:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DiMK3GDHaDD4MCkWAUmYsthGiJKxfnDT+0iHcwdsPiWhdxc6VXcrN69au/zxmlW1xHUQ+/4VAKU6weH2vIuhntZYsDpVDgN8yuBW+qClAn8mjzN0qHBHw9H0OezAcucQX+qp07mnTohGYpLz4h1+V032O5j4RsZQOxsSTtjNQLbYnhfYEY3Rz9SiG6NRz4/T+5QPO/j/93tUwvxCfFsUXMFBbNTB+ZqbfhDuMPM4vmfebdTYHiOZUvKy01QEBwuB4BCZmC7R2RYsbrZ/p9QjdvhW5aknso8NuAAGRzoBPgqtezOlKiFFBVnvXKaMOBIkEOu4p0UT5uzNzcBMNmwswQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VMW6s60f1LIvlJ9MnM6yTpg8+aM4DSln3md717A9Uj0=;
 b=ITsWXZnbk+r+Y7XYyPPnNmcwp/1rtfWQqf16QA6tNDbdA0KVqhAlvKu1hWimxvtu5/63NKaMIhbzVQ5C2vj+YQKWQslO5q4QpLxsp4Gso2SudBwmcos0WSkAEt+ZohMNzib3sto+x8AZgn5/PTKU5LhnGj4cEHjGf2ITUGkjUxqKWe+KIwa/VPj4QKp0lEXiJ2EwlYUeB/NqQYSD6CLBTt9vOYQd05guI+0bd8e3pMAXT54TqbGpLd0WNFGECcX0JNrzMkTC36FelOKWumUJA7KSi4i1JpTbj5Fe2R1fJDpl2Kj6k6pvT9slu1VxRxWbwlInsgscfBCScHy6qQjUKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB8002.namprd11.prod.outlook.com (2603:10b6:806:2f6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Mon, 8 Jan
 2024 22:18:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 22:18:21 +0000
Date: Mon, 8 Jan 2024 17:18:17 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Message-ID: <ZZx0qT4s3dmhIGAn@intel.com>
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87il4b1pvz.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87il4b1pvz.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB8002:EE_
X-MS-Office365-Filtering-Correlation-Id: a7ebeec9-a94a-45e3-395f-08dc1097b920
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t9cPj72bRFJVnBJS/E/eb8cE2/W5IZkLSUnDro7mG7yncDe/AFEj64I0UQu6IDZ+i0F+Ke0TFbCkFdsG89lCqOmPMsTqGjLdEBSo3yPsdrCXreHKsAsI8zgylh2VY6bgtyGrqMFXoPv/kba9NEwZ45TXivPOHBg4ynFU27FYFvRwOU5BCxbica6I80R1ilg6Y+3PGpiqfzNDPriw76Yen3TmdDHYpnGwCUnzjOs/iTHqPnzA/Ifeao8oY1vbK6ON6/jgkspj8tzm8RA60V07hNHfa+kbn1GNprbsuAmCOd47PR/nGWFa+nL347jPEZMR4g82mM24w9xBgmeMkuS67EefZnmsP/QTUcV/MBuRfhchyBvE/5KyVKhI9aoRykW2a/X2WFYJXGr8OPDW2NTiMKI6yK5D0NoqigMRKbFg9qS3q3W0EGXliyFRM0rCnS/LyiiptaxzJ/spCCqyuMyV47gfOSlNCYeXFHbhB81dIy21/8AURVXq4MlOnpT/dUA083+ByC7IuI8HbCq2a5OKjRXZBuvUB1vrvi4BlEzCmC4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(376002)(396003)(39860400002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(83380400001)(8936002)(6506007)(478600001)(966005)(4326008)(5660300002)(6512007)(6666004)(66476007)(66556008)(66946007)(6486002)(2616005)(26005)(44832011)(6916009)(8676002)(2906002)(38100700002)(54906003)(36756003)(82960400001)(316002)(86362001)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?DtFM6/BTBQe3cHGZSJgwwclSOHCBRBPatLL0xT5mn/e8DEl2RO/3Dvh+EZ?=
 =?iso-8859-1?Q?kUKXKeFt+OapfqMRy29NaJSatJoh+4TnuXR+mBguo2Ye+8esMy+kq7xpS8?=
 =?iso-8859-1?Q?tkdMoDPX2ykxWq1Rnd7oOBB7FvovYis8cbZiqlrbZRRcbHAm0TtHFro5uX?=
 =?iso-8859-1?Q?LWIn9PcVgbsIS9xNm8ZMnQqxCPl+u9GyX/FithrCQbf2NrLp+bHAmXb5qf?=
 =?iso-8859-1?Q?dIaYtXlGDTiwYMqX9UZXZlaPtp40smXxQSBupA7Q67SdFxBQSjSTF/vfA2?=
 =?iso-8859-1?Q?ONpA7QQ1eIjfbtrEZCVEkxKP4VWiafPXp5SEf0u3jXUhWKObSgW1zubfJp?=
 =?iso-8859-1?Q?9f0x6l3g/2j5xAYXV/KOZapsnzQ95HP9TTs5/awQjA2aN9ra5955pWMs/H?=
 =?iso-8859-1?Q?rUcg+zQINJu2vEGFSl3MgU3oQuxRFk3lTgcXk234psVMM9o6MqqRPFNfKH?=
 =?iso-8859-1?Q?sY1RH1QwD8RjZ/svSEK8ss8DZkKgjuFiqqNGpQ5sAawXgzVSAwPCyShqzg?=
 =?iso-8859-1?Q?Ri9xViE+LQp1ddxMCEUDJOymYZZ4TMzwk9Sri0MDSvkpRLd2Aga6SWxjpJ?=
 =?iso-8859-1?Q?CMSqkab8PGlAFwuXgczutte2hBgA6q77o4CNyxxHRFf+1pJwVA4a49mtp9?=
 =?iso-8859-1?Q?r9TzTcG7Xym1ecD/wJ4I5/mkRZa2yERVk1//nfPwiSBt8FOsA9i9LEAdED?=
 =?iso-8859-1?Q?We/IrkGleqjzaNJDrG67LPxV6+hKzEJnlz0EvmiCbAsQW20wOd6Ex8UoSw?=
 =?iso-8859-1?Q?bUYSp+8DZkR59X9f3ApOcihIZ2NaiTdsuEq9ZRiCK+0EB5yca9C4aS6N86?=
 =?iso-8859-1?Q?gBlBMa61XYjHFbT8cow99I7eddY9hrYATWiMkuOsJA14cWEMfIGbuyQwJc?=
 =?iso-8859-1?Q?+maDp4jxpOCRNyVEQyF6LC8rB3i9lgWmhzoJ4V/1bjdufO8cWAJt+A+lBg?=
 =?iso-8859-1?Q?c3GUf9ccpHoa8xxM/AdNzv6ZX9WH8HL1c2fWscj4vStWsZyV1GVyihxsd4?=
 =?iso-8859-1?Q?faWAFAJYoQT7yObYGhaDW3MXIgJaN0uBqH5IDiqkLQvpRxnx7E8wfgae/e?=
 =?iso-8859-1?Q?5LBRtgXTMQWg061DjZ3NPSlnFZPrdpeaySzchQ0AGQGV02TbPxJLlrBwgC?=
 =?iso-8859-1?Q?vZGhs6ZE/AFS76tSJRR2BmsSVMaRjceRGvqHYhqRJ1nhpcD19Fiuag8XkD?=
 =?iso-8859-1?Q?Q9ZD8+kA6jkaWZevu5QirMVheyEVCoLqBHuF/shnOKKholsN1FitJ2RbjT?=
 =?iso-8859-1?Q?VlhG80jTlXZwSA98ng8dAUhKsj/3F2VMdzHk/uv617jYQVVDF9zP9+IqsU?=
 =?iso-8859-1?Q?L54bj+BBNeNtIyrsUEvPs7Ppbyv6sn3DOtyF0yaJkn6+YMy9WDCTjCiOLh?=
 =?iso-8859-1?Q?dU80+zKagcnhMDGEmp5HscAOY8z4aU9dZ7uIwnsEEhM7gQ+i++dxl6luud?=
 =?iso-8859-1?Q?kmrpSY3JHhhJiMbIEILZKBRFM7QerwcARWjYb9Fle9NKXTdQSar1t1GrC2?=
 =?iso-8859-1?Q?sU1p128kj/Y32wwgWWMk/5LqETzOyhhu9OBqE22DwVWmiWqy0ZNzlYRJoS?=
 =?iso-8859-1?Q?Uy9klhkTBCYqLRXWBH5Ua3h7IxUjul6LAwnuHNaLcVlm5/PnPnMaHE9xvQ?=
 =?iso-8859-1?Q?JMZB5ZeueITyMJqy3vGKsR2ghtmX92+YIE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7ebeec9-a94a-45e3-395f-08dc1097b920
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 22:18:21.4228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YYEhdvXxpuFMQjUp8fowLYvcqBAjb+X5vRnHxjluykBrBwtR3tYXN6au+dZC/yFJjmX1jg96vuGgeCh9d029bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8002
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
Cc: intel-gfx@lists.freedesktop.org, "Hellstrom,
 Thomas" <thomas.hellstrom@intel.com>, Lucas De
 Marchi <lucas.demarchi@intel.com>, Oded Gabbay <ogabbay@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 02, 2024 at 09:44:48PM +0200, Jani Nikula wrote:
> On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> > Aux ccs framebuffers don't work on Xe driver hence disable them
> > from plane capabilities until they are fixed. Flat ccs framebuffers
> > work and they are left enabled. Here is separated plane capabilities
> > check on i915 so it can behave differencly depending on the driver.
> 
> Cc: Rodrigo and xe maintainers
> 
> We need to figure out the proper workflow, the mailing lists to use, the
> subject prefix to use, the acks to require, etc, for changes touching
> both xe and i915.
> 
> I'd very much prefer changes to i915 display to be merged via
> drm-intel-next as always. For one thing, it'll take a while to sync
> stuff back from drm-xe-next to drm-intel-next, and most display
> development still happens on drm-intel-next.

I fully agree with you.

> 
> But this patch can't be applied to drm-intel-next, because xe doesn't
> even exist on drm-intel-next yet...

should we do a backmerge of drm-next already, or too early for that?

> 
> 
> BR,
> Jani.
> 
> 
> >
> > Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |  1 +
> >  .../gpu/drm/i915/display/intel_plane_caps.c   | 68 +++++++++++++++++++
> >  .../gpu/drm/i915/display/intel_plane_caps.h   | 14 ++++
> >  .../drm/i915/display/skl_universal_plane.c    | 61 +----------------
> >  drivers/gpu/drm/xe/display/xe_plane_initial.c | 23 +++++++
> >  5 files changed, 107 insertions(+), 60 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_plane_caps.h
> >
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index e777686190ca..c5e3c2dd0a01 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -302,6 +302,7 @@ i915-y += \
> >  	display/intel_overlay.o \
> >  	display/intel_pch_display.o \
> >  	display/intel_pch_refclk.o \
> > +	display/intel_plane_caps.o \
> >  	display/intel_plane_initial.o \
> >  	display/intel_pmdemand.o \
> >  	display/intel_psr.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.c b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > new file mode 100644
> > index 000000000000..6206ae11f296
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.c
> > @@ -0,0 +1,68 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2024 Intel Corporation
> > + */
> > +
> > +#include "i915_drv.h"
> > +#include "intel_fb.h"
> > +#include "intel_plane_caps.h"
> > +
> > +static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > +				 enum pipe pipe, enum plane_id plane_id)
> > +{
> > +	/* Wa_22011186057 */
> > +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > +		return false;
> > +
> > +	if (DISPLAY_VER(i915) >= 11)
> > +		return true;
> > +
> > +	if (IS_GEMINILAKE(i915))
> > +		return pipe != PIPE_C;
> > +
> > +	return pipe != PIPE_C &&
> > +		(plane_id == PLANE_PRIMARY ||
> > +		 plane_id == PLANE_SPRITE0);
> > +}
> > +
> > +static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > +				   enum plane_id plane_id)
> > +{
> > +	if (DISPLAY_VER(i915) < 12)
> > +		return false;
> > +
> > +	/* Wa_14010477008 */
> > +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > +	    (IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
> > +		return false;
> > +
> > +	/* Wa_22011186057 */
> > +	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > +		return false;
> > +
> > +	return plane_id < PLANE_SPRITE4;
> > +}
> > +
> > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > +		      enum pipe pipe, enum plane_id plane_id)
> > +{
> > +	u8 caps = INTEL_PLANE_CAP_TILING_X;
> > +
> > +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > +		caps |= INTEL_PLANE_CAP_TILING_Y;
> > +	if (DISPLAY_VER(i915) < 12)
> > +		caps |= INTEL_PLANE_CAP_TILING_Yf;
> > +	if (HAS_4TILE(i915))
> > +		caps |= INTEL_PLANE_CAP_TILING_4;
> > +
> > +	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> > +		caps |= INTEL_PLANE_CAP_CCS_RC;
> > +		if (DISPLAY_VER(i915) >= 12)
> > +			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> > +	}
> > +
> > +	if (gen12_plane_has_mc_ccs(i915, plane_id))
> > +		caps |= INTEL_PLANE_CAP_CCS_MC;
> > +
> > +	return caps;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_caps.h b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > new file mode 100644
> > index 000000000000..60a941c76f23
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_caps.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2024 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_PLANE_CAPS_H__
> > +#define __INTEL_PLANE_CAPS_H__
> > +
> > +#include "intel_display_types.h"
> > +
> > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > +		      enum pipe pipe, enum plane_id plane_id);
> > +
> > +#endif /* __INTEL_PLANE_CAPS_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 511dc1544854..f2fd3833c61d 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_fb.h"
> >  #include "intel_fbc.h"
> >  #include "intel_frontbuffer.h"
> > +#include "intel_plane_caps.h"
> >  #include "intel_psr.h"
> >  #include "intel_psr_regs.h"
> >  #include "skl_scaler.h"
> > @@ -2242,66 +2243,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
> >  	spin_unlock_irq(&i915->irq_lock);
> >  }
> >  
> > -static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > -				 enum pipe pipe, enum plane_id plane_id)
> > -{
> > -	/* Wa_22011186057 */
> > -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > -		return false;
> > -
> > -	if (DISPLAY_VER(i915) >= 11)
> > -		return true;
> > -
> > -	if (IS_GEMINILAKE(i915))
> > -		return pipe != PIPE_C;
> > -
> > -	return pipe != PIPE_C &&
> > -		(plane_id == PLANE_PRIMARY ||
> > -		 plane_id == PLANE_SPRITE0);
> > -}
> > -
> > -static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > -				   enum plane_id plane_id)
> > -{
> > -	if (DISPLAY_VER(i915) < 12)
> > -		return false;
> > -
> > -	/* Wa_14010477008 */
> > -	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > -		(IS_TIGERLAKE(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_D0)))
> > -		return false;
> > -
> > -	/* Wa_22011186057 */
> > -	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
> > -		return false;
> > -
> > -	return plane_id < PLANE_SPRITE4;
> > -}
> > -
> > -static u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > -			     enum pipe pipe, enum plane_id plane_id)
> > -{
> > -	u8 caps = INTEL_PLANE_CAP_TILING_X;
> > -
> > -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > -		caps |= INTEL_PLANE_CAP_TILING_Y;
> > -	if (DISPLAY_VER(i915) < 12)
> > -		caps |= INTEL_PLANE_CAP_TILING_Yf;
> > -	if (HAS_4TILE(i915))
> > -		caps |= INTEL_PLANE_CAP_TILING_4;
> > -
> > -	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
> > -		caps |= INTEL_PLANE_CAP_CCS_RC;
> > -		if (DISPLAY_VER(i915) >= 12)
> > -			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
> > -	}
> > -
> > -	if (gen12_plane_has_mc_ccs(i915, plane_id))
> > -		caps |= INTEL_PLANE_CAP_CCS_MC;
> > -
> > -	return caps;
> > -}
> > -
> >  struct intel_plane *
> >  skl_universal_plane_create(struct drm_i915_private *dev_priv,
> >  			   enum pipe pipe, enum plane_id plane_id)
> > diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > index ccf83c12b545..425c6e6744a6 100644
> > --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> > @@ -15,6 +15,7 @@
> >  #include "intel_fb.h"
> >  #include "intel_fb_pin.h"
> >  #include "intel_frontbuffer.h"
> > +#include "intel_plane_caps.h"
> >  #include "intel_plane_initial.h"
> >  
> >  static bool
> > @@ -289,3 +290,25 @@ void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
> >  
> >  	plane_config_fini(&plane_config);
> >  }
> > +
> > +u8 skl_get_plane_caps(struct drm_i915_private *i915,
> > +		      enum pipe pipe, enum plane_id plane_id)
> > +{
> > +	u8 caps = INTEL_PLANE_CAP_TILING_X;
> > +
> > +	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> > +		caps |= INTEL_PLANE_CAP_TILING_Y;
> > +	if (DISPLAY_VER(i915) < 12)
> > +		caps |= INTEL_PLANE_CAP_TILING_Yf;
> > +	if (HAS_4TILE(i915))
> > +		caps |= INTEL_PLANE_CAP_TILING_4;
> > +
> > +	if (HAS_FLAT_CCS(i915)) {
> > +		caps |= INTEL_PLANE_CAP_CCS_RC | INTEL_PLANE_CAP_CCS_RC_CC;
> > +
> > +		if (plane_id < PLANE_SPRITE4)
> > +			caps |= INTEL_PLANE_CAP_CCS_MC;
> > +	}
> > +
> > +	return caps;
> > +}
> 
> -- 
> Jani Nikula, Intel
