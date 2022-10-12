Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CE95FC7EB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3EC10E549;
	Wed, 12 Oct 2022 15:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4AB10E546
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587001; x=1697123001;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sVwxzcOJHrdTv9fqtWNXyAYZDOjxBGLfJTkUpU6qYGQ=;
 b=ZNOFyDBviwAKwDzHhNyW8JqQHaT2x3I/lXdehUPwD+bfbPWkgYNluGe9
 5vCDkvU0i0dkE4MYogFc4UMGAGo7u3InZnSXfLqTWx/iqiSKDR1OipF0J
 Fu3xeuvY7Dy+C4t6fEvKMcn6hbQTqHV1ameXHnb+HkTUXie9nMQFMniY6
 l/p7PRZOz9LkkXPzV8KJRXVgYI+7SkPQoh8TByr3EFdsgztirbBsnBAyJ
 qHNmQ0dh3RwFwWytZ5rwuwVyxszw26Qkyfwab54LlUyy9FTWlsgcf1yjG
 dsjfFey3lU4cMpo4auCwU3iWHiYJmjS8j23DMpNVrh6DO5wS/Zz254Fnm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="368983544"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="368983544"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:03:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621808919"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="621808919"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 12 Oct 2022 08:03:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Oct 2022 18:03:18 +0300
Date: Wed, 12 Oct 2022 18:03:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y0bXNjtTAUnEW20M@intel.com>
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-11-ville.syrjala@linux.intel.com>
 <87czaxw1ys.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87czaxw1ys.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/audio: Make sure we write
 the whole ELD buffer
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 05:28:27PM +0300, Jani Nikula wrote:
> On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Currently we only write as many dwords into the hardware
> > ELD buffers as drm_eld_size() tells us. That could mean the
> > remainder of the hardware buffer is left with whatever
> > stale garbage it had before, which doesn't seem entirely
> > great. Let's zero out the remainder of the buffer in case
> > the provided ELD doesn't fill it fully.
> >
> > We can also sanity check out idea of the hardware ELD buffer's
> > size by making sure the address wrapped back to zero once
> > we wrote the entire buffer.
> >
> > Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Cc: Takashi Iwai <tiwai@suse.de>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c | 34 ++++++++++++++++------
> >  1 file changed, 25 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> > index abca5f23673a..d2f9c4c29061 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -333,19 +333,24 @@ static void g4x_audio_codec_enable(struct intel_encoder *encoder,
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >  	struct drm_connector *connector = conn_state->connector;
> >  	const u8 *eld = connector->eld;
> > +	int eld_buffer_size, len, i;
> >  	u32 tmp;
> > -	int len, i;
> >  
> >  	tmp = intel_de_read(i915, G4X_AUD_CNTL_ST);
> >  	tmp &= ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
> >  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
> >  
> > -	len = g4x_eld_buffer_size(i915);
> > -	len = min(drm_eld_size(eld) / 4, len);
> > +	eld_buffer_size = g4x_eld_buffer_size(i915);
> > +	len = min(drm_eld_size(eld) / 4, eld_buffer_size);
> >  
> >  	for (i = 0; i < len; i++)
> >  		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
> >  			       *((const u32 *)eld + i));
> > +	for (; i < eld_buffer_size; i++)
> > +		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);
> 
> I think I'd personally write this along the lines of:
> 
> 	eld_buffer_size = g4x_eld_buffer_size(i915);
> 	len = drm_eld_size(eld) / 4;
> 
> 	for (i = 0; i < eld_buffer_size; i++) {
> 		u32 val = i < len ? *((const u32 *)eld + i)) : 0;
> 		intel_de_write(i915, G4X_HDMIW_HDMIEDID, val);
> 	}
> 
> Get rid of two loops, the loop variable "leaking" from one to the next,
> the min() around len calculation, and multiple reg writes. Seems cleaner
> to me.

I suppose. Though the double loop is what we already use
in the infoframe code. So should probably change all of it
at once if we decide that a single loop is the way to go.

-- 
Ville Syrjälä
Intel
