Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF8A6237D9
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 01:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A047B10E631;
	Thu, 10 Nov 2022 00:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8391F10E631
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 00:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668038412; x=1699574412;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zOHjtMkE0Gi3UsToT8MYe0Ws1hRZxqiujT7JHSnoHj4=;
 b=JeRef65sH9KEwTwchA9AWV9IPnjulIAs6PhxTLDeiWHLeTRhGCfUNLtQ
 GZowBUgIKUKygGMRKj/sLyooJjKERZTJfPgaKHTznSjaORBd23H4QD+fd
 I0L0210wtFMekrZkv9SogMG79V3e9ZCtv921qU09n2FqdDZZNK+aP79K6
 ybIQJF0RmpTiau3mFRK3uG0VBdUoOZcbtmtVp81ycvM8+1EKguh+OH1kC
 yQt26hhsMAnvqhJ4RF787FJAGkPTXujHQN8aMO0fmuPZd2TT4IX/pTcCk
 hDy9AqBmfa14akq5wQywsN7DwvnJGyWx+DgnI8V9fskcnlfokAwxHWyxf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291553670"
X-IronPort-AV: E=Sophos;i="5.96,152,1665471600"; d="scan'208";a="291553670"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 16:00:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="762072248"
X-IronPort-AV: E=Sophos;i="5.96,152,1665471600"; d="scan'208";a="762072248"
Received: from reddingx-mobl2.amr.corp.intel.com (HELO mdnavare-mobl9)
 ([10.255.230.143])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 16:00:11 -0800
Date: Wed, 9 Nov 2022 16:00:09 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y2w/CaMvP/vi7keK@mdnavare-mobl9>
References: <20221109040324.17675-1-nischal.varide@intel.com>
 <87r0yc76tf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r0yc76tf.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: mode clock check related
 to max dotclk frequency
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
Cc: Nischal Varide <nischal.varide@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 09, 2022 at 12:36:44PM +0200, Jani Nikula wrote:
> On Wed, 09 Nov 2022, Nischal Varide <nischal.varide@intel.com> wrote:
> > A check on mode->clock to see if is greater than i915->max_dotclk_freq
> > or greater than 2 * (i915_max_dotclk_freq) in case of big-joiner and
> > return an -EINVAL in both the cases
> 
> The commit message should explain *why* the change is being done.
> 
> >
> > Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 7400d6b4c587..813f4c369dda 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -995,6 +995,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> >  		bigjoiner = true;
> >  		max_dotclk *= 2;
> >  	}
> > +
> > +	if (mode->clock > max_dotclk)
> > +		return -EINVAL;
> > +
> 
> The return type of this function is enum drm_mode_status, which
> indicates the reason for rejecting the mode. It's not a negative error
> code.
> 
> Near the top of the function we have "target_clock = mode->clock;"
> making the above identical to the check we already have below. Apart
> from the incorrect return code.
> 
> What are you trying to do?
> 
> BR,
> Jani.

Yes I agree with Jani here that since target_clock is mode->clock we
already have that check in place and infact returing MODE_CLOCK_HIGH
makes more sense than returning just a -EINVAL

What is the purpose of this change?

Manasi

> 
> 
> >  	if (target_clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> 
> 
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
