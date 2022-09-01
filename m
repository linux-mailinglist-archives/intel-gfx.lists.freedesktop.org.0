Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F6D5A930E
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 11:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07CF610E673;
	Thu,  1 Sep 2022 09:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA25B10E673
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 09:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662024289; x=1693560289;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7uqn8Eapqg9YcvRRvyZf6k6PidsAeX/cR4+HF2bs63U=;
 b=CEN7XHhO153HxLaFunzaHqo1WwLXrap3s5DHDYANOVU23KWdDUb3zfhd
 n9iyb9t9LaYmiHrneTSHdFuOebsTA08beYLnHJ2BG3Z2pNDNu08I/G0op
 x7pC9xru2Veox9KJ5BqZfhnO4f4mzj3sFIuazVP4msGqNWoY8rZOMhVmK
 t5lSxQ24Nhia8nSxEn3bIFSHU8Z0LvknB2vruJ0yFLMCROK5hBP5A3oPt
 XyOyf2MLW8hKlv3Q7CptOOL6JiNU5VZ9Pu3kWqVBg3M2hY8C5hpEDWbvk
 7wUnqKjDfBHREVFSuCe43sxmuXCRR9pz6MZuVvMfS5ckt/JDBDwaAoxls g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="357384674"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="357384674"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 02:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="642257987"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga008.jf.intel.com with SMTP; 01 Sep 2022 02:24:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Sep 2022 12:24:45 +0300
Date: Thu, 1 Sep 2022 12:24:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YxB6Xa+KUwoWCZf8@intel.com>
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-12-ville.syrjala@linux.intel.com>
 <YtaH70TQd+nz0ydA@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YtaH70TQd+nz0ydA@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/12] drm/i915: WARN if a port should use
 VBT provided vswing tables
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

On Tue, Jul 19, 2022 at 06:31:11AM -0400, Rodrigo Vivi wrote:
> On Fri, Jul 15, 2022 at 11:20:43PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We don't parse the VBT vswing/preemphassis tables at all currently.
> > Let's WARN if a port wants to use them so we get a heads up that
> > whether we really need to implement this stuff or not. My
> > current stash contains no VBTs with this bit set.
> 
> let's unlock a new can of worms?! :)
> 
> I believe this deserves a /* XXX: comment with the code in case
> someone else finds this warns first and doesn't use the git blame

Sure I'll stick some kind of comment there.

> 
> anyways
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 51dde5bfd956..cd86b65055ef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2661,6 +2661,10 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> >  		return;
> >  	}
> >  
> > +	drm_WARN(&i915->drm, child->use_vbt_vswing,
> > +		 "Port %c asks to use VBT vswing/preemph tables\n",
> > +		 port_name(port));
> > +
> >  	if (i915->vbt.ports[port]) {
> >  		drm_dbg_kms(&i915->drm,
> >  			    "More than one child device for port %c in VBT, using the first.\n",
> > -- 
> > 2.35.1
> > 

-- 
Ville Syrjälä
Intel
