Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E9298AD3D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 21:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BC110E2F7;
	Mon, 30 Sep 2024 19:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="JBKzLd1J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86AD510E2F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 19:50:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7BB2D5C4C29;
 Mon, 30 Sep 2024 19:50:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E285BC4CEC7;
 Mon, 30 Sep 2024 19:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727725811;
 bh=9SA453tPLrQRjXTURT3F9tHPTSbY1zUIImzF4+TO3uA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=JBKzLd1JCuhkntJtb/uwV/yuzRABss8YWOzCSKbxtkkxbYCB9C5MaGA9lgb4RQv7Z
 7Bcr/syxyZ/qp+uSwL1cYyINHa+krJWGKN3QEGrtxng7P3tGi8nBUDgzfs2C3ZubGY
 V9KJ7fCkNHypLJJjU63lu+nhz+CpACrXA0cF0zpyvMdiW9BBUy1YlVlbUMdz1LDbPR
 YophY4BVkdfypHJJZybuLkvLl++gvMeCCo5vnh8+ss4rOlfyZ8p6rHzs7LJ2CqShDu
 wN98I29E/lj9+ioU+8+jxfLTpFS5M0zl9MtE/WILWjHwru43/g83wh2sARloglpT7K
 iILeg3CdpAllg==
Date: Mon, 30 Sep 2024 14:50:09 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/6] PCI/PM: Respect pci_dev->skip_bus_pm in the
 .poweroff() path
Message-ID: <20240930195009.GA188032@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvWFxLZwRWL3DCeX@intel.com>
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

On Thu, Sep 26, 2024 at 07:03:16PM +0300, Ville Syrjälä wrote:
> On Wed, Sep 25, 2024 at 02:28:42PM -0500, Bjorn Helgaas wrote:
> > On Wed, Sep 25, 2024 at 05:45:21PM +0300, Ville Syrjala wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > On some older laptops i915 needs to leave the GPU in
> > > D0 when hibernating the system, or else the BIOS
> > > hangs somewhere. Currently that is achieved by calling
> > > pci_save_state() ahead of time, which then skips the
> > > whole pci_prepare_to_sleep() stuff.

> > If there's a general requirement to leave all devices in D0 when
> > hibernating, it would be nice to have have some documentation like an
> > ACPI spec reference.
> 
> No, IIRC the ACPI spec even says that you must (or at least
> should) put devices into D3. But the buggy BIOS on some old
> laptops keels over when you do that. Hence we need this quirk.

Can we include a reference to this part of the ACPI spec and some
details on which laptops have this issue?

I'm a little bit wary of changing the PCI core in a generic-looking
way on the basis of some unspecified buggy old BIOS.  That feels like
something we're likely to break in the future.

> > Or if this is some i915-specific thing, maybe a pointer to history
> > like a lore or bugzilla reference.
> 
> The two relevant commits I can find are:
> 
> commit 54875571bbfd ("drm/i915: apply the PCI_D0/D3 hibernation
> workaround everywhere on pre GEN6")
> commit ab3be73fa7b4 ("drm/i915: gen4: work around hang during
> hibernation")

Thanks, this feels like important history to include somewhere.

> > IIUC this is a cleanup that doesn't fix any known problem?  The
> > overall diffstat doesn't make it look like a simplification, although
> > it might certainly be cleaner somehow:
> 
> My main concern is that using pci_save_state() might cause the pci
> code to deviate from the normal path in more ways than just skipping
> the D0->D3 transition. And then we might end up constantly chasing
> after driver/pci changes in order to match its behaviour.
> 
> Not to mention that having the pci_save_state() in the driver code
> is clearly confusing a bunch of our developers.

I'm all in favor of removing pci_save_state() from drivers when
possible.  I take it that this doesn't fix a functional issue.

Bjorn
