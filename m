Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 016D55F7888
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 15:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1CE210E21A;
	Fri,  7 Oct 2022 13:01:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FA010E22E
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 13:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665147704; x=1696683704;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CxGB6ImFR5zdK2ni+6eQ7ULLbL/K3F3ox03YmLfZDCs=;
 b=nFuQxVk2w6GSU0bS1zfIXHpzwP3HV17sL1JYtxlUifrvMaartwgbuQ/M
 1CLvbSBflo1xyNFsipriyvxQmGMvixs+pxhqUA9cqonnbQL+veMkCkaV4
 c5t/+wLuRKsm8LA45+tRJZdAmGsQLIVS7ikcDsTvb2bm3h9+9oVWX6XJk
 2Rmc5b3tEUPIbxbDig+33uWgpvAVlVgHxLqIMwefMstM8Yip0s9LGARVX
 /uGe4FPZECE5PiVgGiHqS6dKcV+PyWHRYIm4RHN9cvz7wTVr58XlhhofU
 LewJX6A7OaK4RRLh6fxXk6X4PXFKacud+7ynp8vhihXvRl/bxYnh8a4UF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="367854912"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="367854912"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 06:01:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="602859345"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="602859345"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 06:01:42 -0700
Date: Fri, 7 Oct 2022 16:01:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y0AjMpYczIPWYB7r@ideak-desk.fi.intel.com>
References: <20221005175251.3586272-1-imre.deak@intel.com>
 <20221005175251.3586272-2-imre.deak@intel.com>
 <Yz3Xo4sj71e83rsV@intel.com>
 <Yz3wnbs+66FdHmHG@ideak-desk.fi.intel.com>
 <Yz8rfR8T2XoXiIiT@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yz8rfR8T2XoXiIiT@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Suspend/resume encoders
 during GPU reset
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 06, 2022 at 10:24:45PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 06, 2022 at 12:01:17AM +0300, Imre Deak wrote:
> > On Wed, Oct 05, 2022 at 10:14:43PM +0300, Ville Syrjälä wrote:
> > > On Wed, Oct 05, 2022 at 08:52:51PM +0300, Imre Deak wrote:
> > > > The GPU reset involves a display suspend/resume sequence, but this is
> > > > done without suspending/resuming the encoders.
> > > 
> > > The display reset path is there for the old platforms which
> > > can't reset the gt stuff separately from the display engine. 
> > > And the only reason we started to force that codepath on more
> > > modern platforms was to make sure it doesn't break all the time.
> > > That used to happen quite regularly, but not sure if we even had
> > > any pre-g4x hw in CI at the time.
> > > 
> > > I suspect it's probably a mistake to start piling on more
> > > code in there just to make it work on really modern hw.
> > > The old hw where it actually matters doesn't need any of
> > > that code after all.
> > 
> > Ok, but for the !clobbers_display case the current resume sequence is
> > broken imo. So if this fix is not acceptable how about only restoring
> > modeset_restore_state in this case without reading out the HW state
> > first (to keep some test coverage still) or removing the
> > force_reset_modeset_test?
> 
> So the conclusion from our chat was to nuke all the extra
> junk from the simulated path and leave it with just the
> commit_duplicated_state(). I think that's still sufficient
> test of the display vs. reset path since it should still
> grab the modeset locks and whatnot. Well, sufficient
> assuming it actually works :)

Ok, it seems to work at least on ADLP, also fixing the original issue,
so can follow up with this.
