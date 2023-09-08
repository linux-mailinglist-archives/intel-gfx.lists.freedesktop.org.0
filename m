Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BE87981B7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 08:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73C610E0E9;
	Fri,  8 Sep 2023 06:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858B810E0A9;
 Fri,  8 Sep 2023 06:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694153024; x=1725689024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w/Egied4HUOv4SCcGevZCbojy3UPLcJqAKHsmIkG5vo=;
 b=nSWiWgDf+m7ZawVidiJYK3gPsU8ODugOmTkaHSGMGP1FATUGds241Zs5
 ztgDfk0rXG8SQXVsb6WIazy9ClyA/hrVglEAhCbSobyBLUc+vmJtXVW/A
 5p+Hk8uMhsAiIPJ2Ug3UT3rXAPY+nfehq4dnU0lJGSva74GbiNPTLUrxz
 MFSv4c6tj4I8VbFhleVt9C64vJkdSKXhsSKovUQi1K9S2mr1ixRSl419V
 08d69OqEusc5ZjPJOHmzUZGVe5N3MeimNAIZy0SgDKsQ/xeDLHjyC/o0S
 gUOfLpNg0mIHF/7cKLDh+qZ4U0SDoAVpKQ//mQDg2llbpIXz40Y4DNZBR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="357029692"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="357029692"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 23:03:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="832534483"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="832534483"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by FMSMGA003.fm.intel.com with SMTP; 07 Sep 2023 23:03:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Sep 2023 09:03:40 +0300
Date: Fri, 8 Sep 2023 09:03:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <ZPq5PCOiVbbFFTU4@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-6-lucas.demarchi@intel.com>
 <20230907170442.GK2706891@mdroper-desk1.amr.corp.intel.com>
 <oxqzybmceob67inunbnnvjna7sgbpjjhb4kwqzfwc7rz5hir6u@x4warrnufecs>
 <20230908005719.GU2706891@mdroper-desk1.amr.corp.intel.com>
 <ZPqzpNlTWiLrRXCy@intel.com>
 <pxfmwknh5jetgwlqslwnkybdkhghbc6krclqqt6wf2tu3kb3tw@qu52d3etwech>
 <ZPq3pcrxUbEpXLGA@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZPq3pcrxUbEpXLGA@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 05/27] drm/i915/xe2lpd: Add
 fake PCH
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 08:56:53AM +0300, Ville Syrjälä wrote:
> On Fri, Sep 08, 2023 at 12:51:09AM -0500, Lucas De Marchi wrote:
> > On Fri, Sep 08, 2023 at 08:39:48AM +0300, Ville Syrjälä wrote:
> > >On Thu, Sep 07, 2023 at 05:57:19PM -0700, Matt Roper wrote:
> > >> On Thu, Sep 07, 2023 at 03:43:59PM -0500, Lucas De Marchi wrote:
> > >> > On Thu, Sep 07, 2023 at 10:04:42AM -0700, Matt Roper wrote:
> > >> > > On Thu, Sep 07, 2023 at 08:37:35AM -0700, Lucas De Marchi wrote:
> > >> > > > From: Gustavo Sousa <gustavo.sousa@intel.com>
> > >> > > >
> > >> > > > Xe2_LPD has sourth display on the same SOC. As such, define a new fake
> > >> > >
> > >> > > s/sourth/south/
> > >> > >
> > >> > > You might also want to drop the word "same" from the description here
> > >> > > since NDE and SDE are technically on different dies in this case (NDE is
> > >> > > on the compute die, whereas SDE is on the SoC die).  To be 100% accurate
> > >> > > we'd want to identify SDE behavior via the PICA's GMD_ID (since PICA
> > >> > > also lives on the SoC die for this platform).  But since we've just been
> > >> >
> > >> > I'd not re-architect this based on where the PICA lives as it seems very
> > >> > easy to change in future.... tying the SDE behavior to the PICA behavior
> > >> > because they are on the same die, doesn't seem very future proof.
> > >>
> > >> The point is that tying it to any one thing for every platform is
> > >> incorrect; figuring out a) which die is relevant to SDE behavior and b)
> > >> how to fingerprint the variant and stepping of that die is very platform
> > >> specific.  Art specifically suggested using the PICA ID in cases where
> > >> the PICA lives on the die that we need to fingerprint but the NDE does
> > >> not.  But again, that's not a silver bullet that can be used on every
> > >> single platform.  Nor is using the ISA bus ID like we've done for a long
> > >> time.  Nor is using the display version.  Nor is using just the PCI ID.
> > >> There's no single answer here, which is why we need a major rethink of
> > >> our strategy at some point in the future.  But that overhaul can wait
> > >> for a future series; I just want to make sure that the commit messages
> > >> here aren't causing further confusion.
> > >>
> > >> >
> > >> > Here the real reason for the change is that from the SW perspective they
> > >> > are under the same PCI device and there's no reason to look for a
> > >> > different one. Maybe rewording it a "Xe2_LPD has south display on the
> > >> > same PCI device" would be simpler?
> > >>
> > >> No, that would be even less correct; PCI device isn't really related to
> > >> any of this.  Obviously at the register level, everything our driver
> > >> cares about (NDE, SDE, GT, etc.) is accessed through the same PCI device
> > >> (e.g., 00:02.0 on an igpu).  Under the hood the various pieces of that
> > >> PCI device (NDE, SDE, render GT, media GT, etc.) might be located
> > >> together on a single chip, or may be spread across different dies.  When
> > >> spread across different dies, those dies can be mixed-and-matched in
> > >> various ways (and it seems like hardware design is trending toward more
> > >> flexibility in mix-and-match).
> > >>
> > >> The register interface to the SDE (i.e., which registers exist and what
> > >> bitfields they have inside) hasn't had any meaningful changes in a long
> > >> time.  And if it does change in the future, the _interface_ changes are
> > >> probably more tied to the display IP version than to anything else.
> > >> However there's some important SDE handling that the driver needs to do
> > >> that may vary based on the identity of the specific die that's
> > >> responsible for doing SDE I/O on a given platform.  I.e., there may be
> > >> I/O-related defects+workarounds that require special SDE programming
> > >> when a certain die variant and/or stepping is present.  There can also
> > >> be differences in how lanes are physically wired up, resulting in pin
> > >> mapping changes.  In these cases we need to be able to fingerprint the
> > >> identity of the specific die handling the I/O (which might be a compute
> > >> die, an SoC die, and IOE die, a PCH die, etc.) and make our decisions
> > >> accordingly.  If the SDE I/O happens on the same die as the north
> > >> display functionality, then using the display version might be an
> > >> effective way to fingerprint.  If the SDE I/O happens on a different die
> > >> from the NDE, but on the same die the PICA lives on, the display
> > >> architects suggested using the PICA ID in that case.  If neither of
> > >> those cases are true, then we may need to look at PCI IDs or something.
> > >>
> > >> In the past, the PCH was often where the SDE I/O responsibility was so
> > >> we needed a way to identify exactly which PCH variant was present.  The
> > >> "PCH ID" that we try to match on during driver startup is entirely
> > >> unrelated to the SDE; it's just a random bus that we know was always
> > >> part of every PCH and always present in the same predictable PCI slot,
> > >> so it's handy for identification purposes.  The fact that we're still
> > >> looking at the ISA bus on MTL today is 100% wrong because most (maybe
> > >> all?) MTL platforms don't even have a PCH (so that ISA bus might be on a
> > >> different die that we really don't care about at all).  For MTL I
> > >> believe the NDE and the SDE's I/O are both on the same SoC die, so we
> > >> should really just be making our decisions based on IP version and/or
> > >> graphics device ID.
> > >
> > >I think ideally SDE would have its own IP version/etc. we could
> > >use to identify it.
> > 
> > maybe some future platform
> > 
> > >
> > >I'm not really sure why we even started down this "fake PCH" route
> > >since we never added that for BXT/GLK either, and they managed just
> > 
> > it was originally done for the discrete cards, I think DG1, and got
> > extended to the next ones. Differently than BXT/GLK it doesn't work
> > at all to try finding the ISA bridge as that would end up matching the
> > wrong one.
> 
> BXT/GLK don't look for the ISA bridge either. Well, they do, but
> they won't find a matching one and thus we're left with PCH_NONE.

I guess we can also blame bspec for this mess a bit since for
BXT/GLK it actually documents the SDE registers in the north
display section, whereas everything else that has SDE registers
documents them in the south display section.

-- 
Ville Syrjälä
Intel
