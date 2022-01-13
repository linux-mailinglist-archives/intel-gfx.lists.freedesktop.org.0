Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA94248D2D0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 08:29:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554AF112299;
	Thu, 13 Jan 2022 07:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF34F112299
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 07:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642058952; x=1673594952;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dvi3sGNK/EjKL1ST3poZ7ESpmK264PU4JpKPwUc0dNI=;
 b=la12BGnrwC3Sso1ZHsCb5RVs0ueNoRdoaBnzKwHbMoy9YIvWtL7Brhkh
 dNVqIvNoZJxgatyygwwwYJsiRJhFxEFK5BUxMI268ck8jmA4YqlBo+I/s
 Ej+iP2LpbzQyZLKGjgC59V5ephMorkCj4O6F8iFNuktO8uDdoVTpDR6UE
 /NoetDzZoiahqFiVsyrvcqv/lbeKzF7vwIgRRbWX53hJTgaroOvWNzpjm
 V9LdugrMmB+l3bAfyL8/K1S5sAcWG31tDhiQjq3bpHByOVWH+9xhW5k9R
 G7iG9muWATDDSATJ/nmi5ZqfRKkq/Z7xbjkpfxDHcvIdHRlI1rTYAOQmM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="224640873"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="224640873"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 23:29:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="475212190"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 23:29:10 -0800
Date: Thu, 13 Jan 2022 09:29:05 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20220113072905.GA5991@intel.com>
References: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
 <Yd7cjQM8F8zjucb3@intel.com> <20220112143917.GA3265@intel.com>
 <Yd7qmU/GCFLdGbjy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yd7qmU/GCFLdGbjy@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Recalculate CDCLK if plane
 scaling ratio changes
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

On Wed, Jan 12, 2022 at 04:50:01PM +0200, Ville Syrjälä wrote:
> On Wed, Jan 12, 2022 at 04:39:17PM +0200, Lisovskiy, Stanislav wrote:
> > On Wed, Jan 12, 2022 at 03:50:05PM +0200, Ville Syrjälä wrote:
> > > On Tue, Jan 11, 2022 at 06:08:12PM +0200, Stanislav Lisovskiy wrote:
> > > > Currently we only recalculate CDCLK if active plane mask changes
> > > > or if we do a full modeset, however according to BSpec
> > > > required Dbuf bandwidth calculations also depend on pipe/plane
> > > > scaling ratio, which means that CDCLK must be recalculated
> > > > everytime plane scaling ratio changes,
> > > 
> > > Already handled by the plane min_cdclk stuff.
> > 
> > Problem is that plane min_cdclk will only be called for those
> > which are added to the state.
> > In intel_atomic_check_planes we call intel_crtc_add_planes_to_state
> > only if active_planes_affects_min_cdclk is true and active_planes
> > mask got changed.
> > However if we got one of planes scaling ratio changed, we need to
> > recalculate CDCLK once again and make sure we have all the active
> > planes in state for that. Don't we need all active planes 
> > in state to calculate it properly?
> 
> If the plane's scaling ratio is changing then that plane is already
> in the state. The min_cdclk/data_rate/etc. are all then cached in
> the crtc state so that plane isn't needed again until its scaling
> ratio (or whatever else) changes again.

Yep, was just wondering that according to this logic why we do
call intel_crtc_add_planes_to_state, once active plane mask changes then.

Stan

> 
> -- 
> Ville Syrjälä
> Intel
