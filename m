Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A03617288C0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 21:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7BC210E148;
	Thu,  8 Jun 2023 19:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C9A10E148
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 19:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686252990; x=1717788990;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ct0VZtlFGk9aP/oinB+Gv+t8MotpKDKASiXI6aGQKLY=;
 b=OgNvICLXxb/p3cYynoTVnz3mNSeFNREF+UeCry/lVqKBHJ5SQifx5Lqz
 WR1T6zAZC0iE2LLGCjE2Xklyi7PEmoEtUSoNDUyRiSqyHypkrpDBKg3yU
 HO8KloYh4zSNSXoKCgEDOuHTlCiRqSQjlxDvAj8XnFfHFNKAamNzmmOEH
 Dz/LbMn9aeN5ccMQlS7u1oO5lswD9sIy4kxiCPreRIB7Io/2ObZOnuJzO
 X9qzevsY52GImqJWr5cowcgzujiq1HDCEfytUOPMA6PUOMLzSeGXZpPJa
 n06OfPG7LRlJ3XiCm7+i6h9mS9SF22hFbtvCt2D3S6RieKXn3U0JTQOpe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="420998760"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="420998760"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 12:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="854469219"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="854469219"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 08 Jun 2023 12:36:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 22:36:08 +0300
Date: Thu, 8 Jun 2023 22:36:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZIItqNUftDCYIqnl@intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-3-ville.syrjala@linux.intel.com>
 <87sfbadkda.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sfbadkda.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915: Introduce device info
 port_mask
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

On Fri, Jun 02, 2023 at 05:11:45PM +0300, Jani Nikula wrote:
> On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > @@ -556,6 +590,16 @@ static const struct intel_display_device_info gen11_display = {
> >  
> >  static const struct intel_display_device_info tgl_display = {
> >  	XE_D_DISPLAY,
> > +
> > +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) |
> 
> Where does port C come from?

From the spec.

> It's not in intel_setup_outputs()
> currently.

Hmm. Based on the history there seems to be some kind of
screwup in the combo PHY code wrt. ports that are not
actually present in the SKU. The spec says we should rely
on hpd to figure out what ports are actually present. So
looks like the combo PHY code needs quite a bit of redesign :(
I guess I'll leave this out until then.

> 
> > +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC5),
> 
> TC5 duplicated, TC6 missing.
> 
> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
