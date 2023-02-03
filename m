Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB48868974C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 11:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1953E10E763;
	Fri,  3 Feb 2023 10:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C657710E763
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 10:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675421436; x=1706957436;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8PsS/rpMwtTPkq6XR+rOQI8WAeqbLFc/wsbsdsAbCh8=;
 b=EJWpI+q3pV+iZgHXcKvallPgRFXpTucqx/fAXXFZzNUR2FZfoSICrM1u
 cesy7jn7jr7gszIcKo/VQx1X4CL1Z6Wj3Hep46Vcr6rXXCpgJJNIZcZEp
 Zmhtduk7CenQa2g8V2kASJmXIrqG8jSH4KgxH4NWkZ4iNzynJpotWhrOE
 C//gtV3ddOY3BfT3vCf24JwkuDTcZ38ivYruWT8C9FbPH5So9nmQ4hANF
 ROFvOuLWcbgaZ2bGiwE/uOoRKJKlDkmDujGVnna5MENwvZhhWMc7xrT2T
 6zTkzs1A87xlXeNIbrbqk5frD2FvhhrlqOVJ5tCceO9WHGbfYfix4i4ut g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="316712948"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="316712948"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:50:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="659057624"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="659057624"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 03 Feb 2023 02:50:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Feb 2023 12:50:33 +0200
Date: Fri, 3 Feb 2023 12:50:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Message-ID: <Y9zm+TP/SHgsRJBt@intel.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981B0FDF6E03F7849A19858F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB5981B0FDF6E03F7849A19858F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Write each legacy LUT
 entry twice with DSB
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 02, 2023 at 07:05:27PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, January 18, 2023 10:01 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Write each legacy LUT entry
> > twice with DSB
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The DSB has problems loading the legacy LUT. Looks like simply writing each
> > LUT entry twice back-to-back is sufficient workaround for this.
> > 
> > Curiously it doesn't even matter what data we provide for the first write, the
> > second write always seems to work 100%. So this doesn't seem to be some
> > kind of simple race where the data gets latched before it's actually available
> > on some bus (which was my first hunch).
> > 
> > TODO: need to figure out what is the actual hw issue here
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index 4c3344ee473e..8de2dc4b7904 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -860,9 +860,18 @@ static void ilk_load_lut_8(const struct
> > intel_crtc_state *crtc_state,
> > 
> >  	lut = blob->data;
> > 
> > -	for (i = 0; i < 256; i++)
> > +	for (i = 0; i < 256; i++) {
> > +		/*
> > +		 * DSB fails to correctly load the legacy
> > +		 * LUT unless we write each entry twice.
> > +		 * It doesn't actually matter what data we
> > +		 * provide for the first write.
> > +		 */
> 
> Is it confirmed by hardware team?

Haven't filed the hsd yet on account of being busy debugging
other DSB issues. But I should do that soon.

> Is there any difference with indexed register write and single register write.

It doesn't matter what kind of write you use. I also tried all
various other tricks (eg. the non-posted write stuff, and just
slowing things down with other registers writes, etc.).

-- 
Ville Syrjälä
Intel
