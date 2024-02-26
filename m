Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDB386799C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 16:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3643010E779;
	Mon, 26 Feb 2024 15:11:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQ5DYI//";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D497810E779
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 15:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708960263; x=1740496263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JcCMhwYI/pAOkjaeQfNlKLNrW7x1kCS/e8P8N5NWzEI=;
 b=iQ5DYI//BNJRkH7PQBX8foFdZw/Z4pjIjwjcZdMhX2y1xwKMBiLX2yXX
 StMIRwGXjK2dAXKqgK2pGOdx4qsRoHJkf0WBGyd2Xw1zjzexjLu/X2zd0
 9DuKeXoZr/2Gal7BeVPkcInl61pWJKdoZlskPlSF+XPFA4z7thp5uObsC
 vfhNOKNtPdVcmB295YHkf/1QSB6u9ioF6arpGzXEZrxZZ1HDP5qd6+9Fa
 /RRLyiZqDsFZ65RDO9zlUWGBRnE/fi2V6/ZoH/aq9yfQcxoy5yMLNCSln
 3KXMo4p6r5fPrhCKmdESPsJqvUd73CdwNdQFwhtOtzZzkSEE1O4FxDbp1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3107759"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3107759"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 07:11:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="913875895"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="913875895"
Received: from smile.fi.intel.com ([10.237.72.54])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 07:10:59 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.97)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1recd6-00000007iDB-3l9c; Mon, 26 Feb 2024 17:10:56 +0200
Date: Mon, 26 Feb 2024 17:10:56 +0200
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
Message-ID: <ZdyqAMfEfhyk6zm2@smile.fi.intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-2-ville.syrjala@linux.intel.com>
 <ZdfApN1h97GTfL1t@intel.com> <Zdj2ONs8BZ6959Xb@intel.com>
 <87bk83mfwp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bk83mfwp.fsf@intel.com>
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

On Mon, Feb 26, 2024 at 04:57:58PM +0200, Jani Nikula wrote:
> On Fri, 23 Feb 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Feb 22, 2024 at 04:46:12PM -0500, Rodrigo Vivi wrote:

...

> > I think the proper solution would be to have actually
> > sensible conversion specifiers in the format string.
> > So instead of %<set of random characters> we'd have something
> > more like %{drm_crtc} (or whatever color you want to throw
> > on that particular bikeshed).
> 
> Personally I suck at remembering even the standard printf conversion
> specifiers, let alone all the kernel extensions. I basically have to
> look them up every time. I'd really love some %{name} format for named
> pointer things. And indeed preferrably without the %p. Just %{name}.

It will become something like %{name[:subextensions]}, where subextensions
is what we now have with different letters/numbers after %pX (X is a letter
which you proposed to have written as name AFAIU).

> And then we could discuss adding support for drm specific things. I
> guess one downside is that the functions to do this would have to be in
> vsprintf.c instead of drm. Unless we add some code in drm for this
> that's always built-in.

-- 
With Best Regards,
Andy Shevchenko


