Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8D34D5141
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 19:29:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0F910E23C;
	Thu, 10 Mar 2022 18:29:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC3A710E23C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 18:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646936956; x=1678472956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Gh45XTOrZB9/v0FRYjEDCQClANOieq0OyJ4GIUlemTE=;
 b=bNg3MaDPa5yOQcGt64gMYFmrwf1WwTFiU5LNp3GixINcD8oxEXdhvJ0p
 5CI1D4SJcs3INDZ7Brj7s6gu+ZRMDi/ZA0UHLRbdoDTyK5rhlkPl5sj36
 lVi5atXVxl4tUhoHI93fGTQKQATvb7b8fSVVN4Dhq2dTt40+fnST4xEaw
 iruMBk5MsGif3i+KZj9ME7DofM/bSGwG2KsNeAxVHNQPzay4cmBc2JBzv
 RKn2oMSXXp5bcrp3BbewaDnDJbY7dW/QW+2pIDdkl1IMwofPZTTX1N25d
 ETkXMBUphxQnUaliaMkM7ytNuclxgd/AseKVhxrs9l2CUijV4a+N4+jLw g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="242778656"
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="242778656"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 10:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,171,1643702400"; d="scan'208";a="642665779"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 10 Mar 2022 10:29:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 20:29:12 +0200
Date: Thu, 10 Mar 2022 20:29:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YipDeLv/4OsmEGx/@intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-10-ville.syrjala@linux.intel.com>
 <00869c35345a493ec1ba996b9690b6d59a495591.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <00869c35345a493ec1ba996b9690b6d59a495591.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915: Stash DRRS state under
 intel_crtc
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

On Thu, Mar 10, 2022 at 05:45:49PM +0000, Souza, Jose wrote:
> On Thu, 2022-03-10 at 02:47 +0200, Ville Syrjala wrote:
> >  static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
> >  					  unsigned int frontbuffer_bits,
> >  					  bool invalidate)
> >  {
> > -	struct intel_dp *intel_dp;
> > -	struct drm_crtc *crtc;
> > -	enum pipe pipe;
> > +	struct intel_crtc *crtc;
> >  
> > -	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
> > +	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
> >  		return;
> >  
> > -	cancel_delayed_work(&dev_priv->drrs.work);
> > +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> > +		enum pipe pipe = crtc->pipe;
> >  
> > -	mutex_lock(&dev_priv->drrs.mutex);
> > +		cancel_delayed_work(&crtc->drrs.work);
> 
> Not a good idea cancel work at this point, you could be canceling work even if CRTC of eDP is not being updated.

Hmm, yeah. I guess we could in theory end up pushing the timer
forward indefinitely even if nothing actually happens. The
current code already has that issue though, so not specific
to this patch.

-- 
Ville Syrjälä
Intel
