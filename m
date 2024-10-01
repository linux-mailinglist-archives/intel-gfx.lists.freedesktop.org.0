Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38FC98C1FD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 17:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E647110E191;
	Tue,  1 Oct 2024 15:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8JoTi7h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4AD310E191
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2024 15:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727797652; x=1759333652;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rlIjPAT2AbPgHV1Nv6/mVTkYpnRxH1VaFQR+d31Vlrs=;
 b=U8JoTi7hIDN/5V73fBR9rm9iZsSnzz4HSPgA+StptY7XhHCGIsIxC6q3
 kqTRhoD/Rpcn2hRjmWE6LFqMpGXkWp1jPrKtZkmhml1qQg5IlWn9AYG2L
 mn4b7R+8TQD/Zlx99zSqJuHkm1P/yKNzb067uK2qLKHQM1CNdQP+99Ces
 cqTM6hnEgA+VE+8W2F24hJCBB2xksGMt328xbhzsjDcp7IzFoesKAxtya
 JICiN6xVIQMq0XMZ3Z2bCaM7MdStWhFx1VhQforwfrUkbQSwayBkKjwfe
 Om+eZdqln5mvNbBwo+55UxRKJ2h7wCZjfV51GDSHJ/N4ZWRMzQDdzr1Cq w==;
X-CSE-ConnectionGUID: mRl/EP9rRriquNjUJGwrSQ==
X-CSE-MsgGUID: GFXDklcyTJuII7tE73yJsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="38301290"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="38301290"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 08:47:31 -0700
X-CSE-ConnectionGUID: XbkzI8+XTbOgYbP6VOwKGQ==
X-CSE-MsgGUID: JqkOUnovRz2XEb99vF1tbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73833518"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Oct 2024 08:47:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Oct 2024 18:47:28 +0300
Date: Tue, 1 Oct 2024 18:47:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/i915: Use the gen3+ irq code on gen2
Message-ID: <ZvwZkJJwOBpi5Iw0@intel.com>
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
 <87ed55xi00.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ed55xi00.fsf@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 27, 2024 at 05:56:31PM +0300, Jani Nikula wrote:
> On Fri, 27 Sep 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Eliminate the special gen2 irq code by simply reusing the
> > gen3+ code on gen2. Works just fine on actual hardware.
> >
> > I generated the last patch with -U20 to help with review.
> > Unfortunately it still didn't pick up i915_irq_handler()
> > I don't suppose there's a magic knob to tell git diff
> > to include a specific function wholesale in the context?
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Pushed the series. I suppose there might be some
conflicts with your irq macro cleanup.

> 
> 
> >
> > Ville Syrjälä (4):
> >   drm/i915: Introduce i915_has_legacy_blc_interrupt()
> >   drm/i915: Clean up gen3 hotplug irq setup
> >   drm/i915: Clean up some comments in gmch irq code
> >   drm/i915: Switch over to gen3 irq code on gen2
> >
> >  .../gpu/drm/i915/display/intel_display_irq.c  |  38 ++--
> >  .../gpu/drm/i915/display/intel_display_irq.h  |   1 -
> >  drivers/gpu/drm/i915/i915_irq.c               | 202 ++----------------
> >  3 files changed, 28 insertions(+), 213 deletions(-)
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
