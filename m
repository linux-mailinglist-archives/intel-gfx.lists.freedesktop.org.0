Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B679A60D58E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31C910E32E;
	Tue, 25 Oct 2022 20:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0CF10E32E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729948; x=1698265948;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GVo3VBqPRovcZf5EP7+TCdOX+BecorKE93akHNypg2U=;
 b=e1CkhaNWxJyJNspBh7DCjZrXucayLJjlVp2MizgAMCLWTFuimXQ/9Zeq
 CfHBKst9U90G11MxEyDQ7wtiT+0xRAGdTPWKlYJQSHkmwdtwl+Wm40Nbg
 jomPL+QMngu/DIhSyB3Xxl3F5P9KbzO9FGrJnUFkOwfW+GQedEQqB15br
 flRNQGfaPlvAvupVR9zIGec2mEsmqswHAw7wTNSazc40fDhD17qGIDG1k
 bYc25UYdg5xL4pkzJ9HsvqBTCVTX8Euvt8pnJGmfG4OttzCDuE96ticsa
 Mcm+f7yAGXnS3MZAD6I9aheutvNB1Yhc82BY1oGI86DHNVBXkS2QHEwlX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="371995383"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="371995383"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:32:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="774335851"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="774335851"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 25 Oct 2022 13:32:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Oct 2022 23:32:23 +0300
Date: Tue, 25 Oct 2022 23:32:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y1hH10dyV0bCCSSr@intel.com>
References: <20221025165938.17264-1-ville.syrjala@linux.intel.com>
 <878rl3eqx7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rl3eqx7.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: Fallback to current output
 timings for LVDS fixed mode
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 25, 2022 at 08:47:32PM +0300, Jani Nikula wrote:
> On Tue, 25 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > If we can't dig out a fixed mode for LVDS from the VBT or EDID
> > let's fall back to using the current output timings. This should
> > work as long as the BIOS has (somehow) enabled the output.
> >
> > In this case we are dealing with the some kind of BLB based POS
> > machine (Toshiba SurePOS 500) where neither the OpRegion mailbox
> > nor the vbios ROM contain a valid VBT. And no EDID anywhere we
> > could find either.
> >
> > Cc: <stable@vger.kernel.org> # v5.19+
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> But they're saying it's a regression between 4.19 and 5.10...

Yeah. I can't actually figure out how it could have worked even
with 4.19.

Hmm. Actually now that I look at some of the hints in the logs it
does look like it maybe did find an EDID after all. What confused
me was that all the modes very much like the _noedid stuff.

Ah, it looks like we fail to fully initialize the DDC stuff
before setting up the outputs, which I guess explains why the
EDID read fails there. Previously there was this funky feedback
loop in that .get_modes() actually filled in the fixed_mode,
so until you called that (after everything else was fully set
up) you didn't have a fixed mode.

And while looking at this stuff more I can see that the whole
multi output support is still very much snafu :/

I'll see if I can make a fairly minimal fix for now...

-- 
Ville Syrjälä
Intel
