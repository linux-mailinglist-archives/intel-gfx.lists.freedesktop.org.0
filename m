Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C478C3C460
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 17:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A22410E941;
	Thu,  6 Nov 2025 16:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9uGYCLS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B9410E037;
 Thu,  6 Nov 2025 16:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762445420; x=1793981420;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=j+IZAucuIm37fSj80MjoIxr+KjN6jtrg9jQ/rxl87aE=;
 b=m9uGYCLSCVs/dzAYmOXam0swB0Ish+thUc0Pis5Z1UczkH3VmwGUllXp
 TlnABOBsdZn6OfSwl8Ol0znmXAvdyqtytf96AvJeqqAhbFdAp7zVkx3dH
 Zd8OecR9Rrifnq/0OQEuzw95cdA70Qv8gGqV5h+VGjCwXjYjT4H5gMhwO
 11wCvei+fI9j3XKQcXuUomKRA4mgtco7GwyTHYDc6C377OJRwxo7K5OfV
 8MwMwz/2wsUuPoWbfPfv+a2vCkhyUbedjUfdA0HuYLdXO7I470zUuqxiq
 GgT4FCS/k9EVk/A1UyuJveeOM0BxE48x6+oHp4llNokY2NuKb3VJSuvMT A==;
X-CSE-ConnectionGUID: /GZvEmMMQd2ErQS4aDi8fg==
X-CSE-MsgGUID: W8hcL3cCTjWZWRlciKTjwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75274714"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75274714"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 08:10:20 -0800
X-CSE-ConnectionGUID: ZUekMjhJSLm/Mo5Br4RCcg==
X-CSE-MsgGUID: lyIXAklAShqG55rjwiL8bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="218454675"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 08:10:18 -0800
Date: Thu, 6 Nov 2025 18:10:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 00/10] drm/i915: Stop the intel_de_wait_custom() abuse
Message-ID: <aQzIZzjEqNyP872A@intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <e83b667c90f6c4a92b3d67c63a49954bade3da0a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e83b667c90f6c4a92b3d67c63a49954bade3da0a@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 06, 2025 at 05:43:12PM +0200, Jani Nikula wrote:
> On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Get rid of all the custom fast vs. slow intel_de_wait_custom()
> > timeouts that have started to spread like a cancer recently.
> >
> > The eventual aim is to get rid of the fast vs. slow timeout
> > stuff entirely and switch over to poll_timeout_us()...
> 
> Are you planning on still having intel_de_wait_something_something, or
> do you mean using poll_timeout_us() directly?
> 
> I think I like the intel_de_* wait helpers, but just a coherent small
> set, and everything beyond that should use poll_timeout_us() instead of
> adding obscure helpers for one-off cases.

Yeah, I think the helpers are fairly nice for the common stuff so
I guess we should keep them. But not too many, so probably just
intel_de_wait_{,for_set,for_clear}_us().

My current branch has both _us() and _ms() versions of those, but
as discussed in the meeting we should probably just go for _us()
eventually. I think I'll want to have the _ms() stuff around for
a while though since it makes some of the mechanical conversions
easier.

I also haven't quite figured out is what to do about the poll
interval for poll_timeout_us(). I was thinking of starting with
something simple like 'interval=max(timeout/8+1,100)' and then
try to capture some data on how many iterations we end up in
at least some of the more important places (eg. AUX, PPS, etc).
I suppose in the worst case we might need custom intervals in
some places, but I'm hoping some kind of generic approach works
well enough for most stuff.

-- 
Ville Syrjälä
Intel
