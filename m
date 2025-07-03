Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A364AF749E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 14:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22A410E824;
	Thu,  3 Jul 2025 12:51:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJZ7/qbB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BCA10E191;
 Thu,  3 Jul 2025 12:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751547065; x=1783083065;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vLXRb4psUfw5gtZYyp0xrhHd0P/XV1aMbdOo02eldyA=;
 b=HJZ7/qbBbvLXXUVwlMBJ73sPrBBlbAf/oqapbzLB0btSVjMap/VdzTj2
 NZzeH3o7u2q9evbSiF52/AsxccXD3OTFYd9Dz9maYhm5nxCQkgX8TAtus
 yn3t4nwf6XzyryIbSacNR3WhWjGTWTS4UvHTEqw8SA9iKa+0871RAFCWG
 72ynxr4d9T8wlZ/sj3MIkjWfaJPWYsurzX8cs7DsC68L+r5nTXoijetyJ
 ER2JuJmXOODlYADssn581FMgEZdIx/jPibiQi7x4p6vUo0mVHBinNMQjl
 3JLc1yi74vgX8PPLRIMr1osg15YudKfHu8OsKnSZE8TV2yI/v8ZmrJYVt w==;
X-CSE-ConnectionGUID: V6r38WDrTOKsTcU/L58PVQ==
X-CSE-MsgGUID: vjdnBTpfQDCSxQq2WcIyTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53738274"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53738274"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 05:51:05 -0700
X-CSE-ConnectionGUID: X9XXZWoQS4qdZpV1dqHBLw==
X-CSE-MsgGUID: ulNTQwE/QR+bdsLbcdyh9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="160058623"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.205])
 by orviesa005.jf.intel.com with SMTP; 03 Jul 2025 05:51:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Jul 2025 15:50:59 +0300
Date: Thu, 3 Jul 2025 15:50:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: linux-kernel@vger.kernel.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 David Laight <david.laight.linux@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/4] DO-NOT-MERGE: drm/i915: Use poll_timeout_us()
Message-ID: <aGZ8s2mQCmvYK7w1@intel.com>
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
 <20250702223439.19752-4-ville.syrjala@linux.intel.com>
 <9bca3e31879af4ba4abd9cb3c5bd89e80ec013f1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9bca3e31879af4ba4abd9cb3c5bd89e80ec013f1@intel.com>
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

On Thu, Jul 03, 2025 at 03:12:39PM +0300, Jani Nikula wrote:
> On Thu, 03 Jul 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Make sure poll_timeout_us() works by using it in i915
> > instead of the custom __wait_for().
> >
> > Remaining difference between two:
> >                | poll_timeout_us() | __wait_for()
> > ---------------------------------------------------
> > backoff        | fixed interval    | exponential
> > usleep_range() | N/4+1 to N        | N to N*2
> > clock          | MONOTONIC         | MONOTONIC_RAW
> >
> > Just a test hack for now, proper conversion probably
> > needs actual thought.
> 
> Agreed.
> 
> I feel pretty strongly about converting everything to use
> poll_timeout_us() and poll_timeout_us_atomic() directly. I think the
> plethora of wait_for variants in i915_utils.h is more confusing than
> helpful (even if some of them are supposed to be "simpler"
> alternatives). I also think the separate atomic variant is better than
> magically deciding that based on delay length.
> 
> I'm also not all that convinced about the exponential wait. Not all of
> the wait_for versions use it, and then it needs to have a max wait
> anyway (we have an issue with xe not having that [1]). I believe callers
> can decide on a sleep length that is appropriate for the timeout, case
> by case, and gut feeling says it's probably fine. ;)

Yeah, we've not really done any work to justify the polling interval/backoff
strategy. At some point it would be nice to collect some statistics to see
what the typical wait durations are, and then perhaps tune the polling
interval on a case by case basis to be at least somewhat optimal (short
enough to not cause significant delays, but long enough to avoid excessive
polling).

-- 
Ville Syrjälä
Intel
