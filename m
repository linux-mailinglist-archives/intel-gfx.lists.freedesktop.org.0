Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1C488ABAD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 18:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E8FC10E5C1;
	Mon, 25 Mar 2024 17:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFwwCDXV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E28810E5C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 17:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711387812; x=1742923812;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C1gj64oqzU8K3xQSmB11kUUJwdYaoF7IoZAlc1H4pL8=;
 b=cFwwCDXVaNtQwM9g9pXBH+3NZKKRiK+jqZppk4lnYbFLEJgkXHz897uY
 SJfYw1iryBpeiHii+kziZY8AGbgdJUKcs0Iw3KG6ksORRxgVzb0sD95c6
 agwhUscXuaG694zhcCIx3FMZB+sgpttyMNWRAiEaOXO5mWGaiWHCDkgDs
 ykKN7PyJz8XCqd6rjZpzxKkg23qIoyQWzZ7dLXsrQ4C+YTEvXhN665z3R
 WtWJoLXbspr5lcRPOvZRNDDgvb+GUHMkOP9lfnTDpKxewrRdtVp+DSIyu
 DjUQDBagXtuw7aw7E0vOKHDvJ3WDoj4NaLhvyCHNdYW5ZuVw6q0o5kcpD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="10200885"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="10200885"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 10:30:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="827784775"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="827784775"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Mar 2024 10:30:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Mar 2024 19:30:06 +0200
Date: Mon, 25 Mar 2024 19:30:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Borislav Petkov <bp@alien8.de>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 lkml <linux-kernel@vger.kernel.org>
Subject: Re: BUG: sleeping function called from invalid context at
 drivers/gpu/drm/i915/gem/i915_gem_pages.c:526
Message-ID: <ZgG0niB5wBxkWBkR@intel.com>
References: <20240227100342.GAZd2zfmYcPS_SndtO@fat_crate.local>
 <87jzmqjir5.fsf@intel.com>
 <20240227105356.GBZd2_RL9hjC_LupZB@fat_crate.local>
 <87h6hujhrz.fsf@intel.com>
 <20240325163342.GEZgGnZpROSN4euuLb@fat_crate.local>
 <ZgGsVBnpme-syWCG@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgGsVBnpme-syWCG@intel.com>
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

On Mon, Mar 25, 2024 at 06:54:44PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 05:33:42PM +0100, Borislav Petkov wrote:
> > On Tue, Feb 27, 2024 at 12:58:08PM +0200, Jani Nikula wrote:
> > > Let's see what Ville says, but in the end bisection might be the
> > > quickest way to find the regression. Though I understand it can be
> > > tedious for you personally.
> > 
> > That still fires with 6.-9-rc1. Does Ville have any suggestions or
> > should I bisect?
> 
> Sorry, completely missed this. The culprit is going to be
> commit 1de63528e728 ("drm/i915: Perform vblank evasion around legacy
> cursor updates")

Hmm. Actually should be commit 0225a90981c8 ("drm/i915: Make
cursor plane registers unlocked") already.

Apprently I had CONFIG_DEBUG_ATOMIC_SLEEP=n in my config
for most of my old machines.

-- 
Ville Syrjälä
Intel
