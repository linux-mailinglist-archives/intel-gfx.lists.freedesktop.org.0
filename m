Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D226397C873
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 13:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE9D10E046;
	Thu, 19 Sep 2024 11:18:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bTghTI9Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6396A10E046
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 11:18:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726744689; x=1758280689;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3Bw4ddd4OIj1N2Qp4L2Bf9TB57FKZ1A1dGzipZBQdFc=;
 b=bTghTI9QeKaWT8ab7oVHtibarQZk/mko7/GUH4oE5roEDQ57QxFPCISQ
 Gf00jeCkmoQjGOwup/igUB+L/pk3jsde164ES7SGcm2CH4R3jlgnF7/b3
 LKwWqA7klX03Hz8w6CqgmPKsWeBVDbatSwAGlEzdUP35+DDfOhtMAioeN
 KUT64UfLIWLk+el5iLyj6f2UD4DZQMHnLKM3fPPaRA0OTaVPLFw4k3r3m
 bvR9K8l7Hx1zyippGtcO29FXldbl0SHiOX2OYaFu4b6MHBwaIRkOeQT96
 jCObpacThLB0IyN1wN48Hpqvd9sz3fkF8XZeOHo97605cW4Le97Mm5Ug+ w==;
X-CSE-ConnectionGUID: 4Vz+YGX+Q+m+sSGbBVnbQA==
X-CSE-MsgGUID: dqn/gckURsWJhDH57Ic0Jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29441787"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="29441787"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 04:17:51 -0700
X-CSE-ConnectionGUID: vSNuo7suRjmnKcP9Ip2wKw==
X-CSE-MsgGUID: 9NeTEGMmTOqV54AnNGp+nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="70028516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 04:17:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 14:17:48 +0300
Date: Thu, 19 Sep 2024 14:17:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915: Extract
 intel_post_plane_update_after_readout()
Message-ID: <ZuwIXLS25AcYaQis@intel.com>
References: <20240916152958.17332-1-ville.syrjala@linux.intel.com>
 <20240916152958.17332-3-ville.syrjala@linux.intel.com>
 <781573ba655d53c930b3db98319bc9831c15f2b4.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <781573ba655d53c930b3db98319bc9831c15f2b4.camel@coelho.fi>
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

On Thu, Sep 19, 2024 at 10:53:15AM +0300, Luca Coelho wrote:
> On Mon, 2024-09-16 at 18:29 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Clean up the main commit_tail() codepath a bit by pulling
> > the post plane update steps that need to performed after
> > readout into their own little function
> > (intel_post_plane_update_after_readout()).
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> 
> This looks fine, but what is the exact motivation here? Is it just to
> reduce the size of intel_atomic_commit_tail()?

That, and I guess some kind of attempt to keep the pre vs. post
update code mostly in sync (might be easier to remember to update
both sides if they are named somewhat consistently).

> 
> Regardless:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Ta.

-- 
Ville Syrjälä
Intel
