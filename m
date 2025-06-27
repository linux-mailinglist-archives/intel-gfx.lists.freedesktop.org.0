Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC128AEBE7B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 19:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEA010E1C1;
	Fri, 27 Jun 2025 17:32:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DqS8cCGX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4763510E1C1;
 Fri, 27 Jun 2025 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751045553; x=1782581553;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JnJoioaeQPUEUWJtCDCX9PdA9dB7so9HZ3moGzT2vTM=;
 b=DqS8cCGXgx0HXArLeGYOEe72qThOTC1d2K0HO6Y6cZsnDJTbFAJovto1
 8y9mjC3xqJsku016WAe2JYyAsA7Vo6v/7ViZLFK72QHveSwqO8KNdovrH
 ZVyosd5IOH9a6zktJ8PaF1SA33Gr0yPt6Wu3qhjBrKnaJHtp9T85tN1sS
 A5DLh4A3n4ssGwOo8x97/66PiB1v3u6WPu8C3XQvptcFb3uxpZnFeBtEa
 SrrA/Pu7Ix6ou31sLydyfLGNfLKq6yL3P0yzC/EqfNhaLwsil94vwfuNA
 cPpfgg9i0bICKJyXDP7V2yCh8DPEFg3TMT6ocDzVkvsEJEPmYqsd44cNt g==;
X-CSE-ConnectionGUID: 6AhG+uSwQECiwee6pqZShQ==
X-CSE-MsgGUID: jEvQijrJRzmB1wlJsPHmWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="53516291"
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="53516291"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 10:32:33 -0700
X-CSE-ConnectionGUID: 0AbqSp5kS12vgkd2n9sVNw==
X-CSE-MsgGUID: tko0eDXqQTG94z9BaX4ZbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,271,1744095600"; d="scan'208";a="158591632"
Received: from opintica-mobl1 (HELO stinkbox) ([10.245.245.146])
 by orviesa005.jf.intel.com with SMTP; 27 Jun 2025 10:32:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Jun 2025 20:32:28 +0300
Date: Fri, 27 Jun 2025 20:32:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@intel.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>,
 Dejin Zheng <zhengdejin5@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 18/18] drm/i915/ddi: prefer read_poll_timeout() over
 readx_poll_timeout()
Message-ID: <aF7VrBSZQVlaSN6-@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
 <59bcc15dd4debf00ee0c7b430a3b701462ac9de7.1751023767.git.jani.nikula@intel.com>
 <aF6UOCLdO0fGHGA9@intel.com>
 <f922ec0a42855e17228d3f22d7291b389abe2df0@intel.com>
 <aF67cxjlfWiWMx-4@intel.com>
 <1b5d73351eda2d86437a597673bd892baf90fafa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1b5d73351eda2d86437a597673bd892baf90fafa@intel.com>
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

On Fri, Jun 27, 2025 at 07:26:22PM +0300, Jani Nikula wrote:
> On Fri, 27 Jun 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Fri, Jun 27, 2025 at 04:34:23PM +0300, Jani Nikula wrote:
> >> Internally the macro has:
> >> 
> >> #define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
> >> 				sleep_before_read, args...) \
> >> 
> >> ...
> >> 
> >> 		(val) = op(args); \
> >> 
> >> So you do need to provide an lvalue val, and you need to be able to add
> >> () after op. I think GCC allows not passing varargs. IOW you'd need to
> >> implement another macro (which could be used to implement the existing
> >> one, but not the other way round).
> >
> > Just get rid of the 'args' and 'val' and it'll work just fine.
> > Then it'll be almost identical to wait_for() (basically just missing the
> > increasing backoff stuff).
> >
> > AFAICS this thing was originally added just for reading a single
> > register and checking some bit/etc, so the name made some sense.
> > But now we're abusing it for all kinds of random things, so even
> > the name no longer makes that much sense.
> 
> Yeah, evolution not intelligent design.
> 
> > So I think just something like this would work fine for us:
> 
> LGTM, with the _atomic version for completeness.

The other differences between wait_for() and read_poll_timeout()
I see are:

- read_poll_timeout() always evaluates 'cond' at least twice.
  For some things I think it would make sense to omit 'op'
  entirely so we don't have to introduce pointless variables
  in the caller (eg. poll_timeout(, pipe_scanline_is_moving(...), ...))

  but the double evaluation of 'cond' there is not desirable.
  Should be an easy change to make read_poll_timeout() more
  like wait_for() and stash the return value into a variable.

- ktime_get() vs. ktime_get_raw(). I suppose it doesn't really
  matter too much which is used?

- 'op' and 'cond' are evaluated twice during the same iteration of
  the loop for the timeout case in read_poll_timeout(). wait_for()
  is a bit more optimal here by sampling the timeout first, then
  doing the 'op'+'cond', and finally checking whether the timeout
  happened.

  I suppose optimizing the timeout case isn't very critical. Though
  the code would be a bit less repetitive, with the caveat that we
  need an extra variable for the timeout result.

- wait_for() has an explicit compiler barrier to make sure 'cond'
  and the timeout evaluation aren't reordered. Though I think it's
  in the wrong spot for the cases where 'op' is the one that samples
  the thing that 'cond' checks.

  However I *think* ktime_get() being a function call should be enough
  to prevent that reordering from happening?

I guess I'll see what I can cook up to make this stuff
more agreeable...

-- 
Ville Syrjälä
Intel
