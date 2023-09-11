Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D664779A986
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 17:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F0E310E318;
	Mon, 11 Sep 2023 15:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9943010E318
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 15:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694445448; x=1725981448;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ASb+8XEdlEfkRTlJdZ6yt2r85II0MjsJzw3iRvMOw6k=;
 b=UOWro4BSCBIXu1VLV6+QR2VgFPLgF2UOsovAVYEVJAY5iKsnov+z8vJS
 vvJBgTLsDXGj24JmMiXWNpeMWPvstQJZ9FbdOuZM3rEbYRJVOthVR/N0x
 QoQQtxW8VhXzlI62W7BjJ9XWDA9YdxZ7xoX4OrGvU6fn6XIHFURCAFzga
 4I7CSh10iTyzV9yEDJ44tUhTdlWIYyi5m4bQh2imzZ08hrf/bbqSNrdBB
 JxU7QUUCMP5OnS6+tJ0ODzx3hMTydJk0IGuY+Jh+tuu36WH6kOkU2OxRC
 bSJtTLhYwEXtqs/ilqZyGttW/CjFyNG19BcAIRhtW2gQgP8msor6ToJqN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="377021423"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="377021423"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="693127933"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="693127933"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga003.jf.intel.com with SMTP; 11 Sep 2023 08:17:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Sep 2023 18:17:24 +0300
Date: Mon, 11 Sep 2023 18:17:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <ZP8vhBWuWnihQ1gQ@intel.com>
References: <20230907121736.23734-1-ville.syrjala@linux.intel.com>
 <20230908052527.685-1-ville.syrjala@linux.intel.com>
 <f5bf50d3b7c56f46e96d85a227e214f932550160.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f5bf50d3b7c56f46e96d85a227e214f932550160.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Only check eDP HPD when AUX CH
 is shared
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 08:19:21AM +0000, Coelho, Luciano wrote:
> On Fri, 2023-09-08 at 08:25 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Apparently Acer Chromebook C740 (BDW-ULT) doesn't have the
> > eDP HPD line properly connected, and thus fails the new
> > HPD check during eDP probe. The result is that we lose the
> > eDP output.
> > 
> > I suspect all such machines would all be Chromebooks or other
> 
> Small duplication here "...all such machines would all...".

Dropped one 'all'. Thanks for the review -> pushed.

> 
> 
> > Linux exclusive systems as the Windows driver likely wouldn't
> > work either. I did check a few other BDW machines here and
> > those do have eDP HPD connected, one of them even is a
> > different Chromebook (Samus).
> > 
> > To account for these funky machines let's skip the HPD check when
> > it looks like the eDP port is the only one using that specific AUX
> > channel. In case of multiple ports sharing the same AUX CH (eg. on
> > Asrock B250M-HDV) we still do the check and thus should correctly
> > ignore the eDP port in favor of the other DP port (usually a DP->VGA
> > converter).
> > 
> > v2: Don't oops during list iteration
> > 
> > Cc: stable@vger.kernel.org
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9264
> > Fixes: cfe5bdfb27fa ("drm/i915: Check HPD live state during eDP probe")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> 
> Regardless of the small grammatical issue, LGTM:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.

-- 
Ville Syrjälä
Intel
