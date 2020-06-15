Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BF71F9FBA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 20:56:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DBDC6E4BB;
	Mon, 15 Jun 2020 18:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0A26E4BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 18:56:28 +0000 (UTC)
IronPort-SDR: J2M2Dd0KWNc0d38hHjwkJnmTRBhml93wXbUINj0GkcgjahPUk3T3OP3Aq7Zd4hlWal1E8q3UpW
 rOyj8Ce3jG6Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 11:56:28 -0700
IronPort-SDR: uue+PSVCk3LyNJiZicIhIpDGOWTgpOaZGd4peX/xPnzbc3riDhuuZbZAGJCTfgo6Mqcp4uk/Pg
 rrGiau2KiYYQ==
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="420470061"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 11:56:28 -0700
Date: Mon, 15 Jun 2020 11:54:20 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>
Message-ID: <20200615185420.GA334084@intel.com>
References: <159163988890.30073.8976615673203599761@build.alporthouse.com>
 <20200610201807.191440-1-rodrigo.vivi@intel.com>
 <AD48BB7FB99B174FBCC69E228F58B3B6B78F0D73@fmsmsx116.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B6B78F0D73@fmsmsx116.amr.corp.intel.com>
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Alexandre Oliva <lxoliva@fsfla.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 12, 2020 at 02:15:02PM -0700, Bloomfield, Jon wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Rodrigo Vivi
> > Sent: Wednesday, June 10, 2020 1:18 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Alexandre Oliva <lxoliva@fsfla.org>; Nikula, Jani <jani.nikula@intel.com>;
> > stable@vger.kernel.org; Chris Wilson <chris@chris-wilson.co.uk>
> > Subject: [Intel-gfx] [PATCH] drm/i915: Include asm sources for {ivb,
> > hsw}_clear_kernel.c
> > 
> > Alexandre Oliva has recently removed these files from Linux Libre
> > with concerns that the sources weren't available.
> > 
> > The sources are available on IGT repository, and only open source
> > tools are used to generate the {ivb,hsw}_clear_kernel.c files.
> > 
> > However, the remaining concern from Alexandre Oliva was around
> > GPL license and the source not been present when distributing
> > the code.
> > 
> > So, it looks like 2 alternatives are possible, the use of
> > linux-firmware.git repository to store the blob or making sure
> > that the source is also present in our tree. Since the goal
> > is to limit the i915 firmware to only the micro-controller blobs
> > let's make sure that we do include the asm sources here in our tree.
> > 
> > Btw, I tried to have some diligence here and make sure that the
> > asms that these commits are adding are truly the source for
> > the mentioned files:
> > 
> > igt$ ./scripts/generate_clear_kernel.sh -g ivb \
> >      -m ~/mesa/build/src/intel/tools/i965_asm
> > Output file not specified - using default file "ivb-cb_assembled"
> > 
> > Generating gen7 CB Kernel assembled file "ivb_clear_kernel.c"
> > for i915 driver...
> > 
> > igt$ diff ~/i915/drm-tip/drivers/gpu/drm/i915/gt/ivb_clear_kernel.c \
> >      ivb_clear_kernel.c
> > 
> > <  * Generated by: IGT Gpu Tools on Fri 21 Feb 2020 05:29:32 AM UTC
> > >  * Generated by: IGT Gpu Tools on Mon 08 Jun 2020 10:00:54 AM PDT
> > 61c61
> > < };
> > > };
> > \ No newline at end of file
> > 
> > igt$ ./scripts/generate_clear_kernel.sh -g hsw \
> >      -m ~/mesa/build/src/intel/tools/i965_asm
> > Output file not specified - using default file "hsw-cb_assembled"
> > 
> > Generating gen7.5 CB Kernel assembled file "hsw_clear_kernel.c"
> > for i915 driver...
> > 
> > igt$ diff ~/i915/drm-tip/drivers/gpu/drm/i915/gt/hsw_clear_kernel.c \
> >      hsw_clear_kernel.c
> > 5c5
> > <  * Generated by: IGT Gpu Tools on Fri 21 Feb 2020 05:30:13 AM UTC
> > >  * Generated by: IGT Gpu Tools on Mon 08 Jun 2020 10:01:42 AM PDT
> > 61c61
> > < };
> > > };
> > \ No newline at end of file
> > 
> > Used IGT and Mesa master repositories from Fri Jun 5 2020)
> > IGT: 53e8c878a6fb ("tests/kms_chamelium: Force reprobe after replugging
> >      the connector")
> > Mesa: 5d13c7477eb1 ("radv: set keep_statistic_info with
> >       RADV_DEBUG=shaderstats")
> > Mesa built with: meson build -D platforms=drm,x11 -D dri-drivers=i965 \
> >                  -D gallium-drivers=iris -D prefix=/usr \
> > 		 -D libdir=/usr/lib64/ -Dtools=intel \
> > 		 -Dkulkan-drivers=intel && ninja -C build
> > 
> > v2: Header clean-up and include build instructions in a readme (Chris)
> >     Modified commit message to respect check-patch
> > 
> > Reference: http://www.fsfla.org/pipermail/linux-libre/2020-
> > June/003374.html
> > Reference: http://www.fsfla.org/pipermail/linux-libre/2020-
> > June/003375.html
> > Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
> > Cc: <stable@vger.kernel.org> # v5.7+
> > Cc: Alexandre Oliva <lxoliva@fsfla.org>
> > Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> > Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>

Thanks, pushed to dinq
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
