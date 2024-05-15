Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013BE8C69EC
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 17:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D239A10E511;
	Wed, 15 May 2024 15:45:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="HZNb+2fq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C3AF10E511
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 15:45:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8710F614CD;
 Wed, 15 May 2024 15:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B8D0C116B1;
 Wed, 15 May 2024 15:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1715787907;
 bh=4ud7NJAGwVzhTrQjn+6j6cRtsWsiEuyTC+HyuiOxDkc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=HZNb+2fqIN7V4MplDSnap5fCu+Fb2WJlzsx1FC2mONFAP2dz4zuLw0orp1GNRXsa1
 1enOEQkWUn9/Cgo6Zj1Q8+efOJIkOvAC5hCkhyuQ+CrxpyCQTUu2ezUA5p2G5DhKQY
 TPcKerGncP3lEAUPi6vYevTbt22iZlWEm0IzjKqwent15PJ7VCiRso2PfX8wnertPc
 XmO3mDea2KhTzravHQUC/9pRSNi4f/CW4GYGtQXBkauYsA93CaSTwyOKK4MXaupXa1
 410yD7btQjS6SmvO8hoZUcG+hUXayJv5e2Bdr1R7sABiiEf5NsMYlLso+9KFcPJK/Y
 gU/YCGh5rvLLw==
Date: Wed, 15 May 2024 10:45:05 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 0/8] drm/i915/pciids: PCI ID macro cleanups
Message-ID: <20240515154505.GA2123614@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ikzlhiv8.fsf@intel.com>
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

On Fri, May 10, 2024 at 04:55:07PM +0300, Jani Nikula wrote:
> On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> > This is a spin-off from [1], including just the PCI ID macro cleanups,
> > as well as adding a bunch more cleanups.
> >
> > BR,
> > Jani.
> >
> > [1] https://lore.kernel.org/all/cover.1715086509.git.jani.nikula@intel.com/
> >
> >
> > Jani Nikula (8):
> >   drm/i915/pciids: add INTEL_PNV_IDS(), use acronym
> >   drm/i915/pciids: add INTEL_ILK_IDS(), use acronym
> >   drm/i915/pciids: add INTEL_SNB_IDS()
> >   drm/i915/pciids: add INTEL_IVB_IDS()
> >   drm/i915/pciids: don't include WHL/CML PCI IDs in CFL
> >   drm/i915/pciids: remove 11 from INTEL_ICL_IDS()
> >   drm/i915/pciids: remove 12 from INTEL_TGL_IDS()
> >   drm/i915/pciids: don't include RPL-U PCI IDs in RPL-P
> >
> >  arch/x86/kernel/early-quirks.c                | 19 +++---
> 
> Bjorn, ack for merging this via drm-intel-next?

Sorry, I had ignored this because I didn't think it affected any PCI
stuff.  This is fine with me:

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

But since you asked :), I'll gripe again about the fact that this
intel_early_ids[] list needs continual maintenance, which is not the
way things are supposed to work.  Long thread about it here:

https://lore.kernel.org/linux-pci/20201104120506.172447-1-tejaskumarx.surendrakumar.upadhyay@intel.com/t/#u

> >  .../drm/i915/display/intel_display_device.c   | 20 +++---
> >  drivers/gpu/drm/i915/i915_pci.c               | 13 ++--
> >  drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
> >  include/drm/i915_pciids.h                     | 67 ++++++++++++-------
> >  5 files changed, 71 insertions(+), 51 deletions(-)
> 
> -- 
> Jani Nikula, Intel
