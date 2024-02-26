Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 533D8867C03
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 17:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC3110E7AA;
	Mon, 26 Feb 2024 16:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UP2T5gRo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4CFC10E7B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 16:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708965033; x=1740501033;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WkaRCtgixD/AVecS0IPHxFCKd9hFe12qK+vvbOWbbW0=;
 b=UP2T5gRoAKEtI03IV9PvaJjlP92WqFY5mkSvHUpVDbtTG2dDmoto+3jS
 YRsN0+dHrS6LWgLy/0OL6NplJtpHIJhWLL4Sj66PDVw2uFLaQ8AsMPLcY
 TLmX3UszKZtDORRVgCePs1GLfNcK4kNQUyCYJb/WLUUcjqtnaeKQv1yjc
 jIkuNVF6d0u31PL4yx4dIEGXwPVKQSRNHgW02Ea5nd/jZ4KQZ1+R32UtP
 PscjWjJnQttG8aenMOO8qhX5AGNWoBbS91fJXIno1tLb5tT+iZPMqr/Pa
 tULglp6mGysqZKmkzBXCgfLJ7zGxe5nzMYgk+RbgMl/FDqy6KTgd1EwJ8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3185266"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3185266"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 08:30:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="913881165"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="913881165"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 08:30:29 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1reds2-00000007jUm-1XIb; Mon, 26 Feb 2024 18:30:26 +0200
Date: Mon, 26 Feb 2024 18:30:26 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gfx@lists.freedesktop.org, Petr Mladek <pmladek@suse.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/12] drm/i915: Indicate which pipe failed the fastset
 check overall
Message-ID: <Zdy8osVL-KnB2tV4@smile.fi.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-2-ville.syrjala@linux.intel.com>
 <ZdfApN1h97GTfL1t@intel.com> <Zdj2ONs8BZ6959Xb@intel.com>
 <87bk83mfwp.fsf@intel.com> <ZdyqAMfEfhyk6zm2@smile.fi.intel.com>
 <878r37me5k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878r37me5k.fsf@intel.com>
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

On Mon, Feb 26, 2024 at 05:35:51PM +0200, Jani Nikula wrote:
> On Mon, 26 Feb 2024, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > On Mon, Feb 26, 2024 at 04:57:58PM +0200, Jani Nikula wrote:
> >> On Fri, 23 Feb 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Thu, Feb 22, 2024 at 04:46:12PM -0500, Rodrigo Vivi wrote:

...

> >> > I think the proper solution would be to have actually
> >> > sensible conversion specifiers in the format string.
> >> > So instead of %<set of random characters> we'd have something
> >> > more like %{drm_crtc} (or whatever color you want to throw
> >> > on that particular bikeshed).
> >> 
> >> Personally I suck at remembering even the standard printf conversion
> >> specifiers, let alone all the kernel extensions. I basically have to
> >> look them up every time. I'd really love some %{name} format for named
> >> pointer things. And indeed preferrably without the %p. Just %{name}.
> >
> > It will become something like %{name[:subextensions]}, where subextensions
> > is what we now have with different letters/numbers after %pX (X is a letter
> > which you proposed to have written as name AFAIU).
> 
> Thanks, I appreciate it, a lot!

Oh, I meant "can" rather than "will".

> But could you perhaps try to go with just clean %{name} only instead of
> adding [:subextensions] right away, please?
> 
> I presume the suggestion comes from an implementation detail, and I
> guess it would be handy to reuse the current implementation for
> subextension.
> 
> For example, %pb -> %{bitmap} and %pbl -> %{bitmap:l}. But really I
> think the better option would be for the latter to become, say,
> %{bitmap-list}. The goal here is to make them easy to remember and
> understand, without resorting to looking up the documentation!

Okay, so it seems you have something in mind, perhaps you can submit a draft
of the list of those "names"?

> >> And then we could discuss adding support for drm specific things. I
> >> guess one downside is that the functions to do this would have to be in
> >> vsprintf.c instead of drm. Unless we add some code in drm for this
> >> that's always built-in.

-- 
With Best Regards,
Andy Shevchenko


