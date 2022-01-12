Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60BE48C66B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 15:50:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0F510F02B;
	Wed, 12 Jan 2022 14:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BC4010ED87
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 14:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641999005; x=1673535005;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/3PkrwkIaaGlu4N4zTzTvHlmy59xc4EAjJULVoj1ufE=;
 b=UrWOEHD3S72iyji1l07oYXFtyER/kSoYnLKno2if4oKRBMskUPjku89M
 e41t9TcBH0UvFXM8ZpBQWghYsmbt0/ers4tJH0QcT9uyC6ay/MqYTgd0f
 KnPRdbxfHLylofA47G/oFOFHcwyXTclp5AGY0rnVD/XehfWqyvxqyNdJJ
 FBmqexdWFFlr0EoaVV8jKkZw0Vl2VlJm9b1t9mD+ezqGSY4bg/4OtC0et
 SE17jj0rIo0J6doPWALghDb0ssw0YYIna4r+WgONFNHVudTpCrYHkwkX4
 bjPgEi7YKg9hIItrt0UaO46gZpuy/73lNtl3Hq0F3xUHBErwjw6QLhSC5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="231090671"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="231090671"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 06:50:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="515510768"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2022 06:50:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Jan 2022 16:50:01 +0200
Date: Wed, 12 Jan 2022 16:50:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yd7qmU/GCFLdGbjy@intel.com>
References: <20220111160812.21344-1-stanislav.lisovskiy@intel.com>
 <Yd7cjQM8F8zjucb3@intel.com> <20220112143917.GA3265@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220112143917.GA3265@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jan 12, 2022 at 04:39:17PM +0200, Lisovskiy, Stanislav wrote:
> On Wed, Jan 12, 2022 at 03:50:05PM +0200, Ville Syrjälä wrote:
> > On Tue, Jan 11, 2022 at 06:08:12PM +0200, Stanislav Lisovskiy wrote:
> > > Currently we only recalculate CDCLK if active plane mask changes
> > > or if we do a full modeset, however according to BSpec
> > > required Dbuf bandwidth calculations also depend on pipe/plane
> > > scaling ratio, which means that CDCLK must be recalculated
> > > everytime plane scaling ratio changes,
> > 
> > Already handled by the plane min_cdclk stuff.
> 
> Problem is that plane min_cdclk will only be called for those
> which are added to the state.
> In intel_atomic_check_planes we call intel_crtc_add_planes_to_state
> only if active_planes_affects_min_cdclk is true and active_planes
> mask got changed.
> However if we got one of planes scaling ratio changed, we need to
> recalculate CDCLK once again and make sure we have all the active
> planes in state for that. Don't we need all active planes 
> in state to calculate it properly?

If the plane's scaling ratio is changing then that plane is already
in the state. The min_cdclk/data_rate/etc. are all then cached in
the crtc state so that plane isn't needed again until its scaling
ratio (or whatever else) changes again.

-- 
Ville Syrjälä
Intel
