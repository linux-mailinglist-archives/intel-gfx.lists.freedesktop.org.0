Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2724A599A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 11:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68BD510E245;
	Tue,  1 Feb 2022 10:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB2710E245
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 10:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643709917; x=1675245917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qW7rzKhFQKK9K72jfnpiKdtyJfv+UtKz0fgafARsvi8=;
 b=MO4QAJTlemwZc7FykiiUvktAzL8kN4eoJyISgB5cGrdG7tPJopikWQKy
 uADmBcAG+PMbLDDhCpwXRQEUUXEqojhCJurUl4rm6AqCjQbf4PoR4EPq/
 0sMyx4rU1wv4HwoxXG1/XXS6IN0PRKRQ1eiT+QFoM2AOKf+Vxbdibz/6z
 YdPMeydAaua+BaAmPPxpkLDScNuWbk8oFBkwNLytJ7Dsq1Da/JqkE51Oh
 eTS0AKo5ibZ/Bj4aZFFSBOG6cdce5hY91kG82sMliKGZyVfi8tr59L5g7
 ZTNt9xt/QLLMS9o3ZOCYA6vVP72hxNLMWIVHYWCFekR7LZgRdyddf0TBh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247877832"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="247877832"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 02:05:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="534477993"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 01 Feb 2022 02:05:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Feb 2022 12:05:13 +0200
Date: Tue, 1 Feb 2022 12:05:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <YfkF2VSxF5osAPMe@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-12-ville.syrjala@linux.intel.com>
 <20220201085239.GA9569@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220201085239.GA9569@intel.com>
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

On Tue, Feb 01, 2022 at 10:52:39AM +0200, Lisovskiy, Stanislav wrote:
> On Tue, Jan 18, 2022 at 11:23:50AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > intel_bw_calc_min_cdclk() is entirely pointless. All it manages to do is
> > somehow conflate the per-pipe min cdclk with dbuf min cdclk. There is no
> > (at least documented) dbuf min cdclk limit on pre-skl so let's just get
> > rid of all this confusion.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I think we constantly have a bit contradictional attitude towards such situation.
> >From one perspective you can say, that those kind of "leagcy" callbacks are
> pointless, from the other hand one might say. that we need to have a unified
> approach for all platforms and I think we got, some legacy handlers for old
> platforms for similar purpose as well.
> I'm fine with both approaches, however for example when I was submitting
> that patch, I was asked by reviewer to add this kind of legacy callback, so that we have
> a "uniform" approach.
> We just then need to have some standard agreement on those, which doesn't
> depend on today's cosmic radiation levels :)

Yes in general I prefer a unified approach across all platforms.
But in this case there is nothing to do for the old platforms as they
don't have any kind of dbuf cdclk limit, or if there is one we don't
know what it is since it's not documented.

So the only thing the code was really doing was conflating the
per-pipe cdclk limit (which is handled elsewhere for all platforms
in a  unified fashion) with something that doesn't even exist.

Also I don't think it was even correct anyway since it was
using the per-pipe cdclk_state->min_cdclk[] already during
intel_cdclk_atomic_check(), but cdclk_state->min_cdclk[]
isn't even computed until intel_modeset_calc_cdclk() which 
is called later. So I guess it was basically just computing 
the max of the min_cdclk[] for all the pipes for the _old_
state, not the new state.

-- 
Ville Syrjälä
Intel
