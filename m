Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5637DE029
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 12:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD49A10E6C8;
	Wed,  1 Nov 2023 11:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A8010E6C7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698836933; x=1730372933;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0ISTzhyfdDFgSdg5N6xHShwvdMB7XF58aqmxuP7CkpY=;
 b=OBgU803+hjBjXscNzgSQy5DwgyNRHSUgoyjR0GrMNoqmazWxfZQpzrnr
 nqkTYUwRLsX20vRNqA6ky5qgfrnIVu0XLAvS+ZCmQknHH8Oa/GLs0aHPS
 87udCv7DtlDgfW9yv+Zvl+5M49R6EiDbMZL8YqSbw0Ov21dQRz/EeUW2r
 1/3v0sZ0TamdXM4jIByoBKWSpJXQov/khX0NFUvuSXPpcIZYacd8ECxNQ
 ArMDKJ14hRAKfAjXwCvFHn5NysKkxTDtq+E1TkYcrd1oYz9IytVVRRpHy
 MCfjOWJt0cTRBPx0KEHyLJdrql63rhEB5NEHpWmYqntXfJ5Ixb9I1whOo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="452760921"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="452760921"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 04:08:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754447080"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="754447080"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 04:08:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 13:08:49 +0200
Date: Wed, 1 Nov 2023 13:08:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZUIxwXeGgkRsRo_2@intel.com>
References: <20231101103101.156505-1-mika.kahola@intel.com>
 <87o7gd4uhr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7gd4uhr.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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

On Wed, Nov 01, 2023 at 12:51:12PM +0200, Jani Nikula wrote:
> On Wed, 01 Nov 2023, Mika Kahola <mika.kahola@intel.com> wrote:
> > It is possible that sticky bits or error bits are left on
> > message bus status register. Reading and then writing the
> > value back to messagebus status register clears all possible
> > sticky bits and errors.
> 
> Note that I don't know if this is the right thing to do, or the right
> place to do this, but I'll just comment on the *implementation*,
> i.e. please wait for proper review before addressing my comments.
> 
> >
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 ++++++++++++++
> >  1 file changed, 14 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index b2ad4c6172f6..f439f0c7b400 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -195,6 +195,13 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
> >  		return -ETIMEDOUT;
> >  	}
> >  
> > +	/*
> > +	 * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to clear
> > +	 * any error sticky bits set from previous transactions
> > +	 */
> > +	val = intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane));
> > +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), val);
> 
> I think it's slightly confusing to use val here, as it's then passed on
> to intel_cx0_wait_for_ack() and you're left wondering if that's required
> or just reuse of the val variable.
> 
> This should do the same thing in one line, without reusing val:
> 
> 	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), 0, 0);

Why is this not just a intel_clear_response_ready_flag()?

Side note: that function name is somewhat misleading...

> 
> > +
> >  	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> >  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> >  		       XELPDP_PORT_M2P_COMMAND_READ |
> > @@ -262,6 +269,13 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
> >  		return -ETIMEDOUT;
> >  	}
> >  
> > +	/*
> > +	 * write XELPDP_PORT_P2M_MSGBUS_STATUS register after read to clear
> > +	 * any error sticky bits set from previous transactions
> > +	 */
> > +	val = intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane));
> > +	intel_de_write(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane), val);
> > +
> >  	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> >  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
> >  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
