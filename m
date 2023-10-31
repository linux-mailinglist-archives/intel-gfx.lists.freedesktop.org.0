Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7648F7DD12A
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 17:06:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93C7A10E555;
	Tue, 31 Oct 2023 16:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0182A10E554;
 Tue, 31 Oct 2023 16:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698768399; x=1730304399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yP9nFbhge9uKtdGIL8z8wELNAvaeq9yZPgcUY2Il/zI=;
 b=dXQscTAtINwyDZntJaho7TAoxcoTlAIE1eAnd7XY3moKkknoMHkpHDnC
 n2xFZC7KE6m3hYu0N/xfztNdjhtKfp9vKCUIXSwqx6Vgsysw0w/6zOPlm
 fNEKsnPG1Nm/t+BS2SB4Mtt1bqMZXlZ5IcOXxkHLVNCTMKLPY78AgLL1y
 ka4TKz0C+Vv61PLK4CL5GJvioj8vuPfSc2AI/C/XOxoNL46+S0BOBSZ6F
 vC5i6MT2/AdqdnjFfZP12FPLAl+B6x2+UFOKTV9DOppF57/tRYLspJ6Ub
 S33t/Oq+61FGlUb5wx8o8APM5T9IWtTs3qyiuP4nhGtT6LHIH8hAiktGf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="385505729"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="385505729"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 09:06:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754185522"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="754185522"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 31 Oct 2023 09:06:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 Oct 2023 18:06:34 +0200
Date: Tue, 31 Oct 2023 18:06:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZUElHKaa5rnifyvy@intel.com>
References: <20231013131402.24072-1-ville.syrjala@linux.intel.com>
 <20231013131402.24072-2-ville.syrjala@linux.intel.com>
 <8734xr5f0o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8734xr5f0o.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm: Fix color LUT rounding
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 31, 2023 at 11:15:35AM +0200, Jani Nikula wrote:
> On Fri, 13 Oct 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > entrirely. But perhaps a better idea would be to follow the
> > OpenGL int<->float conversion rules, in which case we get
> > the following results:
> 
> Do you have a pointer to the rules handy, I couldn't find it. :(

Eg. '2.3.5 Fixed-Point Data Conversions' in GL 4.6 spec. The section
number probably changes depending on which version of the spec you
look at.

> 
> Might also add the reference to the commit message and/or comment.
> 
> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrj�l�
Intel
