Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B946492B2E
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 17:27:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A81CE10E20B;
	Tue, 18 Jan 2022 16:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63E5D10E20B
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 16:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642523255; x=1674059255;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZtnK6ux0UTDQpLUGnjBjzeqV6X0qkSkZGkE33pfgHBY=;
 b=dgta6MXU7dUTSaDTttgSfaJuIsKgLz68obsi1q7cj0kjNuU4Yu/6FEhf
 a/63ICqXx8Tz0E9R2Gf9ixfAIVxBDCoC96+m6+vpfZFbg7qD3Dwe8AnGy
 3I8zvsfrN7ggO9m+CmzFcM58J0+qX9WKBRf1GeO/x1i3FSLWG6JOuUSm2
 UaE2CQ2W/Kjqtc5Rj6mGjDFbLURFI5ourd48O2Mpf363PFh9h/No5H3ge
 zinTOxwPRQdNuklEqwGWKof1+FJ3ewsQKI3AR//tE7Y4GQF8vcYWPkY9G
 zIcG7EzbS9RcW/LtBdVZ3YKtlmPCTAgCGD8sSMek6pj4crCF5FLrwoxFd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="269236797"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="269236797"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 08:27:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="560719074"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 18 Jan 2022 08:27:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 18:27:05 +0200
Date: Tue, 18 Jan 2022 18:27:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YebqWZkvKJiQxnzQ@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-8-ville.syrjala@linux.intel.com>
 <500a2ae59268fe4579ffcf1164589bf77791a2ad.camel@intel.com>
 <YeYP5AakqGlkVXsE@intel.com>
 <a48b322c7bc9930348f999a9372205020dbb4f23.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a48b322c7bc9930348f999a9372205020dbb4f23.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915: Clean up pre-skl primary
 plane registers
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

On Tue, Jan 18, 2022 at 01:40:41PM +0000, Souza, Jose wrote:
> On Tue, 2022-01-18 at 02:55 +0200, Ville Syrjälä wrote:
> > On Wed, Jan 12, 2022 at 08:12:31PM +0000, Souza, Jose wrote:
> > > On Wed, 2021-12-01 at 17:25 +0200, Ville Syrjala wrote:
> > > > @@ -427,9 +427,9 @@ static void i9xx_plane_update_noarm(struct intel_plane *plane,
> > > >  		 * program whatever is there.
> > > >  		 */
> > > >  		intel_de_write_fw(dev_priv, DSPPOS(i9xx_plane),
> > > > -				  (crtc_y << 16) | crtc_x);
> > > > +				  DSP_POS_Y(crtc_y) | DSP_POS_X(crtc_x));
> > > >  		intel_de_write_fw(dev_priv, DSPSIZE(i9xx_plane),
> > > > -				  ((crtc_h - 1) << 16) | (crtc_w - 1));
> > > > +				  DSP_HEIGHT(crtc_h - 1) | DSP_POS_X(crtc_w - 1));
> > > 
> > > DSP_HEIGHT(crtc_h - 1) | DSP_WIDTH(crtc_w - 1));
> > 
> > Whoops. Thanks for cathcing that.
> > 
> > <snip>
> > > > +#define   DSP_ENABLE			REG_BIT(31)
> > > 
> > > I really don't like DSP, it is broadly used acronym to Digital Signal Processors.
> > > Would prefer to have DISPLAY or DISP.
> > 
> > The registers are called DSP<foo>, so the spec makes the case for DSP_.
> > The problem with DISP_/etc. is that the namespace then makes it a bit
> > hard to figure out what register the defines belong to.
> > 
> > > 
> > > Anyways, DSP_ENABLE should have also have plane on it.
> > 
> > DSP==display plane. Any more would be redundant.
> 
> Damn, even worst, thought it was DiSPlay.

Well I guess it might be that too. I think the old docs tend to use
"display A" vs. "display plane A" etc. interchangeably when talking
about planes.

> But if this is the BSpec name, go ahead with it. 

I guess I could be convinced to use DISP_ just to raise a few less
eyebrows. Just a bit sad that the namespace won't match the register
name then. But I suppose we have that sort of thing going on in other
places too.

-- 
Ville Syrjälä
Intel
