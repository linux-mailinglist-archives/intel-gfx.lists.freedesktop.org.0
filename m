Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A32F740DB07
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 15:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6190C6EDB9;
	Thu, 16 Sep 2021 13:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4C86EDB9
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 13:21:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10108"; a="209651821"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="209651821"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:21:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="545702011"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 16 Sep 2021 06:21:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Sep 2021 16:21:21 +0300
Date: Thu, 16 Sep 2021 16:21:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <YUNE0fd/iwOaNXW9@intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-2-ville.syrjala@linux.intel.com>
 <80815922ba68991fe0a4e8609d62464457d7c822.camel@intel.com>
 <YUBbUtDCL5p/zlW9@intel.com>
 <d81c249be2ac0c427ec7ecbb74b89436f8dac955.camel@intel.com>
 <7fd9904877943a744cb011c9f8668620b6fde508.camel@intel.com>
 <YUHnYowcolvx1z4D@intel.com>
 <35baca4ced0a0f0a045ddce0292aca1d5917551a.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <35baca4ced0a0f0a045ddce0292aca1d5917551a.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/16] Revert "drm/i915/display: Disable
 audio, DRRS and PSR before planes"
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

On Wed, Sep 15, 2021 at 08:19:41PM +0000, Souza, Jose wrote:
> On Wed, 2021-09-15 at 15:30 +0300, Ville Syrjälä wrote:
> > On Wed, Sep 15, 2021 at 12:00:28AM +0000, Souza, Jose wrote:
> > > On Tue, 2021-09-14 at 16:30 -0700, José Roberto de Souza wrote:
> > > > On Tue, 2021-09-14 at 11:20 +0300, Ville Syrjälä wrote:
> > > > > On Mon, Sep 13, 2021 at 04:28:35PM +0000, Souza, Jose wrote:
> > > > > > On Mon, 2021-09-13 at 17:44 +0300, Ville Syrjala wrote:
> > > > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > 
> > > > > > > Disabling planes in the middle of the modeset seuqnece does not make
> > > > > > > sense since userspace can anyway disable planes before the modeset
> > > > > > > even starts. So when the modeset seuqence starts the set of enabled
> > > > > > > planes is entirely arbitrary. Trying to sprinkle the plane disabling
> > > > > > > into the modeset sequence just means more randomness and potential
> > > > > > > for hard to reproduce bugs.
> > > > > > 
> > > > > > The patch being reverted did not changed anything about plane, it only disables audio and PSR before pipe is disabled in this case.
> > > > > 
> > > > > The commit message only talks about planes. Also we already disable
> > > > > the pipe in the post_disable hook, so PSR/audio was always disabled
> > > > > before the pipe IIRC.
> > > > 
> > > > That is true, my bad.
> > > > 
> > > > Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
> > > 
> > > Sorry I missed the intel_crtc_disable_planes() call, so here is the problem:
> > > 
> > > 
> > > intel_commit_modeset_disables()
> > > 	intel_old_crtc_state_disables()
> > > 		intel_crtc_disable_planes()
> > > 			intel_disable_plane()
> > > 		dev_priv->display.crtc_disable(state, crtc)/hsw_crtc_disable()
> > > 			intel_encoders_disable()
> > > 				encoder->disable()/intel_disable_ddi()
> > > 					intel_psr_disable()
> > > 			intel_encoders_post_disable()
> > > 				post_disable/intel_ddi_post_disable()
> > > 					intel_disable_pipe()
> > > 
> > > So all the planes are disabled while PSR is still on, that is why this patch fixed the underrun.
> > > 
> > > We need to call the pre_disable() before intel_crtc_disable_planes() and for the case where pipe is not disabled but all of its planes are requires
> > > the pending patch that I have.
> > > 
> > > Or do you have other suggestion?
> > 
> > I would like to follow the same sequence always, ie. disable planes
> > first (be it from userspace or from the kernel just before the modeset),
> > and then we take the exact same measures in both cases to deal with
> > whatever is the problem with PSR vs. disabled planes. That makes the
> > sequence as deterministic as possible, and thus we avoid potential
> > weird bugs stemming from userspace behaviour wrt. disabling planes.
> > 
> > Hmm. Our modeset plane disable code is certainly a bit lackluster.
> > It misses a bunch of stuff that we do for normal plane updates.
> > So we might want to put a few extra things in there. Maybe PSR
> > needs the vblank_get+psr_idle trick? And we might want a
> > vrr_push/etc. in there as well, not sure.
> > 
> > What exactly is your solution to the case where the planes are
> > already disabled by userspace?
> 
> https://github.com/zehortigoza/linux/commit/013478a67e0b96abbaf6ab2d1b4be324b0fe737b

That's not going to work correctly. You can't depend on
connectors being part of the state since that's not the case for
pure plane updates/etc.

In general I really dislike the PSR code's reliance on the
encoder/connector. Tht makes it really hard to do these sorts
of things. So I think we'd have to redesign it to try to
operate purely on the crtc and not need the encoder/connector.

> 
> Whole branch: https://github.com/zehortigoza/linux/commits/upstream-psr2-sel-fetch-new
> 
> > 
> 

-- 
Ville Syrjälä
Intel
