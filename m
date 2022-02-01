Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B153F4A5D9E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 14:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B7B10E1E6;
	Tue,  1 Feb 2022 13:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA6510E410
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 13:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643723138; x=1675259138;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=V1xbQYUVnAoaRcJJt8Yz1Xdxc6hxyvaDFOnlieNBSfw=;
 b=PaPxQ6bIkrrD9SK0RK5Hn+/uMsHzCVDhw//m9j9NT0JZD48A5PcEVzzX
 PGr5FSswmCGJGZAFMaKTbJtqZf/42wc68nNBeKFJkEQR+v8JeZSgAosZw
 Diizec9xcjUfubpkDV3xunKwpTuaIXrBRQJPKqiBvyuyE//WXptTeKvBq
 K8rhURgM8z1Io5ku2/5l8b4g8xRu7eNSPYMem+Lcl0CXhQk1k2zkMXAik
 Vi1Zi89xFbIVja60Td9Ddhh5ZvXBuAbfzjuJ3Ag66l8Fhm07tv74wlmfG
 fH4lgKs0vrEO9+7qwUKU5wydsHjaUgR8B92UIx5wAKwBwlo5oUmePBzdC w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="231262328"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="231262328"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 05:45:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="583033312"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 01 Feb 2022 05:45:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Feb 2022 15:45:35 +0200
Date: Tue, 1 Feb 2022 15:45:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yfk5f/gbkZZ9KKS0@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-12-ville.syrjala@linux.intel.com>
 <20220201085239.GA9569@intel.com> <YfkF2VSxF5osAPMe@intel.com>
 <20220201111818.GA10506@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220201111818.GA10506@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Feb 01, 2022 at 01:18:18PM +0200, Lisovskiy, Stanislav wrote:
> On Tue, Feb 01, 2022 at 12:05:13PM +0200, Ville Syrjälä wrote:
> > On Tue, Feb 01, 2022 at 10:52:39AM +0200, Lisovskiy, Stanislav wrote:
> > > On Tue, Jan 18, 2022 at 11:23:50AM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > intel_bw_calc_min_cdclk() is entirely pointless. All it manages to do is
> > > > somehow conflate the per-pipe min cdclk with dbuf min cdclk. There is no
> > > > (at least documented) dbuf min cdclk limit on pre-skl so let's just get
> > > > rid of all this confusion.
> > > > 
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > I think we constantly have a bit contradictional attitude towards such situation.
> > > >From one perspective you can say, that those kind of "leagcy" callbacks are
> > > pointless, from the other hand one might say. that we need to have a unified
> > > approach for all platforms and I think we got, some legacy handlers for old
> > > platforms for similar purpose as well.
> > > I'm fine with both approaches, however for example when I was submitting
> > > that patch, I was asked by reviewer to add this kind of legacy callback, so that we have
> > > a "uniform" approach.
> > > We just then need to have some standard agreement on those, which doesn't
> > > depend on today's cosmic radiation levels :)
> > 
> > Yes in general I prefer a unified approach across all platforms.
> > But in this case there is nothing to do for the old platforms as they
> > don't have any kind of dbuf cdclk limit, or if there is one we don't
> > know what it is since it's not documented.
> > 
> > So the only thing the code was really doing was conflating the
> > per-pipe cdclk limit (which is handled elsewhere for all platforms
> > in a  unified fashion) with something that doesn't even exist.
> > 
> > Also I don't think it was even correct anyway since it was
> > using the per-pipe cdclk_state->min_cdclk[] already during
> > intel_cdclk_atomic_check(), but cdclk_state->min_cdclk[]
> > isn't even computed until intel_modeset_calc_cdclk() which 
> > is called later. So I guess it was basically just computing 
> > the max of the min_cdclk[] for all the pipes for the _old_
> > state, not the new state.
> 
> No, I think actually the idea was that it was first calculating
> new_bw_state->min_cdclk, based on plane and dbuf bandwidth requirements
> in intel_atomic_check_cdclk,

Well intel_bw_calc_min_cdclk() did none of that. Like I said it
just took the max of the _old_ per-pipe cdclk_state->min_cdclk[]
values and stored that as the *new* bw min cdclk, which later
would get consulted by intel_compute_min_cdclk().

-- 
Ville Syrjälä
Intel
