Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D421F7E57
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 23:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21AC6E1E6;
	Fri, 12 Jun 2020 21:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A51B6E1E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 21:15:04 +0000 (UTC)
IronPort-SDR: f6xDj4EU7tvGPsA9aWdYPd8XMMGrkOCTCubQFMUuTTJi91tEu3wdMEUArDmILnSq370JJPNK/R
 XCfJMsClC0VA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 14:15:03 -0700
IronPort-SDR: 9jEnb0J/8iNb01XP8SgVt48Z+yUyBMYTIJ1nvmUz11iwfDE/fFBeyitAij+2I08k+AzOu9s232
 vZ9fEwOl+vAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,504,1583222400"; d="scan'208";a="474177969"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 12 Jun 2020 14:15:02 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.74]) with mapi id 14.03.0439.000;
 Fri, 12 Jun 2020 14:15:02 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Include asm sources for {ivb,
 hsw}_clear_kernel.c
Thread-Index: AQHWPb0fo9enPoB9uE2hEd1TN1omiajPelMAgANIDYCAAr1QgA==
Date: Fri, 12 Jun 2020 21:15:02 +0000
Deferred-Delivery: Fri, 12 Jun 2020 21:14:22 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B6B78F0D73@fmsmsx116.amr.corp.intel.com>
References: <159163988890.30073.8976615673203599761@build.alporthouse.com>
 <20200610201807.191440-1-rodrigo.vivi@intel.com>
In-Reply-To: <20200610201807.191440-1-rodrigo.vivi@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include asm sources for {ivb,
 hsw}_clear_kernel.c
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, Alexandre Oliva <lxoliva@fsfla.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Rodrigo Vivi
> Sent: Wednesday, June 10, 2020 1:18 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Alexandre Oliva <lxoliva@fsfla.org>; Nikula, Jani <jani.nikula@intel.com>;
> stable@vger.kernel.org; Chris Wilson <chris@chris-wilson.co.uk>
> Subject: [Intel-gfx] [PATCH] drm/i915: Include asm sources for {ivb,
> hsw}_clear_kernel.c
> 
> Alexandre Oliva has recently removed these files from Linux Libre
> with concerns that the sources weren't available.
> 
> The sources are available on IGT repository, and only open source
> tools are used to generate the {ivb,hsw}_clear_kernel.c files.
> 
> However, the remaining concern from Alexandre Oliva was around
> GPL license and the source not been present when distributing
> the code.
> 
> So, it looks like 2 alternatives are possible, the use of
> linux-firmware.git repository to store the blob or making sure
> that the source is also present in our tree. Since the goal
> is to limit the i915 firmware to only the micro-controller blobs
> let's make sure that we do include the asm sources here in our tree.
> 
> Btw, I tried to have some diligence here and make sure that the
> asms that these commits are adding are truly the source for
> the mentioned files:
> 
> igt$ ./scripts/generate_clear_kernel.sh -g ivb \
>      -m ~/mesa/build/src/intel/tools/i965_asm
> Output file not specified - using default file "ivb-cb_assembled"
> 
> Generating gen7 CB Kernel assembled file "ivb_clear_kernel.c"
> for i915 driver...
> 
> igt$ diff ~/i915/drm-tip/drivers/gpu/drm/i915/gt/ivb_clear_kernel.c \
>      ivb_clear_kernel.c
> 
> <  * Generated by: IGT Gpu Tools on Fri 21 Feb 2020 05:29:32 AM UTC
> >  * Generated by: IGT Gpu Tools on Mon 08 Jun 2020 10:00:54 AM PDT
> 61c61
> < };
> > };
> \ No newline at end of file
> 
> igt$ ./scripts/generate_clear_kernel.sh -g hsw \
>      -m ~/mesa/build/src/intel/tools/i965_asm
> Output file not specified - using default file "hsw-cb_assembled"
> 
> Generating gen7.5 CB Kernel assembled file "hsw_clear_kernel.c"
> for i915 driver...
> 
> igt$ diff ~/i915/drm-tip/drivers/gpu/drm/i915/gt/hsw_clear_kernel.c \
>      hsw_clear_kernel.c
> 5c5
> <  * Generated by: IGT Gpu Tools on Fri 21 Feb 2020 05:30:13 AM UTC
> >  * Generated by: IGT Gpu Tools on Mon 08 Jun 2020 10:01:42 AM PDT
> 61c61
> < };
> > };
> \ No newline at end of file
> 
> Used IGT and Mesa master repositories from Fri Jun 5 2020)
> IGT: 53e8c878a6fb ("tests/kms_chamelium: Force reprobe after replugging
>      the connector")
> Mesa: 5d13c7477eb1 ("radv: set keep_statistic_info with
>       RADV_DEBUG=shaderstats")
> Mesa built with: meson build -D platforms=drm,x11 -D dri-drivers=i965 \
>                  -D gallium-drivers=iris -D prefix=/usr \
> 		 -D libdir=/usr/lib64/ -Dtools=intel \
> 		 -Dkulkan-drivers=intel && ninja -C build
> 
> v2: Header clean-up and include build instructions in a readme (Chris)
>     Modified commit message to respect check-patch
> 
> Reference: http://www.fsfla.org/pipermail/linux-libre/2020-
> June/003374.html
> Reference: http://www.fsfla.org/pipermail/linux-libre/2020-
> June/003375.html
> Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> Cc: <stable@vger.kernel.org> # v5.7+
> Cc: Alexandre Oliva <lxoliva@fsfla.org>
> Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
