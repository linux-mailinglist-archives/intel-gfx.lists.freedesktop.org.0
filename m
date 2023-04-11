Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A0A6DD166
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 07:07:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC83010E23E;
	Tue, 11 Apr 2023 05:07:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDD510E23E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 05:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681189654; x=1712725654;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bHtd9SOSR74ZCy+3OgD1g8h9YSGc0EjpQ2oulY3xgfw=;
 b=aqO6YyI7Bmy27VPdsOXwOJwTnl+LbJewygy75aTPeXegCGfpcSNI4Kys
 F7Oezu13z+6OHsgzC8KMzeZteAsVTLjSP1bzpPKsbrzPmHa0SgNb3i9cV
 RiDBPlEWzdDO4bL2Ytw7RqiOWNR1ArIlTJznCtr51+thn6Jy/9WXGx6ho
 1N9kJb8YAqwI9p7R2JysRQO/MkQZMnmUpMS6lDg4F0h4N7aCsZQnydU3J
 h6WDuWsNOMjWk0Dq0J4T2VeNbpbermgzrXmfoRdxx8yKkCnKRa6dZWc3n
 BxdIR6PNPELHTkdRoDXr6dw5dWLa0oH0PsvyAHsaen3WTfFwvfFc14jCr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="343528889"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="343528889"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 22:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="718833006"
X-IronPort-AV: E=Sophos;i="5.98,335,1673942400"; d="scan'208";a="718833006"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 10 Apr 2023 22:07:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 08:07:30 +0300
Date: Tue, 11 Apr 2023 08:07:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ZDTrEg/fQR6PKUUn@intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-3-ville.syrjala@linux.intel.com>
 <1e25f41e-9c6c-e6b5-e56f-fc49a441176e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1e25f41e-9c6c-e6b5-e56f-fc49a441176e@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Introduce intel_csc_matrix
 struct
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

> > @@ -294,13 +293,20 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
> >   }
> >   
> >   static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
> > -				u16 coeffs[9], bool limited_color_range)
> > +				struct intel_csc_matrix *csc,
> > +				bool limited_color_range)
> >   {
> >   	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
> >   	const u64 *input;
> >   	u64 temp[9];
> >   	int i;
> >   
> > +	/* for preoff/postoff */
> > +	if (limited_color_range)
> > +		*csc = ilk_csc_matrix_limited_range;
> > +	else
> > +		*csc = ilk_csc_matrix_identity;
> 
> 
> Lets merge this if block with the below if block, as we are again 
> checking limited_color_range.

I considered that, but didn't really like it. Seemed clearner to
first setup the pre/post offsets, and only then deal with the
input matrix.

-- 
Ville Syrjälä
Intel
