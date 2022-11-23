Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56238636268
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 15:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 704BD10E565;
	Wed, 23 Nov 2022 14:52:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B50210E565
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 14:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669215157; x=1700751157;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=c/x7EbQ9L9JaVjdlT/EXXLu9+Wt6jCzUFZGGbY2F7xw=;
 b=bBS3v56LzMG+gDcYboyt35CRkUGyZW1xIDEppVc0M89aogKmPx3G+5Tc
 IMf3q7WIE+0Ue8S/WeZswrYsdAMxtuzGhoAZtAOfm67mnnsNFjsX0BuJE
 nzTiWBClyJoYE7l/ErXtGuu2k9XR1fqZCwwzDey8FlZH7YIU2gBycAduS
 k9Ll9Mf7J3v9Md72Lgg8ltAQZkEHH62drsBd46cd9Vif32KvraS36oSrR
 cWYwR6XRBSdb7aH5rbnQdBOsoY3lZC+Vg4QyQ74zUsHaSCmJ+GXsDykA5
 TCFbg++hXrN6dP9eXJx5El72fCd0iHQighuDq8VsG+DI4OhDmdiurhX0z w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378339493"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="378339493"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 06:52:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="635939150"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="635939150"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 23 Nov 2022 06:52:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Nov 2022 16:52:33 +0200
Date: Wed, 23 Nov 2022 16:52:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y34zsYvwBzp8YYIZ@intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-2-ville.syrjala@linux.intel.com>
 <874juryxtw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <874juryxtw.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/dvo/ch7xxx: Fix
 suspend/resume
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

On Tue, Nov 22, 2022 at 02:31:55PM +0200, Jani Nikula wrote:
> On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Poke a few more bits into the ch7xxx to make
> > it output a picture after being reset during S3.
> >
> > In particular we need to set the input buffer select (IBS),
> > and enable VGA vsync output on the BCO pin. Selecting
> > VGA hsync on the c/h sync pin doesn't actually seem necessary
> > on my ADD card at least, but the BIOS selects it so why not.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> First things first.
> 
> I'll r-b anything that I've actually reviewed in the series, although
> the subject matter being what it is, I may not have reviewed it as
> thoroughly as I would other code that I review.
> 
> If r-b would require me to look stuff up in the specs, I really couldn't
> be bothered, so I'll just a-b that stuff if it looks reasonable. I don't
> think anyone else is going to show up for review either, and if you end
> up breaking something, I think you're the only one to show up to fix it
> anyway.
> 
> Fair enough?

Yeah, I think acks are good enough for these in general.

> 
> With that, this patch is
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Series pushed now.

> 
> > ---
> >  drivers/gpu/drm/i915/display/dvo_ch7xxx.c | 22 ++++++++++++++++++++--
> >  1 file changed, 20 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> > index 54f58ba44b9f..6d948520e9a6 100644
> > --- a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> > +++ b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
> > @@ -50,15 +50,26 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
> >  #define CH7xxx_INPUT_CLOCK	0x1d
> >  #define CH7xxx_GPIO		0x1e
> >  #define CH7xxx_GPIO_HPIR	(1<<3)
> > +
> >  #define CH7xxx_IDF		0x1f
> > -
> > +#define CH7xxx_IDF_IBS		(1<<7)
> > +#define CH7xxx_IDF_DES		(1<<6)
> >  #define CH7xxx_IDF_HSP		(1<<3)
> >  #define CH7xxx_IDF_VSP		(1<<4)
> >  
> >  #define CH7xxx_CONNECTION_DETECT 0x20
> >  #define CH7xxx_CDET_DVI		(1<<5)
> >  
> > -#define CH7301_DAC_CNTL		0x21
> > +#define CH7xxx_DAC_CNTL		0x21
> > +#define CH7xxx_SYNCO_MASK	(3 << 3)
> > +#define CH7xxx_SYNCO_VGA_HSYNC	(1 << 3)
> > +
> > +#define CH7xxx_CLOCK_OUTPUT	0x22
> > +#define CH7xxx_BCOEN		(1 << 4)
> > +#define CH7xxx_BCOP		(1 << 3)
> > +#define CH7xxx_BCO_MASK		(7 << 0)
> > +#define CH7xxx_BCO_VGA_VSYNC	(6 << 0)
> > +
> >  #define CH7301_HOTPLUG		0x23
> >  #define CH7xxx_TCTL		0x31
> >  #define CH7xxx_TVCO		0x32
> > @@ -301,6 +312,8 @@ static void ch7xxx_mode_set(struct intel_dvo_device *dvo,
> >  
> >  	ch7xxx_readb(dvo, CH7xxx_IDF, &idf);
> >  
> > +	idf |= CH7xxx_IDF_IBS;
> > +
> >  	idf &= ~(CH7xxx_IDF_HSP | CH7xxx_IDF_VSP);
> >  	if (mode->flags & DRM_MODE_FLAG_PHSYNC)
> >  		idf |= CH7xxx_IDF_HSP;
> > @@ -309,6 +322,11 @@ static void ch7xxx_mode_set(struct intel_dvo_device *dvo,
> >  		idf |= CH7xxx_IDF_VSP;
> >  
> >  	ch7xxx_writeb(dvo, CH7xxx_IDF, idf);
> > +
> > +	ch7xxx_writeb(dvo, CH7xxx_DAC_CNTL,
> > +		      CH7xxx_SYNCO_VGA_HSYNC);
> > +	ch7xxx_writeb(dvo, CH7xxx_CLOCK_OUTPUT,
> > +		      CH7xxx_BCOEN | CH7xxx_BCO_VGA_VSYNC);
> >  }
> >  
> >  /* set the CH7xxx power state */
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
