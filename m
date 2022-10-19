Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81470604FD2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 20:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4F910E02C;
	Wed, 19 Oct 2022 18:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AFA10E02C
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 18:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666205023; x=1697741023;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d8Kamh+mTJhuis99Ww6HBLz5kzrfD6evzhlXh0iuQo0=;
 b=GZEAIzUdoC8oeDq7eZUeRIsJFTGLtLghpWqmR+P7K8LDmJ2pkcSnktaX
 pqblHMWfg5OX4ovcVkLP/W/bTqP6fYlOyINeckyQlTkdPPtzOXu3z+iEI
 Fz2UNkHYr9frGrSOlREmFDpQdMyvGRv+RyGPTb/hXNSGRcqA9dDUz075V
 UlL6KljmfzkPoK/dbYM8UUd4SkgF/1NQzDDA6c2H9MYUVCC63EFl1RZJJ
 PenrsOLqL7w5lbg0Ck5zcc/kN8zTLjLYGJWWrCkq8fsRHSqo1CT62rqxa
 n+xfEIikBnDcWzDUeipAIh6rLjU35DXsC+3E4X7tGQZ7tqNTDDC7/OXJp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="305236141"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="305236141"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 11:43:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="631806548"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="631806548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 19 Oct 2022 11:43:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 21:43:39 +0300
Date: Wed, 19 Oct 2022 21:43:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <Y1BFW3nKmT3ZjUpv@intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
 <20221012104936.30911-1-ville.syrjala@linux.intel.com>
 <alpine.DEB.2.22.394.2210141341160.3532114@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.22.394.2210141341160.3532114@eliteleevi.tm.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org,
 Cezary Rojewski <cezary.rojewski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 14, 2022 at 01:51:47PM +0300, Kai Vehmanen wrote:
> Hi,
> 
> On Wed, 12 Oct 2022, Ville Syrjala wrote:
> 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On HSW/BDW the hardware ELD buffer does not work if the controller
> > is suspended. I'm not 100% which thing in there is needed to make it
> > work (at least just forcing the controller into D0 with setpci is
> > not enough). But a full runtime resume seems to do the trick here
> > at least, and so far it looks like this doesn't even deadlock or
> > anything.
> 
> excuse my lack of history information/context, but I also wonder how 
> important writing this to hw AUD_EDID_DATA is anymore. All platforms since 
> Sandy/Ivy Bridge have used the DRM component interface to query ELD (via 
> direct kernel call i915_audio_component_get_eld()). So I don't see any 
> usage of querying the ELD data via "legacy" AC_VERB_GET_HDMI_ELDD method 
> (as that does require powering on the audio controller and codec). At 
> least based on quick browse, I don't see this register having impact to 
> other things than said HDA verb implementation in hardware. May explain 
> why the issue has not been reported before.

I guess just trying to not write it and seeing what happens
is the best we can do.

Do all the platforms that use the software get_eld() stuff
totally ignore the hw buffer already in the audio driver?
Or do they still respond somehow when we toggle the valid 
bit?

If it's all getting ignored already then I'd like to stop
using the buffer for all ilk+. Just need to double check
that is where the split is also on the audio driver side.
Of if it's not that clear cut on the audio driver side
(and not easy to fix), then maybe we need to do the
cutoff at hsw+.

g4x I'd perhaps like to leave to use the hw buffer since I
think it can still take SDVO ADD2 cards (not sure any ilk+
can), so there is at least some kind of chance of someone
plugging in a HDMI ADD2 card (rare as those are). And since
SDVO depends on the hw buffer still we need to depend on it
for the native HDMI too, or else we'll have to convert absolutely
everything away from the hw buffer. That might be too much
hassle.

Anyways, I guess I'll be spooling up a few olders systems
and testing how they look w/o the buffer written at all.

-- 
Ville Syrjälä
Intel
