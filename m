Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB05A4BB962
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 13:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C1D10EBF6;
	Fri, 18 Feb 2022 12:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A595510EBF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 12:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645188357; x=1676724357;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NESgDxpGcQnJAQb4BOJJ03cuUd9iYc9ULeFpuA4OTMc=;
 b=F/aJT/iW/vr3ukwL18XdWvYMxrQ+YOL9tdXrbHFZBbGyHP5jBsshAqhZ
 +RuofOmLlvTkGozavS1eP47wXClFn4KZFS0cvcVnOmiOkatzQdItX2AnY
 NkiMqulrXFQCHr0ox6XJn65dvTdXEC7M19xi4dNxxtWXwBfaMKwo6qzU+
 KqE2+CdjPyZaSSAWwMyxL83Gb4jdVDM43BYyY+SQZCZbbeJhHGgBEl72O
 uMWXYSTfoO9gNElMDPHTty3s+2LMggRygM1MOFoAYATezsqU+gUb926Dp
 uXP1IewGNLUqIsGC64DO4PRhMuBQL/Tx8Zyet8g76iZ4O1/fzLqHJGCIA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="231101042"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="231101042"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 04:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="541895905"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 18 Feb 2022 04:45:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 14:45:54 +0200
Date: Fri, 18 Feb 2022 14:45:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <Yg+VAs54tF8zQc0h@intel.com>
References: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
 <be2d1061-a432-1d7a-617c-d1e673056261@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <be2d1061-a432-1d7a-617c-d1e673056261@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Move PIPE_CHICKEN RMW out
 from the vblank evade critical section
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

On Fri, Feb 18, 2022 at 02:38:37PM +0200, Juha-Pekka Heikkila wrote:
> This patch set look all ok. That failed cursor test in ci run seem to be 
> flip flopping on other runs too on same icl box.

Yeah, some of those tests seem a bit flaky on the icls. 
Not sure what's causing that.

> 
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Thanks.

> 
> On 2.2.2022 13.16, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We don't want any RMWs in the part of the commit that happens
> > under vblank evasion. Eventually we want to use the DSB to
> > handle that and it can't read registers at all. Also reads
> > are just slowing us down needlessly.
> > 
> > Let's move the whole PIPE_CHICKEN stuff out from the critical
> > section since we don't have anything there that needs to be
> > syncrhonized with other plane/pipe registers. If we ever need
> > to add such things then we have to move it back, but without
> > doing any reads.
> > 
> > TODO: should look into eliminating the RMW anyway...
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_display.c | 7 ++++---
> >   1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index c431076f98a1..05713b64d4bc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8121,9 +8121,6 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
> >   	if (DISPLAY_VER(dev_priv) >= 9 ||
> >   	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> >   		hsw_set_linetime_wm(new_crtc_state);
> > -
> > -	if (DISPLAY_VER(dev_priv) >= 11)
> > -		icl_set_pipe_chicken(new_crtc_state);
> >   }
> >   
> >   static void commit_pipe_pre_planes(struct intel_atomic_state *state,
> > @@ -8215,6 +8212,10 @@ static void intel_update_crtc(struct intel_atomic_state *state,
> >   
> >   		if (new_crtc_state->update_pipe)
> >   			intel_encoders_update_pipe(state, crtc);
> > +
> > +		if (DISPLAY_VER(dev_priv) >= 11 &&
> > +		    new_crtc_state->update_pipe)
> > +			icl_set_pipe_chicken(new_crtc_state);
> >   	}
> >   
> >   	intel_fbc_update(state, crtc);

-- 
Ville Syrjälä
Intel
