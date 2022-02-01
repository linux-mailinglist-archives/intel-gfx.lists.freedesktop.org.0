Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1534A5E72
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 15:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ADF810E242;
	Tue,  1 Feb 2022 14:40:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9A910E242
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 14:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643726401; x=1675262401;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z8cahSzVQpFMsyMvpB9mqnM4dCsckN9mpfb7a4d/M9U=;
 b=Km4J0upfDk1TdMoELin88XFSrDgaZMEClKE6lFAPYhSnf/+aPUBH0kt5
 8y69MHqXsT4oCfgGNNIm/vSEM14Tgud5oPyi1CrTx42VCS7ps1BVLHq/b
 frGpMD+F1CoJN4OPTjDheXfZScjj05PGsk6+MYbrrjKSq9sV7Uoi9GTrp
 zC1gA+SwN1O3rVytYL7Crrf7B09SGKzmwrt8ca+PiV9W6NZ4MybQxH+79
 /TyMUnqOojhq3QGLkA25rwLnOlA2JaZXxzEHfbz1wdQ+TsXu+Rm1VpShp
 4/gc93OtSBMLYkT/HJtAQpE5UmlHH1tcLsnzT/WdcrOj2ZXBh0+pNOr4N g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="246535152"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="246535152"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 06:38:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="523068978"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 06:38:14 -0800
Date: Tue, 1 Feb 2022 16:38:19 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220201143818.GA10770@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-12-ville.syrjala@linux.intel.com>
 <20220201085239.GA9569@intel.com> <YfkF2VSxF5osAPMe@intel.com>
 <20220201111818.GA10506@intel.com> <Yfk5f/gbkZZ9KKS0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yfk5f/gbkZZ9KKS0@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915: Nuke
 intel_bw_calc_min_cdclk()
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

On Tue, Feb 01, 2022 at 03:45:35PM +0200, Ville Syrjälä wrote:
> On Tue, Feb 01, 2022 at 01:18:18PM +0200, Lisovskiy, Stanislav wrote:
> > On Tue, Feb 01, 2022 at 12:05:13PM +0200, Ville Syrjälä wrote:
> > > On Tue, Feb 01, 2022 at 10:52:39AM +0200, Lisovskiy, Stanislav wrote:
> > > > On Tue, Jan 18, 2022 at 11:23:50AM +0200, Ville Syrjala wrote:
> > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > intel_bw_calc_min_cdclk() is entirely pointless. All it manages to do is
> > > > > somehow conflate the per-pipe min cdclk with dbuf min cdclk. There is no
> > > > > (at least documented) dbuf min cdclk limit on pre-skl so let's just get
> > > > > rid of all this confusion.
> > > > > 
> > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > I think we constantly have a bit contradictional attitude towards such situation.
> > > > >From one perspective you can say, that those kind of "leagcy" callbacks are
> > > > pointless, from the other hand one might say. that we need to have a unified
> > > > approach for all platforms and I think we got, some legacy handlers for old
> > > > platforms for similar purpose as well.
> > > > I'm fine with both approaches, however for example when I was submitting
> > > > that patch, I was asked by reviewer to add this kind of legacy callback, so that we have
> > > > a "uniform" approach.
> > > > We just then need to have some standard agreement on those, which doesn't
> > > > depend on today's cosmic radiation levels :)
> > > 
> > > Yes in general I prefer a unified approach across all platforms.
> > > But in this case there is nothing to do for the old platforms as they
> > > don't have any kind of dbuf cdclk limit, or if there is one we don't
> > > know what it is since it's not documented.
> > > 
> > > So the only thing the code was really doing was conflating the
> > > per-pipe cdclk limit (which is handled elsewhere for all platforms
> > > in a  unified fashion) with something that doesn't even exist.
> > > 
> > > Also I don't think it was even correct anyway since it was
> > > using the per-pipe cdclk_state->min_cdclk[] already during
> > > intel_cdclk_atomic_check(), but cdclk_state->min_cdclk[]
> > > isn't even computed until intel_modeset_calc_cdclk() which 
> > > is called later. So I guess it was basically just computing 
> > > the max of the min_cdclk[] for all the pipes for the _old_
> > > state, not the new state.
> > 
> > No, I think actually the idea was that it was first calculating
> > new_bw_state->min_cdclk, based on plane and dbuf bandwidth requirements
> > in intel_atomic_check_cdclk,
> 
> Well intel_bw_calc_min_cdclk() did none of that. Like I said it
> just took the max of the _old_ per-pipe cdclk_state->min_cdclk[]
> values and stored that as the *new* bw min cdclk, which later
> would get consulted by intel_compute_min_cdclk().

Yeah, because it was a stub basically just for "uniformity".

Stan


> 
> -- 
> Ville Syrjälä
> Intel
