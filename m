Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E004B747E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 19:59:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960D210E55A;
	Tue, 15 Feb 2022 18:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB04710E526;
 Tue, 15 Feb 2022 18:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644951571; x=1676487571;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=whwP9Db5MNSBKpAGicysWN+UADdsEBzGUgWDC7WFI5w=;
 b=ibYfSP6BU852w/cFUfsBn/ugJp2Y3gA2qvc1Z20Zi5JUexhdy3sUFwX4
 GTK8/Dqtq0tEfA0YuVFrSnz4XPq8YpXLp7V0+vn2atA9xjjrXrZUKaMAX
 3RsfmNmH8TsLxJGw4D8yF1h0dNaoeYJNNx7kOwUh9kWEOnEiqNN9ZggGq
 MGnGa16Pg9kSXNDApljTIrWndAIwRm76lW6KdG6GfUcV4Lk9oLYTTGIfH
 X52tZfE3t8SqO2pcYpYNyKugWm21TZrUE9IUAzevvTN6X86bCm+CQuGxW
 1147xC9wVyaNCAry3W5abVKS07+1K/ECA0dWzZ1Q3Bk9ELcJsBwBPv+Pa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="231058836"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="231058836"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:59:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="636072634"
Received: from smile.fi.intel.com ([10.237.72.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 10:59:27 -0800
Received: from andy by smile.fi.intel.com with local (Exim 4.95)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1nK320-0051ub-M8; Tue, 15 Feb 2022 20:58:32 +0200
Date: Tue, 15 Feb 2022 20:58:32 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Ygv32CptVknidyP3@smile.fi.intel.com>
References: <20220215163213.54917-1-andriy.shevchenko@linux.intel.com>
 <87o83859x2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o83859x2.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915/selftests: Replace too
 verbose for-loop with simpler while
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Geert Uytterhoeven <geert@linux-m68k.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 15, 2022 at 07:14:49PM +0200, Jani Nikula wrote:
> On Tue, 15 Feb 2022, Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > It's hard to parse for-loop which has some magic calculations inside.
> > Much cleaner to use while-loop directly.
> 
> I assume you're trying to prove a point following our recent
> for-vs-while loop discussion. I really can't think of any other reason
> you'd end up looking at this file or this loop.
> 
> With the change, the loop indeed becomes simpler, but it also runs one
> iteration further than the original. Whoops.

Yeah, sorry for that, the initial condition should be d = depth - 1,
of course.

> It's a selftest. The loop's been there for five years. What are we
> trying to achieve here? So we disagree on loops, fine. Perhaps this is
> not the best use of either of our time? Please just let the for loops in
> i915 be.

Yes, I'm pretty much was sure that no-one will go and apply this anyway
(so I haven't paid too much attention), but to prove my point in the
certain discussion.

And yes, the point is for the new code, I'm not going to change existing
suboptimal and too hard to read for-loops, it will consume my time later
when I will try to understand the code.

-- 
With Best Regards,
Andy Shevchenko


