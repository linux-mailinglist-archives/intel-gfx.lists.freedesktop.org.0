Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA8D4B831E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 09:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9F310E715;
	Wed, 16 Feb 2022 08:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971AD10E715
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 08:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645000802; x=1676536802;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LR5UI5PsFgymffDmQEEHotfP3FAXfw2ZnmbDqwRz1vU=;
 b=ZcccY84P/YzHHPZsizK/jvp1zo4bAC6PWmNC/iSxlojhtrL+cvudgXgr
 NBfTPWd9rkv31LiY1lpdNVVNrBrT24sr03lzxN6xUmo/6r9w2NzkiU1NP
 dxyFzJJlKNGICe3qJRwVslUdCUtyZ63BvVZn/J3/9mJIPkXKkVniiwLCa
 g+EBMicdW6cxqKAJ/Uafk2R7Wpp2HQM2WdQhxIhbSvQJJFoPrK6sDRUZ2
 vnyP0vFCXZRU+ek1Uo2i5AoqeEyIZar9Ss4iP5UdR4XCHW3wW0v8Uneh4
 GJGYxKlN46f2F0d98Dwrs5jDR46MB1WEhKKAqQcEfI59MU2l4U2b3a8Nl Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="249385504"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="249385504"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 00:40:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="529339368"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 16 Feb 2022 00:39:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 10:39:56 +0200
Date: Wed, 16 Feb 2022 10:39:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Ygy4XMoDhvXiDftb@intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-2-ville.syrjala@linux.intel.com>
 <20220216032530.GA24306@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216032530.GA24306@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Fix cursor coordinates on
 bigjoiner slave
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 07:25:36PM -0800, Navare, Manasi wrote:
> On Tue, Feb 15, 2022 at 08:31:57PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Adjust the cursor dst coordinates appripriately when it's on
> > the bigjoiner slave pipe. intel_atomic_plane_check_clipping()
> > already did this but with the cursor we discard those results
> > (apart from uapi.visible and error checks) since the hardware
> > will be doing the clipping for us.
> > 
> > v2: Rebase due to bigjoiner bitmask usage
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> > index 2ade8fdd9bdd..3e80763aa828 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > @@ -152,6 +152,9 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
> >  	/* Use the unclipped src/dst rectangles, which we program to hw */
> >  	plane_state->uapi.src = src;
> >  	plane_state->uapi.dst = dst;
> > +	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> > +		drm_rect_translate(&plane_state->uapi.dst,
> > +				   -crtc_state->pipe_src_w, 0);
> 
> So this is basically to offset the cursor position from say 3860 to 0, 3861 to 1 ....7680 to 3860 for the right half
> of the screen right?
> And without this, it will just keep it at first rectangle?

Yes. The original rectangle came from userspace and is thus
relative to the whole area covered by all the joined pipes.
But the plane coordinates we hand to the hardware must be
relative to their respective pipe.

It's a bit ugly as is but works for now. The last patch make
this much nicer by removing all the assumptions here about
the relative positions of the pipes.

-- 
Ville Syrjälä
Intel
