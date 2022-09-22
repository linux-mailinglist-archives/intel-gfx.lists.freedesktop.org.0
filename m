Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDFF5E5D87
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 10:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874E110E232;
	Thu, 22 Sep 2022 08:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D72D10E279
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 08:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663835479; x=1695371479;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3OY+cQG/N/e5COiMzaETJVV1X5ZEbz/uMGQvViLPsRc=;
 b=WcUv39aAR98yJLqBGoI+Dsc5L2H19VsdS+JbuJyYYAwmTzEa1o99ALJh
 ZmEXg7Wnunqny4ER7pXIdlac1Wt8OKV3nR/xMvL2AIOizYrb/MLFW4aJQ
 33teXbg3S5+mJj77YNOtBz7mSPpE7O/zCjbtA+oMJLOuDk1sFGCVOCev+
 YRhcl5Sk+Qf2iWW68Rqp0/sN7ibU8Sq+jQgNGmSfr/HIVWqPS7/+4g6ca
 qEzXIkDk40SW3qz1yLQTjj4bvYjT1DuNToPOYXCNe/FjbA1vRBYwTaMzl
 4vTRXSjZo3WJcPxMm/1a5/ADLU2cTqgNuZZ5ayn3mfBT5vO4zYezKTXf+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="283289980"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="283289980"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 01:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="597343991"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 22 Sep 2022 01:31:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Sep 2022 11:31:15 +0300
Date: Thu, 22 Sep 2022 11:31:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <YywdUwlRA1uS+BIg@intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
 <20220916165206.1499-2-ville.syrjala@linux.intel.com>
 <349a7ac69178a52d135148326d671fc0fc878f74.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <349a7ac69178a52d135148326d671fc0fc878f74.camel@coelho.fi>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/fbc: Remove stale FIXME
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

On Thu, Sep 22, 2022 at 11:15:55AM +0300, Luca Coelho wrote:
> On Fri, 2022-09-16 at 19:52 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Remove the old tales about 90/270 degree rotation
> > effectively preventing FBC. That hasn't been true since
> > we stopped demanding the fence is present in
> > commit 691f7ba58d52 ("drm/i915/display/fbc: Make fences
> > a nice-to-have for GEN9+")
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> 
> Reviewed-by: Luca Coeho <luciano.coelho@intel.com>
> 
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 9 ++-------
> >  1 file changed, 2 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index f38175304928..e97083ea1059 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1009,7 +1009,8 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> >  
> > -	/* The use of a CPU fence is one of two ways to detect writes by the
> > +	/*
> > +	 * The use of a CPU fence is one of two ways to detect writes by the
> 
> I would have mentioned this side-change in the commit message, but
> that's just due to my extremely nitpicky nature. 😉

Sure. I can amend the commit message a bit. Thanks.

-- 
Ville Syrjälä
Intel
