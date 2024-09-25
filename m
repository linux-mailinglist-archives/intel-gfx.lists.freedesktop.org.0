Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AC69866E2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 21:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D95710E850;
	Wed, 25 Sep 2024 19:28:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="DlWRpqeP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D9010E84E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 19:28:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 1B8F0A4474A;
 Wed, 25 Sep 2024 19:28:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F550C4CEC3;
 Wed, 25 Sep 2024 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1727292533;
 bh=2p6rSWpJHI86fF++mKRzgd+G59Aro6HVbKw40/eSKz4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=DlWRpqePUnblESnukyDU/cwDtFisQ9nkB9jQIMYLsn7RvZ8K0+DcunnxYxrTRHF12
 z6yC3OpnhuMaierjBxV35SGFOdL9JYRifgvsJTpeW2Z1CAhkK5nOHDrHFanMyL57sf
 O2VfGVZpCha4y6Sz4h3F/2FY4+nS/yDAXCMqhoX5S3+Ws4qI+pdlxaZO4I1nokYKVY
 IL4KNh+ufMQe2NsMAUZl2NmboNBUsTdeo0EPcKfu2Lz7YDDtWTcXEUG2CsfHCvgciO
 6Irfd0XjFdA8raXKU8wj+g1Kum+KED/d1EmIYtjpbXDTbtVMeHThE/wltYAgLoad/h
 uq1RMPlY4K2qQ==
Date: Wed, 25 Sep 2024 14:28:52 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 4/6] drm/i915/pm: Move the hibernate+D3 quirk stuff into
 noirq() pm hooks
Message-ID: <20240925192852.GA10106@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925144526.2482-5-ville.syrjala@linux.intel.com>
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

On Wed, Sep 25, 2024 at 05:45:24PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If the driver doesn't call pci_save_state() driver/pci will
> normally save+power manage the device from the _noirq() pm
> hooks.

drivers/pci.  Or maybe just mention the PM hook names specifically.

> We can't let that happen as some old BIOSes fail to hibernate
> when the device is in D3. However, we can get a bit closer to
> the standard behaviour by doing our explicit pci_save_state()
> and pci_set_power_state() stuff from driver provided _noirq()
> hooks as well.
> 
> This results in a change of behaviur where we no longer go
> into D3 at the end of .freeze_late(), so when it comes time
> to .thaw() we'll already be in D0, and thus we can drop the
> explicit pci_set_power_state(D0) call.

s/behaviur/behaviour/

> Presumable swictcheroo suspend will want to go into D3 so
> call the _noirq() stuff from the switcheroo suspend hook,
> and since we dropped the pci_set_power_state(D0) from
> .resume_early() we'll need to add one back into the
> swtcheroo resume hook.

s/swictcheroo/switcheroo/
s/swtcheroo/switcheroo/

Or maybe just use the actual function names here too.  That saves
time for me, at least, because it points me at exactly where to look.

Bjorn
