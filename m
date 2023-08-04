Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F6076F8C8
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 06:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27F010E237;
	Fri,  4 Aug 2023 04:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C348E10E236;
 Fri,  4 Aug 2023 04:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691122042; x=1722658042;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Nct1OPaQWyF0NLQQ6u7Wq7eG9CS3igaS6y0hh8xq7cc=;
 b=P+mTRk0pXznlqitB1u0k4IgWqFzHW6Q69Y7LD1EgJiZ8s32Wnp8jexBh
 Q6npLYLmmP8Zcu0bFVOGXi0sO06FlbQ9qliXd2+TXhQ0CA0Jr4qf1QaRC
 EgHc8X+NyeUeWym7wWggt60pVhftfk+EEQA3d1x1JezGZM60vivSeIlu/
 CId8NjVOlGe+KCrhctoIsk5z8z5NikS9P+c7dIjCrcxzn7Gms3NCjzjPE
 fQrBvR3KjCSkL3CO0XxZ7JzWT7pCCc2z60e9Y6DVv4zTKaNiQOxWePeQS
 Oaxvh5VVxvvBYG6abP4ob7hwKQRoVC30JXaN74Poyk6wZTevn0Kxx3mIb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="368962274"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="368962274"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 21:07:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="679758521"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="679758521"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orsmga003.jf.intel.com with ESMTP; 03 Aug 2023 21:07:16 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.96)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1qRm5q-008pgS-0y; Fri, 04 Aug 2023 07:07:14 +0300
Date: Fri, 4 Aug 2023 07:07:14 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <ZMx5cp1u5noAH0Zg@smile.fi.intel.com>
References: <20230803131918.53727-1-andriy.shevchenko@linux.intel.com>
 <20230803102446.8edf94acc77e81ab2e09cee3@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230803102446.8edf94acc77e81ab2e09cee3@linux-foundation.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915: Move abs_diff() to math.h
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
Cc: linux-fbdev@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-serial@vger.kernel.org, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 intel-gfx@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>, Jiri Slaby <jirislaby@kernel.org>,
 Alexey Dobriyan <adobriyan@gmail.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 03, 2023 at 10:24:46AM -0700, Andrew Morton wrote:
> On Thu,  3 Aug 2023 16:19:18 +0300 Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

...

> > +#define abs_diff(a, b) ({			\
> > +	typeof(a) __a = (a);			\
> > +	typeof(b) __b = (b);			\
> > +	(void)(&__a == &__b);			\
> > +	__a > __b ? (__a - __b) : (__b - __a);	\
> > +})
> 
> Can we document it please?
> 
> Also, the open-coded type comparison could be replaced with __typecheck()?
> 
> And why the heck isn't __typecheck() in typecheck.h, to be included by
> minmax.h.
> 
> etcetera.  Sigh.  I'll grab it, but please at least send along some
> kerneldoc?

Sure and thank you!

-- 
With Best Regards,
Andy Shevchenko


