Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A9841F4B2
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Oct 2021 20:14:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878486EEA2;
	Fri,  1 Oct 2021 18:14:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38BD6EE79
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Oct 2021 17:45:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5D234619EC;
 Fri,  1 Oct 2021 17:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633110352;
 bh=db7GD7Lnx1ZtZAtaCWF8cwt5PJRMhlQFMCeZ5e1Xap4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CA9DLkAq4PPpVa8KaA6SFQb3N2r+mJyrAjBXTOmwDu6gH7UNs6KSDSccC0dczmlYO
 vHAnJeiTdCGtqjSkULM8CBsaU0V3Z/NestItDaJGjJv4anJEn3eUXWo/UiFY3D9P64
 DEXxGfNa3Yipvff31Lba0s/krLrdIDRwCCeSImCwXNygbfyRAipD9t4zZbiR23D+o3
 7tEYMxyT5s7Xkju18LLyMvGnpu5vd+VedA6hjV90lF66X1gZZha82M10vXOm7PWd7H
 uBveIXumosPUh2i+TdI7cHYyVCNh4yOfDAXsDXQAufZz5d307YAAf9EFcm7TVfWWMg
 Qal2JwOooV24Q==
Date: Fri, 1 Oct 2021 10:45:47 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, kernel test robot <lkp@intel.com>,
 Max Gurtovoy <mgurtovoy@nvidia.com>,
 "llvm@lists.linux.dev" <llvm@lists.linux.dev>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@nvidia.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <YVdJS5RUjvokrSnn@archlinux-ax161>
References: <20210827153409.GV1721383@nvidia.com>
 <878rzdt3a3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878rzdt3a3.fsf@intel.com>
X-Mailman-Approved-At: Fri, 01 Oct 2021 18:14:04 +0000
Subject: Re: [Intel-gfx] [vfio:next 33/38]
 drivers/gpu/drm/i915/i915_pci.c:975:2: warning: missing field
 'override_only' initializer
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

On Fri, Oct 01, 2021 at 02:04:04PM +0300, Jani Nikula wrote:
> On Fri, 27 Aug 2021, Jason Gunthorpe <jgg@nvidia.com> wrote:
> > On Fri, Aug 27, 2021 at 03:12:36PM +0000, kernel test robot wrote:
> >> tree:   https://github.com/awilliam/linux-vfio.git next
> >> head:   ea870730d83fc13a5fa2bd0e175176d7ac8a400a
> >> commit: 343b7258687ecfbb363bfda8833a7cf641aac524 [33/38] PCI: Add 'override_only' field to struct pci_device_id
> >> config: i386-randconfig-a004-20210827 (attached as .config)
> >> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 1076082a0d97bd5c16a25ee7cf3dbb6ee4b5a9fe)
> >> reproduce (this is a W=1 build):
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         # https://github.com/awilliam/linux-vfio/commit/343b7258687ecfbb363bfda8833a7cf641aac524
> >>         git remote add vfio https://github.com/awilliam/linux-vfio.git
> >>         git fetch --no-tags vfio next
> >>         git checkout 343b7258687ecfbb363bfda8833a7cf641aac524
> >>         # save the attached .config to linux build tree
> >>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 
> >> 
> >> If you fix the issue, kindly add following tag as appropriate
> >> Reported-by: kernel test robot <lkp@intel.com>
> >
> > Ugh, this is due to this code:
> >
> > #define INTEL_VGA_DEVICE(id, info) {		\
> > 	0x8086,	id,				\
> > 	~0, ~0,					\
> > 	0x030000, 0xff0000,			\
> > 	(unsigned long) info }
> >
> > #define INTEL_QUANTA_VGA_DEVICE(info) {		\
> > 	0x8086,	0x16a,				\
> > 	0x152d,	0x8990,				\
> > 	0x030000, 0xff0000,			\
> > 	(unsigned long) info }
> >
> >
> > Which really should be using the normal pattern for defining these
> > structs:
> >
> > #define PCI_DEVICE_CLASS(dev_class,dev_class_mask) \
> >         .class = (dev_class), .class_mask = (dev_class_mask), \
> >         .vendor = PCI_ANY_ID, .device = PCI_ANY_ID, \
> >         .subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID
> >
> > The warning is also not a real issue, just clang being overzealous.
> 
> Stumbled upon this old report, sorry for the delayed response.
> 
> The reason it's not using designated initializers is that the same file
> gets synced to some userspace projects (at least libdrm and
> igt-gpu-tools) which use the macros to initialize slightly different
> structs. For example, igt uses struct pci_id_match from libpciaccess-dev
> (/usr/include/pciaccess.h) and can't easily adapt to different member
> names.
> 
> Anyway, we've got
> 
> subdir-ccflags-y += $(call cc-disable-warning, missing-field-initializers)
> subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
> 
> in drivers/gpu/drm/i915/Makefile, so I wonder why they're not respected.

This report was from an i386 randconfig, which we recently had a lot of
issues with:

https://git.kernel.org/linus/7fa6a2746616c8de4c40b748c2bb0656e00624ff

Applying my patch to remove most of the cc-disable-warnings in your
Makefile would help avoid these reports in the future :)

https://lore.kernel.org/r/20210914194944.4004260-1-nathan@kernel.org/

Cheers,
Nathan
