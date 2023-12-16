Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D184C8155A9
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Dec 2023 01:42:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E1D10EAC0;
	Sat, 16 Dec 2023 00:42:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7758E10EAC0
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Dec 2023 00:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702687343; x=1734223343;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/WaJQCDUX6khKvtAf6WIMCUgJDHKx8NlTu3ayH1SFuk=;
 b=DnvYnEdoGJKkJkgAh7En7NmuaIg4CE+2Q+iggrcg3i9ALkCWksSR8pES
 d/G7jDotxuSPBjkYrInwFCk0KYz91pxmty7J+2D3VXdzbJzq9dwbpAgMw
 zPtqzbUkcGQw/420vr+d8RiEAi7LQhfRp92KfUw/NiioG4Q3L5pjz+0QJ
 vjq+ZvycIYGzCSByHQQxPivoXr7UjDfTQfi8VVmMcsKhsvp85QLi5s7nG
 F+Nr6h/AIA3ddZVZhc3XA3kwpfleE6mbabWJRfDr2rVAKsAk1Y2/VPsuP
 pbw0V4Huyeb4Eqn3jyokPwOmtaX4NeEqcnKITjVyTjGI0fVeP9WLCF9J6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="8766722"
X-IronPort-AV: E=Sophos;i="6.04,280,1695711600"; 
   d="scan'208";a="8766722"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 16:42:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="865571134"
X-IronPort-AV: E=Sophos;i="6.04,280,1695711600"; d="scan'208";a="865571134"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 16:42:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 16:42:22 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 16:42:22 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 16:42:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXlfpxJaeXpdBQmugeAavBBWLi9Mi0k8pSroSeWfwjM8gkQaf75WG81o9nijsuRqtKu3NqUc8XvesE1Cpghe386djUDudmamdXtRnpLplfSlrkUz+TvtG+SfdwZKJYaV75R7WMB1Sy+8jqBKYlvjftoFuho/hvjObVP1+phhbGk3FEnz6WgwcZR+fM14qjzCDQcEDe5waoAa7Z9qgogXaIjOQTKslCfqJ0hmyV9wf1VF32Kcsr/CzgMa/cxz42BrT2swfSfQF9MZJ5aujp6bo0vp0tKAF/PsrkMukbSRYJ9Vfl+/H2a0sroVL2q0CxJBnnLupbmwE+ZCGJZF85JoPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yCmIpuk2bN5LI02V3WbQNLz9SgOoxIKpcv9Eci5OYXg=;
 b=YojHzy0bQAn/A4eLqsTVGtme3Zy7MetRPNmQ6gOAK6/9jQAQ3ymtWV3FNEPsidPuVwVeLmZjsPF92yHyTQ5Nxzl1dtPspSKTCF3SBDKm/E1FxcK3skVHN5WQz4/LkLBjxeuKl9WBvxltdeYW4lFwmMjHnehXdcIK8db5nSBwBDUcftQnMeuOGiJmlwJYwS+h9XyZI/fuumLFbc4gRJHntGqQ7sIN+yoSyA9DbVhFmpOgcK2GJe6Dh5M8E0nWy1hDlqS+c57nhQK+7DucyXRXO9p8+xh5k3sCp0NFVTjpuWrDdEcD791SL3jWVY4a2fVcAaSU3hgPuMpFvkVFnyHiRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.32; Sat, 16 Dec
 2023 00:42:20 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.032; Sat, 16 Dec 2023
 00:42:20 +0000
Date: Fri, 15 Dec 2023 16:42:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/display: Add support for darskscreen
 detection
Message-ID: <20231216004217.GD1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231213090641.1153030-1-nemesa.garg@intel.com>
 <20231213090641.1153030-2-nemesa.garg@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231213090641.1153030-2-nemesa.garg@intel.com>
X-ClientProxiedBy: BYAPR07CA0095.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::36) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB4856:EE_
X-MS-Office365-Filtering-Correlation-Id: dfe3a807-c801-4c99-4032-08dbfdcfdc09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3YI2ZsI5Zn64r7nq/PEDMHhzKOYyRdTnxNYjtKG/hKvuQjB0TkN6h2BNnVjAF2Jyo+TyCUL6QWGBhsFoCMZX0as1gb6vw64iMUMegcG+2+/LQfNULnbhjF2W/OKJTixgc45p6v0rx19UEbwjDOTYBXJemF9dg8uFl9IM9UjryY27EnjCN1ayoBepTeDdkRQWmPwbEnawabcBeFGnXJOnUeMFt6Vj+85diQLSBwFZYZ0xY4Ss4cwvO9kIURVCvNyL9HaT3AQ+6QvINW7W22ogDHybfEsyZUr543St2zewa/PjdqvMNnh6wOigBYQx8DFn2okxtiPI9fNsOkEa0JvsAA05AP3PYzXOjPzZj6FRnnEB9ThJVqPaSDWKclMxOjnMhCMJIwvcleO6hyv6LrKqjm9LO0FjLrTA7L9nBWfcFv2ssZPBRHDPKeshfCZEX3c6HUq/aZmS4GXfBzBtP6BvJUBbzDjeAwiDvpK1b56WDo3LHhBqGU9BvKY+TXvqrrymn/OrAZjZZ7LmFmRcLCdensH+KfEY0SCIDoHY7t1BBfaIruj7aBPuTIX7c2qfLUDC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(136003)(366004)(346002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(33656002)(1076003)(26005)(30864003)(6666004)(2906002)(478600001)(6506007)(66946007)(6862004)(8676002)(8936002)(6486002)(4326008)(66556008)(6636002)(316002)(66476007)(6512007)(38100700002)(5660300002)(83380400001)(41300700001)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?mW5OMz31NAM38gT+KdKZ+uu/m3Z/EQOgPpFf3/qT4lUCTIBQP3rJ6VbUCi?=
 =?iso-8859-1?Q?9FYtAyY40jKU7p5FQoWmb/+4Bf+jRovu7iSaDgNGpwLqeGEJu3Ct2iCyrW?=
 =?iso-8859-1?Q?S+SxvlrYu2ceeA11Pr6vncM+MaB2jbynh8LFISfZP/jqqvtPvGA6nTX45d?=
 =?iso-8859-1?Q?ZT1j4xTNQ5XkmnMHie4wASkryf7GlLbTL+V2y8BD08pCT/s/IdXY678PL+?=
 =?iso-8859-1?Q?2VqzNsgUBBW/tjjYb269MZ5lffhqtOIhizPyVsDAhVf2l11/MsR3yvJDSm?=
 =?iso-8859-1?Q?vZzKugyRkR0G7IzxJaU1vK259YdVqNJ2SD8e2L6gQtKXNLTYeykigVCaGR?=
 =?iso-8859-1?Q?imZ+Pew3r+SyjUNEPuXLS9japGNZjQekk7pNTtuVuO/J1B+BXJlgS9e+SE?=
 =?iso-8859-1?Q?Tlc/Yc4kX8+yFn6zb9afsXdc7UvsTJ8GnDPY4ZolGFSYoCHtiXUedDEFRV?=
 =?iso-8859-1?Q?jdI9hHxr/OJiucUraQJB8KXseQBaQHZ/MJt3hy51fROG2vrdDffthDM/sm?=
 =?iso-8859-1?Q?Xz3Cu2VB7ukz3mV336RwO5rbt8phz60wUxMNdktIXVulMLIhls0bcw37io?=
 =?iso-8859-1?Q?pp05LC2gXxQ7JY55DT8e1NSI0j6C96gp6cIfq67RYiyTj8zxXEkiL8i/Z/?=
 =?iso-8859-1?Q?WW5DISCNMruZGbFvY+JDDEezroIq45hQZkYtYcwMQOGOfyiw2rDJQT50Uu?=
 =?iso-8859-1?Q?UEWf7wUehxMJ9dTkMRD4eUZUz/LJ8r5Cz9/XTj+Fj8m1TQ5HS7mEC0JtOC?=
 =?iso-8859-1?Q?gtgTko9+e2KLTAzWzLR+lokTScvmGUxTjAQtfVBXsFkwzTQpRqgb8fswkw?=
 =?iso-8859-1?Q?BA5Eq22IKcnG3iAI/EwQp1cPpzmuXdUqsap/07UHGvNdj1cScYHpu1vC+j?=
 =?iso-8859-1?Q?J7dym1mlMccFpE5AID9MXHCVpMR9weCCF8cfdHJlqJUpe1T48FtMvd7cCi?=
 =?iso-8859-1?Q?OfpDlGUPxu7IgNfUSH+yBSF3bXMBQXM6A5iH9KC2QDT7UKm0ikTK1TsFbT?=
 =?iso-8859-1?Q?eFZ59vCNcizF6myHQ2czKDR5/eO9eb/Jx/lHw2Sl6zvOt076xnDXsHb0EC?=
 =?iso-8859-1?Q?YRJB//nItOL9nBBwSWT1KdmEHjsZt7rhkpqjlDKVdxZLIFBu347w+o7RF/?=
 =?iso-8859-1?Q?nyt6Q08OMnghe56mJpsQQ5N2+/OG5+3cf40iapO18hNrLS77f9zU5co4C2?=
 =?iso-8859-1?Q?r07upoqKH1sWEB0lMnRAdS1m+sRpvDZ2fP7Sthk8LP4bMF+kvNrJX9TQl1?=
 =?iso-8859-1?Q?fAEf9vJXNI952ZZ1IPhZ0dTnuUjnynH86Bssv0wsDHVqQrJMhSBRzqPxGV?=
 =?iso-8859-1?Q?6Opa8Q5aup5hFP6hsxUzcIKLPx/YQUgZ7yOVbY3Q6gPZik25z5/3nxu4FD?=
 =?iso-8859-1?Q?B1cYCBG8QsGZ/ANpCJHD/0b/uy8CsN4dkWt9v89flbkW2Ux6P8cY4jGnfC?=
 =?iso-8859-1?Q?Q1i4Mh8wY5YQ8NGGfowVRAjTnvuvuWeceVVYlmbH46MIYc4QA0x//nmQSx?=
 =?iso-8859-1?Q?K/VJND/Gxj9h52/U9igd8tGvyJ1eTDMTOJgOE4L0V1FfMhnl0vm0yW87Eh?=
 =?iso-8859-1?Q?d41/AFuNFuvmmC/e4lrYPtR7NJiE1wPZ8YiGeRvmVvtSVtQrGsQCeUy/nQ?=
 =?iso-8859-1?Q?VUYnCZYWFIVHYayFRNnTgLkUftM7FcFwY+SJH49enSSFT+O4e7Gncxjg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfe3a807-c801-4c99-4032-08dbfdcfdc09
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 00:42:19.8962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9TjFa0NbfXrUt0NNBF3OM8MVbZ3xggziO0/7kp+ve9kk+Gx/5F6pwxj/ketDpWhZz8tTs7yjrxMXG2DHDUpJuu4tw0GG4CzCuIbIqXUAGH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 13, 2023 at 02:36:40PM +0530, Nemesa Garg wrote:
> Darkscreen detection checks if all the pixels of the frame are less then
> or equal to the comparision value. The comparision value is set to 256
> i.e black. So upon getting black pixels from the pipe, the dark screen
> detect bit is set and an error message will be printed.

As others have noted, you seem to be mixing two different designs here
in a way that doesn't really make sense.  At the hardware level, it's
possible to request a check for a dark screen[*] and then get a yes/no
response back shortly.  But how that functionality gets utilized and
exposed to users is something that can be approached in different ways.
I can think of a couple options for how this could be handled:

  Option 1:  The simplest option is to create a debugfs that tells me
  whether the screen is dark *right now*.  I.e., "cat ..../darkscreen"
  returns an immediate "yes" or "no" answer.  Every time I re-cat it, I
  get a new answer; there's no concept of enable/disable at the API
  level.  I can see this being very useful in some IGT tests like
  testdisplay (make sure the output isn't blank after switching to a
  mode) or kms_plane (make sure the output _is_ blank at certain points
  when all planes are supposed to be off).
  
  Option 2:  A more complicated option is to create an interface with
  start/stop behavior that indicates whether the screen ever went dark
  between two points in time.  I'm sure there are ways this could be
  used, although it's a little harder to figure out where we'd utilize
  it to our benefit in the IGT tests we have today.

The code you have in these patches seems to be trying to expose an
enable/disable debugfs interface, but only does its checking a single
time right at the 'enable' point.  There's no reason to actually leave
the hardware setting enabled after that point because you never go back
and check again.  And the current implementation also doesn't return the
status to the user in any way, it just prints out a log message, so that
pretty much kills the ability to use this in something like IGT.

So as others have said, you need to figure out what the goal is here.
I.e., who do you expect to use this and how?  Based on the answer to
that, you can figure out what kind of user-facing interface is
appropriate, and then provide corresponding changes to some userspace
software (probably IGT for a debug-specific facility like this) that
utilizes the new capability.


[*] BTW, it's also worth noting that no matter what this interface can't
detect all cases where the display is blank.  The hardware support for
this appears to be at the end of the pipe, so if the monitor is blank
due to mistakes in the programming of the DSC, transcoder, DDI, or phy,
the darkscreen detection won't notice.  However it will be useful for
catching certain mistakes in the programming of planes, scalers, or
color management.


> 
> v2: Addressed review comments [Jani]
> v3: Addressed review comments [Arun]

Changelogs like this are pretty useless; without digging through mailing
list history, nobody (often including the original reviewers) remembers
exactly what the review comments were.  It's hard to tell which parts of
your patch have been reworked from the previous revision, or to
determine whether you saw and handled all of the feedback or just part
of it.  It's better to give a brief description of what actually changed
in the new version.  E.g.,

      v2:
        - Added foo check.  (Jani)
        - Reordered bar and baz.  (Jani)
      v3:
        - Added locking to xyz.  (Arun)
        - Drop unnecessary abc check.  (Arun)


Matt

> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 95 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   | 26 +++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  8 ++
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  6 files changed, 133 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index dc2469a4ead7..0322105a4c05 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -244,6 +244,7 @@ i915-y += \
>  	display/intel_crtc.o \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
> +	display/intel_darkscreen.o \
>  	display/intel_display.o \
>  	display/intel_display_driver.o \
>  	display/intel_display_irq.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> new file mode 100644
> index 000000000000..7c42988af354
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2023 Intel Corporation
> + *
> + */
> +
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +
> +#define COLOR_DEPTH_6BPC 6
> +#define COLOR_DEPTH_8BPC 8
> +#define COLOR_DEPTH_10BPC 10
> +#define COLOR_DEPTH_12BPC 12
> +
> +#define COMPARE_VALUE_6_BPC 4
> +#define COMPARE_VALUE_8_BPC 16
> +#define COMPARE_VALUE_10_BPC 64
> +#define COMPARE_VALUE_12_BPC 256
> +
> +#define COMPARE_VALUE_CALCULATION_FACTOR 12
> +
> +/*
> + * Check the color format and compute the compare value based on bpc.
> + */
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	unsigned int frame_time_in_us;
> +	u32 comparevalue;
> +
> +	if (!crtc->dark_screen.enable)
> +		return;
> +
> +	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> +		drm_err(&dev_priv->drm,
> +			"RGB format not supported:%c\n",
> +			pipe_name(crtc->pipe));
> +		return;
> +	}
> +
> +	switch (crtc_state->pipe_bpp / 3) {
> +	case COLOR_DEPTH_6BPC:
> +		comparevalue = COMPARE_VALUE_6_BPC;
> +		break;
> +	case COLOR_DEPTH_8BPC:
> +		comparevalue = COMPARE_VALUE_8_BPC;
> +		break;
> +	case COLOR_DEPTH_10BPC:
> +		comparevalue = COMPARE_VALUE_10_BPC;
> +		break;
> +	case COLOR_DEPTH_12BPC:
> +		comparevalue = COMPARE_VALUE_12_BPC;
> +		break;
> +	default:
> +		drm_dbg(&dev_priv->drm,
> +			"Bpc value is incorrect:%d\n",
> +			crtc_state->pipe_bpp / 3);
> +		return;
> +	}
> +
> +	comparevalue = comparevalue <<
> +		(COMPARE_VALUE_CALCULATION_FACTOR - crtc_state->pipe_bpp / 3);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
> +		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
> +		       DARK_SCREEN_DONE | DARK_SCREEN_COMPARE_VAL(comparevalue));
> +
> +	frame_time_in_us = (1000 / drm_mode_vrefresh(&crtc_state->hw.adjusted_mode)) * 2;
> +
> +	intel_de_wait_for_set(dev_priv,
> +			      DARK_SCREEN(crtc->config->cpu_transcoder), DARK_SCREEN_DONE,
> +			      frame_time_in_us);
> +
> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder)) &
> +			  DARK_SCREEN_DETECT) {
> +		drm_err(&dev_priv->drm,
> +			"Dark Screen detected:%c\n",
> +			pipe_name(crtc->pipe));
> +	}
> +
> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder), 1, DARK_SCREEN_DETECT |
> +		     DARK_SCREEN_DONE);
> +}
> +
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state)
> +{
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> new file mode 100644
> index 000000000000..366e43499fc4
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + *
> + */
> +
> +#ifndef __INTEL_DARKSCREEN_H__
> +#define __INTEL_DARKSCREEN_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc_state;
> +struct intel_crtc;
> +
> +struct intel_darkscreen {
> +	bool enable;
> +};
> +
> +#ifdef CONFIG_DEBUG_FS
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state);
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state);
> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
> +
> +#endif
> +
> +#endif /* __INTEL_DARKSCREEN_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 3600497ff512..d441e08fef58 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -49,6 +49,7 @@
>  #include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
> +#include "intel_darkscreen.h"
>  #include "intel_display.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> @@ -1539,6 +1540,7 @@ struct intel_crtc {
>  
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> +	struct intel_darkscreen dark_screen;
>  #endif
>  };
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c203dcfd6c7b..4e273c0ac801 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2097,6 +2097,14 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>  
> +#define _DARK_SCREEN_PIPE_A		0x60120
> +#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
> +#define   DARK_SCREEN_ENABLE		REG_BIT(31)
> +#define   DARK_SCREEN_DETECT		REG_BIT(29)
> +#define   DARK_SCREEN_DONE		REG_BIT(28)
> +#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
> +#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index fe659a97001c..ff533733245c 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -176,6 +176,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_crtc_state_dump.o \
>  	i915-display/intel_cursor.o \
>  	i915-display/intel_cx0_phy.o \
> +	i915-display/intel_darkscreen.o \
>  	i915-display/intel_ddi.o \
>  	i915-display/intel_ddi_buf_trans.o \
>  	i915-display/intel_display.o \
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
