Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228DB98BD19
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EEAA10E325;
	Tue,  1 Oct 2024 13:12:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CP89qpSL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E1810E325
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 13:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727788338; x=1759324338;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=U6s09hug6G4rlBBMcIfX4KWRZ7ox/Q/807MDp8HQr3o=;
 b=CP89qpSLRWd8vM50AiovJSlxwRkOjPWs0Lvne14ourZv1VDWXXzWOHog
 yhWt7l0nn+5wSq7RmwfEgCFpoiZs0fWK8g3oPsWD1Dh/2cZsEvrJaLm2c
 muMPtQ6cFbgudZaN3SYIlATfond5cs7ItuB1ZztfN90+izllVe7WGbmt2
 hOQoWA36cjI2bj10laupBh7E+QDTESWlJf8GJvFlcXlk1W1UTuU6Zqy59
 w5okr/ON9VXBr//7es+4vpt3oF1+ODmm6hz3ZXnZt7zdKD6RCL6b3WzNU
 usIWBLuNlwmra/ZjfvaHWptUrn1HDkzTO6qXHHZdN+sA0JOhMaq96Ga+s A==;
X-CSE-ConnectionGUID: m0E9+59BRfCfZtw2dB7Lpg==
X-CSE-MsgGUID: W7SN1/KYSmKd7Eek3SQ4gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="30715358"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="30715358"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:12:18 -0700
X-CSE-ConnectionGUID: w4CU6oWiTLiQX0LtsiM06A==
X-CSE-MsgGUID: 1tpxS8W1RzSABe+RZfxitQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73783012"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 06:12:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 16:12:14 +0300
Date: Tue, 1 Oct 2024 16:12:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/6] PCI/PM: Respect pci_dev->skip_bus_pm in the
 .poweroff() path
Message-ID: <Zvv1Llm_VIWc2Tiz@intel.com>
References: <ZvWFxLZwRWL3DCeX@intel.com>
 <20240930195009.GA188032@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240930195009.GA188032@bhelgaas>
X-Patchwork-Hint: comment
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

On Mon, Sep 30, 2024 at 02:50:09PM -0500, Bjorn Helgaas wrote:
> On Thu, Sep 26, 2024 at 07:03:16PM +0300, Ville Syrjälä wrote:
> > On Wed, Sep 25, 2024 at 02:28:42PM -0500, Bjorn Helgaas wrote:
> > > On Wed, Sep 25, 2024 at 05:45:21PM +0300, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > On some older laptops i915 needs to leave the GPU in
> > > > D0 when hibernating the system, or else the BIOS
> > > > hangs somewhere. Currently that is achieved by calling
> > > > pci_save_state() ahead of time, which then skips the
> > > > whole pci_prepare_to_sleep() stuff.
> 
> > > If there's a general requirement to leave all devices in D0 when
> > > hibernating, it would be nice to have have some documentation like an
> > > ACPI spec reference.
> > 
> > No, IIRC the ACPI spec even says that you must (or at least
> > should) put devices into D3. But the buggy BIOS on some old
> > laptops keels over when you do that. Hence we need this quirk.
> 
> Can we include a reference to this part of the ACPI spec

It's been years since I looked at that, but a quick trawl of the
ACPI 6.3 spec (what I had at hand) landed me this:

"7.4.2.5 System \_S4 State
 ...
 - Devices states are compatible with the current Power Resource states. In
   other words, all devices are in the D3 state when the system state is S4."

"16.1.6 Transitioning from the Working to the Sleeping State
 ...
 4. OSPM places all device drivers into their respective Dx state. If the
    device is enabled for wake, it enters the Dx state associated with the
    wake capability. If the device is not enabled to wake the system, it
    enters the D3 state."

> and some
> details on which laptops have this issue?

The known models are listed in a comment in i915 code (added
in the two mentioned commits), though I suspect there are
probably more because we couldn't find any obvious pattern
why these known models are affected.

> 
> I'm a little bit wary of changing the PCI core in a generic-looking
> way on the basis of some unspecified buggy old BIOS.  That feels like
> something we're likely to break in the future.
> 
> > > Or if this is some i915-specific thing, maybe a pointer to history
> > > like a lore or bugzilla reference.
> > 
> > The two relevant commits I can find are:
> > 
> > commit 54875571bbfd ("drm/i915: apply the PCI_D0/D3 hibernation
> > workaround everywhere on pre GEN6")
> > commit ab3be73fa7b4 ("drm/i915: gen4: work around hang during
> > hibernation")
> 
> Thanks, this feels like important history to include somewhere.
> 
> > > IIUC this is a cleanup that doesn't fix any known problem?  The
> > > overall diffstat doesn't make it look like a simplification, although
> > > it might certainly be cleaner somehow:
> > 
> > My main concern is that using pci_save_state() might cause the pci
> > code to deviate from the normal path in more ways than just skipping
> > the D0->D3 transition. And then we might end up constantly chasing
> > after driver/pci changes in order to match its behaviour.
> > 
> > Not to mention that having the pci_save_state() in the driver code
> > is clearly confusing a bunch of our developers.
> 
> I'm all in favor of removing pci_save_state() from drivers when
> possible.  I take it that this doesn't fix a functional issue.

No known issue so far.

But we are probably going to add eg. PME support at some point,
and the fact that pci_save_state() also skips pci_enable_wake()
makes me think we'd have to hand roll a lot more stuff in the
driver code if we keep using the pci_save_state(). Though I 
suppose we could do the pci_save_state() only on those
old systems which won't have PME anyway. 

-- 
Ville Syrjälä
Intel
