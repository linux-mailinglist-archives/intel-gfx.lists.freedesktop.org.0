Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5162A4170CB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9886EE0D;
	Fri, 24 Sep 2021 11:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B086EE0D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:24:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="220853286"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="220853286"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:24:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="485356956"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 24 Sep 2021 04:24:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Sep 2021 14:24:15 +0300
Date: Fri, 24 Sep 2021 14:24:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YU21X52QddTjccWY@intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
 <87wnn69rl8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87wnn69rl8.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915: Reject bogus modes with fixed
 mode panels
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

On Fri, Sep 24, 2021 at 01:48:51PM +0300, Jani Nikula wrote:
> On Thu, 23 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Let's start to reject user modes whose refresh rate is
> > nowhere near the actual fixed mode refresh rate we're
> > going to use. ATM we're just flat out lying to the user.
> 
> I eyeballed through this quickly, mostly seems reasonable, I'll try to
> do detailed review later.
> 
> One question though. I think we have bug reports [1][2] about panels
> that support very high refresh rates, but report a lower refresh rate
> mode as the preferred mode. It's perhaps a safe default from a power
> usage standpoint. Does this series make using those modes harder or
> impossible?

This doesn't really affect the amount of work we'd need to do to
expose those modes. That would still involve replacing the single
fixed mode with a list/etc. and looking for the best match for
the user's requested mode during a modeset.

I'd actually like to do that at some point, if for no other reason
allowing me to run at a fixed lower refresh rate while on battery
power. Could save a few mW. But haven't gotten bored enough to do
the actual work.

-- 
Ville Syrjälä
Intel
